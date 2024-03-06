; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8692 () Bool)

(assert start!8692)

(declare-fun b!60186 () Bool)

(declare-fun e!32119 () Bool)

(declare-fun e!32120 () Bool)

(assert (=> b!60186 (= e!32119 e!32120)))

(declare-fun res!27992 () Bool)

(assert (=> b!60186 (=> (not res!27992) (not e!32120))))

(declare-datatypes () ((List!539 (Cons!505 (head!849 (_ BitVec 32)) (tail!875 List!539)) (Nil!506))))

(declare-datatypes () ((LList!15 (LNil!14) (LCons!14 (head!850 List!539) (tail!876 LList!15)))))

(declare-fun llist!36 () LList!15)

(declare-fun lSize!0 (LList!15) Int)

(assert (=> b!60186 (= res!27992 (> (lSize!0 llist!36) 1))))

(declare-fun b!60187 () Bool)

(declare-fun res!27990 () Bool)

(declare-fun e!32121 () Bool)

(assert (=> b!60187 (=> (not res!27990) (not e!32121))))

(assert (=> b!60187 (= res!27990 (and (not (is-LNil!14 llist!36)) (not (is-LNil!14 (tail!876 llist!36)))))))

(declare-fun res!27991 () Bool)

(assert (=> start!8692 (=> (not res!27991) (not e!32121))))

(declare-fun lIsSorted!0 (LList!15) Bool)

(assert (=> start!8692 (= res!27991 (lIsSorted!0 llist!36))))

(assert (=> start!8692 e!32121))

(assert (=> start!8692 true))

(declare-fun b!60188 () Bool)

(declare-fun res!27989 () Bool)

(assert (=> b!60188 (=> res!27989 e!32119)))

(declare-fun res!27412 () LList!15)

(assert (=> b!60188 (= res!27989 (not (lIsSorted!0 res!27412)))))

(declare-fun b!60189 () Bool)

(declare-fun res!27988 () Bool)

(assert (=> b!60189 (=> (not res!27988) (not e!32121))))

(declare-fun mergeFast!0 (List!539 List!539) List!539)

(declare-fun mergeMap!0 (LList!15) LList!15)

(assert (=> b!60189 (= res!27988 (= res!27412 (LCons!14 (mergeFast!0 (head!850 llist!36) (head!850 (tail!876 llist!36))) (mergeMap!0 (tail!876 (tail!876 llist!36))))))))

(declare-fun b!60190 () Bool)

(assert (=> b!60190 (= e!32121 e!32119)))

(declare-fun res!27993 () Bool)

(assert (=> b!60190 (=> res!27993 e!32119)))

(declare-fun lContent!0 (LList!15) (Set (_ BitVec 32)))

(assert (=> b!60190 (= res!27993 (not (= (lContent!0 res!27412) (lContent!0 llist!36))))))

(declare-fun b!60191 () Bool)

(assert (=> b!60191 (= e!32120 (>= (lSize!0 res!27412) (lSize!0 llist!36)))))

(assert (= (and start!8692 res!27991) b!60187))

(assert (= (and b!60187 res!27990) b!60189))

(assert (= (and b!60189 res!27988) b!60190))

(assert (= (and b!60190 (not res!27993)) b!60188))

(assert (= (and b!60188 (not res!27989)) b!60186))

(assert (= (and b!60186 res!27992) b!60191))

(declare-fun m!65020 () Bool)

(assert (=> b!60188 m!65020))

(declare-fun m!65022 () Bool)

(assert (=> b!60191 m!65022))

(declare-fun m!65024 () Bool)

(assert (=> b!60191 m!65024))

(declare-fun m!65026 () Bool)

(assert (=> b!60190 m!65026))

(declare-fun m!65028 () Bool)

(assert (=> b!60190 m!65028))

(declare-fun m!65030 () Bool)

(assert (=> b!60189 m!65030))

(declare-fun m!65032 () Bool)

(assert (=> b!60189 m!65032))

(declare-fun m!65034 () Bool)

(assert (=> start!8692 m!65034))

(assert (=> b!60186 m!65024))

(push 1)

(assert (not b!60186))

(assert (not b!60188))

(assert (not b!60190))

(assert (not b!60191))

(assert (not start!8692))

(assert (not b!60189))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!51393 () Bool)

(declare-fun res!27998 () Bool)

(declare-fun e!32126 () Bool)

(assert (=> d!51393 (=> res!27998 e!32126)))

(assert (=> d!51393 (= res!27998 (is-LNil!14 llist!36))))

(assert (=> d!51393 (= (lIsSorted!0 llist!36) e!32126)))

(declare-fun b!60196 () Bool)

(declare-fun e!32127 () Bool)

(assert (=> b!60196 (= e!32126 e!32127)))

(declare-fun res!27999 () Bool)

(assert (=> b!60196 (=> (not res!27999) (not e!32127))))

(declare-fun isSorted!4 (List!539) Bool)

(assert (=> b!60196 (= res!27999 (isSorted!4 (head!850 llist!36)))))

(declare-fun b!60197 () Bool)

(assert (=> b!60197 (= e!32127 (lIsSorted!0 (tail!876 llist!36)))))

(assert (= (and d!51393 (not res!27998)) b!60196))

(assert (= (and b!60196 res!27999) b!60197))

(declare-fun m!65036 () Bool)

(assert (=> b!60196 m!65036))

(declare-fun m!65038 () Bool)

(assert (=> b!60197 m!65038))

(assert (=> start!8692 d!51393))

(declare-fun d!51395 () Bool)

(declare-fun c!13044 () Bool)

(assert (=> d!51395 (= c!13044 (is-LNil!14 res!27412))))

(declare-fun e!32130 () (Set (_ BitVec 32)))

(assert (=> d!51395 (= (lContent!0 res!27412) e!32130)))

(declare-fun b!60202 () Bool)

(assert (=> b!60202 (= e!32130 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!60203 () Bool)

(declare-fun content!15 (List!539) (Set (_ BitVec 32)))

(assert (=> b!60203 (= e!32130 (union (content!15 (head!850 res!27412)) (lContent!0 (tail!876 res!27412))))))

(assert (= (and d!51395 c!13044) b!60202))

(assert (= (and d!51395 (not c!13044)) b!60203))

(declare-fun m!65040 () Bool)

(assert (=> b!60203 m!65040))

(declare-fun m!65042 () Bool)

(assert (=> b!60203 m!65042))

(assert (=> b!60190 d!51395))

(declare-fun d!51397 () Bool)

(declare-fun c!13045 () Bool)

(assert (=> d!51397 (= c!13045 (is-LNil!14 llist!36))))

(declare-fun e!32131 () (Set (_ BitVec 32)))

(assert (=> d!51397 (= (lContent!0 llist!36) e!32131)))

(declare-fun b!60204 () Bool)

(assert (=> b!60204 (= e!32131 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!60205 () Bool)

(assert (=> b!60205 (= e!32131 (union (content!15 (head!850 llist!36)) (lContent!0 (tail!876 llist!36))))))

(assert (= (and d!51397 c!13045) b!60204))

(assert (= (and d!51397 (not c!13045)) b!60205))

(declare-fun m!65044 () Bool)

(assert (=> b!60205 m!65044))

(declare-fun m!65046 () Bool)

(assert (=> b!60205 m!65046))

(assert (=> b!60190 d!51397))

(declare-fun b!60216 () Bool)

(declare-fun e!32138 () Bool)

(assert (=> b!60216 (= e!32138 (isSorted!4 (head!850 (tail!876 llist!36))))))

(declare-fun b!60217 () Bool)

(declare-fun e!32139 () List!539)

(assert (=> b!60217 (= e!32139 (head!850 (tail!876 llist!36)))))

(declare-fun b!60218 () Bool)

(declare-fun e!32140 () List!539)

(assert (=> b!60218 (= e!32140 (head!850 llist!36))))

(declare-fun b!60219 () Bool)

(assert (=> b!60219 (= e!32140 e!32139)))

(declare-fun c!13051 () Bool)

(assert (=> b!60219 (= c!13051 (is-Nil!506 (head!850 llist!36)))))

(declare-fun d!51399 () Bool)

(declare-fun lt!11128 () List!539)

(declare-fun mergeSpec!0 (List!539 List!539 List!539) Bool)

(assert (=> d!51399 (mergeSpec!0 (head!850 llist!36) (head!850 (tail!876 llist!36)) lt!11128)))

(assert (=> d!51399 (= lt!11128 e!32140)))

(declare-fun c!13050 () Bool)

(assert (=> d!51399 (= c!13050 (is-Nil!506 (head!850 (tail!876 llist!36))))))

(assert (=> d!51399 e!32138))

(declare-fun res!28006 () Bool)

(assert (=> d!51399 (=> (not res!28006) (not e!32138))))

(assert (=> d!51399 (= res!28006 (isSorted!4 (head!850 llist!36)))))

(assert (=> d!51399 (= (mergeFast!0 (head!850 llist!36) (head!850 (tail!876 llist!36))) lt!11128)))

(declare-fun b!60220 () Bool)

(declare-fun lt!11127 () List!539)

(declare-fun lt!11129 () Bool)

(assert (=> b!60220 (= e!32139 (ite lt!11129 (Cons!505 (head!849 (head!850 llist!36)) lt!11127) (Cons!505 (head!849 (head!850 (tail!876 llist!36))) lt!11127)))))

(assert (=> b!60220 (= lt!11127 (mergeFast!0 (ite lt!11129 (tail!875 (head!850 llist!36)) (head!850 llist!36)) (ite lt!11129 (head!850 (tail!876 llist!36)) (tail!875 (head!850 (tail!876 llist!36))))))))

(assert (=> b!60220 (= lt!11129 (bvsle (head!849 (head!850 llist!36)) (head!849 (head!850 (tail!876 llist!36)))))))

(assert (= (and d!51399 res!28006) b!60216))

(assert (= (and b!60219 c!13051) b!60217))

(assert (= (and b!60219 (not c!13051)) b!60220))

(assert (= (and d!51399 c!13050) b!60218))

(assert (= (and d!51399 (not c!13050)) b!60219))

(declare-fun m!65048 () Bool)

(assert (=> b!60216 m!65048))

(declare-fun m!65050 () Bool)

(assert (=> d!51399 m!65050))

(assert (=> d!51399 m!65036))

(declare-fun m!65052 () Bool)

(assert (=> b!60220 m!65052))

(assert (=> b!60189 d!51399))

(declare-fun b!60235 () Bool)

(declare-fun e!32152 () LList!15)

(assert (=> b!60235 (= e!32152 (LCons!14 (mergeFast!0 (head!850 (tail!876 (tail!876 llist!36))) (head!850 (tail!876 (tail!876 (tail!876 llist!36))))) (mergeMap!0 (tail!876 (tail!876 (tail!876 (tail!876 llist!36)))))))))

(declare-fun b!60236 () Bool)

(assert (=> b!60236 (= e!32152 (tail!876 (tail!876 llist!36)))))

(declare-fun b!60237 () Bool)

(declare-fun res!28016 () Bool)

(declare-fun e!32149 () Bool)

(assert (=> b!60237 (=> (not res!28016) (not e!32149))))

(declare-fun lt!11132 () LList!15)

(assert (=> b!60237 (= res!28016 (lIsSorted!0 lt!11132))))

(declare-fun d!51401 () Bool)

(assert (=> d!51401 e!32149))

(declare-fun res!28015 () Bool)

(assert (=> d!51401 (=> (not res!28015) (not e!32149))))

(assert (=> d!51401 (= res!28015 (= (lContent!0 lt!11132) (lContent!0 (tail!876 (tail!876 llist!36)))))))

(declare-fun e!32150 () LList!15)

(assert (=> d!51401 (= lt!11132 e!32150)))

(declare-fun c!13057 () Bool)

(assert (=> d!51401 (= c!13057 (is-LNil!14 (tail!876 (tail!876 llist!36))))))

(assert (=> d!51401 (lIsSorted!0 (tail!876 (tail!876 llist!36)))))

(assert (=> d!51401 (= (mergeMap!0 (tail!876 (tail!876 llist!36))) lt!11132)))

(declare-fun b!60238 () Bool)

(declare-fun e!32151 () Bool)

(assert (=> b!60238 (= e!32151 (< (lSize!0 lt!11132) (lSize!0 (tail!876 (tail!876 llist!36)))))))

(declare-fun b!60239 () Bool)

(assert (=> b!60239 (= e!32150 e!32152)))

(declare-fun c!13056 () Bool)

(assert (=> b!60239 (= c!13056 (and (is-LCons!14 (tail!876 (tail!876 llist!36))) (is-LNil!14 (tail!876 (tail!876 (tail!876 llist!36))))))))

(declare-fun b!60240 () Bool)

(assert (=> b!60240 (= e!32150 LNil!14)))

(declare-fun b!60241 () Bool)

(assert (=> b!60241 (= e!32149 e!32151)))

(declare-fun res!28014 () Bool)

(assert (=> b!60241 (=> res!28014 e!32151)))

(assert (=> b!60241 (= res!28014 (<= (lSize!0 (tail!876 (tail!876 llist!36))) 1))))

(assert (= (and b!60239 c!13056) b!60236))

(assert (= (and b!60239 (not c!13056)) b!60235))

(assert (= (and d!51401 c!13057) b!60240))

(assert (= (and d!51401 (not c!13057)) b!60239))

(assert (= (and d!51401 res!28015) b!60237))

(assert (= (and b!60237 res!28016) b!60241))

(assert (= (and b!60241 (not res!28014)) b!60238))

(declare-fun m!65054 () Bool)

(assert (=> b!60235 m!65054))

(declare-fun m!65056 () Bool)

(assert (=> b!60235 m!65056))

(declare-fun m!65058 () Bool)

(assert (=> b!60238 m!65058))

(declare-fun m!65060 () Bool)

(assert (=> b!60238 m!65060))

(declare-fun m!65062 () Bool)

(assert (=> b!60237 m!65062))

(assert (=> b!60241 m!65060))

(declare-fun m!65064 () Bool)

(assert (=> d!51401 m!65064))

(declare-fun m!65066 () Bool)

(assert (=> d!51401 m!65066))

(declare-fun m!65068 () Bool)

(assert (=> d!51401 m!65068))

(assert (=> b!60189 d!51401))

(declare-fun d!51403 () Bool)

(declare-fun lt!11135 () Int)

(assert (=> d!51403 (>= lt!11135 0)))

(declare-fun e!32155 () Int)

(assert (=> d!51403 (= lt!11135 e!32155)))

(declare-fun c!13060 () Bool)

(assert (=> d!51403 (= c!13060 (is-LNil!14 llist!36))))

(assert (=> d!51403 (= (lSize!0 llist!36) lt!11135)))

(declare-fun b!60246 () Bool)

(assert (=> b!60246 (= e!32155 0)))

(declare-fun b!60247 () Bool)

(assert (=> b!60247 (= e!32155 (+ 1 (lSize!0 (tail!876 llist!36))))))

(assert (= (and d!51403 c!13060) b!60246))

(assert (= (and d!51403 (not c!13060)) b!60247))

(declare-fun m!65070 () Bool)

(assert (=> b!60247 m!65070))

(assert (=> b!60186 d!51403))

(declare-fun d!51405 () Bool)

(declare-fun lt!11136 () Int)

(assert (=> d!51405 (>= lt!11136 0)))

(declare-fun e!32156 () Int)

(assert (=> d!51405 (= lt!11136 e!32156)))

(declare-fun c!13061 () Bool)

(assert (=> d!51405 (= c!13061 (is-LNil!14 res!27412))))

(assert (=> d!51405 (= (lSize!0 res!27412) lt!11136)))

(declare-fun b!60248 () Bool)

(assert (=> b!60248 (= e!32156 0)))

(declare-fun b!60249 () Bool)

(assert (=> b!60249 (= e!32156 (+ 1 (lSize!0 (tail!876 res!27412))))))

(assert (= (and d!51405 c!13061) b!60248))

(assert (= (and d!51405 (not c!13061)) b!60249))

(declare-fun m!65072 () Bool)

(assert (=> b!60249 m!65072))

(assert (=> b!60191 d!51405))

(assert (=> b!60191 d!51403))

(declare-fun d!51407 () Bool)

(declare-fun res!28017 () Bool)

(declare-fun e!32157 () Bool)

(assert (=> d!51407 (=> res!28017 e!32157)))

(assert (=> d!51407 (= res!28017 (is-LNil!14 res!27412))))

(assert (=> d!51407 (= (lIsSorted!0 res!27412) e!32157)))

(declare-fun b!60250 () Bool)

(declare-fun e!32158 () Bool)

(assert (=> b!60250 (= e!32157 e!32158)))

(declare-fun res!28018 () Bool)

(assert (=> b!60250 (=> (not res!28018) (not e!32158))))

(assert (=> b!60250 (= res!28018 (isSorted!4 (head!850 res!27412)))))

(declare-fun b!60251 () Bool)

(assert (=> b!60251 (= e!32158 (lIsSorted!0 (tail!876 res!27412)))))

(assert (= (and d!51407 (not res!28017)) b!60250))

(assert (= (and b!60250 res!28018) b!60251))

(declare-fun m!65074 () Bool)

(assert (=> b!60250 m!65074))

(declare-fun m!65076 () Bool)

(assert (=> b!60251 m!65076))

(assert (=> b!60188 d!51407))

(push 1)

(assert (not b!60216))

(assert (not b!60235))

(assert (not b!60196))

(assert (not b!60237))

(assert (not d!51399))

(assert (not b!60238))

(assert (not b!60197))

(assert (not b!60250))

(assert (not b!60203))

(assert (not b!60205))

(assert (not b!60220))

(assert (not b!60249))

(assert (not d!51401))

(assert (not b!60247))

(assert (not b!60251))

(assert (not b!60241))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!51409 () Bool)

(declare-fun c!13064 () Bool)

(assert (=> d!51409 (= c!13064 (is-Nil!506 (head!850 llist!36)))))

(declare-fun e!32161 () (Set (_ BitVec 32)))

(assert (=> d!51409 (= (content!15 (head!850 llist!36)) e!32161)))

(declare-fun b!60256 () Bool)

(assert (=> b!60256 (= e!32161 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!60257 () Bool)

(assert (=> b!60257 (= e!32161 (union (insert (head!849 (head!850 llist!36)) (as emptyset (Set (_ BitVec 32)))) (content!15 (tail!875 (head!850 llist!36)))))))

(assert (= (and d!51409 c!13064) b!60256))

(assert (= (and d!51409 (not c!13064)) b!60257))

(declare-fun m!65078 () Bool)

(assert (=> b!60257 m!65078))

(declare-fun m!65080 () Bool)

(assert (=> b!60257 m!65080))

(assert (=> b!60205 d!51409))

(declare-fun d!51411 () Bool)

(declare-fun c!13065 () Bool)

(assert (=> d!51411 (= c!13065 (is-LNil!14 (tail!876 llist!36)))))

(declare-fun e!32162 () (Set (_ BitVec 32)))

(assert (=> d!51411 (= (lContent!0 (tail!876 llist!36)) e!32162)))

(declare-fun b!60258 () Bool)

(assert (=> b!60258 (= e!32162 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!60259 () Bool)

(assert (=> b!60259 (= e!32162 (union (content!15 (head!850 (tail!876 llist!36))) (lContent!0 (tail!876 (tail!876 llist!36)))))))

(assert (= (and d!51411 c!13065) b!60258))

(assert (= (and d!51411 (not c!13065)) b!60259))

(declare-fun m!65082 () Bool)

(assert (=> b!60259 m!65082))

(assert (=> b!60259 m!65066))

(assert (=> b!60205 d!51411))

(declare-fun d!51413 () Bool)

(declare-fun res!28023 () Bool)

(declare-fun e!32167 () Bool)

(assert (=> d!51413 (=> res!28023 e!32167)))

(assert (=> d!51413 (= res!28023 (or (is-Nil!506 (head!850 (tail!876 llist!36))) (and (is-Cons!505 (head!850 (tail!876 llist!36))) (is-Nil!506 (tail!875 (head!850 (tail!876 llist!36)))))))))

(assert (=> d!51413 (= (isSorted!4 (head!850 (tail!876 llist!36))) e!32167)))

(declare-fun b!60264 () Bool)

(declare-fun e!32168 () Bool)

(assert (=> b!60264 (= e!32167 e!32168)))

(declare-fun res!28024 () Bool)

(assert (=> b!60264 (=> (not res!28024) (not e!32168))))

(assert (=> b!60264 (= res!28024 (not (and (is-Cons!505 (head!850 (tail!876 llist!36))) (is-Cons!505 (tail!875 (head!850 (tail!876 llist!36)))) (bvsgt (head!849 (head!850 (tail!876 llist!36))) (head!849 (tail!875 (head!850 (tail!876 llist!36))))))))))

(declare-fun b!60265 () Bool)

(assert (=> b!60265 (= e!32168 (isSorted!4 (tail!875 (head!850 (tail!876 llist!36)))))))

(assert (= (and d!51413 (not res!28023)) b!60264))

(assert (= (and b!60264 res!28024) b!60265))

(declare-fun m!65084 () Bool)

(assert (=> b!60265 m!65084))

(assert (=> b!60216 d!51413))

(declare-fun d!51415 () Bool)

(declare-fun res!28025 () Bool)

(declare-fun e!32169 () Bool)

(assert (=> d!51415 (=> res!28025 e!32169)))

(assert (=> d!51415 (= res!28025 (or (is-Nil!506 (head!850 res!27412)) (and (is-Cons!505 (head!850 res!27412)) (is-Nil!506 (tail!875 (head!850 res!27412))))))))

(assert (=> d!51415 (= (isSorted!4 (head!850 res!27412)) e!32169)))

(declare-fun b!60266 () Bool)

(declare-fun e!32170 () Bool)

(assert (=> b!60266 (= e!32169 e!32170)))

(declare-fun res!28026 () Bool)

(assert (=> b!60266 (=> (not res!28026) (not e!32170))))

(assert (=> b!60266 (= res!28026 (not (and (is-Cons!505 (head!850 res!27412)) (is-Cons!505 (tail!875 (head!850 res!27412))) (bvsgt (head!849 (head!850 res!27412)) (head!849 (tail!875 (head!850 res!27412)))))))))

(declare-fun b!60267 () Bool)

(assert (=> b!60267 (= e!32170 (isSorted!4 (tail!875 (head!850 res!27412))))))

(assert (= (and d!51415 (not res!28025)) b!60266))

(assert (= (and b!60266 res!28026) b!60267))

(declare-fun m!65086 () Bool)

(assert (=> b!60267 m!65086))

(assert (=> b!60250 d!51415))

(declare-fun d!51417 () Bool)

(declare-fun lt!11137 () Int)

(assert (=> d!51417 (>= lt!11137 0)))

(declare-fun e!32171 () Int)

(assert (=> d!51417 (= lt!11137 e!32171)))

(declare-fun c!13066 () Bool)

(assert (=> d!51417 (= c!13066 (is-LNil!14 (tail!876 llist!36)))))

(assert (=> d!51417 (= (lSize!0 (tail!876 llist!36)) lt!11137)))

(declare-fun b!60268 () Bool)

(assert (=> b!60268 (= e!32171 0)))

(declare-fun b!60269 () Bool)

(assert (=> b!60269 (= e!32171 (+ 1 (lSize!0 (tail!876 (tail!876 llist!36)))))))

(assert (= (and d!51417 c!13066) b!60268))

(assert (= (and d!51417 (not c!13066)) b!60269))

(assert (=> b!60269 m!65060))

(assert (=> b!60247 d!51417))

(declare-fun d!51419 () Bool)

(declare-fun lt!11138 () Int)

(assert (=> d!51419 (>= lt!11138 0)))

(declare-fun e!32172 () Int)

(assert (=> d!51419 (= lt!11138 e!32172)))

(declare-fun c!13067 () Bool)

(assert (=> d!51419 (= c!13067 (is-LNil!14 (tail!876 res!27412)))))

(assert (=> d!51419 (= (lSize!0 (tail!876 res!27412)) lt!11138)))

(declare-fun b!60270 () Bool)

(assert (=> b!60270 (= e!32172 0)))

(declare-fun b!60271 () Bool)

(assert (=> b!60271 (= e!32172 (+ 1 (lSize!0 (tail!876 (tail!876 res!27412)))))))

(assert (= (and d!51419 c!13067) b!60270))

(assert (= (and d!51419 (not c!13067)) b!60271))

(declare-fun m!65088 () Bool)

(assert (=> b!60271 m!65088))

(assert (=> b!60249 d!51419))

(declare-fun d!51421 () Bool)

(declare-fun res!28027 () Bool)

(declare-fun e!32173 () Bool)

(assert (=> d!51421 (=> res!28027 e!32173)))

(assert (=> d!51421 (= res!28027 (is-LNil!14 (tail!876 llist!36)))))

(assert (=> d!51421 (= (lIsSorted!0 (tail!876 llist!36)) e!32173)))

(declare-fun b!60272 () Bool)

(declare-fun e!32174 () Bool)

(assert (=> b!60272 (= e!32173 e!32174)))

(declare-fun res!28028 () Bool)

(assert (=> b!60272 (=> (not res!28028) (not e!32174))))

(assert (=> b!60272 (= res!28028 (isSorted!4 (head!850 (tail!876 llist!36))))))

(declare-fun b!60273 () Bool)

(assert (=> b!60273 (= e!32174 (lIsSorted!0 (tail!876 (tail!876 llist!36))))))

(assert (= (and d!51421 (not res!28027)) b!60272))

(assert (= (and b!60272 res!28028) b!60273))

(assert (=> b!60272 m!65048))

(assert (=> b!60273 m!65068))

(assert (=> b!60197 d!51421))

(declare-fun b!60274 () Bool)

(declare-fun e!32175 () Bool)

(assert (=> b!60274 (= e!32175 (isSorted!4 (head!850 (tail!876 (tail!876 (tail!876 llist!36))))))))

(declare-fun b!60275 () Bool)

(declare-fun e!32176 () List!539)

(assert (=> b!60275 (= e!32176 (head!850 (tail!876 (tail!876 (tail!876 llist!36)))))))

(declare-fun b!60276 () Bool)

(declare-fun e!32177 () List!539)

(assert (=> b!60276 (= e!32177 (head!850 (tail!876 (tail!876 llist!36))))))

(declare-fun b!60277 () Bool)

(assert (=> b!60277 (= e!32177 e!32176)))

(declare-fun c!13069 () Bool)

(assert (=> b!60277 (= c!13069 (is-Nil!506 (head!850 (tail!876 (tail!876 llist!36)))))))

(declare-fun d!51423 () Bool)

(declare-fun lt!11140 () List!539)

(assert (=> d!51423 (mergeSpec!0 (head!850 (tail!876 (tail!876 llist!36))) (head!850 (tail!876 (tail!876 (tail!876 llist!36)))) lt!11140)))

(assert (=> d!51423 (= lt!11140 e!32177)))

(declare-fun c!13068 () Bool)

(assert (=> d!51423 (= c!13068 (is-Nil!506 (head!850 (tail!876 (tail!876 (tail!876 llist!36))))))))

(assert (=> d!51423 e!32175))

(declare-fun res!28029 () Bool)

(assert (=> d!51423 (=> (not res!28029) (not e!32175))))

(assert (=> d!51423 (= res!28029 (isSorted!4 (head!850 (tail!876 (tail!876 llist!36)))))))

(assert (=> d!51423 (= (mergeFast!0 (head!850 (tail!876 (tail!876 llist!36))) (head!850 (tail!876 (tail!876 (tail!876 llist!36))))) lt!11140)))

(declare-fun lt!11141 () Bool)

(declare-fun lt!11139 () List!539)

(declare-fun b!60278 () Bool)

(assert (=> b!60278 (= e!32176 (ite lt!11141 (Cons!505 (head!849 (head!850 (tail!876 (tail!876 llist!36)))) lt!11139) (Cons!505 (head!849 (head!850 (tail!876 (tail!876 (tail!876 llist!36))))) lt!11139)))))

(assert (=> b!60278 (= lt!11139 (mergeFast!0 (ite lt!11141 (tail!875 (head!850 (tail!876 (tail!876 llist!36)))) (head!850 (tail!876 (tail!876 llist!36)))) (ite lt!11141 (head!850 (tail!876 (tail!876 (tail!876 llist!36)))) (tail!875 (head!850 (tail!876 (tail!876 (tail!876 llist!36))))))))))

(assert (=> b!60278 (= lt!11141 (bvsle (head!849 (head!850 (tail!876 (tail!876 llist!36)))) (head!849 (head!850 (tail!876 (tail!876 (tail!876 llist!36)))))))))

(assert (= (and d!51423 res!28029) b!60274))

(assert (= (and b!60277 c!13069) b!60275))

(assert (= (and b!60277 (not c!13069)) b!60278))

(assert (= (and d!51423 c!13068) b!60276))

(assert (= (and d!51423 (not c!13068)) b!60277))

(declare-fun m!65090 () Bool)

(assert (=> b!60274 m!65090))

(declare-fun m!65092 () Bool)

(assert (=> d!51423 m!65092))

(declare-fun m!65094 () Bool)

(assert (=> d!51423 m!65094))

(declare-fun m!65096 () Bool)

(assert (=> b!60278 m!65096))

(assert (=> b!60235 d!51423))

(declare-fun b!60279 () Bool)

(declare-fun e!32181 () LList!15)

(assert (=> b!60279 (= e!32181 (LCons!14 (mergeFast!0 (head!850 (tail!876 (tail!876 (tail!876 (tail!876 llist!36))))) (head!850 (tail!876 (tail!876 (tail!876 (tail!876 (tail!876 llist!36))))))) (mergeMap!0 (tail!876 (tail!876 (tail!876 (tail!876 (tail!876 (tail!876 llist!36)))))))))))

(declare-fun b!60280 () Bool)

(assert (=> b!60280 (= e!32181 (tail!876 (tail!876 (tail!876 (tail!876 llist!36)))))))

(declare-fun b!60281 () Bool)

(declare-fun res!28032 () Bool)

(declare-fun e!32178 () Bool)

(assert (=> b!60281 (=> (not res!28032) (not e!32178))))

(declare-fun lt!11142 () LList!15)

(assert (=> b!60281 (= res!28032 (lIsSorted!0 lt!11142))))

(declare-fun d!51425 () Bool)

(assert (=> d!51425 e!32178))

(declare-fun res!28031 () Bool)

(assert (=> d!51425 (=> (not res!28031) (not e!32178))))

(assert (=> d!51425 (= res!28031 (= (lContent!0 lt!11142) (lContent!0 (tail!876 (tail!876 (tail!876 (tail!876 llist!36)))))))))

(declare-fun e!32179 () LList!15)

(assert (=> d!51425 (= lt!11142 e!32179)))

(declare-fun c!13071 () Bool)

(assert (=> d!51425 (= c!13071 (is-LNil!14 (tail!876 (tail!876 (tail!876 (tail!876 llist!36))))))))

(assert (=> d!51425 (lIsSorted!0 (tail!876 (tail!876 (tail!876 (tail!876 llist!36)))))))

(assert (=> d!51425 (= (mergeMap!0 (tail!876 (tail!876 (tail!876 (tail!876 llist!36))))) lt!11142)))

(declare-fun b!60282 () Bool)

(declare-fun e!32180 () Bool)

(assert (=> b!60282 (= e!32180 (< (lSize!0 lt!11142) (lSize!0 (tail!876 (tail!876 (tail!876 (tail!876 llist!36)))))))))

(declare-fun b!60283 () Bool)

(assert (=> b!60283 (= e!32179 e!32181)))

(declare-fun c!13070 () Bool)

(assert (=> b!60283 (= c!13070 (and (is-LCons!14 (tail!876 (tail!876 (tail!876 (tail!876 llist!36))))) (is-LNil!14 (tail!876 (tail!876 (tail!876 (tail!876 (tail!876 llist!36))))))))))

(declare-fun b!60284 () Bool)

(assert (=> b!60284 (= e!32179 LNil!14)))

(declare-fun b!60285 () Bool)

(assert (=> b!60285 (= e!32178 e!32180)))

(declare-fun res!28030 () Bool)

(assert (=> b!60285 (=> res!28030 e!32180)))

(assert (=> b!60285 (= res!28030 (<= (lSize!0 (tail!876 (tail!876 (tail!876 (tail!876 llist!36))))) 1))))

(assert (= (and b!60283 c!13070) b!60280))

(assert (= (and b!60283 (not c!13070)) b!60279))

(assert (= (and d!51425 c!13071) b!60284))

(assert (= (and d!51425 (not c!13071)) b!60283))

(assert (= (and d!51425 res!28031) b!60281))

(assert (= (and b!60281 res!28032) b!60285))

(assert (= (and b!60285 (not res!28030)) b!60282))

(declare-fun m!65098 () Bool)

(assert (=> b!60279 m!65098))

(declare-fun m!65100 () Bool)

(assert (=> b!60279 m!65100))

(declare-fun m!65102 () Bool)

(assert (=> b!60282 m!65102))

(declare-fun m!65104 () Bool)

(assert (=> b!60282 m!65104))

(declare-fun m!65106 () Bool)

(assert (=> b!60281 m!65106))

(assert (=> b!60285 m!65104))

(declare-fun m!65108 () Bool)

(assert (=> d!51425 m!65108))

(declare-fun m!65110 () Bool)

(assert (=> d!51425 m!65110))

(declare-fun m!65112 () Bool)

(assert (=> d!51425 m!65112))

(assert (=> b!60235 d!51425))

(declare-fun b!60286 () Bool)

(declare-fun e!32182 () Bool)

(assert (=> b!60286 (= e!32182 (isSorted!4 (ite lt!11129 (head!850 (tail!876 llist!36)) (tail!875 (head!850 (tail!876 llist!36))))))))

(declare-fun b!60287 () Bool)

(declare-fun e!32183 () List!539)

(assert (=> b!60287 (= e!32183 (ite lt!11129 (head!850 (tail!876 llist!36)) (tail!875 (head!850 (tail!876 llist!36)))))))

(declare-fun b!60288 () Bool)

(declare-fun e!32184 () List!539)

(assert (=> b!60288 (= e!32184 (ite lt!11129 (tail!875 (head!850 llist!36)) (head!850 llist!36)))))

(declare-fun b!60289 () Bool)

(assert (=> b!60289 (= e!32184 e!32183)))

(declare-fun c!13073 () Bool)

(assert (=> b!60289 (= c!13073 (is-Nil!506 (ite lt!11129 (tail!875 (head!850 llist!36)) (head!850 llist!36))))))

(declare-fun d!51427 () Bool)

(declare-fun lt!11144 () List!539)

(assert (=> d!51427 (mergeSpec!0 (ite lt!11129 (tail!875 (head!850 llist!36)) (head!850 llist!36)) (ite lt!11129 (head!850 (tail!876 llist!36)) (tail!875 (head!850 (tail!876 llist!36)))) lt!11144)))

(assert (=> d!51427 (= lt!11144 e!32184)))

(declare-fun c!13072 () Bool)

(assert (=> d!51427 (= c!13072 (is-Nil!506 (ite lt!11129 (head!850 (tail!876 llist!36)) (tail!875 (head!850 (tail!876 llist!36))))))))

(assert (=> d!51427 e!32182))

(declare-fun res!28033 () Bool)

(assert (=> d!51427 (=> (not res!28033) (not e!32182))))

(assert (=> d!51427 (= res!28033 (isSorted!4 (ite lt!11129 (tail!875 (head!850 llist!36)) (head!850 llist!36))))))

(assert (=> d!51427 (= (mergeFast!0 (ite lt!11129 (tail!875 (head!850 llist!36)) (head!850 llist!36)) (ite lt!11129 (head!850 (tail!876 llist!36)) (tail!875 (head!850 (tail!876 llist!36))))) lt!11144)))

(declare-fun lt!11145 () Bool)

(declare-fun lt!11143 () List!539)

(declare-fun b!60290 () Bool)

(assert (=> b!60290 (= e!32183 (ite lt!11145 (Cons!505 (head!849 (ite lt!11129 (tail!875 (head!850 llist!36)) (head!850 llist!36))) lt!11143) (Cons!505 (head!849 (ite lt!11129 (head!850 (tail!876 llist!36)) (tail!875 (head!850 (tail!876 llist!36))))) lt!11143)))))

(assert (=> b!60290 (= lt!11143 (mergeFast!0 (ite lt!11145 (tail!875 (ite lt!11129 (tail!875 (head!850 llist!36)) (head!850 llist!36))) (ite lt!11129 (tail!875 (head!850 llist!36)) (head!850 llist!36))) (ite lt!11145 (ite lt!11129 (head!850 (tail!876 llist!36)) (tail!875 (head!850 (tail!876 llist!36)))) (tail!875 (ite lt!11129 (head!850 (tail!876 llist!36)) (tail!875 (head!850 (tail!876 llist!36))))))))))

(assert (=> b!60290 (= lt!11145 (bvsle (head!849 (ite lt!11129 (tail!875 (head!850 llist!36)) (head!850 llist!36))) (head!849 (ite lt!11129 (head!850 (tail!876 llist!36)) (tail!875 (head!850 (tail!876 llist!36)))))))))

(assert (= (and d!51427 res!28033) b!60286))

(assert (= (and b!60289 c!13073) b!60287))

(assert (= (and b!60289 (not c!13073)) b!60290))

(assert (= (and d!51427 c!13072) b!60288))

(assert (= (and d!51427 (not c!13072)) b!60289))

(declare-fun m!65114 () Bool)

(assert (=> b!60286 m!65114))

(declare-fun m!65116 () Bool)

(assert (=> d!51427 m!65116))

(declare-fun m!65118 () Bool)

(assert (=> d!51427 m!65118))

(declare-fun m!65120 () Bool)

(assert (=> b!60290 m!65120))

(assert (=> b!60220 d!51427))

(declare-fun d!51429 () Bool)

(declare-fun res!28034 () Bool)

(declare-fun e!32185 () Bool)

(assert (=> d!51429 (=> res!28034 e!32185)))

(assert (=> d!51429 (= res!28034 (or (is-Nil!506 (head!850 llist!36)) (and (is-Cons!505 (head!850 llist!36)) (is-Nil!506 (tail!875 (head!850 llist!36))))))))

(assert (=> d!51429 (= (isSorted!4 (head!850 llist!36)) e!32185)))

(declare-fun b!60291 () Bool)

(declare-fun e!32186 () Bool)

(assert (=> b!60291 (= e!32185 e!32186)))

(declare-fun res!28035 () Bool)

(assert (=> b!60291 (=> (not res!28035) (not e!32186))))

(assert (=> b!60291 (= res!28035 (not (and (is-Cons!505 (head!850 llist!36)) (is-Cons!505 (tail!875 (head!850 llist!36))) (bvsgt (head!849 (head!850 llist!36)) (head!849 (tail!875 (head!850 llist!36)))))))))

(declare-fun b!60292 () Bool)

(assert (=> b!60292 (= e!32186 (isSorted!4 (tail!875 (head!850 llist!36))))))

(assert (= (and d!51429 (not res!28034)) b!60291))

(assert (= (and b!60291 res!28035) b!60292))

(declare-fun m!65122 () Bool)

(assert (=> b!60292 m!65122))

(assert (=> b!60196 d!51429))

(declare-fun d!51431 () Bool)

(declare-fun res!28039 () Bool)

(declare-fun e!32189 () Bool)

(assert (=> d!51431 (=> (not res!28039) (not e!32189))))

(assert (=> d!51431 (= res!28039 (isSorted!4 lt!11128))))

(assert (=> d!51431 (= (mergeSpec!0 (head!850 llist!36) (head!850 (tail!876 llist!36)) lt!11128) e!32189)))

(declare-fun b!60295 () Bool)

(assert (=> b!60295 (= e!32189 (= (content!15 lt!11128) (union (content!15 (head!850 llist!36)) (content!15 (head!850 (tail!876 llist!36))))))))

(assert (= (and d!51431 res!28039) b!60295))

(declare-fun m!65124 () Bool)

(assert (=> d!51431 m!65124))

(declare-fun m!65126 () Bool)

(assert (=> b!60295 m!65126))

(assert (=> b!60295 m!65044))

(assert (=> b!60295 m!65082))

(assert (=> d!51399 d!51431))

(assert (=> d!51399 d!51429))

(declare-fun d!51433 () Bool)

(declare-fun c!13074 () Bool)

(assert (=> d!51433 (= c!13074 (is-LNil!14 lt!11132))))

(declare-fun e!32190 () (Set (_ BitVec 32)))

(assert (=> d!51433 (= (lContent!0 lt!11132) e!32190)))

(declare-fun b!60296 () Bool)

(assert (=> b!60296 (= e!32190 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!60297 () Bool)

(assert (=> b!60297 (= e!32190 (union (content!15 (head!850 lt!11132)) (lContent!0 (tail!876 lt!11132))))))

(assert (= (and d!51433 c!13074) b!60296))

(assert (= (and d!51433 (not c!13074)) b!60297))

(declare-fun m!65128 () Bool)

(assert (=> b!60297 m!65128))

(declare-fun m!65130 () Bool)

(assert (=> b!60297 m!65130))

(assert (=> d!51401 d!51433))

(declare-fun d!51435 () Bool)

(declare-fun c!13075 () Bool)

(assert (=> d!51435 (= c!13075 (is-LNil!14 (tail!876 (tail!876 llist!36))))))

(declare-fun e!32191 () (Set (_ BitVec 32)))

(assert (=> d!51435 (= (lContent!0 (tail!876 (tail!876 llist!36))) e!32191)))

(declare-fun b!60298 () Bool)

(assert (=> b!60298 (= e!32191 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!60299 () Bool)

(assert (=> b!60299 (= e!32191 (union (content!15 (head!850 (tail!876 (tail!876 llist!36)))) (lContent!0 (tail!876 (tail!876 (tail!876 llist!36))))))))

(assert (= (and d!51435 c!13075) b!60298))

(assert (= (and d!51435 (not c!13075)) b!60299))

(declare-fun m!65132 () Bool)

(assert (=> b!60299 m!65132))

(declare-fun m!65134 () Bool)

(assert (=> b!60299 m!65134))

(assert (=> d!51401 d!51435))

(declare-fun d!51437 () Bool)

(declare-fun res!28040 () Bool)

(declare-fun e!32192 () Bool)

(assert (=> d!51437 (=> res!28040 e!32192)))

(assert (=> d!51437 (= res!28040 (is-LNil!14 (tail!876 (tail!876 llist!36))))))

(assert (=> d!51437 (= (lIsSorted!0 (tail!876 (tail!876 llist!36))) e!32192)))

(declare-fun b!60300 () Bool)

(declare-fun e!32193 () Bool)

(assert (=> b!60300 (= e!32192 e!32193)))

(declare-fun res!28041 () Bool)

(assert (=> b!60300 (=> (not res!28041) (not e!32193))))

(assert (=> b!60300 (= res!28041 (isSorted!4 (head!850 (tail!876 (tail!876 llist!36)))))))

(declare-fun b!60301 () Bool)

(assert (=> b!60301 (= e!32193 (lIsSorted!0 (tail!876 (tail!876 (tail!876 llist!36)))))))

(assert (= (and d!51437 (not res!28040)) b!60300))

(assert (= (and b!60300 res!28041) b!60301))

(assert (=> b!60300 m!65094))

(declare-fun m!65136 () Bool)

(assert (=> b!60301 m!65136))

(assert (=> d!51401 d!51437))

(declare-fun d!51439 () Bool)

(declare-fun res!28042 () Bool)

(declare-fun e!32194 () Bool)

(assert (=> d!51439 (=> res!28042 e!32194)))

(assert (=> d!51439 (= res!28042 (is-LNil!14 (tail!876 res!27412)))))

(assert (=> d!51439 (= (lIsSorted!0 (tail!876 res!27412)) e!32194)))

(declare-fun b!60302 () Bool)

(declare-fun e!32195 () Bool)

(assert (=> b!60302 (= e!32194 e!32195)))

(declare-fun res!28043 () Bool)

(assert (=> b!60302 (=> (not res!28043) (not e!32195))))

(assert (=> b!60302 (= res!28043 (isSorted!4 (head!850 (tail!876 res!27412))))))

(declare-fun b!60303 () Bool)

(assert (=> b!60303 (= e!32195 (lIsSorted!0 (tail!876 (tail!876 res!27412))))))

(assert (= (and d!51439 (not res!28042)) b!60302))

(assert (= (and b!60302 res!28043) b!60303))

(declare-fun m!65138 () Bool)

(assert (=> b!60302 m!65138))

(declare-fun m!65140 () Bool)

(assert (=> b!60303 m!65140))

(assert (=> b!60251 d!51439))

(declare-fun d!51441 () Bool)

(declare-fun lt!11146 () Int)

(assert (=> d!51441 (>= lt!11146 0)))

(declare-fun e!32196 () Int)

(assert (=> d!51441 (= lt!11146 e!32196)))

(declare-fun c!13076 () Bool)

(assert (=> d!51441 (= c!13076 (is-LNil!14 (tail!876 (tail!876 llist!36))))))

(assert (=> d!51441 (= (lSize!0 (tail!876 (tail!876 llist!36))) lt!11146)))

(declare-fun b!60304 () Bool)

(assert (=> b!60304 (= e!32196 0)))

(declare-fun b!60305 () Bool)

(assert (=> b!60305 (= e!32196 (+ 1 (lSize!0 (tail!876 (tail!876 (tail!876 llist!36))))))))

(assert (= (and d!51441 c!13076) b!60304))

(assert (= (and d!51441 (not c!13076)) b!60305))

(declare-fun m!65142 () Bool)

(assert (=> b!60305 m!65142))

(assert (=> b!60241 d!51441))

(declare-fun d!51443 () Bool)

(declare-fun res!28044 () Bool)

(declare-fun e!32197 () Bool)

(assert (=> d!51443 (=> res!28044 e!32197)))

(assert (=> d!51443 (= res!28044 (is-LNil!14 lt!11132))))

(assert (=> d!51443 (= (lIsSorted!0 lt!11132) e!32197)))

(declare-fun b!60306 () Bool)

(declare-fun e!32198 () Bool)

(assert (=> b!60306 (= e!32197 e!32198)))

(declare-fun res!28045 () Bool)

(assert (=> b!60306 (=> (not res!28045) (not e!32198))))

(assert (=> b!60306 (= res!28045 (isSorted!4 (head!850 lt!11132)))))

(declare-fun b!60307 () Bool)

(assert (=> b!60307 (= e!32198 (lIsSorted!0 (tail!876 lt!11132)))))

(assert (= (and d!51443 (not res!28044)) b!60306))

(assert (= (and b!60306 res!28045) b!60307))

(declare-fun m!65144 () Bool)

(assert (=> b!60306 m!65144))

(declare-fun m!65146 () Bool)

(assert (=> b!60307 m!65146))

(assert (=> b!60237 d!51443))

(declare-fun d!51445 () Bool)

(declare-fun lt!11147 () Int)

(assert (=> d!51445 (>= lt!11147 0)))

(declare-fun e!32199 () Int)

(assert (=> d!51445 (= lt!11147 e!32199)))

(declare-fun c!13077 () Bool)

(assert (=> d!51445 (= c!13077 (is-LNil!14 lt!11132))))

(assert (=> d!51445 (= (lSize!0 lt!11132) lt!11147)))

(declare-fun b!60308 () Bool)

(assert (=> b!60308 (= e!32199 0)))

(declare-fun b!60309 () Bool)

(assert (=> b!60309 (= e!32199 (+ 1 (lSize!0 (tail!876 lt!11132))))))

(assert (= (and d!51445 c!13077) b!60308))

(assert (= (and d!51445 (not c!13077)) b!60309))

(declare-fun m!65148 () Bool)

(assert (=> b!60309 m!65148))

(assert (=> b!60238 d!51445))

(assert (=> b!60238 d!51441))

(declare-fun d!51447 () Bool)

(declare-fun c!13078 () Bool)

(assert (=> d!51447 (= c!13078 (is-Nil!506 (head!850 res!27412)))))

(declare-fun e!32200 () (Set (_ BitVec 32)))

(assert (=> d!51447 (= (content!15 (head!850 res!27412)) e!32200)))

(declare-fun b!60310 () Bool)

(assert (=> b!60310 (= e!32200 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!60311 () Bool)

(assert (=> b!60311 (= e!32200 (union (insert (head!849 (head!850 res!27412)) (as emptyset (Set (_ BitVec 32)))) (content!15 (tail!875 (head!850 res!27412)))))))

(assert (= (and d!51447 c!13078) b!60310))

(assert (= (and d!51447 (not c!13078)) b!60311))

(declare-fun m!65150 () Bool)

(assert (=> b!60311 m!65150))

(declare-fun m!65152 () Bool)

(assert (=> b!60311 m!65152))

(assert (=> b!60203 d!51447))

(declare-fun d!51449 () Bool)

(declare-fun c!13079 () Bool)

(assert (=> d!51449 (= c!13079 (is-LNil!14 (tail!876 res!27412)))))

(declare-fun e!32201 () (Set (_ BitVec 32)))

(assert (=> d!51449 (= (lContent!0 (tail!876 res!27412)) e!32201)))

(declare-fun b!60312 () Bool)

(assert (=> b!60312 (= e!32201 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!60313 () Bool)

(assert (=> b!60313 (= e!32201 (union (content!15 (head!850 (tail!876 res!27412))) (lContent!0 (tail!876 (tail!876 res!27412)))))))

(assert (= (and d!51449 c!13079) b!60312))

(assert (= (and d!51449 (not c!13079)) b!60313))

(declare-fun m!65154 () Bool)

(assert (=> b!60313 m!65154))

(declare-fun m!65156 () Bool)

(assert (=> b!60313 m!65156))

(assert (=> b!60203 d!51449))

(push 1)

(assert (not b!60257))

(assert (not b!60290))

(assert (not b!60311))

(assert (not b!60309))

(assert (not b!60301))

(assert (not b!60285))

(assert (not b!60279))

(assert (not b!60295))

(assert (not b!60303))

(assert (not b!60282))

(assert (not b!60306))

(assert (not b!60273))

(assert (not b!60299))

(assert (not d!51423))

(assert (not b!60286))

(assert (not b!60305))

(assert (not b!60292))

(assert (not d!51427))

(assert (not d!51431))

(assert (not b!60313))

(assert (not b!60307))

(assert (not b!60272))

(assert (not b!60259))

(assert (not b!60274))

(assert (not b!60269))

(assert (not b!60302))

(assert (not b!60265))

(assert (not b!60278))

(assert (not b!60267))

(assert (not b!60281))

(assert (not b!60297))

(assert (not d!51425))

(assert (not b!60271))

(assert (not b!60300))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!51451 () Bool)

(declare-fun res!28046 () Bool)

(declare-fun e!32202 () Bool)

(assert (=> d!51451 (=> res!28046 e!32202)))

(assert (=> d!51451 (= res!28046 (or (is-Nil!506 (head!850 lt!11132)) (and (is-Cons!505 (head!850 lt!11132)) (is-Nil!506 (tail!875 (head!850 lt!11132))))))))

(assert (=> d!51451 (= (isSorted!4 (head!850 lt!11132)) e!32202)))

(declare-fun b!60314 () Bool)

(declare-fun e!32203 () Bool)

(assert (=> b!60314 (= e!32202 e!32203)))

(declare-fun res!28047 () Bool)

(assert (=> b!60314 (=> (not res!28047) (not e!32203))))

(assert (=> b!60314 (= res!28047 (not (and (is-Cons!505 (head!850 lt!11132)) (is-Cons!505 (tail!875 (head!850 lt!11132))) (bvsgt (head!849 (head!850 lt!11132)) (head!849 (tail!875 (head!850 lt!11132)))))))))

(declare-fun b!60315 () Bool)

(assert (=> b!60315 (= e!32203 (isSorted!4 (tail!875 (head!850 lt!11132))))))

(assert (= (and d!51451 (not res!28046)) b!60314))

(assert (= (and b!60314 res!28047) b!60315))

(declare-fun m!65158 () Bool)

(assert (=> b!60315 m!65158))

(assert (=> b!60306 d!51451))

(declare-fun d!51453 () Bool)

(declare-fun c!13080 () Bool)

(assert (=> d!51453 (= c!13080 (is-Nil!506 (head!850 (tail!876 llist!36))))))

(declare-fun e!32204 () (Set (_ BitVec 32)))

(assert (=> d!51453 (= (content!15 (head!850 (tail!876 llist!36))) e!32204)))

(declare-fun b!60316 () Bool)

(assert (=> b!60316 (= e!32204 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!60317 () Bool)

(assert (=> b!60317 (= e!32204 (union (insert (head!849 (head!850 (tail!876 llist!36))) (as emptyset (Set (_ BitVec 32)))) (content!15 (tail!875 (head!850 (tail!876 llist!36))))))))

(assert (= (and d!51453 c!13080) b!60316))

(assert (= (and d!51453 (not c!13080)) b!60317))

(declare-fun m!65160 () Bool)

(assert (=> b!60317 m!65160))

(declare-fun m!65162 () Bool)

(assert (=> b!60317 m!65162))

(assert (=> b!60259 d!51453))

(assert (=> b!60259 d!51435))

(declare-fun d!51455 () Bool)

(declare-fun c!13081 () Bool)

(assert (=> d!51455 (= c!13081 (is-Nil!506 (tail!875 (head!850 res!27412))))))

(declare-fun e!32205 () (Set (_ BitVec 32)))

(assert (=> d!51455 (= (content!15 (tail!875 (head!850 res!27412))) e!32205)))

(declare-fun b!60318 () Bool)

(assert (=> b!60318 (= e!32205 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!60319 () Bool)

(assert (=> b!60319 (= e!32205 (union (insert (head!849 (tail!875 (head!850 res!27412))) (as emptyset (Set (_ BitVec 32)))) (content!15 (tail!875 (tail!875 (head!850 res!27412))))))))

(assert (= (and d!51455 c!13081) b!60318))

(assert (= (and d!51455 (not c!13081)) b!60319))

(declare-fun m!65164 () Bool)

(assert (=> b!60319 m!65164))

(declare-fun m!65166 () Bool)

(assert (=> b!60319 m!65166))

(assert (=> b!60311 d!51455))

(declare-fun d!51457 () Bool)

(declare-fun lt!11148 () Int)

(assert (=> d!51457 (>= lt!11148 0)))

(declare-fun e!32206 () Int)

(assert (=> d!51457 (= lt!11148 e!32206)))

(declare-fun c!13082 () Bool)

(assert (=> d!51457 (= c!13082 (is-LNil!14 (tail!876 (tail!876 (tail!876 llist!36)))))))

(assert (=> d!51457 (= (lSize!0 (tail!876 (tail!876 (tail!876 llist!36)))) lt!11148)))

(declare-fun b!60320 () Bool)

(assert (=> b!60320 (= e!32206 0)))

(declare-fun b!60321 () Bool)

(assert (=> b!60321 (= e!32206 (+ 1 (lSize!0 (tail!876 (tail!876 (tail!876 (tail!876 llist!36)))))))))

(assert (= (and d!51457 c!13082) b!60320))

(assert (= (and d!51457 (not c!13082)) b!60321))

(assert (=> b!60321 m!65104))

(assert (=> b!60305 d!51457))

(declare-fun d!51459 () Bool)

(declare-fun res!28048 () Bool)

(declare-fun e!32207 () Bool)

(assert (=> d!51459 (=> res!28048 e!32207)))

(assert (=> d!51459 (= res!28048 (is-LNil!14 (tail!876 (tail!876 (tail!876 llist!36)))))))

(assert (=> d!51459 (= (lIsSorted!0 (tail!876 (tail!876 (tail!876 llist!36)))) e!32207)))

(declare-fun b!60322 () Bool)

(declare-fun e!32208 () Bool)

(assert (=> b!60322 (= e!32207 e!32208)))

(declare-fun res!28049 () Bool)

(assert (=> b!60322 (=> (not res!28049) (not e!32208))))

(assert (=> b!60322 (= res!28049 (isSorted!4 (head!850 (tail!876 (tail!876 (tail!876 llist!36))))))))

(declare-fun b!60323 () Bool)

(assert (=> b!60323 (= e!32208 (lIsSorted!0 (tail!876 (tail!876 (tail!876 (tail!876 llist!36))))))))

(assert (= (and d!51459 (not res!28048)) b!60322))

(assert (= (and b!60322 res!28049) b!60323))

(assert (=> b!60322 m!65090))

(assert (=> b!60323 m!65112))

(assert (=> b!60301 d!51459))

(declare-fun d!51461 () Bool)

(declare-fun res!28050 () Bool)

(declare-fun e!32209 () Bool)

(assert (=> d!51461 (=> res!28050 e!32209)))

(assert (=> d!51461 (= res!28050 (or (is-Nil!506 (head!850 (tail!876 (tail!876 (tail!876 llist!36))))) (and (is-Cons!505 (head!850 (tail!876 (tail!876 (tail!876 llist!36))))) (is-Nil!506 (tail!875 (head!850 (tail!876 (tail!876 (tail!876 llist!36)))))))))))

(assert (=> d!51461 (= (isSorted!4 (head!850 (tail!876 (tail!876 (tail!876 llist!36))))) e!32209)))

(declare-fun b!60324 () Bool)

(declare-fun e!32210 () Bool)

(assert (=> b!60324 (= e!32209 e!32210)))

(declare-fun res!28051 () Bool)

(assert (=> b!60324 (=> (not res!28051) (not e!32210))))

(assert (=> b!60324 (= res!28051 (not (and (is-Cons!505 (head!850 (tail!876 (tail!876 (tail!876 llist!36))))) (is-Cons!505 (tail!875 (head!850 (tail!876 (tail!876 (tail!876 llist!36)))))) (bvsgt (head!849 (head!850 (tail!876 (tail!876 (tail!876 llist!36))))) (head!849 (tail!875 (head!850 (tail!876 (tail!876 (tail!876 llist!36))))))))))))

(declare-fun b!60325 () Bool)

(assert (=> b!60325 (= e!32210 (isSorted!4 (tail!875 (head!850 (tail!876 (tail!876 (tail!876 llist!36)))))))))

(assert (= (and d!51461 (not res!28050)) b!60324))

(assert (= (and b!60324 res!28051) b!60325))

(declare-fun m!65168 () Bool)

(assert (=> b!60325 m!65168))

(assert (=> b!60274 d!51461))

(assert (=> b!60269 d!51441))

(declare-fun d!51463 () Bool)

(declare-fun res!28052 () Bool)

(declare-fun e!32211 () Bool)

(assert (=> d!51463 (=> (not res!28052) (not e!32211))))

(assert (=> d!51463 (= res!28052 (isSorted!4 lt!11144))))

(assert (=> d!51463 (= (mergeSpec!0 (ite lt!11129 (tail!875 (head!850 llist!36)) (head!850 llist!36)) (ite lt!11129 (head!850 (tail!876 llist!36)) (tail!875 (head!850 (tail!876 llist!36)))) lt!11144) e!32211)))

(declare-fun b!60326 () Bool)

(assert (=> b!60326 (= e!32211 (= (content!15 lt!11144) (union (content!15 (ite lt!11129 (tail!875 (head!850 llist!36)) (head!850 llist!36))) (content!15 (ite lt!11129 (head!850 (tail!876 llist!36)) (tail!875 (head!850 (tail!876 llist!36))))))))))

(assert (= (and d!51463 res!28052) b!60326))

(declare-fun m!65170 () Bool)

(assert (=> d!51463 m!65170))

(declare-fun m!65172 () Bool)

(assert (=> b!60326 m!65172))

(declare-fun m!65174 () Bool)

(assert (=> b!60326 m!65174))

(declare-fun m!65176 () Bool)

(assert (=> b!60326 m!65176))

(assert (=> d!51427 d!51463))

(declare-fun d!51465 () Bool)

(declare-fun res!28053 () Bool)

(declare-fun e!32212 () Bool)

(assert (=> d!51465 (=> res!28053 e!32212)))

(assert (=> d!51465 (= res!28053 (or (is-Nil!506 (ite lt!11129 (tail!875 (head!850 llist!36)) (head!850 llist!36))) (and (is-Cons!505 (ite lt!11129 (tail!875 (head!850 llist!36)) (head!850 llist!36))) (is-Nil!506 (tail!875 (ite lt!11129 (tail!875 (head!850 llist!36)) (head!850 llist!36)))))))))

(assert (=> d!51465 (= (isSorted!4 (ite lt!11129 (tail!875 (head!850 llist!36)) (head!850 llist!36))) e!32212)))

(declare-fun b!60327 () Bool)

(declare-fun e!32213 () Bool)

(assert (=> b!60327 (= e!32212 e!32213)))

(declare-fun res!28054 () Bool)

(assert (=> b!60327 (=> (not res!28054) (not e!32213))))

(assert (=> b!60327 (= res!28054 (not (and (is-Cons!505 (ite lt!11129 (tail!875 (head!850 llist!36)) (head!850 llist!36))) (is-Cons!505 (tail!875 (ite lt!11129 (tail!875 (head!850 llist!36)) (head!850 llist!36)))) (bvsgt (head!849 (ite lt!11129 (tail!875 (head!850 llist!36)) (head!850 llist!36))) (head!849 (tail!875 (ite lt!11129 (tail!875 (head!850 llist!36)) (head!850 llist!36))))))))))

(declare-fun b!60328 () Bool)

(assert (=> b!60328 (= e!32213 (isSorted!4 (tail!875 (ite lt!11129 (tail!875 (head!850 llist!36)) (head!850 llist!36)))))))

(assert (= (and d!51465 (not res!28053)) b!60327))

(assert (= (and b!60327 res!28054) b!60328))

(declare-fun m!65178 () Bool)

(assert (=> b!60328 m!65178))

(assert (=> d!51427 d!51465))

(declare-fun d!51467 () Bool)

(declare-fun c!13083 () Bool)

(assert (=> d!51467 (= c!13083 (is-Nil!506 (head!850 (tail!876 (tail!876 llist!36)))))))

(declare-fun e!32214 () (Set (_ BitVec 32)))

(assert (=> d!51467 (= (content!15 (head!850 (tail!876 (tail!876 llist!36)))) e!32214)))

(declare-fun b!60329 () Bool)

(assert (=> b!60329 (= e!32214 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!60330 () Bool)

(assert (=> b!60330 (= e!32214 (union (insert (head!849 (head!850 (tail!876 (tail!876 llist!36)))) (as emptyset (Set (_ BitVec 32)))) (content!15 (tail!875 (head!850 (tail!876 (tail!876 llist!36)))))))))

(assert (= (and d!51467 c!13083) b!60329))

(assert (= (and d!51467 (not c!13083)) b!60330))

(declare-fun m!65180 () Bool)

(assert (=> b!60330 m!65180))

(declare-fun m!65182 () Bool)

(assert (=> b!60330 m!65182))

(assert (=> b!60299 d!51467))

(declare-fun d!51469 () Bool)

(declare-fun c!13084 () Bool)

(assert (=> d!51469 (= c!13084 (is-LNil!14 (tail!876 (tail!876 (tail!876 llist!36)))))))

(declare-fun e!32215 () (Set (_ BitVec 32)))

(assert (=> d!51469 (= (lContent!0 (tail!876 (tail!876 (tail!876 llist!36)))) e!32215)))

(declare-fun b!60331 () Bool)

(assert (=> b!60331 (= e!32215 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!60332 () Bool)

(assert (=> b!60332 (= e!32215 (union (content!15 (head!850 (tail!876 (tail!876 (tail!876 llist!36))))) (lContent!0 (tail!876 (tail!876 (tail!876 (tail!876 llist!36)))))))))

(assert (= (and d!51469 c!13084) b!60331))

(assert (= (and d!51469 (not c!13084)) b!60332))

(declare-fun m!65184 () Bool)

(assert (=> b!60332 m!65184))

(assert (=> b!60332 m!65110))

(assert (=> b!60299 d!51469))

(assert (=> b!60273 d!51437))

(declare-fun d!51471 () Bool)

(declare-fun res!28055 () Bool)

(declare-fun e!32216 () Bool)

(assert (=> d!51471 (=> res!28055 e!32216)))

(assert (=> d!51471 (= res!28055 (or (is-Nil!506 lt!11128) (and (is-Cons!505 lt!11128) (is-Nil!506 (tail!875 lt!11128)))))))

(assert (=> d!51471 (= (isSorted!4 lt!11128) e!32216)))

(declare-fun b!60333 () Bool)

(declare-fun e!32217 () Bool)

(assert (=> b!60333 (= e!32216 e!32217)))

(declare-fun res!28056 () Bool)

(assert (=> b!60333 (=> (not res!28056) (not e!32217))))

(assert (=> b!60333 (= res!28056 (not (and (is-Cons!505 lt!11128) (is-Cons!505 (tail!875 lt!11128)) (bvsgt (head!849 lt!11128) (head!849 (tail!875 lt!11128))))))))

(declare-fun b!60334 () Bool)

(assert (=> b!60334 (= e!32217 (isSorted!4 (tail!875 lt!11128)))))

(assert (= (and d!51471 (not res!28055)) b!60333))

(assert (= (and b!60333 res!28056) b!60334))

(declare-fun m!65186 () Bool)

(assert (=> b!60334 m!65186))

(assert (=> d!51431 d!51471))

(declare-fun d!51473 () Bool)

(declare-fun res!28057 () Bool)

(declare-fun e!32218 () Bool)

(assert (=> d!51473 (=> res!28057 e!32218)))

(assert (=> d!51473 (= res!28057 (is-LNil!14 (tail!876 lt!11132)))))

(assert (=> d!51473 (= (lIsSorted!0 (tail!876 lt!11132)) e!32218)))

(declare-fun b!60335 () Bool)

(declare-fun e!32219 () Bool)

(assert (=> b!60335 (= e!32218 e!32219)))

(declare-fun res!28058 () Bool)

(assert (=> b!60335 (=> (not res!28058) (not e!32219))))

(assert (=> b!60335 (= res!28058 (isSorted!4 (head!850 (tail!876 lt!11132))))))

(declare-fun b!60336 () Bool)

(assert (=> b!60336 (= e!32219 (lIsSorted!0 (tail!876 (tail!876 lt!11132))))))

(assert (= (and d!51473 (not res!28057)) b!60335))

(assert (= (and b!60335 res!28058) b!60336))

(declare-fun m!65188 () Bool)

(assert (=> b!60335 m!65188))

(declare-fun m!65190 () Bool)

(assert (=> b!60336 m!65190))

(assert (=> b!60307 d!51473))

(declare-fun d!51475 () Bool)

(declare-fun res!28059 () Bool)

(declare-fun e!32220 () Bool)

(assert (=> d!51475 (=> (not res!28059) (not e!32220))))

(assert (=> d!51475 (= res!28059 (isSorted!4 lt!11140))))

(assert (=> d!51475 (= (mergeSpec!0 (head!850 (tail!876 (tail!876 llist!36))) (head!850 (tail!876 (tail!876 (tail!876 llist!36)))) lt!11140) e!32220)))

(declare-fun b!60337 () Bool)

(assert (=> b!60337 (= e!32220 (= (content!15 lt!11140) (union (content!15 (head!850 (tail!876 (tail!876 llist!36)))) (content!15 (head!850 (tail!876 (tail!876 (tail!876 llist!36))))))))))

(assert (= (and d!51475 res!28059) b!60337))

(declare-fun m!65192 () Bool)

(assert (=> d!51475 m!65192))

(declare-fun m!65194 () Bool)

(assert (=> b!60337 m!65194))

(assert (=> b!60337 m!65132))

(assert (=> b!60337 m!65184))

(assert (=> d!51423 d!51475))

(declare-fun d!51477 () Bool)

(declare-fun res!28060 () Bool)

(declare-fun e!32221 () Bool)

(assert (=> d!51477 (=> res!28060 e!32221)))

(assert (=> d!51477 (= res!28060 (or (is-Nil!506 (head!850 (tail!876 (tail!876 llist!36)))) (and (is-Cons!505 (head!850 (tail!876 (tail!876 llist!36)))) (is-Nil!506 (tail!875 (head!850 (tail!876 (tail!876 llist!36))))))))))

(assert (=> d!51477 (= (isSorted!4 (head!850 (tail!876 (tail!876 llist!36)))) e!32221)))

(declare-fun b!60338 () Bool)

(declare-fun e!32222 () Bool)

(assert (=> b!60338 (= e!32221 e!32222)))

(declare-fun res!28061 () Bool)

(assert (=> b!60338 (=> (not res!28061) (not e!32222))))

(assert (=> b!60338 (= res!28061 (not (and (is-Cons!505 (head!850 (tail!876 (tail!876 llist!36)))) (is-Cons!505 (tail!875 (head!850 (tail!876 (tail!876 llist!36))))) (bvsgt (head!849 (head!850 (tail!876 (tail!876 llist!36)))) (head!849 (tail!875 (head!850 (tail!876 (tail!876 llist!36)))))))))))

(declare-fun b!60339 () Bool)

(assert (=> b!60339 (= e!32222 (isSorted!4 (tail!875 (head!850 (tail!876 (tail!876 llist!36))))))))

(assert (= (and d!51477 (not res!28060)) b!60338))

(assert (= (and b!60338 res!28061) b!60339))

(declare-fun m!65196 () Bool)

(assert (=> b!60339 m!65196))

(assert (=> d!51423 d!51477))

(declare-fun b!60340 () Bool)

(declare-fun e!32223 () Bool)

(assert (=> b!60340 (= e!32223 (isSorted!4 (head!850 (tail!876 (tail!876 (tail!876 (tail!876 (tail!876 llist!36))))))))))

(declare-fun b!60341 () Bool)

(declare-fun e!32224 () List!539)

(assert (=> b!60341 (= e!32224 (head!850 (tail!876 (tail!876 (tail!876 (tail!876 (tail!876 llist!36)))))))))

(declare-fun b!60342 () Bool)

(declare-fun e!32225 () List!539)

(assert (=> b!60342 (= e!32225 (head!850 (tail!876 (tail!876 (tail!876 (tail!876 llist!36))))))))

(declare-fun b!60343 () Bool)

(assert (=> b!60343 (= e!32225 e!32224)))

(declare-fun c!13086 () Bool)

(assert (=> b!60343 (= c!13086 (is-Nil!506 (head!850 (tail!876 (tail!876 (tail!876 (tail!876 llist!36)))))))))

(declare-fun d!51479 () Bool)

(declare-fun lt!11150 () List!539)

(assert (=> d!51479 (mergeSpec!0 (head!850 (tail!876 (tail!876 (tail!876 (tail!876 llist!36))))) (head!850 (tail!876 (tail!876 (tail!876 (tail!876 (tail!876 llist!36)))))) lt!11150)))

(assert (=> d!51479 (= lt!11150 e!32225)))

(declare-fun c!13085 () Bool)

(assert (=> d!51479 (= c!13085 (is-Nil!506 (head!850 (tail!876 (tail!876 (tail!876 (tail!876 (tail!876 llist!36))))))))))

(assert (=> d!51479 e!32223))

(declare-fun res!28062 () Bool)

(assert (=> d!51479 (=> (not res!28062) (not e!32223))))

(assert (=> d!51479 (= res!28062 (isSorted!4 (head!850 (tail!876 (tail!876 (tail!876 (tail!876 llist!36)))))))))

(assert (=> d!51479 (= (mergeFast!0 (head!850 (tail!876 (tail!876 (tail!876 (tail!876 llist!36))))) (head!850 (tail!876 (tail!876 (tail!876 (tail!876 (tail!876 llist!36))))))) lt!11150)))

(declare-fun b!60344 () Bool)

(declare-fun lt!11149 () List!539)

(declare-fun lt!11151 () Bool)

(assert (=> b!60344 (= e!32224 (ite lt!11151 (Cons!505 (head!849 (head!850 (tail!876 (tail!876 (tail!876 (tail!876 llist!36)))))) lt!11149) (Cons!505 (head!849 (head!850 (tail!876 (tail!876 (tail!876 (tail!876 (tail!876 llist!36))))))) lt!11149)))))

(assert (=> b!60344 (= lt!11149 (mergeFast!0 (ite lt!11151 (tail!875 (head!850 (tail!876 (tail!876 (tail!876 (tail!876 llist!36)))))) (head!850 (tail!876 (tail!876 (tail!876 (tail!876 llist!36)))))) (ite lt!11151 (head!850 (tail!876 (tail!876 (tail!876 (tail!876 (tail!876 llist!36)))))) (tail!875 (head!850 (tail!876 (tail!876 (tail!876 (tail!876 (tail!876 llist!36))))))))))))

(assert (=> b!60344 (= lt!11151 (bvsle (head!849 (head!850 (tail!876 (tail!876 (tail!876 (tail!876 llist!36)))))) (head!849 (head!850 (tail!876 (tail!876 (tail!876 (tail!876 (tail!876 llist!36)))))))))))

(assert (= (and d!51479 res!28062) b!60340))

(assert (= (and b!60343 c!13086) b!60341))

(assert (= (and b!60343 (not c!13086)) b!60344))

(assert (= (and d!51479 c!13085) b!60342))

(assert (= (and d!51479 (not c!13085)) b!60343))

(declare-fun m!65198 () Bool)

(assert (=> b!60340 m!65198))

(declare-fun m!65200 () Bool)

(assert (=> d!51479 m!65200))

(declare-fun m!65202 () Bool)

(assert (=> d!51479 m!65202))

(declare-fun m!65204 () Bool)

(assert (=> b!60344 m!65204))

(assert (=> b!60279 d!51479))

(declare-fun b!60345 () Bool)

(declare-fun e!32229 () LList!15)

(assert (=> b!60345 (= e!32229 (LCons!14 (mergeFast!0 (head!850 (tail!876 (tail!876 (tail!876 (tail!876 (tail!876 (tail!876 llist!36))))))) (head!850 (tail!876 (tail!876 (tail!876 (tail!876 (tail!876 (tail!876 (tail!876 llist!36))))))))) (mergeMap!0 (tail!876 (tail!876 (tail!876 (tail!876 (tail!876 (tail!876 (tail!876 (tail!876 llist!36)))))))))))))

(declare-fun b!60346 () Bool)

(assert (=> b!60346 (= e!32229 (tail!876 (tail!876 (tail!876 (tail!876 (tail!876 (tail!876 llist!36)))))))))

(declare-fun b!60347 () Bool)

(declare-fun res!28065 () Bool)

(declare-fun e!32226 () Bool)

(assert (=> b!60347 (=> (not res!28065) (not e!32226))))

(declare-fun lt!11152 () LList!15)

(assert (=> b!60347 (= res!28065 (lIsSorted!0 lt!11152))))

(declare-fun d!51481 () Bool)

(assert (=> d!51481 e!32226))

(declare-fun res!28064 () Bool)

(assert (=> d!51481 (=> (not res!28064) (not e!32226))))

(assert (=> d!51481 (= res!28064 (= (lContent!0 lt!11152) (lContent!0 (tail!876 (tail!876 (tail!876 (tail!876 (tail!876 (tail!876 llist!36)))))))))))

(declare-fun e!32227 () LList!15)

(assert (=> d!51481 (= lt!11152 e!32227)))

(declare-fun c!13088 () Bool)

(assert (=> d!51481 (= c!13088 (is-LNil!14 (tail!876 (tail!876 (tail!876 (tail!876 (tail!876 (tail!876 llist!36))))))))))

(assert (=> d!51481 (lIsSorted!0 (tail!876 (tail!876 (tail!876 (tail!876 (tail!876 (tail!876 llist!36)))))))))

(assert (=> d!51481 (= (mergeMap!0 (tail!876 (tail!876 (tail!876 (tail!876 (tail!876 (tail!876 llist!36))))))) lt!11152)))

(declare-fun b!60348 () Bool)

(declare-fun e!32228 () Bool)

(assert (=> b!60348 (= e!32228 (< (lSize!0 lt!11152) (lSize!0 (tail!876 (tail!876 (tail!876 (tail!876 (tail!876 (tail!876 llist!36)))))))))))

(declare-fun b!60349 () Bool)

(assert (=> b!60349 (= e!32227 e!32229)))

(declare-fun c!13087 () Bool)

(assert (=> b!60349 (= c!13087 (and (is-LCons!14 (tail!876 (tail!876 (tail!876 (tail!876 (tail!876 (tail!876 llist!36))))))) (is-LNil!14 (tail!876 (tail!876 (tail!876 (tail!876 (tail!876 (tail!876 (tail!876 llist!36))))))))))))

(declare-fun b!60350 () Bool)

(assert (=> b!60350 (= e!32227 LNil!14)))

(declare-fun b!60351 () Bool)

(assert (=> b!60351 (= e!32226 e!32228)))

(declare-fun res!28063 () Bool)

(assert (=> b!60351 (=> res!28063 e!32228)))

(assert (=> b!60351 (= res!28063 (<= (lSize!0 (tail!876 (tail!876 (tail!876 (tail!876 (tail!876 (tail!876 llist!36))))))) 1))))

(assert (= (and b!60349 c!13087) b!60346))

(assert (= (and b!60349 (not c!13087)) b!60345))

(assert (= (and d!51481 c!13088) b!60350))

(assert (= (and d!51481 (not c!13088)) b!60349))

(assert (= (and d!51481 res!28064) b!60347))

(assert (= (and b!60347 res!28065) b!60351))

(assert (= (and b!60351 (not res!28063)) b!60348))

(declare-fun m!65206 () Bool)

(assert (=> b!60345 m!65206))

(declare-fun m!65208 () Bool)

(assert (=> b!60345 m!65208))

(declare-fun m!65210 () Bool)

(assert (=> b!60348 m!65210))

(declare-fun m!65212 () Bool)

(assert (=> b!60348 m!65212))

(declare-fun m!65214 () Bool)

(assert (=> b!60347 m!65214))

(assert (=> b!60351 m!65212))

(declare-fun m!65216 () Bool)

(assert (=> d!51481 m!65216))

(declare-fun m!65218 () Bool)

(assert (=> d!51481 m!65218))

(declare-fun m!65220 () Bool)

(assert (=> d!51481 m!65220))

(assert (=> b!60279 d!51481))

(declare-fun d!51483 () Bool)

(declare-fun res!28066 () Bool)

(declare-fun e!32230 () Bool)

(assert (=> d!51483 (=> res!28066 e!32230)))

(assert (=> d!51483 (= res!28066 (is-LNil!14 lt!11142))))

(assert (=> d!51483 (= (lIsSorted!0 lt!11142) e!32230)))

(declare-fun b!60352 () Bool)

(declare-fun e!32231 () Bool)

(assert (=> b!60352 (= e!32230 e!32231)))

(declare-fun res!28067 () Bool)

(assert (=> b!60352 (=> (not res!28067) (not e!32231))))

(assert (=> b!60352 (= res!28067 (isSorted!4 (head!850 lt!11142)))))

(declare-fun b!60353 () Bool)

(assert (=> b!60353 (= e!32231 (lIsSorted!0 (tail!876 lt!11142)))))

(assert (= (and d!51483 (not res!28066)) b!60352))

(assert (= (and b!60352 res!28067) b!60353))

(declare-fun m!65222 () Bool)

(assert (=> b!60352 m!65222))

(declare-fun m!65224 () Bool)

(assert (=> b!60353 m!65224))

(assert (=> b!60281 d!51483))

(declare-fun d!51485 () Bool)

(declare-fun res!28068 () Bool)

(declare-fun e!32232 () Bool)

(assert (=> d!51485 (=> res!28068 e!32232)))

(assert (=> d!51485 (= res!28068 (or (is-Nil!506 (head!850 (tail!876 res!27412))) (and (is-Cons!505 (head!850 (tail!876 res!27412))) (is-Nil!506 (tail!875 (head!850 (tail!876 res!27412)))))))))

(assert (=> d!51485 (= (isSorted!4 (head!850 (tail!876 res!27412))) e!32232)))

(declare-fun b!60354 () Bool)

(declare-fun e!32233 () Bool)

(assert (=> b!60354 (= e!32232 e!32233)))

(declare-fun res!28069 () Bool)

(assert (=> b!60354 (=> (not res!28069) (not e!32233))))

(assert (=> b!60354 (= res!28069 (not (and (is-Cons!505 (head!850 (tail!876 res!27412))) (is-Cons!505 (tail!875 (head!850 (tail!876 res!27412)))) (bvsgt (head!849 (head!850 (tail!876 res!27412))) (head!849 (tail!875 (head!850 (tail!876 res!27412))))))))))

(declare-fun b!60355 () Bool)

(assert (=> b!60355 (= e!32233 (isSorted!4 (tail!875 (head!850 (tail!876 res!27412)))))))

(assert (= (and d!51485 (not res!28068)) b!60354))

(assert (= (and b!60354 res!28069) b!60355))

(declare-fun m!65226 () Bool)

(assert (=> b!60355 m!65226))

(assert (=> b!60302 d!51485))

(declare-fun e!32234 () Bool)

(declare-fun b!60356 () Bool)

(assert (=> b!60356 (= e!32234 (isSorted!4 (ite lt!11145 (ite lt!11129 (head!850 (tail!876 llist!36)) (tail!875 (head!850 (tail!876 llist!36)))) (tail!875 (ite lt!11129 (head!850 (tail!876 llist!36)) (tail!875 (head!850 (tail!876 llist!36))))))))))

(declare-fun b!60357 () Bool)

(declare-fun e!32235 () List!539)

(assert (=> b!60357 (= e!32235 (ite lt!11145 (ite lt!11129 (head!850 (tail!876 llist!36)) (tail!875 (head!850 (tail!876 llist!36)))) (tail!875 (ite lt!11129 (head!850 (tail!876 llist!36)) (tail!875 (head!850 (tail!876 llist!36)))))))))

(declare-fun e!32236 () List!539)

(declare-fun b!60358 () Bool)

(assert (=> b!60358 (= e!32236 (ite lt!11145 (tail!875 (ite lt!11129 (tail!875 (head!850 llist!36)) (head!850 llist!36))) (ite lt!11129 (tail!875 (head!850 llist!36)) (head!850 llist!36))))))

(declare-fun b!60359 () Bool)

(assert (=> b!60359 (= e!32236 e!32235)))

(declare-fun c!13090 () Bool)

(assert (=> b!60359 (= c!13090 (is-Nil!506 (ite lt!11145 (tail!875 (ite lt!11129 (tail!875 (head!850 llist!36)) (head!850 llist!36))) (ite lt!11129 (tail!875 (head!850 llist!36)) (head!850 llist!36)))))))

(declare-fun d!51487 () Bool)

(declare-fun lt!11154 () List!539)

(assert (=> d!51487 (mergeSpec!0 (ite lt!11145 (tail!875 (ite lt!11129 (tail!875 (head!850 llist!36)) (head!850 llist!36))) (ite lt!11129 (tail!875 (head!850 llist!36)) (head!850 llist!36))) (ite lt!11145 (ite lt!11129 (head!850 (tail!876 llist!36)) (tail!875 (head!850 (tail!876 llist!36)))) (tail!875 (ite lt!11129 (head!850 (tail!876 llist!36)) (tail!875 (head!850 (tail!876 llist!36)))))) lt!11154)))

(assert (=> d!51487 (= lt!11154 e!32236)))

(declare-fun c!13089 () Bool)

(assert (=> d!51487 (= c!13089 (is-Nil!506 (ite lt!11145 (ite lt!11129 (head!850 (tail!876 llist!36)) (tail!875 (head!850 (tail!876 llist!36)))) (tail!875 (ite lt!11129 (head!850 (tail!876 llist!36)) (tail!875 (head!850 (tail!876 llist!36))))))))))

(assert (=> d!51487 e!32234))

(declare-fun res!28070 () Bool)

(assert (=> d!51487 (=> (not res!28070) (not e!32234))))

(assert (=> d!51487 (= res!28070 (isSorted!4 (ite lt!11145 (tail!875 (ite lt!11129 (tail!875 (head!850 llist!36)) (head!850 llist!36))) (ite lt!11129 (tail!875 (head!850 llist!36)) (head!850 llist!36)))))))

(assert (=> d!51487 (= (mergeFast!0 (ite lt!11145 (tail!875 (ite lt!11129 (tail!875 (head!850 llist!36)) (head!850 llist!36))) (ite lt!11129 (tail!875 (head!850 llist!36)) (head!850 llist!36))) (ite lt!11145 (ite lt!11129 (head!850 (tail!876 llist!36)) (tail!875 (head!850 (tail!876 llist!36)))) (tail!875 (ite lt!11129 (head!850 (tail!876 llist!36)) (tail!875 (head!850 (tail!876 llist!36))))))) lt!11154)))

(declare-fun lt!11155 () Bool)

(declare-fun lt!11153 () List!539)

(declare-fun b!60360 () Bool)

(assert (=> b!60360 (= e!32235 (ite lt!11155 (Cons!505 (head!849 (ite lt!11145 (tail!875 (ite lt!11129 (tail!875 (head!850 llist!36)) (head!850 llist!36))) (ite lt!11129 (tail!875 (head!850 llist!36)) (head!850 llist!36)))) lt!11153) (Cons!505 (head!849 (ite lt!11145 (ite lt!11129 (head!850 (tail!876 llist!36)) (tail!875 (head!850 (tail!876 llist!36)))) (tail!875 (ite lt!11129 (head!850 (tail!876 llist!36)) (tail!875 (head!850 (tail!876 llist!36))))))) lt!11153)))))

(assert (=> b!60360 (= lt!11153 (mergeFast!0 (ite lt!11155 (tail!875 (ite lt!11145 (tail!875 (ite lt!11129 (tail!875 (head!850 llist!36)) (head!850 llist!36))) (ite lt!11129 (tail!875 (head!850 llist!36)) (head!850 llist!36)))) (ite lt!11145 (tail!875 (ite lt!11129 (tail!875 (head!850 llist!36)) (head!850 llist!36))) (ite lt!11129 (tail!875 (head!850 llist!36)) (head!850 llist!36)))) (ite lt!11155 (ite lt!11145 (ite lt!11129 (head!850 (tail!876 llist!36)) (tail!875 (head!850 (tail!876 llist!36)))) (tail!875 (ite lt!11129 (head!850 (tail!876 llist!36)) (tail!875 (head!850 (tail!876 llist!36)))))) (tail!875 (ite lt!11145 (ite lt!11129 (head!850 (tail!876 llist!36)) (tail!875 (head!850 (tail!876 llist!36)))) (tail!875 (ite lt!11129 (head!850 (tail!876 llist!36)) (tail!875 (head!850 (tail!876 llist!36))))))))))))

(assert (=> b!60360 (= lt!11155 (bvsle (head!849 (ite lt!11145 (tail!875 (ite lt!11129 (tail!875 (head!850 llist!36)) (head!850 llist!36))) (ite lt!11129 (tail!875 (head!850 llist!36)) (head!850 llist!36)))) (head!849 (ite lt!11145 (ite lt!11129 (head!850 (tail!876 llist!36)) (tail!875 (head!850 (tail!876 llist!36)))) (tail!875 (ite lt!11129 (head!850 (tail!876 llist!36)) (tail!875 (head!850 (tail!876 llist!36)))))))))))

(assert (= (and d!51487 res!28070) b!60356))

(assert (= (and b!60359 c!13090) b!60357))

(assert (= (and b!60359 (not c!13090)) b!60360))

(assert (= (and d!51487 c!13089) b!60358))

(assert (= (and d!51487 (not c!13089)) b!60359))

(declare-fun m!65228 () Bool)

(assert (=> b!60356 m!65228))

(declare-fun m!65230 () Bool)

(assert (=> d!51487 m!65230))

(declare-fun m!65232 () Bool)

(assert (=> d!51487 m!65232))

(declare-fun m!65234 () Bool)

(assert (=> b!60360 m!65234))

(assert (=> b!60290 d!51487))

(declare-fun d!51489 () Bool)

(declare-fun c!13091 () Bool)

(assert (=> d!51489 (= c!13091 (is-LNil!14 lt!11142))))

(declare-fun e!32237 () (Set (_ BitVec 32)))

(assert (=> d!51489 (= (lContent!0 lt!11142) e!32237)))

(declare-fun b!60361 () Bool)

(assert (=> b!60361 (= e!32237 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!60362 () Bool)

(assert (=> b!60362 (= e!32237 (union (content!15 (head!850 lt!11142)) (lContent!0 (tail!876 lt!11142))))))

(assert (= (and d!51489 c!13091) b!60361))

(assert (= (and d!51489 (not c!13091)) b!60362))

(declare-fun m!65236 () Bool)

(assert (=> b!60362 m!65236))

(declare-fun m!65238 () Bool)

(assert (=> b!60362 m!65238))

(assert (=> d!51425 d!51489))

(declare-fun d!51491 () Bool)

(declare-fun c!13092 () Bool)

(assert (=> d!51491 (= c!13092 (is-LNil!14 (tail!876 (tail!876 (tail!876 (tail!876 llist!36))))))))

(declare-fun e!32238 () (Set (_ BitVec 32)))

(assert (=> d!51491 (= (lContent!0 (tail!876 (tail!876 (tail!876 (tail!876 llist!36))))) e!32238)))

(declare-fun b!60363 () Bool)

(assert (=> b!60363 (= e!32238 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!60364 () Bool)

(assert (=> b!60364 (= e!32238 (union (content!15 (head!850 (tail!876 (tail!876 (tail!876 (tail!876 llist!36)))))) (lContent!0 (tail!876 (tail!876 (tail!876 (tail!876 (tail!876 llist!36))))))))))

(assert (= (and d!51491 c!13092) b!60363))

(assert (= (and d!51491 (not c!13092)) b!60364))

(declare-fun m!65240 () Bool)

(assert (=> b!60364 m!65240))

(declare-fun m!65242 () Bool)

(assert (=> b!60364 m!65242))

(assert (=> d!51425 d!51491))

(declare-fun d!51493 () Bool)

(declare-fun res!28071 () Bool)

(declare-fun e!32239 () Bool)

(assert (=> d!51493 (=> res!28071 e!32239)))

(assert (=> d!51493 (= res!28071 (is-LNil!14 (tail!876 (tail!876 (tail!876 (tail!876 llist!36))))))))

(assert (=> d!51493 (= (lIsSorted!0 (tail!876 (tail!876 (tail!876 (tail!876 llist!36))))) e!32239)))

(declare-fun b!60365 () Bool)

(declare-fun e!32240 () Bool)

(assert (=> b!60365 (= e!32239 e!32240)))

(declare-fun res!28072 () Bool)

(assert (=> b!60365 (=> (not res!28072) (not e!32240))))

(assert (=> b!60365 (= res!28072 (isSorted!4 (head!850 (tail!876 (tail!876 (tail!876 (tail!876 llist!36)))))))))

(declare-fun b!60366 () Bool)

(assert (=> b!60366 (= e!32240 (lIsSorted!0 (tail!876 (tail!876 (tail!876 (tail!876 (tail!876 llist!36)))))))))

(assert (= (and d!51493 (not res!28071)) b!60365))

(assert (= (and b!60365 res!28072) b!60366))

(assert (=> b!60365 m!65202))

(declare-fun m!65244 () Bool)

(assert (=> b!60366 m!65244))

(assert (=> d!51425 d!51493))

(declare-fun d!51495 () Bool)

(declare-fun res!28073 () Bool)

(declare-fun e!32241 () Bool)

(assert (=> d!51495 (=> res!28073 e!32241)))

(assert (=> d!51495 (= res!28073 (is-LNil!14 (tail!876 (tail!876 res!27412))))))

(assert (=> d!51495 (= (lIsSorted!0 (tail!876 (tail!876 res!27412))) e!32241)))

(declare-fun b!60367 () Bool)

(declare-fun e!32242 () Bool)

(assert (=> b!60367 (= e!32241 e!32242)))

(declare-fun res!28074 () Bool)

(assert (=> b!60367 (=> (not res!28074) (not e!32242))))

(assert (=> b!60367 (= res!28074 (isSorted!4 (head!850 (tail!876 (tail!876 res!27412)))))))

(declare-fun b!60368 () Bool)

(assert (=> b!60368 (= e!32242 (lIsSorted!0 (tail!876 (tail!876 (tail!876 res!27412)))))))

(assert (= (and d!51495 (not res!28073)) b!60367))

(assert (= (and b!60367 res!28074) b!60368))

(declare-fun m!65246 () Bool)

(assert (=> b!60367 m!65246))

(declare-fun m!65248 () Bool)

(assert (=> b!60368 m!65248))

(assert (=> b!60303 d!51495))

(declare-fun d!51497 () Bool)

(declare-fun res!28075 () Bool)

(declare-fun e!32243 () Bool)

(assert (=> d!51497 (=> res!28075 e!32243)))

(assert (=> d!51497 (= res!28075 (or (is-Nil!506 (tail!875 (head!850 (tail!876 llist!36)))) (and (is-Cons!505 (tail!875 (head!850 (tail!876 llist!36)))) (is-Nil!506 (tail!875 (tail!875 (head!850 (tail!876 llist!36))))))))))

(assert (=> d!51497 (= (isSorted!4 (tail!875 (head!850 (tail!876 llist!36)))) e!32243)))

(declare-fun b!60369 () Bool)

(declare-fun e!32244 () Bool)

(assert (=> b!60369 (= e!32243 e!32244)))

(declare-fun res!28076 () Bool)

(assert (=> b!60369 (=> (not res!28076) (not e!32244))))

(assert (=> b!60369 (= res!28076 (not (and (is-Cons!505 (tail!875 (head!850 (tail!876 llist!36)))) (is-Cons!505 (tail!875 (tail!875 (head!850 (tail!876 llist!36))))) (bvsgt (head!849 (tail!875 (head!850 (tail!876 llist!36)))) (head!849 (tail!875 (tail!875 (head!850 (tail!876 llist!36)))))))))))

(declare-fun b!60370 () Bool)

(assert (=> b!60370 (= e!32244 (isSorted!4 (tail!875 (tail!875 (head!850 (tail!876 llist!36))))))))

(assert (= (and d!51497 (not res!28075)) b!60369))

(assert (= (and b!60369 res!28076) b!60370))

(declare-fun m!65250 () Bool)

(assert (=> b!60370 m!65250))

(assert (=> b!60265 d!51497))

(declare-fun d!51499 () Bool)

(declare-fun res!28077 () Bool)

(declare-fun e!32245 () Bool)

(assert (=> d!51499 (=> res!28077 e!32245)))

(assert (=> d!51499 (= res!28077 (or (is-Nil!506 (ite lt!11129 (head!850 (tail!876 llist!36)) (tail!875 (head!850 (tail!876 llist!36))))) (and (is-Cons!505 (ite lt!11129 (head!850 (tail!876 llist!36)) (tail!875 (head!850 (tail!876 llist!36))))) (is-Nil!506 (tail!875 (ite lt!11129 (head!850 (tail!876 llist!36)) (tail!875 (head!850 (tail!876 llist!36)))))))))))

(assert (=> d!51499 (= (isSorted!4 (ite lt!11129 (head!850 (tail!876 llist!36)) (tail!875 (head!850 (tail!876 llist!36))))) e!32245)))

(declare-fun b!60371 () Bool)

(declare-fun e!32246 () Bool)

(assert (=> b!60371 (= e!32245 e!32246)))

(declare-fun res!28078 () Bool)

(assert (=> b!60371 (=> (not res!28078) (not e!32246))))

(assert (=> b!60371 (= res!28078 (not (and (is-Cons!505 (ite lt!11129 (head!850 (tail!876 llist!36)) (tail!875 (head!850 (tail!876 llist!36))))) (is-Cons!505 (tail!875 (ite lt!11129 (head!850 (tail!876 llist!36)) (tail!875 (head!850 (tail!876 llist!36)))))) (bvsgt (head!849 (ite lt!11129 (head!850 (tail!876 llist!36)) (tail!875 (head!850 (tail!876 llist!36))))) (head!849 (tail!875 (ite lt!11129 (head!850 (tail!876 llist!36)) (tail!875 (head!850 (tail!876 llist!36))))))))))))

(declare-fun b!60372 () Bool)

(assert (=> b!60372 (= e!32246 (isSorted!4 (tail!875 (ite lt!11129 (head!850 (tail!876 llist!36)) (tail!875 (head!850 (tail!876 llist!36)))))))))

(assert (= (and d!51499 (not res!28077)) b!60371))

(assert (= (and b!60371 res!28078) b!60372))

(declare-fun m!65252 () Bool)

(assert (=> b!60372 m!65252))

(assert (=> b!60286 d!51499))

(declare-fun d!51501 () Bool)

(declare-fun lt!11156 () Int)

(assert (=> d!51501 (>= lt!11156 0)))

(declare-fun e!32247 () Int)

(assert (=> d!51501 (= lt!11156 e!32247)))

(declare-fun c!13093 () Bool)

(assert (=> d!51501 (= c!13093 (is-LNil!14 (tail!876 (tail!876 (tail!876 (tail!876 llist!36))))))))

(assert (=> d!51501 (= (lSize!0 (tail!876 (tail!876 (tail!876 (tail!876 llist!36))))) lt!11156)))

(declare-fun b!60373 () Bool)

(assert (=> b!60373 (= e!32247 0)))

(declare-fun b!60374 () Bool)

(assert (=> b!60374 (= e!32247 (+ 1 (lSize!0 (tail!876 (tail!876 (tail!876 (tail!876 (tail!876 llist!36))))))))))

(assert (= (and d!51501 c!13093) b!60373))

(assert (= (and d!51501 (not c!13093)) b!60374))

(declare-fun m!65254 () Bool)

(assert (=> b!60374 m!65254))

(assert (=> b!60285 d!51501))

(declare-fun d!51503 () Bool)

(declare-fun res!28079 () Bool)

(declare-fun e!32248 () Bool)

(assert (=> d!51503 (=> res!28079 e!32248)))

(assert (=> d!51503 (= res!28079 (or (is-Nil!506 (tail!875 (head!850 llist!36))) (and (is-Cons!505 (tail!875 (head!850 llist!36))) (is-Nil!506 (tail!875 (tail!875 (head!850 llist!36)))))))))

(assert (=> d!51503 (= (isSorted!4 (tail!875 (head!850 llist!36))) e!32248)))

(declare-fun b!60375 () Bool)

(declare-fun e!32249 () Bool)

(assert (=> b!60375 (= e!32248 e!32249)))

(declare-fun res!28080 () Bool)

(assert (=> b!60375 (=> (not res!28080) (not e!32249))))

(assert (=> b!60375 (= res!28080 (not (and (is-Cons!505 (tail!875 (head!850 llist!36))) (is-Cons!505 (tail!875 (tail!875 (head!850 llist!36)))) (bvsgt (head!849 (tail!875 (head!850 llist!36))) (head!849 (tail!875 (tail!875 (head!850 llist!36))))))))))

(declare-fun b!60376 () Bool)

(assert (=> b!60376 (= e!32249 (isSorted!4 (tail!875 (tail!875 (head!850 llist!36)))))))

(assert (= (and d!51503 (not res!28079)) b!60375))

(assert (= (and b!60375 res!28080) b!60376))

(declare-fun m!65256 () Bool)

(assert (=> b!60376 m!65256))

(assert (=> b!60292 d!51503))

(declare-fun d!51505 () Bool)

(declare-fun res!28081 () Bool)

(declare-fun e!32250 () Bool)

(assert (=> d!51505 (=> res!28081 e!32250)))

(assert (=> d!51505 (= res!28081 (or (is-Nil!506 (tail!875 (head!850 res!27412))) (and (is-Cons!505 (tail!875 (head!850 res!27412))) (is-Nil!506 (tail!875 (tail!875 (head!850 res!27412)))))))))

(assert (=> d!51505 (= (isSorted!4 (tail!875 (head!850 res!27412))) e!32250)))

(declare-fun b!60377 () Bool)

(declare-fun e!32251 () Bool)

(assert (=> b!60377 (= e!32250 e!32251)))

(declare-fun res!28082 () Bool)

(assert (=> b!60377 (=> (not res!28082) (not e!32251))))

(assert (=> b!60377 (= res!28082 (not (and (is-Cons!505 (tail!875 (head!850 res!27412))) (is-Cons!505 (tail!875 (tail!875 (head!850 res!27412)))) (bvsgt (head!849 (tail!875 (head!850 res!27412))) (head!849 (tail!875 (tail!875 (head!850 res!27412))))))))))

(declare-fun b!60378 () Bool)

(assert (=> b!60378 (= e!32251 (isSorted!4 (tail!875 (tail!875 (head!850 res!27412)))))))

(assert (= (and d!51505 (not res!28081)) b!60377))

(assert (= (and b!60377 res!28082) b!60378))

(declare-fun m!65258 () Bool)

(assert (=> b!60378 m!65258))

(assert (=> b!60267 d!51505))

(assert (=> b!60272 d!51413))

(assert (=> b!60300 d!51477))

(declare-fun d!51507 () Bool)

(declare-fun c!13094 () Bool)

(assert (=> d!51507 (= c!13094 (is-Nil!506 (tail!875 (head!850 llist!36))))))

(declare-fun e!32252 () (Set (_ BitVec 32)))

(assert (=> d!51507 (= (content!15 (tail!875 (head!850 llist!36))) e!32252)))

(declare-fun b!60379 () Bool)

(assert (=> b!60379 (= e!32252 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!60380 () Bool)

(assert (=> b!60380 (= e!32252 (union (insert (head!849 (tail!875 (head!850 llist!36))) (as emptyset (Set (_ BitVec 32)))) (content!15 (tail!875 (tail!875 (head!850 llist!36))))))))

(assert (= (and d!51507 c!13094) b!60379))

(assert (= (and d!51507 (not c!13094)) b!60380))

(declare-fun m!65260 () Bool)

(assert (=> b!60380 m!65260))

(declare-fun m!65262 () Bool)

(assert (=> b!60380 m!65262))

(assert (=> b!60257 d!51507))

(declare-fun d!51509 () Bool)

(declare-fun lt!11157 () Int)

(assert (=> d!51509 (>= lt!11157 0)))

(declare-fun e!32253 () Int)

(assert (=> d!51509 (= lt!11157 e!32253)))

(declare-fun c!13095 () Bool)

(assert (=> d!51509 (= c!13095 (is-LNil!14 (tail!876 (tail!876 res!27412))))))

(assert (=> d!51509 (= (lSize!0 (tail!876 (tail!876 res!27412))) lt!11157)))

(declare-fun b!60381 () Bool)

(assert (=> b!60381 (= e!32253 0)))

(declare-fun b!60382 () Bool)

(assert (=> b!60382 (= e!32253 (+ 1 (lSize!0 (tail!876 (tail!876 (tail!876 res!27412))))))))

(assert (= (and d!51509 c!13095) b!60381))

(assert (= (and d!51509 (not c!13095)) b!60382))

(declare-fun m!65264 () Bool)

(assert (=> b!60382 m!65264))

(assert (=> b!60271 d!51509))

(declare-fun b!60383 () Bool)

(declare-fun e!32254 () Bool)

(assert (=> b!60383 (= e!32254 (isSorted!4 (ite lt!11141 (head!850 (tail!876 (tail!876 (tail!876 llist!36)))) (tail!875 (head!850 (tail!876 (tail!876 (tail!876 llist!36))))))))))

(declare-fun b!60384 () Bool)

(declare-fun e!32255 () List!539)

(assert (=> b!60384 (= e!32255 (ite lt!11141 (head!850 (tail!876 (tail!876 (tail!876 llist!36)))) (tail!875 (head!850 (tail!876 (tail!876 (tail!876 llist!36)))))))))

(declare-fun b!60385 () Bool)

(declare-fun e!32256 () List!539)

(assert (=> b!60385 (= e!32256 (ite lt!11141 (tail!875 (head!850 (tail!876 (tail!876 llist!36)))) (head!850 (tail!876 (tail!876 llist!36)))))))

(declare-fun b!60386 () Bool)

(assert (=> b!60386 (= e!32256 e!32255)))

(declare-fun c!13097 () Bool)

(assert (=> b!60386 (= c!13097 (is-Nil!506 (ite lt!11141 (tail!875 (head!850 (tail!876 (tail!876 llist!36)))) (head!850 (tail!876 (tail!876 llist!36))))))))

(declare-fun d!51511 () Bool)

(declare-fun lt!11159 () List!539)

(assert (=> d!51511 (mergeSpec!0 (ite lt!11141 (tail!875 (head!850 (tail!876 (tail!876 llist!36)))) (head!850 (tail!876 (tail!876 llist!36)))) (ite lt!11141 (head!850 (tail!876 (tail!876 (tail!876 llist!36)))) (tail!875 (head!850 (tail!876 (tail!876 (tail!876 llist!36)))))) lt!11159)))

(assert (=> d!51511 (= lt!11159 e!32256)))

(declare-fun c!13096 () Bool)

(assert (=> d!51511 (= c!13096 (is-Nil!506 (ite lt!11141 (head!850 (tail!876 (tail!876 (tail!876 llist!36)))) (tail!875 (head!850 (tail!876 (tail!876 (tail!876 llist!36))))))))))

(assert (=> d!51511 e!32254))

(declare-fun res!28083 () Bool)

(assert (=> d!51511 (=> (not res!28083) (not e!32254))))

(assert (=> d!51511 (= res!28083 (isSorted!4 (ite lt!11141 (tail!875 (head!850 (tail!876 (tail!876 llist!36)))) (head!850 (tail!876 (tail!876 llist!36))))))))

(assert (=> d!51511 (= (mergeFast!0 (ite lt!11141 (tail!875 (head!850 (tail!876 (tail!876 llist!36)))) (head!850 (tail!876 (tail!876 llist!36)))) (ite lt!11141 (head!850 (tail!876 (tail!876 (tail!876 llist!36)))) (tail!875 (head!850 (tail!876 (tail!876 (tail!876 llist!36))))))) lt!11159)))

(declare-fun b!60387 () Bool)

(declare-fun lt!11158 () List!539)

(declare-fun lt!11160 () Bool)

(assert (=> b!60387 (= e!32255 (ite lt!11160 (Cons!505 (head!849 (ite lt!11141 (tail!875 (head!850 (tail!876 (tail!876 llist!36)))) (head!850 (tail!876 (tail!876 llist!36))))) lt!11158) (Cons!505 (head!849 (ite lt!11141 (head!850 (tail!876 (tail!876 (tail!876 llist!36)))) (tail!875 (head!850 (tail!876 (tail!876 (tail!876 llist!36))))))) lt!11158)))))

(assert (=> b!60387 (= lt!11158 (mergeFast!0 (ite lt!11160 (tail!875 (ite lt!11141 (tail!875 (head!850 (tail!876 (tail!876 llist!36)))) (head!850 (tail!876 (tail!876 llist!36))))) (ite lt!11141 (tail!875 (head!850 (tail!876 (tail!876 llist!36)))) (head!850 (tail!876 (tail!876 llist!36))))) (ite lt!11160 (ite lt!11141 (head!850 (tail!876 (tail!876 (tail!876 llist!36)))) (tail!875 (head!850 (tail!876 (tail!876 (tail!876 llist!36)))))) (tail!875 (ite lt!11141 (head!850 (tail!876 (tail!876 (tail!876 llist!36)))) (tail!875 (head!850 (tail!876 (tail!876 (tail!876 llist!36))))))))))))

(assert (=> b!60387 (= lt!11160 (bvsle (head!849 (ite lt!11141 (tail!875 (head!850 (tail!876 (tail!876 llist!36)))) (head!850 (tail!876 (tail!876 llist!36))))) (head!849 (ite lt!11141 (head!850 (tail!876 (tail!876 (tail!876 llist!36)))) (tail!875 (head!850 (tail!876 (tail!876 (tail!876 llist!36)))))))))))

(assert (= (and d!51511 res!28083) b!60383))

(assert (= (and b!60386 c!13097) b!60384))

(assert (= (and b!60386 (not c!13097)) b!60387))

(assert (= (and d!51511 c!13096) b!60385))

(assert (= (and d!51511 (not c!13096)) b!60386))

(declare-fun m!65266 () Bool)

(assert (=> b!60383 m!65266))

(declare-fun m!65268 () Bool)

(assert (=> d!51511 m!65268))

(declare-fun m!65270 () Bool)

(assert (=> d!51511 m!65270))

(declare-fun m!65272 () Bool)

(assert (=> b!60387 m!65272))

(assert (=> b!60278 d!51511))

(declare-fun d!51513 () Bool)

(declare-fun c!13098 () Bool)

(assert (=> d!51513 (= c!13098 (is-Nil!506 lt!11128))))

(declare-fun e!32257 () (Set (_ BitVec 32)))

(assert (=> d!51513 (= (content!15 lt!11128) e!32257)))

(declare-fun b!60388 () Bool)

(assert (=> b!60388 (= e!32257 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!60389 () Bool)

(assert (=> b!60389 (= e!32257 (union (insert (head!849 lt!11128) (as emptyset (Set (_ BitVec 32)))) (content!15 (tail!875 lt!11128))))))

(assert (= (and d!51513 c!13098) b!60388))

(assert (= (and d!51513 (not c!13098)) b!60389))

(declare-fun m!65274 () Bool)

(assert (=> b!60389 m!65274))

(declare-fun m!65276 () Bool)

(assert (=> b!60389 m!65276))

(assert (=> b!60295 d!51513))

(assert (=> b!60295 d!51409))

(assert (=> b!60295 d!51453))

(declare-fun d!51515 () Bool)

(declare-fun c!13099 () Bool)

(assert (=> d!51515 (= c!13099 (is-Nil!506 (head!850 (tail!876 res!27412))))))

(declare-fun e!32258 () (Set (_ BitVec 32)))

(assert (=> d!51515 (= (content!15 (head!850 (tail!876 res!27412))) e!32258)))

(declare-fun b!60390 () Bool)

(assert (=> b!60390 (= e!32258 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!60391 () Bool)

(assert (=> b!60391 (= e!32258 (union (insert (head!849 (head!850 (tail!876 res!27412))) (as emptyset (Set (_ BitVec 32)))) (content!15 (tail!875 (head!850 (tail!876 res!27412))))))))

(assert (= (and d!51515 c!13099) b!60390))

(assert (= (and d!51515 (not c!13099)) b!60391))

(declare-fun m!65278 () Bool)

(assert (=> b!60391 m!65278))

(declare-fun m!65280 () Bool)

(assert (=> b!60391 m!65280))

(assert (=> b!60313 d!51515))

(declare-fun d!51517 () Bool)

(declare-fun c!13100 () Bool)

(assert (=> d!51517 (= c!13100 (is-LNil!14 (tail!876 (tail!876 res!27412))))))

(declare-fun e!32259 () (Set (_ BitVec 32)))

(assert (=> d!51517 (= (lContent!0 (tail!876 (tail!876 res!27412))) e!32259)))

(declare-fun b!60392 () Bool)

(assert (=> b!60392 (= e!32259 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!60393 () Bool)

(assert (=> b!60393 (= e!32259 (union (content!15 (head!850 (tail!876 (tail!876 res!27412)))) (lContent!0 (tail!876 (tail!876 (tail!876 res!27412))))))))

(assert (= (and d!51517 c!13100) b!60392))

(assert (= (and d!51517 (not c!13100)) b!60393))

(declare-fun m!65282 () Bool)

(assert (=> b!60393 m!65282))

(declare-fun m!65284 () Bool)

(assert (=> b!60393 m!65284))

(assert (=> b!60313 d!51517))

(declare-fun d!51519 () Bool)

(declare-fun c!13101 () Bool)

(assert (=> d!51519 (= c!13101 (is-Nil!506 (head!850 lt!11132)))))

(declare-fun e!32260 () (Set (_ BitVec 32)))

(assert (=> d!51519 (= (content!15 (head!850 lt!11132)) e!32260)))

(declare-fun b!60394 () Bool)

(assert (=> b!60394 (= e!32260 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!60395 () Bool)

(assert (=> b!60395 (= e!32260 (union (insert (head!849 (head!850 lt!11132)) (as emptyset (Set (_ BitVec 32)))) (content!15 (tail!875 (head!850 lt!11132)))))))

(assert (= (and d!51519 c!13101) b!60394))

(assert (= (and d!51519 (not c!13101)) b!60395))

(declare-fun m!65286 () Bool)

(assert (=> b!60395 m!65286))

(declare-fun m!65288 () Bool)

(assert (=> b!60395 m!65288))

(assert (=> b!60297 d!51519))

(declare-fun d!51521 () Bool)

(declare-fun c!13102 () Bool)

(assert (=> d!51521 (= c!13102 (is-LNil!14 (tail!876 lt!11132)))))

(declare-fun e!32261 () (Set (_ BitVec 32)))

(assert (=> d!51521 (= (lContent!0 (tail!876 lt!11132)) e!32261)))

(declare-fun b!60396 () Bool)

(assert (=> b!60396 (= e!32261 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!60397 () Bool)

(assert (=> b!60397 (= e!32261 (union (content!15 (head!850 (tail!876 lt!11132))) (lContent!0 (tail!876 (tail!876 lt!11132)))))))

(assert (= (and d!51521 c!13102) b!60396))

(assert (= (and d!51521 (not c!13102)) b!60397))

(declare-fun m!65290 () Bool)

(assert (=> b!60397 m!65290))

(declare-fun m!65292 () Bool)

(assert (=> b!60397 m!65292))

(assert (=> b!60297 d!51521))

(declare-fun d!51523 () Bool)

(declare-fun lt!11161 () Int)

(assert (=> d!51523 (>= lt!11161 0)))

(declare-fun e!32262 () Int)

(assert (=> d!51523 (= lt!11161 e!32262)))

(declare-fun c!13103 () Bool)

(assert (=> d!51523 (= c!13103 (is-LNil!14 lt!11142))))

(assert (=> d!51523 (= (lSize!0 lt!11142) lt!11161)))

(declare-fun b!60398 () Bool)

(assert (=> b!60398 (= e!32262 0)))

(declare-fun b!60399 () Bool)

(assert (=> b!60399 (= e!32262 (+ 1 (lSize!0 (tail!876 lt!11142))))))

(assert (= (and d!51523 c!13103) b!60398))

(assert (= (and d!51523 (not c!13103)) b!60399))

(declare-fun m!65294 () Bool)

(assert (=> b!60399 m!65294))

(assert (=> b!60282 d!51523))

(assert (=> b!60282 d!51501))

(declare-fun d!51525 () Bool)

(declare-fun lt!11162 () Int)

(assert (=> d!51525 (>= lt!11162 0)))

(declare-fun e!32263 () Int)

(assert (=> d!51525 (= lt!11162 e!32263)))

(declare-fun c!13104 () Bool)

(assert (=> d!51525 (= c!13104 (is-LNil!14 (tail!876 lt!11132)))))

(assert (=> d!51525 (= (lSize!0 (tail!876 lt!11132)) lt!11162)))

(declare-fun b!60400 () Bool)

(assert (=> b!60400 (= e!32263 0)))

(declare-fun b!60401 () Bool)

(assert (=> b!60401 (= e!32263 (+ 1 (lSize!0 (tail!876 (tail!876 lt!11132)))))))

(assert (= (and d!51525 c!13104) b!60400))

(assert (= (and d!51525 (not c!13104)) b!60401))

(declare-fun m!65296 () Bool)

(assert (=> b!60401 m!65296))

(assert (=> b!60309 d!51525))

(push 1)

(assert (not b!60383))

(assert (not b!60322))

(assert (not b!60348))

(assert (not b!60389))

(assert (not b!60365))

(assert (not b!60368))

(assert (not b!60326))

(assert (not d!51463))

(assert (not b!60317))

(assert (not b!60332))

(assert (not b!60356))

(assert (not b!60374))

(assert (not b!60355))

(assert (not b!60397))

(assert (not b!60337))

(assert (not b!60387))

(assert (not b!60366))

(assert (not b!60344))

(assert (not d!51475))

(assert (not b!60321))

(assert (not b!60376))

(assert (not b!60393))

(assert (not b!60399))

(assert (not b!60330))

(assert (not b!60351))

(assert (not b!60339))

(assert (not b!60362))

(assert (not b!60364))

(assert (not b!60391))

(assert (not d!51479))

(assert (not b!60382))

(assert (not b!60380))

(assert (not d!51511))

(assert (not b!60395))

(assert (not b!60328))

(assert (not b!60347))

(assert (not b!60325))

(assert (not b!60336))

(assert (not b!60345))

(assert (not b!60334))

(assert (not d!51487))

(assert (not b!60353))

(assert (not b!60370))

(assert (not b!60352))

(assert (not b!60319))

(assert (not b!60367))

(assert (not b!60323))

(assert (not b!60360))

(assert (not b!60340))

(assert (not b!60315))

(assert (not b!60335))

(assert (not b!60372))

(assert (not b!60378))

(assert (not d!51481))

(assert (not b!60401))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

