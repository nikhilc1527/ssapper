; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3020 () Bool)

(assert start!3020)

(declare-fun b!14249 () Bool)

(declare-fun res!5690 () Bool)

(declare-fun e!7884 () Bool)

(assert (=> b!14249 (=> (not res!5690) (not e!7884))))

(declare-datatypes () ((T!1699 (T!1700 (val!22 Int)))))

(declare-datatypes () ((Conc!4 (CC!3 (left!648 Conc!4) (right!651 Conc!4)) (Single!3 (x!8684 T!1699)) (Empty!14))))

(declare-fun xs!637 () Conc!4)

(declare-fun balanced!4 (Conc!4) Bool)

(assert (=> b!14249 (= res!5690 (balanced!4 xs!637))))

(declare-fun b!14250 () Bool)

(declare-fun e!7883 () Bool)

(declare-fun tp_is_empty!43 () Bool)

(assert (=> b!14250 (= e!7883 tp_is_empty!43)))

(declare-fun b!14251 () Bool)

(declare-fun res!5691 () Bool)

(assert (=> b!14251 (=> (not res!5691) (not e!7884))))

(declare-fun n!315 () Int)

(declare-fun size!182 (Conc!4) Int)

(assert (=> b!14251 (= res!5691 (< n!315 (size!182 (left!648 xs!637))))))

(declare-fun b!14252 () Bool)

(declare-fun e!7885 () Bool)

(declare-fun tp!3438 () Bool)

(declare-fun tp!3436 () Bool)

(assert (=> b!14252 (= e!7885 (and tp!3438 tp!3436))))

(declare-fun b!14253 () Bool)

(declare-fun tp!3437 () Bool)

(declare-fun tp!3435 () Bool)

(assert (=> b!14253 (= e!7883 (and tp!3437 tp!3435))))

(declare-fun b!14254 () Bool)

(declare-fun e!7882 () Bool)

(assert (=> b!14254 (= e!7884 e!7882)))

(declare-fun res!5687 () Bool)

(assert (=> b!14254 (=> res!5687 e!7882)))

(declare-fun xs!650 () Conc!4)

(declare-fun concInv!3 (Conc!4) Bool)

(assert (=> b!14254 (= res!5687 (not (concInv!3 xs!650)))))

(declare-fun b!14255 () Bool)

(declare-fun res!5689 () Bool)

(assert (=> b!14255 (=> (not res!5689) (not e!7884))))

(assert (=> b!14255 (= res!5689 (and (not (is-Empty!14 xs!637)) (not (is-Single!3 xs!637))))))

(declare-fun b!14256 () Bool)

(assert (=> b!14256 (= e!7885 tp_is_empty!43)))

(declare-fun res!5692 () Bool)

(assert (=> start!3020 (=> (not res!5692) (not e!7884))))

(assert (=> start!3020 (= res!5692 (concInv!3 xs!637))))

(assert (=> start!3020 e!7884))

(assert (=> start!3020 e!7885))

(assert (=> start!3020 true))

(assert (=> start!3020 e!7883))

(declare-fun b!14257 () Bool)

(declare-fun res!5688 () Bool)

(assert (=> b!14257 (=> (not res!5688) (not e!7884))))

(declare-fun n!328 () Int)

(assert (=> b!14257 (= res!5688 (and (= xs!650 (left!648 xs!637)) (= n!328 n!315)))))

(declare-fun b!14258 () Bool)

(assert (=> b!14258 (= e!7882 (not (balanced!4 xs!650)))))

(assert (= (and start!3020 res!5692) b!14249))

(assert (= (and b!14249 res!5690) b!14255))

(assert (= (and b!14255 res!5689) b!14251))

(assert (= (and b!14251 res!5691) b!14257))

(assert (= (and b!14257 res!5688) b!14254))

(assert (= (and b!14254 (not res!5687)) b!14258))

(assert (= (and start!3020 (is-CC!3 xs!637)) b!14252))

(assert (= (and start!3020 (is-Single!3 xs!637)) b!14256))

(assert (= (and start!3020 (is-CC!3 xs!650)) b!14253))

(assert (= (and start!3020 (is-Single!3 xs!650)) b!14250))

(declare-fun m!18115 () Bool)

(assert (=> b!14258 m!18115))

(declare-fun m!18117 () Bool)

(assert (=> start!3020 m!18117))

(declare-fun m!18119 () Bool)

(assert (=> b!14254 m!18119))

(declare-fun m!18121 () Bool)

(assert (=> b!14251 m!18121))

(declare-fun m!18123 () Bool)

(assert (=> b!14249 m!18123))

(push 1)

(assert (not b!14249))

(assert (not b!14251))

(assert (not b!14253))

(assert (not b!14254))

(assert tp_is_empty!43)

(assert (not b!14252))

(assert (not start!3020))

(assert (not b!14258))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!14269 () Bool)

(declare-fun res!5703 () Bool)

(declare-fun e!7891 () Bool)

(assert (=> b!14269 (=> (not res!5703) (not e!7891))))

(assert (=> b!14269 (= res!5703 (concInv!3 (left!648 xs!637)))))

(declare-fun b!14270 () Bool)

(assert (=> b!14270 (= e!7891 (concInv!3 (right!651 xs!637)))))

(declare-fun b!14267 () Bool)

(declare-fun e!7890 () Bool)

(assert (=> b!14267 (= e!7890 e!7891)))

(declare-fun res!5701 () Bool)

(assert (=> b!14267 (=> (not res!5701) (not e!7891))))

(declare-fun isEmpty!268 (Conc!4) Bool)

(assert (=> b!14267 (= res!5701 (not (isEmpty!268 (left!648 xs!637))))))

(declare-fun d!11271 () Bool)

(declare-fun res!5704 () Bool)

(assert (=> d!11271 (=> res!5704 e!7890)))

(assert (=> d!11271 (= res!5704 (not (is-CC!3 xs!637)))))

(assert (=> d!11271 (= (concInv!3 xs!637) e!7890)))

(declare-fun b!14268 () Bool)

(declare-fun res!5702 () Bool)

(assert (=> b!14268 (=> (not res!5702) (not e!7891))))

(assert (=> b!14268 (= res!5702 (not (isEmpty!268 (right!651 xs!637))))))

(assert (= (and d!11271 (not res!5704)) b!14267))

(assert (= (and b!14267 res!5701) b!14268))

(assert (= (and b!14268 res!5702) b!14269))

(assert (= (and b!14269 res!5703) b!14270))

(declare-fun m!18125 () Bool)

(assert (=> b!14269 m!18125))

(declare-fun m!18127 () Bool)

(assert (=> b!14270 m!18127))

(declare-fun m!18129 () Bool)

(assert (=> b!14267 m!18129))

(declare-fun m!18131 () Bool)

(assert (=> b!14268 m!18131))

(assert (=> start!3020 d!11271))

(declare-fun b!14282 () Bool)

(declare-fun e!7896 () Int)

(assert (=> b!14282 (= e!7896 (+ (size!182 (left!648 (left!648 xs!637))) (size!182 (right!651 (left!648 xs!637)))))))

(declare-fun d!11273 () Bool)

(declare-fun lt!2053 () Int)

(assert (=> d!11273 (>= lt!2053 0)))

(declare-fun e!7897 () Int)

(assert (=> d!11273 (= lt!2053 e!7897)))

(declare-fun c!3936 () Bool)

(assert (=> d!11273 (= c!3936 (is-Empty!14 (left!648 xs!637)))))

(assert (=> d!11273 (= (size!182 (left!648 xs!637)) lt!2053)))

(declare-fun b!14281 () Bool)

(assert (=> b!14281 (= e!7896 1)))

(declare-fun b!14280 () Bool)

(assert (=> b!14280 (= e!7897 e!7896)))

(declare-fun c!3935 () Bool)

(assert (=> b!14280 (= c!3935 (is-Single!3 (left!648 xs!637)))))

(declare-fun b!14279 () Bool)

(assert (=> b!14279 (= e!7897 0)))

(assert (= (and b!14280 c!3935) b!14281))

(assert (= (and b!14280 (not c!3935)) b!14282))

(assert (= (and d!11273 c!3936) b!14279))

(assert (= (and d!11273 (not c!3936)) b!14280))

(declare-fun m!18133 () Bool)

(assert (=> b!14282 m!18133))

(declare-fun m!18135 () Bool)

(assert (=> b!14282 m!18135))

(assert (=> b!14251 d!11273))

(declare-fun b!14285 () Bool)

(declare-fun res!5707 () Bool)

(declare-fun e!7899 () Bool)

(assert (=> b!14285 (=> (not res!5707) (not e!7899))))

(assert (=> b!14285 (= res!5707 (concInv!3 (left!648 xs!650)))))

(declare-fun b!14286 () Bool)

(assert (=> b!14286 (= e!7899 (concInv!3 (right!651 xs!650)))))

(declare-fun b!14283 () Bool)

(declare-fun e!7898 () Bool)

(assert (=> b!14283 (= e!7898 e!7899)))

(declare-fun res!5705 () Bool)

(assert (=> b!14283 (=> (not res!5705) (not e!7899))))

(assert (=> b!14283 (= res!5705 (not (isEmpty!268 (left!648 xs!650))))))

(declare-fun d!11275 () Bool)

(declare-fun res!5708 () Bool)

(assert (=> d!11275 (=> res!5708 e!7898)))

(assert (=> d!11275 (= res!5708 (not (is-CC!3 xs!650)))))

(assert (=> d!11275 (= (concInv!3 xs!650) e!7898)))

(declare-fun b!14284 () Bool)

(declare-fun res!5706 () Bool)

(assert (=> b!14284 (=> (not res!5706) (not e!7899))))

(assert (=> b!14284 (= res!5706 (not (isEmpty!268 (right!651 xs!650))))))

(assert (= (and d!11275 (not res!5708)) b!14283))

(assert (= (and b!14283 res!5705) b!14284))

(assert (= (and b!14284 res!5706) b!14285))

(assert (= (and b!14285 res!5707) b!14286))

(declare-fun m!18137 () Bool)

(assert (=> b!14285 m!18137))

(declare-fun m!18139 () Bool)

(assert (=> b!14286 m!18139))

(declare-fun m!18141 () Bool)

(assert (=> b!14283 m!18141))

(declare-fun m!18143 () Bool)

(assert (=> b!14284 m!18143))

(assert (=> b!14254 d!11275))

(declare-fun b!14296 () Bool)

(declare-fun res!5717 () Bool)

(declare-fun e!7905 () Bool)

(assert (=> b!14296 (=> (not res!5717) (not e!7905))))

(declare-fun level!3 (Conc!4) Int)

(assert (=> b!14296 (= res!5717 (<= (- (level!3 (left!648 xs!650)) (level!3 (right!651 xs!650))) 1))))

(declare-fun b!14298 () Bool)

(assert (=> b!14298 (= e!7905 (balanced!4 (right!651 xs!650)))))

(declare-fun b!14295 () Bool)

(declare-fun e!7904 () Bool)

(assert (=> b!14295 (= e!7904 e!7905)))

(declare-fun res!5718 () Bool)

(assert (=> b!14295 (=> (not res!5718) (not e!7905))))

(assert (=> b!14295 (= res!5718 (>= (- (level!3 (left!648 xs!650)) (level!3 (right!651 xs!650))) (- 1)))))

(declare-fun d!11277 () Bool)

(declare-fun res!5720 () Bool)

(assert (=> d!11277 (=> res!5720 e!7904)))

(assert (=> d!11277 (= res!5720 (not (is-CC!3 xs!650)))))

(assert (=> d!11277 (= (balanced!4 xs!650) e!7904)))

(declare-fun b!14297 () Bool)

(declare-fun res!5719 () Bool)

(assert (=> b!14297 (=> (not res!5719) (not e!7905))))

(assert (=> b!14297 (= res!5719 (balanced!4 (left!648 xs!650)))))

(assert (= (and d!11277 (not res!5720)) b!14295))

(assert (= (and b!14295 res!5718) b!14296))

(assert (= (and b!14296 res!5717) b!14297))

(assert (= (and b!14297 res!5719) b!14298))

(declare-fun m!18145 () Bool)

(assert (=> b!14296 m!18145))

(declare-fun m!18147 () Bool)

(assert (=> b!14296 m!18147))

(declare-fun m!18149 () Bool)

(assert (=> b!14298 m!18149))

(assert (=> b!14295 m!18145))

(assert (=> b!14295 m!18147))

(declare-fun m!18151 () Bool)

(assert (=> b!14297 m!18151))

(assert (=> b!14258 d!11277))

(declare-fun b!14300 () Bool)

(declare-fun res!5721 () Bool)

(declare-fun e!7907 () Bool)

(assert (=> b!14300 (=> (not res!5721) (not e!7907))))

(assert (=> b!14300 (= res!5721 (<= (- (level!3 (left!648 xs!637)) (level!3 (right!651 xs!637))) 1))))

(declare-fun b!14302 () Bool)

(assert (=> b!14302 (= e!7907 (balanced!4 (right!651 xs!637)))))

(declare-fun b!14299 () Bool)

(declare-fun e!7906 () Bool)

(assert (=> b!14299 (= e!7906 e!7907)))

(declare-fun res!5722 () Bool)

(assert (=> b!14299 (=> (not res!5722) (not e!7907))))

(assert (=> b!14299 (= res!5722 (>= (- (level!3 (left!648 xs!637)) (level!3 (right!651 xs!637))) (- 1)))))

(declare-fun d!11279 () Bool)

(declare-fun res!5724 () Bool)

(assert (=> d!11279 (=> res!5724 e!7906)))

(assert (=> d!11279 (= res!5724 (not (is-CC!3 xs!637)))))

(assert (=> d!11279 (= (balanced!4 xs!637) e!7906)))

(declare-fun b!14301 () Bool)

(declare-fun res!5723 () Bool)

(assert (=> b!14301 (=> (not res!5723) (not e!7907))))

(assert (=> b!14301 (= res!5723 (balanced!4 (left!648 xs!637)))))

(assert (= (and d!11279 (not res!5724)) b!14299))

(assert (= (and b!14299 res!5722) b!14300))

(assert (= (and b!14300 res!5721) b!14301))

(assert (= (and b!14301 res!5723) b!14302))

(declare-fun m!18153 () Bool)

(assert (=> b!14300 m!18153))

(declare-fun m!18155 () Bool)

(assert (=> b!14300 m!18155))

(declare-fun m!18157 () Bool)

(assert (=> b!14302 m!18157))

(assert (=> b!14299 m!18153))

(assert (=> b!14299 m!18155))

(declare-fun m!18159 () Bool)

(assert (=> b!14301 m!18159))

(assert (=> b!14249 d!11279))

(declare-fun b!14309 () Bool)

(declare-fun e!7910 () Bool)

(declare-fun tp!3443 () Bool)

(declare-fun tp!3444 () Bool)

(assert (=> b!14309 (= e!7910 (and tp!3443 tp!3444))))

(declare-fun b!14310 () Bool)

(assert (=> b!14310 (= e!7910 tp_is_empty!43)))

(assert (=> b!14253 (= tp!3437 e!7910)))

(assert (= (and b!14253 (is-CC!3 (left!648 xs!650))) b!14309))

(assert (= (and b!14253 (is-Single!3 (left!648 xs!650))) b!14310))

(declare-fun b!14311 () Bool)

(declare-fun e!7911 () Bool)

(declare-fun tp!3445 () Bool)

(declare-fun tp!3446 () Bool)

(assert (=> b!14311 (= e!7911 (and tp!3445 tp!3446))))

(declare-fun b!14312 () Bool)

(assert (=> b!14312 (= e!7911 tp_is_empty!43)))

(assert (=> b!14253 (= tp!3435 e!7911)))

(assert (= (and b!14253 (is-CC!3 (right!651 xs!650))) b!14311))

(assert (= (and b!14253 (is-Single!3 (right!651 xs!650))) b!14312))

(declare-fun b!14313 () Bool)

(declare-fun e!7912 () Bool)

(declare-fun tp!3447 () Bool)

(declare-fun tp!3448 () Bool)

(assert (=> b!14313 (= e!7912 (and tp!3447 tp!3448))))

(declare-fun b!14314 () Bool)

(assert (=> b!14314 (= e!7912 tp_is_empty!43)))

(assert (=> b!14252 (= tp!3438 e!7912)))

(assert (= (and b!14252 (is-CC!3 (left!648 xs!637))) b!14313))

(assert (= (and b!14252 (is-Single!3 (left!648 xs!637))) b!14314))

(declare-fun b!14315 () Bool)

(declare-fun e!7913 () Bool)

(declare-fun tp!3449 () Bool)

(declare-fun tp!3450 () Bool)

(assert (=> b!14315 (= e!7913 (and tp!3449 tp!3450))))

(declare-fun b!14316 () Bool)

(assert (=> b!14316 (= e!7913 tp_is_empty!43)))

(assert (=> b!14252 (= tp!3436 e!7913)))

(assert (= (and b!14252 (is-CC!3 (right!651 xs!637))) b!14315))

(assert (= (and b!14252 (is-Single!3 (right!651 xs!637))) b!14316))

(push 1)

(assert (not b!14302))

(assert (not b!14311))

(assert (not b!14300))

(assert (not b!14301))

(assert (not b!14286))

(assert tp_is_empty!43)

(assert (not b!14285))

(assert (not b!14269))

(assert (not b!14267))

(assert (not b!14284))

(assert (not b!14296))

(assert (not b!14270))

(assert (not b!14297))

(assert (not b!14313))

(assert (not b!14268))

(assert (not b!14282))

(assert (not b!14299))

(assert (not b!14309))

(assert (not b!14298))

(assert (not b!14283))

(assert (not b!14295))

(assert (not b!14315))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

