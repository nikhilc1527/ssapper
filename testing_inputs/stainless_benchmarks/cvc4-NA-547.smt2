; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4066 () Bool)

(assert start!4066)

(declare-fun b!32239 () Bool)

(declare-fun res!14801 () Bool)

(declare-fun e!16411 () Bool)

(assert (=> b!32239 (=> (not res!14801) (not e!16411))))

(declare-fun i!263 () Int)

(declare-datatypes () ((T!1849 (T!1850 (val!97 Int)))))

(declare-datatypes () ((Conc!74 (CC!73 (left!718 Conc!74) (right!721 Conc!74)) (Single!73 (x!8982 T!1849)) (Empty!84))))

(declare-fun xs!586 () Conc!74)

(declare-fun size!284 (Conc!74) Int)

(assert (=> b!32239 (= res!14801 (< i!263 (size!284 xs!586)))))

(declare-fun b!32240 () Bool)

(declare-fun res!14797 () Bool)

(assert (=> b!32240 (=> (not res!14797) (not e!16411))))

(declare-fun isEmpty!328 (Conc!74) Bool)

(assert (=> b!32240 (= res!14797 (not (isEmpty!328 xs!586)))))

(declare-fun b!32241 () Bool)

(declare-fun res!14794 () Bool)

(assert (=> b!32241 (=> (not res!14794) (not e!16411))))

(declare-fun balanced!67 (Conc!74) Bool)

(assert (=> b!32241 (= res!14794 (balanced!67 xs!586))))

(declare-fun b!32242 () Bool)

(declare-fun res!14798 () Bool)

(assert (=> b!32242 (=> (not res!14798) (not e!16411))))

(assert (=> b!32242 (= res!14798 (< i!263 (size!284 (left!718 xs!586))))))

(declare-fun b!32243 () Bool)

(declare-fun e!16412 () Bool)

(declare-fun i!268 () Int)

(declare-fun xs!589 () Conc!74)

(assert (=> b!32243 (= e!16412 (>= i!268 (size!284 xs!589)))))

(declare-fun b!32244 () Bool)

(declare-fun res!14793 () Bool)

(assert (=> b!32244 (=> res!14793 e!16412)))

(assert (=> b!32244 (= res!14793 (not (balanced!67 xs!589)))))

(declare-fun b!32245 () Bool)

(declare-fun res!14802 () Bool)

(assert (=> b!32245 (=> res!14802 e!16412)))

(assert (=> b!32245 (= res!14802 (isEmpty!328 xs!589))))

(declare-fun res!14796 () Bool)

(assert (=> start!4066 (=> (not res!14796) (not e!16411))))

(declare-fun concInv!66 (Conc!74) Bool)

(assert (=> start!4066 (= res!14796 (concInv!66 xs!586))))

(assert (=> start!4066 e!16411))

(declare-fun e!16413 () Bool)

(assert (=> start!4066 e!16413))

(declare-fun e!16410 () Bool)

(assert (=> start!4066 e!16410))

(declare-fun tp_is_empty!193 () Bool)

(assert (=> start!4066 tp_is_empty!193))

(assert (=> start!4066 true))

(declare-fun b!32246 () Bool)

(assert (=> b!32246 (= e!16410 tp_is_empty!193)))

(declare-fun b!32247 () Bool)

(declare-fun res!14800 () Bool)

(assert (=> b!32247 (=> (not res!14800) (not e!16411))))

(declare-fun y!785 () T!1849)

(declare-fun y!792 () T!1849)

(assert (=> b!32247 (= res!14800 (and (= xs!589 (left!718 xs!586)) (= i!268 i!263) (= y!792 y!785)))))

(declare-fun b!32248 () Bool)

(assert (=> b!32248 (= e!16413 tp_is_empty!193)))

(declare-fun b!32249 () Bool)

(assert (=> b!32249 (= e!16411 e!16412)))

(declare-fun res!14795 () Bool)

(assert (=> b!32249 (=> res!14795 e!16412)))

(assert (=> b!32249 (= res!14795 (not (concInv!66 xs!589)))))

(declare-fun b!32250 () Bool)

(declare-fun tp!6689 () Bool)

(declare-fun tp!6691 () Bool)

(assert (=> b!32250 (= e!16410 (and tp!6689 tp!6691))))

(declare-fun b!32251 () Bool)

(declare-fun res!14799 () Bool)

(assert (=> b!32251 (=> res!14799 e!16412)))

(assert (=> b!32251 (= res!14799 (< i!268 0))))

(declare-fun b!32252 () Bool)

(declare-fun res!14803 () Bool)

(assert (=> b!32252 (=> (not res!14803) (not e!16411))))

(assert (=> b!32252 (= res!14803 (not (is-Single!73 xs!586)))))

(declare-fun b!32253 () Bool)

(declare-fun res!14792 () Bool)

(assert (=> b!32253 (=> (not res!14792) (not e!16411))))

(assert (=> b!32253 (= res!14792 (>= i!263 0))))

(declare-fun b!32254 () Bool)

(declare-fun tp!6688 () Bool)

(declare-fun tp!6690 () Bool)

(assert (=> b!32254 (= e!16413 (and tp!6688 tp!6690))))

(assert (= (and start!4066 res!14796) b!32241))

(assert (= (and b!32241 res!14794) b!32240))

(assert (= (and b!32240 res!14797) b!32253))

(assert (= (and b!32253 res!14792) b!32239))

(assert (= (and b!32239 res!14801) b!32252))

(assert (= (and b!32252 res!14803) b!32242))

(assert (= (and b!32242 res!14798) b!32247))

(assert (= (and b!32247 res!14800) b!32249))

(assert (= (and b!32249 (not res!14795)) b!32244))

(assert (= (and b!32244 (not res!14793)) b!32245))

(assert (= (and b!32245 (not res!14802)) b!32251))

(assert (= (and b!32251 (not res!14799)) b!32243))

(assert (= (and start!4066 (is-CC!73 xs!586)) b!32254))

(assert (= (and start!4066 (is-Single!73 xs!586)) b!32248))

(assert (= (and start!4066 (is-CC!73 xs!589)) b!32250))

(assert (= (and start!4066 (is-Single!73 xs!589)) b!32246))

(declare-fun m!34975 () Bool)

(assert (=> b!32249 m!34975))

(declare-fun m!34977 () Bool)

(assert (=> b!32242 m!34977))

(declare-fun m!34979 () Bool)

(assert (=> b!32245 m!34979))

(declare-fun m!34981 () Bool)

(assert (=> b!32241 m!34981))

(declare-fun m!34983 () Bool)

(assert (=> b!32243 m!34983))

(declare-fun m!34985 () Bool)

(assert (=> b!32239 m!34985))

(declare-fun m!34987 () Bool)

(assert (=> b!32240 m!34987))

(declare-fun m!34989 () Bool)

(assert (=> b!32244 m!34989))

(declare-fun m!34991 () Bool)

(assert (=> start!4066 m!34991))

(push 1)

(assert (not start!4066))

(assert tp_is_empty!193)

(assert (not b!32244))

(assert (not b!32245))

(assert (not b!32250))

(assert (not b!32243))

(assert (not b!32254))

(assert (not b!32249))

(assert (not b!32239))

(assert (not b!32241))

(assert (not b!32240))

(assert (not b!32242))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!32263 () Bool)

(declare-fun e!16418 () Bool)

(declare-fun e!16419 () Bool)

(assert (=> b!32263 (= e!16418 e!16419)))

(declare-fun res!14814 () Bool)

(assert (=> b!32263 (=> (not res!14814) (not e!16419))))

(assert (=> b!32263 (= res!14814 (not (isEmpty!328 (left!718 xs!586))))))

(declare-fun b!32264 () Bool)

(declare-fun res!14812 () Bool)

(assert (=> b!32264 (=> (not res!14812) (not e!16419))))

(assert (=> b!32264 (= res!14812 (not (isEmpty!328 (right!721 xs!586))))))

(declare-fun d!16593 () Bool)

(declare-fun res!14813 () Bool)

(assert (=> d!16593 (=> res!14813 e!16418)))

(assert (=> d!16593 (= res!14813 (not (is-CC!73 xs!586)))))

(assert (=> d!16593 (= (concInv!66 xs!586) e!16418)))

(declare-fun b!32265 () Bool)

(declare-fun res!14815 () Bool)

(assert (=> b!32265 (=> (not res!14815) (not e!16419))))

(assert (=> b!32265 (= res!14815 (concInv!66 (left!718 xs!586)))))

(declare-fun b!32266 () Bool)

(assert (=> b!32266 (= e!16419 (concInv!66 (right!721 xs!586)))))

(assert (= (and d!16593 (not res!14813)) b!32263))

(assert (= (and b!32263 res!14814) b!32264))

(assert (= (and b!32264 res!14812) b!32265))

(assert (= (and b!32265 res!14815) b!32266))

(declare-fun m!34993 () Bool)

(assert (=> b!32263 m!34993))

(declare-fun m!34995 () Bool)

(assert (=> b!32264 m!34995))

(declare-fun m!34997 () Bool)

(assert (=> b!32265 m!34997))

(declare-fun m!34999 () Bool)

(assert (=> b!32266 m!34999))

(assert (=> start!4066 d!16593))

(declare-fun b!32267 () Bool)

(declare-fun e!16420 () Bool)

(declare-fun e!16421 () Bool)

(assert (=> b!32267 (= e!16420 e!16421)))

(declare-fun res!14818 () Bool)

(assert (=> b!32267 (=> (not res!14818) (not e!16421))))

(assert (=> b!32267 (= res!14818 (not (isEmpty!328 (left!718 xs!589))))))

(declare-fun b!32268 () Bool)

(declare-fun res!14816 () Bool)

(assert (=> b!32268 (=> (not res!14816) (not e!16421))))

(assert (=> b!32268 (= res!14816 (not (isEmpty!328 (right!721 xs!589))))))

(declare-fun d!16595 () Bool)

(declare-fun res!14817 () Bool)

(assert (=> d!16595 (=> res!14817 e!16420)))

(assert (=> d!16595 (= res!14817 (not (is-CC!73 xs!589)))))

(assert (=> d!16595 (= (concInv!66 xs!589) e!16420)))

(declare-fun b!32269 () Bool)

(declare-fun res!14819 () Bool)

(assert (=> b!32269 (=> (not res!14819) (not e!16421))))

(assert (=> b!32269 (= res!14819 (concInv!66 (left!718 xs!589)))))

(declare-fun b!32270 () Bool)

(assert (=> b!32270 (= e!16421 (concInv!66 (right!721 xs!589)))))

(assert (= (and d!16595 (not res!14817)) b!32267))

(assert (= (and b!32267 res!14818) b!32268))

(assert (= (and b!32268 res!14816) b!32269))

(assert (= (and b!32269 res!14819) b!32270))

(declare-fun m!35001 () Bool)

(assert (=> b!32267 m!35001))

(declare-fun m!35003 () Bool)

(assert (=> b!32268 m!35003))

(declare-fun m!35005 () Bool)

(assert (=> b!32269 m!35005))

(declare-fun m!35007 () Bool)

(assert (=> b!32270 m!35007))

(assert (=> b!32249 d!16595))

(declare-fun b!32281 () Bool)

(declare-fun e!16426 () Int)

(assert (=> b!32281 (= e!16426 1)))

(declare-fun d!16597 () Bool)

(declare-fun lt!6160 () Int)

(assert (=> d!16597 (>= lt!6160 0)))

(declare-fun e!16427 () Int)

(assert (=> d!16597 (= lt!6160 e!16427)))

(declare-fun c!7023 () Bool)

(assert (=> d!16597 (= c!7023 (is-Empty!84 xs!589))))

(assert (=> d!16597 (= (size!284 xs!589) lt!6160)))

(declare-fun b!32282 () Bool)

(assert (=> b!32282 (= e!16426 (+ (size!284 (left!718 xs!589)) (size!284 (right!721 xs!589))))))

(declare-fun b!32280 () Bool)

(assert (=> b!32280 (= e!16427 e!16426)))

(declare-fun c!7024 () Bool)

(assert (=> b!32280 (= c!7024 (is-Single!73 xs!589))))

(declare-fun b!32279 () Bool)

(assert (=> b!32279 (= e!16427 0)))

(assert (= (and b!32280 c!7024) b!32281))

(assert (= (and b!32280 (not c!7024)) b!32282))

(assert (= (and d!16597 c!7023) b!32279))

(assert (= (and d!16597 (not c!7023)) b!32280))

(declare-fun m!35009 () Bool)

(assert (=> b!32282 m!35009))

(declare-fun m!35011 () Bool)

(assert (=> b!32282 m!35011))

(assert (=> b!32243 d!16597))

(declare-fun b!32294 () Bool)

(declare-fun e!16433 () Bool)

(assert (=> b!32294 (= e!16433 (balanced!67 (right!721 xs!586)))))

(declare-fun b!32292 () Bool)

(declare-fun res!14829 () Bool)

(assert (=> b!32292 (=> (not res!14829) (not e!16433))))

(declare-fun level!59 (Conc!74) Int)

(assert (=> b!32292 (= res!14829 (<= (- (level!59 (left!718 xs!586)) (level!59 (right!721 xs!586))) 1))))

(declare-fun b!32291 () Bool)

(declare-fun e!16432 () Bool)

(assert (=> b!32291 (= e!16432 e!16433)))

(declare-fun res!14830 () Bool)

(assert (=> b!32291 (=> (not res!14830) (not e!16433))))

(assert (=> b!32291 (= res!14830 (>= (- (level!59 (left!718 xs!586)) (level!59 (right!721 xs!586))) (- 1)))))

(declare-fun b!32293 () Bool)

(declare-fun res!14831 () Bool)

(assert (=> b!32293 (=> (not res!14831) (not e!16433))))

(assert (=> b!32293 (= res!14831 (balanced!67 (left!718 xs!586)))))

(declare-fun d!16599 () Bool)

(declare-fun res!14828 () Bool)

(assert (=> d!16599 (=> res!14828 e!16432)))

(assert (=> d!16599 (= res!14828 (not (is-CC!73 xs!586)))))

(assert (=> d!16599 (= (balanced!67 xs!586) e!16432)))

(assert (= (and d!16599 (not res!14828)) b!32291))

(assert (= (and b!32291 res!14830) b!32292))

(assert (= (and b!32292 res!14829) b!32293))

(assert (= (and b!32293 res!14831) b!32294))

(declare-fun m!35013 () Bool)

(assert (=> b!32294 m!35013))

(declare-fun m!35015 () Bool)

(assert (=> b!32292 m!35015))

(declare-fun m!35017 () Bool)

(assert (=> b!32292 m!35017))

(assert (=> b!32291 m!35015))

(assert (=> b!32291 m!35017))

(declare-fun m!35019 () Bool)

(assert (=> b!32293 m!35019))

(assert (=> b!32241 d!16599))

(declare-fun b!32297 () Bool)

(declare-fun e!16434 () Int)

(assert (=> b!32297 (= e!16434 1)))

(declare-fun d!16601 () Bool)

(declare-fun lt!6161 () Int)

(assert (=> d!16601 (>= lt!6161 0)))

(declare-fun e!16435 () Int)

(assert (=> d!16601 (= lt!6161 e!16435)))

(declare-fun c!7025 () Bool)

(assert (=> d!16601 (= c!7025 (is-Empty!84 (left!718 xs!586)))))

(assert (=> d!16601 (= (size!284 (left!718 xs!586)) lt!6161)))

(declare-fun b!32298 () Bool)

(assert (=> b!32298 (= e!16434 (+ (size!284 (left!718 (left!718 xs!586))) (size!284 (right!721 (left!718 xs!586)))))))

(declare-fun b!32296 () Bool)

(assert (=> b!32296 (= e!16435 e!16434)))

(declare-fun c!7026 () Bool)

(assert (=> b!32296 (= c!7026 (is-Single!73 (left!718 xs!586)))))

(declare-fun b!32295 () Bool)

(assert (=> b!32295 (= e!16435 0)))

(assert (= (and b!32296 c!7026) b!32297))

(assert (= (and b!32296 (not c!7026)) b!32298))

(assert (= (and d!16601 c!7025) b!32295))

(assert (= (and d!16601 (not c!7025)) b!32296))

(declare-fun m!35021 () Bool)

(assert (=> b!32298 m!35021))

(declare-fun m!35023 () Bool)

(assert (=> b!32298 m!35023))

(assert (=> b!32242 d!16601))

(declare-fun b!32301 () Bool)

(declare-fun e!16436 () Int)

(assert (=> b!32301 (= e!16436 1)))

(declare-fun d!16603 () Bool)

(declare-fun lt!6162 () Int)

(assert (=> d!16603 (>= lt!6162 0)))

(declare-fun e!16437 () Int)

(assert (=> d!16603 (= lt!6162 e!16437)))

(declare-fun c!7027 () Bool)

(assert (=> d!16603 (= c!7027 (is-Empty!84 xs!586))))

(assert (=> d!16603 (= (size!284 xs!586) lt!6162)))

(declare-fun b!32302 () Bool)

(assert (=> b!32302 (= e!16436 (+ (size!284 (left!718 xs!586)) (size!284 (right!721 xs!586))))))

(declare-fun b!32300 () Bool)

(assert (=> b!32300 (= e!16437 e!16436)))

(declare-fun c!7028 () Bool)

(assert (=> b!32300 (= c!7028 (is-Single!73 xs!586))))

(declare-fun b!32299 () Bool)

(assert (=> b!32299 (= e!16437 0)))

(assert (= (and b!32300 c!7028) b!32301))

(assert (= (and b!32300 (not c!7028)) b!32302))

(assert (= (and d!16603 c!7027) b!32299))

(assert (= (and d!16603 (not c!7027)) b!32300))

(assert (=> b!32302 m!34977))

(declare-fun m!35025 () Bool)

(assert (=> b!32302 m!35025))

(assert (=> b!32239 d!16603))

(declare-fun b!32306 () Bool)

(declare-fun e!16439 () Bool)

(assert (=> b!32306 (= e!16439 (balanced!67 (right!721 xs!589)))))

(declare-fun b!32304 () Bool)

(declare-fun res!14833 () Bool)

(assert (=> b!32304 (=> (not res!14833) (not e!16439))))

(assert (=> b!32304 (= res!14833 (<= (- (level!59 (left!718 xs!589)) (level!59 (right!721 xs!589))) 1))))

(declare-fun b!32303 () Bool)

(declare-fun e!16438 () Bool)

(assert (=> b!32303 (= e!16438 e!16439)))

(declare-fun res!14834 () Bool)

(assert (=> b!32303 (=> (not res!14834) (not e!16439))))

(assert (=> b!32303 (= res!14834 (>= (- (level!59 (left!718 xs!589)) (level!59 (right!721 xs!589))) (- 1)))))

(declare-fun b!32305 () Bool)

(declare-fun res!14835 () Bool)

(assert (=> b!32305 (=> (not res!14835) (not e!16439))))

(assert (=> b!32305 (= res!14835 (balanced!67 (left!718 xs!589)))))

(declare-fun d!16605 () Bool)

(declare-fun res!14832 () Bool)

(assert (=> d!16605 (=> res!14832 e!16438)))

(assert (=> d!16605 (= res!14832 (not (is-CC!73 xs!589)))))

(assert (=> d!16605 (= (balanced!67 xs!589) e!16438)))

(assert (= (and d!16605 (not res!14832)) b!32303))

(assert (= (and b!32303 res!14834) b!32304))

(assert (= (and b!32304 res!14833) b!32305))

(assert (= (and b!32305 res!14835) b!32306))

(declare-fun m!35027 () Bool)

(assert (=> b!32306 m!35027))

(declare-fun m!35029 () Bool)

(assert (=> b!32304 m!35029))

(declare-fun m!35031 () Bool)

(assert (=> b!32304 m!35031))

(assert (=> b!32303 m!35029))

(assert (=> b!32303 m!35031))

(declare-fun m!35033 () Bool)

(assert (=> b!32305 m!35033))

(assert (=> b!32244 d!16605))

(declare-fun d!16607 () Bool)

(assert (=> d!16607 (= (isEmpty!328 xs!586) (= xs!586 Empty!84))))

(assert (=> b!32240 d!16607))

(declare-fun d!16609 () Bool)

(assert (=> d!16609 (= (isEmpty!328 xs!589) (= xs!589 Empty!84))))

(assert (=> b!32245 d!16609))

(declare-fun b!32313 () Bool)

(declare-fun e!16442 () Bool)

(declare-fun tp!6696 () Bool)

(declare-fun tp!6697 () Bool)

(assert (=> b!32313 (= e!16442 (and tp!6696 tp!6697))))

(declare-fun b!32314 () Bool)

(assert (=> b!32314 (= e!16442 tp_is_empty!193)))

(assert (=> b!32250 (= tp!6689 e!16442)))

(assert (= (and b!32250 (is-CC!73 (left!718 xs!589))) b!32313))

(assert (= (and b!32250 (is-Single!73 (left!718 xs!589))) b!32314))

(declare-fun b!32315 () Bool)

(declare-fun e!16443 () Bool)

(declare-fun tp!6698 () Bool)

(declare-fun tp!6699 () Bool)

(assert (=> b!32315 (= e!16443 (and tp!6698 tp!6699))))

(declare-fun b!32316 () Bool)

(assert (=> b!32316 (= e!16443 tp_is_empty!193)))

(assert (=> b!32250 (= tp!6691 e!16443)))

(assert (= (and b!32250 (is-CC!73 (right!721 xs!589))) b!32315))

(assert (= (and b!32250 (is-Single!73 (right!721 xs!589))) b!32316))

(declare-fun b!32317 () Bool)

(declare-fun e!16444 () Bool)

(declare-fun tp!6700 () Bool)

(declare-fun tp!6701 () Bool)

(assert (=> b!32317 (= e!16444 (and tp!6700 tp!6701))))

(declare-fun b!32318 () Bool)

(assert (=> b!32318 (= e!16444 tp_is_empty!193)))

(assert (=> b!32254 (= tp!6688 e!16444)))

(assert (= (and b!32254 (is-CC!73 (left!718 xs!586))) b!32317))

(assert (= (and b!32254 (is-Single!73 (left!718 xs!586))) b!32318))

(declare-fun b!32319 () Bool)

(declare-fun e!16445 () Bool)

(declare-fun tp!6702 () Bool)

(declare-fun tp!6703 () Bool)

(assert (=> b!32319 (= e!16445 (and tp!6702 tp!6703))))

(declare-fun b!32320 () Bool)

(assert (=> b!32320 (= e!16445 tp_is_empty!193)))

(assert (=> b!32254 (= tp!6690 e!16445)))

(assert (= (and b!32254 (is-CC!73 (right!721 xs!586))) b!32319))

(assert (= (and b!32254 (is-Single!73 (right!721 xs!586))) b!32320))

(push 1)

(assert (not b!32305))

(assert tp_is_empty!193)

(assert (not b!32269))

(assert (not b!32263))

(assert (not b!32319))

(assert (not b!32270))

(assert (not b!32292))

(assert (not b!32317))

(assert (not b!32315))

(assert (not b!32306))

(assert (not b!32268))

(assert (not b!32293))

(assert (not b!32298))

(assert (not b!32303))

(assert (not b!32282))

(assert (not b!32294))

(assert (not b!32264))

(assert (not b!32267))

(assert (not b!32265))

(assert (not b!32266))

(assert (not b!32302))

(assert (not b!32304))

(assert (not b!32313))

(assert (not b!32291))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

