; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7686 () Bool)

(assert start!7686)

(declare-fun b!55006 () Bool)

(declare-fun res!25277 () Bool)

(declare-fun e!28958 () Bool)

(assert (=> b!55006 (=> (not res!25277) (not e!28958))))

(declare-fun tmp!428 () Bool)

(declare-fun t!46849 () Bool)

(declare-fun res!25220 () Bool)

(assert (=> b!55006 (= res!25277 (and (= res!25220 t!46849) (= tmp!428 res!25220)))))

(declare-fun res!25276 () Bool)

(assert (=> start!7686 (=> (not res!25276) (not e!28958))))

(declare-fun x!22002 () (_ BitVec 32))

(declare-fun y!1643 () (_ BitVec 32))

(assert (=> start!7686 (= res!25276 (not (= x!22002 y!1643)))))

(assert (=> start!7686 e!28958))

(assert (=> start!7686 true))

(declare-fun b!55007 () Bool)

(declare-datatypes () ((IntSet!49 (Empty!173) (Node!134 (left!1185 IntSet!49) (elem!253 (_ BitVec 32)) (right!1188 IntSet!49)))))

(declare-fun s!1750 () IntSet!49)

(declare-fun contains!10 (IntSet!49 (_ BitVec 32)) Bool)

(declare-fun incl!1 (IntSet!49 (_ BitVec 32)) IntSet!49)

(assert (=> b!55007 (= e!28958 (not (= (contains!10 (incl!1 s!1750 x!22002) y!1643) (contains!10 s!1750 y!1643))))))

(declare-fun b!55008 () Bool)

(declare-fun lt!9679 () Bool)

(declare-fun e!28956 () Bool)

(declare-fun lt!9678 () Bool)

(assert (=> b!55008 (= e!28956 (ite lt!9679 lt!9678 (or (bvsle x!22002 (elem!253 s!1750)) lt!9678)))))

(declare-fun e!28957 () Bool)

(assert (=> b!55008 (= lt!9678 e!28957)))

(declare-fun c!11928 () Bool)

(assert (=> b!55008 (= c!11928 (or lt!9679 (bvsgt x!22002 (elem!253 s!1750))))))

(assert (=> b!55008 (= lt!9679 (bvslt x!22002 (elem!253 s!1750)))))

(declare-fun thiss!7796 () IntSet!49)

(declare-fun b!55009 () Bool)

(declare-fun P3!1 (IntSet!49 IntSet!49 (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!55009 (= e!28957 (P3!1 thiss!7796 (ite lt!9679 (left!1185 s!1750) (right!1188 s!1750)) x!22002 y!1643))))

(declare-fun b!55010 () Bool)

(declare-fun res!25279 () Bool)

(assert (=> b!55010 (=> (not res!25279) (not e!28958))))

(assert (=> b!55010 (= res!25279 (= t!46849 e!28956))))

(declare-fun res!25280 () Bool)

(assert (=> b!55010 (=> res!25280 e!28956)))

(assert (=> b!55010 (= res!25280 (is-Empty!173 s!1750))))

(declare-fun b!55011 () Bool)

(declare-fun res!25278 () Bool)

(assert (=> b!55011 (= e!28957 res!25278)))

(assert (=> b!55011 true))

(assert (= (and start!7686 res!25276) b!55010))

(assert (= (and b!55010 (not res!25280)) b!55008))

(assert (= (and b!55008 c!11928) b!55009))

(assert (= (and b!55008 (not c!11928)) b!55011))

(assert (= (and b!55010 res!25279) b!55006))

(assert (= (and b!55006 res!25277) b!55007))

(declare-fun m!59902 () Bool)

(assert (=> b!55007 m!59902))

(assert (=> b!55007 m!59902))

(declare-fun m!59904 () Bool)

(assert (=> b!55007 m!59904))

(declare-fun m!59906 () Bool)

(assert (=> b!55007 m!59906))

(declare-fun m!59908 () Bool)

(assert (=> b!55009 m!59908))

(push 1)

(assert (not b!55007))

(assert (not b!55009))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!45186 () Bool)

(declare-fun res!25288 () Bool)

(declare-fun e!28963 () Bool)

(assert (=> d!45186 (=> (not res!25288) (not e!28963))))

(assert (=> d!45186 (= res!25288 (not (is-Empty!173 (incl!1 s!1750 x!22002))))))

(assert (=> d!45186 (= (contains!10 (incl!1 s!1750 x!22002) y!1643) e!28963)))

(declare-fun b!55018 () Bool)

(declare-fun lt!9685 () Bool)

(declare-fun lt!9684 () Bool)

(assert (=> b!55018 (= e!28963 (ite lt!9685 lt!9684 (or (not (bvsgt y!1643 (elem!253 (incl!1 s!1750 x!22002)))) lt!9684)))))

(declare-fun e!28964 () Bool)

(assert (=> b!55018 (= lt!9684 e!28964)))

(declare-fun c!11931 () Bool)

(assert (=> b!55018 (= c!11931 (or lt!9685 (bvsgt y!1643 (elem!253 (incl!1 s!1750 x!22002)))))))

(assert (=> b!55018 (= lt!9685 (bvslt y!1643 (elem!253 (incl!1 s!1750 x!22002))))))

(declare-fun b!55020 () Bool)

(declare-fun res!25289 () Bool)

(assert (=> b!55020 (= e!28964 res!25289)))

(assert (=> b!55020 true))

(assert (=> b!55020 true))

(declare-fun b!55019 () Bool)

(assert (=> b!55019 (= e!28964 (contains!10 (ite lt!9685 (left!1185 (incl!1 s!1750 x!22002)) (right!1188 (incl!1 s!1750 x!22002))) y!1643))))

(assert (= (and d!45186 res!25288) b!55018))

(assert (= (and b!55018 c!11931) b!55019))

(assert (= (and b!55018 (not c!11931)) b!55020))

(declare-fun m!59910 () Bool)

(assert (=> b!55019 m!59910))

(assert (=> b!55007 d!45186))

(declare-fun e!28970 () IntSet!49)

(declare-fun lt!9690 () IntSet!49)

(declare-fun lt!9691 () Bool)

(declare-fun b!55030 () Bool)

(assert (=> b!55030 (= e!28970 (ite lt!9691 (Node!134 lt!9690 (elem!253 s!1750) (right!1188 s!1750)) (ite (bvsgt x!22002 (elem!253 s!1750)) (Node!134 (left!1185 s!1750) (elem!253 s!1750) lt!9690) s!1750)))))

(declare-fun e!28969 () IntSet!49)

(assert (=> b!55030 (= lt!9690 e!28969)))

(declare-fun c!11937 () Bool)

(assert (=> b!55030 (= c!11937 (or lt!9691 (bvsgt x!22002 (elem!253 s!1750))))))

(assert (=> b!55030 (= lt!9691 (bvslt x!22002 (elem!253 s!1750)))))

(declare-fun d!45188 () Bool)

(declare-fun c!11936 () Bool)

(assert (=> d!45188 (= c!11936 (is-Empty!173 s!1750))))

(assert (=> d!45188 (= (incl!1 s!1750 x!22002) e!28970)))

(declare-fun b!55029 () Bool)

(assert (=> b!55029 (= e!28970 (Node!134 Empty!173 x!22002 Empty!173))))

(declare-fun b!55032 () Bool)

(declare-fun res!25295 () IntSet!49)

(assert (=> b!55032 (= e!28969 res!25295)))

(assert (=> b!55032 true))

(assert (=> b!55032 true))

(declare-fun b!55031 () Bool)

(assert (=> b!55031 (= e!28969 (incl!1 (ite lt!9691 (left!1185 s!1750) (right!1188 s!1750)) x!22002))))

(assert (= (and b!55030 c!11937) b!55031))

(assert (= (and b!55030 (not c!11937)) b!55032))

(assert (= (and d!45188 c!11936) b!55029))

(assert (= (and d!45188 (not c!11936)) b!55030))

(declare-fun m!59912 () Bool)

(assert (=> b!55031 m!59912))

(assert (=> b!55007 d!45188))

(declare-fun d!45190 () Bool)

(declare-fun res!25296 () Bool)

(declare-fun e!28971 () Bool)

(assert (=> d!45190 (=> (not res!25296) (not e!28971))))

(assert (=> d!45190 (= res!25296 (not (is-Empty!173 s!1750)))))

(assert (=> d!45190 (= (contains!10 s!1750 y!1643) e!28971)))

(declare-fun lt!9692 () Bool)

(declare-fun b!55033 () Bool)

(declare-fun lt!9693 () Bool)

(assert (=> b!55033 (= e!28971 (ite lt!9693 lt!9692 (or (not (bvsgt y!1643 (elem!253 s!1750))) lt!9692)))))

(declare-fun e!28972 () Bool)

(assert (=> b!55033 (= lt!9692 e!28972)))

(declare-fun c!11938 () Bool)

(assert (=> b!55033 (= c!11938 (or lt!9693 (bvsgt y!1643 (elem!253 s!1750))))))

(assert (=> b!55033 (= lt!9693 (bvslt y!1643 (elem!253 s!1750)))))

(declare-fun b!55035 () Bool)

(declare-fun res!25297 () Bool)

(assert (=> b!55035 (= e!28972 res!25297)))

(assert (=> b!55035 true))

(assert (=> b!55035 true))

(declare-fun b!55034 () Bool)

(assert (=> b!55034 (= e!28972 (contains!10 (ite lt!9693 (left!1185 s!1750) (right!1188 s!1750)) y!1643))))

(assert (= (and d!45190 res!25296) b!55033))

(assert (= (and b!55033 c!11938) b!55034))

(assert (= (and b!55033 (not c!11938)) b!55035))

(declare-fun m!59914 () Bool)

(assert (=> b!55034 m!59914))

(assert (=> b!55007 d!45190))

(declare-fun d!45192 () Bool)

(assert (=> d!45192 (= (contains!10 (incl!1 (ite lt!9679 (left!1185 s!1750) (right!1188 s!1750)) x!22002) y!1643) (contains!10 (ite lt!9679 (left!1185 s!1750) (right!1188 s!1750)) y!1643))))

(declare-fun lt!9702 () Bool)

(declare-fun e!28978 () Bool)

(assert (=> d!45192 (= lt!9702 e!28978)))

(declare-fun res!25309 () Bool)

(assert (=> d!45192 (=> res!25309 e!28978)))

(assert (=> d!45192 (= res!25309 (is-Empty!173 (ite lt!9679 (left!1185 s!1750) (right!1188 s!1750))))))

(assert (=> d!45192 (not (= x!22002 y!1643))))

(assert (=> d!45192 (= (P3!1 thiss!7796 (ite lt!9679 (left!1185 s!1750) (right!1188 s!1750)) x!22002 y!1643) true)))

(declare-fun b!55042 () Bool)

(declare-fun lt!9701 () Bool)

(declare-fun lt!9700 () Bool)

(assert (=> b!55042 (= e!28978 (ite lt!9700 lt!9701 (or (not (bvsgt x!22002 (elem!253 (ite lt!9679 (left!1185 s!1750) (right!1188 s!1750))))) lt!9701)))))

(declare-fun e!28977 () Bool)

(assert (=> b!55042 (= lt!9701 e!28977)))

(declare-fun c!11941 () Bool)

(assert (=> b!55042 (= c!11941 (or lt!9700 (bvsgt x!22002 (elem!253 (ite lt!9679 (left!1185 s!1750) (right!1188 s!1750))))))))

(assert (=> b!55042 (= lt!9700 (bvslt x!22002 (elem!253 (ite lt!9679 (left!1185 s!1750) (right!1188 s!1750)))))))

(declare-fun b!55044 () Bool)

(declare-fun res!25308 () Bool)

(assert (=> b!55044 (= e!28977 res!25308)))

(assert (=> b!55044 true))

(assert (=> b!55044 true))

(declare-fun b!55043 () Bool)

(assert (=> b!55043 (= e!28977 (P3!1 thiss!7796 (ite lt!9700 (left!1185 (ite lt!9679 (left!1185 s!1750) (right!1188 s!1750))) (right!1188 (ite lt!9679 (left!1185 s!1750) (right!1188 s!1750)))) x!22002 y!1643))))

(assert (= (and d!45192 (not res!25309)) b!55042))

(assert (= (and b!55042 c!11941) b!55043))

(assert (= (and b!55042 (not c!11941)) b!55044))

(declare-fun m!59916 () Bool)

(assert (=> d!45192 m!59916))

(assert (=> d!45192 m!59916))

(declare-fun m!59918 () Bool)

(assert (=> d!45192 m!59918))

(declare-fun m!59920 () Bool)

(assert (=> d!45192 m!59920))

(declare-fun m!59922 () Bool)

(assert (=> b!55043 m!59922))

(assert (=> b!55009 d!45192))

(push 1)

(assert (not b!55019))

(assert (not d!45192))

(assert (not b!55043))

(assert (not b!55031))

(assert (not b!55034))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

