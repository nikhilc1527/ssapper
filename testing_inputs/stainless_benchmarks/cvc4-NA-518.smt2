; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3614 () Bool)

(assert start!3614)

(declare-fun res!10297 () Bool)

(declare-fun e!12084 () Bool)

(assert (=> start!3614 (=> (not res!10297) (not e!12084))))

(declare-datatypes () ((T!1791 (T!1792 (val!68 Int)))))

(declare-datatypes () ((Conc!45 (CC!44 (left!689 Conc!45) (right!692 Conc!45)) (Single!44 (x!8841 T!1791)) (Empty!55))))

(declare-fun xs!572 () Conc!45)

(declare-fun concInv!41 (Conc!45) Bool)

(assert (=> start!3614 (= res!10297 (concInv!41 xs!572))))

(assert (=> start!3614 e!12084))

(declare-fun tp_is_empty!135 () Bool)

(assert (=> start!3614 tp_is_empty!135))

(assert (=> start!3614 true))

(declare-fun e!12086 () Bool)

(assert (=> start!3614 e!12086))

(declare-fun e!12085 () Bool)

(assert (=> start!3614 e!12085))

(declare-fun b!23245 () Bool)

(declare-fun res!10301 () Bool)

(assert (=> b!23245 (=> (not res!10301) (not e!12084))))

(declare-fun isEmpty!304 (Conc!45) Bool)

(assert (=> b!23245 (= res!10301 (not (isEmpty!304 xs!572)))))

(declare-fun b!23246 () Bool)

(declare-fun res!10300 () Bool)

(assert (=> b!23246 (=> (not res!10300) (not e!12084))))

(declare-fun res!5557 () T!1791)

(declare-fun i!252 () Int)

(declare-fun lookup!6 (Conc!45 Int) T!1791)

(declare-fun size!248 (Conc!45) Int)

(assert (=> b!23246 (= res!10300 (= res!5557 (lookup!6 (right!692 xs!572) (- i!252 (size!248 (left!689 xs!572))))))))

(declare-fun b!23247 () Bool)

(declare-fun res!10294 () Bool)

(assert (=> b!23247 (=> (not res!10294) (not e!12084))))

(declare-fun instAppendIndexAxiom!5 (Conc!45 Int) Bool)

(assert (=> b!23247 (= res!10294 (instAppendIndexAxiom!5 xs!572 i!252))))

(declare-fun b!23248 () Bool)

(declare-fun res!10299 () Bool)

(assert (=> b!23248 (=> (not res!10299) (not e!12084))))

(assert (=> b!23248 (= res!10299 (< i!252 (size!248 xs!572)))))

(declare-fun b!23249 () Bool)

(declare-fun e!12087 () Bool)

(declare-fun index!12 () Int)

(declare-datatypes () ((List!349 (Cons!343 (h!257 T!1791) (t!4344 List!349)) (Nil!344))))

(declare-fun thiss!2726 () List!349)

(declare-fun size!249 (List!349) Int)

(assert (=> b!23249 (= e!12087 (>= index!12 (size!249 thiss!2726)))))

(declare-fun b!23250 () Bool)

(declare-fun res!10303 () Bool)

(assert (=> b!23250 (=> (not res!10303) (not e!12084))))

(declare-fun balanced!42 (Conc!45) Bool)

(assert (=> b!23250 (= res!10303 (balanced!42 xs!572))))

(declare-fun b!23251 () Bool)

(declare-fun res!10292 () Bool)

(assert (=> b!23251 (=> (not res!10292) (not e!12084))))

(declare-fun toList!104 (Conc!45) List!349)

(assert (=> b!23251 (= res!10292 (= thiss!2726 (toList!104 xs!572)))))

(declare-fun b!23252 () Bool)

(declare-fun res!10296 () Bool)

(assert (=> b!23252 (=> (not res!10296) (not e!12084))))

(assert (=> b!23252 (= res!10296 (>= i!252 (size!248 (left!689 xs!572))))))

(declare-fun b!23253 () Bool)

(declare-fun tp!5094 () Bool)

(assert (=> b!23253 (= e!12085 (and tp_is_empty!135 tp!5094))))

(declare-fun b!23254 () Bool)

(declare-fun res!10302 () Bool)

(assert (=> b!23254 (=> (not res!10302) (not e!12084))))

(assert (=> b!23254 (= res!10302 (= index!12 i!252))))

(declare-fun b!23255 () Bool)

(assert (=> b!23255 (= e!12084 e!12087)))

(declare-fun res!10293 () Bool)

(assert (=> b!23255 (=> res!10293 e!12087)))

(assert (=> b!23255 (= res!10293 (> 0 index!12))))

(declare-fun b!23256 () Bool)

(declare-fun tp!5092 () Bool)

(declare-fun tp!5093 () Bool)

(assert (=> b!23256 (= e!12086 (and tp!5092 tp!5093))))

(declare-fun b!23257 () Bool)

(declare-fun res!10298 () Bool)

(assert (=> b!23257 (=> (not res!10298) (not e!12084))))

(assert (=> b!23257 (= res!10298 (not (is-Single!44 xs!572)))))

(declare-fun b!23258 () Bool)

(declare-fun res!10295 () Bool)

(assert (=> b!23258 (=> (not res!10295) (not e!12084))))

(assert (=> b!23258 (= res!10295 (>= i!252 0))))

(declare-fun b!23259 () Bool)

(assert (=> b!23259 (= e!12086 tp_is_empty!135)))

(assert (= (and start!3614 res!10297) b!23250))

(assert (= (and b!23250 res!10303) b!23245))

(assert (= (and b!23245 res!10301) b!23258))

(assert (= (and b!23258 res!10295) b!23248))

(assert (= (and b!23248 res!10299) b!23257))

(assert (= (and b!23257 res!10298) b!23252))

(assert (= (and b!23252 res!10296) b!23246))

(assert (= (and b!23246 res!10300) b!23247))

(assert (= (and b!23247 res!10294) b!23251))

(assert (= (and b!23251 res!10292) b!23254))

(assert (= (and b!23254 res!10302) b!23255))

(assert (= (and b!23255 (not res!10293)) b!23249))

(assert (= (and start!3614 (is-CC!44 xs!572)) b!23256))

(assert (= (and start!3614 (is-Single!44 xs!572)) b!23259))

(assert (= (and start!3614 (is-Cons!343 thiss!2726)) b!23253))

(declare-fun m!24855 () Bool)

(assert (=> b!23251 m!24855))

(declare-fun m!24857 () Bool)

(assert (=> b!23247 m!24857))

(declare-fun m!24859 () Bool)

(assert (=> b!23246 m!24859))

(declare-fun m!24861 () Bool)

(assert (=> b!23246 m!24861))

(declare-fun m!24863 () Bool)

(assert (=> b!23245 m!24863))

(assert (=> b!23252 m!24859))

(declare-fun m!24865 () Bool)

(assert (=> b!23249 m!24865))

(declare-fun m!24867 () Bool)

(assert (=> b!23250 m!24867))

(declare-fun m!24869 () Bool)

(assert (=> b!23248 m!24869))

(declare-fun m!24871 () Bool)

(assert (=> start!3614 m!24871))

(push 1)

(assert (not start!3614))

(assert (not b!23245))

(assert (not b!23251))

(assert (not b!23256))

(assert (not b!23252))

(assert tp_is_empty!135)

(assert (not b!23246))

(assert (not b!23247))

(assert (not b!23250))

(assert (not b!23249))

(assert (not b!23248))

(assert (not b!23253))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!23268 () Bool)

(declare-fun e!12092 () Bool)

(declare-fun e!12093 () Bool)

(assert (=> b!23268 (= e!12092 e!12093)))

(declare-fun res!10315 () Bool)

(assert (=> b!23268 (=> (not res!10315) (not e!12093))))

(declare-fun level!36 (Conc!45) Int)

(assert (=> b!23268 (= res!10315 (>= (- (level!36 (left!689 xs!572)) (level!36 (right!692 xs!572))) (- 1)))))

(declare-fun b!23271 () Bool)

(assert (=> b!23271 (= e!12093 (balanced!42 (right!692 xs!572)))))

(declare-fun d!13275 () Bool)

(declare-fun res!10312 () Bool)

(assert (=> d!13275 (=> res!10312 e!12092)))

(assert (=> d!13275 (= res!10312 (not (is-CC!44 xs!572)))))

(assert (=> d!13275 (= (balanced!42 xs!572) e!12092)))

(declare-fun b!23270 () Bool)

(declare-fun res!10314 () Bool)

(assert (=> b!23270 (=> (not res!10314) (not e!12093))))

(assert (=> b!23270 (= res!10314 (balanced!42 (left!689 xs!572)))))

(declare-fun b!23269 () Bool)

(declare-fun res!10313 () Bool)

(assert (=> b!23269 (=> (not res!10313) (not e!12093))))

(assert (=> b!23269 (= res!10313 (<= (- (level!36 (left!689 xs!572)) (level!36 (right!692 xs!572))) 1))))

(assert (= (and d!13275 (not res!10312)) b!23268))

(assert (= (and b!23268 res!10315) b!23269))

(assert (= (and b!23269 res!10313) b!23270))

(assert (= (and b!23270 res!10314) b!23271))

(declare-fun m!24873 () Bool)

(assert (=> b!23268 m!24873))

(declare-fun m!24875 () Bool)

(assert (=> b!23268 m!24875))

(declare-fun m!24877 () Bool)

(assert (=> b!23271 m!24877))

(declare-fun m!24879 () Bool)

(assert (=> b!23270 m!24879))

(assert (=> b!23269 m!24873))

(assert (=> b!23269 m!24875))

(assert (=> b!23250 d!13275))

(declare-fun b!23283 () Bool)

(declare-fun e!12098 () Int)

(assert (=> b!23283 (= e!12098 (+ (size!248 (left!689 xs!572)) (size!248 (right!692 xs!572))))))

(declare-fun d!13277 () Bool)

(declare-fun lt!3610 () Int)

(assert (=> d!13277 (>= lt!3610 0)))

(declare-fun e!12099 () Int)

(assert (=> d!13277 (= lt!3610 e!12099)))

(declare-fun c!5436 () Bool)

(assert (=> d!13277 (= c!5436 (is-Empty!55 xs!572))))

(assert (=> d!13277 (= (size!248 xs!572) lt!3610)))

(declare-fun b!23282 () Bool)

(assert (=> b!23282 (= e!12098 1)))

(declare-fun b!23281 () Bool)

(assert (=> b!23281 (= e!12099 e!12098)))

(declare-fun c!5437 () Bool)

(assert (=> b!23281 (= c!5437 (is-Single!44 xs!572))))

(declare-fun b!23280 () Bool)

(assert (=> b!23280 (= e!12099 0)))

(assert (= (and b!23281 c!5437) b!23282))

(assert (= (and b!23281 (not c!5437)) b!23283))

(assert (= (and d!13277 c!5436) b!23280))

(assert (= (and d!13277 (not c!5436)) b!23281))

(assert (=> b!23283 m!24859))

(declare-fun m!24881 () Bool)

(assert (=> b!23283 m!24881))

(assert (=> b!23248 d!13277))

(declare-fun d!13279 () Bool)

(declare-fun lt!3613 () List!349)

(assert (=> d!13279 (= (size!249 lt!3613) (size!248 xs!572))))

(declare-fun e!12104 () List!349)

(assert (=> d!13279 (= lt!3613 e!12104)))

(declare-fun c!5443 () Bool)

(assert (=> d!13279 (= c!5443 (is-Empty!55 xs!572))))

(assert (=> d!13279 (= (toList!104 xs!572) lt!3613)))

(declare-fun b!23295 () Bool)

(declare-fun e!12105 () List!349)

(declare-fun ++!29 (List!349 List!349) List!349)

(assert (=> b!23295 (= e!12105 (++!29 (toList!104 (left!689 xs!572)) (toList!104 (right!692 xs!572))))))

(declare-fun b!23292 () Bool)

(assert (=> b!23292 (= e!12104 Nil!344)))

(declare-fun b!23294 () Bool)

(assert (=> b!23294 (= e!12105 (Cons!343 (x!8841 xs!572) Nil!344))))

(declare-fun b!23293 () Bool)

(assert (=> b!23293 (= e!12104 e!12105)))

(declare-fun c!5442 () Bool)

(assert (=> b!23293 (= c!5442 (is-Single!44 xs!572))))

(assert (= (and b!23293 c!5442) b!23294))

(assert (= (and b!23293 (not c!5442)) b!23295))

(assert (= (and d!13279 c!5443) b!23292))

(assert (= (and d!13279 (not c!5443)) b!23293))

(declare-fun m!24883 () Bool)

(assert (=> d!13279 m!24883))

(assert (=> d!13279 m!24869))

(declare-fun m!24885 () Bool)

(assert (=> b!23295 m!24885))

(declare-fun m!24887 () Bool)

(assert (=> b!23295 m!24887))

(assert (=> b!23295 m!24885))

(assert (=> b!23295 m!24887))

(declare-fun m!24889 () Bool)

(assert (=> b!23295 m!24889))

(assert (=> b!23251 d!13279))

(declare-fun d!13281 () Bool)

(declare-fun lt!3616 () Int)

(assert (=> d!13281 (>= lt!3616 0)))

(declare-fun e!12108 () Int)

(assert (=> d!13281 (= lt!3616 e!12108)))

(declare-fun c!5446 () Bool)

(assert (=> d!13281 (= c!5446 (is-Nil!344 thiss!2726))))

(assert (=> d!13281 (= (size!249 thiss!2726) lt!3616)))

(declare-fun b!23300 () Bool)

(assert (=> b!23300 (= e!12108 0)))

(declare-fun b!23301 () Bool)

(assert (=> b!23301 (= e!12108 (+ 1 (size!249 (t!4344 thiss!2726))))))

(assert (= (and d!13281 c!5446) b!23300))

(assert (= (and d!13281 (not c!5446)) b!23301))

(declare-fun m!24891 () Bool)

(assert (=> b!23301 m!24891))

(assert (=> b!23249 d!13281))

(declare-fun d!13283 () Bool)

(assert (=> d!13283 (= (isEmpty!304 xs!572) (= xs!572 Empty!55))))

(assert (=> b!23245 d!13283))

(declare-fun d!13285 () Bool)

(declare-fun e!12120 () Bool)

(assert (=> d!13285 e!12120))

(declare-fun res!10329 () Bool)

(assert (=> d!13285 (=> (not res!10329) (not e!12120))))

(assert (=> d!13285 (= res!10329 (instAppendIndexAxiom!5 (right!692 xs!572) (- i!252 (size!248 (left!689 xs!572)))))))

(declare-fun lt!3619 () T!1791)

(declare-fun e!12122 () T!1791)

(assert (=> d!13285 (= lt!3619 e!12122)))

(declare-fun c!5451 () Bool)

(assert (=> d!13285 (= c!5451 (is-Single!44 (right!692 xs!572)))))

(declare-fun e!12123 () Bool)

(assert (=> d!13285 e!12123))

(declare-fun res!10331 () Bool)

(assert (=> d!13285 (=> (not res!10331) (not e!12123))))

(declare-fun e!12119 () Bool)

(assert (=> d!13285 (= res!10331 e!12119)))

(declare-fun res!10330 () Bool)

(assert (=> d!13285 (=> (not res!10330) (not e!12119))))

(assert (=> d!13285 (= res!10330 (concInv!41 (right!692 xs!572)))))

(assert (=> d!13285 (= (lookup!6 (right!692 xs!572) (- i!252 (size!248 (left!689 xs!572)))) lt!3619)))

(declare-fun b!23320 () Bool)

(declare-fun apply!44 (List!349 Int) T!1791)

(assert (=> b!23320 (= e!12120 (= lt!3619 (apply!44 (toList!104 (right!692 xs!572)) (- i!252 (size!248 (left!689 xs!572))))))))

(declare-fun b!23321 () Bool)

(declare-fun res!10332 () Bool)

(assert (=> b!23321 (=> (not res!10332) (not e!12123))))

(assert (=> b!23321 (= res!10332 (not (isEmpty!304 (right!692 xs!572))))))

(declare-fun b!23322 () Bool)

(assert (=> b!23322 (= e!12123 (< (- i!252 (size!248 (left!689 xs!572))) (size!248 (right!692 xs!572))))))

(declare-fun b!23323 () Bool)

(assert (=> b!23323 (= e!12119 (balanced!42 (right!692 xs!572)))))

(declare-fun b!23324 () Bool)

(declare-fun e!12121 () T!1791)

(assert (=> b!23324 (= e!12122 e!12121)))

(declare-fun c!5452 () Bool)

(assert (=> b!23324 (= c!5452 (< (- i!252 (size!248 (left!689 xs!572))) (size!248 (left!689 (right!692 xs!572)))))))

(declare-fun b!23325 () Bool)

(assert (=> b!23325 (= e!12121 (lookup!6 (right!692 (right!692 xs!572)) (- (- i!252 (size!248 (left!689 xs!572))) (size!248 (left!689 (right!692 xs!572))))))))

(declare-fun b!23326 () Bool)

(assert (=> b!23326 (= e!12122 (x!8841 (right!692 xs!572)))))

(declare-fun b!23327 () Bool)

(assert (=> b!23327 (= e!12121 (lookup!6 (left!689 (right!692 xs!572)) (- i!252 (size!248 (left!689 xs!572)))))))

(declare-fun b!23328 () Bool)

(declare-fun res!10328 () Bool)

(assert (=> b!23328 (=> (not res!10328) (not e!12123))))

(assert (=> b!23328 (= res!10328 (>= (- i!252 (size!248 (left!689 xs!572))) 0))))

(assert (= (and d!13285 res!10330) b!23323))

(assert (= (and d!13285 res!10331) b!23321))

(assert (= (and b!23321 res!10332) b!23328))

(assert (= (and b!23328 res!10328) b!23322))

(assert (= (and b!23324 c!5452) b!23327))

(assert (= (and b!23324 (not c!5452)) b!23325))

(assert (= (and d!13285 c!5451) b!23326))

(assert (= (and d!13285 (not c!5451)) b!23324))

(assert (= (and d!13285 res!10329) b!23320))

(declare-fun m!24893 () Bool)

(assert (=> b!23321 m!24893))

(assert (=> b!23320 m!24887))

(assert (=> b!23320 m!24887))

(declare-fun m!24895 () Bool)

(assert (=> b!23320 m!24895))

(declare-fun m!24897 () Bool)

(assert (=> b!23327 m!24897))

(assert (=> b!23322 m!24881))

(declare-fun m!24899 () Bool)

(assert (=> b!23325 m!24899))

(declare-fun m!24901 () Bool)

(assert (=> b!23325 m!24901))

(assert (=> b!23324 m!24899))

(declare-fun m!24903 () Bool)

(assert (=> d!13285 m!24903))

(declare-fun m!24905 () Bool)

(assert (=> d!13285 m!24905))

(assert (=> b!23323 m!24877))

(assert (=> b!23246 d!13285))

(declare-fun b!23332 () Bool)

(declare-fun e!12124 () Int)

(assert (=> b!23332 (= e!12124 (+ (size!248 (left!689 (left!689 xs!572))) (size!248 (right!692 (left!689 xs!572)))))))

(declare-fun d!13287 () Bool)

(declare-fun lt!3620 () Int)

(assert (=> d!13287 (>= lt!3620 0)))

(declare-fun e!12125 () Int)

(assert (=> d!13287 (= lt!3620 e!12125)))

(declare-fun c!5453 () Bool)

(assert (=> d!13287 (= c!5453 (is-Empty!55 (left!689 xs!572)))))

(assert (=> d!13287 (= (size!248 (left!689 xs!572)) lt!3620)))

(declare-fun b!23331 () Bool)

(assert (=> b!23331 (= e!12124 1)))

(declare-fun b!23330 () Bool)

(assert (=> b!23330 (= e!12125 e!12124)))

(declare-fun c!5454 () Bool)

(assert (=> b!23330 (= c!5454 (is-Single!44 (left!689 xs!572)))))

(declare-fun b!23329 () Bool)

(assert (=> b!23329 (= e!12125 0)))

(assert (= (and b!23330 c!5454) b!23331))

(assert (= (and b!23330 (not c!5454)) b!23332))

(assert (= (and d!13287 c!5453) b!23329))

(assert (= (and d!13287 (not c!5453)) b!23330))

(declare-fun m!24907 () Bool)

(assert (=> b!23332 m!24907))

(declare-fun m!24909 () Bool)

(assert (=> b!23332 m!24909))

(assert (=> b!23246 d!13287))

(declare-fun d!13289 () Bool)

(declare-fun res!10342 () Bool)

(declare-fun e!12131 () Bool)

(assert (=> d!13289 (=> res!10342 e!12131)))

(assert (=> d!13289 (= res!10342 (not (is-CC!44 xs!572)))))

(assert (=> d!13289 (= (concInv!41 xs!572) e!12131)))

(declare-fun b!23344 () Bool)

(declare-fun e!12130 () Bool)

(assert (=> b!23344 (= e!12130 (concInv!41 (right!692 xs!572)))))

(declare-fun b!23342 () Bool)

(declare-fun res!10344 () Bool)

(assert (=> b!23342 (=> (not res!10344) (not e!12130))))

(assert (=> b!23342 (= res!10344 (not (isEmpty!304 (right!692 xs!572))))))

(declare-fun b!23343 () Bool)

(declare-fun res!10343 () Bool)

(assert (=> b!23343 (=> (not res!10343) (not e!12130))))

(assert (=> b!23343 (= res!10343 (concInv!41 (left!689 xs!572)))))

(declare-fun b!23341 () Bool)

(assert (=> b!23341 (= e!12131 e!12130)))

(declare-fun res!10341 () Bool)

(assert (=> b!23341 (=> (not res!10341) (not e!12130))))

(assert (=> b!23341 (= res!10341 (not (isEmpty!304 (left!689 xs!572))))))

(assert (= (and d!13289 (not res!10342)) b!23341))

(assert (= (and b!23341 res!10341) b!23342))

(assert (= (and b!23342 res!10344) b!23343))

(assert (= (and b!23343 res!10343) b!23344))

(assert (=> b!23344 m!24905))

(assert (=> b!23342 m!24893))

(declare-fun m!24911 () Bool)

(assert (=> b!23343 m!24911))

(declare-fun m!24913 () Bool)

(assert (=> b!23341 m!24913))

(assert (=> start!3614 d!13289))

(declare-fun d!13291 () Bool)

(declare-fun e!12137 () Bool)

(assert (=> d!13291 e!12137))

(declare-fun res!10350 () Bool)

(assert (=> d!13291 (=> res!10350 e!12137)))

(assert (=> d!13291 (= res!10350 (not (is-CC!44 xs!572)))))

(declare-fun e!12136 () Bool)

(assert (=> d!13291 e!12136))

(declare-fun res!10349 () Bool)

(assert (=> d!13291 (=> (not res!10349) (not e!12136))))

(assert (=> d!13291 (= res!10349 (<= 0 i!252))))

(assert (=> d!13291 (= (instAppendIndexAxiom!5 xs!572 i!252) true)))

(declare-fun b!23349 () Bool)

(assert (=> b!23349 (= e!12136 (< i!252 (size!248 xs!572)))))

(declare-fun b!23350 () Bool)

(declare-fun appendIndex!4 (List!349 List!349 Int) Bool)

(assert (=> b!23350 (= e!12137 (appendIndex!4 (toList!104 (left!689 xs!572)) (toList!104 (right!692 xs!572)) i!252))))

(assert (= (and d!13291 res!10349) b!23349))

(assert (= (and d!13291 (not res!10350)) b!23350))

(assert (=> b!23349 m!24869))

(assert (=> b!23350 m!24885))

(assert (=> b!23350 m!24887))

(assert (=> b!23350 m!24885))

(assert (=> b!23350 m!24887))

(declare-fun m!24915 () Bool)

(assert (=> b!23350 m!24915))

(assert (=> b!23247 d!13291))

(assert (=> b!23252 d!13287))

(declare-fun b!23357 () Bool)

(declare-fun e!12140 () Bool)

(declare-fun tp!5099 () Bool)

(declare-fun tp!5100 () Bool)

(assert (=> b!23357 (= e!12140 (and tp!5099 tp!5100))))

(declare-fun b!23358 () Bool)

(assert (=> b!23358 (= e!12140 tp_is_empty!135)))

(assert (=> b!23256 (= tp!5092 e!12140)))

(assert (= (and b!23256 (is-CC!44 (left!689 xs!572))) b!23357))

(assert (= (and b!23256 (is-Single!44 (left!689 xs!572))) b!23358))

(declare-fun b!23359 () Bool)

(declare-fun e!12141 () Bool)

(declare-fun tp!5101 () Bool)

(declare-fun tp!5102 () Bool)

(assert (=> b!23359 (= e!12141 (and tp!5101 tp!5102))))

(declare-fun b!23360 () Bool)

(assert (=> b!23360 (= e!12141 tp_is_empty!135)))

(assert (=> b!23256 (= tp!5093 e!12141)))

(assert (= (and b!23256 (is-CC!44 (right!692 xs!572))) b!23359))

(assert (= (and b!23256 (is-Single!44 (right!692 xs!572))) b!23360))

(declare-fun b!23365 () Bool)

(declare-fun e!12144 () Bool)

(declare-fun tp!5105 () Bool)

(assert (=> b!23365 (= e!12144 (and tp_is_empty!135 tp!5105))))

(assert (=> b!23253 (= tp!5094 e!12144)))

(assert (= (and b!23253 (is-Cons!343 (t!4344 thiss!2726))) b!23365))

(push 1)

(assert (not b!23324))

(assert (not b!23343))

(assert (not b!23270))

(assert (not b!23268))

(assert (not b!23341))

(assert (not b!23320))

(assert (not b!23344))

(assert (not b!23325))

(assert (not b!23359))

(assert (not b!23271))

(assert (not b!23323))

(assert (not b!23349))

(assert (not b!23357))

(assert (not b!23295))

(assert (not b!23301))

(assert tp_is_empty!135)

(assert (not d!13285))

(assert (not b!23365))

(assert (not b!23342))

(assert (not b!23321))

(assert (not d!13279))

(assert (not b!23332))

(assert (not b!23350))

(assert (not b!23327))

(assert (not b!23322))

(assert (not b!23283))

(assert (not b!23269))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

