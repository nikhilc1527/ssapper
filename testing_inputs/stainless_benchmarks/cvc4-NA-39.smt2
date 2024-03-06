; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!214 () Bool)

(assert start!214)

(declare-fun b!1202 () Bool)

(declare-fun e!770 () Bool)

(declare-datatypes () ((List!52 (Cons!52 (head!224 (_ BitVec 32)) (tail!236 List!52)) (Nil!53))))

(declare-datatypes () ((AbsQueue!4 (Queue!3 (front!47 List!52) (rear!49 List!52)))))

(declare-fun queue!69 () AbsQueue!4)

(declare-fun isEmpty!12 (AbsQueue!4) Bool)

(assert (=> b!1202 (= e!770 (isEmpty!12 queue!69))))

(declare-fun b!1203 () Bool)

(declare-fun res!745 () Bool)

(declare-fun e!771 () Bool)

(assert (=> b!1203 (=> (not res!745) (not e!771))))

(declare-fun q1!1 () AbsQueue!4)

(declare-fun e1!2 () (_ BitVec 32))

(declare-fun queue!56 () AbsQueue!4)

(declare-fun enqueue!0 (AbsQueue!4 (_ BitVec 32)) AbsQueue!4)

(assert (=> b!1203 (= res!745 (= q1!1 (enqueue!0 queue!56 e1!2)))))

(declare-fun b!1204 () Bool)

(declare-fun res!740 () Bool)

(assert (=> b!1204 (=> (not res!740) (not e!771))))

(declare-fun e1prime!1 () (_ BitVec 32))

(declare-fun q3!1 () AbsQueue!4)

(declare-fun front!8 (AbsQueue!4) (_ BitVec 32))

(assert (=> b!1204 (= res!740 (= e1prime!1 (front!8 q3!1)))))

(declare-fun b!1205 () Bool)

(declare-fun res!744 () Bool)

(assert (=> b!1205 (=> (not res!744) (not e!771))))

(declare-fun q2!1 () AbsQueue!4)

(declare-fun e2!3 () (_ BitVec 32))

(assert (=> b!1205 (= res!744 (= q2!1 (enqueue!0 q1!1 e2!3)))))

(declare-fun b!1206 () Bool)

(declare-fun res!742 () Bool)

(assert (=> b!1206 (=> (not res!742) (not e!771))))

(declare-fun q4!1 () AbsQueue!4)

(assert (=> b!1206 (= res!742 (= queue!69 q4!1))))

(declare-fun b!1207 () Bool)

(declare-fun res!741 () Bool)

(assert (=> b!1207 (=> (not res!741) (not e!771))))

(declare-fun tail!159 (AbsQueue!4) AbsQueue!4)

(assert (=> b!1207 (= res!741 (= q4!1 (tail!159 q3!1)))))

(declare-fun b!1208 () Bool)

(declare-fun res!738 () Bool)

(assert (=> b!1208 (=> (not res!738) (not e!771))))

(declare-fun e3!1 () (_ BitVec 32))

(assert (=> b!1208 (= res!738 (= q3!1 (enqueue!0 q2!1 e3!1)))))

(declare-fun b!1209 () Bool)

(assert (=> b!1209 (= e!771 e!770)))

(declare-fun res!743 () Bool)

(assert (=> b!1209 (=> res!743 e!770)))

(declare-fun isAmortized!0 (AbsQueue!4) Bool)

(assert (=> b!1209 (= res!743 (not (isAmortized!0 queue!69)))))

(declare-fun res!739 () Bool)

(assert (=> start!214 (=> (not res!739) (not e!771))))

(assert (=> start!214 (= res!739 (isEmpty!12 queue!56))))

(assert (=> start!214 e!771))

(assert (=> start!214 true))

(assert (= (and start!214 res!739) b!1203))

(assert (= (and b!1203 res!745) b!1205))

(assert (= (and b!1205 res!744) b!1208))

(assert (= (and b!1208 res!738) b!1204))

(assert (= (and b!1204 res!740) b!1207))

(assert (= (and b!1207 res!741) b!1206))

(assert (= (and b!1206 res!742) b!1209))

(assert (= (and b!1209 (not res!743)) b!1202))

(declare-fun m!1257 () Bool)

(assert (=> b!1208 m!1257))

(declare-fun m!1259 () Bool)

(assert (=> b!1209 m!1259))

(declare-fun m!1261 () Bool)

(assert (=> b!1207 m!1261))

(declare-fun m!1263 () Bool)

(assert (=> b!1204 m!1263))

(declare-fun m!1265 () Bool)

(assert (=> b!1205 m!1265))

(declare-fun m!1267 () Bool)

(assert (=> start!214 m!1267))

(declare-fun m!1269 () Bool)

(assert (=> b!1202 m!1269))

(declare-fun m!1271 () Bool)

(assert (=> b!1203 m!1271))

(push 1)

(assert (not b!1204))

(assert (not b!1202))

(assert (not b!1207))

(assert (not start!214))

(assert (not b!1205))

(assert (not b!1209))

(assert (not b!1208))

(assert (not b!1203))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!590 () Bool)

(assert (=> d!590 (= (isEmpty!12 queue!69) (and (is-Nil!53 (front!47 queue!69)) (is-Nil!53 (rear!49 queue!69))))))

(assert (=> b!1202 d!590))

(declare-fun d!592 () Bool)

(declare-fun lt!227 () AbsQueue!4)

(assert (=> d!592 (isAmortized!0 lt!227)))

(declare-fun amortizedQueue!0 (List!52 List!52) AbsQueue!4)

(assert (=> d!592 (= lt!227 (amortizedQueue!0 (front!47 q2!1) (Cons!52 e3!1 (rear!49 q2!1))))))

(assert (=> d!592 (= (enqueue!0 q2!1 e3!1) lt!227)))

(declare-fun bs!164 () Bool)

(assert (= bs!164 d!592))

(declare-fun m!1273 () Bool)

(assert (=> bs!164 m!1273))

(declare-fun m!1275 () Bool)

(assert (=> bs!164 m!1275))

(assert (=> b!1208 d!592))

(declare-fun d!594 () Bool)

(declare-fun lt!228 () AbsQueue!4)

(assert (=> d!594 (isAmortized!0 lt!228)))

(assert (=> d!594 (= lt!228 (amortizedQueue!0 (front!47 q1!1) (Cons!52 e2!3 (rear!49 q1!1))))))

(assert (=> d!594 (= (enqueue!0 q1!1 e2!3) lt!228)))

(declare-fun bs!165 () Bool)

(assert (= bs!165 d!594))

(declare-fun m!1277 () Bool)

(assert (=> bs!165 m!1277))

(declare-fun m!1279 () Bool)

(assert (=> bs!165 m!1279))

(assert (=> b!1205 d!594))

(declare-fun d!596 () Bool)

(declare-fun lt!229 () AbsQueue!4)

(assert (=> d!596 (isAmortized!0 lt!229)))

(assert (=> d!596 (= lt!229 (amortizedQueue!0 (front!47 queue!56) (Cons!52 e1!2 (rear!49 queue!56))))))

(assert (=> d!596 (= (enqueue!0 queue!56 e1!2) lt!229)))

(declare-fun bs!166 () Bool)

(assert (= bs!166 d!596))

(declare-fun m!1281 () Bool)

(assert (=> bs!166 m!1281))

(declare-fun m!1283 () Bool)

(assert (=> bs!166 m!1283))

(assert (=> b!1203 d!596))

(declare-fun d!598 () Bool)

(assert (=> d!598 (= (isEmpty!12 queue!56) (and (is-Nil!53 (front!47 queue!56)) (is-Nil!53 (rear!49 queue!56))))))

(assert (=> start!214 d!598))

(declare-fun d!600 () Bool)

(declare-fun size!23 (List!52) Int)

(assert (=> d!600 (= (isAmortized!0 queue!69) (>= (size!23 (front!47 queue!69)) (size!23 (rear!49 queue!69))))))

(declare-fun bs!167 () Bool)

(assert (= bs!167 d!600))

(declare-fun m!1285 () Bool)

(assert (=> bs!167 m!1285))

(declare-fun m!1287 () Bool)

(assert (=> bs!167 m!1287))

(assert (=> b!1209 d!600))

(declare-fun d!602 () Bool)

(assert (=> d!602 (= (front!8 q3!1) (head!224 (front!47 q3!1)))))

(assert (=> b!1204 d!602))

(declare-fun d!604 () Bool)

(declare-fun lt!232 () AbsQueue!4)

(assert (=> d!604 (isAmortized!0 lt!232)))

(assert (=> d!604 (= lt!232 (amortizedQueue!0 (tail!236 (front!47 q3!1)) (rear!49 q3!1)))))

(declare-fun e!774 () Bool)

(assert (=> d!604 e!774))

(declare-fun res!748 () Bool)

(assert (=> d!604 (=> (not res!748) (not e!774))))

(assert (=> d!604 (= res!748 (isAmortized!0 q3!1))))

(assert (=> d!604 (= (tail!159 q3!1) lt!232)))

(declare-fun b!1212 () Bool)

(assert (=> b!1212 (= e!774 (not (isEmpty!12 q3!1)))))

(assert (= (and d!604 res!748) b!1212))

(declare-fun m!1289 () Bool)

(assert (=> d!604 m!1289))

(declare-fun m!1291 () Bool)

(assert (=> d!604 m!1291))

(declare-fun m!1293 () Bool)

(assert (=> d!604 m!1293))

(declare-fun m!1295 () Bool)

(assert (=> b!1212 m!1295))

(assert (=> b!1207 d!604))

(push 1)

(assert (not d!604))

(assert (not b!1212))

(assert (not d!592))

(assert (not d!600))

(assert (not d!594))

(assert (not d!596))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!606 () Bool)

(assert (=> d!606 (= (isAmortized!0 lt!229) (>= (size!23 (front!47 lt!229)) (size!23 (rear!49 lt!229))))))

(declare-fun bs!168 () Bool)

(assert (= bs!168 d!606))

(declare-fun m!1297 () Bool)

(assert (=> bs!168 m!1297))

(declare-fun m!1299 () Bool)

(assert (=> bs!168 m!1299))

(assert (=> d!596 d!606))

(declare-fun d!608 () Bool)

(declare-fun lt!235 () AbsQueue!4)

(assert (=> d!608 (isAmortized!0 lt!235)))

(declare-fun e!777 () AbsQueue!4)

(assert (=> d!608 (= lt!235 e!777)))

(declare-fun c!290 () Bool)

(assert (=> d!608 (= c!290 (<= (size!23 (Cons!52 e1!2 (rear!49 queue!56))) (size!23 (front!47 queue!56))))))

(assert (=> d!608 (= (amortizedQueue!0 (front!47 queue!56) (Cons!52 e1!2 (rear!49 queue!56))) lt!235)))

(declare-fun b!1217 () Bool)

(assert (=> b!1217 (= e!777 (Queue!3 (front!47 queue!56) (Cons!52 e1!2 (rear!49 queue!56))))))

(declare-fun b!1218 () Bool)

(declare-fun concat!2 (List!52 List!52) List!52)

(declare-fun reverse!5 (List!52) List!52)

(assert (=> b!1218 (= e!777 (Queue!3 (concat!2 (front!47 queue!56) (reverse!5 (Cons!52 e1!2 (rear!49 queue!56)))) Nil!53))))

(assert (= (and d!608 c!290) b!1217))

(assert (= (and d!608 (not c!290)) b!1218))

(declare-fun m!1301 () Bool)

(assert (=> d!608 m!1301))

(declare-fun m!1303 () Bool)

(assert (=> d!608 m!1303))

(declare-fun m!1305 () Bool)

(assert (=> d!608 m!1305))

(declare-fun m!1307 () Bool)

(assert (=> b!1218 m!1307))

(assert (=> b!1218 m!1307))

(declare-fun m!1309 () Bool)

(assert (=> b!1218 m!1309))

(assert (=> d!596 d!608))

(declare-fun d!610 () Bool)

(assert (=> d!610 (= (isAmortized!0 lt!227) (>= (size!23 (front!47 lt!227)) (size!23 (rear!49 lt!227))))))

(declare-fun bs!169 () Bool)

(assert (= bs!169 d!610))

(declare-fun m!1311 () Bool)

(assert (=> bs!169 m!1311))

(declare-fun m!1313 () Bool)

(assert (=> bs!169 m!1313))

(assert (=> d!592 d!610))

(declare-fun d!612 () Bool)

(declare-fun lt!236 () AbsQueue!4)

(assert (=> d!612 (isAmortized!0 lt!236)))

(declare-fun e!778 () AbsQueue!4)

(assert (=> d!612 (= lt!236 e!778)))

(declare-fun c!291 () Bool)

(assert (=> d!612 (= c!291 (<= (size!23 (Cons!52 e3!1 (rear!49 q2!1))) (size!23 (front!47 q2!1))))))

(assert (=> d!612 (= (amortizedQueue!0 (front!47 q2!1) (Cons!52 e3!1 (rear!49 q2!1))) lt!236)))

(declare-fun b!1219 () Bool)

(assert (=> b!1219 (= e!778 (Queue!3 (front!47 q2!1) (Cons!52 e3!1 (rear!49 q2!1))))))

(declare-fun b!1220 () Bool)

(assert (=> b!1220 (= e!778 (Queue!3 (concat!2 (front!47 q2!1) (reverse!5 (Cons!52 e3!1 (rear!49 q2!1)))) Nil!53))))

(assert (= (and d!612 c!291) b!1219))

(assert (= (and d!612 (not c!291)) b!1220))

(declare-fun m!1315 () Bool)

(assert (=> d!612 m!1315))

(declare-fun m!1317 () Bool)

(assert (=> d!612 m!1317))

(declare-fun m!1319 () Bool)

(assert (=> d!612 m!1319))

(declare-fun m!1321 () Bool)

(assert (=> b!1220 m!1321))

(assert (=> b!1220 m!1321))

(declare-fun m!1323 () Bool)

(assert (=> b!1220 m!1323))

(assert (=> d!592 d!612))

(declare-fun d!614 () Bool)

(assert (=> d!614 (= (isAmortized!0 lt!228) (>= (size!23 (front!47 lt!228)) (size!23 (rear!49 lt!228))))))

(declare-fun bs!170 () Bool)

(assert (= bs!170 d!614))

(declare-fun m!1325 () Bool)

(assert (=> bs!170 m!1325))

(declare-fun m!1327 () Bool)

(assert (=> bs!170 m!1327))

(assert (=> d!594 d!614))

(declare-fun d!616 () Bool)

(declare-fun lt!237 () AbsQueue!4)

(assert (=> d!616 (isAmortized!0 lt!237)))

(declare-fun e!779 () AbsQueue!4)

(assert (=> d!616 (= lt!237 e!779)))

(declare-fun c!292 () Bool)

(assert (=> d!616 (= c!292 (<= (size!23 (Cons!52 e2!3 (rear!49 q1!1))) (size!23 (front!47 q1!1))))))

(assert (=> d!616 (= (amortizedQueue!0 (front!47 q1!1) (Cons!52 e2!3 (rear!49 q1!1))) lt!237)))

(declare-fun b!1221 () Bool)

(assert (=> b!1221 (= e!779 (Queue!3 (front!47 q1!1) (Cons!52 e2!3 (rear!49 q1!1))))))

(declare-fun b!1222 () Bool)

(assert (=> b!1222 (= e!779 (Queue!3 (concat!2 (front!47 q1!1) (reverse!5 (Cons!52 e2!3 (rear!49 q1!1)))) Nil!53))))

(assert (= (and d!616 c!292) b!1221))

(assert (= (and d!616 (not c!292)) b!1222))

(declare-fun m!1329 () Bool)

(assert (=> d!616 m!1329))

(declare-fun m!1331 () Bool)

(assert (=> d!616 m!1331))

(declare-fun m!1333 () Bool)

(assert (=> d!616 m!1333))

(declare-fun m!1335 () Bool)

(assert (=> b!1222 m!1335))

(assert (=> b!1222 m!1335))

(declare-fun m!1337 () Bool)

(assert (=> b!1222 m!1337))

(assert (=> d!594 d!616))

(declare-fun d!618 () Bool)

(declare-fun lt!240 () Int)

(assert (=> d!618 (>= lt!240 0)))

(declare-fun e!782 () Int)

(assert (=> d!618 (= lt!240 e!782)))

(declare-fun c!295 () Bool)

(assert (=> d!618 (= c!295 (is-Nil!53 (front!47 queue!69)))))

(assert (=> d!618 (= (size!23 (front!47 queue!69)) lt!240)))

(declare-fun b!1227 () Bool)

(assert (=> b!1227 (= e!782 0)))

(declare-fun b!1228 () Bool)

(assert (=> b!1228 (= e!782 (+ 1 (size!23 (tail!236 (front!47 queue!69)))))))

(assert (= (and d!618 c!295) b!1227))

(assert (= (and d!618 (not c!295)) b!1228))

(declare-fun m!1339 () Bool)

(assert (=> b!1228 m!1339))

(assert (=> d!600 d!618))

(declare-fun d!620 () Bool)

(declare-fun lt!241 () Int)

(assert (=> d!620 (>= lt!241 0)))

(declare-fun e!783 () Int)

(assert (=> d!620 (= lt!241 e!783)))

(declare-fun c!296 () Bool)

(assert (=> d!620 (= c!296 (is-Nil!53 (rear!49 queue!69)))))

(assert (=> d!620 (= (size!23 (rear!49 queue!69)) lt!241)))

(declare-fun b!1229 () Bool)

(assert (=> b!1229 (= e!783 0)))

(declare-fun b!1230 () Bool)

(assert (=> b!1230 (= e!783 (+ 1 (size!23 (tail!236 (rear!49 queue!69)))))))

(assert (= (and d!620 c!296) b!1229))

(assert (= (and d!620 (not c!296)) b!1230))

(declare-fun m!1341 () Bool)

(assert (=> b!1230 m!1341))

(assert (=> d!600 d!620))

(declare-fun d!622 () Bool)

(assert (=> d!622 (= (isAmortized!0 lt!232) (>= (size!23 (front!47 lt!232)) (size!23 (rear!49 lt!232))))))

(declare-fun bs!171 () Bool)

(assert (= bs!171 d!622))

(declare-fun m!1343 () Bool)

(assert (=> bs!171 m!1343))

(declare-fun m!1345 () Bool)

(assert (=> bs!171 m!1345))

(assert (=> d!604 d!622))

(declare-fun d!624 () Bool)

(declare-fun lt!242 () AbsQueue!4)

(assert (=> d!624 (isAmortized!0 lt!242)))

(declare-fun e!784 () AbsQueue!4)

(assert (=> d!624 (= lt!242 e!784)))

(declare-fun c!297 () Bool)

(assert (=> d!624 (= c!297 (<= (size!23 (rear!49 q3!1)) (size!23 (tail!236 (front!47 q3!1)))))))

(assert (=> d!624 (= (amortizedQueue!0 (tail!236 (front!47 q3!1)) (rear!49 q3!1)) lt!242)))

(declare-fun b!1231 () Bool)

(assert (=> b!1231 (= e!784 (Queue!3 (tail!236 (front!47 q3!1)) (rear!49 q3!1)))))

(declare-fun b!1232 () Bool)

(assert (=> b!1232 (= e!784 (Queue!3 (concat!2 (tail!236 (front!47 q3!1)) (reverse!5 (rear!49 q3!1))) Nil!53))))

(assert (= (and d!624 c!297) b!1231))

(assert (= (and d!624 (not c!297)) b!1232))

(declare-fun m!1347 () Bool)

(assert (=> d!624 m!1347))

(declare-fun m!1349 () Bool)

(assert (=> d!624 m!1349))

(declare-fun m!1351 () Bool)

(assert (=> d!624 m!1351))

(declare-fun m!1353 () Bool)

(assert (=> b!1232 m!1353))

(assert (=> b!1232 m!1353))

(declare-fun m!1355 () Bool)

(assert (=> b!1232 m!1355))

(assert (=> d!604 d!624))

(declare-fun d!626 () Bool)

(assert (=> d!626 (= (isAmortized!0 q3!1) (>= (size!23 (front!47 q3!1)) (size!23 (rear!49 q3!1))))))

(declare-fun bs!172 () Bool)

(assert (= bs!172 d!626))

(declare-fun m!1357 () Bool)

(assert (=> bs!172 m!1357))

(assert (=> bs!172 m!1349))

(assert (=> d!604 d!626))

(declare-fun d!628 () Bool)

(assert (=> d!628 (= (isEmpty!12 q3!1) (and (is-Nil!53 (front!47 q3!1)) (is-Nil!53 (rear!49 q3!1))))))

(assert (=> b!1212 d!628))

(push 1)

(assert (not d!622))

(assert (not d!616))

(assert (not d!610))

(assert (not b!1222))

(assert (not b!1230))

(assert (not b!1228))

(assert (not b!1220))

(assert (not d!606))

(assert (not d!612))

(assert (not d!626))

(assert (not b!1218))

(assert (not d!624))

(assert (not b!1232))

(assert (not d!614))

(assert (not d!608))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!630 () Bool)

(assert (=> d!630 (= (isAmortized!0 lt!236) (>= (size!23 (front!47 lt!236)) (size!23 (rear!49 lt!236))))))

(declare-fun bs!173 () Bool)

(assert (= bs!173 d!630))

(declare-fun m!1359 () Bool)

(assert (=> bs!173 m!1359))

(declare-fun m!1361 () Bool)

(assert (=> bs!173 m!1361))

(assert (=> d!612 d!630))

(declare-fun d!632 () Bool)

(declare-fun lt!243 () Int)

(assert (=> d!632 (>= lt!243 0)))

(declare-fun e!785 () Int)

(assert (=> d!632 (= lt!243 e!785)))

(declare-fun c!298 () Bool)

(assert (=> d!632 (= c!298 (is-Nil!53 (Cons!52 e3!1 (rear!49 q2!1))))))

(assert (=> d!632 (= (size!23 (Cons!52 e3!1 (rear!49 q2!1))) lt!243)))

(declare-fun b!1233 () Bool)

(assert (=> b!1233 (= e!785 0)))

(declare-fun b!1234 () Bool)

(assert (=> b!1234 (= e!785 (+ 1 (size!23 (tail!236 (Cons!52 e3!1 (rear!49 q2!1))))))))

(assert (= (and d!632 c!298) b!1233))

(assert (= (and d!632 (not c!298)) b!1234))

(declare-fun m!1363 () Bool)

(assert (=> b!1234 m!1363))

(assert (=> d!612 d!632))

(declare-fun d!634 () Bool)

(declare-fun lt!244 () Int)

(assert (=> d!634 (>= lt!244 0)))

(declare-fun e!786 () Int)

(assert (=> d!634 (= lt!244 e!786)))

(declare-fun c!299 () Bool)

(assert (=> d!634 (= c!299 (is-Nil!53 (front!47 q2!1)))))

(assert (=> d!634 (= (size!23 (front!47 q2!1)) lt!244)))

(declare-fun b!1235 () Bool)

(assert (=> b!1235 (= e!786 0)))

(declare-fun b!1236 () Bool)

(assert (=> b!1236 (= e!786 (+ 1 (size!23 (tail!236 (front!47 q2!1)))))))

(assert (= (and d!634 c!299) b!1235))

(assert (= (and d!634 (not c!299)) b!1236))

(declare-fun m!1365 () Bool)

(assert (=> b!1236 m!1365))

(assert (=> d!612 d!634))

(declare-fun d!636 () Bool)

(declare-fun lt!245 () Int)

(assert (=> d!636 (>= lt!245 0)))

(declare-fun e!787 () Int)

(assert (=> d!636 (= lt!245 e!787)))

(declare-fun c!300 () Bool)

(assert (=> d!636 (= c!300 (is-Nil!53 (tail!236 (front!47 queue!69))))))

(assert (=> d!636 (= (size!23 (tail!236 (front!47 queue!69))) lt!245)))

(declare-fun b!1237 () Bool)

(assert (=> b!1237 (= e!787 0)))

(declare-fun b!1238 () Bool)

(assert (=> b!1238 (= e!787 (+ 1 (size!23 (tail!236 (tail!236 (front!47 queue!69))))))))

(assert (= (and d!636 c!300) b!1237))

(assert (= (and d!636 (not c!300)) b!1238))

(declare-fun m!1367 () Bool)

(assert (=> b!1238 m!1367))

(assert (=> b!1228 d!636))

(declare-fun d!638 () Bool)

(assert (=> d!638 (= (isAmortized!0 lt!242) (>= (size!23 (front!47 lt!242)) (size!23 (rear!49 lt!242))))))

(declare-fun bs!174 () Bool)

(assert (= bs!174 d!638))

(declare-fun m!1369 () Bool)

(assert (=> bs!174 m!1369))

(declare-fun m!1371 () Bool)

(assert (=> bs!174 m!1371))

(assert (=> d!624 d!638))

(declare-fun d!640 () Bool)

(declare-fun lt!246 () Int)

(assert (=> d!640 (>= lt!246 0)))

(declare-fun e!788 () Int)

(assert (=> d!640 (= lt!246 e!788)))

(declare-fun c!301 () Bool)

(assert (=> d!640 (= c!301 (is-Nil!53 (rear!49 q3!1)))))

(assert (=> d!640 (= (size!23 (rear!49 q3!1)) lt!246)))

(declare-fun b!1239 () Bool)

(assert (=> b!1239 (= e!788 0)))

(declare-fun b!1240 () Bool)

(assert (=> b!1240 (= e!788 (+ 1 (size!23 (tail!236 (rear!49 q3!1)))))))

(assert (= (and d!640 c!301) b!1239))

(assert (= (and d!640 (not c!301)) b!1240))

(declare-fun m!1373 () Bool)

(assert (=> b!1240 m!1373))

(assert (=> d!624 d!640))

(declare-fun d!642 () Bool)

(declare-fun lt!247 () Int)

(assert (=> d!642 (>= lt!247 0)))

(declare-fun e!789 () Int)

(assert (=> d!642 (= lt!247 e!789)))

(declare-fun c!302 () Bool)

(assert (=> d!642 (= c!302 (is-Nil!53 (tail!236 (front!47 q3!1))))))

(assert (=> d!642 (= (size!23 (tail!236 (front!47 q3!1))) lt!247)))

(declare-fun b!1241 () Bool)

(assert (=> b!1241 (= e!789 0)))

(declare-fun b!1242 () Bool)

(assert (=> b!1242 (= e!789 (+ 1 (size!23 (tail!236 (tail!236 (front!47 q3!1))))))))

(assert (= (and d!642 c!302) b!1241))

(assert (= (and d!642 (not c!302)) b!1242))

(declare-fun m!1375 () Bool)

(assert (=> b!1242 m!1375))

(assert (=> d!624 d!642))

(declare-fun d!644 () Bool)

(declare-fun lt!248 () Int)

(assert (=> d!644 (>= lt!248 0)))

(declare-fun e!790 () Int)

(assert (=> d!644 (= lt!248 e!790)))

(declare-fun c!303 () Bool)

(assert (=> d!644 (= c!303 (is-Nil!53 (tail!236 (rear!49 queue!69))))))

(assert (=> d!644 (= (size!23 (tail!236 (rear!49 queue!69))) lt!248)))

(declare-fun b!1243 () Bool)

(assert (=> b!1243 (= e!790 0)))

(declare-fun b!1244 () Bool)

(assert (=> b!1244 (= e!790 (+ 1 (size!23 (tail!236 (tail!236 (rear!49 queue!69))))))))

(assert (= (and d!644 c!303) b!1243))

(assert (= (and d!644 (not c!303)) b!1244))

(declare-fun m!1377 () Bool)

(assert (=> b!1244 m!1377))

(assert (=> b!1230 d!644))

(declare-fun d!646 () Bool)

(declare-fun e!796 () Bool)

(assert (=> d!646 e!796))

(declare-fun res!752 () Bool)

(assert (=> d!646 (=> (not res!752) (not e!796))))

(declare-fun lt!251 () List!52)

(assert (=> d!646 (= res!752 (= (size!23 lt!251) (+ (size!23 (front!47 q2!1)) (size!23 (reverse!5 (Cons!52 e3!1 (rear!49 q2!1)))))))))

(declare-fun e!795 () List!52)

(assert (=> d!646 (= lt!251 e!795)))

(declare-fun c!306 () Bool)

(assert (=> d!646 (= c!306 (is-Nil!53 (front!47 q2!1)))))

(assert (=> d!646 (= (concat!2 (front!47 q2!1) (reverse!5 (Cons!52 e3!1 (rear!49 q2!1)))) lt!251)))

(declare-fun b!1251 () Bool)

(assert (=> b!1251 (= e!795 (reverse!5 (Cons!52 e3!1 (rear!49 q2!1))))))

(declare-fun b!1252 () Bool)

(assert (=> b!1252 (= e!795 (Cons!52 (head!224 (front!47 q2!1)) (concat!2 (tail!236 (front!47 q2!1)) (reverse!5 (Cons!52 e3!1 (rear!49 q2!1))))))))

(declare-fun b!1253 () Bool)

(declare-fun content!22 (List!52) (Set (_ BitVec 32)))

(assert (=> b!1253 (= e!796 (= (content!22 lt!251) (union (content!22 (front!47 q2!1)) (content!22 (reverse!5 (Cons!52 e3!1 (rear!49 q2!1)))))))))

(assert (= (and d!646 c!306) b!1251))

(assert (= (and d!646 (not c!306)) b!1252))

(assert (= (and d!646 res!752) b!1253))

(declare-fun m!1379 () Bool)

(assert (=> d!646 m!1379))

(assert (=> d!646 m!1319))

(assert (=> d!646 m!1321))

(declare-fun m!1381 () Bool)

(assert (=> d!646 m!1381))

(assert (=> b!1252 m!1321))

(declare-fun m!1383 () Bool)

(assert (=> b!1252 m!1383))

(declare-fun m!1385 () Bool)

(assert (=> b!1253 m!1385))

(declare-fun m!1387 () Bool)

(assert (=> b!1253 m!1387))

(assert (=> b!1253 m!1321))

(declare-fun m!1389 () Bool)

(assert (=> b!1253 m!1389))

(assert (=> b!1220 d!646))

(declare-fun d!648 () Bool)

(declare-fun lt!254 () List!52)

(assert (=> d!648 (= (content!22 lt!254) (content!22 (Cons!52 e3!1 (rear!49 q2!1))))))

(declare-fun e!799 () List!52)

(assert (=> d!648 (= lt!254 e!799)))

(declare-fun c!309 () Bool)

(assert (=> d!648 (= c!309 (is-Nil!53 (Cons!52 e3!1 (rear!49 q2!1))))))

(assert (=> d!648 (= (reverse!5 (Cons!52 e3!1 (rear!49 q2!1))) lt!254)))

(declare-fun b!1258 () Bool)

(assert (=> b!1258 (= e!799 Nil!53)))

(declare-fun b!1259 () Bool)

(assert (=> b!1259 (= e!799 (concat!2 (reverse!5 (tail!236 (Cons!52 e3!1 (rear!49 q2!1)))) (Cons!52 (head!224 (Cons!52 e3!1 (rear!49 q2!1))) Nil!53)))))

(assert (= (and d!648 c!309) b!1258))

(assert (= (and d!648 (not c!309)) b!1259))

(declare-fun m!1391 () Bool)

(assert (=> d!648 m!1391))

(declare-fun m!1393 () Bool)

(assert (=> d!648 m!1393))

(declare-fun m!1395 () Bool)

(assert (=> b!1259 m!1395))

(assert (=> b!1259 m!1395))

(declare-fun m!1397 () Bool)

(assert (=> b!1259 m!1397))

(assert (=> b!1220 d!648))

(declare-fun d!650 () Bool)

(declare-fun lt!255 () Int)

(assert (=> d!650 (>= lt!255 0)))

(declare-fun e!800 () Int)

(assert (=> d!650 (= lt!255 e!800)))

(declare-fun c!310 () Bool)

(assert (=> d!650 (= c!310 (is-Nil!53 (front!47 lt!228)))))

(assert (=> d!650 (= (size!23 (front!47 lt!228)) lt!255)))

(declare-fun b!1260 () Bool)

(assert (=> b!1260 (= e!800 0)))

(declare-fun b!1261 () Bool)

(assert (=> b!1261 (= e!800 (+ 1 (size!23 (tail!236 (front!47 lt!228)))))))

(assert (= (and d!650 c!310) b!1260))

(assert (= (and d!650 (not c!310)) b!1261))

(declare-fun m!1399 () Bool)

(assert (=> b!1261 m!1399))

(assert (=> d!614 d!650))

(declare-fun d!652 () Bool)

(declare-fun lt!256 () Int)

(assert (=> d!652 (>= lt!256 0)))

(declare-fun e!801 () Int)

(assert (=> d!652 (= lt!256 e!801)))

(declare-fun c!311 () Bool)

(assert (=> d!652 (= c!311 (is-Nil!53 (rear!49 lt!228)))))

(assert (=> d!652 (= (size!23 (rear!49 lt!228)) lt!256)))

(declare-fun b!1262 () Bool)

(assert (=> b!1262 (= e!801 0)))

(declare-fun b!1263 () Bool)

(assert (=> b!1263 (= e!801 (+ 1 (size!23 (tail!236 (rear!49 lt!228)))))))

(assert (= (and d!652 c!311) b!1262))

(assert (= (and d!652 (not c!311)) b!1263))

(declare-fun m!1401 () Bool)

(assert (=> b!1263 m!1401))

(assert (=> d!614 d!652))

(declare-fun d!654 () Bool)

(declare-fun lt!257 () Int)

(assert (=> d!654 (>= lt!257 0)))

(declare-fun e!802 () Int)

(assert (=> d!654 (= lt!257 e!802)))

(declare-fun c!312 () Bool)

(assert (=> d!654 (= c!312 (is-Nil!53 (front!47 lt!229)))))

(assert (=> d!654 (= (size!23 (front!47 lt!229)) lt!257)))

(declare-fun b!1264 () Bool)

(assert (=> b!1264 (= e!802 0)))

(declare-fun b!1265 () Bool)

(assert (=> b!1265 (= e!802 (+ 1 (size!23 (tail!236 (front!47 lt!229)))))))

(assert (= (and d!654 c!312) b!1264))

(assert (= (and d!654 (not c!312)) b!1265))

(declare-fun m!1403 () Bool)

(assert (=> b!1265 m!1403))

(assert (=> d!606 d!654))

(declare-fun d!656 () Bool)

(declare-fun lt!258 () Int)

(assert (=> d!656 (>= lt!258 0)))

(declare-fun e!803 () Int)

(assert (=> d!656 (= lt!258 e!803)))

(declare-fun c!313 () Bool)

(assert (=> d!656 (= c!313 (is-Nil!53 (rear!49 lt!229)))))

(assert (=> d!656 (= (size!23 (rear!49 lt!229)) lt!258)))

(declare-fun b!1266 () Bool)

(assert (=> b!1266 (= e!803 0)))

(declare-fun b!1267 () Bool)

(assert (=> b!1267 (= e!803 (+ 1 (size!23 (tail!236 (rear!49 lt!229)))))))

(assert (= (and d!656 c!313) b!1266))

(assert (= (and d!656 (not c!313)) b!1267))

(declare-fun m!1405 () Bool)

(assert (=> b!1267 m!1405))

(assert (=> d!606 d!656))

(declare-fun d!658 () Bool)

(declare-fun lt!259 () Int)

(assert (=> d!658 (>= lt!259 0)))

(declare-fun e!804 () Int)

(assert (=> d!658 (= lt!259 e!804)))

(declare-fun c!314 () Bool)

(assert (=> d!658 (= c!314 (is-Nil!53 (front!47 lt!227)))))

(assert (=> d!658 (= (size!23 (front!47 lt!227)) lt!259)))

(declare-fun b!1268 () Bool)

(assert (=> b!1268 (= e!804 0)))

(declare-fun b!1269 () Bool)

(assert (=> b!1269 (= e!804 (+ 1 (size!23 (tail!236 (front!47 lt!227)))))))

(assert (= (and d!658 c!314) b!1268))

(assert (= (and d!658 (not c!314)) b!1269))

(declare-fun m!1407 () Bool)

(assert (=> b!1269 m!1407))

(assert (=> d!610 d!658))

(declare-fun d!660 () Bool)

(declare-fun lt!260 () Int)

(assert (=> d!660 (>= lt!260 0)))

(declare-fun e!805 () Int)

(assert (=> d!660 (= lt!260 e!805)))

(declare-fun c!315 () Bool)

(assert (=> d!660 (= c!315 (is-Nil!53 (rear!49 lt!227)))))

(assert (=> d!660 (= (size!23 (rear!49 lt!227)) lt!260)))

(declare-fun b!1270 () Bool)

(assert (=> b!1270 (= e!805 0)))

(declare-fun b!1271 () Bool)

(assert (=> b!1271 (= e!805 (+ 1 (size!23 (tail!236 (rear!49 lt!227)))))))

(assert (= (and d!660 c!315) b!1270))

(assert (= (and d!660 (not c!315)) b!1271))

(declare-fun m!1409 () Bool)

(assert (=> b!1271 m!1409))

(assert (=> d!610 d!660))

(declare-fun d!662 () Bool)

(declare-fun lt!261 () Int)

(assert (=> d!662 (>= lt!261 0)))

(declare-fun e!806 () Int)

(assert (=> d!662 (= lt!261 e!806)))

(declare-fun c!316 () Bool)

(assert (=> d!662 (= c!316 (is-Nil!53 (front!47 lt!232)))))

(assert (=> d!662 (= (size!23 (front!47 lt!232)) lt!261)))

(declare-fun b!1272 () Bool)

(assert (=> b!1272 (= e!806 0)))

(declare-fun b!1273 () Bool)

(assert (=> b!1273 (= e!806 (+ 1 (size!23 (tail!236 (front!47 lt!232)))))))

(assert (= (and d!662 c!316) b!1272))

(assert (= (and d!662 (not c!316)) b!1273))

(declare-fun m!1411 () Bool)

(assert (=> b!1273 m!1411))

(assert (=> d!622 d!662))

(declare-fun d!664 () Bool)

(declare-fun lt!262 () Int)

(assert (=> d!664 (>= lt!262 0)))

(declare-fun e!807 () Int)

(assert (=> d!664 (= lt!262 e!807)))

(declare-fun c!317 () Bool)

(assert (=> d!664 (= c!317 (is-Nil!53 (rear!49 lt!232)))))

(assert (=> d!664 (= (size!23 (rear!49 lt!232)) lt!262)))

(declare-fun b!1274 () Bool)

(assert (=> b!1274 (= e!807 0)))

(declare-fun b!1275 () Bool)

(assert (=> b!1275 (= e!807 (+ 1 (size!23 (tail!236 (rear!49 lt!232)))))))

(assert (= (and d!664 c!317) b!1274))

(assert (= (and d!664 (not c!317)) b!1275))

(declare-fun m!1413 () Bool)

(assert (=> b!1275 m!1413))

(assert (=> d!622 d!664))

(declare-fun d!666 () Bool)

(assert (=> d!666 (= (isAmortized!0 lt!235) (>= (size!23 (front!47 lt!235)) (size!23 (rear!49 lt!235))))))

(declare-fun bs!175 () Bool)

(assert (= bs!175 d!666))

(declare-fun m!1415 () Bool)

(assert (=> bs!175 m!1415))

(declare-fun m!1417 () Bool)

(assert (=> bs!175 m!1417))

(assert (=> d!608 d!666))

(declare-fun d!668 () Bool)

(declare-fun lt!263 () Int)

(assert (=> d!668 (>= lt!263 0)))

(declare-fun e!808 () Int)

(assert (=> d!668 (= lt!263 e!808)))

(declare-fun c!318 () Bool)

(assert (=> d!668 (= c!318 (is-Nil!53 (Cons!52 e1!2 (rear!49 queue!56))))))

(assert (=> d!668 (= (size!23 (Cons!52 e1!2 (rear!49 queue!56))) lt!263)))

(declare-fun b!1276 () Bool)

(assert (=> b!1276 (= e!808 0)))

(declare-fun b!1277 () Bool)

(assert (=> b!1277 (= e!808 (+ 1 (size!23 (tail!236 (Cons!52 e1!2 (rear!49 queue!56))))))))

(assert (= (and d!668 c!318) b!1276))

(assert (= (and d!668 (not c!318)) b!1277))

(declare-fun m!1419 () Bool)

(assert (=> b!1277 m!1419))

(assert (=> d!608 d!668))

(declare-fun d!670 () Bool)

(declare-fun lt!264 () Int)

(assert (=> d!670 (>= lt!264 0)))

(declare-fun e!809 () Int)

(assert (=> d!670 (= lt!264 e!809)))

(declare-fun c!319 () Bool)

(assert (=> d!670 (= c!319 (is-Nil!53 (front!47 queue!56)))))

(assert (=> d!670 (= (size!23 (front!47 queue!56)) lt!264)))

(declare-fun b!1278 () Bool)

(assert (=> b!1278 (= e!809 0)))

(declare-fun b!1279 () Bool)

(assert (=> b!1279 (= e!809 (+ 1 (size!23 (tail!236 (front!47 queue!56)))))))

(assert (= (and d!670 c!319) b!1278))

(assert (= (and d!670 (not c!319)) b!1279))

(declare-fun m!1421 () Bool)

(assert (=> b!1279 m!1421))

(assert (=> d!608 d!670))

(declare-fun d!672 () Bool)

(assert (=> d!672 (= (isAmortized!0 lt!237) (>= (size!23 (front!47 lt!237)) (size!23 (rear!49 lt!237))))))

(declare-fun bs!176 () Bool)

(assert (= bs!176 d!672))

(declare-fun m!1423 () Bool)

(assert (=> bs!176 m!1423))

(declare-fun m!1425 () Bool)

(assert (=> bs!176 m!1425))

(assert (=> d!616 d!672))

(declare-fun d!674 () Bool)

(declare-fun lt!265 () Int)

(assert (=> d!674 (>= lt!265 0)))

(declare-fun e!810 () Int)

(assert (=> d!674 (= lt!265 e!810)))

(declare-fun c!320 () Bool)

(assert (=> d!674 (= c!320 (is-Nil!53 (Cons!52 e2!3 (rear!49 q1!1))))))

(assert (=> d!674 (= (size!23 (Cons!52 e2!3 (rear!49 q1!1))) lt!265)))

(declare-fun b!1280 () Bool)

(assert (=> b!1280 (= e!810 0)))

(declare-fun b!1281 () Bool)

(assert (=> b!1281 (= e!810 (+ 1 (size!23 (tail!236 (Cons!52 e2!3 (rear!49 q1!1))))))))

(assert (= (and d!674 c!320) b!1280))

(assert (= (and d!674 (not c!320)) b!1281))

(declare-fun m!1427 () Bool)

(assert (=> b!1281 m!1427))

(assert (=> d!616 d!674))

(declare-fun d!676 () Bool)

(declare-fun lt!266 () Int)

(assert (=> d!676 (>= lt!266 0)))

(declare-fun e!811 () Int)

(assert (=> d!676 (= lt!266 e!811)))

(declare-fun c!321 () Bool)

(assert (=> d!676 (= c!321 (is-Nil!53 (front!47 q1!1)))))

(assert (=> d!676 (= (size!23 (front!47 q1!1)) lt!266)))

(declare-fun b!1282 () Bool)

(assert (=> b!1282 (= e!811 0)))

(declare-fun b!1283 () Bool)

(assert (=> b!1283 (= e!811 (+ 1 (size!23 (tail!236 (front!47 q1!1)))))))

(assert (= (and d!676 c!321) b!1282))

(assert (= (and d!676 (not c!321)) b!1283))

(declare-fun m!1429 () Bool)

(assert (=> b!1283 m!1429))

(assert (=> d!616 d!676))

(declare-fun d!678 () Bool)

(declare-fun e!813 () Bool)

(assert (=> d!678 e!813))

(declare-fun res!753 () Bool)

(assert (=> d!678 (=> (not res!753) (not e!813))))

(declare-fun lt!267 () List!52)

(assert (=> d!678 (= res!753 (= (size!23 lt!267) (+ (size!23 (tail!236 (front!47 q3!1))) (size!23 (reverse!5 (rear!49 q3!1))))))))

(declare-fun e!812 () List!52)

(assert (=> d!678 (= lt!267 e!812)))

(declare-fun c!322 () Bool)

(assert (=> d!678 (= c!322 (is-Nil!53 (tail!236 (front!47 q3!1))))))

(assert (=> d!678 (= (concat!2 (tail!236 (front!47 q3!1)) (reverse!5 (rear!49 q3!1))) lt!267)))

(declare-fun b!1284 () Bool)

(assert (=> b!1284 (= e!812 (reverse!5 (rear!49 q3!1)))))

(declare-fun b!1285 () Bool)

(assert (=> b!1285 (= e!812 (Cons!52 (head!224 (tail!236 (front!47 q3!1))) (concat!2 (tail!236 (tail!236 (front!47 q3!1))) (reverse!5 (rear!49 q3!1)))))))

(declare-fun b!1286 () Bool)

(assert (=> b!1286 (= e!813 (= (content!22 lt!267) (union (content!22 (tail!236 (front!47 q3!1))) (content!22 (reverse!5 (rear!49 q3!1))))))))

(assert (= (and d!678 c!322) b!1284))

(assert (= (and d!678 (not c!322)) b!1285))

(assert (= (and d!678 res!753) b!1286))

(declare-fun m!1431 () Bool)

(assert (=> d!678 m!1431))

(assert (=> d!678 m!1351))

(assert (=> d!678 m!1353))

(declare-fun m!1433 () Bool)

(assert (=> d!678 m!1433))

(assert (=> b!1285 m!1353))

(declare-fun m!1435 () Bool)

(assert (=> b!1285 m!1435))

(declare-fun m!1437 () Bool)

(assert (=> b!1286 m!1437))

(declare-fun m!1439 () Bool)

(assert (=> b!1286 m!1439))

(assert (=> b!1286 m!1353))

(declare-fun m!1441 () Bool)

(assert (=> b!1286 m!1441))

(assert (=> b!1232 d!678))

(declare-fun d!680 () Bool)

(declare-fun lt!268 () List!52)

(assert (=> d!680 (= (content!22 lt!268) (content!22 (rear!49 q3!1)))))

(declare-fun e!814 () List!52)

(assert (=> d!680 (= lt!268 e!814)))

(declare-fun c!323 () Bool)

(assert (=> d!680 (= c!323 (is-Nil!53 (rear!49 q3!1)))))

(assert (=> d!680 (= (reverse!5 (rear!49 q3!1)) lt!268)))

(declare-fun b!1287 () Bool)

(assert (=> b!1287 (= e!814 Nil!53)))

(declare-fun b!1288 () Bool)

(assert (=> b!1288 (= e!814 (concat!2 (reverse!5 (tail!236 (rear!49 q3!1))) (Cons!52 (head!224 (rear!49 q3!1)) Nil!53)))))

(assert (= (and d!680 c!323) b!1287))

(assert (= (and d!680 (not c!323)) b!1288))

(declare-fun m!1443 () Bool)

(assert (=> d!680 m!1443))

(declare-fun m!1445 () Bool)

(assert (=> d!680 m!1445))

(declare-fun m!1447 () Bool)

(assert (=> b!1288 m!1447))

(assert (=> b!1288 m!1447))

(declare-fun m!1449 () Bool)

(assert (=> b!1288 m!1449))

(assert (=> b!1232 d!680))

(declare-fun d!682 () Bool)

(declare-fun e!816 () Bool)

(assert (=> d!682 e!816))

(declare-fun res!754 () Bool)

(assert (=> d!682 (=> (not res!754) (not e!816))))

(declare-fun lt!269 () List!52)

(assert (=> d!682 (= res!754 (= (size!23 lt!269) (+ (size!23 (front!47 queue!56)) (size!23 (reverse!5 (Cons!52 e1!2 (rear!49 queue!56)))))))))

(declare-fun e!815 () List!52)

(assert (=> d!682 (= lt!269 e!815)))

(declare-fun c!324 () Bool)

(assert (=> d!682 (= c!324 (is-Nil!53 (front!47 queue!56)))))

(assert (=> d!682 (= (concat!2 (front!47 queue!56) (reverse!5 (Cons!52 e1!2 (rear!49 queue!56)))) lt!269)))

(declare-fun b!1289 () Bool)

(assert (=> b!1289 (= e!815 (reverse!5 (Cons!52 e1!2 (rear!49 queue!56))))))

(declare-fun b!1290 () Bool)

(assert (=> b!1290 (= e!815 (Cons!52 (head!224 (front!47 queue!56)) (concat!2 (tail!236 (front!47 queue!56)) (reverse!5 (Cons!52 e1!2 (rear!49 queue!56))))))))

(declare-fun b!1291 () Bool)

(assert (=> b!1291 (= e!816 (= (content!22 lt!269) (union (content!22 (front!47 queue!56)) (content!22 (reverse!5 (Cons!52 e1!2 (rear!49 queue!56)))))))))

(assert (= (and d!682 c!324) b!1289))

(assert (= (and d!682 (not c!324)) b!1290))

(assert (= (and d!682 res!754) b!1291))

(declare-fun m!1451 () Bool)

(assert (=> d!682 m!1451))

(assert (=> d!682 m!1305))

(assert (=> d!682 m!1307))

(declare-fun m!1453 () Bool)

(assert (=> d!682 m!1453))

(assert (=> b!1290 m!1307))

(declare-fun m!1455 () Bool)

(assert (=> b!1290 m!1455))

(declare-fun m!1457 () Bool)

(assert (=> b!1291 m!1457))

(declare-fun m!1459 () Bool)

(assert (=> b!1291 m!1459))

(assert (=> b!1291 m!1307))

(declare-fun m!1461 () Bool)

(assert (=> b!1291 m!1461))

(assert (=> b!1218 d!682))

(declare-fun d!684 () Bool)

(declare-fun lt!270 () List!52)

(assert (=> d!684 (= (content!22 lt!270) (content!22 (Cons!52 e1!2 (rear!49 queue!56))))))

(declare-fun e!817 () List!52)

(assert (=> d!684 (= lt!270 e!817)))

(declare-fun c!325 () Bool)

(assert (=> d!684 (= c!325 (is-Nil!53 (Cons!52 e1!2 (rear!49 queue!56))))))

(assert (=> d!684 (= (reverse!5 (Cons!52 e1!2 (rear!49 queue!56))) lt!270)))

(declare-fun b!1292 () Bool)

(assert (=> b!1292 (= e!817 Nil!53)))

(declare-fun b!1293 () Bool)

(assert (=> b!1293 (= e!817 (concat!2 (reverse!5 (tail!236 (Cons!52 e1!2 (rear!49 queue!56)))) (Cons!52 (head!224 (Cons!52 e1!2 (rear!49 queue!56))) Nil!53)))))

(assert (= (and d!684 c!325) b!1292))

(assert (= (and d!684 (not c!325)) b!1293))

(declare-fun m!1463 () Bool)

(assert (=> d!684 m!1463))

(declare-fun m!1465 () Bool)

(assert (=> d!684 m!1465))

(declare-fun m!1467 () Bool)

(assert (=> b!1293 m!1467))

(assert (=> b!1293 m!1467))

(declare-fun m!1469 () Bool)

(assert (=> b!1293 m!1469))

(assert (=> b!1218 d!684))

(declare-fun d!686 () Bool)

(declare-fun e!819 () Bool)

(assert (=> d!686 e!819))

(declare-fun res!755 () Bool)

(assert (=> d!686 (=> (not res!755) (not e!819))))

(declare-fun lt!271 () List!52)

(assert (=> d!686 (= res!755 (= (size!23 lt!271) (+ (size!23 (front!47 q1!1)) (size!23 (reverse!5 (Cons!52 e2!3 (rear!49 q1!1)))))))))

(declare-fun e!818 () List!52)

(assert (=> d!686 (= lt!271 e!818)))

(declare-fun c!326 () Bool)

(assert (=> d!686 (= c!326 (is-Nil!53 (front!47 q1!1)))))

(assert (=> d!686 (= (concat!2 (front!47 q1!1) (reverse!5 (Cons!52 e2!3 (rear!49 q1!1)))) lt!271)))

(declare-fun b!1294 () Bool)

(assert (=> b!1294 (= e!818 (reverse!5 (Cons!52 e2!3 (rear!49 q1!1))))))

(declare-fun b!1295 () Bool)

(assert (=> b!1295 (= e!818 (Cons!52 (head!224 (front!47 q1!1)) (concat!2 (tail!236 (front!47 q1!1)) (reverse!5 (Cons!52 e2!3 (rear!49 q1!1))))))))

(declare-fun b!1296 () Bool)

(assert (=> b!1296 (= e!819 (= (content!22 lt!271) (union (content!22 (front!47 q1!1)) (content!22 (reverse!5 (Cons!52 e2!3 (rear!49 q1!1)))))))))

(assert (= (and d!686 c!326) b!1294))

(assert (= (and d!686 (not c!326)) b!1295))

(assert (= (and d!686 res!755) b!1296))

(declare-fun m!1471 () Bool)

(assert (=> d!686 m!1471))

(assert (=> d!686 m!1333))

(assert (=> d!686 m!1335))

(declare-fun m!1473 () Bool)

(assert (=> d!686 m!1473))

(assert (=> b!1295 m!1335))

(declare-fun m!1475 () Bool)

(assert (=> b!1295 m!1475))

(declare-fun m!1477 () Bool)

(assert (=> b!1296 m!1477))

(declare-fun m!1479 () Bool)

(assert (=> b!1296 m!1479))

(assert (=> b!1296 m!1335))

(declare-fun m!1481 () Bool)

(assert (=> b!1296 m!1481))

(assert (=> b!1222 d!686))

(declare-fun d!688 () Bool)

(declare-fun lt!272 () List!52)

(assert (=> d!688 (= (content!22 lt!272) (content!22 (Cons!52 e2!3 (rear!49 q1!1))))))

(declare-fun e!820 () List!52)

(assert (=> d!688 (= lt!272 e!820)))

(declare-fun c!327 () Bool)

(assert (=> d!688 (= c!327 (is-Nil!53 (Cons!52 e2!3 (rear!49 q1!1))))))

(assert (=> d!688 (= (reverse!5 (Cons!52 e2!3 (rear!49 q1!1))) lt!272)))

(declare-fun b!1297 () Bool)

(assert (=> b!1297 (= e!820 Nil!53)))

(declare-fun b!1298 () Bool)

(assert (=> b!1298 (= e!820 (concat!2 (reverse!5 (tail!236 (Cons!52 e2!3 (rear!49 q1!1)))) (Cons!52 (head!224 (Cons!52 e2!3 (rear!49 q1!1))) Nil!53)))))

(assert (= (and d!688 c!327) b!1297))

(assert (= (and d!688 (not c!327)) b!1298))

(declare-fun m!1483 () Bool)

(assert (=> d!688 m!1483))

(declare-fun m!1485 () Bool)

(assert (=> d!688 m!1485))

(declare-fun m!1487 () Bool)

(assert (=> b!1298 m!1487))

(assert (=> b!1298 m!1487))

(declare-fun m!1489 () Bool)

(assert (=> b!1298 m!1489))

(assert (=> b!1222 d!688))

(declare-fun d!690 () Bool)

(declare-fun lt!273 () Int)

(assert (=> d!690 (>= lt!273 0)))

(declare-fun e!821 () Int)

(assert (=> d!690 (= lt!273 e!821)))

(declare-fun c!328 () Bool)

(assert (=> d!690 (= c!328 (is-Nil!53 (front!47 q3!1)))))

(assert (=> d!690 (= (size!23 (front!47 q3!1)) lt!273)))

(declare-fun b!1299 () Bool)

(assert (=> b!1299 (= e!821 0)))

(declare-fun b!1300 () Bool)

(assert (=> b!1300 (= e!821 (+ 1 (size!23 (tail!236 (front!47 q3!1)))))))

(assert (= (and d!690 c!328) b!1299))

(assert (= (and d!690 (not c!328)) b!1300))

(assert (=> b!1300 m!1351))

(assert (=> d!626 d!690))

(assert (=> d!626 d!640))

(push 1)

(assert (not b!1291))

(assert (not b!1236))

(assert (not b!1300))

(assert (not b!1267))

(assert (not d!678))

(assert (not d!666))

(assert (not d!648))

(assert (not b!1252))

(assert (not b!1240))

(assert (not d!630))

(assert (not b!1283))

(assert (not b!1296))

(assert (not d!646))

(assert (not b!1273))

(assert (not d!682))

(assert (not b!1281))

(assert (not b!1279))

(assert (not b!1271))

(assert (not b!1269))

(assert (not b!1295))

(assert (not b!1259))

(assert (not b!1253))

(assert (not b!1290))

(assert (not b!1265))

(assert (not b!1285))

(assert (not b!1261))

(assert (not b!1277))

(assert (not b!1275))

(assert (not d!672))

(assert (not b!1293))

(assert (not b!1238))

(assert (not d!684))

(assert (not d!686))

(assert (not b!1298))

(assert (not b!1286))

(assert (not b!1244))

(assert (not b!1234))

(assert (not b!1263))

(assert (not d!688))

(assert (not b!1242))

(assert (not d!680))

(assert (not b!1288))

(assert (not d!638))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!692 () Bool)

(declare-fun lt!274 () Int)

(assert (=> d!692 (>= lt!274 0)))

(declare-fun e!822 () Int)

(assert (=> d!692 (= lt!274 e!822)))

(declare-fun c!329 () Bool)

(assert (=> d!692 (= c!329 (is-Nil!53 (tail!236 (front!47 q1!1))))))

(assert (=> d!692 (= (size!23 (tail!236 (front!47 q1!1))) lt!274)))

(declare-fun b!1301 () Bool)

(assert (=> b!1301 (= e!822 0)))

(declare-fun b!1302 () Bool)

(assert (=> b!1302 (= e!822 (+ 1 (size!23 (tail!236 (tail!236 (front!47 q1!1))))))))

(assert (= (and d!692 c!329) b!1301))

(assert (= (and d!692 (not c!329)) b!1302))

(declare-fun m!1491 () Bool)

(assert (=> b!1302 m!1491))

(assert (=> b!1283 d!692))

(declare-fun d!694 () Bool)

(declare-fun c!332 () Bool)

(assert (=> d!694 (= c!332 (is-Nil!53 lt!269))))

(declare-fun e!825 () (Set (_ BitVec 32)))

(assert (=> d!694 (= (content!22 lt!269) e!825)))

(declare-fun b!1307 () Bool)

(assert (=> b!1307 (= e!825 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1308 () Bool)

(assert (=> b!1308 (= e!825 (union (insert (head!224 lt!269) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!236 lt!269))))))

(assert (= (and d!694 c!332) b!1307))

(assert (= (and d!694 (not c!332)) b!1308))

(declare-fun m!1493 () Bool)

(assert (=> b!1308 m!1493))

(declare-fun m!1495 () Bool)

(assert (=> b!1308 m!1495))

(assert (=> b!1291 d!694))

(declare-fun d!696 () Bool)

(declare-fun c!333 () Bool)

(assert (=> d!696 (= c!333 (is-Nil!53 (front!47 queue!56)))))

(declare-fun e!826 () (Set (_ BitVec 32)))

(assert (=> d!696 (= (content!22 (front!47 queue!56)) e!826)))

(declare-fun b!1309 () Bool)

(assert (=> b!1309 (= e!826 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1310 () Bool)

(assert (=> b!1310 (= e!826 (union (insert (head!224 (front!47 queue!56)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!236 (front!47 queue!56)))))))

(assert (= (and d!696 c!333) b!1309))

(assert (= (and d!696 (not c!333)) b!1310))

(declare-fun m!1497 () Bool)

(assert (=> b!1310 m!1497))

(declare-fun m!1499 () Bool)

(assert (=> b!1310 m!1499))

(assert (=> b!1291 d!696))

(declare-fun d!698 () Bool)

(declare-fun c!334 () Bool)

(assert (=> d!698 (= c!334 (is-Nil!53 (reverse!5 (Cons!52 e1!2 (rear!49 queue!56)))))))

(declare-fun e!827 () (Set (_ BitVec 32)))

(assert (=> d!698 (= (content!22 (reverse!5 (Cons!52 e1!2 (rear!49 queue!56)))) e!827)))

(declare-fun b!1311 () Bool)

(assert (=> b!1311 (= e!827 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1312 () Bool)

(assert (=> b!1312 (= e!827 (union (insert (head!224 (reverse!5 (Cons!52 e1!2 (rear!49 queue!56)))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!236 (reverse!5 (Cons!52 e1!2 (rear!49 queue!56)))))))))

(assert (= (and d!698 c!334) b!1311))

(assert (= (and d!698 (not c!334)) b!1312))

(declare-fun m!1501 () Bool)

(assert (=> b!1312 m!1501))

(declare-fun m!1503 () Bool)

(assert (=> b!1312 m!1503))

(assert (=> b!1291 d!698))

(declare-fun d!700 () Bool)

(declare-fun lt!275 () Int)

(assert (=> d!700 (>= lt!275 0)))

(declare-fun e!828 () Int)

(assert (=> d!700 (= lt!275 e!828)))

(declare-fun c!335 () Bool)

(assert (=> d!700 (= c!335 (is-Nil!53 (tail!236 (rear!49 lt!232))))))

(assert (=> d!700 (= (size!23 (tail!236 (rear!49 lt!232))) lt!275)))

(declare-fun b!1313 () Bool)

(assert (=> b!1313 (= e!828 0)))

(declare-fun b!1314 () Bool)

(assert (=> b!1314 (= e!828 (+ 1 (size!23 (tail!236 (tail!236 (rear!49 lt!232))))))))

(assert (= (and d!700 c!335) b!1313))

(assert (= (and d!700 (not c!335)) b!1314))

(declare-fun m!1505 () Bool)

(assert (=> b!1314 m!1505))

(assert (=> b!1275 d!700))

(declare-fun d!702 () Bool)

(declare-fun lt!276 () Int)

(assert (=> d!702 (>= lt!276 0)))

(declare-fun e!829 () Int)

(assert (=> d!702 (= lt!276 e!829)))

(declare-fun c!336 () Bool)

(assert (=> d!702 (= c!336 (is-Nil!53 (tail!236 (tail!236 (front!47 q3!1)))))))

(assert (=> d!702 (= (size!23 (tail!236 (tail!236 (front!47 q3!1)))) lt!276)))

(declare-fun b!1315 () Bool)

(assert (=> b!1315 (= e!829 0)))

(declare-fun b!1316 () Bool)

(assert (=> b!1316 (= e!829 (+ 1 (size!23 (tail!236 (tail!236 (tail!236 (front!47 q3!1)))))))))

(assert (= (and d!702 c!336) b!1315))

(assert (= (and d!702 (not c!336)) b!1316))

(declare-fun m!1507 () Bool)

(assert (=> b!1316 m!1507))

(assert (=> b!1242 d!702))

(declare-fun d!704 () Bool)

(declare-fun e!831 () Bool)

(assert (=> d!704 e!831))

(declare-fun res!756 () Bool)

(assert (=> d!704 (=> (not res!756) (not e!831))))

(declare-fun lt!277 () List!52)

(assert (=> d!704 (= res!756 (= (size!23 lt!277) (+ (size!23 (reverse!5 (tail!236 (Cons!52 e1!2 (rear!49 queue!56))))) (size!23 (Cons!52 (head!224 (Cons!52 e1!2 (rear!49 queue!56))) Nil!53)))))))

(declare-fun e!830 () List!52)

(assert (=> d!704 (= lt!277 e!830)))

(declare-fun c!337 () Bool)

(assert (=> d!704 (= c!337 (is-Nil!53 (reverse!5 (tail!236 (Cons!52 e1!2 (rear!49 queue!56))))))))

(assert (=> d!704 (= (concat!2 (reverse!5 (tail!236 (Cons!52 e1!2 (rear!49 queue!56)))) (Cons!52 (head!224 (Cons!52 e1!2 (rear!49 queue!56))) Nil!53)) lt!277)))

(declare-fun b!1317 () Bool)

(assert (=> b!1317 (= e!830 (Cons!52 (head!224 (Cons!52 e1!2 (rear!49 queue!56))) Nil!53))))

(declare-fun b!1318 () Bool)

(assert (=> b!1318 (= e!830 (Cons!52 (head!224 (reverse!5 (tail!236 (Cons!52 e1!2 (rear!49 queue!56))))) (concat!2 (tail!236 (reverse!5 (tail!236 (Cons!52 e1!2 (rear!49 queue!56))))) (Cons!52 (head!224 (Cons!52 e1!2 (rear!49 queue!56))) Nil!53))))))

(declare-fun b!1319 () Bool)

(assert (=> b!1319 (= e!831 (= (content!22 lt!277) (union (content!22 (reverse!5 (tail!236 (Cons!52 e1!2 (rear!49 queue!56))))) (content!22 (Cons!52 (head!224 (Cons!52 e1!2 (rear!49 queue!56))) Nil!53)))))))

(assert (= (and d!704 c!337) b!1317))

(assert (= (and d!704 (not c!337)) b!1318))

(assert (= (and d!704 res!756) b!1319))

(declare-fun m!1509 () Bool)

(assert (=> d!704 m!1509))

(assert (=> d!704 m!1467))

(declare-fun m!1511 () Bool)

(assert (=> d!704 m!1511))

(declare-fun m!1513 () Bool)

(assert (=> d!704 m!1513))

(declare-fun m!1515 () Bool)

(assert (=> b!1318 m!1515))

(declare-fun m!1517 () Bool)

(assert (=> b!1319 m!1517))

(assert (=> b!1319 m!1467))

(declare-fun m!1519 () Bool)

(assert (=> b!1319 m!1519))

(declare-fun m!1521 () Bool)

(assert (=> b!1319 m!1521))

(assert (=> b!1293 d!704))

(declare-fun d!706 () Bool)

(declare-fun lt!278 () List!52)

(assert (=> d!706 (= (content!22 lt!278) (content!22 (tail!236 (Cons!52 e1!2 (rear!49 queue!56)))))))

(declare-fun e!832 () List!52)

(assert (=> d!706 (= lt!278 e!832)))

(declare-fun c!338 () Bool)

(assert (=> d!706 (= c!338 (is-Nil!53 (tail!236 (Cons!52 e1!2 (rear!49 queue!56)))))))

(assert (=> d!706 (= (reverse!5 (tail!236 (Cons!52 e1!2 (rear!49 queue!56)))) lt!278)))

(declare-fun b!1320 () Bool)

(assert (=> b!1320 (= e!832 Nil!53)))

(declare-fun b!1321 () Bool)

(assert (=> b!1321 (= e!832 (concat!2 (reverse!5 (tail!236 (tail!236 (Cons!52 e1!2 (rear!49 queue!56))))) (Cons!52 (head!224 (tail!236 (Cons!52 e1!2 (rear!49 queue!56)))) Nil!53)))))

(assert (= (and d!706 c!338) b!1320))

(assert (= (and d!706 (not c!338)) b!1321))

(declare-fun m!1523 () Bool)

(assert (=> d!706 m!1523))

(declare-fun m!1525 () Bool)

(assert (=> d!706 m!1525))

(declare-fun m!1527 () Bool)

(assert (=> b!1321 m!1527))

(assert (=> b!1321 m!1527))

(declare-fun m!1529 () Bool)

(assert (=> b!1321 m!1529))

(assert (=> b!1293 d!706))

(declare-fun d!708 () Bool)

(declare-fun lt!279 () Int)

(assert (=> d!708 (>= lt!279 0)))

(declare-fun e!833 () Int)

(assert (=> d!708 (= lt!279 e!833)))

(declare-fun c!339 () Bool)

(assert (=> d!708 (= c!339 (is-Nil!53 (tail!236 (front!47 queue!56))))))

(assert (=> d!708 (= (size!23 (tail!236 (front!47 queue!56))) lt!279)))

(declare-fun b!1322 () Bool)

(assert (=> b!1322 (= e!833 0)))

(declare-fun b!1323 () Bool)

(assert (=> b!1323 (= e!833 (+ 1 (size!23 (tail!236 (tail!236 (front!47 queue!56))))))))

(assert (= (and d!708 c!339) b!1322))

(assert (= (and d!708 (not c!339)) b!1323))

(declare-fun m!1531 () Bool)

(assert (=> b!1323 m!1531))

(assert (=> b!1279 d!708))

(declare-fun d!710 () Bool)

(declare-fun c!340 () Bool)

(assert (=> d!710 (= c!340 (is-Nil!53 lt!272))))

(declare-fun e!834 () (Set (_ BitVec 32)))

(assert (=> d!710 (= (content!22 lt!272) e!834)))

(declare-fun b!1324 () Bool)

(assert (=> b!1324 (= e!834 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1325 () Bool)

(assert (=> b!1325 (= e!834 (union (insert (head!224 lt!272) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!236 lt!272))))))

(assert (= (and d!710 c!340) b!1324))

(assert (= (and d!710 (not c!340)) b!1325))

(declare-fun m!1533 () Bool)

(assert (=> b!1325 m!1533))

(declare-fun m!1535 () Bool)

(assert (=> b!1325 m!1535))

(assert (=> d!688 d!710))

(declare-fun d!712 () Bool)

(declare-fun c!341 () Bool)

(assert (=> d!712 (= c!341 (is-Nil!53 (Cons!52 e2!3 (rear!49 q1!1))))))

(declare-fun e!835 () (Set (_ BitVec 32)))

(assert (=> d!712 (= (content!22 (Cons!52 e2!3 (rear!49 q1!1))) e!835)))

(declare-fun b!1326 () Bool)

(assert (=> b!1326 (= e!835 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1327 () Bool)

(assert (=> b!1327 (= e!835 (union (insert (head!224 (Cons!52 e2!3 (rear!49 q1!1))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!236 (Cons!52 e2!3 (rear!49 q1!1))))))))

(assert (= (and d!712 c!341) b!1326))

(assert (= (and d!712 (not c!341)) b!1327))

(declare-fun m!1537 () Bool)

(assert (=> b!1327 m!1537))

(declare-fun m!1539 () Bool)

(assert (=> b!1327 m!1539))

(assert (=> d!688 d!712))

(declare-fun d!714 () Bool)

(declare-fun lt!280 () Int)

(assert (=> d!714 (>= lt!280 0)))

(declare-fun e!836 () Int)

(assert (=> d!714 (= lt!280 e!836)))

(declare-fun c!342 () Bool)

(assert (=> d!714 (= c!342 (is-Nil!53 (tail!236 (front!47 q2!1))))))

(assert (=> d!714 (= (size!23 (tail!236 (front!47 q2!1))) lt!280)))

(declare-fun b!1328 () Bool)

(assert (=> b!1328 (= e!836 0)))

(declare-fun b!1329 () Bool)

(assert (=> b!1329 (= e!836 (+ 1 (size!23 (tail!236 (tail!236 (front!47 q2!1))))))))

(assert (= (and d!714 c!342) b!1328))

(assert (= (and d!714 (not c!342)) b!1329))

(declare-fun m!1541 () Bool)

(assert (=> b!1329 m!1541))

(assert (=> b!1236 d!714))

(declare-fun d!716 () Bool)

(declare-fun c!343 () Bool)

(assert (=> d!716 (= c!343 (is-Nil!53 lt!267))))

(declare-fun e!837 () (Set (_ BitVec 32)))

(assert (=> d!716 (= (content!22 lt!267) e!837)))

(declare-fun b!1330 () Bool)

(assert (=> b!1330 (= e!837 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1331 () Bool)

(assert (=> b!1331 (= e!837 (union (insert (head!224 lt!267) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!236 lt!267))))))

(assert (= (and d!716 c!343) b!1330))

(assert (= (and d!716 (not c!343)) b!1331))

(declare-fun m!1543 () Bool)

(assert (=> b!1331 m!1543))

(declare-fun m!1545 () Bool)

(assert (=> b!1331 m!1545))

(assert (=> b!1286 d!716))

(declare-fun d!718 () Bool)

(declare-fun c!344 () Bool)

(assert (=> d!718 (= c!344 (is-Nil!53 (tail!236 (front!47 q3!1))))))

(declare-fun e!838 () (Set (_ BitVec 32)))

(assert (=> d!718 (= (content!22 (tail!236 (front!47 q3!1))) e!838)))

(declare-fun b!1332 () Bool)

(assert (=> b!1332 (= e!838 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1333 () Bool)

(assert (=> b!1333 (= e!838 (union (insert (head!224 (tail!236 (front!47 q3!1))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!236 (tail!236 (front!47 q3!1))))))))

(assert (= (and d!718 c!344) b!1332))

(assert (= (and d!718 (not c!344)) b!1333))

(declare-fun m!1547 () Bool)

(assert (=> b!1333 m!1547))

(declare-fun m!1549 () Bool)

(assert (=> b!1333 m!1549))

(assert (=> b!1286 d!718))

(declare-fun d!720 () Bool)

(declare-fun c!345 () Bool)

(assert (=> d!720 (= c!345 (is-Nil!53 (reverse!5 (rear!49 q3!1))))))

(declare-fun e!839 () (Set (_ BitVec 32)))

(assert (=> d!720 (= (content!22 (reverse!5 (rear!49 q3!1))) e!839)))

(declare-fun b!1334 () Bool)

(assert (=> b!1334 (= e!839 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1335 () Bool)

(assert (=> b!1335 (= e!839 (union (insert (head!224 (reverse!5 (rear!49 q3!1))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!236 (reverse!5 (rear!49 q3!1))))))))

(assert (= (and d!720 c!345) b!1334))

(assert (= (and d!720 (not c!345)) b!1335))

(declare-fun m!1551 () Bool)

(assert (=> b!1335 m!1551))

(declare-fun m!1553 () Bool)

(assert (=> b!1335 m!1553))

(assert (=> b!1286 d!720))

(declare-fun d!722 () Bool)

(declare-fun lt!281 () Int)

(assert (=> d!722 (>= lt!281 0)))

(declare-fun e!840 () Int)

(assert (=> d!722 (= lt!281 e!840)))

(declare-fun c!346 () Bool)

(assert (=> d!722 (= c!346 (is-Nil!53 (tail!236 (rear!49 lt!229))))))

(assert (=> d!722 (= (size!23 (tail!236 (rear!49 lt!229))) lt!281)))

(declare-fun b!1336 () Bool)

(assert (=> b!1336 (= e!840 0)))

(declare-fun b!1337 () Bool)

(assert (=> b!1337 (= e!840 (+ 1 (size!23 (tail!236 (tail!236 (rear!49 lt!229))))))))

(assert (= (and d!722 c!346) b!1336))

(assert (= (and d!722 (not c!346)) b!1337))

(declare-fun m!1555 () Bool)

(assert (=> b!1337 m!1555))

(assert (=> b!1267 d!722))

(declare-fun d!724 () Bool)

(declare-fun lt!282 () Int)

(assert (=> d!724 (>= lt!282 0)))

(declare-fun e!841 () Int)

(assert (=> d!724 (= lt!282 e!841)))

(declare-fun c!347 () Bool)

(assert (=> d!724 (= c!347 (is-Nil!53 lt!267))))

(assert (=> d!724 (= (size!23 lt!267) lt!282)))

(declare-fun b!1338 () Bool)

(assert (=> b!1338 (= e!841 0)))

(declare-fun b!1339 () Bool)

(assert (=> b!1339 (= e!841 (+ 1 (size!23 (tail!236 lt!267))))))

(assert (= (and d!724 c!347) b!1338))

(assert (= (and d!724 (not c!347)) b!1339))

(declare-fun m!1557 () Bool)

(assert (=> b!1339 m!1557))

(assert (=> d!678 d!724))

(assert (=> d!678 d!642))

(declare-fun d!726 () Bool)

(declare-fun lt!283 () Int)

(assert (=> d!726 (>= lt!283 0)))

(declare-fun e!842 () Int)

(assert (=> d!726 (= lt!283 e!842)))

(declare-fun c!348 () Bool)

(assert (=> d!726 (= c!348 (is-Nil!53 (reverse!5 (rear!49 q3!1))))))

(assert (=> d!726 (= (size!23 (reverse!5 (rear!49 q3!1))) lt!283)))

(declare-fun b!1340 () Bool)

(assert (=> b!1340 (= e!842 0)))

(declare-fun b!1341 () Bool)

(assert (=> b!1341 (= e!842 (+ 1 (size!23 (tail!236 (reverse!5 (rear!49 q3!1))))))))

(assert (= (and d!726 c!348) b!1340))

(assert (= (and d!726 (not c!348)) b!1341))

(declare-fun m!1559 () Bool)

(assert (=> b!1341 m!1559))

(assert (=> d!678 d!726))

(declare-fun d!728 () Bool)

(declare-fun e!844 () Bool)

(assert (=> d!728 e!844))

(declare-fun res!757 () Bool)

(assert (=> d!728 (=> (not res!757) (not e!844))))

(declare-fun lt!284 () List!52)

(assert (=> d!728 (= res!757 (= (size!23 lt!284) (+ (size!23 (tail!236 (front!47 q1!1))) (size!23 (reverse!5 (Cons!52 e2!3 (rear!49 q1!1)))))))))

(declare-fun e!843 () List!52)

(assert (=> d!728 (= lt!284 e!843)))

(declare-fun c!349 () Bool)

(assert (=> d!728 (= c!349 (is-Nil!53 (tail!236 (front!47 q1!1))))))

(assert (=> d!728 (= (concat!2 (tail!236 (front!47 q1!1)) (reverse!5 (Cons!52 e2!3 (rear!49 q1!1)))) lt!284)))

(declare-fun b!1342 () Bool)

(assert (=> b!1342 (= e!843 (reverse!5 (Cons!52 e2!3 (rear!49 q1!1))))))

(declare-fun b!1343 () Bool)

(assert (=> b!1343 (= e!843 (Cons!52 (head!224 (tail!236 (front!47 q1!1))) (concat!2 (tail!236 (tail!236 (front!47 q1!1))) (reverse!5 (Cons!52 e2!3 (rear!49 q1!1))))))))

(declare-fun b!1344 () Bool)

(assert (=> b!1344 (= e!844 (= (content!22 lt!284) (union (content!22 (tail!236 (front!47 q1!1))) (content!22 (reverse!5 (Cons!52 e2!3 (rear!49 q1!1)))))))))

(assert (= (and d!728 c!349) b!1342))

(assert (= (and d!728 (not c!349)) b!1343))

(assert (= (and d!728 res!757) b!1344))

(declare-fun m!1561 () Bool)

(assert (=> d!728 m!1561))

(assert (=> d!728 m!1429))

(assert (=> d!728 m!1335))

(assert (=> d!728 m!1473))

(assert (=> b!1343 m!1335))

(declare-fun m!1563 () Bool)

(assert (=> b!1343 m!1563))

(declare-fun m!1565 () Bool)

(assert (=> b!1344 m!1565))

(declare-fun m!1567 () Bool)

(assert (=> b!1344 m!1567))

(assert (=> b!1344 m!1335))

(assert (=> b!1344 m!1481))

(assert (=> b!1295 d!728))

(declare-fun d!730 () Bool)

(declare-fun e!846 () Bool)

(assert (=> d!730 e!846))

(declare-fun res!758 () Bool)

(assert (=> d!730 (=> (not res!758) (not e!846))))

(declare-fun lt!285 () List!52)

(assert (=> d!730 (= res!758 (= (size!23 lt!285) (+ (size!23 (tail!236 (front!47 q2!1))) (size!23 (reverse!5 (Cons!52 e3!1 (rear!49 q2!1)))))))))

(declare-fun e!845 () List!52)

(assert (=> d!730 (= lt!285 e!845)))

(declare-fun c!350 () Bool)

(assert (=> d!730 (= c!350 (is-Nil!53 (tail!236 (front!47 q2!1))))))

(assert (=> d!730 (= (concat!2 (tail!236 (front!47 q2!1)) (reverse!5 (Cons!52 e3!1 (rear!49 q2!1)))) lt!285)))

(declare-fun b!1345 () Bool)

(assert (=> b!1345 (= e!845 (reverse!5 (Cons!52 e3!1 (rear!49 q2!1))))))

(declare-fun b!1346 () Bool)

(assert (=> b!1346 (= e!845 (Cons!52 (head!224 (tail!236 (front!47 q2!1))) (concat!2 (tail!236 (tail!236 (front!47 q2!1))) (reverse!5 (Cons!52 e3!1 (rear!49 q2!1))))))))

(declare-fun b!1347 () Bool)

(assert (=> b!1347 (= e!846 (= (content!22 lt!285) (union (content!22 (tail!236 (front!47 q2!1))) (content!22 (reverse!5 (Cons!52 e3!1 (rear!49 q2!1)))))))))

(assert (= (and d!730 c!350) b!1345))

(assert (= (and d!730 (not c!350)) b!1346))

(assert (= (and d!730 res!758) b!1347))

(declare-fun m!1569 () Bool)

(assert (=> d!730 m!1569))

(assert (=> d!730 m!1365))

(assert (=> d!730 m!1321))

(assert (=> d!730 m!1381))

(assert (=> b!1346 m!1321))

(declare-fun m!1571 () Bool)

(assert (=> b!1346 m!1571))

(declare-fun m!1573 () Bool)

(assert (=> b!1347 m!1573))

(declare-fun m!1575 () Bool)

(assert (=> b!1347 m!1575))

(assert (=> b!1347 m!1321))

(assert (=> b!1347 m!1389))

(assert (=> b!1252 d!730))

(declare-fun d!732 () Bool)

(declare-fun lt!286 () Int)

(assert (=> d!732 (>= lt!286 0)))

(declare-fun e!847 () Int)

(assert (=> d!732 (= lt!286 e!847)))

(declare-fun c!351 () Bool)

(assert (=> d!732 (= c!351 (is-Nil!53 (tail!236 (Cons!52 e2!3 (rear!49 q1!1)))))))

(assert (=> d!732 (= (size!23 (tail!236 (Cons!52 e2!3 (rear!49 q1!1)))) lt!286)))

(declare-fun b!1348 () Bool)

(assert (=> b!1348 (= e!847 0)))

(declare-fun b!1349 () Bool)

(assert (=> b!1349 (= e!847 (+ 1 (size!23 (tail!236 (tail!236 (Cons!52 e2!3 (rear!49 q1!1)))))))))

(assert (= (and d!732 c!351) b!1348))

(assert (= (and d!732 (not c!351)) b!1349))

(declare-fun m!1577 () Bool)

(assert (=> b!1349 m!1577))

(assert (=> b!1281 d!732))

(declare-fun d!734 () Bool)

(declare-fun lt!287 () Int)

(assert (=> d!734 (>= lt!287 0)))

(declare-fun e!848 () Int)

(assert (=> d!734 (= lt!287 e!848)))

(declare-fun c!352 () Bool)

(assert (=> d!734 (= c!352 (is-Nil!53 (tail!236 (tail!236 (front!47 queue!69)))))))

(assert (=> d!734 (= (size!23 (tail!236 (tail!236 (front!47 queue!69)))) lt!287)))

(declare-fun b!1350 () Bool)

(assert (=> b!1350 (= e!848 0)))

(declare-fun b!1351 () Bool)

(assert (=> b!1351 (= e!848 (+ 1 (size!23 (tail!236 (tail!236 (tail!236 (front!47 queue!69)))))))))

(assert (= (and d!734 c!352) b!1350))

(assert (= (and d!734 (not c!352)) b!1351))

(declare-fun m!1579 () Bool)

(assert (=> b!1351 m!1579))

(assert (=> b!1238 d!734))

(declare-fun d!736 () Bool)

(declare-fun lt!288 () Int)

(assert (=> d!736 (>= lt!288 0)))

(declare-fun e!849 () Int)

(assert (=> d!736 (= lt!288 e!849)))

(declare-fun c!353 () Bool)

(assert (=> d!736 (= c!353 (is-Nil!53 (tail!236 (Cons!52 e1!2 (rear!49 queue!56)))))))

(assert (=> d!736 (= (size!23 (tail!236 (Cons!52 e1!2 (rear!49 queue!56)))) lt!288)))

(declare-fun b!1352 () Bool)

(assert (=> b!1352 (= e!849 0)))

(declare-fun b!1353 () Bool)

(assert (=> b!1353 (= e!849 (+ 1 (size!23 (tail!236 (tail!236 (Cons!52 e1!2 (rear!49 queue!56)))))))))

(assert (= (and d!736 c!353) b!1352))

(assert (= (and d!736 (not c!353)) b!1353))

(declare-fun m!1581 () Bool)

(assert (=> b!1353 m!1581))

(assert (=> b!1277 d!736))

(declare-fun d!738 () Bool)

(declare-fun lt!289 () Int)

(assert (=> d!738 (>= lt!289 0)))

(declare-fun e!850 () Int)

(assert (=> d!738 (= lt!289 e!850)))

(declare-fun c!354 () Bool)

(assert (=> d!738 (= c!354 (is-Nil!53 (tail!236 (rear!49 q3!1))))))

(assert (=> d!738 (= (size!23 (tail!236 (rear!49 q3!1))) lt!289)))

(declare-fun b!1354 () Bool)

(assert (=> b!1354 (= e!850 0)))

(declare-fun b!1355 () Bool)

(assert (=> b!1355 (= e!850 (+ 1 (size!23 (tail!236 (tail!236 (rear!49 q3!1))))))))

(assert (= (and d!738 c!354) b!1354))

(assert (= (and d!738 (not c!354)) b!1355))

(declare-fun m!1583 () Bool)

(assert (=> b!1355 m!1583))

(assert (=> b!1240 d!738))

(declare-fun d!740 () Bool)

(declare-fun lt!290 () Int)

(assert (=> d!740 (>= lt!290 0)))

(declare-fun e!851 () Int)

(assert (=> d!740 (= lt!290 e!851)))

(declare-fun c!355 () Bool)

(assert (=> d!740 (= c!355 (is-Nil!53 (front!47 lt!242)))))

(assert (=> d!740 (= (size!23 (front!47 lt!242)) lt!290)))

(declare-fun b!1356 () Bool)

(assert (=> b!1356 (= e!851 0)))

(declare-fun b!1357 () Bool)

(assert (=> b!1357 (= e!851 (+ 1 (size!23 (tail!236 (front!47 lt!242)))))))

(assert (= (and d!740 c!355) b!1356))

(assert (= (and d!740 (not c!355)) b!1357))

(declare-fun m!1585 () Bool)

(assert (=> b!1357 m!1585))

(assert (=> d!638 d!740))

(declare-fun d!742 () Bool)

(declare-fun lt!291 () Int)

(assert (=> d!742 (>= lt!291 0)))

(declare-fun e!852 () Int)

(assert (=> d!742 (= lt!291 e!852)))

(declare-fun c!356 () Bool)

(assert (=> d!742 (= c!356 (is-Nil!53 (rear!49 lt!242)))))

(assert (=> d!742 (= (size!23 (rear!49 lt!242)) lt!291)))

(declare-fun b!1358 () Bool)

(assert (=> b!1358 (= e!852 0)))

(declare-fun b!1359 () Bool)

(assert (=> b!1359 (= e!852 (+ 1 (size!23 (tail!236 (rear!49 lt!242)))))))

(assert (= (and d!742 c!356) b!1358))

(assert (= (and d!742 (not c!356)) b!1359))

(declare-fun m!1587 () Bool)

(assert (=> b!1359 m!1587))

(assert (=> d!638 d!742))

(declare-fun d!744 () Bool)

(declare-fun lt!292 () Int)

(assert (=> d!744 (>= lt!292 0)))

(declare-fun e!853 () Int)

(assert (=> d!744 (= lt!292 e!853)))

(declare-fun c!357 () Bool)

(assert (=> d!744 (= c!357 (is-Nil!53 (front!47 lt!236)))))

(assert (=> d!744 (= (size!23 (front!47 lt!236)) lt!292)))

(declare-fun b!1360 () Bool)

(assert (=> b!1360 (= e!853 0)))

(declare-fun b!1361 () Bool)

(assert (=> b!1361 (= e!853 (+ 1 (size!23 (tail!236 (front!47 lt!236)))))))

(assert (= (and d!744 c!357) b!1360))

(assert (= (and d!744 (not c!357)) b!1361))

(declare-fun m!1589 () Bool)

(assert (=> b!1361 m!1589))

(assert (=> d!630 d!744))

(declare-fun d!746 () Bool)

(declare-fun lt!293 () Int)

(assert (=> d!746 (>= lt!293 0)))

(declare-fun e!854 () Int)

(assert (=> d!746 (= lt!293 e!854)))

(declare-fun c!358 () Bool)

(assert (=> d!746 (= c!358 (is-Nil!53 (rear!49 lt!236)))))

(assert (=> d!746 (= (size!23 (rear!49 lt!236)) lt!293)))

(declare-fun b!1362 () Bool)

(assert (=> b!1362 (= e!854 0)))

(declare-fun b!1363 () Bool)

(assert (=> b!1363 (= e!854 (+ 1 (size!23 (tail!236 (rear!49 lt!236)))))))

(assert (= (and d!746 c!358) b!1362))

(assert (= (and d!746 (not c!358)) b!1363))

(declare-fun m!1591 () Bool)

(assert (=> b!1363 m!1591))

(assert (=> d!630 d!746))

(declare-fun d!748 () Bool)

(declare-fun lt!294 () Int)

(assert (=> d!748 (>= lt!294 0)))

(declare-fun e!855 () Int)

(assert (=> d!748 (= lt!294 e!855)))

(declare-fun c!359 () Bool)

(assert (=> d!748 (= c!359 (is-Nil!53 lt!251))))

(assert (=> d!748 (= (size!23 lt!251) lt!294)))

(declare-fun b!1364 () Bool)

(assert (=> b!1364 (= e!855 0)))

(declare-fun b!1365 () Bool)

(assert (=> b!1365 (= e!855 (+ 1 (size!23 (tail!236 lt!251))))))

(assert (= (and d!748 c!359) b!1364))

(assert (= (and d!748 (not c!359)) b!1365))

(declare-fun m!1593 () Bool)

(assert (=> b!1365 m!1593))

(assert (=> d!646 d!748))

(assert (=> d!646 d!634))

(declare-fun d!750 () Bool)

(declare-fun lt!295 () Int)

(assert (=> d!750 (>= lt!295 0)))

(declare-fun e!856 () Int)

(assert (=> d!750 (= lt!295 e!856)))

(declare-fun c!360 () Bool)

(assert (=> d!750 (= c!360 (is-Nil!53 (reverse!5 (Cons!52 e3!1 (rear!49 q2!1)))))))

(assert (=> d!750 (= (size!23 (reverse!5 (Cons!52 e3!1 (rear!49 q2!1)))) lt!295)))

(declare-fun b!1366 () Bool)

(assert (=> b!1366 (= e!856 0)))

(declare-fun b!1367 () Bool)

(assert (=> b!1367 (= e!856 (+ 1 (size!23 (tail!236 (reverse!5 (Cons!52 e3!1 (rear!49 q2!1)))))))))

(assert (= (and d!750 c!360) b!1366))

(assert (= (and d!750 (not c!360)) b!1367))

(declare-fun m!1595 () Bool)

(assert (=> b!1367 m!1595))

(assert (=> d!646 d!750))

(assert (=> b!1300 d!642))

(declare-fun d!752 () Bool)

(declare-fun lt!296 () Int)

(assert (=> d!752 (>= lt!296 0)))

(declare-fun e!857 () Int)

(assert (=> d!752 (= lt!296 e!857)))

(declare-fun c!361 () Bool)

(assert (=> d!752 (= c!361 (is-Nil!53 (front!47 lt!235)))))

(assert (=> d!752 (= (size!23 (front!47 lt!235)) lt!296)))

(declare-fun b!1368 () Bool)

(assert (=> b!1368 (= e!857 0)))

(declare-fun b!1369 () Bool)

(assert (=> b!1369 (= e!857 (+ 1 (size!23 (tail!236 (front!47 lt!235)))))))

(assert (= (and d!752 c!361) b!1368))

(assert (= (and d!752 (not c!361)) b!1369))

(declare-fun m!1597 () Bool)

(assert (=> b!1369 m!1597))

(assert (=> d!666 d!752))

(declare-fun d!754 () Bool)

(declare-fun lt!297 () Int)

(assert (=> d!754 (>= lt!297 0)))

(declare-fun e!858 () Int)

(assert (=> d!754 (= lt!297 e!858)))

(declare-fun c!362 () Bool)

(assert (=> d!754 (= c!362 (is-Nil!53 (rear!49 lt!235)))))

(assert (=> d!754 (= (size!23 (rear!49 lt!235)) lt!297)))

(declare-fun b!1370 () Bool)

(assert (=> b!1370 (= e!858 0)))

(declare-fun b!1371 () Bool)

(assert (=> b!1371 (= e!858 (+ 1 (size!23 (tail!236 (rear!49 lt!235)))))))

(assert (= (and d!754 c!362) b!1370))

(assert (= (and d!754 (not c!362)) b!1371))

(declare-fun m!1599 () Bool)

(assert (=> b!1371 m!1599))

(assert (=> d!666 d!754))

(declare-fun d!756 () Bool)

(declare-fun lt!298 () Int)

(assert (=> d!756 (>= lt!298 0)))

(declare-fun e!859 () Int)

(assert (=> d!756 (= lt!298 e!859)))

(declare-fun c!363 () Bool)

(assert (=> d!756 (= c!363 (is-Nil!53 (front!47 lt!237)))))

(assert (=> d!756 (= (size!23 (front!47 lt!237)) lt!298)))

(declare-fun b!1372 () Bool)

(assert (=> b!1372 (= e!859 0)))

(declare-fun b!1373 () Bool)

(assert (=> b!1373 (= e!859 (+ 1 (size!23 (tail!236 (front!47 lt!237)))))))

(assert (= (and d!756 c!363) b!1372))

(assert (= (and d!756 (not c!363)) b!1373))

(declare-fun m!1601 () Bool)

(assert (=> b!1373 m!1601))

(assert (=> d!672 d!756))

(declare-fun d!758 () Bool)

(declare-fun lt!299 () Int)

(assert (=> d!758 (>= lt!299 0)))

(declare-fun e!860 () Int)

(assert (=> d!758 (= lt!299 e!860)))

(declare-fun c!364 () Bool)

(assert (=> d!758 (= c!364 (is-Nil!53 (rear!49 lt!237)))))

(assert (=> d!758 (= (size!23 (rear!49 lt!237)) lt!299)))

(declare-fun b!1374 () Bool)

(assert (=> b!1374 (= e!860 0)))

(declare-fun b!1375 () Bool)

(assert (=> b!1375 (= e!860 (+ 1 (size!23 (tail!236 (rear!49 lt!237)))))))

(assert (= (and d!758 c!364) b!1374))

(assert (= (and d!758 (not c!364)) b!1375))

(declare-fun m!1603 () Bool)

(assert (=> b!1375 m!1603))

(assert (=> d!672 d!758))

(declare-fun d!760 () Bool)

(declare-fun lt!300 () Int)

(assert (=> d!760 (>= lt!300 0)))

(declare-fun e!861 () Int)

(assert (=> d!760 (= lt!300 e!861)))

(declare-fun c!365 () Bool)

(assert (=> d!760 (= c!365 (is-Nil!53 lt!269))))

(assert (=> d!760 (= (size!23 lt!269) lt!300)))

(declare-fun b!1376 () Bool)

(assert (=> b!1376 (= e!861 0)))

(declare-fun b!1377 () Bool)

(assert (=> b!1377 (= e!861 (+ 1 (size!23 (tail!236 lt!269))))))

(assert (= (and d!760 c!365) b!1376))

(assert (= (and d!760 (not c!365)) b!1377))

(declare-fun m!1605 () Bool)

(assert (=> b!1377 m!1605))

(assert (=> d!682 d!760))

(assert (=> d!682 d!670))

(declare-fun d!762 () Bool)

(declare-fun lt!301 () Int)

(assert (=> d!762 (>= lt!301 0)))

(declare-fun e!862 () Int)

(assert (=> d!762 (= lt!301 e!862)))

(declare-fun c!366 () Bool)

(assert (=> d!762 (= c!366 (is-Nil!53 (reverse!5 (Cons!52 e1!2 (rear!49 queue!56)))))))

(assert (=> d!762 (= (size!23 (reverse!5 (Cons!52 e1!2 (rear!49 queue!56)))) lt!301)))

(declare-fun b!1378 () Bool)

(assert (=> b!1378 (= e!862 0)))

(declare-fun b!1379 () Bool)

(assert (=> b!1379 (= e!862 (+ 1 (size!23 (tail!236 (reverse!5 (Cons!52 e1!2 (rear!49 queue!56)))))))))

(assert (= (and d!762 c!366) b!1378))

(assert (= (and d!762 (not c!366)) b!1379))

(declare-fun m!1607 () Bool)

(assert (=> b!1379 m!1607))

(assert (=> d!682 d!762))

(declare-fun d!764 () Bool)

(declare-fun e!864 () Bool)

(assert (=> d!764 e!864))

(declare-fun res!759 () Bool)

(assert (=> d!764 (=> (not res!759) (not e!864))))

(declare-fun lt!302 () List!52)

(assert (=> d!764 (= res!759 (= (size!23 lt!302) (+ (size!23 (reverse!5 (tail!236 (Cons!52 e3!1 (rear!49 q2!1))))) (size!23 (Cons!52 (head!224 (Cons!52 e3!1 (rear!49 q2!1))) Nil!53)))))))

(declare-fun e!863 () List!52)

(assert (=> d!764 (= lt!302 e!863)))

(declare-fun c!367 () Bool)

(assert (=> d!764 (= c!367 (is-Nil!53 (reverse!5 (tail!236 (Cons!52 e3!1 (rear!49 q2!1))))))))

(assert (=> d!764 (= (concat!2 (reverse!5 (tail!236 (Cons!52 e3!1 (rear!49 q2!1)))) (Cons!52 (head!224 (Cons!52 e3!1 (rear!49 q2!1))) Nil!53)) lt!302)))

(declare-fun b!1380 () Bool)

(assert (=> b!1380 (= e!863 (Cons!52 (head!224 (Cons!52 e3!1 (rear!49 q2!1))) Nil!53))))

(declare-fun b!1381 () Bool)

(assert (=> b!1381 (= e!863 (Cons!52 (head!224 (reverse!5 (tail!236 (Cons!52 e3!1 (rear!49 q2!1))))) (concat!2 (tail!236 (reverse!5 (tail!236 (Cons!52 e3!1 (rear!49 q2!1))))) (Cons!52 (head!224 (Cons!52 e3!1 (rear!49 q2!1))) Nil!53))))))

(declare-fun b!1382 () Bool)

(assert (=> b!1382 (= e!864 (= (content!22 lt!302) (union (content!22 (reverse!5 (tail!236 (Cons!52 e3!1 (rear!49 q2!1))))) (content!22 (Cons!52 (head!224 (Cons!52 e3!1 (rear!49 q2!1))) Nil!53)))))))

(assert (= (and d!764 c!367) b!1380))

(assert (= (and d!764 (not c!367)) b!1381))

(assert (= (and d!764 res!759) b!1382))

(declare-fun m!1609 () Bool)

(assert (=> d!764 m!1609))

(assert (=> d!764 m!1395))

(declare-fun m!1611 () Bool)

(assert (=> d!764 m!1611))

(declare-fun m!1613 () Bool)

(assert (=> d!764 m!1613))

(declare-fun m!1615 () Bool)

(assert (=> b!1381 m!1615))

(declare-fun m!1617 () Bool)

(assert (=> b!1382 m!1617))

(assert (=> b!1382 m!1395))

(declare-fun m!1619 () Bool)

(assert (=> b!1382 m!1619))

(declare-fun m!1621 () Bool)

(assert (=> b!1382 m!1621))

(assert (=> b!1259 d!764))

(declare-fun d!766 () Bool)

(declare-fun lt!303 () List!52)

(assert (=> d!766 (= (content!22 lt!303) (content!22 (tail!236 (Cons!52 e3!1 (rear!49 q2!1)))))))

(declare-fun e!865 () List!52)

(assert (=> d!766 (= lt!303 e!865)))

(declare-fun c!368 () Bool)

(assert (=> d!766 (= c!368 (is-Nil!53 (tail!236 (Cons!52 e3!1 (rear!49 q2!1)))))))

(assert (=> d!766 (= (reverse!5 (tail!236 (Cons!52 e3!1 (rear!49 q2!1)))) lt!303)))

(declare-fun b!1383 () Bool)

(assert (=> b!1383 (= e!865 Nil!53)))

(declare-fun b!1384 () Bool)

(assert (=> b!1384 (= e!865 (concat!2 (reverse!5 (tail!236 (tail!236 (Cons!52 e3!1 (rear!49 q2!1))))) (Cons!52 (head!224 (tail!236 (Cons!52 e3!1 (rear!49 q2!1)))) Nil!53)))))

(assert (= (and d!766 c!368) b!1383))

(assert (= (and d!766 (not c!368)) b!1384))

(declare-fun m!1623 () Bool)

(assert (=> d!766 m!1623))

(declare-fun m!1625 () Bool)

(assert (=> d!766 m!1625))

(declare-fun m!1627 () Bool)

(assert (=> b!1384 m!1627))

(assert (=> b!1384 m!1627))

(declare-fun m!1629 () Bool)

(assert (=> b!1384 m!1629))

(assert (=> b!1259 d!766))

(declare-fun d!768 () Bool)

(declare-fun e!867 () Bool)

(assert (=> d!768 e!867))

(declare-fun res!760 () Bool)

(assert (=> d!768 (=> (not res!760) (not e!867))))

(declare-fun lt!304 () List!52)

(assert (=> d!768 (= res!760 (= (size!23 lt!304) (+ (size!23 (reverse!5 (tail!236 (Cons!52 e2!3 (rear!49 q1!1))))) (size!23 (Cons!52 (head!224 (Cons!52 e2!3 (rear!49 q1!1))) Nil!53)))))))

(declare-fun e!866 () List!52)

(assert (=> d!768 (= lt!304 e!866)))

(declare-fun c!369 () Bool)

(assert (=> d!768 (= c!369 (is-Nil!53 (reverse!5 (tail!236 (Cons!52 e2!3 (rear!49 q1!1))))))))

(assert (=> d!768 (= (concat!2 (reverse!5 (tail!236 (Cons!52 e2!3 (rear!49 q1!1)))) (Cons!52 (head!224 (Cons!52 e2!3 (rear!49 q1!1))) Nil!53)) lt!304)))

(declare-fun b!1385 () Bool)

(assert (=> b!1385 (= e!866 (Cons!52 (head!224 (Cons!52 e2!3 (rear!49 q1!1))) Nil!53))))

(declare-fun b!1386 () Bool)

(assert (=> b!1386 (= e!866 (Cons!52 (head!224 (reverse!5 (tail!236 (Cons!52 e2!3 (rear!49 q1!1))))) (concat!2 (tail!236 (reverse!5 (tail!236 (Cons!52 e2!3 (rear!49 q1!1))))) (Cons!52 (head!224 (Cons!52 e2!3 (rear!49 q1!1))) Nil!53))))))

(declare-fun b!1387 () Bool)

(assert (=> b!1387 (= e!867 (= (content!22 lt!304) (union (content!22 (reverse!5 (tail!236 (Cons!52 e2!3 (rear!49 q1!1))))) (content!22 (Cons!52 (head!224 (Cons!52 e2!3 (rear!49 q1!1))) Nil!53)))))))

(assert (= (and d!768 c!369) b!1385))

(assert (= (and d!768 (not c!369)) b!1386))

(assert (= (and d!768 res!760) b!1387))

(declare-fun m!1631 () Bool)

(assert (=> d!768 m!1631))

(assert (=> d!768 m!1487))

(declare-fun m!1633 () Bool)

(assert (=> d!768 m!1633))

(declare-fun m!1635 () Bool)

(assert (=> d!768 m!1635))

(declare-fun m!1637 () Bool)

(assert (=> b!1386 m!1637))

(declare-fun m!1639 () Bool)

(assert (=> b!1387 m!1639))

(assert (=> b!1387 m!1487))

(declare-fun m!1641 () Bool)

(assert (=> b!1387 m!1641))

(declare-fun m!1643 () Bool)

(assert (=> b!1387 m!1643))

(assert (=> b!1298 d!768))

(declare-fun d!770 () Bool)

(declare-fun lt!305 () List!52)

(assert (=> d!770 (= (content!22 lt!305) (content!22 (tail!236 (Cons!52 e2!3 (rear!49 q1!1)))))))

(declare-fun e!868 () List!52)

(assert (=> d!770 (= lt!305 e!868)))

(declare-fun c!370 () Bool)

(assert (=> d!770 (= c!370 (is-Nil!53 (tail!236 (Cons!52 e2!3 (rear!49 q1!1)))))))

(assert (=> d!770 (= (reverse!5 (tail!236 (Cons!52 e2!3 (rear!49 q1!1)))) lt!305)))

(declare-fun b!1388 () Bool)

(assert (=> b!1388 (= e!868 Nil!53)))

(declare-fun b!1389 () Bool)

(assert (=> b!1389 (= e!868 (concat!2 (reverse!5 (tail!236 (tail!236 (Cons!52 e2!3 (rear!49 q1!1))))) (Cons!52 (head!224 (tail!236 (Cons!52 e2!3 (rear!49 q1!1)))) Nil!53)))))

(assert (= (and d!770 c!370) b!1388))

(assert (= (and d!770 (not c!370)) b!1389))

(declare-fun m!1645 () Bool)

(assert (=> d!770 m!1645))

(assert (=> d!770 m!1539))

(declare-fun m!1647 () Bool)

(assert (=> b!1389 m!1647))

(assert (=> b!1389 m!1647))

(declare-fun m!1649 () Bool)

(assert (=> b!1389 m!1649))

(assert (=> b!1298 d!770))

(declare-fun d!772 () Bool)

(declare-fun lt!306 () Int)

(assert (=> d!772 (>= lt!306 0)))

(declare-fun e!869 () Int)

(assert (=> d!772 (= lt!306 e!869)))

(declare-fun c!371 () Bool)

(assert (=> d!772 (= c!371 (is-Nil!53 (tail!236 (front!47 lt!228))))))

(assert (=> d!772 (= (size!23 (tail!236 (front!47 lt!228))) lt!306)))

(declare-fun b!1390 () Bool)

(assert (=> b!1390 (= e!869 0)))

(declare-fun b!1391 () Bool)

(assert (=> b!1391 (= e!869 (+ 1 (size!23 (tail!236 (tail!236 (front!47 lt!228))))))))

(assert (= (and d!772 c!371) b!1390))

(assert (= (and d!772 (not c!371)) b!1391))

(declare-fun m!1651 () Bool)

(assert (=> b!1391 m!1651))

(assert (=> b!1261 d!772))

(declare-fun d!774 () Bool)

(declare-fun e!871 () Bool)

(assert (=> d!774 e!871))

(declare-fun res!761 () Bool)

(assert (=> d!774 (=> (not res!761) (not e!871))))

(declare-fun lt!307 () List!52)

(assert (=> d!774 (= res!761 (= (size!23 lt!307) (+ (size!23 (tail!236 (tail!236 (front!47 q3!1)))) (size!23 (reverse!5 (rear!49 q3!1))))))))

(declare-fun e!870 () List!52)

(assert (=> d!774 (= lt!307 e!870)))

(declare-fun c!372 () Bool)

(assert (=> d!774 (= c!372 (is-Nil!53 (tail!236 (tail!236 (front!47 q3!1)))))))

(assert (=> d!774 (= (concat!2 (tail!236 (tail!236 (front!47 q3!1))) (reverse!5 (rear!49 q3!1))) lt!307)))

(declare-fun b!1392 () Bool)

(assert (=> b!1392 (= e!870 (reverse!5 (rear!49 q3!1)))))

(declare-fun b!1393 () Bool)

(assert (=> b!1393 (= e!870 (Cons!52 (head!224 (tail!236 (tail!236 (front!47 q3!1)))) (concat!2 (tail!236 (tail!236 (tail!236 (front!47 q3!1)))) (reverse!5 (rear!49 q3!1)))))))

(declare-fun b!1394 () Bool)

(assert (=> b!1394 (= e!871 (= (content!22 lt!307) (union (content!22 (tail!236 (tail!236 (front!47 q3!1)))) (content!22 (reverse!5 (rear!49 q3!1))))))))

(assert (= (and d!774 c!372) b!1392))

(assert (= (and d!774 (not c!372)) b!1393))

(assert (= (and d!774 res!761) b!1394))

(declare-fun m!1653 () Bool)

(assert (=> d!774 m!1653))

(assert (=> d!774 m!1375))

(assert (=> d!774 m!1353))

(assert (=> d!774 m!1433))

(assert (=> b!1393 m!1353))

(declare-fun m!1655 () Bool)

(assert (=> b!1393 m!1655))

(declare-fun m!1657 () Bool)

(assert (=> b!1394 m!1657))

(assert (=> b!1394 m!1549))

(assert (=> b!1394 m!1353))

(assert (=> b!1394 m!1441))

(assert (=> b!1285 d!774))

(declare-fun d!776 () Bool)

(declare-fun lt!308 () Int)

(assert (=> d!776 (>= lt!308 0)))

(declare-fun e!872 () Int)

(assert (=> d!776 (= lt!308 e!872)))

(declare-fun c!373 () Bool)

(assert (=> d!776 (= c!373 (is-Nil!53 (tail!236 (rear!49 lt!228))))))

(assert (=> d!776 (= (size!23 (tail!236 (rear!49 lt!228))) lt!308)))

(declare-fun b!1395 () Bool)

(assert (=> b!1395 (= e!872 0)))

(declare-fun b!1396 () Bool)

(assert (=> b!1396 (= e!872 (+ 1 (size!23 (tail!236 (tail!236 (rear!49 lt!228))))))))

(assert (= (and d!776 c!373) b!1395))

(assert (= (and d!776 (not c!373)) b!1396))

(declare-fun m!1659 () Bool)

(assert (=> b!1396 m!1659))

(assert (=> b!1263 d!776))

(declare-fun d!778 () Bool)

(declare-fun lt!309 () Int)

(assert (=> d!778 (>= lt!309 0)))

(declare-fun e!873 () Int)

(assert (=> d!778 (= lt!309 e!873)))

(declare-fun c!374 () Bool)

(assert (=> d!778 (= c!374 (is-Nil!53 (tail!236 (rear!49 lt!227))))))

(assert (=> d!778 (= (size!23 (tail!236 (rear!49 lt!227))) lt!309)))

(declare-fun b!1397 () Bool)

(assert (=> b!1397 (= e!873 0)))

(declare-fun b!1398 () Bool)

(assert (=> b!1398 (= e!873 (+ 1 (size!23 (tail!236 (tail!236 (rear!49 lt!227))))))))

(assert (= (and d!778 c!374) b!1397))

(assert (= (and d!778 (not c!374)) b!1398))

(declare-fun m!1661 () Bool)

(assert (=> b!1398 m!1661))

(assert (=> b!1271 d!778))

(declare-fun d!780 () Bool)

(declare-fun c!375 () Bool)

(assert (=> d!780 (= c!375 (is-Nil!53 lt!251))))

(declare-fun e!874 () (Set (_ BitVec 32)))

(assert (=> d!780 (= (content!22 lt!251) e!874)))

(declare-fun b!1399 () Bool)

(assert (=> b!1399 (= e!874 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1400 () Bool)

(assert (=> b!1400 (= e!874 (union (insert (head!224 lt!251) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!236 lt!251))))))

(assert (= (and d!780 c!375) b!1399))

(assert (= (and d!780 (not c!375)) b!1400))

(declare-fun m!1663 () Bool)

(assert (=> b!1400 m!1663))

(declare-fun m!1665 () Bool)

(assert (=> b!1400 m!1665))

(assert (=> b!1253 d!780))

(declare-fun d!782 () Bool)

(declare-fun c!376 () Bool)

(assert (=> d!782 (= c!376 (is-Nil!53 (front!47 q2!1)))))

(declare-fun e!875 () (Set (_ BitVec 32)))

(assert (=> d!782 (= (content!22 (front!47 q2!1)) e!875)))

(declare-fun b!1401 () Bool)

(assert (=> b!1401 (= e!875 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1402 () Bool)

(assert (=> b!1402 (= e!875 (union (insert (head!224 (front!47 q2!1)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!236 (front!47 q2!1)))))))

(assert (= (and d!782 c!376) b!1401))

(assert (= (and d!782 (not c!376)) b!1402))

(declare-fun m!1667 () Bool)

(assert (=> b!1402 m!1667))

(assert (=> b!1402 m!1575))

(assert (=> b!1253 d!782))

(declare-fun d!784 () Bool)

(declare-fun c!377 () Bool)

(assert (=> d!784 (= c!377 (is-Nil!53 (reverse!5 (Cons!52 e3!1 (rear!49 q2!1)))))))

(declare-fun e!876 () (Set (_ BitVec 32)))

(assert (=> d!784 (= (content!22 (reverse!5 (Cons!52 e3!1 (rear!49 q2!1)))) e!876)))

(declare-fun b!1403 () Bool)

(assert (=> b!1403 (= e!876 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1404 () Bool)

(assert (=> b!1404 (= e!876 (union (insert (head!224 (reverse!5 (Cons!52 e3!1 (rear!49 q2!1)))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!236 (reverse!5 (Cons!52 e3!1 (rear!49 q2!1)))))))))

(assert (= (and d!784 c!377) b!1403))

(assert (= (and d!784 (not c!377)) b!1404))

(declare-fun m!1669 () Bool)

(assert (=> b!1404 m!1669))

(declare-fun m!1671 () Bool)

(assert (=> b!1404 m!1671))

(assert (=> b!1253 d!784))

(declare-fun d!786 () Bool)

(declare-fun c!378 () Bool)

(assert (=> d!786 (= c!378 (is-Nil!53 lt!254))))

(declare-fun e!877 () (Set (_ BitVec 32)))

(assert (=> d!786 (= (content!22 lt!254) e!877)))

(declare-fun b!1405 () Bool)

(assert (=> b!1405 (= e!877 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1406 () Bool)

(assert (=> b!1406 (= e!877 (union (insert (head!224 lt!254) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!236 lt!254))))))

(assert (= (and d!786 c!378) b!1405))

(assert (= (and d!786 (not c!378)) b!1406))

(declare-fun m!1673 () Bool)

(assert (=> b!1406 m!1673))

(declare-fun m!1675 () Bool)

(assert (=> b!1406 m!1675))

(assert (=> d!648 d!786))

(declare-fun d!788 () Bool)

(declare-fun c!379 () Bool)

(assert (=> d!788 (= c!379 (is-Nil!53 (Cons!52 e3!1 (rear!49 q2!1))))))

(declare-fun e!878 () (Set (_ BitVec 32)))

(assert (=> d!788 (= (content!22 (Cons!52 e3!1 (rear!49 q2!1))) e!878)))

(declare-fun b!1407 () Bool)

(assert (=> b!1407 (= e!878 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1408 () Bool)

(assert (=> b!1408 (= e!878 (union (insert (head!224 (Cons!52 e3!1 (rear!49 q2!1))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!236 (Cons!52 e3!1 (rear!49 q2!1))))))))

(assert (= (and d!788 c!379) b!1407))

(assert (= (and d!788 (not c!379)) b!1408))

(declare-fun m!1677 () Bool)

(assert (=> b!1408 m!1677))

(assert (=> b!1408 m!1625))

(assert (=> d!648 d!788))

(declare-fun d!790 () Bool)

(declare-fun lt!310 () Int)

(assert (=> d!790 (>= lt!310 0)))

(declare-fun e!879 () Int)

(assert (=> d!790 (= lt!310 e!879)))

(declare-fun c!380 () Bool)

(assert (=> d!790 (= c!380 (is-Nil!53 lt!271))))

(assert (=> d!790 (= (size!23 lt!271) lt!310)))

(declare-fun b!1409 () Bool)

(assert (=> b!1409 (= e!879 0)))

(declare-fun b!1410 () Bool)

(assert (=> b!1410 (= e!879 (+ 1 (size!23 (tail!236 lt!271))))))

(assert (= (and d!790 c!380) b!1409))

(assert (= (and d!790 (not c!380)) b!1410))

(declare-fun m!1679 () Bool)

(assert (=> b!1410 m!1679))

(assert (=> d!686 d!790))

(assert (=> d!686 d!676))

(declare-fun d!792 () Bool)

(declare-fun lt!311 () Int)

(assert (=> d!792 (>= lt!311 0)))

(declare-fun e!880 () Int)

(assert (=> d!792 (= lt!311 e!880)))

(declare-fun c!381 () Bool)

(assert (=> d!792 (= c!381 (is-Nil!53 (reverse!5 (Cons!52 e2!3 (rear!49 q1!1)))))))

(assert (=> d!792 (= (size!23 (reverse!5 (Cons!52 e2!3 (rear!49 q1!1)))) lt!311)))

(declare-fun b!1411 () Bool)

(assert (=> b!1411 (= e!880 0)))

(declare-fun b!1412 () Bool)

(assert (=> b!1412 (= e!880 (+ 1 (size!23 (tail!236 (reverse!5 (Cons!52 e2!3 (rear!49 q1!1)))))))))

(assert (= (and d!792 c!381) b!1411))

(assert (= (and d!792 (not c!381)) b!1412))

(declare-fun m!1681 () Bool)

(assert (=> b!1412 m!1681))

(assert (=> d!686 d!792))

(declare-fun d!794 () Bool)

(declare-fun lt!312 () Int)

(assert (=> d!794 (>= lt!312 0)))

(declare-fun e!881 () Int)

(assert (=> d!794 (= lt!312 e!881)))

(declare-fun c!382 () Bool)

(assert (=> d!794 (= c!382 (is-Nil!53 (tail!236 (front!47 lt!227))))))

(assert (=> d!794 (= (size!23 (tail!236 (front!47 lt!227))) lt!312)))

(declare-fun b!1413 () Bool)

(assert (=> b!1413 (= e!881 0)))

(declare-fun b!1414 () Bool)

(assert (=> b!1414 (= e!881 (+ 1 (size!23 (tail!236 (tail!236 (front!47 lt!227))))))))

(assert (= (and d!794 c!382) b!1413))

(assert (= (and d!794 (not c!382)) b!1414))

(declare-fun m!1683 () Bool)

(assert (=> b!1414 m!1683))

(assert (=> b!1269 d!794))

(declare-fun d!796 () Bool)

(declare-fun e!883 () Bool)

(assert (=> d!796 e!883))

(declare-fun res!762 () Bool)

(assert (=> d!796 (=> (not res!762) (not e!883))))

(declare-fun lt!313 () List!52)

(assert (=> d!796 (= res!762 (= (size!23 lt!313) (+ (size!23 (tail!236 (front!47 queue!56))) (size!23 (reverse!5 (Cons!52 e1!2 (rear!49 queue!56)))))))))

(declare-fun e!882 () List!52)

(assert (=> d!796 (= lt!313 e!882)))

(declare-fun c!383 () Bool)

(assert (=> d!796 (= c!383 (is-Nil!53 (tail!236 (front!47 queue!56))))))

(assert (=> d!796 (= (concat!2 (tail!236 (front!47 queue!56)) (reverse!5 (Cons!52 e1!2 (rear!49 queue!56)))) lt!313)))

(declare-fun b!1415 () Bool)

(assert (=> b!1415 (= e!882 (reverse!5 (Cons!52 e1!2 (rear!49 queue!56))))))

(declare-fun b!1416 () Bool)

(assert (=> b!1416 (= e!882 (Cons!52 (head!224 (tail!236 (front!47 queue!56))) (concat!2 (tail!236 (tail!236 (front!47 queue!56))) (reverse!5 (Cons!52 e1!2 (rear!49 queue!56))))))))

(declare-fun b!1417 () Bool)

(assert (=> b!1417 (= e!883 (= (content!22 lt!313) (union (content!22 (tail!236 (front!47 queue!56))) (content!22 (reverse!5 (Cons!52 e1!2 (rear!49 queue!56)))))))))

(assert (= (and d!796 c!383) b!1415))

(assert (= (and d!796 (not c!383)) b!1416))

(assert (= (and d!796 res!762) b!1417))

(declare-fun m!1685 () Bool)

(assert (=> d!796 m!1685))

(assert (=> d!796 m!1421))

(assert (=> d!796 m!1307))

(assert (=> d!796 m!1453))

(assert (=> b!1416 m!1307))

(declare-fun m!1687 () Bool)

(assert (=> b!1416 m!1687))

(declare-fun m!1689 () Bool)

(assert (=> b!1417 m!1689))

(assert (=> b!1417 m!1499))

(assert (=> b!1417 m!1307))

(assert (=> b!1417 m!1461))

(assert (=> b!1290 d!796))

(declare-fun d!798 () Bool)

(declare-fun e!885 () Bool)

(assert (=> d!798 e!885))

(declare-fun res!763 () Bool)

(assert (=> d!798 (=> (not res!763) (not e!885))))

(declare-fun lt!314 () List!52)

(assert (=> d!798 (= res!763 (= (size!23 lt!314) (+ (size!23 (reverse!5 (tail!236 (rear!49 q3!1)))) (size!23 (Cons!52 (head!224 (rear!49 q3!1)) Nil!53)))))))

(declare-fun e!884 () List!52)

(assert (=> d!798 (= lt!314 e!884)))

(declare-fun c!384 () Bool)

(assert (=> d!798 (= c!384 (is-Nil!53 (reverse!5 (tail!236 (rear!49 q3!1)))))))

(assert (=> d!798 (= (concat!2 (reverse!5 (tail!236 (rear!49 q3!1))) (Cons!52 (head!224 (rear!49 q3!1)) Nil!53)) lt!314)))

(declare-fun b!1418 () Bool)

(assert (=> b!1418 (= e!884 (Cons!52 (head!224 (rear!49 q3!1)) Nil!53))))

(declare-fun b!1419 () Bool)

(assert (=> b!1419 (= e!884 (Cons!52 (head!224 (reverse!5 (tail!236 (rear!49 q3!1)))) (concat!2 (tail!236 (reverse!5 (tail!236 (rear!49 q3!1)))) (Cons!52 (head!224 (rear!49 q3!1)) Nil!53))))))

(declare-fun b!1420 () Bool)

(assert (=> b!1420 (= e!885 (= (content!22 lt!314) (union (content!22 (reverse!5 (tail!236 (rear!49 q3!1)))) (content!22 (Cons!52 (head!224 (rear!49 q3!1)) Nil!53)))))))

(assert (= (and d!798 c!384) b!1418))

(assert (= (and d!798 (not c!384)) b!1419))

(assert (= (and d!798 res!763) b!1420))

(declare-fun m!1691 () Bool)

(assert (=> d!798 m!1691))

(assert (=> d!798 m!1447))

(declare-fun m!1693 () Bool)

(assert (=> d!798 m!1693))

(declare-fun m!1695 () Bool)

(assert (=> d!798 m!1695))

(declare-fun m!1697 () Bool)

(assert (=> b!1419 m!1697))

(declare-fun m!1699 () Bool)

(assert (=> b!1420 m!1699))

(assert (=> b!1420 m!1447))

(declare-fun m!1701 () Bool)

(assert (=> b!1420 m!1701))

(declare-fun m!1703 () Bool)

(assert (=> b!1420 m!1703))

(assert (=> b!1288 d!798))

(declare-fun d!800 () Bool)

(declare-fun lt!315 () List!52)

(assert (=> d!800 (= (content!22 lt!315) (content!22 (tail!236 (rear!49 q3!1))))))

(declare-fun e!886 () List!52)

(assert (=> d!800 (= lt!315 e!886)))

(declare-fun c!385 () Bool)

(assert (=> d!800 (= c!385 (is-Nil!53 (tail!236 (rear!49 q3!1))))))

(assert (=> d!800 (= (reverse!5 (tail!236 (rear!49 q3!1))) lt!315)))

(declare-fun b!1421 () Bool)

(assert (=> b!1421 (= e!886 Nil!53)))

(declare-fun b!1422 () Bool)

(assert (=> b!1422 (= e!886 (concat!2 (reverse!5 (tail!236 (tail!236 (rear!49 q3!1)))) (Cons!52 (head!224 (tail!236 (rear!49 q3!1))) Nil!53)))))

(assert (= (and d!800 c!385) b!1421))

(assert (= (and d!800 (not c!385)) b!1422))

(declare-fun m!1705 () Bool)

(assert (=> d!800 m!1705))

(declare-fun m!1707 () Bool)

(assert (=> d!800 m!1707))

(declare-fun m!1709 () Bool)

(assert (=> b!1422 m!1709))

(assert (=> b!1422 m!1709))

(declare-fun m!1711 () Bool)

(assert (=> b!1422 m!1711))

(assert (=> b!1288 d!800))

(declare-fun d!802 () Bool)

(declare-fun c!386 () Bool)

(assert (=> d!802 (= c!386 (is-Nil!53 lt!268))))

(declare-fun e!887 () (Set (_ BitVec 32)))

(assert (=> d!802 (= (content!22 lt!268) e!887)))

(declare-fun b!1423 () Bool)

(assert (=> b!1423 (= e!887 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1424 () Bool)

(assert (=> b!1424 (= e!887 (union (insert (head!224 lt!268) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!236 lt!268))))))

(assert (= (and d!802 c!386) b!1423))

(assert (= (and d!802 (not c!386)) b!1424))

(declare-fun m!1713 () Bool)

(assert (=> b!1424 m!1713))

(declare-fun m!1715 () Bool)

(assert (=> b!1424 m!1715))

(assert (=> d!680 d!802))

(declare-fun d!804 () Bool)

(declare-fun c!387 () Bool)

(assert (=> d!804 (= c!387 (is-Nil!53 (rear!49 q3!1)))))

(declare-fun e!888 () (Set (_ BitVec 32)))

(assert (=> d!804 (= (content!22 (rear!49 q3!1)) e!888)))

(declare-fun b!1425 () Bool)

(assert (=> b!1425 (= e!888 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1426 () Bool)

(assert (=> b!1426 (= e!888 (union (insert (head!224 (rear!49 q3!1)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!236 (rear!49 q3!1)))))))

(assert (= (and d!804 c!387) b!1425))

(assert (= (and d!804 (not c!387)) b!1426))

(declare-fun m!1717 () Bool)

(assert (=> b!1426 m!1717))

(assert (=> b!1426 m!1707))

(assert (=> d!680 d!804))

(declare-fun d!806 () Bool)

(declare-fun c!388 () Bool)

(assert (=> d!806 (= c!388 (is-Nil!53 lt!270))))

(declare-fun e!889 () (Set (_ BitVec 32)))

(assert (=> d!806 (= (content!22 lt!270) e!889)))

(declare-fun b!1427 () Bool)

(assert (=> b!1427 (= e!889 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1428 () Bool)

(assert (=> b!1428 (= e!889 (union (insert (head!224 lt!270) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!236 lt!270))))))

(assert (= (and d!806 c!388) b!1427))

(assert (= (and d!806 (not c!388)) b!1428))

(declare-fun m!1719 () Bool)

(assert (=> b!1428 m!1719))

(declare-fun m!1721 () Bool)

(assert (=> b!1428 m!1721))

(assert (=> d!684 d!806))

(declare-fun d!808 () Bool)

(declare-fun c!389 () Bool)

(assert (=> d!808 (= c!389 (is-Nil!53 (Cons!52 e1!2 (rear!49 queue!56))))))

(declare-fun e!890 () (Set (_ BitVec 32)))

(assert (=> d!808 (= (content!22 (Cons!52 e1!2 (rear!49 queue!56))) e!890)))

(declare-fun b!1429 () Bool)

(assert (=> b!1429 (= e!890 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1430 () Bool)

(assert (=> b!1430 (= e!890 (union (insert (head!224 (Cons!52 e1!2 (rear!49 queue!56))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!236 (Cons!52 e1!2 (rear!49 queue!56))))))))

(assert (= (and d!808 c!389) b!1429))

(assert (= (and d!808 (not c!389)) b!1430))

(declare-fun m!1723 () Bool)

(assert (=> b!1430 m!1723))

(assert (=> b!1430 m!1525))

(assert (=> d!684 d!808))

(declare-fun d!810 () Bool)

(declare-fun c!390 () Bool)

(assert (=> d!810 (= c!390 (is-Nil!53 lt!271))))

(declare-fun e!891 () (Set (_ BitVec 32)))

(assert (=> d!810 (= (content!22 lt!271) e!891)))

(declare-fun b!1431 () Bool)

(assert (=> b!1431 (= e!891 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1432 () Bool)

(assert (=> b!1432 (= e!891 (union (insert (head!224 lt!271) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!236 lt!271))))))

(assert (= (and d!810 c!390) b!1431))

(assert (= (and d!810 (not c!390)) b!1432))

(declare-fun m!1725 () Bool)

(assert (=> b!1432 m!1725))

(declare-fun m!1727 () Bool)

(assert (=> b!1432 m!1727))

(assert (=> b!1296 d!810))

(declare-fun d!812 () Bool)

(declare-fun c!391 () Bool)

(assert (=> d!812 (= c!391 (is-Nil!53 (front!47 q1!1)))))

(declare-fun e!892 () (Set (_ BitVec 32)))

(assert (=> d!812 (= (content!22 (front!47 q1!1)) e!892)))

(declare-fun b!1433 () Bool)

(assert (=> b!1433 (= e!892 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1434 () Bool)

(assert (=> b!1434 (= e!892 (union (insert (head!224 (front!47 q1!1)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!236 (front!47 q1!1)))))))

(assert (= (and d!812 c!391) b!1433))

(assert (= (and d!812 (not c!391)) b!1434))

(declare-fun m!1729 () Bool)

(assert (=> b!1434 m!1729))

(assert (=> b!1434 m!1567))

(assert (=> b!1296 d!812))

(declare-fun d!814 () Bool)

(declare-fun c!392 () Bool)

(assert (=> d!814 (= c!392 (is-Nil!53 (reverse!5 (Cons!52 e2!3 (rear!49 q1!1)))))))

(declare-fun e!893 () (Set (_ BitVec 32)))

(assert (=> d!814 (= (content!22 (reverse!5 (Cons!52 e2!3 (rear!49 q1!1)))) e!893)))

(declare-fun b!1435 () Bool)

(assert (=> b!1435 (= e!893 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1436 () Bool)

(assert (=> b!1436 (= e!893 (union (insert (head!224 (reverse!5 (Cons!52 e2!3 (rear!49 q1!1)))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!236 (reverse!5 (Cons!52 e2!3 (rear!49 q1!1)))))))))

(assert (= (and d!814 c!392) b!1435))

(assert (= (and d!814 (not c!392)) b!1436))

(declare-fun m!1731 () Bool)

(assert (=> b!1436 m!1731))

(declare-fun m!1733 () Bool)

(assert (=> b!1436 m!1733))

(assert (=> b!1296 d!814))

(declare-fun d!816 () Bool)

(declare-fun lt!316 () Int)

(assert (=> d!816 (>= lt!316 0)))

(declare-fun e!894 () Int)

(assert (=> d!816 (= lt!316 e!894)))

(declare-fun c!393 () Bool)

(assert (=> d!816 (= c!393 (is-Nil!53 (tail!236 (front!47 lt!232))))))

(assert (=> d!816 (= (size!23 (tail!236 (front!47 lt!232))) lt!316)))

(declare-fun b!1437 () Bool)

(assert (=> b!1437 (= e!894 0)))

(declare-fun b!1438 () Bool)

(assert (=> b!1438 (= e!894 (+ 1 (size!23 (tail!236 (tail!236 (front!47 lt!232))))))))

(assert (= (and d!816 c!393) b!1437))

(assert (= (and d!816 (not c!393)) b!1438))

(declare-fun m!1735 () Bool)

(assert (=> b!1438 m!1735))

(assert (=> b!1273 d!816))

(declare-fun d!818 () Bool)

(declare-fun lt!317 () Int)

(assert (=> d!818 (>= lt!317 0)))

(declare-fun e!895 () Int)

(assert (=> d!818 (= lt!317 e!895)))

(declare-fun c!394 () Bool)

(assert (=> d!818 (= c!394 (is-Nil!53 (tail!236 (front!47 lt!229))))))

(assert (=> d!818 (= (size!23 (tail!236 (front!47 lt!229))) lt!317)))

(declare-fun b!1439 () Bool)

(assert (=> b!1439 (= e!895 0)))

(declare-fun b!1440 () Bool)

(assert (=> b!1440 (= e!895 (+ 1 (size!23 (tail!236 (tail!236 (front!47 lt!229))))))))

(assert (= (and d!818 c!394) b!1439))

(assert (= (and d!818 (not c!394)) b!1440))

(declare-fun m!1737 () Bool)

(assert (=> b!1440 m!1737))

(assert (=> b!1265 d!818))

(declare-fun d!820 () Bool)

(declare-fun lt!318 () Int)

(assert (=> d!820 (>= lt!318 0)))

(declare-fun e!896 () Int)

(assert (=> d!820 (= lt!318 e!896)))

(declare-fun c!395 () Bool)

(assert (=> d!820 (= c!395 (is-Nil!53 (tail!236 (tail!236 (rear!49 queue!69)))))))

(assert (=> d!820 (= (size!23 (tail!236 (tail!236 (rear!49 queue!69)))) lt!318)))

(declare-fun b!1441 () Bool)

(assert (=> b!1441 (= e!896 0)))

(declare-fun b!1442 () Bool)

(assert (=> b!1442 (= e!896 (+ 1 (size!23 (tail!236 (tail!236 (tail!236 (rear!49 queue!69)))))))))

(assert (= (and d!820 c!395) b!1441))

(assert (= (and d!820 (not c!395)) b!1442))

(declare-fun m!1739 () Bool)

(assert (=> b!1442 m!1739))

(assert (=> b!1244 d!820))

(declare-fun d!822 () Bool)

(declare-fun lt!319 () Int)

(assert (=> d!822 (>= lt!319 0)))

(declare-fun e!897 () Int)

(assert (=> d!822 (= lt!319 e!897)))

(declare-fun c!396 () Bool)

(assert (=> d!822 (= c!396 (is-Nil!53 (tail!236 (Cons!52 e3!1 (rear!49 q2!1)))))))

(assert (=> d!822 (= (size!23 (tail!236 (Cons!52 e3!1 (rear!49 q2!1)))) lt!319)))

(declare-fun b!1443 () Bool)

(assert (=> b!1443 (= e!897 0)))

(declare-fun b!1444 () Bool)

(assert (=> b!1444 (= e!897 (+ 1 (size!23 (tail!236 (tail!236 (Cons!52 e3!1 (rear!49 q2!1)))))))))

(assert (= (and d!822 c!396) b!1443))

(assert (= (and d!822 (not c!396)) b!1444))

(declare-fun m!1741 () Bool)

(assert (=> b!1444 m!1741))

(assert (=> b!1234 d!822))

(push 1)

(assert (not b!1442))

(assert (not b!1316))

(assert (not d!770))

(assert (not b!1377))

(assert (not b!1444))

(assert (not b!1343))

(assert (not b!1327))

(assert (not d!796))

(assert (not b!1428))

(assert (not b!1337))

(assert (not b!1404))

(assert (not b!1369))

(assert (not b!1344))

(assert (not b!1424))

(assert (not b!1318))

(assert (not b!1359))

(assert (not b!1371))

(assert (not b!1384))

(assert (not b!1398))

(assert (not b!1351))

(assert (not b!1432))

(assert (not b!1310))

(assert (not b!1381))

(assert (not b!1436))

(assert (not b!1375))

(assert (not b!1339))

(assert (not b!1319))

(assert (not b!1302))

(assert (not b!1312))

(assert (not b!1400))

(assert (not d!766))

(assert (not b!1434))

(assert (not d!730))

(assert (not b!1387))

(assert (not b!1438))

(assert (not b!1379))

(assert (not b!1419))

(assert (not b!1417))

(assert (not b!1382))

(assert (not d!774))

(assert (not b!1353))

(assert (not b!1406))

(assert (not b!1329))

(assert (not d!764))

(assert (not b!1420))

(assert (not b!1393))

(assert (not d!704))

(assert (not b!1325))

(assert (not d!706))

(assert (not b!1321))

(assert (not b!1402))

(assert (not b!1440))

(assert (not d!798))

(assert (not b!1389))

(assert (not b!1422))

(assert (not b!1367))

(assert (not b!1347))

(assert (not b!1426))

(assert (not b!1430))

(assert (not b!1396))

(assert (not b!1361))

(assert (not b!1391))

(assert (not b!1341))

(assert (not b!1314))

(assert (not b!1331))

(assert (not b!1386))

(assert (not b!1335))

(assert (not b!1414))

(assert (not b!1323))

(assert (not b!1365))

(assert (not b!1346))

(assert (not b!1355))

(assert (not b!1394))

(assert (not b!1349))

(assert (not d!800))

(assert (not d!768))

(assert (not b!1308))

(assert (not b!1357))

(assert (not b!1333))

(assert (not d!728))

(assert (not b!1363))

(assert (not b!1408))

(assert (not b!1412))

(assert (not b!1416))

(assert (not b!1410))

(assert (not b!1373))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

