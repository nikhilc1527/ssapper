; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11138 () Bool)

(assert start!11138)

(declare-fun b_free!7407 () Bool)

(declare-fun b_next!39591 () Bool)

(assert (=> start!11138 (= b_free!7407 (not b_next!39591))))

(declare-fun tp!17023 () Bool)

(declare-fun b_and!59043 () Bool)

(assert (=> start!11138 (= tp!17023 b_and!59043)))

(declare-fun res!44204 () Bool)

(declare-fun e!46203 () Bool)

(assert (=> start!11138 (=> (not res!44204) (not e!46203))))

(declare-datatypes () ((List!698 (Cons!655 (h!1028 Int) (t!48083 List!698)) (Nil!657))))

(declare-fun l1!430 () List!698)

(declare-fun p!781 () Int)

(declare-fun forall!46 (List!698 Int) Bool)

(assert (=> start!11138 (= res!44204 (forall!46 l1!430 p!781))))

(assert (=> start!11138 e!46203))

(assert (=> start!11138 true))

(assert (=> start!11138 tp!17023))

(declare-fun b!85242 () Bool)

(declare-fun res!44202 () Bool)

(assert (=> b!85242 (=> (not res!44202) (not e!46203))))

(declare-fun l2!423 () List!698)

(assert (=> b!85242 (= res!44202 (forall!46 l2!423 p!781))))

(declare-fun b!85243 () Bool)

(declare-fun res!44203 () Bool)

(assert (=> b!85243 (=> (not res!44203) (not e!46203))))

(assert (=> b!85243 (= res!44203 (not (is-Cons!655 l1!430)))))

(declare-fun b!85244 () Bool)

(declare-fun ++!94 (List!698 List!698) List!698)

(assert (=> b!85244 (= e!46203 (not (forall!46 (++!94 l1!430 l2!423) p!781)))))

(assert (= (and start!11138 res!44204) b!85242))

(assert (= (and b!85242 res!44202) b!85243))

(assert (= (and b!85243 res!44203) b!85244))

(declare-fun m!81118 () Bool)

(assert (=> start!11138 m!81118))

(declare-fun m!81120 () Bool)

(assert (=> b!85242 m!81120))

(declare-fun m!81122 () Bool)

(assert (=> b!85244 m!81122))

(assert (=> b!85244 m!81122))

(declare-fun m!81124 () Bool)

(assert (=> b!85244 m!81124))

(push 1)

(assert (not b!85244))

(assert (not b_next!39591))

(assert (not start!11138))

(assert b_and!59043)

(assert (not b!85242))

(check-sat)

(pop 1)

(push 1)

(assert b_and!59043)

(assert (not b_next!39591))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!57301 () Bool)

(declare-fun res!44209 () Bool)

(declare-fun e!46208 () Bool)

(assert (=> d!57301 (=> res!44209 e!46208)))

(assert (=> d!57301 (= res!44209 (is-Nil!657 l1!430))))

(assert (=> d!57301 (= (forall!46 l1!430 p!781) e!46208)))

(declare-fun b!85249 () Bool)

(declare-fun e!46209 () Bool)

(assert (=> b!85249 (= e!46208 e!46209)))

(declare-fun res!44210 () Bool)

(assert (=> b!85249 (=> (not res!44210) (not e!46209))))

(declare-fun dynLambda!1009 (Int Int) Bool)

(assert (=> b!85249 (= res!44210 (dynLambda!1009 p!781 (h!1028 l1!430)))))

(declare-fun b!85250 () Bool)

(assert (=> b!85250 (= e!46209 (forall!46 (t!48083 l1!430) p!781))))

(assert (= (and d!57301 (not res!44209)) b!85249))

(assert (= (and b!85249 res!44210) b!85250))

(declare-fun b_lambda!16755 () Bool)

(assert (=> (not b_lambda!16755) (not b!85249)))

(declare-fun t!48085 () Bool)

(declare-fun tb!46315 () Bool)

(assert (=> (and start!11138 (= p!781 p!781) t!48085) tb!46315))

(declare-fun result!46745 () Bool)

(assert (=> tb!46315 (= result!46745 true)))

(assert (=> b!85249 t!48085))

(declare-fun b_and!59045 () Bool)

(assert (= b_and!59043 (and (=> t!48085 result!46745) b_and!59045)))

(declare-fun m!81126 () Bool)

(assert (=> b!85249 m!81126))

(declare-fun m!81128 () Bool)

(assert (=> b!85250 m!81128))

(assert (=> start!11138 d!57301))

(declare-fun d!57303 () Bool)

(declare-fun res!44211 () Bool)

(declare-fun e!46210 () Bool)

(assert (=> d!57303 (=> res!44211 e!46210)))

(assert (=> d!57303 (= res!44211 (is-Nil!657 l2!423))))

(assert (=> d!57303 (= (forall!46 l2!423 p!781) e!46210)))

(declare-fun b!85251 () Bool)

(declare-fun e!46211 () Bool)

(assert (=> b!85251 (= e!46210 e!46211)))

(declare-fun res!44212 () Bool)

(assert (=> b!85251 (=> (not res!44212) (not e!46211))))

(assert (=> b!85251 (= res!44212 (dynLambda!1009 p!781 (h!1028 l2!423)))))

(declare-fun b!85252 () Bool)

(assert (=> b!85252 (= e!46211 (forall!46 (t!48083 l2!423) p!781))))

(assert (= (and d!57303 (not res!44211)) b!85251))

(assert (= (and b!85251 res!44212) b!85252))

(declare-fun b_lambda!16757 () Bool)

(assert (=> (not b_lambda!16757) (not b!85251)))

(declare-fun t!48087 () Bool)

(declare-fun tb!46317 () Bool)

(assert (=> (and start!11138 (= p!781 p!781) t!48087) tb!46317))

(declare-fun result!46747 () Bool)

(assert (=> tb!46317 (= result!46747 true)))

(assert (=> b!85251 t!48087))

(declare-fun b_and!59047 () Bool)

(assert (= b_and!59045 (and (=> t!48087 result!46747) b_and!59047)))

(declare-fun m!81130 () Bool)

(assert (=> b!85251 m!81130))

(declare-fun m!81132 () Bool)

(assert (=> b!85252 m!81132))

(assert (=> b!85242 d!57303))

(declare-fun d!57305 () Bool)

(declare-fun res!44213 () Bool)

(declare-fun e!46212 () Bool)

(assert (=> d!57305 (=> res!44213 e!46212)))

(assert (=> d!57305 (= res!44213 (is-Nil!657 (++!94 l1!430 l2!423)))))

(assert (=> d!57305 (= (forall!46 (++!94 l1!430 l2!423) p!781) e!46212)))

(declare-fun b!85253 () Bool)

(declare-fun e!46213 () Bool)

(assert (=> b!85253 (= e!46212 e!46213)))

(declare-fun res!44214 () Bool)

(assert (=> b!85253 (=> (not res!44214) (not e!46213))))

(assert (=> b!85253 (= res!44214 (dynLambda!1009 p!781 (h!1028 (++!94 l1!430 l2!423))))))

(declare-fun b!85254 () Bool)

(assert (=> b!85254 (= e!46213 (forall!46 (t!48083 (++!94 l1!430 l2!423)) p!781))))

(assert (= (and d!57305 (not res!44213)) b!85253))

(assert (= (and b!85253 res!44214) b!85254))

(declare-fun b_lambda!16759 () Bool)

(assert (=> (not b_lambda!16759) (not b!85253)))

(declare-fun t!48089 () Bool)

(declare-fun tb!46319 () Bool)

(assert (=> (and start!11138 (= p!781 p!781) t!48089) tb!46319))

(declare-fun result!46749 () Bool)

(assert (=> tb!46319 (= result!46749 true)))

(assert (=> b!85253 t!48089))

(declare-fun b_and!59049 () Bool)

(assert (= b_and!59047 (and (=> t!48089 result!46749) b_and!59049)))

(declare-fun m!81134 () Bool)

(assert (=> b!85253 m!81134))

(declare-fun m!81136 () Bool)

(assert (=> b!85254 m!81136))

(assert (=> b!85244 d!57305))

(declare-fun d!57307 () Bool)

(declare-fun e!46218 () Bool)

(assert (=> d!57307 e!46218))

(declare-fun res!44221 () Bool)

(assert (=> d!57307 (=> (not res!44221) (not e!46218))))

(declare-fun lt!19881 () List!698)

(declare-fun content!150 (List!698) (Set Int))

(assert (=> d!57307 (= res!44221 (= (content!150 lt!19881) (union (content!150 l1!430) (content!150 l2!423))))))

(declare-fun e!46219 () List!698)

(assert (=> d!57307 (= lt!19881 e!46219)))

(declare-fun c!21197 () Bool)

(assert (=> d!57307 (= c!21197 (is-Nil!657 l1!430))))

(assert (=> d!57307 (= (++!94 l1!430 l2!423) lt!19881)))

(declare-fun b!85266 () Bool)

(assert (=> b!85266 (= e!46218 (or (not (= l2!423 Nil!657)) (= lt!19881 l1!430)))))

(declare-fun b!85265 () Bool)

(declare-fun res!44220 () Bool)

(assert (=> b!85265 (=> (not res!44220) (not e!46218))))

(declare-fun size!679 (List!698) Int)

(assert (=> b!85265 (= res!44220 (= (size!679 lt!19881) (+ (size!679 l1!430) (size!679 l2!423))))))

(declare-fun b!85263 () Bool)

(assert (=> b!85263 (= e!46219 l2!423)))

(declare-fun b!85264 () Bool)

(assert (=> b!85264 (= e!46219 (Cons!655 (h!1028 l1!430) (++!94 (t!48083 l1!430) l2!423)))))

(assert (= (and d!57307 c!21197) b!85263))

(assert (= (and d!57307 (not c!21197)) b!85264))

(assert (= (and d!57307 res!44221) b!85265))

(assert (= (and b!85265 res!44220) b!85266))

(declare-fun m!81138 () Bool)

(assert (=> d!57307 m!81138))

(declare-fun m!81140 () Bool)

(assert (=> d!57307 m!81140))

(declare-fun m!81142 () Bool)

(assert (=> d!57307 m!81142))

(declare-fun m!81144 () Bool)

(assert (=> b!85265 m!81144))

(declare-fun m!81146 () Bool)

(assert (=> b!85265 m!81146))

(declare-fun m!81148 () Bool)

(assert (=> b!85265 m!81148))

(declare-fun m!81150 () Bool)

(assert (=> b!85264 m!81150))

(assert (=> b!85244 d!57307))

(declare-fun b_lambda!16761 () Bool)

(assert (= b_lambda!16757 (or (and start!11138 b_free!7407) b_lambda!16761)))

(declare-fun b_lambda!16763 () Bool)

(assert (= b_lambda!16755 (or (and start!11138 b_free!7407) b_lambda!16763)))

(declare-fun b_lambda!16765 () Bool)

(assert (= b_lambda!16759 (or (and start!11138 b_free!7407) b_lambda!16765)))

(push 1)

(assert (not b_lambda!16765))

(assert (not b!85254))

(assert (not b_next!39591))

(assert (not b_lambda!16763))

(assert b_and!59049)

(assert (not b_lambda!16761))

(assert (not b!85264))

(assert (not b!85265))

(assert (not b!85250))

(assert (not d!57307))

(assert (not b!85252))

(check-sat)

(pop 1)

(push 1)

(assert b_and!59049)

(assert (not b_next!39591))

(check-sat)

(pop 1)

