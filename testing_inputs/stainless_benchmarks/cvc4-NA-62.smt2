; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!518 () Bool)

(assert start!518)

(declare-fun res!1210 () Bool)

(declare-fun e!2230 () Bool)

(assert (=> start!518 (=> (not res!1210) (not e!2230))))

(declare-datatypes () ((List!75 (Cons!75 (head!247 (_ BitVec 32)) (tail!259 List!75)) (Nil!76))))

(declare-fun l!344 () List!75)

(assert (=> start!518 (= res!1210 (not (is-Cons!75 l!344)))))

(assert (=> start!518 e!2230))

(assert (=> start!518 true))

(declare-fun b!4006 () Bool)

(declare-fun concat!2 (List!75 List!75) List!75)

(assert (=> b!4006 (= e!2230 (not (= (concat!2 l!344 Nil!76) l!344)))))

(assert (= (and start!518 res!1210) b!4006))

(declare-fun m!6319 () Bool)

(assert (=> b!4006 m!6319))

(push 1)

(assert (not b!4006))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2916 () Bool)

(declare-fun e!2236 () Bool)

(assert (=> d!2916 e!2236))

(declare-fun res!1214 () Bool)

(assert (=> d!2916 (=> (not res!1214) (not e!2236))))

(declare-fun lt!1143 () List!75)

(declare-fun size!23 (List!75) Int)

(assert (=> d!2916 (= res!1214 (= (size!23 lt!1143) (+ (size!23 l!344) (size!23 Nil!76))))))

(declare-fun e!2235 () List!75)

(assert (=> d!2916 (= lt!1143 e!2235)))

(declare-fun c!1466 () Bool)

(assert (=> d!2916 (= c!1466 (is-Nil!76 l!344))))

(assert (=> d!2916 (= (concat!2 l!344 Nil!76) lt!1143)))

(declare-fun b!4013 () Bool)

(assert (=> b!4013 (= e!2235 Nil!76)))

(declare-fun b!4014 () Bool)

(assert (=> b!4014 (= e!2235 (Cons!75 (head!247 l!344) (concat!2 (tail!259 l!344) Nil!76)))))

(declare-fun b!4015 () Bool)

(declare-fun content!22 (List!75) (Set (_ BitVec 32)))

(assert (=> b!4015 (= e!2236 (= (content!22 lt!1143) (union (content!22 l!344) (content!22 Nil!76))))))

(assert (= (and d!2916 c!1466) b!4013))

(assert (= (and d!2916 (not c!1466)) b!4014))

(assert (= (and d!2916 res!1214) b!4015))

(declare-fun m!6321 () Bool)

(assert (=> d!2916 m!6321))

(declare-fun m!6323 () Bool)

(assert (=> d!2916 m!6323))

(declare-fun m!6325 () Bool)

(assert (=> d!2916 m!6325))

(declare-fun m!6327 () Bool)

(assert (=> b!4014 m!6327))

(declare-fun m!6329 () Bool)

(assert (=> b!4015 m!6329))

(declare-fun m!6331 () Bool)

(assert (=> b!4015 m!6331))

(declare-fun m!6333 () Bool)

(assert (=> b!4015 m!6333))

(assert (=> b!4006 d!2916))

(push 1)

(assert (not b!4015))

(assert (not b!4014))

(assert (not d!2916))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

