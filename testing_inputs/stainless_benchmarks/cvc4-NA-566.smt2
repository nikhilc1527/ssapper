; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4252 () Bool)

(assert start!4252)

(declare-fun b!34210 () Bool)

(declare-fun res!15696 () Bool)

(declare-fun e!17302 () Bool)

(assert (=> b!34210 (=> (not res!15696) (not e!17302))))

(declare-fun i!280 () Int)

(declare-datatypes () ((T!1887 (T!1888 (val!116 Int)))))

(declare-datatypes () ((List!378 (Cons!372 (h!289 T!1887) (t!4404 List!378)) (Nil!373))))

(declare-fun l!715 () List!378)

(declare-fun size!309 (List!378) Int)

(assert (=> b!34210 (= res!15696 (<= i!280 (size!309 l!715)))))

(declare-fun b!34211 () Bool)

(declare-fun e!17304 () Bool)

(declare-fun tp_is_empty!231 () Bool)

(declare-fun tp!7096 () Bool)

(assert (=> b!34211 (= e!17304 (and tp_is_empty!231 tp!7096))))

(declare-fun b!34212 () Bool)

(declare-fun res!15695 () Bool)

(assert (=> b!34212 (=> (not res!15695) (not e!17302))))

(declare-fun i!281 () Int)

(declare-fun l!716 () List!378)

(declare-fun y!808 () T!1887)

(declare-fun y!809 () T!1887)

(declare-fun h!216 () T!1887)

(assert (=> b!34212 (= res!15695 (and (not (is-Nil!373 l!715)) (not (= i!280 0)) (= h!216 (h!289 l!715)) (= l!716 (t!4404 l!715)) (= i!281 (- i!280 1)) (= y!809 y!808)))))

(declare-fun b!34213 () Bool)

(declare-fun e!17305 () Bool)

(assert (=> b!34213 (= e!17305 (> i!281 (size!309 l!716)))))

(declare-fun b!34214 () Bool)

(declare-fun e!17303 () Bool)

(declare-fun tp!7095 () Bool)

(assert (=> b!34214 (= e!17303 (and tp_is_empty!231 tp!7095))))

(declare-fun res!15693 () Bool)

(assert (=> start!4252 (=> (not res!15693) (not e!17302))))

(assert (=> start!4252 (= res!15693 (<= 0 i!280))))

(assert (=> start!4252 e!17302))

(assert (=> start!4252 true))

(assert (=> start!4252 e!17303))

(assert (=> start!4252 e!17304))

(assert (=> start!4252 tp_is_empty!231))

(declare-fun b!34215 () Bool)

(assert (=> b!34215 (= e!17302 e!17305)))

(declare-fun res!15694 () Bool)

(assert (=> b!34215 (=> res!15694 e!17305)))

(assert (=> b!34215 (= res!15694 (> 0 i!281))))

(assert (= (and start!4252 res!15693) b!34210))

(assert (= (and b!34210 res!15696) b!34212))

(assert (= (and b!34212 res!15695) b!34215))

(assert (= (and b!34215 (not res!15694)) b!34213))

(assert (= (and start!4252 (is-Cons!372 l!716)) b!34214))

(assert (= (and start!4252 (is-Cons!372 l!715)) b!34211))

(declare-fun m!36223 () Bool)

(assert (=> b!34210 m!36223))

(declare-fun m!36225 () Bool)

(assert (=> b!34213 m!36225))

(push 1)

(assert (not b!34210))

(assert (not b!34211))

(assert tp_is_empty!231)

(assert (not b!34213))

(assert (not b!34214))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!16965 () Bool)

(declare-fun lt!6431 () Int)

(assert (=> d!16965 (>= lt!6431 0)))

(declare-fun e!17308 () Int)

(assert (=> d!16965 (= lt!6431 e!17308)))

(declare-fun c!7346 () Bool)

(assert (=> d!16965 (= c!7346 (is-Nil!373 l!716))))

(assert (=> d!16965 (= (size!309 l!716) lt!6431)))

(declare-fun b!34220 () Bool)

(assert (=> b!34220 (= e!17308 0)))

(declare-fun b!34221 () Bool)

(assert (=> b!34221 (= e!17308 (+ 1 (size!309 (t!4404 l!716))))))

(assert (= (and d!16965 c!7346) b!34220))

(assert (= (and d!16965 (not c!7346)) b!34221))

(declare-fun m!36227 () Bool)

(assert (=> b!34221 m!36227))

(assert (=> b!34213 d!16965))

(declare-fun d!16967 () Bool)

(declare-fun lt!6432 () Int)

(assert (=> d!16967 (>= lt!6432 0)))

(declare-fun e!17309 () Int)

(assert (=> d!16967 (= lt!6432 e!17309)))

(declare-fun c!7347 () Bool)

(assert (=> d!16967 (= c!7347 (is-Nil!373 l!715))))

(assert (=> d!16967 (= (size!309 l!715) lt!6432)))

(declare-fun b!34222 () Bool)

(assert (=> b!34222 (= e!17309 0)))

(declare-fun b!34223 () Bool)

(assert (=> b!34223 (= e!17309 (+ 1 (size!309 (t!4404 l!715))))))

(assert (= (and d!16967 c!7347) b!34222))

(assert (= (and d!16967 (not c!7347)) b!34223))

(declare-fun m!36229 () Bool)

(assert (=> b!34223 m!36229))

(assert (=> b!34210 d!16967))

(declare-fun b!34228 () Bool)

(declare-fun e!17312 () Bool)

(declare-fun tp!7099 () Bool)

(assert (=> b!34228 (= e!17312 (and tp_is_empty!231 tp!7099))))

(assert (=> b!34211 (= tp!7096 e!17312)))

(assert (= (and b!34211 (is-Cons!372 (t!4404 l!715))) b!34228))

(declare-fun b!34229 () Bool)

(declare-fun e!17313 () Bool)

(declare-fun tp!7100 () Bool)

(assert (=> b!34229 (= e!17313 (and tp_is_empty!231 tp!7100))))

(assert (=> b!34214 (= tp!7095 e!17313)))

(assert (= (and b!34214 (is-Cons!372 (t!4404 l!716))) b!34229))

(push 1)

(assert (not b!34223))

(assert tp_is_empty!231)

(assert (not b!34229))

(assert (not b!34221))

(assert (not b!34228))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

