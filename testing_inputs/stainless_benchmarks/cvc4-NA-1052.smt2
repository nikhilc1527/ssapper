; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7728 () Bool)

(assert start!7728)

(declare-fun res!25418 () Bool)

(declare-fun e!29052 () Bool)

(assert (=> start!7728 (=> (not res!25418) (not e!29052))))

(declare-fun x!22074 () (_ BitVec 32))

(declare-datatypes () ((IntSet!57 (Node!141 (left!1227 IntSet!57) (elem!293 (_ BitVec 32)) (right!1230 IntSet!57)) (Empty!180))))

(declare-fun s!1764 () IntSet!57)

(declare-fun y!1649 () (_ BitVec 32))

(assert (=> start!7728 (= res!25418 (and (not (= x!22074 y!1649)) (or (not (is-Node!141 s!1764)) (bvsge x!22074 (elem!293 s!1764))) (is-Node!141 s!1764) (bvsgt x!22074 (elem!293 s!1764))))))

(assert (=> start!7728 e!29052))

(assert (=> start!7728 true))

(declare-fun b!55175 () Bool)

(declare-fun res!25419 () Bool)

(assert (=> b!55175 (=> (not res!25419) (not e!29052))))

(declare-datatypes () ((Unit!923 (Unit!924))))

(declare-fun x$3!146 () Unit!923)

(declare-fun thiss!7856 () IntSet!57)

(declare-fun P3!0 (IntSet!57 IntSet!57 (_ BitVec 32) (_ BitVec 32)) Unit!923)

(assert (=> b!55175 (= res!25419 (= x$3!146 (P3!0 thiss!7856 (right!1230 s!1764) x!22074 y!1649)))))

(declare-fun b!55176 () Bool)

(declare-fun contains!9 (IntSet!57 (_ BitVec 32)) Bool)

(declare-fun incl!0 (IntSet!57 (_ BitVec 32)) IntSet!57)

(assert (=> b!55176 (= e!29052 (not (= (contains!9 (incl!0 s!1764 x!22074) y!1649) (contains!9 s!1764 y!1649))))))

(assert (= (and start!7728 res!25418) b!55175))

(assert (= (and b!55175 res!25419) b!55176))

(declare-fun m!59986 () Bool)

(assert (=> b!55175 m!59986))

(declare-fun m!59988 () Bool)

(assert (=> b!55176 m!59988))

(assert (=> b!55176 m!59988))

(declare-fun m!59990 () Bool)

(assert (=> b!55176 m!59990))

(declare-fun m!59992 () Bool)

(assert (=> b!55176 m!59992))

(push 1)

(assert (not b!55176))

(assert (not b!55175))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!45220 () Bool)

(declare-fun res!25428 () Bool)

(declare-fun e!29057 () Bool)

(assert (=> d!45220 (=> (not res!25428) (not e!29057))))

(assert (=> d!45220 (= res!25428 (not (is-Empty!180 (incl!0 s!1764 x!22074))))))

(assert (=> d!45220 (= (contains!9 (incl!0 s!1764 x!22074) y!1649) e!29057)))

(declare-fun lt!9785 () Bool)

(declare-fun lt!9784 () Bool)

(declare-fun b!55183 () Bool)

(assert (=> b!55183 (= e!29057 (ite lt!9784 lt!9785 (or (not (bvsgt y!1649 (elem!293 (incl!0 s!1764 x!22074)))) lt!9785)))))

(declare-fun e!29058 () Bool)

(assert (=> b!55183 (= lt!9785 e!29058)))

(declare-fun c!11990 () Bool)

(assert (=> b!55183 (= c!11990 (or lt!9784 (bvsgt y!1649 (elem!293 (incl!0 s!1764 x!22074)))))))

(assert (=> b!55183 (= lt!9784 (bvslt y!1649 (elem!293 (incl!0 s!1764 x!22074))))))

(declare-fun b!55185 () Bool)

(declare-fun res!25427 () Bool)

(assert (=> b!55185 (= e!29058 res!25427)))

(assert (=> b!55185 true))

(assert (=> b!55185 true))

(declare-fun b!55184 () Bool)

(assert (=> b!55184 (= e!29058 (contains!9 (ite lt!9784 (left!1227 (incl!0 s!1764 x!22074)) (right!1230 (incl!0 s!1764 x!22074))) y!1649))))

(assert (= (and d!45220 res!25428) b!55183))

(assert (= (and b!55183 c!11990) b!55184))

(assert (= (and b!55183 (not c!11990)) b!55185))

(declare-fun m!59994 () Bool)

(assert (=> b!55184 m!59994))

(assert (=> b!55176 d!45220))

(declare-fun b!55194 () Bool)

(declare-fun e!29063 () IntSet!57)

(assert (=> b!55194 (= e!29063 (Node!141 Empty!180 x!22074 Empty!180))))

(declare-fun b!55197 () Bool)

(declare-fun e!29064 () IntSet!57)

(declare-fun res!25434 () IntSet!57)

(assert (=> b!55197 (= e!29064 res!25434)))

(assert (=> b!55197 true))

(assert (=> b!55197 true))

(declare-fun b!55196 () Bool)

(declare-fun lt!9790 () Bool)

(assert (=> b!55196 (= e!29064 (incl!0 (ite lt!9790 (left!1227 s!1764) (right!1230 s!1764)) x!22074))))

(declare-fun d!45222 () Bool)

(declare-fun c!11996 () Bool)

(assert (=> d!45222 (= c!11996 (is-Empty!180 s!1764))))

(assert (=> d!45222 (= (incl!0 s!1764 x!22074) e!29063)))

(declare-fun b!55195 () Bool)

(declare-fun lt!9791 () IntSet!57)

(assert (=> b!55195 (= e!29063 (ite lt!9790 (Node!141 lt!9791 (elem!293 s!1764) (right!1230 s!1764)) (ite (bvsgt x!22074 (elem!293 s!1764)) (Node!141 (left!1227 s!1764) (elem!293 s!1764) lt!9791) s!1764)))))

(assert (=> b!55195 (= lt!9791 e!29064)))

(declare-fun c!11995 () Bool)

(assert (=> b!55195 (= c!11995 (or lt!9790 (bvsgt x!22074 (elem!293 s!1764))))))

(assert (=> b!55195 (= lt!9790 (bvslt x!22074 (elem!293 s!1764)))))

(assert (= (and b!55195 c!11995) b!55196))

(assert (= (and b!55195 (not c!11995)) b!55197))

(assert (= (and d!45222 c!11996) b!55194))

(assert (= (and d!45222 (not c!11996)) b!55195))

(declare-fun m!59996 () Bool)

(assert (=> b!55196 m!59996))

(assert (=> b!55176 d!45222))

(declare-fun d!45224 () Bool)

(declare-fun res!25436 () Bool)

(declare-fun e!29065 () Bool)

(assert (=> d!45224 (=> (not res!25436) (not e!29065))))

(assert (=> d!45224 (= res!25436 (not (is-Empty!180 s!1764)))))

(assert (=> d!45224 (= (contains!9 s!1764 y!1649) e!29065)))

(declare-fun lt!9793 () Bool)

(declare-fun b!55198 () Bool)

(declare-fun lt!9792 () Bool)

(assert (=> b!55198 (= e!29065 (ite lt!9792 lt!9793 (or (not (bvsgt y!1649 (elem!293 s!1764))) lt!9793)))))

(declare-fun e!29066 () Bool)

(assert (=> b!55198 (= lt!9793 e!29066)))

(declare-fun c!11997 () Bool)

(assert (=> b!55198 (= c!11997 (or lt!9792 (bvsgt y!1649 (elem!293 s!1764))))))

(assert (=> b!55198 (= lt!9792 (bvslt y!1649 (elem!293 s!1764)))))

(declare-fun b!55200 () Bool)

(declare-fun res!25435 () Bool)

(assert (=> b!55200 (= e!29066 res!25435)))

(assert (=> b!55200 true))

(assert (=> b!55200 true))

(declare-fun b!55199 () Bool)

(assert (=> b!55199 (= e!29066 (contains!9 (ite lt!9792 (left!1227 s!1764) (right!1230 s!1764)) y!1649))))

(assert (= (and d!45224 res!25436) b!55198))

(assert (= (and b!55198 c!11997) b!55199))

(assert (= (and b!55198 (not c!11997)) b!55200))

(declare-fun m!59998 () Bool)

(assert (=> b!55199 m!59998))

(assert (=> b!55176 d!45224))

(declare-fun d!45226 () Bool)

(assert (=> d!45226 (= (contains!9 (incl!0 (right!1230 s!1764) x!22074) y!1649) (contains!9 (right!1230 s!1764) y!1649))))

(declare-fun lt!9801 () Unit!923)

(declare-fun lt!9800 () Unit!923)

(declare-fun lt!9802 () Bool)

(declare-fun Unit!925 () Unit!923)

(assert (=> d!45226 (= lt!9800 (ite (or lt!9802 (and (is-Node!141 (right!1230 s!1764)) (bvsgt x!22074 (elem!293 (right!1230 s!1764))))) lt!9801 Unit!925))))

(declare-fun e!29069 () Unit!923)

(assert (=> d!45226 (= lt!9801 e!29069)))

(declare-fun c!12000 () Bool)

(assert (=> d!45226 (= c!12000 (or lt!9802 (and (is-Node!141 (right!1230 s!1764)) (bvsgt x!22074 (elem!293 (right!1230 s!1764))))))))

(assert (=> d!45226 (= lt!9802 (and (is-Node!141 (right!1230 s!1764)) (bvslt x!22074 (elem!293 (right!1230 s!1764)))))))

(assert (=> d!45226 (not (= x!22074 y!1649))))

(assert (=> d!45226 (= (P3!0 thiss!7856 (right!1230 s!1764) x!22074 y!1649) lt!9800)))

(declare-fun b!55206 () Bool)

(declare-fun res!25442 () Unit!923)

(assert (=> b!55206 (= e!29069 res!25442)))

(assert (=> b!55206 true))

(assert (=> b!55206 true))

(declare-fun b!55205 () Bool)

(assert (=> b!55205 (= e!29069 (P3!0 thiss!7856 (ite lt!9802 (left!1227 (right!1230 s!1764)) (right!1230 (right!1230 s!1764))) x!22074 y!1649))))

(assert (= (and d!45226 c!12000) b!55205))

(assert (= (and d!45226 (not c!12000)) b!55206))

(declare-fun m!60000 () Bool)

(assert (=> d!45226 m!60000))

(assert (=> d!45226 m!60000))

(declare-fun m!60002 () Bool)

(assert (=> d!45226 m!60002))

(declare-fun m!60004 () Bool)

(assert (=> d!45226 m!60004))

(declare-fun m!60006 () Bool)

(assert (=> b!55205 m!60006))

(assert (=> b!55175 d!45226))

(push 1)

(assert (not b!55184))

(assert (not b!55205))

(assert (not b!55199))

(assert (not b!55196))

(assert (not d!45226))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

