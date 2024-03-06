; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3800 () Bool)

(assert start!3800)

(declare-fun b!25079 () Bool)

(declare-fun res!11263 () Bool)

(declare-fun e!12946 () Bool)

(assert (=> b!25079 (=> (not res!11263) (not e!12946))))

(declare-datatypes () ((T!1815 (T!1816 (val!80 Int)))))

(declare-datatypes () ((Conc!57 (CC!56 (left!701 Conc!57) (right!704 Conc!57)) (Single!56 (x!8893 T!1815)) (Empty!67))))

(declare-fun ys!77 () Conc!57)

(declare-fun concInv!51 (Conc!57) Bool)

(assert (=> b!25079 (= res!11263 (concInv!51 ys!77))))

(declare-fun b!25080 () Bool)

(declare-fun res!11267 () Bool)

(declare-fun e!12943 () Bool)

(assert (=> b!25080 (=> res!11267 e!12943)))

(declare-fun xs!538 () Conc!57)

(declare-fun balanced!52 (Conc!57) Bool)

(assert (=> b!25080 (= res!11267 (not (balanced!52 xs!538)))))

(declare-fun b!25081 () Bool)

(declare-fun e!12945 () Bool)

(declare-fun tp_is_empty!159 () Bool)

(assert (=> b!25081 (= e!12945 tp_is_empty!159)))

(declare-fun b!25082 () Bool)

(declare-fun res!11268 () Bool)

(assert (=> b!25082 (=> (not res!11268) (not e!12946))))

(declare-fun diff!6 () Int)

(declare-fun xs!533 () Conc!57)

(declare-fun level!45 (Conc!57) Int)

(assert (=> b!25082 (= res!11268 (= diff!6 (- (level!45 ys!77) (level!45 xs!533))))))

(declare-fun b!25083 () Bool)

(declare-fun res!11272 () Bool)

(assert (=> b!25083 (=> (not res!11272) (not e!12946))))

(declare-fun isEmpty!313 (Conc!57) Bool)

(assert (=> b!25083 (= res!11272 (not (isEmpty!313 xs!533)))))

(declare-fun b!25084 () Bool)

(declare-fun res!11274 () Bool)

(assert (=> b!25084 (=> (not res!11274) (not e!12946))))

(assert (=> b!25084 (= res!11274 (balanced!52 xs!533))))

(declare-fun b!25085 () Bool)

(declare-fun tp!5465 () Bool)

(declare-fun tp!5457 () Bool)

(assert (=> b!25085 (= e!12945 (and tp!5465 tp!5457))))

(declare-fun b!25086 () Bool)

(declare-fun res!11271 () Bool)

(assert (=> b!25086 (=> res!11271 e!12943)))

(assert (=> b!25086 (= res!11271 (isEmpty!313 xs!538))))

(declare-fun b!25087 () Bool)

(declare-fun e!12942 () Bool)

(declare-fun tp!5460 () Bool)

(declare-fun tp!5459 () Bool)

(assert (=> b!25087 (= e!12942 (and tp!5460 tp!5459))))

(declare-fun b!25088 () Bool)

(declare-fun e!12948 () Bool)

(declare-fun tp!5464 () Bool)

(declare-fun tp!5463 () Bool)

(assert (=> b!25088 (= e!12948 (and tp!5464 tp!5463))))

(declare-fun b!25089 () Bool)

(declare-fun res!11270 () Bool)

(assert (=> b!25089 (=> res!11270 e!12943)))

(declare-fun ys!82 () Conc!57)

(assert (=> b!25089 (= res!11270 (not (concInv!51 ys!82)))))

(declare-fun b!25090 () Bool)

(declare-fun res!11264 () Bool)

(assert (=> b!25090 (=> (not res!11264) (not e!12946))))

(assert (=> b!25090 (= res!11264 (balanced!52 ys!77))))

(declare-fun b!25091 () Bool)

(declare-fun res!11265 () Bool)

(assert (=> b!25091 (=> (not res!11265) (not e!12946))))

(assert (=> b!25091 (= res!11265 (and (or (< diff!6 (- 1)) (> diff!6 1)) (< diff!6 (- 1))))))

(declare-fun b!25092 () Bool)

(declare-fun e!12944 () Bool)

(declare-fun tp!5456 () Bool)

(declare-fun tp!5458 () Bool)

(assert (=> b!25092 (= e!12944 (and tp!5456 tp!5458))))

(declare-fun b!25093 () Bool)

(declare-fun res!11269 () Bool)

(assert (=> b!25093 (=> (not res!11269) (not e!12946))))

(assert (=> b!25093 (= res!11269 (not (isEmpty!313 ys!77)))))

(declare-fun b!25094 () Bool)

(assert (=> b!25094 (= e!12944 tp_is_empty!159)))

(declare-fun b!25095 () Bool)

(declare-fun res!11266 () Bool)

(assert (=> b!25095 (=> (not res!11266) (not e!12946))))

(assert (=> b!25095 (= res!11266 (>= (level!45 (left!701 xs!533)) (level!45 (right!704 xs!533))))))

(declare-fun b!25096 () Bool)

(declare-fun res!11276 () Bool)

(assert (=> b!25096 (=> (not res!11276) (not e!12946))))

(declare-fun left!633 () Conc!57)

(assert (=> b!25096 (= res!11276 (and (= left!633 (left!701 xs!533)) (= xs!538 (right!704 xs!533)) (= ys!82 ys!77)))))

(declare-fun b!25097 () Bool)

(declare-fun res!11262 () Bool)

(assert (=> b!25097 (=> res!11262 e!12943)))

(assert (=> b!25097 (= res!11262 (not (balanced!52 ys!82)))))

(declare-fun b!25098 () Bool)

(declare-fun e!12947 () Bool)

(declare-fun tp!5461 () Bool)

(declare-fun tp!5462 () Bool)

(assert (=> b!25098 (= e!12947 (and tp!5461 tp!5462))))

(declare-fun res!11275 () Bool)

(assert (=> start!3800 (=> (not res!11275) (not e!12946))))

(assert (=> start!3800 (= res!11275 (concInv!51 xs!533))))

(assert (=> start!3800 e!12946))

(assert (=> start!3800 e!12948))

(assert (=> start!3800 e!12945))

(assert (=> start!3800 e!12942))

(assert (=> start!3800 true))

(assert (=> start!3800 e!12947))

(assert (=> start!3800 e!12944))

(declare-fun b!25099 () Bool)

(assert (=> b!25099 (= e!12942 tp_is_empty!159)))

(declare-fun b!25100 () Bool)

(assert (=> b!25100 (= e!12943 (isEmpty!313 ys!82))))

(declare-fun b!25101 () Bool)

(assert (=> b!25101 (= e!12947 tp_is_empty!159)))

(declare-fun b!25102 () Bool)

(assert (=> b!25102 (= e!12948 tp_is_empty!159)))

(declare-fun b!25103 () Bool)

(assert (=> b!25103 (= e!12946 e!12943)))

(declare-fun res!11273 () Bool)

(assert (=> b!25103 (=> res!11273 e!12943)))

(assert (=> b!25103 (= res!11273 (not (concInv!51 xs!538)))))

(assert (= (and start!3800 res!11275) b!25084))

(assert (= (and b!25084 res!11274) b!25079))

(assert (= (and b!25079 res!11263) b!25090))

(assert (= (and b!25090 res!11264) b!25083))

(assert (= (and b!25083 res!11272) b!25093))

(assert (= (and b!25093 res!11269) b!25082))

(assert (= (and b!25082 res!11268) b!25091))

(assert (= (and b!25091 res!11265) b!25095))

(assert (= (and b!25095 res!11266) b!25096))

(assert (= (and b!25096 res!11276) b!25103))

(assert (= (and b!25103 (not res!11273)) b!25080))

(assert (= (and b!25080 (not res!11267)) b!25089))

(assert (= (and b!25089 (not res!11270)) b!25097))

(assert (= (and b!25097 (not res!11262)) b!25086))

(assert (= (and b!25086 (not res!11271)) b!25100))

(assert (= (and start!3800 (is-CC!56 ys!82)) b!25088))

(assert (= (and start!3800 (is-Single!56 ys!82)) b!25102))

(assert (= (and start!3800 (is-CC!56 left!633)) b!25085))

(assert (= (and start!3800 (is-Single!56 left!633)) b!25081))

(assert (= (and start!3800 (is-CC!56 xs!538)) b!25087))

(assert (= (and start!3800 (is-Single!56 xs!538)) b!25099))

(assert (= (and start!3800 (is-CC!56 ys!77)) b!25098))

(assert (= (and start!3800 (is-Single!56 ys!77)) b!25101))

(assert (= (and start!3800 (is-CC!56 xs!533)) b!25092))

(assert (= (and start!3800 (is-Single!56 xs!533)) b!25094))

(declare-fun m!26143 () Bool)

(assert (=> start!3800 m!26143))

(declare-fun m!26145 () Bool)

(assert (=> b!25090 m!26145))

(declare-fun m!26147 () Bool)

(assert (=> b!25097 m!26147))

(declare-fun m!26149 () Bool)

(assert (=> b!25082 m!26149))

(declare-fun m!26151 () Bool)

(assert (=> b!25082 m!26151))

(declare-fun m!26153 () Bool)

(assert (=> b!25093 m!26153))

(declare-fun m!26155 () Bool)

(assert (=> b!25095 m!26155))

(declare-fun m!26157 () Bool)

(assert (=> b!25095 m!26157))

(declare-fun m!26159 () Bool)

(assert (=> b!25086 m!26159))

(declare-fun m!26161 () Bool)

(assert (=> b!25100 m!26161))

(declare-fun m!26163 () Bool)

(assert (=> b!25084 m!26163))

(declare-fun m!26165 () Bool)

(assert (=> b!25079 m!26165))

(declare-fun m!26167 () Bool)

(assert (=> b!25083 m!26167))

(declare-fun m!26169 () Bool)

(assert (=> b!25089 m!26169))

(declare-fun m!26171 () Bool)

(assert (=> b!25103 m!26171))

(declare-fun m!26173 () Bool)

(assert (=> b!25080 m!26173))

(push 1)

(assert (not b!25088))

(assert (not b!25097))

(assert (not b!25103))

(assert (not b!25090))

(assert tp_is_empty!159)

(assert (not b!25100))

(assert (not b!25079))

(assert (not b!25080))

(assert (not b!25086))

(assert (not b!25083))

(assert (not b!25087))

(assert (not b!25089))

(assert (not b!25092))

(assert (not b!25084))

(assert (not b!25095))

(assert (not start!3800))

(assert (not b!25082))

(assert (not b!25098))

(assert (not b!25085))

(assert (not b!25093))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!25109 () Bool)

(declare-fun e!12951 () Int)

(declare-fun lt!3959 () Int)

(declare-fun lt!3958 () Int)

(assert (=> b!25109 (= e!12951 (+ 1 (ite (>= lt!3959 lt!3958) lt!3959 lt!3958)))))

(assert (=> b!25109 (= lt!3958 (level!45 (right!704 (left!701 xs!533))))))

(assert (=> b!25109 (= lt!3959 (level!45 (left!701 (left!701 xs!533))))))

(declare-fun d!13693 () Bool)

(declare-fun lt!3960 () Int)

(assert (=> d!13693 (>= lt!3960 0)))

(assert (=> d!13693 (= lt!3960 e!12951)))

(declare-fun c!5706 () Bool)

(assert (=> d!13693 (= c!5706 (or (is-Empty!67 (left!701 xs!533)) (is-Single!56 (left!701 xs!533))))))

(assert (=> d!13693 (= (level!45 (left!701 xs!533)) lt!3960)))

(declare-fun b!25108 () Bool)

(assert (=> b!25108 (= e!12951 0)))

(assert (= (and d!13693 c!5706) b!25108))

(assert (= (and d!13693 (not c!5706)) b!25109))

(declare-fun m!26175 () Bool)

(assert (=> b!25109 m!26175))

(declare-fun m!26177 () Bool)

(assert (=> b!25109 m!26177))

(assert (=> b!25095 d!13693))

(declare-fun b!25111 () Bool)

(declare-fun e!12952 () Int)

(declare-fun lt!3962 () Int)

(declare-fun lt!3961 () Int)

(assert (=> b!25111 (= e!12952 (+ 1 (ite (>= lt!3962 lt!3961) lt!3962 lt!3961)))))

(assert (=> b!25111 (= lt!3961 (level!45 (right!704 (right!704 xs!533))))))

(assert (=> b!25111 (= lt!3962 (level!45 (left!701 (right!704 xs!533))))))

(declare-fun d!13695 () Bool)

(declare-fun lt!3963 () Int)

(assert (=> d!13695 (>= lt!3963 0)))

(assert (=> d!13695 (= lt!3963 e!12952)))

(declare-fun c!5707 () Bool)

(assert (=> d!13695 (= c!5707 (or (is-Empty!67 (right!704 xs!533)) (is-Single!56 (right!704 xs!533))))))

(assert (=> d!13695 (= (level!45 (right!704 xs!533)) lt!3963)))

(declare-fun b!25110 () Bool)

(assert (=> b!25110 (= e!12952 0)))

(assert (= (and d!13695 c!5707) b!25110))

(assert (= (and d!13695 (not c!5707)) b!25111))

(declare-fun m!26179 () Bool)

(assert (=> b!25111 m!26179))

(declare-fun m!26181 () Bool)

(assert (=> b!25111 m!26181))

(assert (=> b!25095 d!13695))

(declare-fun b!25122 () Bool)

(declare-fun res!11285 () Bool)

(declare-fun e!12957 () Bool)

(assert (=> b!25122 (=> (not res!11285) (not e!12957))))

(assert (=> b!25122 (= res!11285 (balanced!52 (left!701 xs!538)))))

(declare-fun d!13697 () Bool)

(declare-fun res!11286 () Bool)

(declare-fun e!12958 () Bool)

(assert (=> d!13697 (=> res!11286 e!12958)))

(assert (=> d!13697 (= res!11286 (not (is-CC!56 xs!538)))))

(assert (=> d!13697 (= (balanced!52 xs!538) e!12958)))

(declare-fun b!25123 () Bool)

(assert (=> b!25123 (= e!12957 (balanced!52 (right!704 xs!538)))))

(declare-fun b!25121 () Bool)

(declare-fun res!11288 () Bool)

(assert (=> b!25121 (=> (not res!11288) (not e!12957))))

(assert (=> b!25121 (= res!11288 (<= (- (level!45 (left!701 xs!538)) (level!45 (right!704 xs!538))) 1))))

(declare-fun b!25120 () Bool)

(assert (=> b!25120 (= e!12958 e!12957)))

(declare-fun res!11287 () Bool)

(assert (=> b!25120 (=> (not res!11287) (not e!12957))))

(assert (=> b!25120 (= res!11287 (>= (- (level!45 (left!701 xs!538)) (level!45 (right!704 xs!538))) (- 1)))))

(assert (= (and d!13697 (not res!11286)) b!25120))

(assert (= (and b!25120 res!11287) b!25121))

(assert (= (and b!25121 res!11288) b!25122))

(assert (= (and b!25122 res!11285) b!25123))

(declare-fun m!26183 () Bool)

(assert (=> b!25122 m!26183))

(declare-fun m!26185 () Bool)

(assert (=> b!25123 m!26185))

(declare-fun m!26187 () Bool)

(assert (=> b!25121 m!26187))

(declare-fun m!26189 () Bool)

(assert (=> b!25121 m!26189))

(assert (=> b!25120 m!26187))

(assert (=> b!25120 m!26189))

(assert (=> b!25080 d!13697))

(declare-fun b!25126 () Bool)

(declare-fun res!11289 () Bool)

(declare-fun e!12959 () Bool)

(assert (=> b!25126 (=> (not res!11289) (not e!12959))))

(assert (=> b!25126 (= res!11289 (balanced!52 (left!701 ys!82)))))

(declare-fun d!13699 () Bool)

(declare-fun res!11290 () Bool)

(declare-fun e!12960 () Bool)

(assert (=> d!13699 (=> res!11290 e!12960)))

(assert (=> d!13699 (= res!11290 (not (is-CC!56 ys!82)))))

(assert (=> d!13699 (= (balanced!52 ys!82) e!12960)))

(declare-fun b!25127 () Bool)

(assert (=> b!25127 (= e!12959 (balanced!52 (right!704 ys!82)))))

(declare-fun b!25125 () Bool)

(declare-fun res!11292 () Bool)

(assert (=> b!25125 (=> (not res!11292) (not e!12959))))

(assert (=> b!25125 (= res!11292 (<= (- (level!45 (left!701 ys!82)) (level!45 (right!704 ys!82))) 1))))

(declare-fun b!25124 () Bool)

(assert (=> b!25124 (= e!12960 e!12959)))

(declare-fun res!11291 () Bool)

(assert (=> b!25124 (=> (not res!11291) (not e!12959))))

(assert (=> b!25124 (= res!11291 (>= (- (level!45 (left!701 ys!82)) (level!45 (right!704 ys!82))) (- 1)))))

(assert (= (and d!13699 (not res!11290)) b!25124))

(assert (= (and b!25124 res!11291) b!25125))

(assert (= (and b!25125 res!11292) b!25126))

(assert (= (and b!25126 res!11289) b!25127))

(declare-fun m!26191 () Bool)

(assert (=> b!25126 m!26191))

(declare-fun m!26193 () Bool)

(assert (=> b!25127 m!26193))

(declare-fun m!26195 () Bool)

(assert (=> b!25125 m!26195))

(declare-fun m!26197 () Bool)

(assert (=> b!25125 m!26197))

(assert (=> b!25124 m!26195))

(assert (=> b!25124 m!26197))

(assert (=> b!25097 d!13699))

(declare-fun b!25130 () Bool)

(declare-fun res!11293 () Bool)

(declare-fun e!12961 () Bool)

(assert (=> b!25130 (=> (not res!11293) (not e!12961))))

(assert (=> b!25130 (= res!11293 (balanced!52 (left!701 xs!533)))))

(declare-fun d!13701 () Bool)

(declare-fun res!11294 () Bool)

(declare-fun e!12962 () Bool)

(assert (=> d!13701 (=> res!11294 e!12962)))

(assert (=> d!13701 (= res!11294 (not (is-CC!56 xs!533)))))

(assert (=> d!13701 (= (balanced!52 xs!533) e!12962)))

(declare-fun b!25131 () Bool)

(assert (=> b!25131 (= e!12961 (balanced!52 (right!704 xs!533)))))

(declare-fun b!25129 () Bool)

(declare-fun res!11296 () Bool)

(assert (=> b!25129 (=> (not res!11296) (not e!12961))))

(assert (=> b!25129 (= res!11296 (<= (- (level!45 (left!701 xs!533)) (level!45 (right!704 xs!533))) 1))))

(declare-fun b!25128 () Bool)

(assert (=> b!25128 (= e!12962 e!12961)))

(declare-fun res!11295 () Bool)

(assert (=> b!25128 (=> (not res!11295) (not e!12961))))

(assert (=> b!25128 (= res!11295 (>= (- (level!45 (left!701 xs!533)) (level!45 (right!704 xs!533))) (- 1)))))

(assert (= (and d!13701 (not res!11294)) b!25128))

(assert (= (and b!25128 res!11295) b!25129))

(assert (= (and b!25129 res!11296) b!25130))

(assert (= (and b!25130 res!11293) b!25131))

(declare-fun m!26199 () Bool)

(assert (=> b!25130 m!26199))

(declare-fun m!26201 () Bool)

(assert (=> b!25131 m!26201))

(assert (=> b!25129 m!26155))

(assert (=> b!25129 m!26157))

(assert (=> b!25128 m!26155))

(assert (=> b!25128 m!26157))

(assert (=> b!25084 d!13701))

(declare-fun d!13703 () Bool)

(assert (=> d!13703 (= (isEmpty!313 xs!533) (= xs!533 Empty!67))))

(assert (=> b!25083 d!13703))

(declare-fun b!25133 () Bool)

(declare-fun e!12963 () Int)

(declare-fun lt!3965 () Int)

(declare-fun lt!3964 () Int)

(assert (=> b!25133 (= e!12963 (+ 1 (ite (>= lt!3965 lt!3964) lt!3965 lt!3964)))))

(assert (=> b!25133 (= lt!3964 (level!45 (right!704 ys!77)))))

(assert (=> b!25133 (= lt!3965 (level!45 (left!701 ys!77)))))

(declare-fun d!13705 () Bool)

(declare-fun lt!3966 () Int)

(assert (=> d!13705 (>= lt!3966 0)))

(assert (=> d!13705 (= lt!3966 e!12963)))

(declare-fun c!5708 () Bool)

(assert (=> d!13705 (= c!5708 (or (is-Empty!67 ys!77) (is-Single!56 ys!77)))))

(assert (=> d!13705 (= (level!45 ys!77) lt!3966)))

(declare-fun b!25132 () Bool)

(assert (=> b!25132 (= e!12963 0)))

(assert (= (and d!13705 c!5708) b!25132))

(assert (= (and d!13705 (not c!5708)) b!25133))

(declare-fun m!26203 () Bool)

(assert (=> b!25133 m!26203))

(declare-fun m!26205 () Bool)

(assert (=> b!25133 m!26205))

(assert (=> b!25082 d!13705))

(declare-fun b!25135 () Bool)

(declare-fun e!12964 () Int)

(declare-fun lt!3968 () Int)

(declare-fun lt!3967 () Int)

(assert (=> b!25135 (= e!12964 (+ 1 (ite (>= lt!3968 lt!3967) lt!3968 lt!3967)))))

(assert (=> b!25135 (= lt!3967 (level!45 (right!704 xs!533)))))

(assert (=> b!25135 (= lt!3968 (level!45 (left!701 xs!533)))))

(declare-fun d!13707 () Bool)

(declare-fun lt!3969 () Int)

(assert (=> d!13707 (>= lt!3969 0)))

(assert (=> d!13707 (= lt!3969 e!12964)))

(declare-fun c!5709 () Bool)

(assert (=> d!13707 (= c!5709 (or (is-Empty!67 xs!533) (is-Single!56 xs!533)))))

(assert (=> d!13707 (= (level!45 xs!533) lt!3969)))

(declare-fun b!25134 () Bool)

(assert (=> b!25134 (= e!12964 0)))

(assert (= (and d!13707 c!5709) b!25134))

(assert (= (and d!13707 (not c!5709)) b!25135))

(assert (=> b!25135 m!26157))

(assert (=> b!25135 m!26155))

(assert (=> b!25082 d!13707))

(declare-fun b!25145 () Bool)

(declare-fun res!11307 () Bool)

(declare-fun e!12970 () Bool)

(assert (=> b!25145 (=> (not res!11307) (not e!12970))))

(assert (=> b!25145 (= res!11307 (not (isEmpty!313 (right!704 xs!538))))))

(declare-fun b!25144 () Bool)

(declare-fun e!12969 () Bool)

(assert (=> b!25144 (= e!12969 e!12970)))

(declare-fun res!11305 () Bool)

(assert (=> b!25144 (=> (not res!11305) (not e!12970))))

(assert (=> b!25144 (= res!11305 (not (isEmpty!313 (left!701 xs!538))))))

(declare-fun b!25147 () Bool)

(assert (=> b!25147 (= e!12970 (concInv!51 (right!704 xs!538)))))

(declare-fun d!13709 () Bool)

(declare-fun res!11308 () Bool)

(assert (=> d!13709 (=> res!11308 e!12969)))

(assert (=> d!13709 (= res!11308 (not (is-CC!56 xs!538)))))

(assert (=> d!13709 (= (concInv!51 xs!538) e!12969)))

(declare-fun b!25146 () Bool)

(declare-fun res!11306 () Bool)

(assert (=> b!25146 (=> (not res!11306) (not e!12970))))

(assert (=> b!25146 (= res!11306 (concInv!51 (left!701 xs!538)))))

(assert (= (and d!13709 (not res!11308)) b!25144))

(assert (= (and b!25144 res!11305) b!25145))

(assert (= (and b!25145 res!11307) b!25146))

(assert (= (and b!25146 res!11306) b!25147))

(declare-fun m!26207 () Bool)

(assert (=> b!25145 m!26207))

(declare-fun m!26209 () Bool)

(assert (=> b!25144 m!26209))

(declare-fun m!26211 () Bool)

(assert (=> b!25147 m!26211))

(declare-fun m!26213 () Bool)

(assert (=> b!25146 m!26213))

(assert (=> b!25103 d!13709))

(declare-fun b!25150 () Bool)

(declare-fun res!11309 () Bool)

(declare-fun e!12971 () Bool)

(assert (=> b!25150 (=> (not res!11309) (not e!12971))))

(assert (=> b!25150 (= res!11309 (balanced!52 (left!701 ys!77)))))

(declare-fun d!13711 () Bool)

(declare-fun res!11310 () Bool)

(declare-fun e!12972 () Bool)

(assert (=> d!13711 (=> res!11310 e!12972)))

(assert (=> d!13711 (= res!11310 (not (is-CC!56 ys!77)))))

(assert (=> d!13711 (= (balanced!52 ys!77) e!12972)))

(declare-fun b!25151 () Bool)

(assert (=> b!25151 (= e!12971 (balanced!52 (right!704 ys!77)))))

(declare-fun b!25149 () Bool)

(declare-fun res!11312 () Bool)

(assert (=> b!25149 (=> (not res!11312) (not e!12971))))

(assert (=> b!25149 (= res!11312 (<= (- (level!45 (left!701 ys!77)) (level!45 (right!704 ys!77))) 1))))

(declare-fun b!25148 () Bool)

(assert (=> b!25148 (= e!12972 e!12971)))

(declare-fun res!11311 () Bool)

(assert (=> b!25148 (=> (not res!11311) (not e!12971))))

(assert (=> b!25148 (= res!11311 (>= (- (level!45 (left!701 ys!77)) (level!45 (right!704 ys!77))) (- 1)))))

(assert (= (and d!13711 (not res!11310)) b!25148))

(assert (= (and b!25148 res!11311) b!25149))

(assert (= (and b!25149 res!11312) b!25150))

(assert (= (and b!25150 res!11309) b!25151))

(declare-fun m!26215 () Bool)

(assert (=> b!25150 m!26215))

(declare-fun m!26217 () Bool)

(assert (=> b!25151 m!26217))

(assert (=> b!25149 m!26205))

(assert (=> b!25149 m!26203))

(assert (=> b!25148 m!26205))

(assert (=> b!25148 m!26203))

(assert (=> b!25090 d!13711))

(declare-fun d!13713 () Bool)

(assert (=> d!13713 (= (isEmpty!313 ys!77) (= ys!77 Empty!67))))

(assert (=> b!25093 d!13713))

(declare-fun d!13715 () Bool)

(assert (=> d!13715 (= (isEmpty!313 ys!82) (= ys!82 Empty!67))))

(assert (=> b!25100 d!13715))

(declare-fun b!25153 () Bool)

(declare-fun res!11315 () Bool)

(declare-fun e!12974 () Bool)

(assert (=> b!25153 (=> (not res!11315) (not e!12974))))

(assert (=> b!25153 (= res!11315 (not (isEmpty!313 (right!704 xs!533))))))

(declare-fun b!25152 () Bool)

(declare-fun e!12973 () Bool)

(assert (=> b!25152 (= e!12973 e!12974)))

(declare-fun res!11313 () Bool)

(assert (=> b!25152 (=> (not res!11313) (not e!12974))))

(assert (=> b!25152 (= res!11313 (not (isEmpty!313 (left!701 xs!533))))))

(declare-fun b!25155 () Bool)

(assert (=> b!25155 (= e!12974 (concInv!51 (right!704 xs!533)))))

(declare-fun d!13717 () Bool)

(declare-fun res!11316 () Bool)

(assert (=> d!13717 (=> res!11316 e!12973)))

(assert (=> d!13717 (= res!11316 (not (is-CC!56 xs!533)))))

(assert (=> d!13717 (= (concInv!51 xs!533) e!12973)))

(declare-fun b!25154 () Bool)

(declare-fun res!11314 () Bool)

(assert (=> b!25154 (=> (not res!11314) (not e!12974))))

(assert (=> b!25154 (= res!11314 (concInv!51 (left!701 xs!533)))))

(assert (= (and d!13717 (not res!11316)) b!25152))

(assert (= (and b!25152 res!11313) b!25153))

(assert (= (and b!25153 res!11315) b!25154))

(assert (= (and b!25154 res!11314) b!25155))

(declare-fun m!26219 () Bool)

(assert (=> b!25153 m!26219))

(declare-fun m!26221 () Bool)

(assert (=> b!25152 m!26221))

(declare-fun m!26223 () Bool)

(assert (=> b!25155 m!26223))

(declare-fun m!26225 () Bool)

(assert (=> b!25154 m!26225))

(assert (=> start!3800 d!13717))

(declare-fun d!13719 () Bool)

(assert (=> d!13719 (= (isEmpty!313 xs!538) (= xs!538 Empty!67))))

(assert (=> b!25086 d!13719))

(declare-fun b!25157 () Bool)

(declare-fun res!11319 () Bool)

(declare-fun e!12976 () Bool)

(assert (=> b!25157 (=> (not res!11319) (not e!12976))))

(assert (=> b!25157 (= res!11319 (not (isEmpty!313 (right!704 ys!77))))))

(declare-fun b!25156 () Bool)

(declare-fun e!12975 () Bool)

(assert (=> b!25156 (= e!12975 e!12976)))

(declare-fun res!11317 () Bool)

(assert (=> b!25156 (=> (not res!11317) (not e!12976))))

(assert (=> b!25156 (= res!11317 (not (isEmpty!313 (left!701 ys!77))))))

(declare-fun b!25159 () Bool)

(assert (=> b!25159 (= e!12976 (concInv!51 (right!704 ys!77)))))

(declare-fun d!13721 () Bool)

(declare-fun res!11320 () Bool)

(assert (=> d!13721 (=> res!11320 e!12975)))

(assert (=> d!13721 (= res!11320 (not (is-CC!56 ys!77)))))

(assert (=> d!13721 (= (concInv!51 ys!77) e!12975)))

(declare-fun b!25158 () Bool)

(declare-fun res!11318 () Bool)

(assert (=> b!25158 (=> (not res!11318) (not e!12976))))

(assert (=> b!25158 (= res!11318 (concInv!51 (left!701 ys!77)))))

(assert (= (and d!13721 (not res!11320)) b!25156))

(assert (= (and b!25156 res!11317) b!25157))

(assert (= (and b!25157 res!11319) b!25158))

(assert (= (and b!25158 res!11318) b!25159))

(declare-fun m!26227 () Bool)

(assert (=> b!25157 m!26227))

(declare-fun m!26229 () Bool)

(assert (=> b!25156 m!26229))

(declare-fun m!26231 () Bool)

(assert (=> b!25159 m!26231))

(declare-fun m!26233 () Bool)

(assert (=> b!25158 m!26233))

(assert (=> b!25079 d!13721))

(declare-fun b!25161 () Bool)

(declare-fun res!11323 () Bool)

(declare-fun e!12978 () Bool)

(assert (=> b!25161 (=> (not res!11323) (not e!12978))))

(assert (=> b!25161 (= res!11323 (not (isEmpty!313 (right!704 ys!82))))))

(declare-fun b!25160 () Bool)

(declare-fun e!12977 () Bool)

(assert (=> b!25160 (= e!12977 e!12978)))

(declare-fun res!11321 () Bool)

(assert (=> b!25160 (=> (not res!11321) (not e!12978))))

(assert (=> b!25160 (= res!11321 (not (isEmpty!313 (left!701 ys!82))))))

(declare-fun b!25163 () Bool)

(assert (=> b!25163 (= e!12978 (concInv!51 (right!704 ys!82)))))

(declare-fun d!13723 () Bool)

(declare-fun res!11324 () Bool)

(assert (=> d!13723 (=> res!11324 e!12977)))

(assert (=> d!13723 (= res!11324 (not (is-CC!56 ys!82)))))

(assert (=> d!13723 (= (concInv!51 ys!82) e!12977)))

(declare-fun b!25162 () Bool)

(declare-fun res!11322 () Bool)

(assert (=> b!25162 (=> (not res!11322) (not e!12978))))

(assert (=> b!25162 (= res!11322 (concInv!51 (left!701 ys!82)))))

(assert (= (and d!13723 (not res!11324)) b!25160))

(assert (= (and b!25160 res!11321) b!25161))

(assert (= (and b!25161 res!11323) b!25162))

(assert (= (and b!25162 res!11322) b!25163))

(declare-fun m!26235 () Bool)

(assert (=> b!25161 m!26235))

(declare-fun m!26237 () Bool)

(assert (=> b!25160 m!26237))

(declare-fun m!26239 () Bool)

(assert (=> b!25163 m!26239))

(declare-fun m!26241 () Bool)

(assert (=> b!25162 m!26241))

(assert (=> b!25089 d!13723))

(declare-fun b!25170 () Bool)

(declare-fun e!12981 () Bool)

(declare-fun tp!5470 () Bool)

(declare-fun tp!5471 () Bool)

(assert (=> b!25170 (= e!12981 (and tp!5470 tp!5471))))

(declare-fun b!25171 () Bool)

(assert (=> b!25171 (= e!12981 tp_is_empty!159)))

(assert (=> b!25085 (= tp!5465 e!12981)))

(assert (= (and b!25085 (is-CC!56 (left!701 left!633))) b!25170))

(assert (= (and b!25085 (is-Single!56 (left!701 left!633))) b!25171))

(declare-fun b!25172 () Bool)

(declare-fun e!12982 () Bool)

(declare-fun tp!5472 () Bool)

(declare-fun tp!5473 () Bool)

(assert (=> b!25172 (= e!12982 (and tp!5472 tp!5473))))

(declare-fun b!25173 () Bool)

(assert (=> b!25173 (= e!12982 tp_is_empty!159)))

(assert (=> b!25085 (= tp!5457 e!12982)))

(assert (= (and b!25085 (is-CC!56 (right!704 left!633))) b!25172))

(assert (= (and b!25085 (is-Single!56 (right!704 left!633))) b!25173))

(declare-fun b!25174 () Bool)

(declare-fun e!12983 () Bool)

(declare-fun tp!5474 () Bool)

(declare-fun tp!5475 () Bool)

(assert (=> b!25174 (= e!12983 (and tp!5474 tp!5475))))

(declare-fun b!25175 () Bool)

(assert (=> b!25175 (= e!12983 tp_is_empty!159)))

(assert (=> b!25088 (= tp!5464 e!12983)))

(assert (= (and b!25088 (is-CC!56 (left!701 ys!82))) b!25174))

(assert (= (and b!25088 (is-Single!56 (left!701 ys!82))) b!25175))

(declare-fun b!25176 () Bool)

(declare-fun e!12984 () Bool)

(declare-fun tp!5476 () Bool)

(declare-fun tp!5477 () Bool)

(assert (=> b!25176 (= e!12984 (and tp!5476 tp!5477))))

(declare-fun b!25177 () Bool)

(assert (=> b!25177 (= e!12984 tp_is_empty!159)))

(assert (=> b!25088 (= tp!5463 e!12984)))

(assert (= (and b!25088 (is-CC!56 (right!704 ys!82))) b!25176))

(assert (= (and b!25088 (is-Single!56 (right!704 ys!82))) b!25177))

(declare-fun b!25178 () Bool)

(declare-fun e!12985 () Bool)

(declare-fun tp!5478 () Bool)

(declare-fun tp!5479 () Bool)

(assert (=> b!25178 (= e!12985 (and tp!5478 tp!5479))))

(declare-fun b!25179 () Bool)

(assert (=> b!25179 (= e!12985 tp_is_empty!159)))

(assert (=> b!25092 (= tp!5456 e!12985)))

(assert (= (and b!25092 (is-CC!56 (left!701 xs!533))) b!25178))

(assert (= (and b!25092 (is-Single!56 (left!701 xs!533))) b!25179))

(declare-fun b!25180 () Bool)

(declare-fun e!12986 () Bool)

(declare-fun tp!5480 () Bool)

(declare-fun tp!5481 () Bool)

(assert (=> b!25180 (= e!12986 (and tp!5480 tp!5481))))

(declare-fun b!25181 () Bool)

(assert (=> b!25181 (= e!12986 tp_is_empty!159)))

(assert (=> b!25092 (= tp!5458 e!12986)))

(assert (= (and b!25092 (is-CC!56 (right!704 xs!533))) b!25180))

(assert (= (and b!25092 (is-Single!56 (right!704 xs!533))) b!25181))

(declare-fun b!25182 () Bool)

(declare-fun e!12987 () Bool)

(declare-fun tp!5482 () Bool)

(declare-fun tp!5483 () Bool)

(assert (=> b!25182 (= e!12987 (and tp!5482 tp!5483))))

(declare-fun b!25183 () Bool)

(assert (=> b!25183 (= e!12987 tp_is_empty!159)))

(assert (=> b!25087 (= tp!5460 e!12987)))

(assert (= (and b!25087 (is-CC!56 (left!701 xs!538))) b!25182))

(assert (= (and b!25087 (is-Single!56 (left!701 xs!538))) b!25183))

(declare-fun b!25184 () Bool)

(declare-fun e!12988 () Bool)

(declare-fun tp!5484 () Bool)

(declare-fun tp!5485 () Bool)

(assert (=> b!25184 (= e!12988 (and tp!5484 tp!5485))))

(declare-fun b!25185 () Bool)

(assert (=> b!25185 (= e!12988 tp_is_empty!159)))

(assert (=> b!25087 (= tp!5459 e!12988)))

(assert (= (and b!25087 (is-CC!56 (right!704 xs!538))) b!25184))

(assert (= (and b!25087 (is-Single!56 (right!704 xs!538))) b!25185))

(declare-fun b!25186 () Bool)

(declare-fun e!12989 () Bool)

(declare-fun tp!5486 () Bool)

(declare-fun tp!5487 () Bool)

(assert (=> b!25186 (= e!12989 (and tp!5486 tp!5487))))

(declare-fun b!25187 () Bool)

(assert (=> b!25187 (= e!12989 tp_is_empty!159)))

(assert (=> b!25098 (= tp!5461 e!12989)))

(assert (= (and b!25098 (is-CC!56 (left!701 ys!77))) b!25186))

(assert (= (and b!25098 (is-Single!56 (left!701 ys!77))) b!25187))

(declare-fun b!25188 () Bool)

(declare-fun e!12990 () Bool)

(declare-fun tp!5488 () Bool)

(declare-fun tp!5489 () Bool)

(assert (=> b!25188 (= e!12990 (and tp!5488 tp!5489))))

(declare-fun b!25189 () Bool)

(assert (=> b!25189 (= e!12990 tp_is_empty!159)))

(assert (=> b!25098 (= tp!5462 e!12990)))

(assert (= (and b!25098 (is-CC!56 (right!704 ys!77))) b!25188))

(assert (= (and b!25098 (is-Single!56 (right!704 ys!77))) b!25189))

(push 1)

(assert (not b!25125))

(assert (not b!25122))

(assert (not b!25178))

(assert (not b!25145))

(assert (not b!25123))

(assert (not b!25182))

(assert (not b!25156))

(assert (not b!25159))

(assert tp_is_empty!159)

(assert (not b!25128))

(assert (not b!25155))

(assert (not b!25149))

(assert (not b!25130))

(assert (not b!25146))

(assert (not b!25120))

(assert (not b!25121))

(assert (not b!25172))

(assert (not b!25153))

(assert (not b!25135))

(assert (not b!25180))

(assert (not b!25109))

(assert (not b!25126))

(assert (not b!25152))

(assert (not b!25147))

(assert (not b!25124))

(assert (not b!25186))

(assert (not b!25184))

(assert (not b!25162))

(assert (not b!25129))

(assert (not b!25160))

(assert (not b!25144))

(assert (not b!25170))

(assert (not b!25161))

(assert (not b!25157))

(assert (not b!25150))

(assert (not b!25111))

(assert (not b!25158))

(assert (not b!25151))

(assert (not b!25133))

(assert (not b!25127))

(assert (not b!25174))

(assert (not b!25188))

(assert (not b!25163))

(assert (not b!25176))

(assert (not b!25148))

(assert (not b!25154))

(assert (not b!25131))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

