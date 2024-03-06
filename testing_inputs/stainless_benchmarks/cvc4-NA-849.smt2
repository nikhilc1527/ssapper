; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6360 () Bool)

(assert start!6360)

(declare-fun b!47279 () Bool)

(declare-fun e!24640 () Bool)

(declare-fun e!24641 () Bool)

(assert (=> b!47279 (= e!24640 e!24641)))

(declare-fun res!22210 () Bool)

(assert (=> b!47279 (=> (not res!22210) (not e!24641))))

(declare-datatypes () ((Nat!210 (Zero!194) (Succ!191 (n!1347 Nat!210)))))

(declare-fun thiss!5524 () Nat!210)

(declare-fun >!2 (Nat!210 Nat!210) Bool)

(assert (=> b!47279 (= res!22210 (>!2 thiss!5524 Zero!194))))

(declare-fun b!47280 () Bool)

(declare-fun res!22211 () Bool)

(assert (=> b!47280 (=> (not res!22211) (not e!24641))))

(declare-fun that!1123 () Nat!210)

(assert (=> b!47280 (= res!22211 (>!2 that!1123 (Succ!191 Zero!194)))))

(declare-fun b!47281 () Bool)

(declare-fun res!17688 () Nat!210)

(declare-fun repr!0 (Nat!210) Int)

(assert (=> b!47281 (= e!24641 (>= (repr!0 res!17688) (repr!0 thiss!5524)))))

(declare-fun res!22209 () Bool)

(declare-fun e!24639 () Bool)

(assert (=> start!6360 (=> (not res!22209) (not e!24639))))

(assert (=> start!6360 (= res!22209 (>!2 that!1123 Zero!194))))

(assert (=> start!6360 e!24639))

(assert (=> start!6360 true))

(declare-fun b!47282 () Bool)

(assert (=> b!47282 (= e!24639 e!24640)))

(declare-fun res!22212 () Bool)

(assert (=> b!47282 (=> res!22212 e!24640)))

(assert (=> b!47282 (= res!22212 (> (repr!0 res!17688) (repr!0 thiss!5524)))))

(declare-fun b!47283 () Bool)

(declare-fun res!22207 () Bool)

(assert (=> b!47283 (=> (not res!22207) (not e!24639))))

(declare-fun /!2 (Nat!210 Nat!210) Nat!210)

(declare-fun -!4 (Nat!210 Nat!210) Nat!210)

(assert (=> b!47283 (= res!22207 (= res!17688 (Succ!191 (/!2 (-!4 thiss!5524 that!1123) that!1123))))))

(declare-fun b!47284 () Bool)

(declare-fun res!22208 () Bool)

(assert (=> b!47284 (=> (not res!22208) (not e!24639))))

(declare-fun <!2 (Nat!210 Nat!210) Bool)

(assert (=> b!47284 (= res!22208 (not (<!2 thiss!5524 that!1123)))))

(assert (= (and start!6360 res!22209) b!47284))

(assert (= (and b!47284 res!22208) b!47283))

(assert (= (and b!47283 res!22207) b!47282))

(assert (= (and b!47282 (not res!22212)) b!47279))

(assert (= (and b!47279 res!22210) b!47280))

(assert (= (and b!47280 res!22211) b!47281))

(declare-fun m!50189 () Bool)

(assert (=> b!47283 m!50189))

(assert (=> b!47283 m!50189))

(declare-fun m!50191 () Bool)

(assert (=> b!47283 m!50191))

(declare-fun m!50193 () Bool)

(assert (=> b!47279 m!50193))

(declare-fun m!50195 () Bool)

(assert (=> b!47284 m!50195))

(declare-fun m!50197 () Bool)

(assert (=> start!6360 m!50197))

(declare-fun m!50199 () Bool)

(assert (=> b!47282 m!50199))

(declare-fun m!50201 () Bool)

(assert (=> b!47282 m!50201))

(assert (=> b!47281 m!50199))

(assert (=> b!47281 m!50201))

(declare-fun m!50203 () Bool)

(assert (=> b!47280 m!50203))

(push 1)

(assert (not start!6360))

(assert (not b!47281))

(assert (not b!47282))

(assert (not b!47280))

(assert (not b!47279))

(assert (not b!47284))

(assert (not b!47283))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!33208 () Bool)

(declare-fun e!24650 () Bool)

(assert (=> d!33208 e!24650))

(declare-fun res!22220 () Bool)

(assert (=> d!33208 (=> (not res!22220) (not e!24650))))

(declare-fun lt!8604 () Nat!210)

(assert (=> d!33208 (= res!22220 (<= (repr!0 lt!8604) (repr!0 (-!4 thiss!5524 that!1123))))))

(declare-fun e!24649 () Nat!210)

(assert (=> d!33208 (= lt!8604 e!24649)))

(declare-fun c!9963 () Bool)

(assert (=> d!33208 (= c!9963 (<!2 (-!4 thiss!5524 that!1123) that!1123))))

(assert (=> d!33208 (>!2 that!1123 Zero!194)))

(assert (=> d!33208 (= (/!2 (-!4 thiss!5524 that!1123) that!1123) lt!8604)))

(declare-fun e!24648 () Bool)

(declare-fun b!47295 () Bool)

(assert (=> b!47295 (= e!24648 (< (repr!0 lt!8604) (repr!0 (-!4 thiss!5524 that!1123))))))

(declare-fun b!47296 () Bool)

(declare-fun res!22221 () Bool)

(assert (=> b!47296 (=> res!22221 e!24648)))

(assert (=> b!47296 (= res!22221 (not (>!2 that!1123 (Succ!191 Zero!194))))))

(declare-fun b!47297 () Bool)

(assert (=> b!47297 (= e!24650 e!24648)))

(declare-fun res!22222 () Bool)

(assert (=> b!47297 (=> res!22222 e!24648)))

(assert (=> b!47297 (= res!22222 (not (>!2 (-!4 thiss!5524 that!1123) Zero!194)))))

(declare-fun b!47298 () Bool)

(assert (=> b!47298 (= e!24649 (Succ!191 (/!2 (-!4 (-!4 thiss!5524 that!1123) that!1123) that!1123)))))

(declare-fun b!47299 () Bool)

(assert (=> b!47299 (= e!24649 Zero!194)))

(assert (= (and d!33208 c!9963) b!47299))

(assert (= (and d!33208 (not c!9963)) b!47298))

(assert (= (and d!33208 res!22220) b!47297))

(assert (= (and b!47297 (not res!22222)) b!47296))

(assert (= (and b!47296 (not res!22221)) b!47295))

(assert (=> b!47297 m!50189))

(declare-fun m!50205 () Bool)

(assert (=> b!47297 m!50205))

(declare-fun m!50207 () Bool)

(assert (=> d!33208 m!50207))

(assert (=> d!33208 m!50189))

(declare-fun m!50209 () Bool)

(assert (=> d!33208 m!50209))

(assert (=> d!33208 m!50189))

(declare-fun m!50211 () Bool)

(assert (=> d!33208 m!50211))

(assert (=> d!33208 m!50197))

(assert (=> b!47296 m!50203))

(assert (=> b!47295 m!50207))

(assert (=> b!47295 m!50189))

(assert (=> b!47295 m!50209))

(assert (=> b!47298 m!50189))

(declare-fun m!50213 () Bool)

(assert (=> b!47298 m!50213))

(assert (=> b!47298 m!50213))

(declare-fun m!50215 () Bool)

(assert (=> b!47298 m!50215))

(assert (=> b!47283 d!33208))

(declare-fun b!47310 () Bool)

(declare-fun e!24659 () Nat!210)

(assert (=> b!47310 (= e!24659 (-!4 (n!1347 thiss!5524) (n!1347 that!1123)))))

(declare-fun b!47311 () Bool)

(declare-fun res!22231 () Bool)

(declare-fun e!24658 () Bool)

(assert (=> b!47311 (=> res!22231 e!24658)))

(assert (=> b!47311 (= res!22231 (not (>!2 that!1123 Zero!194)))))

(declare-fun b!47312 () Bool)

(declare-fun e!24657 () Bool)

(assert (=> b!47312 (= e!24657 e!24658)))

(declare-fun res!22230 () Bool)

(assert (=> b!47312 (=> res!22230 e!24658)))

(assert (=> b!47312 (= res!22230 (not (>!2 thiss!5524 Zero!194)))))

(declare-fun b!47313 () Bool)

(declare-fun lt!8607 () Nat!210)

(assert (=> b!47313 (= e!24658 (< (repr!0 lt!8607) (repr!0 thiss!5524)))))

(declare-fun b!47314 () Bool)

(assert (=> b!47314 (= e!24659 thiss!5524)))

(declare-fun d!33210 () Bool)

(assert (=> d!33210 e!24657))

(declare-fun res!22232 () Bool)

(assert (=> d!33210 (=> (not res!22232) (not e!24657))))

(assert (=> d!33210 (= res!22232 (<= (repr!0 lt!8607) (repr!0 thiss!5524)))))

(assert (=> d!33210 (= lt!8607 e!24659)))

(declare-fun c!9966 () Bool)

(assert (=> d!33210 (= c!9966 (and (is-Succ!191 thiss!5524) (is-Succ!191 that!1123)))))

(assert (=> d!33210 (= (-!4 thiss!5524 that!1123) lt!8607)))

(assert (= (and d!33210 c!9966) b!47310))

(assert (= (and d!33210 (not c!9966)) b!47314))

(assert (= (and d!33210 res!22232) b!47312))

(assert (= (and b!47312 (not res!22230)) b!47311))

(assert (= (and b!47311 (not res!22231)) b!47313))

(assert (=> b!47312 m!50193))

(declare-fun m!50217 () Bool)

(assert (=> b!47313 m!50217))

(assert (=> b!47313 m!50201))

(assert (=> d!33210 m!50217))

(assert (=> d!33210 m!50201))

(declare-fun m!50219 () Bool)

(assert (=> b!47310 m!50219))

(assert (=> b!47311 m!50197))

(assert (=> b!47283 d!33210))

(declare-fun d!33212 () Bool)

(declare-fun res!22235 () Bool)

(declare-fun e!24662 () Bool)

(assert (=> d!33212 (=> (not res!22235) (not e!24662))))

(assert (=> d!33212 (= res!22235 (not (<!2 thiss!5524 Zero!194)))))

(assert (=> d!33212 (= (>!2 thiss!5524 Zero!194) e!24662)))

(declare-fun b!47317 () Bool)

(assert (=> b!47317 (= e!24662 (not (= thiss!5524 Zero!194)))))

(assert (= (and d!33212 res!22235) b!47317))

(declare-fun m!50221 () Bool)

(assert (=> d!33212 m!50221))

(assert (=> b!47279 d!33212))

(declare-fun d!33214 () Bool)

(declare-fun lt!8610 () Int)

(assert (=> d!33214 (>= lt!8610 0)))

(declare-fun e!24665 () Int)

(assert (=> d!33214 (= lt!8610 e!24665)))

(declare-fun c!9969 () Bool)

(assert (=> d!33214 (= c!9969 (is-Zero!194 res!17688))))

(assert (=> d!33214 (= (repr!0 res!17688) lt!8610)))

(declare-fun b!47322 () Bool)

(assert (=> b!47322 (= e!24665 0)))

(declare-fun b!47323 () Bool)

(assert (=> b!47323 (= e!24665 (+ (repr!0 (n!1347 res!17688)) 1))))

(assert (= (and d!33214 c!9969) b!47322))

(assert (= (and d!33214 (not c!9969)) b!47323))

(declare-fun m!50223 () Bool)

(assert (=> b!47323 m!50223))

(assert (=> b!47281 d!33214))

(declare-fun d!33216 () Bool)

(declare-fun lt!8611 () Int)

(assert (=> d!33216 (>= lt!8611 0)))

(declare-fun e!24666 () Int)

(assert (=> d!33216 (= lt!8611 e!24666)))

(declare-fun c!9970 () Bool)

(assert (=> d!33216 (= c!9970 (is-Zero!194 thiss!5524))))

(assert (=> d!33216 (= (repr!0 thiss!5524) lt!8611)))

(declare-fun b!47324 () Bool)

(assert (=> b!47324 (= e!24666 0)))

(declare-fun b!47325 () Bool)

(assert (=> b!47325 (= e!24666 (+ (repr!0 (n!1347 thiss!5524)) 1))))

(assert (= (and d!33216 c!9970) b!47324))

(assert (= (and d!33216 (not c!9970)) b!47325))

(declare-fun m!50225 () Bool)

(assert (=> b!47325 m!50225))

(assert (=> b!47281 d!33216))

(declare-fun d!33218 () Bool)

(declare-fun lt!8614 () Bool)

(assert (=> d!33218 (= lt!8614 (< (repr!0 thiss!5524) (repr!0 that!1123)))))

(declare-fun e!24669 () Bool)

(assert (=> d!33218 (= lt!8614 e!24669)))

(declare-fun c!9973 () Bool)

(assert (=> d!33218 (= c!9973 (and (is-Succ!191 thiss!5524) (is-Succ!191 that!1123)))))

(assert (=> d!33218 (= (<!2 thiss!5524 that!1123) lt!8614)))

(declare-fun b!47330 () Bool)

(assert (=> b!47330 (= e!24669 (<!2 (n!1347 thiss!5524) (n!1347 that!1123)))))

(declare-fun b!47331 () Bool)

(assert (=> b!47331 (= e!24669 (and (is-Zero!194 thiss!5524) (is-Succ!191 that!1123)))))

(assert (= (and d!33218 c!9973) b!47330))

(assert (= (and d!33218 (not c!9973)) b!47331))

(assert (=> d!33218 m!50201))

(declare-fun m!50227 () Bool)

(assert (=> d!33218 m!50227))

(declare-fun m!50229 () Bool)

(assert (=> b!47330 m!50229))

(assert (=> b!47284 d!33218))

(declare-fun d!33220 () Bool)

(declare-fun res!22236 () Bool)

(declare-fun e!24670 () Bool)

(assert (=> d!33220 (=> (not res!22236) (not e!24670))))

(assert (=> d!33220 (= res!22236 (not (<!2 that!1123 Zero!194)))))

(assert (=> d!33220 (= (>!2 that!1123 Zero!194) e!24670)))

(declare-fun b!47332 () Bool)

(assert (=> b!47332 (= e!24670 (not (= that!1123 Zero!194)))))

(assert (= (and d!33220 res!22236) b!47332))

(declare-fun m!50231 () Bool)

(assert (=> d!33220 m!50231))

(assert (=> start!6360 d!33220))

(declare-fun d!33222 () Bool)

(declare-fun res!22237 () Bool)

(declare-fun e!24671 () Bool)

(assert (=> d!33222 (=> (not res!22237) (not e!24671))))

(assert (=> d!33222 (= res!22237 (not (<!2 that!1123 (Succ!191 Zero!194))))))

(assert (=> d!33222 (= (>!2 that!1123 (Succ!191 Zero!194)) e!24671)))

(declare-fun b!47333 () Bool)

(assert (=> b!47333 (= e!24671 (not (= that!1123 (Succ!191 Zero!194))))))

(assert (= (and d!33222 res!22237) b!47333))

(declare-fun m!50233 () Bool)

(assert (=> d!33222 m!50233))

(assert (=> b!47280 d!33222))

(assert (=> b!47282 d!33214))

(assert (=> b!47282 d!33216))

(push 1)

(assert (not d!33208))

(assert (not b!47313))

(assert (not b!47323))

(assert (not d!33220))

(assert (not b!47330))

(assert (not d!33218))

(assert (not d!33212))

(assert (not d!33210))

(assert (not b!47310))

(assert (not b!47295))

(assert (not b!47296))

(assert (not b!47325))

(assert (not b!47298))

(assert (not b!47311))

(assert (not b!47297))

(assert (not b!47312))

(assert (not d!33222))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!33224 () Bool)

(declare-fun lt!8615 () Int)

(assert (=> d!33224 (>= lt!8615 0)))

(declare-fun e!24672 () Int)

(assert (=> d!33224 (= lt!8615 e!24672)))

(declare-fun c!9974 () Bool)

(assert (=> d!33224 (= c!9974 (is-Zero!194 lt!8604))))

(assert (=> d!33224 (= (repr!0 lt!8604) lt!8615)))

(declare-fun b!47334 () Bool)

(assert (=> b!47334 (= e!24672 0)))

(declare-fun b!47335 () Bool)

(assert (=> b!47335 (= e!24672 (+ (repr!0 (n!1347 lt!8604)) 1))))

(assert (= (and d!33224 c!9974) b!47334))

(assert (= (and d!33224 (not c!9974)) b!47335))

(declare-fun m!50235 () Bool)

(assert (=> b!47335 m!50235))

(assert (=> d!33208 d!33224))

(declare-fun d!33226 () Bool)

(declare-fun lt!8616 () Int)

(assert (=> d!33226 (>= lt!8616 0)))

(declare-fun e!24673 () Int)

(assert (=> d!33226 (= lt!8616 e!24673)))

(declare-fun c!9975 () Bool)

(assert (=> d!33226 (= c!9975 (is-Zero!194 (-!4 thiss!5524 that!1123)))))

(assert (=> d!33226 (= (repr!0 (-!4 thiss!5524 that!1123)) lt!8616)))

(declare-fun b!47336 () Bool)

(assert (=> b!47336 (= e!24673 0)))

(declare-fun b!47337 () Bool)

(assert (=> b!47337 (= e!24673 (+ (repr!0 (n!1347 (-!4 thiss!5524 that!1123))) 1))))

(assert (= (and d!33226 c!9975) b!47336))

(assert (= (and d!33226 (not c!9975)) b!47337))

(declare-fun m!50237 () Bool)

(assert (=> b!47337 m!50237))

(assert (=> d!33208 d!33226))

(declare-fun d!33228 () Bool)

(declare-fun lt!8617 () Bool)

(assert (=> d!33228 (= lt!8617 (< (repr!0 (-!4 thiss!5524 that!1123)) (repr!0 that!1123)))))

(declare-fun e!24674 () Bool)

(assert (=> d!33228 (= lt!8617 e!24674)))

(declare-fun c!9976 () Bool)

(assert (=> d!33228 (= c!9976 (and (is-Succ!191 (-!4 thiss!5524 that!1123)) (is-Succ!191 that!1123)))))

(assert (=> d!33228 (= (<!2 (-!4 thiss!5524 that!1123) that!1123) lt!8617)))

(declare-fun b!47338 () Bool)

(assert (=> b!47338 (= e!24674 (<!2 (n!1347 (-!4 thiss!5524 that!1123)) (n!1347 that!1123)))))

(declare-fun b!47339 () Bool)

(assert (=> b!47339 (= e!24674 (and (is-Zero!194 (-!4 thiss!5524 that!1123)) (is-Succ!191 that!1123)))))

(assert (= (and d!33228 c!9976) b!47338))

(assert (= (and d!33228 (not c!9976)) b!47339))

(assert (=> d!33228 m!50189))

(assert (=> d!33228 m!50209))

(assert (=> d!33228 m!50227))

(declare-fun m!50239 () Bool)

(assert (=> b!47338 m!50239))

(assert (=> d!33208 d!33228))

(assert (=> d!33208 d!33220))

(declare-fun d!33230 () Bool)

(declare-fun res!22238 () Bool)

(declare-fun e!24675 () Bool)

(assert (=> d!33230 (=> (not res!22238) (not e!24675))))

(assert (=> d!33230 (= res!22238 (not (<!2 (-!4 thiss!5524 that!1123) Zero!194)))))

(assert (=> d!33230 (= (>!2 (-!4 thiss!5524 that!1123) Zero!194) e!24675)))

(declare-fun b!47340 () Bool)

(assert (=> b!47340 (= e!24675 (not (= (-!4 thiss!5524 that!1123) Zero!194)))))

(assert (= (and d!33230 res!22238) b!47340))

(assert (=> d!33230 m!50189))

(declare-fun m!50241 () Bool)

(assert (=> d!33230 m!50241))

(assert (=> b!47297 d!33230))

(declare-fun d!33232 () Bool)

(declare-fun e!24678 () Bool)

(assert (=> d!33232 e!24678))

(declare-fun res!22239 () Bool)

(assert (=> d!33232 (=> (not res!22239) (not e!24678))))

(declare-fun lt!8618 () Nat!210)

(assert (=> d!33232 (= res!22239 (<= (repr!0 lt!8618) (repr!0 (-!4 (-!4 thiss!5524 that!1123) that!1123))))))

(declare-fun e!24677 () Nat!210)

(assert (=> d!33232 (= lt!8618 e!24677)))

(declare-fun c!9977 () Bool)

(assert (=> d!33232 (= c!9977 (<!2 (-!4 (-!4 thiss!5524 that!1123) that!1123) that!1123))))

(assert (=> d!33232 (>!2 that!1123 Zero!194)))

(assert (=> d!33232 (= (/!2 (-!4 (-!4 thiss!5524 that!1123) that!1123) that!1123) lt!8618)))

(declare-fun e!24676 () Bool)

(declare-fun b!47341 () Bool)

(assert (=> b!47341 (= e!24676 (< (repr!0 lt!8618) (repr!0 (-!4 (-!4 thiss!5524 that!1123) that!1123))))))

(declare-fun b!47342 () Bool)

(declare-fun res!22240 () Bool)

(assert (=> b!47342 (=> res!22240 e!24676)))

(assert (=> b!47342 (= res!22240 (not (>!2 that!1123 (Succ!191 Zero!194))))))

(declare-fun b!47343 () Bool)

(assert (=> b!47343 (= e!24678 e!24676)))

(declare-fun res!22241 () Bool)

(assert (=> b!47343 (=> res!22241 e!24676)))

(assert (=> b!47343 (= res!22241 (not (>!2 (-!4 (-!4 thiss!5524 that!1123) that!1123) Zero!194)))))

(declare-fun b!47344 () Bool)

(assert (=> b!47344 (= e!24677 (Succ!191 (/!2 (-!4 (-!4 (-!4 thiss!5524 that!1123) that!1123) that!1123) that!1123)))))

(declare-fun b!47345 () Bool)

(assert (=> b!47345 (= e!24677 Zero!194)))

(assert (= (and d!33232 c!9977) b!47345))

(assert (= (and d!33232 (not c!9977)) b!47344))

(assert (= (and d!33232 res!22239) b!47343))

(assert (= (and b!47343 (not res!22241)) b!47342))

(assert (= (and b!47342 (not res!22240)) b!47341))

(assert (=> b!47343 m!50213))

(declare-fun m!50243 () Bool)

(assert (=> b!47343 m!50243))

(declare-fun m!50245 () Bool)

(assert (=> d!33232 m!50245))

(assert (=> d!33232 m!50213))

(declare-fun m!50247 () Bool)

(assert (=> d!33232 m!50247))

(assert (=> d!33232 m!50213))

(declare-fun m!50249 () Bool)

(assert (=> d!33232 m!50249))

(assert (=> d!33232 m!50197))

(assert (=> b!47342 m!50203))

(assert (=> b!47341 m!50245))

(assert (=> b!47341 m!50213))

(assert (=> b!47341 m!50247))

(assert (=> b!47344 m!50213))

(declare-fun m!50251 () Bool)

(assert (=> b!47344 m!50251))

(assert (=> b!47344 m!50251))

(declare-fun m!50253 () Bool)

(assert (=> b!47344 m!50253))

(assert (=> b!47298 d!33232))

(declare-fun b!47346 () Bool)

(declare-fun e!24681 () Nat!210)

(assert (=> b!47346 (= e!24681 (-!4 (n!1347 (-!4 thiss!5524 that!1123)) (n!1347 that!1123)))))

(declare-fun b!47347 () Bool)

(declare-fun res!22243 () Bool)

(declare-fun e!24680 () Bool)

(assert (=> b!47347 (=> res!22243 e!24680)))

(assert (=> b!47347 (= res!22243 (not (>!2 that!1123 Zero!194)))))

(declare-fun b!47348 () Bool)

(declare-fun e!24679 () Bool)

(assert (=> b!47348 (= e!24679 e!24680)))

(declare-fun res!22242 () Bool)

(assert (=> b!47348 (=> res!22242 e!24680)))

(assert (=> b!47348 (= res!22242 (not (>!2 (-!4 thiss!5524 that!1123) Zero!194)))))

(declare-fun lt!8619 () Nat!210)

(declare-fun b!47349 () Bool)

(assert (=> b!47349 (= e!24680 (< (repr!0 lt!8619) (repr!0 (-!4 thiss!5524 that!1123))))))

(declare-fun b!47350 () Bool)

(assert (=> b!47350 (= e!24681 (-!4 thiss!5524 that!1123))))

(declare-fun d!33234 () Bool)

(assert (=> d!33234 e!24679))

(declare-fun res!22244 () Bool)

(assert (=> d!33234 (=> (not res!22244) (not e!24679))))

(assert (=> d!33234 (= res!22244 (<= (repr!0 lt!8619) (repr!0 (-!4 thiss!5524 that!1123))))))

(assert (=> d!33234 (= lt!8619 e!24681)))

(declare-fun c!9978 () Bool)

(assert (=> d!33234 (= c!9978 (and (is-Succ!191 (-!4 thiss!5524 that!1123)) (is-Succ!191 that!1123)))))

(assert (=> d!33234 (= (-!4 (-!4 thiss!5524 that!1123) that!1123) lt!8619)))

(assert (= (and d!33234 c!9978) b!47346))

(assert (= (and d!33234 (not c!9978)) b!47350))

(assert (= (and d!33234 res!22244) b!47348))

(assert (= (and b!47348 (not res!22242)) b!47347))

(assert (= (and b!47347 (not res!22243)) b!47349))

(assert (=> b!47348 m!50189))

(assert (=> b!47348 m!50205))

(declare-fun m!50255 () Bool)

(assert (=> b!47349 m!50255))

(assert (=> b!47349 m!50189))

(assert (=> b!47349 m!50209))

(assert (=> d!33234 m!50255))

(assert (=> d!33234 m!50189))

(assert (=> d!33234 m!50209))

(declare-fun m!50257 () Bool)

(assert (=> b!47346 m!50257))

(assert (=> b!47347 m!50197))

(assert (=> b!47298 d!33234))

(declare-fun d!33236 () Bool)

(declare-fun lt!8620 () Bool)

(assert (=> d!33236 (= lt!8620 (< (repr!0 that!1123) (repr!0 Zero!194)))))

(declare-fun e!24682 () Bool)

(assert (=> d!33236 (= lt!8620 e!24682)))

(declare-fun c!9979 () Bool)

(assert (=> d!33236 (= c!9979 (and (is-Succ!191 that!1123) (is-Succ!191 Zero!194)))))

(assert (=> d!33236 (= (<!2 that!1123 Zero!194) lt!8620)))

(declare-fun b!47351 () Bool)

(assert (=> b!47351 (= e!24682 (<!2 (n!1347 that!1123) (n!1347 Zero!194)))))

(declare-fun b!47352 () Bool)

(assert (=> b!47352 (= e!24682 (and (is-Zero!194 that!1123) (is-Succ!191 Zero!194)))))

(assert (= (and d!33236 c!9979) b!47351))

(assert (= (and d!33236 (not c!9979)) b!47352))

(assert (=> d!33236 m!50227))

(declare-fun m!50259 () Bool)

(assert (=> d!33236 m!50259))

(declare-fun m!50261 () Bool)

(assert (=> b!47351 m!50261))

(assert (=> d!33220 d!33236))

(assert (=> b!47311 d!33220))

(assert (=> b!47296 d!33222))

(declare-fun d!33238 () Bool)

(declare-fun lt!8621 () Int)

(assert (=> d!33238 (>= lt!8621 0)))

(declare-fun e!24683 () Int)

(assert (=> d!33238 (= lt!8621 e!24683)))

(declare-fun c!9980 () Bool)

(assert (=> d!33238 (= c!9980 (is-Zero!194 (n!1347 res!17688)))))

(assert (=> d!33238 (= (repr!0 (n!1347 res!17688)) lt!8621)))

(declare-fun b!47353 () Bool)

(assert (=> b!47353 (= e!24683 0)))

(declare-fun b!47354 () Bool)

(assert (=> b!47354 (= e!24683 (+ (repr!0 (n!1347 (n!1347 res!17688))) 1))))

(assert (= (and d!33238 c!9980) b!47353))

(assert (= (and d!33238 (not c!9980)) b!47354))

(declare-fun m!50263 () Bool)

(assert (=> b!47354 m!50263))

(assert (=> b!47323 d!33238))

(declare-fun d!33240 () Bool)

(declare-fun lt!8622 () Bool)

(assert (=> d!33240 (= lt!8622 (< (repr!0 that!1123) (repr!0 (Succ!191 Zero!194))))))

(declare-fun e!24684 () Bool)

(assert (=> d!33240 (= lt!8622 e!24684)))

(declare-fun c!9981 () Bool)

(assert (=> d!33240 (= c!9981 (and (is-Succ!191 that!1123) (is-Succ!191 (Succ!191 Zero!194))))))

(assert (=> d!33240 (= (<!2 that!1123 (Succ!191 Zero!194)) lt!8622)))

(declare-fun b!47355 () Bool)

(assert (=> b!47355 (= e!24684 (<!2 (n!1347 that!1123) (n!1347 (Succ!191 Zero!194))))))

(declare-fun b!47356 () Bool)

(assert (=> b!47356 (= e!24684 (and (is-Zero!194 that!1123) (is-Succ!191 (Succ!191 Zero!194))))))

(assert (= (and d!33240 c!9981) b!47355))

(assert (= (and d!33240 (not c!9981)) b!47356))

(assert (=> d!33240 m!50227))

(declare-fun m!50265 () Bool)

(assert (=> d!33240 m!50265))

(declare-fun m!50267 () Bool)

(assert (=> b!47355 m!50267))

(assert (=> d!33222 d!33240))

(declare-fun b!47357 () Bool)

(declare-fun e!24687 () Nat!210)

(assert (=> b!47357 (= e!24687 (-!4 (n!1347 (n!1347 thiss!5524)) (n!1347 (n!1347 that!1123))))))

(declare-fun b!47358 () Bool)

(declare-fun res!22246 () Bool)

(declare-fun e!24686 () Bool)

(assert (=> b!47358 (=> res!22246 e!24686)))

(assert (=> b!47358 (= res!22246 (not (>!2 (n!1347 that!1123) Zero!194)))))

(declare-fun b!47359 () Bool)

(declare-fun e!24685 () Bool)

(assert (=> b!47359 (= e!24685 e!24686)))

(declare-fun res!22245 () Bool)

(assert (=> b!47359 (=> res!22245 e!24686)))

(assert (=> b!47359 (= res!22245 (not (>!2 (n!1347 thiss!5524) Zero!194)))))

(declare-fun b!47360 () Bool)

(declare-fun lt!8623 () Nat!210)

(assert (=> b!47360 (= e!24686 (< (repr!0 lt!8623) (repr!0 (n!1347 thiss!5524))))))

(declare-fun b!47361 () Bool)

(assert (=> b!47361 (= e!24687 (n!1347 thiss!5524))))

(declare-fun d!33242 () Bool)

(assert (=> d!33242 e!24685))

(declare-fun res!22247 () Bool)

(assert (=> d!33242 (=> (not res!22247) (not e!24685))))

(assert (=> d!33242 (= res!22247 (<= (repr!0 lt!8623) (repr!0 (n!1347 thiss!5524))))))

(assert (=> d!33242 (= lt!8623 e!24687)))

(declare-fun c!9982 () Bool)

(assert (=> d!33242 (= c!9982 (and (is-Succ!191 (n!1347 thiss!5524)) (is-Succ!191 (n!1347 that!1123))))))

(assert (=> d!33242 (= (-!4 (n!1347 thiss!5524) (n!1347 that!1123)) lt!8623)))

(assert (= (and d!33242 c!9982) b!47357))

(assert (= (and d!33242 (not c!9982)) b!47361))

(assert (= (and d!33242 res!22247) b!47359))

(assert (= (and b!47359 (not res!22245)) b!47358))

(assert (= (and b!47358 (not res!22246)) b!47360))

(declare-fun m!50269 () Bool)

(assert (=> b!47359 m!50269))

(declare-fun m!50271 () Bool)

(assert (=> b!47360 m!50271))

(assert (=> b!47360 m!50225))

(assert (=> d!33242 m!50271))

(assert (=> d!33242 m!50225))

(declare-fun m!50273 () Bool)

(assert (=> b!47357 m!50273))

(declare-fun m!50275 () Bool)

(assert (=> b!47358 m!50275))

(assert (=> b!47310 d!33242))

(declare-fun d!33244 () Bool)

(declare-fun lt!8624 () Int)

(assert (=> d!33244 (>= lt!8624 0)))

(declare-fun e!24688 () Int)

(assert (=> d!33244 (= lt!8624 e!24688)))

(declare-fun c!9983 () Bool)

(assert (=> d!33244 (= c!9983 (is-Zero!194 lt!8607))))

(assert (=> d!33244 (= (repr!0 lt!8607) lt!8624)))

(declare-fun b!47362 () Bool)

(assert (=> b!47362 (= e!24688 0)))

(declare-fun b!47363 () Bool)

(assert (=> b!47363 (= e!24688 (+ (repr!0 (n!1347 lt!8607)) 1))))

(assert (= (and d!33244 c!9983) b!47362))

(assert (= (and d!33244 (not c!9983)) b!47363))

(declare-fun m!50277 () Bool)

(assert (=> b!47363 m!50277))

(assert (=> d!33210 d!33244))

(assert (=> d!33210 d!33216))

(declare-fun d!33246 () Bool)

(declare-fun lt!8625 () Int)

(assert (=> d!33246 (>= lt!8625 0)))

(declare-fun e!24689 () Int)

(assert (=> d!33246 (= lt!8625 e!24689)))

(declare-fun c!9984 () Bool)

(assert (=> d!33246 (= c!9984 (is-Zero!194 (n!1347 thiss!5524)))))

(assert (=> d!33246 (= (repr!0 (n!1347 thiss!5524)) lt!8625)))

(declare-fun b!47364 () Bool)

(assert (=> b!47364 (= e!24689 0)))

(declare-fun b!47365 () Bool)

(assert (=> b!47365 (= e!24689 (+ (repr!0 (n!1347 (n!1347 thiss!5524))) 1))))

(assert (= (and d!33246 c!9984) b!47364))

(assert (= (and d!33246 (not c!9984)) b!47365))

(declare-fun m!50279 () Bool)

(assert (=> b!47365 m!50279))

(assert (=> b!47325 d!33246))

(declare-fun d!33248 () Bool)

(declare-fun lt!8626 () Bool)

(assert (=> d!33248 (= lt!8626 (< (repr!0 thiss!5524) (repr!0 Zero!194)))))

(declare-fun e!24690 () Bool)

(assert (=> d!33248 (= lt!8626 e!24690)))

(declare-fun c!9985 () Bool)

(assert (=> d!33248 (= c!9985 (and (is-Succ!191 thiss!5524) (is-Succ!191 Zero!194)))))

(assert (=> d!33248 (= (<!2 thiss!5524 Zero!194) lt!8626)))

(declare-fun b!47366 () Bool)

(assert (=> b!47366 (= e!24690 (<!2 (n!1347 thiss!5524) (n!1347 Zero!194)))))

(declare-fun b!47367 () Bool)

(assert (=> b!47367 (= e!24690 (and (is-Zero!194 thiss!5524) (is-Succ!191 Zero!194)))))

(assert (= (and d!33248 c!9985) b!47366))

(assert (= (and d!33248 (not c!9985)) b!47367))

(assert (=> d!33248 m!50201))

(assert (=> d!33248 m!50259))

(declare-fun m!50281 () Bool)

(assert (=> b!47366 m!50281))

(assert (=> d!33212 d!33248))

(assert (=> b!47295 d!33224))

(assert (=> b!47295 d!33226))

(declare-fun d!33250 () Bool)

(declare-fun lt!8627 () Bool)

(assert (=> d!33250 (= lt!8627 (< (repr!0 (n!1347 thiss!5524)) (repr!0 (n!1347 that!1123))))))

(declare-fun e!24691 () Bool)

(assert (=> d!33250 (= lt!8627 e!24691)))

(declare-fun c!9986 () Bool)

(assert (=> d!33250 (= c!9986 (and (is-Succ!191 (n!1347 thiss!5524)) (is-Succ!191 (n!1347 that!1123))))))

(assert (=> d!33250 (= (<!2 (n!1347 thiss!5524) (n!1347 that!1123)) lt!8627)))

(declare-fun b!47368 () Bool)

(assert (=> b!47368 (= e!24691 (<!2 (n!1347 (n!1347 thiss!5524)) (n!1347 (n!1347 that!1123))))))

(declare-fun b!47369 () Bool)

(assert (=> b!47369 (= e!24691 (and (is-Zero!194 (n!1347 thiss!5524)) (is-Succ!191 (n!1347 that!1123))))))

(assert (= (and d!33250 c!9986) b!47368))

(assert (= (and d!33250 (not c!9986)) b!47369))

(assert (=> d!33250 m!50225))

(declare-fun m!50283 () Bool)

(assert (=> d!33250 m!50283))

(declare-fun m!50285 () Bool)

(assert (=> b!47368 m!50285))

(assert (=> b!47330 d!33250))

(assert (=> b!47313 d!33244))

(assert (=> b!47313 d!33216))

(assert (=> d!33218 d!33216))

(declare-fun d!33252 () Bool)

(declare-fun lt!8628 () Int)

(assert (=> d!33252 (>= lt!8628 0)))

(declare-fun e!24692 () Int)

(assert (=> d!33252 (= lt!8628 e!24692)))

(declare-fun c!9987 () Bool)

(assert (=> d!33252 (= c!9987 (is-Zero!194 that!1123))))

(assert (=> d!33252 (= (repr!0 that!1123) lt!8628)))

(declare-fun b!47370 () Bool)

(assert (=> b!47370 (= e!24692 0)))

(declare-fun b!47371 () Bool)

(assert (=> b!47371 (= e!24692 (+ (repr!0 (n!1347 that!1123)) 1))))

(assert (= (and d!33252 c!9987) b!47370))

(assert (= (and d!33252 (not c!9987)) b!47371))

(assert (=> b!47371 m!50283))

(assert (=> d!33218 d!33252))

(assert (=> b!47312 d!33212))

(push 1)

(assert (not b!47365))

(assert (not b!47349))

(assert (not b!47338))

(assert (not b!47344))

(assert (not d!33228))

(assert (not b!47348))

(assert (not b!47341))

(assert (not b!47357))

(assert (not b!47335))

(assert (not b!47354))

(assert (not d!33248))

(assert (not b!47337))

(assert (not d!33234))

(assert (not b!47363))

(assert (not d!33232))

(assert (not d!33242))

(assert (not b!47351))

(assert (not b!47355))

(assert (not b!47366))

(assert (not d!33230))

(assert (not b!47343))

(assert (not d!33250))

(assert (not d!33236))

(assert (not d!33240))

(assert (not b!47359))

(assert (not b!47360))

(assert (not b!47368))

(assert (not b!47346))

(assert (not b!47347))

(assert (not b!47342))

(assert (not b!47358))

(assert (not b!47371))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!33254 () Bool)

(declare-fun lt!8629 () Int)

(assert (=> d!33254 (>= lt!8629 0)))

(declare-fun e!24693 () Int)

(assert (=> d!33254 (= lt!8629 e!24693)))

(declare-fun c!9988 () Bool)

(assert (=> d!33254 (= c!9988 (is-Zero!194 (n!1347 that!1123)))))

(assert (=> d!33254 (= (repr!0 (n!1347 that!1123)) lt!8629)))

(declare-fun b!47372 () Bool)

(assert (=> b!47372 (= e!24693 0)))

(declare-fun b!47373 () Bool)

(assert (=> b!47373 (= e!24693 (+ (repr!0 (n!1347 (n!1347 that!1123))) 1))))

(assert (= (and d!33254 c!9988) b!47372))

(assert (= (and d!33254 (not c!9988)) b!47373))

(declare-fun m!50287 () Bool)

(assert (=> b!47373 m!50287))

(assert (=> b!47371 d!33254))

(assert (=> d!33248 d!33216))

(declare-fun d!33256 () Bool)

(declare-fun lt!8630 () Int)

(assert (=> d!33256 (>= lt!8630 0)))

(declare-fun e!24694 () Int)

(assert (=> d!33256 (= lt!8630 e!24694)))

(declare-fun c!9989 () Bool)

(assert (=> d!33256 (= c!9989 (is-Zero!194 Zero!194))))

(assert (=> d!33256 (= (repr!0 Zero!194) lt!8630)))

(declare-fun b!47374 () Bool)

(assert (=> b!47374 (= e!24694 0)))

(declare-fun b!47375 () Bool)

(assert (=> b!47375 (= e!24694 (+ (repr!0 (n!1347 Zero!194)) 1))))

(assert (= (and d!33256 c!9989) b!47374))

(assert (= (and d!33256 (not c!9989)) b!47375))

(declare-fun m!50289 () Bool)

(assert (=> b!47375 m!50289))

(assert (=> d!33248 d!33256))

(declare-fun d!33258 () Bool)

(declare-fun e!24697 () Bool)

(assert (=> d!33258 e!24697))

(declare-fun res!22248 () Bool)

(assert (=> d!33258 (=> (not res!22248) (not e!24697))))

(declare-fun lt!8631 () Nat!210)

(assert (=> d!33258 (= res!22248 (<= (repr!0 lt!8631) (repr!0 (-!4 (-!4 (-!4 thiss!5524 that!1123) that!1123) that!1123))))))

(declare-fun e!24696 () Nat!210)

(assert (=> d!33258 (= lt!8631 e!24696)))

(declare-fun c!9990 () Bool)

(assert (=> d!33258 (= c!9990 (<!2 (-!4 (-!4 (-!4 thiss!5524 that!1123) that!1123) that!1123) that!1123))))

(assert (=> d!33258 (>!2 that!1123 Zero!194)))

(assert (=> d!33258 (= (/!2 (-!4 (-!4 (-!4 thiss!5524 that!1123) that!1123) that!1123) that!1123) lt!8631)))

(declare-fun b!47376 () Bool)

(declare-fun e!24695 () Bool)

(assert (=> b!47376 (= e!24695 (< (repr!0 lt!8631) (repr!0 (-!4 (-!4 (-!4 thiss!5524 that!1123) that!1123) that!1123))))))

(declare-fun b!47377 () Bool)

(declare-fun res!22249 () Bool)

(assert (=> b!47377 (=> res!22249 e!24695)))

(assert (=> b!47377 (= res!22249 (not (>!2 that!1123 (Succ!191 Zero!194))))))

(declare-fun b!47378 () Bool)

(assert (=> b!47378 (= e!24697 e!24695)))

(declare-fun res!22250 () Bool)

(assert (=> b!47378 (=> res!22250 e!24695)))

(assert (=> b!47378 (= res!22250 (not (>!2 (-!4 (-!4 (-!4 thiss!5524 that!1123) that!1123) that!1123) Zero!194)))))

(declare-fun b!47379 () Bool)

(assert (=> b!47379 (= e!24696 (Succ!191 (/!2 (-!4 (-!4 (-!4 (-!4 thiss!5524 that!1123) that!1123) that!1123) that!1123) that!1123)))))

(declare-fun b!47380 () Bool)

(assert (=> b!47380 (= e!24696 Zero!194)))

(assert (= (and d!33258 c!9990) b!47380))

(assert (= (and d!33258 (not c!9990)) b!47379))

(assert (= (and d!33258 res!22248) b!47378))

(assert (= (and b!47378 (not res!22250)) b!47377))

(assert (= (and b!47377 (not res!22249)) b!47376))

(assert (=> b!47378 m!50251))

(declare-fun m!50291 () Bool)

(assert (=> b!47378 m!50291))

(declare-fun m!50293 () Bool)

(assert (=> d!33258 m!50293))

(assert (=> d!33258 m!50251))

(declare-fun m!50295 () Bool)

(assert (=> d!33258 m!50295))

(assert (=> d!33258 m!50251))

(declare-fun m!50297 () Bool)

(assert (=> d!33258 m!50297))

(assert (=> d!33258 m!50197))

(assert (=> b!47377 m!50203))

(assert (=> b!47376 m!50293))

(assert (=> b!47376 m!50251))

(assert (=> b!47376 m!50295))

(assert (=> b!47379 m!50251))

(declare-fun m!50299 () Bool)

(assert (=> b!47379 m!50299))

(assert (=> b!47379 m!50299))

(declare-fun m!50301 () Bool)

(assert (=> b!47379 m!50301))

(assert (=> b!47344 d!33258))

(declare-fun b!47381 () Bool)

(declare-fun e!24700 () Nat!210)

(assert (=> b!47381 (= e!24700 (-!4 (n!1347 (-!4 (-!4 thiss!5524 that!1123) that!1123)) (n!1347 that!1123)))))

(declare-fun b!47382 () Bool)

(declare-fun res!22252 () Bool)

(declare-fun e!24699 () Bool)

(assert (=> b!47382 (=> res!22252 e!24699)))

(assert (=> b!47382 (= res!22252 (not (>!2 that!1123 Zero!194)))))

(declare-fun b!47383 () Bool)

(declare-fun e!24698 () Bool)

(assert (=> b!47383 (= e!24698 e!24699)))

(declare-fun res!22251 () Bool)

(assert (=> b!47383 (=> res!22251 e!24699)))

(assert (=> b!47383 (= res!22251 (not (>!2 (-!4 (-!4 thiss!5524 that!1123) that!1123) Zero!194)))))

(declare-fun b!47384 () Bool)

(declare-fun lt!8632 () Nat!210)

(assert (=> b!47384 (= e!24699 (< (repr!0 lt!8632) (repr!0 (-!4 (-!4 thiss!5524 that!1123) that!1123))))))

(declare-fun b!47385 () Bool)

(assert (=> b!47385 (= e!24700 (-!4 (-!4 thiss!5524 that!1123) that!1123))))

(declare-fun d!33260 () Bool)

(assert (=> d!33260 e!24698))

(declare-fun res!22253 () Bool)

(assert (=> d!33260 (=> (not res!22253) (not e!24698))))

(assert (=> d!33260 (= res!22253 (<= (repr!0 lt!8632) (repr!0 (-!4 (-!4 thiss!5524 that!1123) that!1123))))))

(assert (=> d!33260 (= lt!8632 e!24700)))

(declare-fun c!9991 () Bool)

(assert (=> d!33260 (= c!9991 (and (is-Succ!191 (-!4 (-!4 thiss!5524 that!1123) that!1123)) (is-Succ!191 that!1123)))))

(assert (=> d!33260 (= (-!4 (-!4 (-!4 thiss!5524 that!1123) that!1123) that!1123) lt!8632)))

(assert (= (and d!33260 c!9991) b!47381))

(assert (= (and d!33260 (not c!9991)) b!47385))

(assert (= (and d!33260 res!22253) b!47383))

(assert (= (and b!47383 (not res!22251)) b!47382))

(assert (= (and b!47382 (not res!22252)) b!47384))

(assert (=> b!47383 m!50213))

(assert (=> b!47383 m!50243))

(declare-fun m!50303 () Bool)

(assert (=> b!47384 m!50303))

(assert (=> b!47384 m!50213))

(assert (=> b!47384 m!50247))

(assert (=> d!33260 m!50303))

(assert (=> d!33260 m!50213))

(assert (=> d!33260 m!50247))

(declare-fun m!50305 () Bool)

(assert (=> b!47381 m!50305))

(assert (=> b!47382 m!50197))

(assert (=> b!47344 d!33260))

(declare-fun d!33262 () Bool)

(declare-fun lt!8633 () Int)

(assert (=> d!33262 (>= lt!8633 0)))

(declare-fun e!24701 () Int)

(assert (=> d!33262 (= lt!8633 e!24701)))

(declare-fun c!9992 () Bool)

(assert (=> d!33262 (= c!9992 (is-Zero!194 (n!1347 lt!8604)))))

(assert (=> d!33262 (= (repr!0 (n!1347 lt!8604)) lt!8633)))

(declare-fun b!47386 () Bool)

(assert (=> b!47386 (= e!24701 0)))

(declare-fun b!47387 () Bool)

(assert (=> b!47387 (= e!24701 (+ (repr!0 (n!1347 (n!1347 lt!8604))) 1))))

(assert (= (and d!33262 c!9992) b!47386))

(assert (= (and d!33262 (not c!9992)) b!47387))

(declare-fun m!50307 () Bool)

(assert (=> b!47387 m!50307))

(assert (=> b!47335 d!33262))

(declare-fun d!33264 () Bool)

(declare-fun lt!8634 () Int)

(assert (=> d!33264 (>= lt!8634 0)))

(declare-fun e!24702 () Int)

(assert (=> d!33264 (= lt!8634 e!24702)))

(declare-fun c!9993 () Bool)

(assert (=> d!33264 (= c!9993 (is-Zero!194 lt!8619))))

(assert (=> d!33264 (= (repr!0 lt!8619) lt!8634)))

(declare-fun b!47388 () Bool)

(assert (=> b!47388 (= e!24702 0)))

(declare-fun b!47389 () Bool)

(assert (=> b!47389 (= e!24702 (+ (repr!0 (n!1347 lt!8619)) 1))))

(assert (= (and d!33264 c!9993) b!47388))

(assert (= (and d!33264 (not c!9993)) b!47389))

(declare-fun m!50309 () Bool)

(assert (=> b!47389 m!50309))

(assert (=> d!33234 d!33264))

(assert (=> d!33234 d!33226))

(declare-fun b!47390 () Bool)

(declare-fun e!24705 () Nat!210)

(assert (=> b!47390 (= e!24705 (-!4 (n!1347 (n!1347 (n!1347 thiss!5524))) (n!1347 (n!1347 (n!1347 that!1123)))))))

(declare-fun b!47391 () Bool)

(declare-fun res!22255 () Bool)

(declare-fun e!24704 () Bool)

(assert (=> b!47391 (=> res!22255 e!24704)))

(assert (=> b!47391 (= res!22255 (not (>!2 (n!1347 (n!1347 that!1123)) Zero!194)))))

(declare-fun b!47392 () Bool)

(declare-fun e!24703 () Bool)

(assert (=> b!47392 (= e!24703 e!24704)))

(declare-fun res!22254 () Bool)

(assert (=> b!47392 (=> res!22254 e!24704)))

(assert (=> b!47392 (= res!22254 (not (>!2 (n!1347 (n!1347 thiss!5524)) Zero!194)))))

(declare-fun b!47393 () Bool)

(declare-fun lt!8635 () Nat!210)

(assert (=> b!47393 (= e!24704 (< (repr!0 lt!8635) (repr!0 (n!1347 (n!1347 thiss!5524)))))))

(declare-fun b!47394 () Bool)

(assert (=> b!47394 (= e!24705 (n!1347 (n!1347 thiss!5524)))))

(declare-fun d!33266 () Bool)

(assert (=> d!33266 e!24703))

(declare-fun res!22256 () Bool)

(assert (=> d!33266 (=> (not res!22256) (not e!24703))))

(assert (=> d!33266 (= res!22256 (<= (repr!0 lt!8635) (repr!0 (n!1347 (n!1347 thiss!5524)))))))

(assert (=> d!33266 (= lt!8635 e!24705)))

(declare-fun c!9994 () Bool)

(assert (=> d!33266 (= c!9994 (and (is-Succ!191 (n!1347 (n!1347 thiss!5524))) (is-Succ!191 (n!1347 (n!1347 that!1123)))))))

(assert (=> d!33266 (= (-!4 (n!1347 (n!1347 thiss!5524)) (n!1347 (n!1347 that!1123))) lt!8635)))

(assert (= (and d!33266 c!9994) b!47390))

(assert (= (and d!33266 (not c!9994)) b!47394))

(assert (= (and d!33266 res!22256) b!47392))

(assert (= (and b!47392 (not res!22254)) b!47391))

(assert (= (and b!47391 (not res!22255)) b!47393))

(declare-fun m!50311 () Bool)

(assert (=> b!47392 m!50311))

(declare-fun m!50313 () Bool)

(assert (=> b!47393 m!50313))

(assert (=> b!47393 m!50279))

(assert (=> d!33266 m!50313))

(assert (=> d!33266 m!50279))

(declare-fun m!50315 () Bool)

(assert (=> b!47390 m!50315))

(declare-fun m!50317 () Bool)

(assert (=> b!47391 m!50317))

(assert (=> b!47357 d!33266))

(declare-fun d!33268 () Bool)

(declare-fun lt!8636 () Bool)

(assert (=> d!33268 (= lt!8636 (< (repr!0 (n!1347 that!1123)) (repr!0 (n!1347 (Succ!191 Zero!194)))))))

(declare-fun e!24706 () Bool)

(assert (=> d!33268 (= lt!8636 e!24706)))

(declare-fun c!9995 () Bool)

(assert (=> d!33268 (= c!9995 (and (is-Succ!191 (n!1347 that!1123)) (is-Succ!191 (n!1347 (Succ!191 Zero!194)))))))

(assert (=> d!33268 (= (<!2 (n!1347 that!1123) (n!1347 (Succ!191 Zero!194))) lt!8636)))

(declare-fun b!47395 () Bool)

(assert (=> b!47395 (= e!24706 (<!2 (n!1347 (n!1347 that!1123)) (n!1347 (n!1347 (Succ!191 Zero!194)))))))

(declare-fun b!47396 () Bool)

(assert (=> b!47396 (= e!24706 (and (is-Zero!194 (n!1347 that!1123)) (is-Succ!191 (n!1347 (Succ!191 Zero!194)))))))

(assert (= (and d!33268 c!9995) b!47395))

(assert (= (and d!33268 (not c!9995)) b!47396))

(assert (=> d!33268 m!50283))

(declare-fun m!50319 () Bool)

(assert (=> d!33268 m!50319))

(declare-fun m!50321 () Bool)

(assert (=> b!47395 m!50321))

(assert (=> b!47355 d!33268))

(assert (=> b!47347 d!33220))

(declare-fun d!33270 () Bool)

(declare-fun lt!8637 () Int)

(assert (=> d!33270 (>= lt!8637 0)))

(declare-fun e!24707 () Int)

(assert (=> d!33270 (= lt!8637 e!24707)))

(declare-fun c!9996 () Bool)

(assert (=> d!33270 (= c!9996 (is-Zero!194 lt!8618))))

(assert (=> d!33270 (= (repr!0 lt!8618) lt!8637)))

(declare-fun b!47397 () Bool)

(assert (=> b!47397 (= e!24707 0)))

(declare-fun b!47398 () Bool)

(assert (=> b!47398 (= e!24707 (+ (repr!0 (n!1347 lt!8618)) 1))))

(assert (= (and d!33270 c!9996) b!47397))

(assert (= (and d!33270 (not c!9996)) b!47398))

(declare-fun m!50323 () Bool)

(assert (=> b!47398 m!50323))

(assert (=> b!47341 d!33270))

(declare-fun d!33272 () Bool)

(declare-fun lt!8638 () Int)

(assert (=> d!33272 (>= lt!8638 0)))

(declare-fun e!24708 () Int)

(assert (=> d!33272 (= lt!8638 e!24708)))

(declare-fun c!9997 () Bool)

(assert (=> d!33272 (= c!9997 (is-Zero!194 (-!4 (-!4 thiss!5524 that!1123) that!1123)))))

(assert (=> d!33272 (= (repr!0 (-!4 (-!4 thiss!5524 that!1123) that!1123)) lt!8638)))

(declare-fun b!47399 () Bool)

(assert (=> b!47399 (= e!24708 0)))

(declare-fun b!47400 () Bool)

(assert (=> b!47400 (= e!24708 (+ (repr!0 (n!1347 (-!4 (-!4 thiss!5524 that!1123) that!1123))) 1))))

(assert (= (and d!33272 c!9997) b!47399))

(assert (= (and d!33272 (not c!9997)) b!47400))

(declare-fun m!50325 () Bool)

(assert (=> b!47400 m!50325))

(assert (=> b!47341 d!33272))

(declare-fun d!33274 () Bool)

(declare-fun lt!8639 () Bool)

(assert (=> d!33274 (= lt!8639 (< (repr!0 (-!4 thiss!5524 that!1123)) (repr!0 Zero!194)))))

(declare-fun e!24709 () Bool)

(assert (=> d!33274 (= lt!8639 e!24709)))

(declare-fun c!9998 () Bool)

(assert (=> d!33274 (= c!9998 (and (is-Succ!191 (-!4 thiss!5524 that!1123)) (is-Succ!191 Zero!194)))))

(assert (=> d!33274 (= (<!2 (-!4 thiss!5524 that!1123) Zero!194) lt!8639)))

(declare-fun b!47401 () Bool)

(assert (=> b!47401 (= e!24709 (<!2 (n!1347 (-!4 thiss!5524 that!1123)) (n!1347 Zero!194)))))

(declare-fun b!47402 () Bool)

(assert (=> b!47402 (= e!24709 (and (is-Zero!194 (-!4 thiss!5524 that!1123)) (is-Succ!191 Zero!194)))))

(assert (= (and d!33274 c!9998) b!47401))

(assert (= (and d!33274 (not c!9998)) b!47402))

(assert (=> d!33274 m!50189))

(assert (=> d!33274 m!50209))

(assert (=> d!33274 m!50259))

(declare-fun m!50327 () Bool)

(assert (=> b!47401 m!50327))

(assert (=> d!33230 d!33274))

(assert (=> d!33232 d!33270))

(assert (=> d!33232 d!33272))

(declare-fun d!33276 () Bool)

(declare-fun lt!8640 () Bool)

(assert (=> d!33276 (= lt!8640 (< (repr!0 (-!4 (-!4 thiss!5524 that!1123) that!1123)) (repr!0 that!1123)))))

(declare-fun e!24710 () Bool)

(assert (=> d!33276 (= lt!8640 e!24710)))

(declare-fun c!9999 () Bool)

(assert (=> d!33276 (= c!9999 (and (is-Succ!191 (-!4 (-!4 thiss!5524 that!1123) that!1123)) (is-Succ!191 that!1123)))))

(assert (=> d!33276 (= (<!2 (-!4 (-!4 thiss!5524 that!1123) that!1123) that!1123) lt!8640)))

(declare-fun b!47403 () Bool)

(assert (=> b!47403 (= e!24710 (<!2 (n!1347 (-!4 (-!4 thiss!5524 that!1123) that!1123)) (n!1347 that!1123)))))

(declare-fun b!47404 () Bool)

(assert (=> b!47404 (= e!24710 (and (is-Zero!194 (-!4 (-!4 thiss!5524 that!1123) that!1123)) (is-Succ!191 that!1123)))))

(assert (= (and d!33276 c!9999) b!47403))

(assert (= (and d!33276 (not c!9999)) b!47404))

(assert (=> d!33276 m!50213))

(assert (=> d!33276 m!50247))

(assert (=> d!33276 m!50227))

(declare-fun m!50329 () Bool)

(assert (=> b!47403 m!50329))

(assert (=> d!33232 d!33276))

(assert (=> d!33232 d!33220))

(declare-fun d!33278 () Bool)

(declare-fun lt!8641 () Int)

(assert (=> d!33278 (>= lt!8641 0)))

(declare-fun e!24711 () Int)

(assert (=> d!33278 (= lt!8641 e!24711)))

(declare-fun c!10000 () Bool)

(assert (=> d!33278 (= c!10000 (is-Zero!194 (n!1347 (n!1347 thiss!5524))))))

(assert (=> d!33278 (= (repr!0 (n!1347 (n!1347 thiss!5524))) lt!8641)))

(declare-fun b!47405 () Bool)

(assert (=> b!47405 (= e!24711 0)))

(declare-fun b!47406 () Bool)

(assert (=> b!47406 (= e!24711 (+ (repr!0 (n!1347 (n!1347 (n!1347 thiss!5524)))) 1))))

(assert (= (and d!33278 c!10000) b!47405))

(assert (= (and d!33278 (not c!10000)) b!47406))

(declare-fun m!50331 () Bool)

(assert (=> b!47406 m!50331))

(assert (=> b!47365 d!33278))

(assert (=> d!33250 d!33246))

(assert (=> d!33250 d!33254))

(assert (=> d!33236 d!33252))

(assert (=> d!33236 d!33256))

(assert (=> b!47342 d!33222))

(declare-fun d!33280 () Bool)

(declare-fun lt!8642 () Int)

(assert (=> d!33280 (>= lt!8642 0)))

(declare-fun e!24712 () Int)

(assert (=> d!33280 (= lt!8642 e!24712)))

(declare-fun c!10001 () Bool)

(assert (=> d!33280 (= c!10001 (is-Zero!194 lt!8623))))

(assert (=> d!33280 (= (repr!0 lt!8623) lt!8642)))

(declare-fun b!47407 () Bool)

(assert (=> b!47407 (= e!24712 0)))

(declare-fun b!47408 () Bool)

(assert (=> b!47408 (= e!24712 (+ (repr!0 (n!1347 lt!8623)) 1))))

(assert (= (and d!33280 c!10001) b!47407))

(assert (= (and d!33280 (not c!10001)) b!47408))

(declare-fun m!50333 () Bool)

(assert (=> b!47408 m!50333))

(assert (=> d!33242 d!33280))

(assert (=> d!33242 d!33246))

(declare-fun d!33282 () Bool)

(declare-fun lt!8643 () Bool)

(assert (=> d!33282 (= lt!8643 (< (repr!0 (n!1347 (-!4 thiss!5524 that!1123))) (repr!0 (n!1347 that!1123))))))

(declare-fun e!24713 () Bool)

(assert (=> d!33282 (= lt!8643 e!24713)))

(declare-fun c!10002 () Bool)

(assert (=> d!33282 (= c!10002 (and (is-Succ!191 (n!1347 (-!4 thiss!5524 that!1123))) (is-Succ!191 (n!1347 that!1123))))))

(assert (=> d!33282 (= (<!2 (n!1347 (-!4 thiss!5524 that!1123)) (n!1347 that!1123)) lt!8643)))

(declare-fun b!47409 () Bool)

(assert (=> b!47409 (= e!24713 (<!2 (n!1347 (n!1347 (-!4 thiss!5524 that!1123))) (n!1347 (n!1347 that!1123))))))

(declare-fun b!47410 () Bool)

(assert (=> b!47410 (= e!24713 (and (is-Zero!194 (n!1347 (-!4 thiss!5524 that!1123))) (is-Succ!191 (n!1347 that!1123))))))

(assert (= (and d!33282 c!10002) b!47409))

(assert (= (and d!33282 (not c!10002)) b!47410))

(assert (=> d!33282 m!50237))

(assert (=> d!33282 m!50283))

(declare-fun m!50335 () Bool)

(assert (=> b!47409 m!50335))

(assert (=> b!47338 d!33282))

(declare-fun d!33284 () Bool)

(declare-fun res!22257 () Bool)

(declare-fun e!24714 () Bool)

(assert (=> d!33284 (=> (not res!22257) (not e!24714))))

(assert (=> d!33284 (= res!22257 (not (<!2 (n!1347 that!1123) Zero!194)))))

(assert (=> d!33284 (= (>!2 (n!1347 that!1123) Zero!194) e!24714)))

(declare-fun b!47411 () Bool)

(assert (=> b!47411 (= e!24714 (not (= (n!1347 that!1123) Zero!194)))))

(assert (= (and d!33284 res!22257) b!47411))

(declare-fun m!50337 () Bool)

(assert (=> d!33284 m!50337))

(assert (=> b!47358 d!33284))

(declare-fun d!33286 () Bool)

(declare-fun lt!8644 () Int)

(assert (=> d!33286 (>= lt!8644 0)))

(declare-fun e!24715 () Int)

(assert (=> d!33286 (= lt!8644 e!24715)))

(declare-fun c!10003 () Bool)

(assert (=> d!33286 (= c!10003 (is-Zero!194 (n!1347 (-!4 thiss!5524 that!1123))))))

(assert (=> d!33286 (= (repr!0 (n!1347 (-!4 thiss!5524 that!1123))) lt!8644)))

(declare-fun b!47412 () Bool)

(assert (=> b!47412 (= e!24715 0)))

(declare-fun b!47413 () Bool)

(assert (=> b!47413 (= e!24715 (+ (repr!0 (n!1347 (n!1347 (-!4 thiss!5524 that!1123)))) 1))))

(assert (= (and d!33286 c!10003) b!47412))

(assert (= (and d!33286 (not c!10003)) b!47413))

(declare-fun m!50339 () Bool)

(assert (=> b!47413 m!50339))

(assert (=> b!47337 d!33286))

(declare-fun d!33288 () Bool)

(declare-fun lt!8645 () Int)

(assert (=> d!33288 (>= lt!8645 0)))

(declare-fun e!24716 () Int)

(assert (=> d!33288 (= lt!8645 e!24716)))

(declare-fun c!10004 () Bool)

(assert (=> d!33288 (= c!10004 (is-Zero!194 (n!1347 (n!1347 res!17688))))))

(assert (=> d!33288 (= (repr!0 (n!1347 (n!1347 res!17688))) lt!8645)))

(declare-fun b!47414 () Bool)

(assert (=> b!47414 (= e!24716 0)))

(declare-fun b!47415 () Bool)

(assert (=> b!47415 (= e!24716 (+ (repr!0 (n!1347 (n!1347 (n!1347 res!17688)))) 1))))

(assert (= (and d!33288 c!10004) b!47414))

(assert (= (and d!33288 (not c!10004)) b!47415))

(declare-fun m!50341 () Bool)

(assert (=> b!47415 m!50341))

(assert (=> b!47354 d!33288))

(assert (=> b!47349 d!33264))

(assert (=> b!47349 d!33226))

(declare-fun d!33290 () Bool)

(assert (not d!33290))

(assert (=> b!47366 d!33290))

(declare-fun d!33292 () Bool)

(declare-fun lt!8646 () Bool)

(assert (=> d!33292 (= lt!8646 (< (repr!0 (n!1347 (n!1347 thiss!5524))) (repr!0 (n!1347 (n!1347 that!1123)))))))

(declare-fun e!24717 () Bool)

(assert (=> d!33292 (= lt!8646 e!24717)))

(declare-fun c!10005 () Bool)

(assert (=> d!33292 (= c!10005 (and (is-Succ!191 (n!1347 (n!1347 thiss!5524))) (is-Succ!191 (n!1347 (n!1347 that!1123)))))))

(assert (=> d!33292 (= (<!2 (n!1347 (n!1347 thiss!5524)) (n!1347 (n!1347 that!1123))) lt!8646)))

(declare-fun b!47416 () Bool)

(assert (=> b!47416 (= e!24717 (<!2 (n!1347 (n!1347 (n!1347 thiss!5524))) (n!1347 (n!1347 (n!1347 that!1123)))))))

(declare-fun b!47417 () Bool)

(assert (=> b!47417 (= e!24717 (and (is-Zero!194 (n!1347 (n!1347 thiss!5524))) (is-Succ!191 (n!1347 (n!1347 that!1123)))))))

(assert (= (and d!33292 c!10005) b!47416))

(assert (= (and d!33292 (not c!10005)) b!47417))

(assert (=> d!33292 m!50279))

(assert (=> d!33292 m!50287))

(declare-fun m!50343 () Bool)

(assert (=> b!47416 m!50343))

(assert (=> b!47368 d!33292))

(declare-fun d!33294 () Bool)

(declare-fun res!22258 () Bool)

(declare-fun e!24718 () Bool)

(assert (=> d!33294 (=> (not res!22258) (not e!24718))))

(assert (=> d!33294 (= res!22258 (not (<!2 (-!4 (-!4 thiss!5524 that!1123) that!1123) Zero!194)))))

(assert (=> d!33294 (= (>!2 (-!4 (-!4 thiss!5524 that!1123) that!1123) Zero!194) e!24718)))

(declare-fun b!47418 () Bool)

(assert (=> b!47418 (= e!24718 (not (= (-!4 (-!4 thiss!5524 that!1123) that!1123) Zero!194)))))

(assert (= (and d!33294 res!22258) b!47418))

(assert (=> d!33294 m!50213))

(declare-fun m!50345 () Bool)

(assert (=> d!33294 m!50345))

(assert (=> b!47343 d!33294))

(declare-fun d!33296 () Bool)

(declare-fun lt!8647 () Int)

(assert (=> d!33296 (>= lt!8647 0)))

(declare-fun e!24719 () Int)

(assert (=> d!33296 (= lt!8647 e!24719)))

(declare-fun c!10006 () Bool)

(assert (=> d!33296 (= c!10006 (is-Zero!194 (n!1347 lt!8607)))))

(assert (=> d!33296 (= (repr!0 (n!1347 lt!8607)) lt!8647)))

(declare-fun b!47419 () Bool)

(assert (=> b!47419 (= e!24719 0)))

(declare-fun b!47420 () Bool)

(assert (=> b!47420 (= e!24719 (+ (repr!0 (n!1347 (n!1347 lt!8607))) 1))))

(assert (= (and d!33296 c!10006) b!47419))

(assert (= (and d!33296 (not c!10006)) b!47420))

(declare-fun m!50347 () Bool)

(assert (=> b!47420 m!50347))

(assert (=> b!47363 d!33296))

(assert (=> d!33228 d!33226))

(assert (=> d!33228 d!33252))

(assert (=> d!33240 d!33252))

(declare-fun d!33298 () Bool)

(declare-fun lt!8648 () Int)

(assert (=> d!33298 (>= lt!8648 0)))

(declare-fun e!24720 () Int)

(assert (=> d!33298 (= lt!8648 e!24720)))

(declare-fun c!10007 () Bool)

(assert (=> d!33298 (= c!10007 (is-Zero!194 (Succ!191 Zero!194)))))

(assert (=> d!33298 (= (repr!0 (Succ!191 Zero!194)) lt!8648)))

(declare-fun b!47421 () Bool)

(assert (=> b!47421 (= e!24720 0)))

(declare-fun b!47422 () Bool)

(assert (=> b!47422 (= e!24720 (+ (repr!0 (n!1347 (Succ!191 Zero!194))) 1))))

(assert (= (and d!33298 c!10007) b!47421))

(assert (= (and d!33298 (not c!10007)) b!47422))

(assert (=> b!47422 m!50319))

(assert (=> d!33240 d!33298))

(assert (=> b!47360 d!33280))

(assert (=> b!47360 d!33246))

(assert (=> b!47348 d!33230))

(declare-fun d!33300 () Bool)

(declare-fun res!22259 () Bool)

(declare-fun e!24721 () Bool)

(assert (=> d!33300 (=> (not res!22259) (not e!24721))))

(assert (=> d!33300 (= res!22259 (not (<!2 (n!1347 thiss!5524) Zero!194)))))

(assert (=> d!33300 (= (>!2 (n!1347 thiss!5524) Zero!194) e!24721)))

(declare-fun b!47423 () Bool)

(assert (=> b!47423 (= e!24721 (not (= (n!1347 thiss!5524) Zero!194)))))

(assert (= (and d!33300 res!22259) b!47423))

(declare-fun m!50349 () Bool)

(assert (=> d!33300 m!50349))

(assert (=> b!47359 d!33300))

(declare-fun b!47424 () Bool)

(declare-fun e!24724 () Nat!210)

(assert (=> b!47424 (= e!24724 (-!4 (n!1347 (n!1347 (-!4 thiss!5524 that!1123))) (n!1347 (n!1347 that!1123))))))

(declare-fun b!47425 () Bool)

(declare-fun res!22261 () Bool)

(declare-fun e!24723 () Bool)

(assert (=> b!47425 (=> res!22261 e!24723)))

(assert (=> b!47425 (= res!22261 (not (>!2 (n!1347 that!1123) Zero!194)))))

(declare-fun b!47426 () Bool)

(declare-fun e!24722 () Bool)

(assert (=> b!47426 (= e!24722 e!24723)))

(declare-fun res!22260 () Bool)

(assert (=> b!47426 (=> res!22260 e!24723)))

(assert (=> b!47426 (= res!22260 (not (>!2 (n!1347 (-!4 thiss!5524 that!1123)) Zero!194)))))

(declare-fun b!47427 () Bool)

(declare-fun lt!8649 () Nat!210)

(assert (=> b!47427 (= e!24723 (< (repr!0 lt!8649) (repr!0 (n!1347 (-!4 thiss!5524 that!1123)))))))

(declare-fun b!47428 () Bool)

(assert (=> b!47428 (= e!24724 (n!1347 (-!4 thiss!5524 that!1123)))))

(declare-fun d!33302 () Bool)

(assert (=> d!33302 e!24722))

(declare-fun res!22262 () Bool)

(assert (=> d!33302 (=> (not res!22262) (not e!24722))))

(assert (=> d!33302 (= res!22262 (<= (repr!0 lt!8649) (repr!0 (n!1347 (-!4 thiss!5524 that!1123)))))))

(assert (=> d!33302 (= lt!8649 e!24724)))

(declare-fun c!10008 () Bool)

(assert (=> d!33302 (= c!10008 (and (is-Succ!191 (n!1347 (-!4 thiss!5524 that!1123))) (is-Succ!191 (n!1347 that!1123))))))

(assert (=> d!33302 (= (-!4 (n!1347 (-!4 thiss!5524 that!1123)) (n!1347 that!1123)) lt!8649)))

(assert (= (and d!33302 c!10008) b!47424))

(assert (= (and d!33302 (not c!10008)) b!47428))

(assert (= (and d!33302 res!22262) b!47426))

(assert (= (and b!47426 (not res!22260)) b!47425))

(assert (= (and b!47425 (not res!22261)) b!47427))

(declare-fun m!50351 () Bool)

(assert (=> b!47426 m!50351))

(declare-fun m!50353 () Bool)

(assert (=> b!47427 m!50353))

(assert (=> b!47427 m!50237))

(assert (=> d!33302 m!50353))

(assert (=> d!33302 m!50237))

(declare-fun m!50355 () Bool)

(assert (=> b!47424 m!50355))

(assert (=> b!47425 m!50275))

(assert (=> b!47346 d!33302))

(declare-fun d!33304 () Bool)

(assert (not d!33304))

(assert (=> b!47351 d!33304))

(push 1)

(assert (not d!33268))

(assert (not b!47389))

(assert (not d!33274))

(assert (not b!47400))

(assert (not b!47420))

(assert (not b!47406))

(assert (not b!47408))

(assert (not b!47390))

(assert (not b!47392))

(assert (not b!47375))

(assert (not d!33302))

(assert (not b!47379))

(assert (not b!47391))

(assert (not d!33292))

(assert (not d!33260))

(assert (not b!47401))

(assert (not b!47413))

(assert (not d!33284))

(assert (not d!33276))

(assert (not d!33300))

(assert (not b!47383))

(assert (not b!47416))

(assert (not b!47422))

(assert (not b!47373))

(assert (not b!47398))

(assert (not b!47424))

(assert (not b!47378))

(assert (not b!47403))

(assert (not b!47381))

(assert (not b!47415))

(assert (not b!47387))

(assert (not b!47376))

(assert (not b!47384))

(assert (not b!47382))

(assert (not b!47425))

(assert (not d!33282))

(assert (not d!33258))

(assert (not b!47377))

(assert (not b!47393))

(assert (not d!33294))

(assert (not b!47409))

(assert (not b!47395))

(assert (not d!33266))

(assert (not b!47426))

(assert (not b!47427))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

