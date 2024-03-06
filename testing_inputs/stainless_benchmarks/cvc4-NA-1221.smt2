; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8680 () Bool)

(assert start!8680)

(declare-fun b!60117 () Bool)

(declare-fun e!32074 () Bool)

(declare-fun e!32075 () Bool)

(assert (=> b!60117 (= e!32074 e!32075)))

(declare-fun res!27951 () Bool)

(assert (=> b!60117 (=> res!27951 e!32075)))

(declare-datatypes () ((List!538 (Cons!504 (head!847 (_ BitVec 32)) (tail!873 List!538)) (Nil!505))))

(declare-datatypes () ((LList!14 (LNil!13) (LCons!13 (head!848 List!538) (tail!874 LList!14)))))

(declare-fun res!27411 () LList!14)

(declare-fun llist!36 () LList!14)

(declare-fun lContent!0 (LList!14) (Set (_ BitVec 32)))

(assert (=> b!60117 (= res!27951 (not (= (lContent!0 res!27411) (lContent!0 llist!36))))))

(declare-fun res!27955 () Bool)

(assert (=> start!8680 (=> (not res!27955) (not e!32074))))

(declare-fun lIsSorted!0 (LList!14) Bool)

(assert (=> start!8680 (= res!27955 (lIsSorted!0 llist!36))))

(assert (=> start!8680 e!32074))

(assert (=> start!8680 true))

(declare-fun b!60118 () Bool)

(declare-fun res!27953 () Bool)

(assert (=> b!60118 (=> res!27953 e!32075)))

(assert (=> b!60118 (= res!27953 (not (lIsSorted!0 res!27411)))))

(declare-fun b!60119 () Bool)

(declare-fun res!27954 () Bool)

(assert (=> b!60119 (=> (not res!27954) (not e!32074))))

(assert (=> b!60119 (= res!27954 (and (not (is-LNil!13 llist!36)) (is-LNil!13 (tail!874 llist!36)) (= res!27411 llist!36)))))

(declare-fun b!60120 () Bool)

(declare-fun e!32076 () Bool)

(assert (=> b!60120 (= e!32075 e!32076)))

(declare-fun res!27952 () Bool)

(assert (=> b!60120 (=> (not res!27952) (not e!32076))))

(declare-fun lSize!0 (LList!14) Int)

(assert (=> b!60120 (= res!27952 (> (lSize!0 llist!36) 1))))

(declare-fun b!60121 () Bool)

(assert (=> b!60121 (= e!32076 (>= (lSize!0 res!27411) (lSize!0 llist!36)))))

(assert (= (and start!8680 res!27955) b!60119))

(assert (= (and b!60119 res!27954) b!60117))

(assert (= (and b!60117 (not res!27951)) b!60118))

(assert (= (and b!60118 (not res!27953)) b!60120))

(assert (= (and b!60120 res!27952) b!60121))

(declare-fun m!64956 () Bool)

(assert (=> b!60121 m!64956))

(declare-fun m!64958 () Bool)

(assert (=> b!60121 m!64958))

(declare-fun m!64960 () Bool)

(assert (=> start!8680 m!64960))

(assert (=> b!60120 m!64958))

(declare-fun m!64962 () Bool)

(assert (=> b!60117 m!64962))

(declare-fun m!64964 () Bool)

(assert (=> b!60117 m!64964))

(declare-fun m!64966 () Bool)

(assert (=> b!60118 m!64966))

(push 1)

(assert (not b!60118))

(assert (not b!60120))

(assert (not b!60121))

(assert (not b!60117))

(assert (not start!8680))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!51361 () Bool)

(declare-fun lt!11117 () Int)

(assert (=> d!51361 (>= lt!11117 0)))

(declare-fun e!32079 () Int)

(assert (=> d!51361 (= lt!11117 e!32079)))

(declare-fun c!13028 () Bool)

(assert (=> d!51361 (= c!13028 (is-LNil!13 llist!36))))

(assert (=> d!51361 (= (lSize!0 llist!36) lt!11117)))

(declare-fun b!60126 () Bool)

(assert (=> b!60126 (= e!32079 0)))

(declare-fun b!60127 () Bool)

(assert (=> b!60127 (= e!32079 (+ 1 (lSize!0 (tail!874 llist!36))))))

(assert (= (and d!51361 c!13028) b!60126))

(assert (= (and d!51361 (not c!13028)) b!60127))

(declare-fun m!64968 () Bool)

(assert (=> b!60127 m!64968))

(assert (=> b!60120 d!51361))

(declare-fun d!51363 () Bool)

(declare-fun res!27960 () Bool)

(declare-fun e!32084 () Bool)

(assert (=> d!51363 (=> res!27960 e!32084)))

(assert (=> d!51363 (= res!27960 (is-LNil!13 res!27411))))

(assert (=> d!51363 (= (lIsSorted!0 res!27411) e!32084)))

(declare-fun b!60132 () Bool)

(declare-fun e!32085 () Bool)

(assert (=> b!60132 (= e!32084 e!32085)))

(declare-fun res!27961 () Bool)

(assert (=> b!60132 (=> (not res!27961) (not e!32085))))

(declare-fun isSorted!4 (List!538) Bool)

(assert (=> b!60132 (= res!27961 (isSorted!4 (head!848 res!27411)))))

(declare-fun b!60133 () Bool)

(assert (=> b!60133 (= e!32085 (lIsSorted!0 (tail!874 res!27411)))))

(assert (= (and d!51363 (not res!27960)) b!60132))

(assert (= (and b!60132 res!27961) b!60133))

(declare-fun m!64970 () Bool)

(assert (=> b!60132 m!64970))

(declare-fun m!64972 () Bool)

(assert (=> b!60133 m!64972))

(assert (=> b!60118 d!51363))

(declare-fun d!51365 () Bool)

(declare-fun lt!11118 () Int)

(assert (=> d!51365 (>= lt!11118 0)))

(declare-fun e!32086 () Int)

(assert (=> d!51365 (= lt!11118 e!32086)))

(declare-fun c!13029 () Bool)

(assert (=> d!51365 (= c!13029 (is-LNil!13 res!27411))))

(assert (=> d!51365 (= (lSize!0 res!27411) lt!11118)))

(declare-fun b!60134 () Bool)

(assert (=> b!60134 (= e!32086 0)))

(declare-fun b!60135 () Bool)

(assert (=> b!60135 (= e!32086 (+ 1 (lSize!0 (tail!874 res!27411))))))

(assert (= (and d!51365 c!13029) b!60134))

(assert (= (and d!51365 (not c!13029)) b!60135))

(declare-fun m!64974 () Bool)

(assert (=> b!60135 m!64974))

(assert (=> b!60121 d!51365))

(assert (=> b!60121 d!51361))

(declare-fun d!51367 () Bool)

(declare-fun c!13032 () Bool)

(assert (=> d!51367 (= c!13032 (is-LNil!13 res!27411))))

(declare-fun e!32089 () (Set (_ BitVec 32)))

(assert (=> d!51367 (= (lContent!0 res!27411) e!32089)))

(declare-fun b!60140 () Bool)

(assert (=> b!60140 (= e!32089 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!60141 () Bool)

(declare-fun content!15 (List!538) (Set (_ BitVec 32)))

(assert (=> b!60141 (= e!32089 (union (content!15 (head!848 res!27411)) (lContent!0 (tail!874 res!27411))))))

(assert (= (and d!51367 c!13032) b!60140))

(assert (= (and d!51367 (not c!13032)) b!60141))

(declare-fun m!64976 () Bool)

(assert (=> b!60141 m!64976))

(declare-fun m!64978 () Bool)

(assert (=> b!60141 m!64978))

(assert (=> b!60117 d!51367))

(declare-fun d!51369 () Bool)

(declare-fun c!13033 () Bool)

(assert (=> d!51369 (= c!13033 (is-LNil!13 llist!36))))

(declare-fun e!32090 () (Set (_ BitVec 32)))

(assert (=> d!51369 (= (lContent!0 llist!36) e!32090)))

(declare-fun b!60142 () Bool)

(assert (=> b!60142 (= e!32090 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!60143 () Bool)

(assert (=> b!60143 (= e!32090 (union (content!15 (head!848 llist!36)) (lContent!0 (tail!874 llist!36))))))

(assert (= (and d!51369 c!13033) b!60142))

(assert (= (and d!51369 (not c!13033)) b!60143))

(declare-fun m!64980 () Bool)

(assert (=> b!60143 m!64980))

(declare-fun m!64982 () Bool)

(assert (=> b!60143 m!64982))

(assert (=> b!60117 d!51369))

(declare-fun d!51371 () Bool)

(declare-fun res!27962 () Bool)

(declare-fun e!32091 () Bool)

(assert (=> d!51371 (=> res!27962 e!32091)))

(assert (=> d!51371 (= res!27962 (is-LNil!13 llist!36))))

(assert (=> d!51371 (= (lIsSorted!0 llist!36) e!32091)))

(declare-fun b!60144 () Bool)

(declare-fun e!32092 () Bool)

(assert (=> b!60144 (= e!32091 e!32092)))

(declare-fun res!27963 () Bool)

(assert (=> b!60144 (=> (not res!27963) (not e!32092))))

(assert (=> b!60144 (= res!27963 (isSorted!4 (head!848 llist!36)))))

(declare-fun b!60145 () Bool)

(assert (=> b!60145 (= e!32092 (lIsSorted!0 (tail!874 llist!36)))))

(assert (= (and d!51371 (not res!27962)) b!60144))

(assert (= (and b!60144 res!27963) b!60145))

(declare-fun m!64984 () Bool)

(assert (=> b!60144 m!64984))

(declare-fun m!64986 () Bool)

(assert (=> b!60145 m!64986))

(assert (=> start!8680 d!51371))

(push 1)

(assert (not b!60127))

(assert (not b!60144))

(assert (not b!60143))

(assert (not b!60132))

(assert (not b!60133))

(assert (not b!60135))

(assert (not b!60145))

(assert (not b!60141))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!51373 () Bool)

(declare-fun c!13036 () Bool)

(assert (=> d!51373 (= c!13036 (is-Nil!505 (head!848 res!27411)))))

(declare-fun e!32095 () (Set (_ BitVec 32)))

(assert (=> d!51373 (= (content!15 (head!848 res!27411)) e!32095)))

(declare-fun b!60150 () Bool)

(assert (=> b!60150 (= e!32095 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!60151 () Bool)

(assert (=> b!60151 (= e!32095 (union (insert (head!847 (head!848 res!27411)) (as emptyset (Set (_ BitVec 32)))) (content!15 (tail!873 (head!848 res!27411)))))))

(assert (= (and d!51373 c!13036) b!60150))

(assert (= (and d!51373 (not c!13036)) b!60151))

(declare-fun m!64988 () Bool)

(assert (=> b!60151 m!64988))

(declare-fun m!64990 () Bool)

(assert (=> b!60151 m!64990))

(assert (=> b!60141 d!51373))

(declare-fun d!51375 () Bool)

(declare-fun c!13037 () Bool)

(assert (=> d!51375 (= c!13037 (is-LNil!13 (tail!874 res!27411)))))

(declare-fun e!32096 () (Set (_ BitVec 32)))

(assert (=> d!51375 (= (lContent!0 (tail!874 res!27411)) e!32096)))

(declare-fun b!60152 () Bool)

(assert (=> b!60152 (= e!32096 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!60153 () Bool)

(assert (=> b!60153 (= e!32096 (union (content!15 (head!848 (tail!874 res!27411))) (lContent!0 (tail!874 (tail!874 res!27411)))))))

(assert (= (and d!51375 c!13037) b!60152))

(assert (= (and d!51375 (not c!13037)) b!60153))

(declare-fun m!64992 () Bool)

(assert (=> b!60153 m!64992))

(declare-fun m!64994 () Bool)

(assert (=> b!60153 m!64994))

(assert (=> b!60141 d!51375))

(declare-fun d!51377 () Bool)

(declare-fun c!13038 () Bool)

(assert (=> d!51377 (= c!13038 (is-Nil!505 (head!848 llist!36)))))

(declare-fun e!32097 () (Set (_ BitVec 32)))

(assert (=> d!51377 (= (content!15 (head!848 llist!36)) e!32097)))

(declare-fun b!60154 () Bool)

(assert (=> b!60154 (= e!32097 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!60155 () Bool)

(assert (=> b!60155 (= e!32097 (union (insert (head!847 (head!848 llist!36)) (as emptyset (Set (_ BitVec 32)))) (content!15 (tail!873 (head!848 llist!36)))))))

(assert (= (and d!51377 c!13038) b!60154))

(assert (= (and d!51377 (not c!13038)) b!60155))

(declare-fun m!64996 () Bool)

(assert (=> b!60155 m!64996))

(declare-fun m!64998 () Bool)

(assert (=> b!60155 m!64998))

(assert (=> b!60143 d!51377))

(declare-fun d!51379 () Bool)

(declare-fun c!13039 () Bool)

(assert (=> d!51379 (= c!13039 (is-LNil!13 (tail!874 llist!36)))))

(declare-fun e!32098 () (Set (_ BitVec 32)))

(assert (=> d!51379 (= (lContent!0 (tail!874 llist!36)) e!32098)))

(declare-fun b!60156 () Bool)

(assert (=> b!60156 (= e!32098 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!60157 () Bool)

(assert (=> b!60157 (= e!32098 (union (content!15 (head!848 (tail!874 llist!36))) (lContent!0 (tail!874 (tail!874 llist!36)))))))

(assert (= (and d!51379 c!13039) b!60156))

(assert (= (and d!51379 (not c!13039)) b!60157))

(declare-fun m!65000 () Bool)

(assert (=> b!60157 m!65000))

(declare-fun m!65002 () Bool)

(assert (=> b!60157 m!65002))

(assert (=> b!60143 d!51379))

(declare-fun d!51381 () Bool)

(declare-fun res!27968 () Bool)

(declare-fun e!32103 () Bool)

(assert (=> d!51381 (=> res!27968 e!32103)))

(assert (=> d!51381 (= res!27968 (or (is-Nil!505 (head!848 llist!36)) (and (is-Cons!504 (head!848 llist!36)) (is-Nil!505 (tail!873 (head!848 llist!36))))))))

(assert (=> d!51381 (= (isSorted!4 (head!848 llist!36)) e!32103)))

(declare-fun b!60162 () Bool)

(declare-fun e!32104 () Bool)

(assert (=> b!60162 (= e!32103 e!32104)))

(declare-fun res!27969 () Bool)

(assert (=> b!60162 (=> (not res!27969) (not e!32104))))

(assert (=> b!60162 (= res!27969 (not (and (is-Cons!504 (head!848 llist!36)) (is-Cons!504 (tail!873 (head!848 llist!36))) (bvsgt (head!847 (head!848 llist!36)) (head!847 (tail!873 (head!848 llist!36)))))))))

(declare-fun b!60163 () Bool)

(assert (=> b!60163 (= e!32104 (isSorted!4 (tail!873 (head!848 llist!36))))))

(assert (= (and d!51381 (not res!27968)) b!60162))

(assert (= (and b!60162 res!27969) b!60163))

(declare-fun m!65004 () Bool)

(assert (=> b!60163 m!65004))

(assert (=> b!60144 d!51381))

(declare-fun d!51383 () Bool)

(declare-fun res!27970 () Bool)

(declare-fun e!32105 () Bool)

(assert (=> d!51383 (=> res!27970 e!32105)))

(assert (=> d!51383 (= res!27970 (or (is-Nil!505 (head!848 res!27411)) (and (is-Cons!504 (head!848 res!27411)) (is-Nil!505 (tail!873 (head!848 res!27411))))))))

(assert (=> d!51383 (= (isSorted!4 (head!848 res!27411)) e!32105)))

(declare-fun b!60164 () Bool)

(declare-fun e!32106 () Bool)

(assert (=> b!60164 (= e!32105 e!32106)))

(declare-fun res!27971 () Bool)

(assert (=> b!60164 (=> (not res!27971) (not e!32106))))

(assert (=> b!60164 (= res!27971 (not (and (is-Cons!504 (head!848 res!27411)) (is-Cons!504 (tail!873 (head!848 res!27411))) (bvsgt (head!847 (head!848 res!27411)) (head!847 (tail!873 (head!848 res!27411)))))))))

(declare-fun b!60165 () Bool)

(assert (=> b!60165 (= e!32106 (isSorted!4 (tail!873 (head!848 res!27411))))))

(assert (= (and d!51383 (not res!27970)) b!60164))

(assert (= (and b!60164 res!27971) b!60165))

(declare-fun m!65006 () Bool)

(assert (=> b!60165 m!65006))

(assert (=> b!60132 d!51383))

(declare-fun d!51385 () Bool)

(declare-fun res!27972 () Bool)

(declare-fun e!32107 () Bool)

(assert (=> d!51385 (=> res!27972 e!32107)))

(assert (=> d!51385 (= res!27972 (is-LNil!13 (tail!874 llist!36)))))

(assert (=> d!51385 (= (lIsSorted!0 (tail!874 llist!36)) e!32107)))

(declare-fun b!60166 () Bool)

(declare-fun e!32108 () Bool)

(assert (=> b!60166 (= e!32107 e!32108)))

(declare-fun res!27973 () Bool)

(assert (=> b!60166 (=> (not res!27973) (not e!32108))))

(assert (=> b!60166 (= res!27973 (isSorted!4 (head!848 (tail!874 llist!36))))))

(declare-fun b!60167 () Bool)

(assert (=> b!60167 (= e!32108 (lIsSorted!0 (tail!874 (tail!874 llist!36))))))

(assert (= (and d!51385 (not res!27972)) b!60166))

(assert (= (and b!60166 res!27973) b!60167))

(declare-fun m!65008 () Bool)

(assert (=> b!60166 m!65008))

(declare-fun m!65010 () Bool)

(assert (=> b!60167 m!65010))

(assert (=> b!60145 d!51385))

(declare-fun d!51387 () Bool)

(declare-fun lt!11119 () Int)

(assert (=> d!51387 (>= lt!11119 0)))

(declare-fun e!32109 () Int)

(assert (=> d!51387 (= lt!11119 e!32109)))

(declare-fun c!13040 () Bool)

(assert (=> d!51387 (= c!13040 (is-LNil!13 (tail!874 res!27411)))))

(assert (=> d!51387 (= (lSize!0 (tail!874 res!27411)) lt!11119)))

(declare-fun b!60168 () Bool)

(assert (=> b!60168 (= e!32109 0)))

(declare-fun b!60169 () Bool)

(assert (=> b!60169 (= e!32109 (+ 1 (lSize!0 (tail!874 (tail!874 res!27411)))))))

(assert (= (and d!51387 c!13040) b!60168))

(assert (= (and d!51387 (not c!13040)) b!60169))

(declare-fun m!65012 () Bool)

(assert (=> b!60169 m!65012))

(assert (=> b!60135 d!51387))

(declare-fun d!51389 () Bool)

(declare-fun res!27974 () Bool)

(declare-fun e!32110 () Bool)

(assert (=> d!51389 (=> res!27974 e!32110)))

(assert (=> d!51389 (= res!27974 (is-LNil!13 (tail!874 res!27411)))))

(assert (=> d!51389 (= (lIsSorted!0 (tail!874 res!27411)) e!32110)))

(declare-fun b!60170 () Bool)

(declare-fun e!32111 () Bool)

(assert (=> b!60170 (= e!32110 e!32111)))

(declare-fun res!27975 () Bool)

(assert (=> b!60170 (=> (not res!27975) (not e!32111))))

(assert (=> b!60170 (= res!27975 (isSorted!4 (head!848 (tail!874 res!27411))))))

(declare-fun b!60171 () Bool)

(assert (=> b!60171 (= e!32111 (lIsSorted!0 (tail!874 (tail!874 res!27411))))))

(assert (= (and d!51389 (not res!27974)) b!60170))

(assert (= (and b!60170 res!27975) b!60171))

(declare-fun m!65014 () Bool)

(assert (=> b!60170 m!65014))

(declare-fun m!65016 () Bool)

(assert (=> b!60171 m!65016))

(assert (=> b!60133 d!51389))

(declare-fun d!51391 () Bool)

(declare-fun lt!11120 () Int)

(assert (=> d!51391 (>= lt!11120 0)))

(declare-fun e!32112 () Int)

(assert (=> d!51391 (= lt!11120 e!32112)))

(declare-fun c!13041 () Bool)

(assert (=> d!51391 (= c!13041 (is-LNil!13 (tail!874 llist!36)))))

(assert (=> d!51391 (= (lSize!0 (tail!874 llist!36)) lt!11120)))

(declare-fun b!60172 () Bool)

(assert (=> b!60172 (= e!32112 0)))

(declare-fun b!60173 () Bool)

(assert (=> b!60173 (= e!32112 (+ 1 (lSize!0 (tail!874 (tail!874 llist!36)))))))

(assert (= (and d!51391 c!13041) b!60172))

(assert (= (and d!51391 (not c!13041)) b!60173))

(declare-fun m!65018 () Bool)

(assert (=> b!60173 m!65018))

(assert (=> b!60127 d!51391))

(push 1)

(assert (not b!60151))

(assert (not b!60163))

(assert (not b!60170))

(assert (not b!60171))

(assert (not b!60157))

(assert (not b!60169))

(assert (not b!60153))

(assert (not b!60167))

(assert (not b!60155))

(assert (not b!60166))

(assert (not b!60165))

(assert (not b!60173))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

