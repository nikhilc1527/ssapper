; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7694 () Bool)

(assert start!7694)

(declare-fun res!25317 () Bool)

(declare-fun e!28981 () Bool)

(assert (=> start!7694 (=> (not res!25317) (not e!28981))))

(declare-datatypes () ((IntSet!51 (Node!135 (left!1221 IntSet!51) (elem!287 (_ BitVec 32)) (right!1224 IntSet!51)) (Empty!174))))

(declare-fun s!1759 () IntSet!51)

(declare-fun x!22044 () (_ BitVec 32))

(assert (=> start!7694 (= res!25317 (and (is-Node!135 s!1759) (bvslt x!22044 (elem!287 s!1759))))))

(assert (=> start!7694 e!28981))

(assert (=> start!7694 true))

(declare-fun b!55049 () Bool)

(declare-fun res!25318 () Bool)

(assert (=> b!55049 (=> (not res!25318) (not e!28981))))

(declare-fun thiss!7826 () IntSet!51)

(declare-datatypes () ((Unit!911 (Unit!912))))

(declare-fun x$2!300 () Unit!911)

(declare-fun P2!0 (IntSet!51 IntSet!51 (_ BitVec 32)) Unit!911)

(assert (=> b!55049 (= res!25318 (= x$2!300 (P2!0 thiss!7826 (left!1221 s!1759) x!22044)))))

(declare-fun b!55050 () Bool)

(declare-fun contains!9 (IntSet!51 (_ BitVec 32)) Bool)

(declare-fun incl!0 (IntSet!51 (_ BitVec 32)) IntSet!51)

(assert (=> b!55050 (= e!28981 (not (contains!9 (incl!0 s!1759 x!22044) x!22044)))))

(assert (= (and start!7694 res!25317) b!55049))

(assert (= (and b!55049 res!25318) b!55050))

(declare-fun m!59924 () Bool)

(assert (=> b!55049 m!59924))

(declare-fun m!59926 () Bool)

(assert (=> b!55050 m!59926))

(assert (=> b!55050 m!59926))

(declare-fun m!59928 () Bool)

(assert (=> b!55050 m!59928))

(push 1)

(assert (not b!55050))

(assert (not b!55049))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!45196 () Bool)

(declare-fun res!25326 () Bool)

(declare-fun e!28986 () Bool)

(assert (=> d!45196 (=> (not res!25326) (not e!28986))))

(assert (=> d!45196 (= res!25326 (not (is-Empty!174 (incl!0 s!1759 x!22044))))))

(assert (=> d!45196 (= (contains!9 (incl!0 s!1759 x!22044) x!22044) e!28986)))

(declare-fun lt!9707 () Bool)

(declare-fun b!55057 () Bool)

(declare-fun lt!9708 () Bool)

(assert (=> b!55057 (= e!28986 (ite lt!9708 lt!9707 (or (not (bvsgt x!22044 (elem!287 (incl!0 s!1759 x!22044)))) lt!9707)))))

(declare-fun e!28987 () Bool)

(assert (=> b!55057 (= lt!9707 e!28987)))

(declare-fun c!11944 () Bool)

(assert (=> b!55057 (= c!11944 (or lt!9708 (bvsgt x!22044 (elem!287 (incl!0 s!1759 x!22044)))))))

(assert (=> b!55057 (= lt!9708 (bvslt x!22044 (elem!287 (incl!0 s!1759 x!22044))))))

(declare-fun b!55059 () Bool)

(declare-fun res!25327 () Bool)

(assert (=> b!55059 (= e!28987 res!25327)))

(assert (=> b!55059 true))

(assert (=> b!55059 true))

(declare-fun b!55058 () Bool)

(assert (=> b!55058 (= e!28987 (contains!9 (ite lt!9708 (left!1221 (incl!0 s!1759 x!22044)) (right!1224 (incl!0 s!1759 x!22044))) x!22044))))

(assert (= (and d!45196 res!25326) b!55057))

(assert (= (and b!55057 c!11944) b!55058))

(assert (= (and b!55057 (not c!11944)) b!55059))

(declare-fun m!59930 () Bool)

(assert (=> b!55058 m!59930))

(assert (=> b!55050 d!45196))

(declare-fun b!55071 () Bool)

(declare-fun e!28992 () IntSet!51)

(declare-fun res!25333 () IntSet!51)

(assert (=> b!55071 (= e!28992 res!25333)))

(assert (=> b!55071 true))

(assert (=> b!55071 true))

(declare-fun lt!9713 () Bool)

(declare-fun e!28993 () IntSet!51)

(declare-fun b!55069 () Bool)

(declare-fun lt!9714 () IntSet!51)

(assert (=> b!55069 (= e!28993 (ite lt!9713 (Node!135 lt!9714 (elem!287 s!1759) (right!1224 s!1759)) (ite (bvsgt x!22044 (elem!287 s!1759)) (Node!135 (left!1221 s!1759) (elem!287 s!1759) lt!9714) s!1759)))))

(assert (=> b!55069 (= lt!9714 e!28992)))

(declare-fun c!11950 () Bool)

(assert (=> b!55069 (= c!11950 (or lt!9713 (bvsgt x!22044 (elem!287 s!1759))))))

(assert (=> b!55069 (= lt!9713 (bvslt x!22044 (elem!287 s!1759)))))

(declare-fun d!45198 () Bool)

(declare-fun c!11949 () Bool)

(assert (=> d!45198 (= c!11949 (is-Empty!174 s!1759))))

(assert (=> d!45198 (= (incl!0 s!1759 x!22044) e!28993)))

(declare-fun b!55068 () Bool)

(assert (=> b!55068 (= e!28993 (Node!135 Empty!174 x!22044 Empty!174))))

(declare-fun b!55070 () Bool)

(assert (=> b!55070 (= e!28992 (incl!0 (ite lt!9713 (left!1221 s!1759) (right!1224 s!1759)) x!22044))))

(assert (= (and b!55069 c!11950) b!55070))

(assert (= (and b!55069 (not c!11950)) b!55071))

(assert (= (and d!45198 c!11949) b!55068))

(assert (= (and d!45198 (not c!11949)) b!55069))

(declare-fun m!59932 () Bool)

(assert (=> b!55070 m!59932))

(assert (=> b!55050 d!45198))

(declare-fun d!45200 () Bool)

(assert (=> d!45200 (contains!9 (incl!0 (left!1221 s!1759) x!22044) x!22044)))

(declare-fun lt!9723 () Bool)

(declare-fun lt!9721 () Unit!911)

(declare-fun lt!9722 () Unit!911)

(declare-fun Unit!913 () Unit!911)

(assert (=> d!45200 (= lt!9721 (ite (or lt!9723 (and (is-Node!135 (left!1221 s!1759)) (bvsgt x!22044 (elem!287 (left!1221 s!1759))))) lt!9722 Unit!913))))

(declare-fun e!28996 () Unit!911)

(assert (=> d!45200 (= lt!9722 e!28996)))

(declare-fun c!11953 () Bool)

(assert (=> d!45200 (= c!11953 (or lt!9723 (and (is-Node!135 (left!1221 s!1759)) (bvsgt x!22044 (elem!287 (left!1221 s!1759))))))))

(assert (=> d!45200 (= lt!9723 (and (is-Node!135 (left!1221 s!1759)) (bvslt x!22044 (elem!287 (left!1221 s!1759)))))))

(assert (=> d!45200 (= (P2!0 thiss!7826 (left!1221 s!1759) x!22044) lt!9721)))

(declare-fun b!55077 () Bool)

(declare-fun res!25339 () Unit!911)

(assert (=> b!55077 (= e!28996 res!25339)))

(assert (=> b!55077 true))

(assert (=> b!55077 true))

(declare-fun b!55076 () Bool)

(assert (=> b!55076 (= e!28996 (P2!0 thiss!7826 (ite lt!9723 (left!1221 (left!1221 s!1759)) (right!1224 (left!1221 s!1759))) x!22044))))

(assert (= (and d!45200 c!11953) b!55076))

(assert (= (and d!45200 (not c!11953)) b!55077))

(declare-fun m!59934 () Bool)

(assert (=> d!45200 m!59934))

(assert (=> d!45200 m!59934))

(declare-fun m!59936 () Bool)

(assert (=> d!45200 m!59936))

(declare-fun m!59938 () Bool)

(assert (=> b!55076 m!59938))

(assert (=> b!55049 d!45200))

(push 1)

(assert (not d!45200))

(assert (not b!55070))

(assert (not b!55076))

(assert (not b!55058))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

