; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7720 () Bool)

(assert start!7720)

(declare-fun res!25389 () Bool)

(declare-fun e!29032 () Bool)

(assert (=> start!7720 (=> (not res!25389) (not e!29032))))

(declare-fun x!22074 () (_ BitVec 32))

(declare-datatypes () ((IntSet!56 (Node!140 (left!1226 IntSet!56) (elem!292 (_ BitVec 32)) (right!1229 IntSet!56)) (Empty!179))))

(declare-fun s!1764 () IntSet!56)

(declare-fun y!1649 () (_ BitVec 32))

(assert (=> start!7720 (= res!25389 (and (not (= x!22074 y!1649)) (is-Node!140 s!1764) (bvslt x!22074 (elem!292 s!1764))))))

(assert (=> start!7720 e!29032))

(assert (=> start!7720 true))

(declare-fun b!55139 () Bool)

(declare-fun res!25390 () Bool)

(assert (=> b!55139 (=> (not res!25390) (not e!29032))))

(declare-datatypes () ((Unit!920 (Unit!921))))

(declare-fun x$3!144 () Unit!920)

(declare-fun thiss!7856 () IntSet!56)

(declare-fun P3!0 (IntSet!56 IntSet!56 (_ BitVec 32) (_ BitVec 32)) Unit!920)

(assert (=> b!55139 (= res!25390 (= x$3!144 (P3!0 thiss!7856 (left!1226 s!1764) x!22074 y!1649)))))

(declare-fun b!55140 () Bool)

(declare-fun contains!9 (IntSet!56 (_ BitVec 32)) Bool)

(declare-fun incl!0 (IntSet!56 (_ BitVec 32)) IntSet!56)

(assert (=> b!55140 (= e!29032 (not (= (contains!9 (incl!0 s!1764 x!22074) y!1649) (contains!9 s!1764 y!1649))))))

(assert (= (and start!7720 res!25389) b!55139))

(assert (= (and b!55139 res!25390) b!55140))

(declare-fun m!59964 () Bool)

(assert (=> b!55139 m!59964))

(declare-fun m!59966 () Bool)

(assert (=> b!55140 m!59966))

(assert (=> b!55140 m!59966))

(declare-fun m!59968 () Bool)

(assert (=> b!55140 m!59968))

(declare-fun m!59970 () Bool)

(assert (=> b!55140 m!59970))

(push 1)

(assert (not b!55139))

(assert (not b!55140))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!45212 () Bool)

(assert (=> d!45212 (= (contains!9 (incl!0 (left!1226 s!1764) x!22074) y!1649) (contains!9 (left!1226 s!1764) y!1649))))

(declare-fun lt!9763 () Bool)

(declare-fun lt!9765 () Unit!920)

(declare-fun lt!9764 () Unit!920)

(declare-fun Unit!922 () Unit!920)

(assert (=> d!45212 (= lt!9764 (ite (or lt!9763 (and (is-Node!140 (left!1226 s!1764)) (bvsgt x!22074 (elem!292 (left!1226 s!1764))))) lt!9765 Unit!922))))

(declare-fun e!29035 () Unit!920)

(assert (=> d!45212 (= lt!9765 e!29035)))

(declare-fun c!11977 () Bool)

(assert (=> d!45212 (= c!11977 (or lt!9763 (and (is-Node!140 (left!1226 s!1764)) (bvsgt x!22074 (elem!292 (left!1226 s!1764))))))))

(assert (=> d!45212 (= lt!9763 (and (is-Node!140 (left!1226 s!1764)) (bvslt x!22074 (elem!292 (left!1226 s!1764)))))))

(assert (=> d!45212 (not (= x!22074 y!1649))))

(assert (=> d!45212 (= (P3!0 thiss!7856 (left!1226 s!1764) x!22074 y!1649) lt!9764)))

(declare-fun b!55146 () Bool)

(declare-fun res!25396 () Unit!920)

(assert (=> b!55146 (= e!29035 res!25396)))

(assert (=> b!55146 true))

(assert (=> b!55146 true))

(declare-fun b!55145 () Bool)

(assert (=> b!55145 (= e!29035 (P3!0 thiss!7856 (ite lt!9763 (left!1226 (left!1226 s!1764)) (right!1229 (left!1226 s!1764))) x!22074 y!1649))))

(assert (= (and d!45212 c!11977) b!55145))

(assert (= (and d!45212 (not c!11977)) b!55146))

(declare-fun m!59972 () Bool)

(assert (=> d!45212 m!59972))

(assert (=> d!45212 m!59972))

(declare-fun m!59974 () Bool)

(assert (=> d!45212 m!59974))

(declare-fun m!59976 () Bool)

(assert (=> d!45212 m!59976))

(declare-fun m!59978 () Bool)

(assert (=> b!55145 m!59978))

(assert (=> b!55139 d!45212))

(declare-fun d!45214 () Bool)

(declare-fun res!25405 () Bool)

(declare-fun e!29040 () Bool)

(assert (=> d!45214 (=> (not res!25405) (not e!29040))))

(assert (=> d!45214 (= res!25405 (not (is-Empty!179 (incl!0 s!1764 x!22074))))))

(assert (=> d!45214 (= (contains!9 (incl!0 s!1764 x!22074) y!1649) e!29040)))

(declare-fun lt!9770 () Bool)

(declare-fun lt!9771 () Bool)

(declare-fun b!55153 () Bool)

(assert (=> b!55153 (= e!29040 (ite lt!9771 lt!9770 (or (not (bvsgt y!1649 (elem!292 (incl!0 s!1764 x!22074)))) lt!9770)))))

(declare-fun e!29041 () Bool)

(assert (=> b!55153 (= lt!9770 e!29041)))

(declare-fun c!11980 () Bool)

(assert (=> b!55153 (= c!11980 (or lt!9771 (bvsgt y!1649 (elem!292 (incl!0 s!1764 x!22074)))))))

(assert (=> b!55153 (= lt!9771 (bvslt y!1649 (elem!292 (incl!0 s!1764 x!22074))))))

(declare-fun b!55155 () Bool)

(declare-fun res!25404 () Bool)

(assert (=> b!55155 (= e!29041 res!25404)))

(assert (=> b!55155 true))

(assert (=> b!55155 true))

(declare-fun b!55154 () Bool)

(assert (=> b!55154 (= e!29041 (contains!9 (ite lt!9771 (left!1226 (incl!0 s!1764 x!22074)) (right!1229 (incl!0 s!1764 x!22074))) y!1649))))

(assert (= (and d!45214 res!25405) b!55153))

(assert (= (and b!55153 c!11980) b!55154))

(assert (= (and b!55153 (not c!11980)) b!55155))

(declare-fun m!59980 () Bool)

(assert (=> b!55154 m!59980))

(assert (=> b!55140 d!45214))

(declare-fun b!55165 () Bool)

(declare-fun e!29047 () IntSet!56)

(declare-fun lt!9777 () Bool)

(declare-fun lt!9776 () IntSet!56)

(assert (=> b!55165 (= e!29047 (ite lt!9777 (Node!140 lt!9776 (elem!292 s!1764) (right!1229 s!1764)) (ite (bvsgt x!22074 (elem!292 s!1764)) (Node!140 (left!1226 s!1764) (elem!292 s!1764) lt!9776) s!1764)))))

(declare-fun e!29046 () IntSet!56)

(assert (=> b!55165 (= lt!9776 e!29046)))

(declare-fun c!11985 () Bool)

(assert (=> b!55165 (= c!11985 (or lt!9777 (bvsgt x!22074 (elem!292 s!1764))))))

(assert (=> b!55165 (= lt!9777 (bvslt x!22074 (elem!292 s!1764)))))

(declare-fun d!45216 () Bool)

(declare-fun c!11986 () Bool)

(assert (=> d!45216 (= c!11986 (is-Empty!179 s!1764))))

(assert (=> d!45216 (= (incl!0 s!1764 x!22074) e!29047)))

(declare-fun b!55164 () Bool)

(assert (=> b!55164 (= e!29047 (Node!140 Empty!179 x!22074 Empty!179))))

(declare-fun b!55166 () Bool)

(assert (=> b!55166 (= e!29046 (incl!0 (ite lt!9777 (left!1226 s!1764) (right!1229 s!1764)) x!22074))))

(declare-fun b!55167 () Bool)

(declare-fun res!25411 () IntSet!56)

(assert (=> b!55167 (= e!29046 res!25411)))

(assert (=> b!55167 true))

(assert (=> b!55167 true))

(assert (= (and b!55165 c!11985) b!55166))

(assert (= (and b!55165 (not c!11985)) b!55167))

(assert (= (and d!45216 c!11986) b!55164))

(assert (= (and d!45216 (not c!11986)) b!55165))

(declare-fun m!59982 () Bool)

(assert (=> b!55166 m!59982))

(assert (=> b!55140 d!45216))

(declare-fun d!45218 () Bool)

(declare-fun res!25413 () Bool)

(declare-fun e!29048 () Bool)

(assert (=> d!45218 (=> (not res!25413) (not e!29048))))

(assert (=> d!45218 (= res!25413 (not (is-Empty!179 s!1764)))))

(assert (=> d!45218 (= (contains!9 s!1764 y!1649) e!29048)))

(declare-fun lt!9779 () Bool)

(declare-fun lt!9778 () Bool)

(declare-fun b!55168 () Bool)

(assert (=> b!55168 (= e!29048 (ite lt!9779 lt!9778 (or (not (bvsgt y!1649 (elem!292 s!1764))) lt!9778)))))

(declare-fun e!29049 () Bool)

(assert (=> b!55168 (= lt!9778 e!29049)))

(declare-fun c!11987 () Bool)

(assert (=> b!55168 (= c!11987 (or lt!9779 (bvsgt y!1649 (elem!292 s!1764))))))

(assert (=> b!55168 (= lt!9779 (bvslt y!1649 (elem!292 s!1764)))))

(declare-fun b!55170 () Bool)

(declare-fun res!25412 () Bool)

(assert (=> b!55170 (= e!29049 res!25412)))

(assert (=> b!55170 true))

(assert (=> b!55170 true))

(declare-fun b!55169 () Bool)

(assert (=> b!55169 (= e!29049 (contains!9 (ite lt!9779 (left!1226 s!1764) (right!1229 s!1764)) y!1649))))

(assert (= (and d!45218 res!25413) b!55168))

(assert (= (and b!55168 c!11987) b!55169))

(assert (= (and b!55168 (not c!11987)) b!55170))

(declare-fun m!59984 () Bool)

(assert (=> b!55169 m!59984))

(assert (=> b!55140 d!45218))

(push 1)

(assert (not b!55169))

(assert (not d!45212))

(assert (not b!55166))

(assert (not b!55145))

(assert (not b!55154))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

