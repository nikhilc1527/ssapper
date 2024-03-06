; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7736 () Bool)

(assert start!7736)

(declare-fun res!25445 () Bool)

(declare-fun e!29072 () Bool)

(assert (=> start!7736 (=> (not res!25445) (not e!29072))))

(declare-datatypes () ((Unit!926 (Unit!927))))

(declare-fun x$3!148 () Unit!926)

(declare-fun x!22074 () (_ BitVec 32))

(declare-datatypes () ((IntSet!58 (Node!142 (left!1228 IntSet!58) (elem!294 (_ BitVec 32)) (right!1231 IntSet!58)) (Empty!181))))

(declare-fun s!1764 () IntSet!58)

(declare-fun y!1649 () (_ BitVec 32))

(declare-fun Unit!928 () Unit!926)

(assert (=> start!7736 (= res!25445 (and (not (= x!22074 y!1649)) (or (not (is-Node!142 s!1764)) (bvsge x!22074 (elem!294 s!1764))) (or (not (is-Node!142 s!1764)) (bvsle x!22074 (elem!294 s!1764))) (= x$3!148 Unit!928)))))

(assert (=> start!7736 e!29072))

(assert (=> start!7736 true))

(declare-fun b!55209 () Bool)

(declare-fun contains!9 (IntSet!58 (_ BitVec 32)) Bool)

(declare-fun incl!0 (IntSet!58 (_ BitVec 32)) IntSet!58)

(assert (=> b!55209 (= e!29072 (not (= (contains!9 (incl!0 s!1764 x!22074) y!1649) (contains!9 s!1764 y!1649))))))

(assert (= (and start!7736 res!25445) b!55209))

(declare-fun m!60008 () Bool)

(assert (=> b!55209 m!60008))

(assert (=> b!55209 m!60008))

(declare-fun m!60010 () Bool)

(assert (=> b!55209 m!60010))

(declare-fun m!60012 () Bool)

(assert (=> b!55209 m!60012))

(push 1)

(assert (not b!55209))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!45228 () Bool)

(declare-fun res!25454 () Bool)

(declare-fun e!29078 () Bool)

(assert (=> d!45228 (=> (not res!25454) (not e!29078))))

(assert (=> d!45228 (= res!25454 (not (is-Empty!181 (incl!0 s!1764 x!22074))))))

(assert (=> d!45228 (= (contains!9 (incl!0 s!1764 x!22074) y!1649) e!29078)))

(declare-fun lt!9807 () Bool)

(declare-fun lt!9808 () Bool)

(declare-fun b!55216 () Bool)

(assert (=> b!55216 (= e!29078 (ite lt!9807 lt!9808 (or (not (bvsgt y!1649 (elem!294 (incl!0 s!1764 x!22074)))) lt!9808)))))

(declare-fun e!29077 () Bool)

(assert (=> b!55216 (= lt!9808 e!29077)))

(declare-fun c!12003 () Bool)

(assert (=> b!55216 (= c!12003 (or lt!9807 (bvsgt y!1649 (elem!294 (incl!0 s!1764 x!22074)))))))

(assert (=> b!55216 (= lt!9807 (bvslt y!1649 (elem!294 (incl!0 s!1764 x!22074))))))

(declare-fun b!55218 () Bool)

(declare-fun res!25453 () Bool)

(assert (=> b!55218 (= e!29077 res!25453)))

(assert (=> b!55218 true))

(assert (=> b!55218 true))

(declare-fun b!55217 () Bool)

(assert (=> b!55217 (= e!29077 (contains!9 (ite lt!9807 (left!1228 (incl!0 s!1764 x!22074)) (right!1231 (incl!0 s!1764 x!22074))) y!1649))))

(assert (= (and d!45228 res!25454) b!55216))

(assert (= (and b!55216 c!12003) b!55217))

(assert (= (and b!55216 (not c!12003)) b!55218))

(declare-fun m!60014 () Bool)

(assert (=> b!55217 m!60014))

(assert (=> b!55209 d!45228))

(declare-fun lt!9813 () IntSet!58)

(declare-fun lt!9814 () Bool)

(declare-fun b!55228 () Bool)

(declare-fun e!29083 () IntSet!58)

(assert (=> b!55228 (= e!29083 (ite lt!9814 (Node!142 lt!9813 (elem!294 s!1764) (right!1231 s!1764)) (ite (bvsgt x!22074 (elem!294 s!1764)) (Node!142 (left!1228 s!1764) (elem!294 s!1764) lt!9813) s!1764)))))

(declare-fun e!29084 () IntSet!58)

(assert (=> b!55228 (= lt!9813 e!29084)))

(declare-fun c!12008 () Bool)

(assert (=> b!55228 (= c!12008 (or lt!9814 (bvsgt x!22074 (elem!294 s!1764))))))

(assert (=> b!55228 (= lt!9814 (bvslt x!22074 (elem!294 s!1764)))))

(declare-fun b!55227 () Bool)

(assert (=> b!55227 (= e!29083 (Node!142 Empty!181 x!22074 Empty!181))))

(declare-fun b!55230 () Bool)

(declare-fun res!25460 () IntSet!58)

(assert (=> b!55230 (= e!29084 res!25460)))

(assert (=> b!55230 true))

(assert (=> b!55230 true))

(declare-fun b!55229 () Bool)

(assert (=> b!55229 (= e!29084 (incl!0 (ite lt!9814 (left!1228 s!1764) (right!1231 s!1764)) x!22074))))

(declare-fun d!45230 () Bool)

(declare-fun c!12009 () Bool)

(assert (=> d!45230 (= c!12009 (is-Empty!181 s!1764))))

(assert (=> d!45230 (= (incl!0 s!1764 x!22074) e!29083)))

(assert (= (and b!55228 c!12008) b!55229))

(assert (= (and b!55228 (not c!12008)) b!55230))

(assert (= (and d!45230 c!12009) b!55227))

(assert (= (and d!45230 (not c!12009)) b!55228))

(declare-fun m!60016 () Bool)

(assert (=> b!55229 m!60016))

(assert (=> b!55209 d!45230))

(declare-fun d!45232 () Bool)

(declare-fun res!25462 () Bool)

(declare-fun e!29086 () Bool)

(assert (=> d!45232 (=> (not res!25462) (not e!29086))))

(assert (=> d!45232 (= res!25462 (not (is-Empty!181 s!1764)))))

(assert (=> d!45232 (= (contains!9 s!1764 y!1649) e!29086)))

(declare-fun lt!9815 () Bool)

(declare-fun lt!9816 () Bool)

(declare-fun b!55231 () Bool)

(assert (=> b!55231 (= e!29086 (ite lt!9815 lt!9816 (or (not (bvsgt y!1649 (elem!294 s!1764))) lt!9816)))))

(declare-fun e!29085 () Bool)

(assert (=> b!55231 (= lt!9816 e!29085)))

(declare-fun c!12010 () Bool)

(assert (=> b!55231 (= c!12010 (or lt!9815 (bvsgt y!1649 (elem!294 s!1764))))))

(assert (=> b!55231 (= lt!9815 (bvslt y!1649 (elem!294 s!1764)))))

(declare-fun b!55233 () Bool)

(declare-fun res!25461 () Bool)

(assert (=> b!55233 (= e!29085 res!25461)))

(assert (=> b!55233 true))

(assert (=> b!55233 true))

(declare-fun b!55232 () Bool)

(assert (=> b!55232 (= e!29085 (contains!9 (ite lt!9815 (left!1228 s!1764) (right!1231 s!1764)) y!1649))))

(assert (= (and d!45232 res!25462) b!55231))

(assert (= (and b!55231 c!12010) b!55232))

(assert (= (and b!55231 (not c!12010)) b!55233))

(declare-fun m!60018 () Bool)

(assert (=> b!55232 m!60018))

(assert (=> b!55209 d!45232))

(push 1)

(assert (not b!55229))

(assert (not b!55232))

(assert (not b!55217))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

