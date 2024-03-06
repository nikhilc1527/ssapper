; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11130 () Bool)

(assert start!11130)

(declare-fun b_free!7405 () Bool)

(declare-fun b_next!39589 () Bool)

(assert (=> start!11130 (= b_free!7405 (not b_next!39589))))

(declare-fun tp!17020 () Bool)

(declare-fun b_and!59035 () Bool)

(assert (=> start!11130 (= tp!17020 b_and!59035)))

(declare-fun e!46178 () Bool)

(declare-fun b!85204 () Bool)

(declare-fun p!781 () Int)

(declare-datatypes () ((List!697 (Cons!654 (h!1027 Int) (t!48076 List!697)) (Nil!656))))

(declare-fun l2!423 () List!697)

(declare-fun l1!430 () List!697)

(declare-fun forall!45 (List!697 Int) Bool)

(declare-fun ++!93 (List!697 List!697) List!697)

(assert (=> b!85204 (= e!46178 (not (forall!45 (++!93 l1!430 l2!423) p!781)))))

(declare-fun b!85201 () Bool)

(declare-fun res!44175 () Bool)

(assert (=> b!85201 (=> (not res!44175) (not e!46178))))

(assert (=> b!85201 (= res!44175 (forall!45 l2!423 p!781))))

(declare-fun b!85202 () Bool)

(declare-fun res!44174 () Bool)

(assert (=> b!85202 (=> (not res!44174) (not e!46178))))

(assert (=> b!85202 (= res!44174 (is-Cons!654 l1!430))))

(declare-fun res!44172 () Bool)

(assert (=> start!11130 (=> (not res!44172) (not e!46178))))

(assert (=> start!11130 (= res!44172 (forall!45 l1!430 p!781))))

(assert (=> start!11130 e!46178))

(assert (=> start!11130 true))

(assert (=> start!11130 tp!17020))

(declare-fun b!85203 () Bool)

(declare-fun res!44173 () Bool)

(assert (=> b!85203 (=> (not res!44173) (not e!46178))))

(declare-fun inductVal!901 () Bool)

(declare-fun append_preserves_forall!0 (List!697 List!697 Int) Bool)

(assert (=> b!85203 (= res!44173 (= inductVal!901 (append_preserves_forall!0 (t!48076 l1!430) l2!423 p!781)))))

(assert (= (and start!11130 res!44172) b!85201))

(assert (= (and b!85201 res!44175) b!85202))

(assert (= (and b!85202 res!44174) b!85203))

(assert (= (and b!85203 res!44173) b!85204))

(declare-fun m!81078 () Bool)

(assert (=> b!85204 m!81078))

(assert (=> b!85204 m!81078))

(declare-fun m!81080 () Bool)

(assert (=> b!85204 m!81080))

(declare-fun m!81082 () Bool)

(assert (=> b!85201 m!81082))

(declare-fun m!81084 () Bool)

(assert (=> start!11130 m!81084))

(declare-fun m!81086 () Bool)

(assert (=> b!85203 m!81086))

(push 1)

(assert (not b!85201))

(assert (not start!11130))

(assert b_and!59035)

(assert (not b!85203))

(assert (not b!85204))

(assert (not b_next!39589))

(check-sat)

(pop 1)

(push 1)

(assert b_and!59035)

(assert (not b_next!39589))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!57291 () Bool)

(declare-fun res!44180 () Bool)

(declare-fun e!46183 () Bool)

(assert (=> d!57291 (=> res!44180 e!46183)))

(assert (=> d!57291 (= res!44180 (is-Nil!656 l1!430))))

(assert (=> d!57291 (= (forall!45 l1!430 p!781) e!46183)))

(declare-fun b!85209 () Bool)

(declare-fun e!46184 () Bool)

(assert (=> b!85209 (= e!46183 e!46184)))

(declare-fun res!44181 () Bool)

(assert (=> b!85209 (=> (not res!44181) (not e!46184))))

(declare-fun dynLambda!1008 (Int Int) Bool)

(assert (=> b!85209 (= res!44181 (dynLambda!1008 p!781 (h!1027 l1!430)))))

(declare-fun b!85210 () Bool)

(assert (=> b!85210 (= e!46184 (forall!45 (t!48076 l1!430) p!781))))

(assert (= (and d!57291 (not res!44180)) b!85209))

(assert (= (and b!85209 res!44181) b!85210))

(declare-fun b_lambda!16743 () Bool)

(assert (=> (not b_lambda!16743) (not b!85209)))

(declare-fun t!48078 () Bool)

(declare-fun tb!46309 () Bool)

(assert (=> (and start!11130 (= p!781 p!781) t!48078) tb!46309))

(declare-fun result!46739 () Bool)

(assert (=> tb!46309 (= result!46739 true)))

(assert (=> b!85209 t!48078))

(declare-fun b_and!59037 () Bool)

(assert (= b_and!59035 (and (=> t!48078 result!46739) b_and!59037)))

(declare-fun m!81088 () Bool)

(assert (=> b!85209 m!81088))

(declare-fun m!81090 () Bool)

(assert (=> b!85210 m!81090))

(assert (=> start!11130 d!57291))

(declare-fun d!57293 () Bool)

(declare-fun res!44182 () Bool)

(declare-fun e!46185 () Bool)

(assert (=> d!57293 (=> res!44182 e!46185)))

(assert (=> d!57293 (= res!44182 (is-Nil!656 (++!93 l1!430 l2!423)))))

(assert (=> d!57293 (= (forall!45 (++!93 l1!430 l2!423) p!781) e!46185)))

(declare-fun b!85211 () Bool)

(declare-fun e!46186 () Bool)

(assert (=> b!85211 (= e!46185 e!46186)))

(declare-fun res!44183 () Bool)

(assert (=> b!85211 (=> (not res!44183) (not e!46186))))

(assert (=> b!85211 (= res!44183 (dynLambda!1008 p!781 (h!1027 (++!93 l1!430 l2!423))))))

(declare-fun b!85212 () Bool)

(assert (=> b!85212 (= e!46186 (forall!45 (t!48076 (++!93 l1!430 l2!423)) p!781))))

(assert (= (and d!57293 (not res!44182)) b!85211))

(assert (= (and b!85211 res!44183) b!85212))

(declare-fun b_lambda!16745 () Bool)

(assert (=> (not b_lambda!16745) (not b!85211)))

(declare-fun t!48080 () Bool)

(declare-fun tb!46311 () Bool)

(assert (=> (and start!11130 (= p!781 p!781) t!48080) tb!46311))

(declare-fun result!46741 () Bool)

(assert (=> tb!46311 (= result!46741 true)))

(assert (=> b!85211 t!48080))

(declare-fun b_and!59039 () Bool)

(assert (= b_and!59037 (and (=> t!48080 result!46741) b_and!59039)))

(declare-fun m!81092 () Bool)

(assert (=> b!85211 m!81092))

(declare-fun m!81094 () Bool)

(assert (=> b!85212 m!81094))

(assert (=> b!85204 d!57293))

(declare-fun e!46191 () Bool)

(declare-fun b!85224 () Bool)

(declare-fun lt!19875 () List!697)

(assert (=> b!85224 (= e!46191 (or (not (= l2!423 Nil!656)) (= lt!19875 l1!430)))))

(declare-fun b!85223 () Bool)

(declare-fun res!44189 () Bool)

(assert (=> b!85223 (=> (not res!44189) (not e!46191))))

(declare-fun size!678 (List!697) Int)

(assert (=> b!85223 (= res!44189 (= (size!678 lt!19875) (+ (size!678 l1!430) (size!678 l2!423))))))

(declare-fun b!85222 () Bool)

(declare-fun e!46192 () List!697)

(assert (=> b!85222 (= e!46192 (Cons!654 (h!1027 l1!430) (++!93 (t!48076 l1!430) l2!423)))))

(declare-fun d!57295 () Bool)

(assert (=> d!57295 e!46191))

(declare-fun res!44190 () Bool)

(assert (=> d!57295 (=> (not res!44190) (not e!46191))))

(declare-fun content!149 (List!697) (Set Int))

(assert (=> d!57295 (= res!44190 (= (content!149 lt!19875) (union (content!149 l1!430) (content!149 l2!423))))))

(assert (=> d!57295 (= lt!19875 e!46192)))

(declare-fun c!21191 () Bool)

(assert (=> d!57295 (= c!21191 (is-Nil!656 l1!430))))

(assert (=> d!57295 (= (++!93 l1!430 l2!423) lt!19875)))

(declare-fun b!85221 () Bool)

(assert (=> b!85221 (= e!46192 l2!423)))

(assert (= (and d!57295 c!21191) b!85221))

(assert (= (and d!57295 (not c!21191)) b!85222))

(assert (= (and d!57295 res!44190) b!85223))

(assert (= (and b!85223 res!44189) b!85224))

(declare-fun m!81096 () Bool)

(assert (=> b!85223 m!81096))

(declare-fun m!81098 () Bool)

(assert (=> b!85223 m!81098))

(declare-fun m!81100 () Bool)

(assert (=> b!85223 m!81100))

(declare-fun m!81102 () Bool)

(assert (=> b!85222 m!81102))

(declare-fun m!81104 () Bool)

(assert (=> d!57295 m!81104))

(declare-fun m!81106 () Bool)

(assert (=> d!57295 m!81106))

(declare-fun m!81108 () Bool)

(assert (=> d!57295 m!81108))

(assert (=> b!85204 d!57295))

(declare-fun d!57297 () Bool)

(declare-fun res!44191 () Bool)

(declare-fun e!46193 () Bool)

(assert (=> d!57297 (=> res!44191 e!46193)))

(assert (=> d!57297 (= res!44191 (is-Nil!656 l2!423))))

(assert (=> d!57297 (= (forall!45 l2!423 p!781) e!46193)))

(declare-fun b!85225 () Bool)

(declare-fun e!46194 () Bool)

(assert (=> b!85225 (= e!46193 e!46194)))

(declare-fun res!44192 () Bool)

(assert (=> b!85225 (=> (not res!44192) (not e!46194))))

(assert (=> b!85225 (= res!44192 (dynLambda!1008 p!781 (h!1027 l2!423)))))

(declare-fun b!85226 () Bool)

(assert (=> b!85226 (= e!46194 (forall!45 (t!48076 l2!423) p!781))))

(assert (= (and d!57297 (not res!44191)) b!85225))

(assert (= (and b!85225 res!44192) b!85226))

(declare-fun b_lambda!16747 () Bool)

(assert (=> (not b_lambda!16747) (not b!85225)))

(declare-fun t!48082 () Bool)

(declare-fun tb!46313 () Bool)

(assert (=> (and start!11130 (= p!781 p!781) t!48082) tb!46313))

(declare-fun result!46743 () Bool)

(assert (=> tb!46313 (= result!46743 true)))

(assert (=> b!85225 t!48082))

(declare-fun b_and!59041 () Bool)

(assert (= b_and!59039 (and (=> t!48082 result!46743) b_and!59041)))

(declare-fun m!81110 () Bool)

(assert (=> b!85225 m!81110))

(declare-fun m!81112 () Bool)

(assert (=> b!85226 m!81112))

(assert (=> b!85201 d!57297))

(declare-fun d!57299 () Bool)

(declare-fun e!46199 () Bool)

(assert (=> d!57299 e!46199))

(declare-fun c!21194 () Bool)

(assert (=> d!57299 (= c!21194 (is-Cons!654 (t!48076 l1!430)))))

(declare-fun e!46200 () Bool)

(assert (=> d!57299 e!46200))

(declare-fun res!44195 () Bool)

(assert (=> d!57299 (=> (not res!44195) (not e!46200))))

(assert (=> d!57299 (= res!44195 (forall!45 (t!48076 l1!430) p!781))))

(assert (=> d!57299 (= (append_preserves_forall!0 (t!48076 l1!430) l2!423 p!781) true)))

(declare-fun b!85233 () Bool)

(assert (=> b!85233 (= e!46200 (forall!45 l2!423 p!781))))

(declare-fun b!85234 () Bool)

(assert (=> b!85234 (= e!46199 (forall!45 (++!93 (t!48076 l1!430) l2!423) p!781))))

(declare-fun lt!19878 () Bool)

(assert (=> b!85234 (= lt!19878 (append_preserves_forall!0 (t!48076 (t!48076 l1!430)) l2!423 p!781))))

(declare-fun b!85235 () Bool)

(assert (=> b!85235 (= e!46199 (forall!45 (++!93 (t!48076 l1!430) l2!423) p!781))))

(assert (= (and d!57299 res!44195) b!85233))

(assert (= (and d!57299 c!21194) b!85234))

(assert (= (and d!57299 (not c!21194)) b!85235))

(assert (=> d!57299 m!81090))

(assert (=> b!85233 m!81082))

(assert (=> b!85234 m!81102))

(assert (=> b!85234 m!81102))

(declare-fun m!81114 () Bool)

(assert (=> b!85234 m!81114))

(declare-fun m!81116 () Bool)

(assert (=> b!85234 m!81116))

(assert (=> b!85235 m!81102))

(assert (=> b!85235 m!81102))

(assert (=> b!85235 m!81114))

(assert (=> b!85203 d!57299))

(declare-fun b_lambda!16749 () Bool)

(assert (= b_lambda!16743 (or (and start!11130 b_free!7405) b_lambda!16749)))

(declare-fun b_lambda!16751 () Bool)

(assert (= b_lambda!16745 (or (and start!11130 b_free!7405) b_lambda!16751)))

(declare-fun b_lambda!16753 () Bool)

(assert (= b_lambda!16747 (or (and start!11130 b_free!7405) b_lambda!16753)))

(push 1)

(assert (not b!85234))

(assert (not b_lambda!16753))

(assert b_and!59041)

(assert (not b!85226))

(assert (not d!57299))

(assert (not b!85210))

(assert (not b_lambda!16751))

(assert (not b!85223))

(assert (not b!85222))

(assert (not d!57295))

(assert (not b!85233))

(assert (not b!85235))

(assert (not b_lambda!16749))

(assert (not b_next!39589))

(assert (not b!85212))

(check-sat)

(pop 1)

(push 1)

(assert b_and!59041)

(assert (not b_next!39589))

(check-sat)

(pop 1)

