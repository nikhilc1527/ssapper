; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3510 () Bool)

(assert start!3510)

(declare-fun b!22112 () Bool)

(declare-fun e!11552 () Bool)

(declare-fun tp_is_empty!107 () Bool)

(declare-fun tp!4867 () Bool)

(assert (=> b!22112 (= e!11552 (and tp_is_empty!107 tp!4867))))

(declare-fun b!22113 () Bool)

(declare-fun e!11551 () Bool)

(assert (=> b!22113 (= e!11551 tp_is_empty!107)))

(declare-fun b!22114 () Bool)

(declare-fun e!11553 () Bool)

(declare-fun tp!4868 () Bool)

(assert (=> b!22114 (= e!11553 (and tp_is_empty!107 tp!4868))))

(declare-fun b!22115 () Bool)

(declare-fun res!9739 () Bool)

(declare-fun e!11550 () Bool)

(assert (=> b!22115 (=> (not res!9739) (not e!11550))))

(declare-datatypes () ((T!1763 (T!1764 (val!54 Int)))))

(declare-datatypes () ((Conc!36 (CC!35 (left!680 Conc!36) (right!683 Conc!36)) (Single!35 (x!8808 T!1763)) (Empty!46))))

(declare-fun xs!570 () Conc!36)

(assert (=> b!22115 (= res!9739 (is-CC!35 xs!570))))

(declare-fun b!22116 () Bool)

(declare-fun res!9740 () Bool)

(assert (=> b!22116 (=> (not res!9740) (not e!11550))))

(declare-datatypes () ((List!340 (Cons!334 (h!248 T!1763) (t!4335 List!340)) (Nil!335))))

(declare-fun l1!165 () List!340)

(declare-fun toList!100 (Conc!36) List!340)

(assert (=> b!22116 (= res!9740 (= l1!165 (toList!100 (left!680 xs!570))))))

(declare-fun b!22117 () Bool)

(declare-fun res!9736 () Bool)

(assert (=> b!22117 (=> (not res!9736) (not e!11550))))

(declare-fun i!249 () Int)

(declare-fun size!230 (Conc!36) Int)

(assert (=> b!22117 (= res!9736 (<= i!249 (size!230 xs!570)))))

(declare-fun b!22118 () Bool)

(declare-fun e!11549 () Bool)

(assert (=> b!22118 (= e!11550 e!11549)))

(declare-fun res!9741 () Bool)

(assert (=> b!22118 (=> res!9741 e!11549)))

(declare-fun i!250 () Int)

(assert (=> b!22118 (= res!9741 (> 0 i!250))))

(declare-fun b!22119 () Bool)

(declare-fun tp!4870 () Bool)

(declare-fun tp!4869 () Bool)

(assert (=> b!22119 (= e!11551 (and tp!4870 tp!4869))))

(declare-fun b!22120 () Bool)

(declare-fun res!9737 () Bool)

(assert (=> b!22120 (=> (not res!9737) (not e!11550))))

(declare-fun y!781 () T!1763)

(declare-fun y!782 () T!1763)

(assert (=> b!22120 (= res!9737 (and (= i!250 i!249) (= y!782 y!781)))))

(declare-fun res!9738 () Bool)

(assert (=> start!3510 (=> (not res!9738) (not e!11550))))

(assert (=> start!3510 (= res!9738 (>= i!249 0))))

(assert (=> start!3510 e!11550))

(assert (=> start!3510 true))

(assert (=> start!3510 tp_is_empty!107))

(assert (=> start!3510 e!11553))

(assert (=> start!3510 e!11551))

(assert (=> start!3510 e!11552))

(declare-fun l2!159 () List!340)

(declare-fun b!22121 () Bool)

(declare-fun size!231 (List!340) Int)

(assert (=> b!22121 (= e!11549 (> i!250 (+ (size!231 l1!165) (size!231 l2!159))))))

(declare-fun b!22122 () Bool)

(declare-fun res!9735 () Bool)

(assert (=> b!22122 (=> (not res!9735) (not e!11550))))

(assert (=> b!22122 (= res!9735 (= l2!159 (toList!100 (right!683 xs!570))))))

(assert (= (and start!3510 res!9738) b!22117))

(assert (= (and b!22117 res!9736) b!22115))

(assert (= (and b!22115 res!9739) b!22116))

(assert (= (and b!22116 res!9740) b!22122))

(assert (= (and b!22122 res!9735) b!22120))

(assert (= (and b!22120 res!9737) b!22118))

(assert (= (and b!22118 (not res!9741)) b!22121))

(assert (= (and start!3510 (is-Cons!334 l1!165)) b!22114))

(assert (= (and start!3510 (is-CC!35 xs!570)) b!22119))

(assert (= (and start!3510 (is-Single!35 xs!570)) b!22113))

(assert (= (and start!3510 (is-Cons!334 l2!159)) b!22112))

(declare-fun m!24273 () Bool)

(assert (=> b!22116 m!24273))

(declare-fun m!24275 () Bool)

(assert (=> b!22117 m!24275))

(declare-fun m!24277 () Bool)

(assert (=> b!22121 m!24277))

(declare-fun m!24279 () Bool)

(assert (=> b!22121 m!24279))

(declare-fun m!24281 () Bool)

(assert (=> b!22122 m!24281))

(push 1)

(assert (not b!22119))

(assert (not b!22122))

(assert (not b!22116))

(assert (not b!22117))

(assert tp_is_empty!107)

(assert (not b!22121))

(assert (not b!22112))

(assert (not b!22114))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!13103 () Bool)

(declare-fun lt!3525 () Int)

(assert (=> d!13103 (>= lt!3525 0)))

(declare-fun e!11556 () Int)

(assert (=> d!13103 (= lt!3525 e!11556)))

(declare-fun c!5267 () Bool)

(assert (=> d!13103 (= c!5267 (is-Nil!335 l1!165))))

(assert (=> d!13103 (= (size!231 l1!165) lt!3525)))

(declare-fun b!22127 () Bool)

(assert (=> b!22127 (= e!11556 0)))

(declare-fun b!22128 () Bool)

(assert (=> b!22128 (= e!11556 (+ 1 (size!231 (t!4335 l1!165))))))

(assert (= (and d!13103 c!5267) b!22127))

(assert (= (and d!13103 (not c!5267)) b!22128))

(declare-fun m!24283 () Bool)

(assert (=> b!22128 m!24283))

(assert (=> b!22121 d!13103))

(declare-fun d!13105 () Bool)

(declare-fun lt!3526 () Int)

(assert (=> d!13105 (>= lt!3526 0)))

(declare-fun e!11557 () Int)

(assert (=> d!13105 (= lt!3526 e!11557)))

(declare-fun c!5268 () Bool)

(assert (=> d!13105 (= c!5268 (is-Nil!335 l2!159))))

(assert (=> d!13105 (= (size!231 l2!159) lt!3526)))

(declare-fun b!22129 () Bool)

(assert (=> b!22129 (= e!11557 0)))

(declare-fun b!22130 () Bool)

(assert (=> b!22130 (= e!11557 (+ 1 (size!231 (t!4335 l2!159))))))

(assert (= (and d!13105 c!5268) b!22129))

(assert (= (and d!13105 (not c!5268)) b!22130))

(declare-fun m!24285 () Bool)

(assert (=> b!22130 m!24285))

(assert (=> b!22121 d!13105))

(declare-fun b!22140 () Bool)

(declare-fun e!11562 () List!340)

(declare-fun e!11563 () List!340)

(assert (=> b!22140 (= e!11562 e!11563)))

(declare-fun c!5273 () Bool)

(assert (=> b!22140 (= c!5273 (is-Single!35 (left!680 xs!570)))))

(declare-fun b!22142 () Bool)

(declare-fun ++!23 (List!340 List!340) List!340)

(assert (=> b!22142 (= e!11563 (++!23 (toList!100 (left!680 (left!680 xs!570))) (toList!100 (right!683 (left!680 xs!570)))))))

(declare-fun b!22139 () Bool)

(assert (=> b!22139 (= e!11562 Nil!335)))

(declare-fun b!22141 () Bool)

(assert (=> b!22141 (= e!11563 (Cons!334 (x!8808 (left!680 xs!570)) Nil!335))))

(declare-fun d!13107 () Bool)

(declare-fun lt!3529 () List!340)

(assert (=> d!13107 (= (size!231 lt!3529) (size!230 (left!680 xs!570)))))

(assert (=> d!13107 (= lt!3529 e!11562)))

(declare-fun c!5274 () Bool)

(assert (=> d!13107 (= c!5274 (is-Empty!46 (left!680 xs!570)))))

(assert (=> d!13107 (= (toList!100 (left!680 xs!570)) lt!3529)))

(assert (= (and b!22140 c!5273) b!22141))

(assert (= (and b!22140 (not c!5273)) b!22142))

(assert (= (and d!13107 c!5274) b!22139))

(assert (= (and d!13107 (not c!5274)) b!22140))

(declare-fun m!24287 () Bool)

(assert (=> b!22142 m!24287))

(declare-fun m!24289 () Bool)

(assert (=> b!22142 m!24289))

(assert (=> b!22142 m!24287))

(assert (=> b!22142 m!24289))

(declare-fun m!24291 () Bool)

(assert (=> b!22142 m!24291))

(declare-fun m!24293 () Bool)

(assert (=> d!13107 m!24293))

(declare-fun m!24295 () Bool)

(assert (=> d!13107 m!24295))

(assert (=> b!22116 d!13107))

(declare-fun b!22144 () Bool)

(declare-fun e!11564 () List!340)

(declare-fun e!11565 () List!340)

(assert (=> b!22144 (= e!11564 e!11565)))

(declare-fun c!5275 () Bool)

(assert (=> b!22144 (= c!5275 (is-Single!35 (right!683 xs!570)))))

(declare-fun b!22146 () Bool)

(assert (=> b!22146 (= e!11565 (++!23 (toList!100 (left!680 (right!683 xs!570))) (toList!100 (right!683 (right!683 xs!570)))))))

(declare-fun b!22143 () Bool)

(assert (=> b!22143 (= e!11564 Nil!335)))

(declare-fun b!22145 () Bool)

(assert (=> b!22145 (= e!11565 (Cons!334 (x!8808 (right!683 xs!570)) Nil!335))))

(declare-fun d!13109 () Bool)

(declare-fun lt!3530 () List!340)

(assert (=> d!13109 (= (size!231 lt!3530) (size!230 (right!683 xs!570)))))

(assert (=> d!13109 (= lt!3530 e!11564)))

(declare-fun c!5276 () Bool)

(assert (=> d!13109 (= c!5276 (is-Empty!46 (right!683 xs!570)))))

(assert (=> d!13109 (= (toList!100 (right!683 xs!570)) lt!3530)))

(assert (= (and b!22144 c!5275) b!22145))

(assert (= (and b!22144 (not c!5275)) b!22146))

(assert (= (and d!13109 c!5276) b!22143))

(assert (= (and d!13109 (not c!5276)) b!22144))

(declare-fun m!24297 () Bool)

(assert (=> b!22146 m!24297))

(declare-fun m!24299 () Bool)

(assert (=> b!22146 m!24299))

(assert (=> b!22146 m!24297))

(assert (=> b!22146 m!24299))

(declare-fun m!24301 () Bool)

(assert (=> b!22146 m!24301))

(declare-fun m!24303 () Bool)

(assert (=> d!13109 m!24303))

(declare-fun m!24305 () Bool)

(assert (=> d!13109 m!24305))

(assert (=> b!22122 d!13109))

(declare-fun b!22155 () Bool)

(declare-fun e!11570 () Int)

(assert (=> b!22155 (= e!11570 0)))

(declare-fun b!22158 () Bool)

(declare-fun e!11571 () Int)

(assert (=> b!22158 (= e!11571 (+ (size!230 (left!680 xs!570)) (size!230 (right!683 xs!570))))))

(declare-fun b!22156 () Bool)

(assert (=> b!22156 (= e!11570 e!11571)))

(declare-fun c!5281 () Bool)

(assert (=> b!22156 (= c!5281 (is-Single!35 xs!570))))

(declare-fun b!22157 () Bool)

(assert (=> b!22157 (= e!11571 1)))

(declare-fun d!13111 () Bool)

(declare-fun lt!3533 () Int)

(assert (=> d!13111 (>= lt!3533 0)))

(assert (=> d!13111 (= lt!3533 e!11570)))

(declare-fun c!5282 () Bool)

(assert (=> d!13111 (= c!5282 (is-Empty!46 xs!570))))

(assert (=> d!13111 (= (size!230 xs!570) lt!3533)))

(assert (= (and b!22156 c!5281) b!22157))

(assert (= (and b!22156 (not c!5281)) b!22158))

(assert (= (and d!13111 c!5282) b!22155))

(assert (= (and d!13111 (not c!5282)) b!22156))

(assert (=> b!22158 m!24295))

(assert (=> b!22158 m!24305))

(assert (=> b!22117 d!13111))

(declare-fun b!22165 () Bool)

(declare-fun e!11574 () Bool)

(declare-fun tp!4875 () Bool)

(declare-fun tp!4876 () Bool)

(assert (=> b!22165 (= e!11574 (and tp!4875 tp!4876))))

(declare-fun b!22166 () Bool)

(assert (=> b!22166 (= e!11574 tp_is_empty!107)))

(assert (=> b!22119 (= tp!4870 e!11574)))

(assert (= (and b!22119 (is-CC!35 (left!680 xs!570))) b!22165))

(assert (= (and b!22119 (is-Single!35 (left!680 xs!570))) b!22166))

(declare-fun b!22167 () Bool)

(declare-fun e!11575 () Bool)

(declare-fun tp!4877 () Bool)

(declare-fun tp!4878 () Bool)

(assert (=> b!22167 (= e!11575 (and tp!4877 tp!4878))))

(declare-fun b!22168 () Bool)

(assert (=> b!22168 (= e!11575 tp_is_empty!107)))

(assert (=> b!22119 (= tp!4869 e!11575)))

(assert (= (and b!22119 (is-CC!35 (right!683 xs!570))) b!22167))

(assert (= (and b!22119 (is-Single!35 (right!683 xs!570))) b!22168))

(declare-fun b!22173 () Bool)

(declare-fun e!11578 () Bool)

(declare-fun tp!4881 () Bool)

(assert (=> b!22173 (= e!11578 (and tp_is_empty!107 tp!4881))))

(assert (=> b!22114 (= tp!4868 e!11578)))

(assert (= (and b!22114 (is-Cons!334 (t!4335 l1!165))) b!22173))

(declare-fun b!22174 () Bool)

(declare-fun e!11579 () Bool)

(declare-fun tp!4882 () Bool)

(assert (=> b!22174 (= e!11579 (and tp_is_empty!107 tp!4882))))

(assert (=> b!22112 (= tp!4867 e!11579)))

(assert (= (and b!22112 (is-Cons!334 (t!4335 l2!159))) b!22174))

(push 1)

(assert (not b!22167))

(assert (not b!22130))

(assert (not b!22146))

(assert (not b!22173))

(assert (not b!22142))

(assert (not d!13109))

(assert tp_is_empty!107)

(assert (not b!22165))

(assert (not d!13107))

(assert (not b!22174))

(assert (not b!22128))

(assert (not b!22158))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

