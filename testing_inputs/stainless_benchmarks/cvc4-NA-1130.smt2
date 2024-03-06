; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8194 () Bool)

(assert start!8194)

(declare-fun b!58234 () Bool)

(declare-fun res!26910 () Bool)

(declare-fun e!30975 () Bool)

(assert (=> b!58234 (=> (not res!26910) (not e!30975))))

(declare-datatypes () ((T!3706 (T!3707 (val!165 Int)))))

(declare-datatypes () ((List!467 (Cons!443 (h!680 T!3706) (t!47120 List!467)) (Nil!444))))

(declare-fun res!26847 () List!467)

(declare-fun l2!287 () List!467)

(declare-fun l1!293 () List!467)

(declare-fun append!160 (List!467 List!467) List!467)

(assert (=> b!58234 (= res!26910 (= res!26847 (Cons!443 (h!680 l1!293) (append!160 (t!47120 l1!293) l2!287))))))

(declare-fun b!58235 () Bool)

(declare-fun e!30974 () Bool)

(declare-fun tp_is_empty!325 () Bool)

(declare-fun tp!16317 () Bool)

(assert (=> b!58235 (= e!30974 (and tp_is_empty!325 tp!16317))))

(declare-fun b!58236 () Bool)

(declare-fun e!30976 () Bool)

(declare-fun tp!16319 () Bool)

(assert (=> b!58236 (= e!30976 (and tp_is_empty!325 tp!16319))))

(declare-fun b!58237 () Bool)

(declare-fun e!30973 () Bool)

(declare-fun tp!16318 () Bool)

(assert (=> b!58237 (= e!30973 (and tp_is_empty!325 tp!16318))))

(declare-fun res!26911 () Bool)

(assert (=> start!8194 (=> (not res!26911) (not e!30975))))

(assert (=> start!8194 (= res!26911 (is-Cons!443 l1!293))))

(assert (=> start!8194 e!30975))

(assert (=> start!8194 e!30973))

(assert (=> start!8194 e!30974))

(assert (=> start!8194 e!30976))

(declare-fun b!58238 () Bool)

(assert (=> b!58238 (= e!30975 (and (not (= res!26847 l1!293)) (= l2!287 Nil!444)))))

(assert (= (and start!8194 res!26911) b!58234))

(assert (= (and b!58234 res!26910) b!58238))

(assert (= (and start!8194 (is-Cons!443 l1!293)) b!58237))

(assert (= (and start!8194 (is-Cons!443 res!26847)) b!58235))

(assert (= (and start!8194 (is-Cons!443 l2!287)) b!58236))

(declare-fun m!62796 () Bool)

(assert (=> b!58234 m!62796))

(push 1)

(assert (not b!58234))

(assert (not b!58237))

(assert (not b!58236))

(assert (not b!58235))

(assert tp_is_empty!325)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!50512 () Bool)

(declare-fun lt!10684 () List!467)

(assert (=> d!50512 (or (= lt!10684 (t!47120 l1!293)) (not (= l2!287 Nil!444)))))

(declare-fun e!30979 () List!467)

(assert (=> d!50512 (= lt!10684 e!30979)))

(declare-fun c!12469 () Bool)

(assert (=> d!50512 (= c!12469 (is-Cons!443 (t!47120 l1!293)))))

(assert (=> d!50512 (= (append!160 (t!47120 l1!293) l2!287) lt!10684)))

(declare-fun b!58243 () Bool)

(assert (=> b!58243 (= e!30979 (Cons!443 (h!680 (t!47120 l1!293)) (append!160 (t!47120 (t!47120 l1!293)) l2!287)))))

(declare-fun b!58244 () Bool)

(assert (=> b!58244 (= e!30979 l2!287)))

(assert (= (and d!50512 c!12469) b!58243))

(assert (= (and d!50512 (not c!12469)) b!58244))

(declare-fun m!62798 () Bool)

(assert (=> b!58243 m!62798))

(assert (=> b!58234 d!50512))

(declare-fun b!58249 () Bool)

(declare-fun e!30982 () Bool)

(declare-fun tp!16322 () Bool)

(assert (=> b!58249 (= e!30982 (and tp_is_empty!325 tp!16322))))

(assert (=> b!58235 (= tp!16317 e!30982)))

(assert (= (and b!58235 (is-Cons!443 (t!47120 res!26847))) b!58249))

(declare-fun b!58250 () Bool)

(declare-fun e!30983 () Bool)

(declare-fun tp!16323 () Bool)

(assert (=> b!58250 (= e!30983 (and tp_is_empty!325 tp!16323))))

(assert (=> b!58237 (= tp!16318 e!30983)))

(assert (= (and b!58237 (is-Cons!443 (t!47120 l1!293))) b!58250))

(declare-fun b!58251 () Bool)

(declare-fun e!30984 () Bool)

(declare-fun tp!16324 () Bool)

(assert (=> b!58251 (= e!30984 (and tp_is_empty!325 tp!16324))))

(assert (=> b!58236 (= tp!16319 e!30984)))

(assert (= (and b!58236 (is-Cons!443 (t!47120 l2!287))) b!58251))

(push 1)

(assert (not b!58250))

(assert (not b!58243))

(assert tp_is_empty!325)

(assert (not b!58249))

(assert (not b!58251))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

