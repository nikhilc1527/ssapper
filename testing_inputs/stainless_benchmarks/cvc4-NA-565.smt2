; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4248 () Bool)

(assert start!4248)

(declare-fun res!15684 () Bool)

(declare-fun e!17280 () Bool)

(assert (=> start!4248 (=> (not res!15684) (not e!17280))))

(declare-datatypes () ((T!1885 (T!1886 (val!115 Int)))))

(declare-datatypes () ((Conc!92 (CC!91 (left!736 Conc!92) (right!739 Conc!92)) (Single!91 (x!9045 T!1885)) (Empty!102))))

(declare-fun thiss!2754 () Conc!92)

(assert (=> start!4248 (= res!15684 (and (not (is-Empty!102 thiss!2754)) (not (is-Single!91 thiss!2754))))))

(assert (=> start!4248 e!17280))

(declare-fun e!17281 () Bool)

(assert (=> start!4248 e!17281))

(assert (=> start!4248 true))

(declare-fun b!34170 () Bool)

(declare-fun tp!7081 () Bool)

(declare-fun tp!7082 () Bool)

(assert (=> b!34170 (= e!17281 (and tp!7081 tp!7082))))

(declare-fun b!34168 () Bool)

(declare-fun res!15683 () Bool)

(assert (=> b!34168 (=> (not res!15683) (not e!17280))))

(declare-fun x$2!138 () Int)

(declare-fun size!308 (Conc!92) Int)

(assert (=> b!34168 (= res!15683 (= x$2!138 (+ (size!308 (left!736 thiss!2754)) (size!308 (right!739 thiss!2754)))))))

(declare-fun b!34169 () Bool)

(assert (=> b!34169 (= e!17280 (< x$2!138 0))))

(declare-fun b!34171 () Bool)

(declare-fun tp_is_empty!229 () Bool)

(assert (=> b!34171 (= e!17281 tp_is_empty!229)))

(assert (= (and start!4248 res!15684) b!34168))

(assert (= (and b!34168 res!15683) b!34169))

(assert (= (and start!4248 (is-CC!91 thiss!2754)) b!34170))

(assert (= (and start!4248 (is-Single!91 thiss!2754)) b!34171))

(declare-fun m!36211 () Bool)

(assert (=> b!34168 m!36211))

(declare-fun m!36213 () Bool)

(assert (=> b!34168 m!36213))

(push 1)

(assert (not b!34168))

(assert (not b!34170))

(assert tp_is_empty!229)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!34180 () Bool)

(declare-fun e!17286 () Int)

(assert (=> b!34180 (= e!17286 0)))

(declare-fun b!34181 () Bool)

(declare-fun e!17287 () Int)

(assert (=> b!34181 (= e!17286 e!17287)))

(declare-fun c!7340 () Bool)

(assert (=> b!34181 (= c!7340 (is-Single!91 (left!736 thiss!2754)))))

(declare-fun b!34183 () Bool)

(assert (=> b!34183 (= e!17287 (+ (size!308 (left!736 (left!736 thiss!2754))) (size!308 (right!739 (left!736 thiss!2754)))))))

(declare-fun d!16961 () Bool)

(declare-fun lt!6427 () Int)

(assert (=> d!16961 (>= lt!6427 0)))

(assert (=> d!16961 (= lt!6427 e!17286)))

(declare-fun c!7341 () Bool)

(assert (=> d!16961 (= c!7341 (is-Empty!102 (left!736 thiss!2754)))))

(assert (=> d!16961 (= (size!308 (left!736 thiss!2754)) lt!6427)))

(declare-fun b!34182 () Bool)

(assert (=> b!34182 (= e!17287 1)))

(assert (= (and b!34181 c!7340) b!34182))

(assert (= (and b!34181 (not c!7340)) b!34183))

(assert (= (and d!16961 c!7341) b!34180))

(assert (= (and d!16961 (not c!7341)) b!34181))

(declare-fun m!36215 () Bool)

(assert (=> b!34183 m!36215))

(declare-fun m!36217 () Bool)

(assert (=> b!34183 m!36217))

(assert (=> b!34168 d!16961))

(declare-fun b!34184 () Bool)

(declare-fun e!17288 () Int)

(assert (=> b!34184 (= e!17288 0)))

(declare-fun b!34185 () Bool)

(declare-fun e!17289 () Int)

(assert (=> b!34185 (= e!17288 e!17289)))

(declare-fun c!7342 () Bool)

(assert (=> b!34185 (= c!7342 (is-Single!91 (right!739 thiss!2754)))))

(declare-fun b!34187 () Bool)

(assert (=> b!34187 (= e!17289 (+ (size!308 (left!736 (right!739 thiss!2754))) (size!308 (right!739 (right!739 thiss!2754)))))))

(declare-fun d!16963 () Bool)

(declare-fun lt!6428 () Int)

(assert (=> d!16963 (>= lt!6428 0)))

(assert (=> d!16963 (= lt!6428 e!17288)))

(declare-fun c!7343 () Bool)

(assert (=> d!16963 (= c!7343 (is-Empty!102 (right!739 thiss!2754)))))

(assert (=> d!16963 (= (size!308 (right!739 thiss!2754)) lt!6428)))

(declare-fun b!34186 () Bool)

(assert (=> b!34186 (= e!17289 1)))

(assert (= (and b!34185 c!7342) b!34186))

(assert (= (and b!34185 (not c!7342)) b!34187))

(assert (= (and d!16963 c!7343) b!34184))

(assert (= (and d!16963 (not c!7343)) b!34185))

(declare-fun m!36219 () Bool)

(assert (=> b!34187 m!36219))

(declare-fun m!36221 () Bool)

(assert (=> b!34187 m!36221))

(assert (=> b!34168 d!16963))

(declare-fun b!34194 () Bool)

(declare-fun e!17292 () Bool)

(declare-fun tp!7087 () Bool)

(declare-fun tp!7088 () Bool)

(assert (=> b!34194 (= e!17292 (and tp!7087 tp!7088))))

(declare-fun b!34195 () Bool)

(assert (=> b!34195 (= e!17292 tp_is_empty!229)))

(assert (=> b!34170 (= tp!7081 e!17292)))

(assert (= (and b!34170 (is-CC!91 (left!736 thiss!2754))) b!34194))

(assert (= (and b!34170 (is-Single!91 (left!736 thiss!2754))) b!34195))

(declare-fun b!34196 () Bool)

(declare-fun e!17293 () Bool)

(declare-fun tp!7089 () Bool)

(declare-fun tp!7090 () Bool)

(assert (=> b!34196 (= e!17293 (and tp!7089 tp!7090))))

(declare-fun b!34197 () Bool)

(assert (=> b!34197 (= e!17293 tp_is_empty!229)))

(assert (=> b!34170 (= tp!7082 e!17293)))

(assert (= (and b!34170 (is-CC!91 (right!739 thiss!2754))) b!34196))

(assert (= (and b!34170 (is-Single!91 (right!739 thiss!2754))) b!34197))

(push 1)

(assert (not b!34196))

(assert (not b!34187))

(assert tp_is_empty!229)

(assert (not b!34183))

(assert (not b!34194))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

