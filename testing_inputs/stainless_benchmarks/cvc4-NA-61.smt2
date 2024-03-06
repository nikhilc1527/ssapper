; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!512 () Bool)

(assert start!512)

(declare-fun res!1202 () Bool)

(declare-fun e!2218 () Bool)

(assert (=> start!512 (=> (not res!1202) (not e!2218))))

(declare-datatypes () ((List!74 (Cons!74 (head!246 (_ BitVec 32)) (tail!258 List!74)) (Nil!75))))

(declare-fun l!344 () List!74)

(assert (=> start!512 (= res!1202 (is-Cons!74 l!344))))

(assert (=> start!512 e!2218))

(assert (=> start!512 true))

(declare-fun b!3987 () Bool)

(declare-fun res!1203 () Bool)

(assert (=> b!3987 (=> (not res!1203) (not e!2218))))

(declare-fun inductVal!2 () Bool)

(declare-fun concatNil!0 (List!74) Bool)

(assert (=> b!3987 (= res!1203 (= inductVal!2 (concatNil!0 (tail!258 l!344))))))

(declare-fun b!3988 () Bool)

(declare-fun concat!2 (List!74 List!74) List!74)

(assert (=> b!3988 (= e!2218 (not (= (concat!2 l!344 Nil!75) l!344)))))

(assert (= (and start!512 res!1202) b!3987))

(assert (= (and b!3987 res!1203) b!3988))

(declare-fun m!6299 () Bool)

(assert (=> b!3987 m!6299))

(declare-fun m!6301 () Bool)

(assert (=> b!3988 m!6301))

(push 1)

(assert (not b!3987))

(assert (not b!3988))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!3993 () Bool)

(declare-fun e!2221 () Bool)

(assert (=> b!3993 (= e!2221 (= (concat!2 (tail!258 l!344) Nil!75) (tail!258 l!344)))))

(declare-fun lt!1137 () Bool)

(assert (=> b!3993 (= lt!1137 (concatNil!0 (tail!258 (tail!258 l!344))))))

(declare-fun d!2912 () Bool)

(assert (=> d!2912 e!2221))

(declare-fun c!1460 () Bool)

(assert (=> d!2912 (= c!1460 (is-Cons!74 (tail!258 l!344)))))

(assert (=> d!2912 (= (concatNil!0 (tail!258 l!344)) true)))

(declare-fun b!3994 () Bool)

(assert (=> b!3994 (= e!2221 (= (concat!2 (tail!258 l!344) Nil!75) (tail!258 l!344)))))

(assert (= (and d!2912 c!1460) b!3993))

(assert (= (and d!2912 (not c!1460)) b!3994))

(declare-fun m!6303 () Bool)

(assert (=> b!3993 m!6303))

(declare-fun m!6305 () Bool)

(assert (=> b!3993 m!6305))

(assert (=> b!3994 m!6303))

(assert (=> b!3987 d!2912))

(declare-fun d!2914 () Bool)

(declare-fun e!2227 () Bool)

(assert (=> d!2914 e!2227))

(declare-fun res!1207 () Bool)

(assert (=> d!2914 (=> (not res!1207) (not e!2227))))

(declare-fun lt!1140 () List!74)

(declare-fun size!23 (List!74) Int)

(assert (=> d!2914 (= res!1207 (= (size!23 lt!1140) (+ (size!23 l!344) (size!23 Nil!75))))))

(declare-fun e!2226 () List!74)

(assert (=> d!2914 (= lt!1140 e!2226)))

(declare-fun c!1463 () Bool)

(assert (=> d!2914 (= c!1463 (is-Nil!75 l!344))))

(assert (=> d!2914 (= (concat!2 l!344 Nil!75) lt!1140)))

(declare-fun b!4001 () Bool)

(assert (=> b!4001 (= e!2226 Nil!75)))

(declare-fun b!4002 () Bool)

(assert (=> b!4002 (= e!2226 (Cons!74 (head!246 l!344) (concat!2 (tail!258 l!344) Nil!75)))))

(declare-fun b!4003 () Bool)

(declare-fun content!22 (List!74) (Set (_ BitVec 32)))

(assert (=> b!4003 (= e!2227 (= (content!22 lt!1140) (union (content!22 l!344) (content!22 Nil!75))))))

(assert (= (and d!2914 c!1463) b!4001))

(assert (= (and d!2914 (not c!1463)) b!4002))

(assert (= (and d!2914 res!1207) b!4003))

(declare-fun m!6307 () Bool)

(assert (=> d!2914 m!6307))

(declare-fun m!6309 () Bool)

(assert (=> d!2914 m!6309))

(declare-fun m!6311 () Bool)

(assert (=> d!2914 m!6311))

(assert (=> b!4002 m!6303))

(declare-fun m!6313 () Bool)

(assert (=> b!4003 m!6313))

(declare-fun m!6315 () Bool)

(assert (=> b!4003 m!6315))

(declare-fun m!6317 () Bool)

(assert (=> b!4003 m!6317))

(assert (=> b!3988 d!2914))

(push 1)

(assert (not b!3993))

(assert (not d!2914))

(assert (not b!4002))

(assert (not b!4003))

(assert (not b!3994))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

