; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3810 () Bool)

(assert start!3810)

(declare-fun b!25236 () Bool)

(declare-fun res!11360 () Bool)

(declare-fun e!13003 () Bool)

(assert (=> b!25236 (=> res!11360 e!13003)))

(declare-datatypes () ((T!1817 (T!1818 (val!81 Int)))))

(declare-datatypes () ((Conc!58 (CC!57 (left!702 Conc!58) (right!705 Conc!58)) (Single!57 (x!8897 T!1817)) (Empty!68))))

(declare-fun ys!88 () Conc!58)

(declare-fun balanced!53 (Conc!58) Bool)

(assert (=> b!25236 (= res!11360 (not (balanced!53 ys!88)))))

(declare-fun b!25237 () Bool)

(declare-fun res!11362 () Bool)

(declare-fun e!13005 () Bool)

(assert (=> b!25237 (=> (not res!11362) (not e!13005))))

(declare-fun diff!6 () Int)

(assert (=> b!25237 (= res!11362 (and (or (< diff!6 (- 1)) (> diff!6 1)) (< diff!6 (- 1))))))

(declare-fun b!25238 () Bool)

(declare-fun e!13006 () Bool)

(declare-fun tp!5508 () Bool)

(declare-fun tp!5513 () Bool)

(assert (=> b!25238 (= e!13006 (and tp!5508 tp!5513))))

(declare-fun b!25239 () Bool)

(declare-fun e!13004 () Bool)

(declare-fun tp!5509 () Bool)

(declare-fun tp!5507 () Bool)

(assert (=> b!25239 (= e!13004 (and tp!5509 tp!5507))))

(declare-fun b!25240 () Bool)

(declare-fun e!13008 () Bool)

(declare-fun tp!5510 () Bool)

(declare-fun tp!5506 () Bool)

(assert (=> b!25240 (= e!13008 (and tp!5510 tp!5506))))

(declare-fun b!25241 () Bool)

(assert (=> b!25241 (= e!13005 e!13003)))

(declare-fun res!11357 () Bool)

(assert (=> b!25241 (=> res!11357 e!13003)))

(declare-fun xs!544 () Conc!58)

(declare-fun concInv!52 (Conc!58) Bool)

(assert (=> b!25241 (= res!11357 (not (concInv!52 xs!544)))))

(declare-fun b!25242 () Bool)

(declare-fun res!11355 () Bool)

(assert (=> b!25242 (=> (not res!11355) (not e!13005))))

(declare-fun ys!77 () Conc!58)

(declare-fun xs!533 () Conc!58)

(declare-fun level!46 (Conc!58) Int)

(assert (=> b!25242 (= res!11355 (= diff!6 (- (level!46 ys!77) (level!46 xs!533))))))

(declare-fun b!25243 () Bool)

(declare-fun res!11368 () Bool)

(assert (=> b!25243 (=> (not res!11368) (not e!13005))))

(assert (=> b!25243 (= res!11368 (and (= xs!544 (right!705 (right!705 xs!533))) (= ys!88 ys!77)))))

(declare-fun b!25244 () Bool)

(declare-fun tp_is_empty!161 () Bool)

(assert (=> b!25244 (= e!13006 tp_is_empty!161)))

(declare-fun res!11369 () Bool)

(assert (=> start!3810 (=> (not res!11369) (not e!13005))))

(assert (=> start!3810 (= res!11369 (concInv!52 xs!533))))

(assert (=> start!3810 e!13005))

(assert (=> start!3810 true))

(assert (=> start!3810 e!13008))

(declare-fun e!13007 () Bool)

(assert (=> start!3810 e!13007))

(assert (=> start!3810 e!13006))

(assert (=> start!3810 e!13004))

(declare-fun b!25245 () Bool)

(declare-fun res!11359 () Bool)

(assert (=> b!25245 (=> (not res!11359) (not e!13005))))

(assert (=> b!25245 (= res!11359 (balanced!53 xs!533))))

(declare-fun b!25246 () Bool)

(declare-fun res!11361 () Bool)

(assert (=> b!25246 (=> res!11361 e!13003)))

(assert (=> b!25246 (= res!11361 (not (balanced!53 xs!544)))))

(declare-fun b!25247 () Bool)

(declare-fun res!11363 () Bool)

(assert (=> b!25247 (=> res!11363 e!13003)))

(declare-fun isEmpty!314 (Conc!58) Bool)

(assert (=> b!25247 (= res!11363 (isEmpty!314 xs!544))))

(declare-fun b!25248 () Bool)

(declare-fun res!11367 () Bool)

(assert (=> b!25248 (=> (not res!11367) (not e!13005))))

(assert (=> b!25248 (= res!11367 (concInv!52 ys!77))))

(declare-fun b!25249 () Bool)

(declare-fun res!11365 () Bool)

(assert (=> b!25249 (=> (not res!11365) (not e!13005))))

(assert (=> b!25249 (= res!11365 (not (isEmpty!314 ys!77)))))

(declare-fun b!25250 () Bool)

(assert (=> b!25250 (= e!13007 tp_is_empty!161)))

(declare-fun b!25251 () Bool)

(declare-fun res!11364 () Bool)

(assert (=> b!25251 (=> (not res!11364) (not e!13005))))

(assert (=> b!25251 (= res!11364 (not (isEmpty!314 xs!533)))))

(declare-fun b!25252 () Bool)

(declare-fun res!11358 () Bool)

(assert (=> b!25252 (=> res!11358 e!13003)))

(assert (=> b!25252 (= res!11358 (not (concInv!52 ys!88)))))

(declare-fun b!25253 () Bool)

(assert (=> b!25253 (= e!13008 tp_is_empty!161)))

(declare-fun b!25254 () Bool)

(assert (=> b!25254 (= e!13004 tp_is_empty!161)))

(declare-fun b!25255 () Bool)

(declare-fun res!11356 () Bool)

(assert (=> b!25255 (=> (not res!11356) (not e!13005))))

(assert (=> b!25255 (= res!11356 (balanced!53 ys!77))))

(declare-fun b!25256 () Bool)

(assert (=> b!25256 (= e!13003 (isEmpty!314 ys!88))))

(declare-fun b!25257 () Bool)

(declare-fun res!11366 () Bool)

(assert (=> b!25257 (=> (not res!11366) (not e!13005))))

(assert (=> b!25257 (= res!11366 (< (level!46 (left!702 xs!533)) (level!46 (right!705 xs!533))))))

(declare-fun b!25258 () Bool)

(declare-fun tp!5511 () Bool)

(declare-fun tp!5512 () Bool)

(assert (=> b!25258 (= e!13007 (and tp!5511 tp!5512))))

(assert (= (and start!3810 res!11369) b!25245))

(assert (= (and b!25245 res!11359) b!25248))

(assert (= (and b!25248 res!11367) b!25255))

(assert (= (and b!25255 res!11356) b!25251))

(assert (= (and b!25251 res!11364) b!25249))

(assert (= (and b!25249 res!11365) b!25242))

(assert (= (and b!25242 res!11355) b!25237))

(assert (= (and b!25237 res!11362) b!25257))

(assert (= (and b!25257 res!11366) b!25243))

(assert (= (and b!25243 res!11368) b!25241))

(assert (= (and b!25241 (not res!11357)) b!25246))

(assert (= (and b!25246 (not res!11361)) b!25252))

(assert (= (and b!25252 (not res!11358)) b!25236))

(assert (= (and b!25236 (not res!11360)) b!25247))

(assert (= (and b!25247 (not res!11363)) b!25256))

(assert (= (and start!3810 (is-CC!57 ys!88)) b!25240))

(assert (= (and start!3810 (is-Single!57 ys!88)) b!25253))

(assert (= (and start!3810 (is-CC!57 xs!544)) b!25258))

(assert (= (and start!3810 (is-Single!57 xs!544)) b!25250))

(assert (= (and start!3810 (is-CC!57 ys!77)) b!25238))

(assert (= (and start!3810 (is-Single!57 ys!77)) b!25244))

(assert (= (and start!3810 (is-CC!57 xs!533)) b!25239))

(assert (= (and start!3810 (is-Single!57 xs!533)) b!25254))

(declare-fun m!26243 () Bool)

(assert (=> b!25251 m!26243))

(declare-fun m!26245 () Bool)

(assert (=> b!25245 m!26245))

(declare-fun m!26247 () Bool)

(assert (=> b!25236 m!26247))

(declare-fun m!26249 () Bool)

(assert (=> b!25256 m!26249))

(declare-fun m!26251 () Bool)

(assert (=> start!3810 m!26251))

(declare-fun m!26253 () Bool)

(assert (=> b!25246 m!26253))

(declare-fun m!26255 () Bool)

(assert (=> b!25247 m!26255))

(declare-fun m!26257 () Bool)

(assert (=> b!25249 m!26257))

(declare-fun m!26259 () Bool)

(assert (=> b!25255 m!26259))

(declare-fun m!26261 () Bool)

(assert (=> b!25257 m!26261))

(declare-fun m!26263 () Bool)

(assert (=> b!25257 m!26263))

(declare-fun m!26265 () Bool)

(assert (=> b!25241 m!26265))

(declare-fun m!26267 () Bool)

(assert (=> b!25248 m!26267))

(declare-fun m!26269 () Bool)

(assert (=> b!25242 m!26269))

(declare-fun m!26271 () Bool)

(assert (=> b!25242 m!26271))

(declare-fun m!26273 () Bool)

(assert (=> b!25252 m!26273))

(push 1)

(assert (not b!25248))

(assert (not b!25242))

(assert (not b!25249))

(assert (not b!25239))

(assert (not b!25256))

(assert (not b!25255))

(assert (not b!25236))

(assert (not b!25238))

(assert (not b!25246))

(assert (not b!25252))

(assert (not b!25245))

(assert (not b!25251))

(assert tp_is_empty!161)

(assert (not b!25258))

(assert (not b!25241))

(assert (not b!25257))

(assert (not b!25240))

(assert (not b!25247))

(assert (not start!3810))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!13725 () Bool)

(assert (=> d!13725 (= (isEmpty!314 xs!544) (= xs!544 Empty!68))))

(assert (=> b!25247 d!13725))

(declare-fun d!13727 () Bool)

(assert (=> d!13727 (= (isEmpty!314 xs!533) (= xs!533 Empty!68))))

(assert (=> b!25251 d!13727))

(declare-fun b!25267 () Bool)

(declare-fun e!13014 () Bool)

(declare-fun e!13013 () Bool)

(assert (=> b!25267 (= e!13014 e!13013)))

(declare-fun res!11381 () Bool)

(assert (=> b!25267 (=> (not res!11381) (not e!13013))))

(assert (=> b!25267 (= res!11381 (not (isEmpty!314 (left!702 ys!77))))))

(declare-fun b!25268 () Bool)

(declare-fun res!11380 () Bool)

(assert (=> b!25268 (=> (not res!11380) (not e!13013))))

(assert (=> b!25268 (= res!11380 (not (isEmpty!314 (right!705 ys!77))))))

(declare-fun b!25269 () Bool)

(declare-fun res!11379 () Bool)

(assert (=> b!25269 (=> (not res!11379) (not e!13013))))

(assert (=> b!25269 (= res!11379 (concInv!52 (left!702 ys!77)))))

(declare-fun d!13729 () Bool)

(declare-fun res!11378 () Bool)

(assert (=> d!13729 (=> res!11378 e!13014)))

(assert (=> d!13729 (= res!11378 (not (is-CC!57 ys!77)))))

(assert (=> d!13729 (= (concInv!52 ys!77) e!13014)))

(declare-fun b!25270 () Bool)

(assert (=> b!25270 (= e!13013 (concInv!52 (right!705 ys!77)))))

(assert (= (and d!13729 (not res!11378)) b!25267))

(assert (= (and b!25267 res!11381) b!25268))

(assert (= (and b!25268 res!11380) b!25269))

(assert (= (and b!25269 res!11379) b!25270))

(declare-fun m!26275 () Bool)

(assert (=> b!25267 m!26275))

(declare-fun m!26277 () Bool)

(assert (=> b!25268 m!26277))

(declare-fun m!26279 () Bool)

(assert (=> b!25269 m!26279))

(declare-fun m!26281 () Bool)

(assert (=> b!25270 m!26281))

(assert (=> b!25248 d!13729))

(declare-fun b!25276 () Bool)

(declare-fun e!13017 () Int)

(declare-fun lt!3976 () Int)

(declare-fun lt!3978 () Int)

(assert (=> b!25276 (= e!13017 (+ 1 (ite (>= lt!3976 lt!3978) lt!3976 lt!3978)))))

(assert (=> b!25276 (= lt!3978 (level!46 (right!705 (left!702 xs!533))))))

(assert (=> b!25276 (= lt!3976 (level!46 (left!702 (left!702 xs!533))))))

(declare-fun d!13731 () Bool)

(declare-fun lt!3977 () Int)

(assert (=> d!13731 (>= lt!3977 0)))

(assert (=> d!13731 (= lt!3977 e!13017)))

(declare-fun c!5712 () Bool)

(assert (=> d!13731 (= c!5712 (or (is-Empty!68 (left!702 xs!533)) (is-Single!57 (left!702 xs!533))))))

(assert (=> d!13731 (= (level!46 (left!702 xs!533)) lt!3977)))

(declare-fun b!25275 () Bool)

(assert (=> b!25275 (= e!13017 0)))

(assert (= (and d!13731 c!5712) b!25275))

(assert (= (and d!13731 (not c!5712)) b!25276))

(declare-fun m!26283 () Bool)

(assert (=> b!25276 m!26283))

(declare-fun m!26285 () Bool)

(assert (=> b!25276 m!26285))

(assert (=> b!25257 d!13731))

(declare-fun b!25278 () Bool)

(declare-fun e!13018 () Int)

(declare-fun lt!3979 () Int)

(declare-fun lt!3981 () Int)

(assert (=> b!25278 (= e!13018 (+ 1 (ite (>= lt!3979 lt!3981) lt!3979 lt!3981)))))

(assert (=> b!25278 (= lt!3981 (level!46 (right!705 (right!705 xs!533))))))

(assert (=> b!25278 (= lt!3979 (level!46 (left!702 (right!705 xs!533))))))

(declare-fun d!13733 () Bool)

(declare-fun lt!3980 () Int)

(assert (=> d!13733 (>= lt!3980 0)))

(assert (=> d!13733 (= lt!3980 e!13018)))

(declare-fun c!5713 () Bool)

(assert (=> d!13733 (= c!5713 (or (is-Empty!68 (right!705 xs!533)) (is-Single!57 (right!705 xs!533))))))

(assert (=> d!13733 (= (level!46 (right!705 xs!533)) lt!3980)))

(declare-fun b!25277 () Bool)

(assert (=> b!25277 (= e!13018 0)))

(assert (= (and d!13733 c!5713) b!25277))

(assert (= (and d!13733 (not c!5713)) b!25278))

(declare-fun m!26287 () Bool)

(assert (=> b!25278 m!26287))

(declare-fun m!26289 () Bool)

(assert (=> b!25278 m!26289))

(assert (=> b!25257 d!13733))

(declare-fun b!25290 () Bool)

(declare-fun e!13023 () Bool)

(assert (=> b!25290 (= e!13023 (balanced!53 (right!705 ys!77)))))

(declare-fun b!25289 () Bool)

(declare-fun res!11393 () Bool)

(assert (=> b!25289 (=> (not res!11393) (not e!13023))))

(assert (=> b!25289 (= res!11393 (balanced!53 (left!702 ys!77)))))

(declare-fun b!25287 () Bool)

(declare-fun e!13024 () Bool)

(assert (=> b!25287 (= e!13024 e!13023)))

(declare-fun res!11391 () Bool)

(assert (=> b!25287 (=> (not res!11391) (not e!13023))))

(assert (=> b!25287 (= res!11391 (>= (- (level!46 (left!702 ys!77)) (level!46 (right!705 ys!77))) (- 1)))))

(declare-fun b!25288 () Bool)

(declare-fun res!11392 () Bool)

(assert (=> b!25288 (=> (not res!11392) (not e!13023))))

(assert (=> b!25288 (= res!11392 (<= (- (level!46 (left!702 ys!77)) (level!46 (right!705 ys!77))) 1))))

(declare-fun d!13735 () Bool)

(declare-fun res!11390 () Bool)

(assert (=> d!13735 (=> res!11390 e!13024)))

(assert (=> d!13735 (= res!11390 (not (is-CC!57 ys!77)))))

(assert (=> d!13735 (= (balanced!53 ys!77) e!13024)))

(assert (= (and d!13735 (not res!11390)) b!25287))

(assert (= (and b!25287 res!11391) b!25288))

(assert (= (and b!25288 res!11392) b!25289))

(assert (= (and b!25289 res!11393) b!25290))

(declare-fun m!26291 () Bool)

(assert (=> b!25290 m!26291))

(declare-fun m!26293 () Bool)

(assert (=> b!25289 m!26293))

(declare-fun m!26295 () Bool)

(assert (=> b!25287 m!26295))

(declare-fun m!26297 () Bool)

(assert (=> b!25287 m!26297))

(assert (=> b!25288 m!26295))

(assert (=> b!25288 m!26297))

(assert (=> b!25255 d!13735))

(declare-fun b!25291 () Bool)

(declare-fun e!13026 () Bool)

(declare-fun e!13025 () Bool)

(assert (=> b!25291 (= e!13026 e!13025)))

(declare-fun res!11397 () Bool)

(assert (=> b!25291 (=> (not res!11397) (not e!13025))))

(assert (=> b!25291 (= res!11397 (not (isEmpty!314 (left!702 xs!533))))))

(declare-fun b!25292 () Bool)

(declare-fun res!11396 () Bool)

(assert (=> b!25292 (=> (not res!11396) (not e!13025))))

(assert (=> b!25292 (= res!11396 (not (isEmpty!314 (right!705 xs!533))))))

(declare-fun b!25293 () Bool)

(declare-fun res!11395 () Bool)

(assert (=> b!25293 (=> (not res!11395) (not e!13025))))

(assert (=> b!25293 (= res!11395 (concInv!52 (left!702 xs!533)))))

(declare-fun d!13737 () Bool)

(declare-fun res!11394 () Bool)

(assert (=> d!13737 (=> res!11394 e!13026)))

(assert (=> d!13737 (= res!11394 (not (is-CC!57 xs!533)))))

(assert (=> d!13737 (= (concInv!52 xs!533) e!13026)))

(declare-fun b!25294 () Bool)

(assert (=> b!25294 (= e!13025 (concInv!52 (right!705 xs!533)))))

(assert (= (and d!13737 (not res!11394)) b!25291))

(assert (= (and b!25291 res!11397) b!25292))

(assert (= (and b!25292 res!11396) b!25293))

(assert (= (and b!25293 res!11395) b!25294))

(declare-fun m!26299 () Bool)

(assert (=> b!25291 m!26299))

(declare-fun m!26301 () Bool)

(assert (=> b!25292 m!26301))

(declare-fun m!26303 () Bool)

(assert (=> b!25293 m!26303))

(declare-fun m!26305 () Bool)

(assert (=> b!25294 m!26305))

(assert (=> start!3810 d!13737))

(declare-fun b!25298 () Bool)

(declare-fun e!13027 () Bool)

(assert (=> b!25298 (= e!13027 (balanced!53 (right!705 ys!88)))))

(declare-fun b!25297 () Bool)

(declare-fun res!11401 () Bool)

(assert (=> b!25297 (=> (not res!11401) (not e!13027))))

(assert (=> b!25297 (= res!11401 (balanced!53 (left!702 ys!88)))))

(declare-fun b!25295 () Bool)

(declare-fun e!13028 () Bool)

(assert (=> b!25295 (= e!13028 e!13027)))

(declare-fun res!11399 () Bool)

(assert (=> b!25295 (=> (not res!11399) (not e!13027))))

(assert (=> b!25295 (= res!11399 (>= (- (level!46 (left!702 ys!88)) (level!46 (right!705 ys!88))) (- 1)))))

(declare-fun b!25296 () Bool)

(declare-fun res!11400 () Bool)

(assert (=> b!25296 (=> (not res!11400) (not e!13027))))

(assert (=> b!25296 (= res!11400 (<= (- (level!46 (left!702 ys!88)) (level!46 (right!705 ys!88))) 1))))

(declare-fun d!13739 () Bool)

(declare-fun res!11398 () Bool)

(assert (=> d!13739 (=> res!11398 e!13028)))

(assert (=> d!13739 (= res!11398 (not (is-CC!57 ys!88)))))

(assert (=> d!13739 (= (balanced!53 ys!88) e!13028)))

(assert (= (and d!13739 (not res!11398)) b!25295))

(assert (= (and b!25295 res!11399) b!25296))

(assert (= (and b!25296 res!11400) b!25297))

(assert (= (and b!25297 res!11401) b!25298))

(declare-fun m!26307 () Bool)

(assert (=> b!25298 m!26307))

(declare-fun m!26309 () Bool)

(assert (=> b!25297 m!26309))

(declare-fun m!26311 () Bool)

(assert (=> b!25295 m!26311))

(declare-fun m!26313 () Bool)

(assert (=> b!25295 m!26313))

(assert (=> b!25296 m!26311))

(assert (=> b!25296 m!26313))

(assert (=> b!25236 d!13739))

(declare-fun b!25302 () Bool)

(declare-fun e!13029 () Bool)

(assert (=> b!25302 (= e!13029 (balanced!53 (right!705 xs!533)))))

(declare-fun b!25301 () Bool)

(declare-fun res!11405 () Bool)

(assert (=> b!25301 (=> (not res!11405) (not e!13029))))

(assert (=> b!25301 (= res!11405 (balanced!53 (left!702 xs!533)))))

(declare-fun b!25299 () Bool)

(declare-fun e!13030 () Bool)

(assert (=> b!25299 (= e!13030 e!13029)))

(declare-fun res!11403 () Bool)

(assert (=> b!25299 (=> (not res!11403) (not e!13029))))

(assert (=> b!25299 (= res!11403 (>= (- (level!46 (left!702 xs!533)) (level!46 (right!705 xs!533))) (- 1)))))

(declare-fun b!25300 () Bool)

(declare-fun res!11404 () Bool)

(assert (=> b!25300 (=> (not res!11404) (not e!13029))))

(assert (=> b!25300 (= res!11404 (<= (- (level!46 (left!702 xs!533)) (level!46 (right!705 xs!533))) 1))))

(declare-fun d!13741 () Bool)

(declare-fun res!11402 () Bool)

(assert (=> d!13741 (=> res!11402 e!13030)))

(assert (=> d!13741 (= res!11402 (not (is-CC!57 xs!533)))))

(assert (=> d!13741 (= (balanced!53 xs!533) e!13030)))

(assert (= (and d!13741 (not res!11402)) b!25299))

(assert (= (and b!25299 res!11403) b!25300))

(assert (= (and b!25300 res!11404) b!25301))

(assert (= (and b!25301 res!11405) b!25302))

(declare-fun m!26315 () Bool)

(assert (=> b!25302 m!26315))

(declare-fun m!26317 () Bool)

(assert (=> b!25301 m!26317))

(assert (=> b!25299 m!26261))

(assert (=> b!25299 m!26263))

(assert (=> b!25300 m!26261))

(assert (=> b!25300 m!26263))

(assert (=> b!25245 d!13741))

(declare-fun b!25304 () Bool)

(declare-fun e!13031 () Int)

(declare-fun lt!3982 () Int)

(declare-fun lt!3984 () Int)

(assert (=> b!25304 (= e!13031 (+ 1 (ite (>= lt!3982 lt!3984) lt!3982 lt!3984)))))

(assert (=> b!25304 (= lt!3984 (level!46 (right!705 ys!77)))))

(assert (=> b!25304 (= lt!3982 (level!46 (left!702 ys!77)))))

(declare-fun d!13743 () Bool)

(declare-fun lt!3983 () Int)

(assert (=> d!13743 (>= lt!3983 0)))

(assert (=> d!13743 (= lt!3983 e!13031)))

(declare-fun c!5714 () Bool)

(assert (=> d!13743 (= c!5714 (or (is-Empty!68 ys!77) (is-Single!57 ys!77)))))

(assert (=> d!13743 (= (level!46 ys!77) lt!3983)))

(declare-fun b!25303 () Bool)

(assert (=> b!25303 (= e!13031 0)))

(assert (= (and d!13743 c!5714) b!25303))

(assert (= (and d!13743 (not c!5714)) b!25304))

(assert (=> b!25304 m!26297))

(assert (=> b!25304 m!26295))

(assert (=> b!25242 d!13743))

(declare-fun b!25306 () Bool)

(declare-fun e!13032 () Int)

(declare-fun lt!3985 () Int)

(declare-fun lt!3987 () Int)

(assert (=> b!25306 (= e!13032 (+ 1 (ite (>= lt!3985 lt!3987) lt!3985 lt!3987)))))

(assert (=> b!25306 (= lt!3987 (level!46 (right!705 xs!533)))))

(assert (=> b!25306 (= lt!3985 (level!46 (left!702 xs!533)))))

(declare-fun d!13745 () Bool)

(declare-fun lt!3986 () Int)

(assert (=> d!13745 (>= lt!3986 0)))

(assert (=> d!13745 (= lt!3986 e!13032)))

(declare-fun c!5715 () Bool)

(assert (=> d!13745 (= c!5715 (or (is-Empty!68 xs!533) (is-Single!57 xs!533)))))

(assert (=> d!13745 (= (level!46 xs!533) lt!3986)))

(declare-fun b!25305 () Bool)

(assert (=> b!25305 (= e!13032 0)))

(assert (= (and d!13745 c!5715) b!25305))

(assert (= (and d!13745 (not c!5715)) b!25306))

(assert (=> b!25306 m!26263))

(assert (=> b!25306 m!26261))

(assert (=> b!25242 d!13745))

(declare-fun d!13747 () Bool)

(assert (=> d!13747 (= (isEmpty!314 ys!88) (= ys!88 Empty!68))))

(assert (=> b!25256 d!13747))

(declare-fun d!13749 () Bool)

(assert (=> d!13749 (= (isEmpty!314 ys!77) (= ys!77 Empty!68))))

(assert (=> b!25249 d!13749))

(declare-fun b!25310 () Bool)

(declare-fun e!13033 () Bool)

(assert (=> b!25310 (= e!13033 (balanced!53 (right!705 xs!544)))))

(declare-fun b!25309 () Bool)

(declare-fun res!11409 () Bool)

(assert (=> b!25309 (=> (not res!11409) (not e!13033))))

(assert (=> b!25309 (= res!11409 (balanced!53 (left!702 xs!544)))))

(declare-fun b!25307 () Bool)

(declare-fun e!13034 () Bool)

(assert (=> b!25307 (= e!13034 e!13033)))

(declare-fun res!11407 () Bool)

(assert (=> b!25307 (=> (not res!11407) (not e!13033))))

(assert (=> b!25307 (= res!11407 (>= (- (level!46 (left!702 xs!544)) (level!46 (right!705 xs!544))) (- 1)))))

(declare-fun b!25308 () Bool)

(declare-fun res!11408 () Bool)

(assert (=> b!25308 (=> (not res!11408) (not e!13033))))

(assert (=> b!25308 (= res!11408 (<= (- (level!46 (left!702 xs!544)) (level!46 (right!705 xs!544))) 1))))

(declare-fun d!13751 () Bool)

(declare-fun res!11406 () Bool)

(assert (=> d!13751 (=> res!11406 e!13034)))

(assert (=> d!13751 (= res!11406 (not (is-CC!57 xs!544)))))

(assert (=> d!13751 (= (balanced!53 xs!544) e!13034)))

(assert (= (and d!13751 (not res!11406)) b!25307))

(assert (= (and b!25307 res!11407) b!25308))

(assert (= (and b!25308 res!11408) b!25309))

(assert (= (and b!25309 res!11409) b!25310))

(declare-fun m!26319 () Bool)

(assert (=> b!25310 m!26319))

(declare-fun m!26321 () Bool)

(assert (=> b!25309 m!26321))

(declare-fun m!26323 () Bool)

(assert (=> b!25307 m!26323))

(declare-fun m!26325 () Bool)

(assert (=> b!25307 m!26325))

(assert (=> b!25308 m!26323))

(assert (=> b!25308 m!26325))

(assert (=> b!25246 d!13751))

(declare-fun b!25311 () Bool)

(declare-fun e!13036 () Bool)

(declare-fun e!13035 () Bool)

(assert (=> b!25311 (= e!13036 e!13035)))

(declare-fun res!11413 () Bool)

(assert (=> b!25311 (=> (not res!11413) (not e!13035))))

(assert (=> b!25311 (= res!11413 (not (isEmpty!314 (left!702 ys!88))))))

(declare-fun b!25312 () Bool)

(declare-fun res!11412 () Bool)

(assert (=> b!25312 (=> (not res!11412) (not e!13035))))

(assert (=> b!25312 (= res!11412 (not (isEmpty!314 (right!705 ys!88))))))

(declare-fun b!25313 () Bool)

(declare-fun res!11411 () Bool)

(assert (=> b!25313 (=> (not res!11411) (not e!13035))))

(assert (=> b!25313 (= res!11411 (concInv!52 (left!702 ys!88)))))

(declare-fun d!13753 () Bool)

(declare-fun res!11410 () Bool)

(assert (=> d!13753 (=> res!11410 e!13036)))

(assert (=> d!13753 (= res!11410 (not (is-CC!57 ys!88)))))

(assert (=> d!13753 (= (concInv!52 ys!88) e!13036)))

(declare-fun b!25314 () Bool)

(assert (=> b!25314 (= e!13035 (concInv!52 (right!705 ys!88)))))

(assert (= (and d!13753 (not res!11410)) b!25311))

(assert (= (and b!25311 res!11413) b!25312))

(assert (= (and b!25312 res!11412) b!25313))

(assert (= (and b!25313 res!11411) b!25314))

(declare-fun m!26327 () Bool)

(assert (=> b!25311 m!26327))

(declare-fun m!26329 () Bool)

(assert (=> b!25312 m!26329))

(declare-fun m!26331 () Bool)

(assert (=> b!25313 m!26331))

(declare-fun m!26333 () Bool)

(assert (=> b!25314 m!26333))

(assert (=> b!25252 d!13753))

(declare-fun b!25315 () Bool)

(declare-fun e!13038 () Bool)

(declare-fun e!13037 () Bool)

(assert (=> b!25315 (= e!13038 e!13037)))

(declare-fun res!11417 () Bool)

(assert (=> b!25315 (=> (not res!11417) (not e!13037))))

(assert (=> b!25315 (= res!11417 (not (isEmpty!314 (left!702 xs!544))))))

(declare-fun b!25316 () Bool)

(declare-fun res!11416 () Bool)

(assert (=> b!25316 (=> (not res!11416) (not e!13037))))

(assert (=> b!25316 (= res!11416 (not (isEmpty!314 (right!705 xs!544))))))

(declare-fun b!25317 () Bool)

(declare-fun res!11415 () Bool)

(assert (=> b!25317 (=> (not res!11415) (not e!13037))))

(assert (=> b!25317 (= res!11415 (concInv!52 (left!702 xs!544)))))

(declare-fun d!13755 () Bool)

(declare-fun res!11414 () Bool)

(assert (=> d!13755 (=> res!11414 e!13038)))

(assert (=> d!13755 (= res!11414 (not (is-CC!57 xs!544)))))

(assert (=> d!13755 (= (concInv!52 xs!544) e!13038)))

(declare-fun b!25318 () Bool)

(assert (=> b!25318 (= e!13037 (concInv!52 (right!705 xs!544)))))

(assert (= (and d!13755 (not res!11414)) b!25315))

(assert (= (and b!25315 res!11417) b!25316))

(assert (= (and b!25316 res!11416) b!25317))

(assert (= (and b!25317 res!11415) b!25318))

(declare-fun m!26335 () Bool)

(assert (=> b!25315 m!26335))

(declare-fun m!26337 () Bool)

(assert (=> b!25316 m!26337))

(declare-fun m!26339 () Bool)

(assert (=> b!25317 m!26339))

(declare-fun m!26341 () Bool)

(assert (=> b!25318 m!26341))

(assert (=> b!25241 d!13755))

(declare-fun b!25325 () Bool)

(declare-fun e!13041 () Bool)

(declare-fun tp!5518 () Bool)

(declare-fun tp!5519 () Bool)

(assert (=> b!25325 (= e!13041 (and tp!5518 tp!5519))))

(declare-fun b!25326 () Bool)

(assert (=> b!25326 (= e!13041 tp_is_empty!161)))

(assert (=> b!25239 (= tp!5509 e!13041)))

(assert (= (and b!25239 (is-CC!57 (left!702 xs!533))) b!25325))

(assert (= (and b!25239 (is-Single!57 (left!702 xs!533))) b!25326))

(declare-fun b!25327 () Bool)

(declare-fun e!13042 () Bool)

(declare-fun tp!5520 () Bool)

(declare-fun tp!5521 () Bool)

(assert (=> b!25327 (= e!13042 (and tp!5520 tp!5521))))

(declare-fun b!25328 () Bool)

(assert (=> b!25328 (= e!13042 tp_is_empty!161)))

(assert (=> b!25239 (= tp!5507 e!13042)))

(assert (= (and b!25239 (is-CC!57 (right!705 xs!533))) b!25327))

(assert (= (and b!25239 (is-Single!57 (right!705 xs!533))) b!25328))

(declare-fun b!25329 () Bool)

(declare-fun e!13043 () Bool)

(declare-fun tp!5522 () Bool)

(declare-fun tp!5523 () Bool)

(assert (=> b!25329 (= e!13043 (and tp!5522 tp!5523))))

(declare-fun b!25330 () Bool)

(assert (=> b!25330 (= e!13043 tp_is_empty!161)))

(assert (=> b!25238 (= tp!5508 e!13043)))

(assert (= (and b!25238 (is-CC!57 (left!702 ys!77))) b!25329))

(assert (= (and b!25238 (is-Single!57 (left!702 ys!77))) b!25330))

(declare-fun b!25331 () Bool)

(declare-fun e!13044 () Bool)

(declare-fun tp!5524 () Bool)

(declare-fun tp!5525 () Bool)

(assert (=> b!25331 (= e!13044 (and tp!5524 tp!5525))))

(declare-fun b!25332 () Bool)

(assert (=> b!25332 (= e!13044 tp_is_empty!161)))

(assert (=> b!25238 (= tp!5513 e!13044)))

(assert (= (and b!25238 (is-CC!57 (right!705 ys!77))) b!25331))

(assert (= (and b!25238 (is-Single!57 (right!705 ys!77))) b!25332))

(declare-fun b!25333 () Bool)

(declare-fun e!13045 () Bool)

(declare-fun tp!5526 () Bool)

(declare-fun tp!5527 () Bool)

(assert (=> b!25333 (= e!13045 (and tp!5526 tp!5527))))

(declare-fun b!25334 () Bool)

(assert (=> b!25334 (= e!13045 tp_is_empty!161)))

(assert (=> b!25258 (= tp!5511 e!13045)))

(assert (= (and b!25258 (is-CC!57 (left!702 xs!544))) b!25333))

(assert (= (and b!25258 (is-Single!57 (left!702 xs!544))) b!25334))

(declare-fun b!25335 () Bool)

(declare-fun e!13046 () Bool)

(declare-fun tp!5528 () Bool)

(declare-fun tp!5529 () Bool)

(assert (=> b!25335 (= e!13046 (and tp!5528 tp!5529))))

(declare-fun b!25336 () Bool)

(assert (=> b!25336 (= e!13046 tp_is_empty!161)))

(assert (=> b!25258 (= tp!5512 e!13046)))

(assert (= (and b!25258 (is-CC!57 (right!705 xs!544))) b!25335))

(assert (= (and b!25258 (is-Single!57 (right!705 xs!544))) b!25336))

(declare-fun b!25337 () Bool)

(declare-fun e!13047 () Bool)

(declare-fun tp!5530 () Bool)

(declare-fun tp!5531 () Bool)

(assert (=> b!25337 (= e!13047 (and tp!5530 tp!5531))))

(declare-fun b!25338 () Bool)

(assert (=> b!25338 (= e!13047 tp_is_empty!161)))

(assert (=> b!25240 (= tp!5510 e!13047)))

(assert (= (and b!25240 (is-CC!57 (left!702 ys!88))) b!25337))

(assert (= (and b!25240 (is-Single!57 (left!702 ys!88))) b!25338))

(declare-fun b!25339 () Bool)

(declare-fun e!13048 () Bool)

(declare-fun tp!5532 () Bool)

(declare-fun tp!5533 () Bool)

(assert (=> b!25339 (= e!13048 (and tp!5532 tp!5533))))

(declare-fun b!25340 () Bool)

(assert (=> b!25340 (= e!13048 tp_is_empty!161)))

(assert (=> b!25240 (= tp!5506 e!13048)))

(assert (= (and b!25240 (is-CC!57 (right!705 ys!88))) b!25339))

(assert (= (and b!25240 (is-Single!57 (right!705 ys!88))) b!25340))

(push 1)

(assert (not b!25298))

(assert (not b!25325))

(assert (not b!25287))

(assert (not b!25268))

(assert (not b!25309))

(assert (not b!25288))

(assert (not b!25311))

(assert (not b!25317))

(assert (not b!25331))

(assert (not b!25289))

(assert (not b!25306))

(assert (not b!25296))

(assert (not b!25304))

(assert (not b!25300))

(assert (not b!25310))

(assert (not b!25307))

(assert (not b!25313))

(assert (not b!25293))

(assert (not b!25316))

(assert (not b!25339))

(assert (not b!25290))

(assert (not b!25267))

(assert (not b!25327))

(assert (not b!25315))

(assert (not b!25301))

(assert (not b!25278))

(assert (not b!25312))

(assert (not b!25292))

(assert (not b!25335))

(assert (not b!25308))

(assert tp_is_empty!161)

(assert (not b!25302))

(assert (not b!25294))

(assert (not b!25270))

(assert (not b!25276))

(assert (not b!25291))

(assert (not b!25329))

(assert (not b!25297))

(assert (not b!25318))

(assert (not b!25299))

(assert (not b!25333))

(assert (not b!25295))

(assert (not b!25314))

(assert (not b!25269))

(assert (not b!25337))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!25341 () Bool)

(declare-fun e!13050 () Bool)

(declare-fun e!13049 () Bool)

(assert (=> b!25341 (= e!13050 e!13049)))

(declare-fun res!11421 () Bool)

(assert (=> b!25341 (=> (not res!11421) (not e!13049))))

(assert (=> b!25341 (= res!11421 (not (isEmpty!314 (left!702 (left!702 ys!88)))))))

(declare-fun b!25342 () Bool)

(declare-fun res!11420 () Bool)

(assert (=> b!25342 (=> (not res!11420) (not e!13049))))

(assert (=> b!25342 (= res!11420 (not (isEmpty!314 (right!705 (left!702 ys!88)))))))

(declare-fun b!25343 () Bool)

(declare-fun res!11419 () Bool)

(assert (=> b!25343 (=> (not res!11419) (not e!13049))))

(assert (=> b!25343 (= res!11419 (concInv!52 (left!702 (left!702 ys!88))))))

(declare-fun d!13757 () Bool)

(declare-fun res!11418 () Bool)

(assert (=> d!13757 (=> res!11418 e!13050)))

(assert (=> d!13757 (= res!11418 (not (is-CC!57 (left!702 ys!88))))))

(assert (=> d!13757 (= (concInv!52 (left!702 ys!88)) e!13050)))

(declare-fun b!25344 () Bool)

(assert (=> b!25344 (= e!13049 (concInv!52 (right!705 (left!702 ys!88))))))

(assert (= (and d!13757 (not res!11418)) b!25341))

(assert (= (and b!25341 res!11421) b!25342))

(assert (= (and b!25342 res!11420) b!25343))

(assert (= (and b!25343 res!11419) b!25344))

(declare-fun m!26343 () Bool)

(assert (=> b!25341 m!26343))

(declare-fun m!26345 () Bool)

(assert (=> b!25342 m!26345))

(declare-fun m!26347 () Bool)

(assert (=> b!25343 m!26347))

(declare-fun m!26349 () Bool)

(assert (=> b!25344 m!26349))

(assert (=> b!25313 d!13757))

(declare-fun d!13759 () Bool)

(assert (=> d!13759 (= (isEmpty!314 (left!702 ys!77)) (= (left!702 ys!77) Empty!68))))

(assert (=> b!25267 d!13759))

(declare-fun b!25346 () Bool)

(declare-fun e!13051 () Int)

(declare-fun lt!3988 () Int)

(declare-fun lt!3990 () Int)

(assert (=> b!25346 (= e!13051 (+ 1 (ite (>= lt!3988 lt!3990) lt!3988 lt!3990)))))

(assert (=> b!25346 (= lt!3990 (level!46 (right!705 (right!705 (right!705 xs!533)))))))

(assert (=> b!25346 (= lt!3988 (level!46 (left!702 (right!705 (right!705 xs!533)))))))

(declare-fun d!13761 () Bool)

(declare-fun lt!3989 () Int)

(assert (=> d!13761 (>= lt!3989 0)))

(assert (=> d!13761 (= lt!3989 e!13051)))

(declare-fun c!5716 () Bool)

(assert (=> d!13761 (= c!5716 (or (is-Empty!68 (right!705 (right!705 xs!533))) (is-Single!57 (right!705 (right!705 xs!533)))))))

(assert (=> d!13761 (= (level!46 (right!705 (right!705 xs!533))) lt!3989)))

(declare-fun b!25345 () Bool)

(assert (=> b!25345 (= e!13051 0)))

(assert (= (and d!13761 c!5716) b!25345))

(assert (= (and d!13761 (not c!5716)) b!25346))

(declare-fun m!26351 () Bool)

(assert (=> b!25346 m!26351))

(declare-fun m!26353 () Bool)

(assert (=> b!25346 m!26353))

(assert (=> b!25278 d!13761))

(declare-fun b!25348 () Bool)

(declare-fun e!13052 () Int)

(declare-fun lt!3991 () Int)

(declare-fun lt!3993 () Int)

(assert (=> b!25348 (= e!13052 (+ 1 (ite (>= lt!3991 lt!3993) lt!3991 lt!3993)))))

(assert (=> b!25348 (= lt!3993 (level!46 (right!705 (left!702 (right!705 xs!533)))))))

(assert (=> b!25348 (= lt!3991 (level!46 (left!702 (left!702 (right!705 xs!533)))))))

(declare-fun d!13763 () Bool)

(declare-fun lt!3992 () Int)

(assert (=> d!13763 (>= lt!3992 0)))

(assert (=> d!13763 (= lt!3992 e!13052)))

(declare-fun c!5717 () Bool)

(assert (=> d!13763 (= c!5717 (or (is-Empty!68 (left!702 (right!705 xs!533))) (is-Single!57 (left!702 (right!705 xs!533)))))))

(assert (=> d!13763 (= (level!46 (left!702 (right!705 xs!533))) lt!3992)))

(declare-fun b!25347 () Bool)

(assert (=> b!25347 (= e!13052 0)))

(assert (= (and d!13763 c!5717) b!25347))

(assert (= (and d!13763 (not c!5717)) b!25348))

(declare-fun m!26355 () Bool)

(assert (=> b!25348 m!26355))

(declare-fun m!26357 () Bool)

(assert (=> b!25348 m!26357))

(assert (=> b!25278 d!13763))

(declare-fun b!25352 () Bool)

(declare-fun e!13053 () Bool)

(assert (=> b!25352 (= e!13053 (balanced!53 (right!705 (left!702 xs!533))))))

(declare-fun b!25351 () Bool)

(declare-fun res!11425 () Bool)

(assert (=> b!25351 (=> (not res!11425) (not e!13053))))

(assert (=> b!25351 (= res!11425 (balanced!53 (left!702 (left!702 xs!533))))))

(declare-fun b!25349 () Bool)

(declare-fun e!13054 () Bool)

(assert (=> b!25349 (= e!13054 e!13053)))

(declare-fun res!11423 () Bool)

(assert (=> b!25349 (=> (not res!11423) (not e!13053))))

(assert (=> b!25349 (= res!11423 (>= (- (level!46 (left!702 (left!702 xs!533))) (level!46 (right!705 (left!702 xs!533)))) (- 1)))))

(declare-fun b!25350 () Bool)

(declare-fun res!11424 () Bool)

(assert (=> b!25350 (=> (not res!11424) (not e!13053))))

(assert (=> b!25350 (= res!11424 (<= (- (level!46 (left!702 (left!702 xs!533))) (level!46 (right!705 (left!702 xs!533)))) 1))))

(declare-fun d!13765 () Bool)

(declare-fun res!11422 () Bool)

(assert (=> d!13765 (=> res!11422 e!13054)))

(assert (=> d!13765 (= res!11422 (not (is-CC!57 (left!702 xs!533))))))

(assert (=> d!13765 (= (balanced!53 (left!702 xs!533)) e!13054)))

(assert (= (and d!13765 (not res!11422)) b!25349))

(assert (= (and b!25349 res!11423) b!25350))

(assert (= (and b!25350 res!11424) b!25351))

(assert (= (and b!25351 res!11425) b!25352))

(declare-fun m!26359 () Bool)

(assert (=> b!25352 m!26359))

(declare-fun m!26361 () Bool)

(assert (=> b!25351 m!26361))

(assert (=> b!25349 m!26285))

(assert (=> b!25349 m!26283))

(assert (=> b!25350 m!26285))

(assert (=> b!25350 m!26283))

(assert (=> b!25301 d!13765))

(declare-fun b!25354 () Bool)

(declare-fun e!13055 () Int)

(declare-fun lt!3994 () Int)

(declare-fun lt!3996 () Int)

(assert (=> b!25354 (= e!13055 (+ 1 (ite (>= lt!3994 lt!3996) lt!3994 lt!3996)))))

(assert (=> b!25354 (= lt!3996 (level!46 (right!705 (left!702 ys!77))))))

(assert (=> b!25354 (= lt!3994 (level!46 (left!702 (left!702 ys!77))))))

(declare-fun d!13767 () Bool)

(declare-fun lt!3995 () Int)

(assert (=> d!13767 (>= lt!3995 0)))

(assert (=> d!13767 (= lt!3995 e!13055)))

(declare-fun c!5718 () Bool)

(assert (=> d!13767 (= c!5718 (or (is-Empty!68 (left!702 ys!77)) (is-Single!57 (left!702 ys!77))))))

(assert (=> d!13767 (= (level!46 (left!702 ys!77)) lt!3995)))

(declare-fun b!25353 () Bool)

(assert (=> b!25353 (= e!13055 0)))

(assert (= (and d!13767 c!5718) b!25353))

(assert (= (and d!13767 (not c!5718)) b!25354))

(declare-fun m!26363 () Bool)

(assert (=> b!25354 m!26363))

(declare-fun m!26365 () Bool)

(assert (=> b!25354 m!26365))

(assert (=> b!25288 d!13767))

(declare-fun b!25356 () Bool)

(declare-fun e!13056 () Int)

(declare-fun lt!3997 () Int)

(declare-fun lt!3999 () Int)

(assert (=> b!25356 (= e!13056 (+ 1 (ite (>= lt!3997 lt!3999) lt!3997 lt!3999)))))

(assert (=> b!25356 (= lt!3999 (level!46 (right!705 (right!705 ys!77))))))

(assert (=> b!25356 (= lt!3997 (level!46 (left!702 (right!705 ys!77))))))

(declare-fun d!13769 () Bool)

(declare-fun lt!3998 () Int)

(assert (=> d!13769 (>= lt!3998 0)))

(assert (=> d!13769 (= lt!3998 e!13056)))

(declare-fun c!5719 () Bool)

(assert (=> d!13769 (= c!5719 (or (is-Empty!68 (right!705 ys!77)) (is-Single!57 (right!705 ys!77))))))

(assert (=> d!13769 (= (level!46 (right!705 ys!77)) lt!3998)))

(declare-fun b!25355 () Bool)

(assert (=> b!25355 (= e!13056 0)))

(assert (= (and d!13769 c!5719) b!25355))

(assert (= (and d!13769 (not c!5719)) b!25356))

(declare-fun m!26367 () Bool)

(assert (=> b!25356 m!26367))

(declare-fun m!26369 () Bool)

(assert (=> b!25356 m!26369))

(assert (=> b!25288 d!13769))

(assert (=> b!25300 d!13731))

(assert (=> b!25300 d!13733))

(declare-fun d!13771 () Bool)

(assert (=> d!13771 (= (isEmpty!314 (right!705 ys!88)) (= (right!705 ys!88) Empty!68))))

(assert (=> b!25312 d!13771))

(declare-fun d!13773 () Bool)

(assert (=> d!13773 (= (isEmpty!314 (left!702 xs!544)) (= (left!702 xs!544) Empty!68))))

(assert (=> b!25315 d!13773))

(declare-fun b!25357 () Bool)

(declare-fun e!13058 () Bool)

(declare-fun e!13057 () Bool)

(assert (=> b!25357 (= e!13058 e!13057)))

(declare-fun res!11429 () Bool)

(assert (=> b!25357 (=> (not res!11429) (not e!13057))))

(assert (=> b!25357 (= res!11429 (not (isEmpty!314 (left!702 (left!702 ys!77)))))))

(declare-fun b!25358 () Bool)

(declare-fun res!11428 () Bool)

(assert (=> b!25358 (=> (not res!11428) (not e!13057))))

(assert (=> b!25358 (= res!11428 (not (isEmpty!314 (right!705 (left!702 ys!77)))))))

(declare-fun b!25359 () Bool)

(declare-fun res!11427 () Bool)

(assert (=> b!25359 (=> (not res!11427) (not e!13057))))

(assert (=> b!25359 (= res!11427 (concInv!52 (left!702 (left!702 ys!77))))))

(declare-fun d!13775 () Bool)

(declare-fun res!11426 () Bool)

(assert (=> d!13775 (=> res!11426 e!13058)))

(assert (=> d!13775 (= res!11426 (not (is-CC!57 (left!702 ys!77))))))

(assert (=> d!13775 (= (concInv!52 (left!702 ys!77)) e!13058)))

(declare-fun b!25360 () Bool)

(assert (=> b!25360 (= e!13057 (concInv!52 (right!705 (left!702 ys!77))))))

(assert (= (and d!13775 (not res!11426)) b!25357))

(assert (= (and b!25357 res!11429) b!25358))

(assert (= (and b!25358 res!11428) b!25359))

(assert (= (and b!25359 res!11427) b!25360))

(declare-fun m!26371 () Bool)

(assert (=> b!25357 m!26371))

(declare-fun m!26373 () Bool)

(assert (=> b!25358 m!26373))

(declare-fun m!26375 () Bool)

(assert (=> b!25359 m!26375))

(declare-fun m!26377 () Bool)

(assert (=> b!25360 m!26377))

(assert (=> b!25269 d!13775))

(declare-fun b!25362 () Bool)

(declare-fun e!13059 () Int)

(declare-fun lt!4000 () Int)

(declare-fun lt!4002 () Int)

(assert (=> b!25362 (= e!13059 (+ 1 (ite (>= lt!4000 lt!4002) lt!4000 lt!4002)))))

(assert (=> b!25362 (= lt!4002 (level!46 (right!705 (left!702 ys!88))))))

(assert (=> b!25362 (= lt!4000 (level!46 (left!702 (left!702 ys!88))))))

(declare-fun d!13777 () Bool)

(declare-fun lt!4001 () Int)

(assert (=> d!13777 (>= lt!4001 0)))

(assert (=> d!13777 (= lt!4001 e!13059)))

(declare-fun c!5720 () Bool)

(assert (=> d!13777 (= c!5720 (or (is-Empty!68 (left!702 ys!88)) (is-Single!57 (left!702 ys!88))))))

(assert (=> d!13777 (= (level!46 (left!702 ys!88)) lt!4001)))

(declare-fun b!25361 () Bool)

(assert (=> b!25361 (= e!13059 0)))

(assert (= (and d!13777 c!5720) b!25361))

(assert (= (and d!13777 (not c!5720)) b!25362))

(declare-fun m!26379 () Bool)

(assert (=> b!25362 m!26379))

(declare-fun m!26381 () Bool)

(assert (=> b!25362 m!26381))

(assert (=> b!25295 d!13777))

(declare-fun b!25364 () Bool)

(declare-fun e!13060 () Int)

(declare-fun lt!4003 () Int)

(declare-fun lt!4005 () Int)

(assert (=> b!25364 (= e!13060 (+ 1 (ite (>= lt!4003 lt!4005) lt!4003 lt!4005)))))

(assert (=> b!25364 (= lt!4005 (level!46 (right!705 (right!705 ys!88))))))

(assert (=> b!25364 (= lt!4003 (level!46 (left!702 (right!705 ys!88))))))

(declare-fun d!13779 () Bool)

(declare-fun lt!4004 () Int)

(assert (=> d!13779 (>= lt!4004 0)))

(assert (=> d!13779 (= lt!4004 e!13060)))

(declare-fun c!5721 () Bool)

(assert (=> d!13779 (= c!5721 (or (is-Empty!68 (right!705 ys!88)) (is-Single!57 (right!705 ys!88))))))

(assert (=> d!13779 (= (level!46 (right!705 ys!88)) lt!4004)))

(declare-fun b!25363 () Bool)

(assert (=> b!25363 (= e!13060 0)))

(assert (= (and d!13779 c!5721) b!25363))

(assert (= (and d!13779 (not c!5721)) b!25364))

(declare-fun m!26383 () Bool)

(assert (=> b!25364 m!26383))

(declare-fun m!26385 () Bool)

(assert (=> b!25364 m!26385))

(assert (=> b!25295 d!13779))

(declare-fun b!25365 () Bool)

(declare-fun e!13062 () Bool)

(declare-fun e!13061 () Bool)

(assert (=> b!25365 (= e!13062 e!13061)))

(declare-fun res!11433 () Bool)

(assert (=> b!25365 (=> (not res!11433) (not e!13061))))

(assert (=> b!25365 (= res!11433 (not (isEmpty!314 (left!702 (right!705 ys!88)))))))

(declare-fun b!25366 () Bool)

(declare-fun res!11432 () Bool)

(assert (=> b!25366 (=> (not res!11432) (not e!13061))))

(assert (=> b!25366 (= res!11432 (not (isEmpty!314 (right!705 (right!705 ys!88)))))))

(declare-fun b!25367 () Bool)

(declare-fun res!11431 () Bool)

(assert (=> b!25367 (=> (not res!11431) (not e!13061))))

(assert (=> b!25367 (= res!11431 (concInv!52 (left!702 (right!705 ys!88))))))

(declare-fun d!13781 () Bool)

(declare-fun res!11430 () Bool)

(assert (=> d!13781 (=> res!11430 e!13062)))

(assert (=> d!13781 (= res!11430 (not (is-CC!57 (right!705 ys!88))))))

(assert (=> d!13781 (= (concInv!52 (right!705 ys!88)) e!13062)))

(declare-fun b!25368 () Bool)

(assert (=> b!25368 (= e!13061 (concInv!52 (right!705 (right!705 ys!88))))))

(assert (= (and d!13781 (not res!11430)) b!25365))

(assert (= (and b!25365 res!11433) b!25366))

(assert (= (and b!25366 res!11432) b!25367))

(assert (= (and b!25367 res!11431) b!25368))

(declare-fun m!26387 () Bool)

(assert (=> b!25365 m!26387))

(declare-fun m!26389 () Bool)

(assert (=> b!25366 m!26389))

(declare-fun m!26391 () Bool)

(assert (=> b!25367 m!26391))

(declare-fun m!26393 () Bool)

(assert (=> b!25368 m!26393))

(assert (=> b!25314 d!13781))

(declare-fun b!25369 () Bool)

(declare-fun e!13064 () Bool)

(declare-fun e!13063 () Bool)

(assert (=> b!25369 (= e!13064 e!13063)))

(declare-fun res!11437 () Bool)

(assert (=> b!25369 (=> (not res!11437) (not e!13063))))

(assert (=> b!25369 (= res!11437 (not (isEmpty!314 (left!702 (right!705 xs!533)))))))

(declare-fun b!25370 () Bool)

(declare-fun res!11436 () Bool)

(assert (=> b!25370 (=> (not res!11436) (not e!13063))))

(assert (=> b!25370 (= res!11436 (not (isEmpty!314 (right!705 (right!705 xs!533)))))))

(declare-fun b!25371 () Bool)

(declare-fun res!11435 () Bool)

(assert (=> b!25371 (=> (not res!11435) (not e!13063))))

(assert (=> b!25371 (= res!11435 (concInv!52 (left!702 (right!705 xs!533))))))

(declare-fun d!13783 () Bool)

(declare-fun res!11434 () Bool)

(assert (=> d!13783 (=> res!11434 e!13064)))

(assert (=> d!13783 (= res!11434 (not (is-CC!57 (right!705 xs!533))))))

(assert (=> d!13783 (= (concInv!52 (right!705 xs!533)) e!13064)))

(declare-fun b!25372 () Bool)

(assert (=> b!25372 (= e!13063 (concInv!52 (right!705 (right!705 xs!533))))))

(assert (= (and d!13783 (not res!11434)) b!25369))

(assert (= (and b!25369 res!11437) b!25370))

(assert (= (and b!25370 res!11436) b!25371))

(assert (= (and b!25371 res!11435) b!25372))

(declare-fun m!26395 () Bool)

(assert (=> b!25369 m!26395))

(declare-fun m!26397 () Bool)

(assert (=> b!25370 m!26397))

(declare-fun m!26399 () Bool)

(assert (=> b!25371 m!26399))

(declare-fun m!26401 () Bool)

(assert (=> b!25372 m!26401))

(assert (=> b!25294 d!13783))

(declare-fun b!25373 () Bool)

(declare-fun e!13066 () Bool)

(declare-fun e!13065 () Bool)

(assert (=> b!25373 (= e!13066 e!13065)))

(declare-fun res!11441 () Bool)

(assert (=> b!25373 (=> (not res!11441) (not e!13065))))

(assert (=> b!25373 (= res!11441 (not (isEmpty!314 (left!702 (left!702 xs!533)))))))

(declare-fun b!25374 () Bool)

(declare-fun res!11440 () Bool)

(assert (=> b!25374 (=> (not res!11440) (not e!13065))))

(assert (=> b!25374 (= res!11440 (not (isEmpty!314 (right!705 (left!702 xs!533)))))))

(declare-fun b!25375 () Bool)

(declare-fun res!11439 () Bool)

(assert (=> b!25375 (=> (not res!11439) (not e!13065))))

(assert (=> b!25375 (= res!11439 (concInv!52 (left!702 (left!702 xs!533))))))

(declare-fun d!13785 () Bool)

(declare-fun res!11438 () Bool)

(assert (=> d!13785 (=> res!11438 e!13066)))

(assert (=> d!13785 (= res!11438 (not (is-CC!57 (left!702 xs!533))))))

(assert (=> d!13785 (= (concInv!52 (left!702 xs!533)) e!13066)))

(declare-fun b!25376 () Bool)

(assert (=> b!25376 (= e!13065 (concInv!52 (right!705 (left!702 xs!533))))))

(assert (= (and d!13785 (not res!11438)) b!25373))

(assert (= (and b!25373 res!11441) b!25374))

(assert (= (and b!25374 res!11440) b!25375))

(assert (= (and b!25375 res!11439) b!25376))

(declare-fun m!26403 () Bool)

(assert (=> b!25373 m!26403))

(declare-fun m!26405 () Bool)

(assert (=> b!25374 m!26405))

(declare-fun m!26407 () Bool)

(assert (=> b!25375 m!26407))

(declare-fun m!26409 () Bool)

(assert (=> b!25376 m!26409))

(assert (=> b!25293 d!13785))

(assert (=> b!25299 d!13731))

(assert (=> b!25299 d!13733))

(declare-fun b!25378 () Bool)

(declare-fun e!13067 () Int)

(declare-fun lt!4006 () Int)

(declare-fun lt!4008 () Int)

(assert (=> b!25378 (= e!13067 (+ 1 (ite (>= lt!4006 lt!4008) lt!4006 lt!4008)))))

(assert (=> b!25378 (= lt!4008 (level!46 (right!705 (left!702 xs!544))))))

(assert (=> b!25378 (= lt!4006 (level!46 (left!702 (left!702 xs!544))))))

(declare-fun d!13787 () Bool)

(declare-fun lt!4007 () Int)

(assert (=> d!13787 (>= lt!4007 0)))

(assert (=> d!13787 (= lt!4007 e!13067)))

(declare-fun c!5722 () Bool)

(assert (=> d!13787 (= c!5722 (or (is-Empty!68 (left!702 xs!544)) (is-Single!57 (left!702 xs!544))))))

(assert (=> d!13787 (= (level!46 (left!702 xs!544)) lt!4007)))

(declare-fun b!25377 () Bool)

(assert (=> b!25377 (= e!13067 0)))

(assert (= (and d!13787 c!5722) b!25377))

(assert (= (and d!13787 (not c!5722)) b!25378))

(declare-fun m!26411 () Bool)

(assert (=> b!25378 m!26411))

(declare-fun m!26413 () Bool)

(assert (=> b!25378 m!26413))

(assert (=> b!25308 d!13787))

(declare-fun b!25380 () Bool)

(declare-fun e!13068 () Int)

(declare-fun lt!4009 () Int)

(declare-fun lt!4011 () Int)

(assert (=> b!25380 (= e!13068 (+ 1 (ite (>= lt!4009 lt!4011) lt!4009 lt!4011)))))

(assert (=> b!25380 (= lt!4011 (level!46 (right!705 (right!705 xs!544))))))

(assert (=> b!25380 (= lt!4009 (level!46 (left!702 (right!705 xs!544))))))

(declare-fun d!13789 () Bool)

(declare-fun lt!4010 () Int)

(assert (=> d!13789 (>= lt!4010 0)))

(assert (=> d!13789 (= lt!4010 e!13068)))

(declare-fun c!5723 () Bool)

(assert (=> d!13789 (= c!5723 (or (is-Empty!68 (right!705 xs!544)) (is-Single!57 (right!705 xs!544))))))

(assert (=> d!13789 (= (level!46 (right!705 xs!544)) lt!4010)))

(declare-fun b!25379 () Bool)

(assert (=> b!25379 (= e!13068 0)))

(assert (= (and d!13789 c!5723) b!25379))

(assert (= (and d!13789 (not c!5723)) b!25380))

(declare-fun m!26415 () Bool)

(assert (=> b!25380 m!26415))

(declare-fun m!26417 () Bool)

(assert (=> b!25380 m!26417))

(assert (=> b!25308 d!13789))

(declare-fun d!13791 () Bool)

(assert (=> d!13791 (= (isEmpty!314 (left!702 xs!533)) (= (left!702 xs!533) Empty!68))))

(assert (=> b!25291 d!13791))

(assert (=> b!25287 d!13767))

(assert (=> b!25287 d!13769))

(declare-fun d!13793 () Bool)

(assert (=> d!13793 (= (isEmpty!314 (left!702 ys!88)) (= (left!702 ys!88) Empty!68))))

(assert (=> b!25311 d!13793))

(assert (=> b!25306 d!13733))

(assert (=> b!25306 d!13731))

(declare-fun b!25381 () Bool)

(declare-fun e!13070 () Bool)

(declare-fun e!13069 () Bool)

(assert (=> b!25381 (= e!13070 e!13069)))

(declare-fun res!11445 () Bool)

(assert (=> b!25381 (=> (not res!11445) (not e!13069))))

(assert (=> b!25381 (= res!11445 (not (isEmpty!314 (left!702 (right!705 xs!544)))))))

(declare-fun b!25382 () Bool)

(declare-fun res!11444 () Bool)

(assert (=> b!25382 (=> (not res!11444) (not e!13069))))

(assert (=> b!25382 (= res!11444 (not (isEmpty!314 (right!705 (right!705 xs!544)))))))

(declare-fun b!25383 () Bool)

(declare-fun res!11443 () Bool)

(assert (=> b!25383 (=> (not res!11443) (not e!13069))))

(assert (=> b!25383 (= res!11443 (concInv!52 (left!702 (right!705 xs!544))))))

(declare-fun d!13795 () Bool)

(declare-fun res!11442 () Bool)

(assert (=> d!13795 (=> res!11442 e!13070)))

(assert (=> d!13795 (= res!11442 (not (is-CC!57 (right!705 xs!544))))))

(assert (=> d!13795 (= (concInv!52 (right!705 xs!544)) e!13070)))

(declare-fun b!25384 () Bool)

(assert (=> b!25384 (= e!13069 (concInv!52 (right!705 (right!705 xs!544))))))

(assert (= (and d!13795 (not res!11442)) b!25381))

(assert (= (and b!25381 res!11445) b!25382))

(assert (= (and b!25382 res!11444) b!25383))

(assert (= (and b!25383 res!11443) b!25384))

(declare-fun m!26419 () Bool)

(assert (=> b!25381 m!26419))

(declare-fun m!26421 () Bool)

(assert (=> b!25382 m!26421))

(declare-fun m!26423 () Bool)

(assert (=> b!25383 m!26423))

(declare-fun m!26425 () Bool)

(assert (=> b!25384 m!26425))

(assert (=> b!25318 d!13795))

(declare-fun b!25388 () Bool)

(declare-fun e!13071 () Bool)

(assert (=> b!25388 (= e!13071 (balanced!53 (right!705 (left!702 ys!88))))))

(declare-fun b!25387 () Bool)

(declare-fun res!11449 () Bool)

(assert (=> b!25387 (=> (not res!11449) (not e!13071))))

(assert (=> b!25387 (= res!11449 (balanced!53 (left!702 (left!702 ys!88))))))

(declare-fun b!25385 () Bool)

(declare-fun e!13072 () Bool)

(assert (=> b!25385 (= e!13072 e!13071)))

(declare-fun res!11447 () Bool)

(assert (=> b!25385 (=> (not res!11447) (not e!13071))))

(assert (=> b!25385 (= res!11447 (>= (- (level!46 (left!702 (left!702 ys!88))) (level!46 (right!705 (left!702 ys!88)))) (- 1)))))

(declare-fun b!25386 () Bool)

(declare-fun res!11448 () Bool)

(assert (=> b!25386 (=> (not res!11448) (not e!13071))))

(assert (=> b!25386 (= res!11448 (<= (- (level!46 (left!702 (left!702 ys!88))) (level!46 (right!705 (left!702 ys!88)))) 1))))

(declare-fun d!13797 () Bool)

(declare-fun res!11446 () Bool)

(assert (=> d!13797 (=> res!11446 e!13072)))

(assert (=> d!13797 (= res!11446 (not (is-CC!57 (left!702 ys!88))))))

(assert (=> d!13797 (= (balanced!53 (left!702 ys!88)) e!13072)))

(assert (= (and d!13797 (not res!11446)) b!25385))

(assert (= (and b!25385 res!11447) b!25386))

(assert (= (and b!25386 res!11448) b!25387))

(assert (= (and b!25387 res!11449) b!25388))

(declare-fun m!26427 () Bool)

(assert (=> b!25388 m!26427))

(declare-fun m!26429 () Bool)

(assert (=> b!25387 m!26429))

(assert (=> b!25385 m!26381))

(assert (=> b!25385 m!26379))

(assert (=> b!25386 m!26381))

(assert (=> b!25386 m!26379))

(assert (=> b!25297 d!13797))

(declare-fun b!25392 () Bool)

(declare-fun e!13073 () Bool)

(assert (=> b!25392 (= e!13073 (balanced!53 (right!705 (left!702 ys!77))))))

(declare-fun b!25391 () Bool)

(declare-fun res!11453 () Bool)

(assert (=> b!25391 (=> (not res!11453) (not e!13073))))

(assert (=> b!25391 (= res!11453 (balanced!53 (left!702 (left!702 ys!77))))))

(declare-fun b!25389 () Bool)

(declare-fun e!13074 () Bool)

(assert (=> b!25389 (= e!13074 e!13073)))

(declare-fun res!11451 () Bool)

(assert (=> b!25389 (=> (not res!11451) (not e!13073))))

(assert (=> b!25389 (= res!11451 (>= (- (level!46 (left!702 (left!702 ys!77))) (level!46 (right!705 (left!702 ys!77)))) (- 1)))))

(declare-fun b!25390 () Bool)

(declare-fun res!11452 () Bool)

(assert (=> b!25390 (=> (not res!11452) (not e!13073))))

(assert (=> b!25390 (= res!11452 (<= (- (level!46 (left!702 (left!702 ys!77))) (level!46 (right!705 (left!702 ys!77)))) 1))))

(declare-fun d!13799 () Bool)

(declare-fun res!11450 () Bool)

(assert (=> d!13799 (=> res!11450 e!13074)))

(assert (=> d!13799 (= res!11450 (not (is-CC!57 (left!702 ys!77))))))

(assert (=> d!13799 (= (balanced!53 (left!702 ys!77)) e!13074)))

(assert (= (and d!13799 (not res!11450)) b!25389))

(assert (= (and b!25389 res!11451) b!25390))

(assert (= (and b!25390 res!11452) b!25391))

(assert (= (and b!25391 res!11453) b!25392))

(declare-fun m!26431 () Bool)

(assert (=> b!25392 m!26431))

(declare-fun m!26433 () Bool)

(assert (=> b!25391 m!26433))

(assert (=> b!25389 m!26365))

(assert (=> b!25389 m!26363))

(assert (=> b!25390 m!26365))

(assert (=> b!25390 m!26363))

(assert (=> b!25289 d!13799))

(assert (=> b!25296 d!13777))

(assert (=> b!25296 d!13779))

(declare-fun d!13801 () Bool)

(assert (=> d!13801 (= (isEmpty!314 (right!705 xs!544)) (= (right!705 xs!544) Empty!68))))

(assert (=> b!25316 d!13801))

(declare-fun b!25394 () Bool)

(declare-fun e!13075 () Int)

(declare-fun lt!4012 () Int)

(declare-fun lt!4014 () Int)

(assert (=> b!25394 (= e!13075 (+ 1 (ite (>= lt!4012 lt!4014) lt!4012 lt!4014)))))

(assert (=> b!25394 (= lt!4014 (level!46 (right!705 (right!705 (left!702 xs!533)))))))

(assert (=> b!25394 (= lt!4012 (level!46 (left!702 (right!705 (left!702 xs!533)))))))

(declare-fun d!13803 () Bool)

(declare-fun lt!4013 () Int)

(assert (=> d!13803 (>= lt!4013 0)))

(assert (=> d!13803 (= lt!4013 e!13075)))

(declare-fun c!5724 () Bool)

(assert (=> d!13803 (= c!5724 (or (is-Empty!68 (right!705 (left!702 xs!533))) (is-Single!57 (right!705 (left!702 xs!533)))))))

(assert (=> d!13803 (= (level!46 (right!705 (left!702 xs!533))) lt!4013)))

(declare-fun b!25393 () Bool)

(assert (=> b!25393 (= e!13075 0)))

(assert (= (and d!13803 c!5724) b!25393))

(assert (= (and d!13803 (not c!5724)) b!25394))

(declare-fun m!26435 () Bool)

(assert (=> b!25394 m!26435))

(declare-fun m!26437 () Bool)

(assert (=> b!25394 m!26437))

(assert (=> b!25276 d!13803))

(declare-fun b!25396 () Bool)

(declare-fun e!13076 () Int)

(declare-fun lt!4015 () Int)

(declare-fun lt!4017 () Int)

(assert (=> b!25396 (= e!13076 (+ 1 (ite (>= lt!4015 lt!4017) lt!4015 lt!4017)))))

(assert (=> b!25396 (= lt!4017 (level!46 (right!705 (left!702 (left!702 xs!533)))))))

(assert (=> b!25396 (= lt!4015 (level!46 (left!702 (left!702 (left!702 xs!533)))))))

(declare-fun d!13805 () Bool)

(declare-fun lt!4016 () Int)

(assert (=> d!13805 (>= lt!4016 0)))

(assert (=> d!13805 (= lt!4016 e!13076)))

(declare-fun c!5725 () Bool)

(assert (=> d!13805 (= c!5725 (or (is-Empty!68 (left!702 (left!702 xs!533))) (is-Single!57 (left!702 (left!702 xs!533)))))))

(assert (=> d!13805 (= (level!46 (left!702 (left!702 xs!533))) lt!4016)))

(declare-fun b!25395 () Bool)

(assert (=> b!25395 (= e!13076 0)))

(assert (= (and d!13805 c!5725) b!25395))

(assert (= (and d!13805 (not c!5725)) b!25396))

(declare-fun m!26439 () Bool)

(assert (=> b!25396 m!26439))

(declare-fun m!26441 () Bool)

(assert (=> b!25396 m!26441))

(assert (=> b!25276 d!13805))

(assert (=> b!25307 d!13787))

(assert (=> b!25307 d!13789))

(declare-fun b!25400 () Bool)

(declare-fun e!13077 () Bool)

(assert (=> b!25400 (= e!13077 (balanced!53 (right!705 (left!702 xs!544))))))

(declare-fun b!25399 () Bool)

(declare-fun res!11457 () Bool)

(assert (=> b!25399 (=> (not res!11457) (not e!13077))))

(assert (=> b!25399 (= res!11457 (balanced!53 (left!702 (left!702 xs!544))))))

(declare-fun b!25397 () Bool)

(declare-fun e!13078 () Bool)

(assert (=> b!25397 (= e!13078 e!13077)))

(declare-fun res!11455 () Bool)

(assert (=> b!25397 (=> (not res!11455) (not e!13077))))

(assert (=> b!25397 (= res!11455 (>= (- (level!46 (left!702 (left!702 xs!544))) (level!46 (right!705 (left!702 xs!544)))) (- 1)))))

(declare-fun b!25398 () Bool)

(declare-fun res!11456 () Bool)

(assert (=> b!25398 (=> (not res!11456) (not e!13077))))

(assert (=> b!25398 (= res!11456 (<= (- (level!46 (left!702 (left!702 xs!544))) (level!46 (right!705 (left!702 xs!544)))) 1))))

(declare-fun d!13807 () Bool)

(declare-fun res!11454 () Bool)

(assert (=> d!13807 (=> res!11454 e!13078)))

(assert (=> d!13807 (= res!11454 (not (is-CC!57 (left!702 xs!544))))))

(assert (=> d!13807 (= (balanced!53 (left!702 xs!544)) e!13078)))

(assert (= (and d!13807 (not res!11454)) b!25397))

(assert (= (and b!25397 res!11455) b!25398))

(assert (= (and b!25398 res!11456) b!25399))

(assert (= (and b!25399 res!11457) b!25400))

(declare-fun m!26443 () Bool)

(assert (=> b!25400 m!26443))

(declare-fun m!26445 () Bool)

(assert (=> b!25399 m!26445))

(assert (=> b!25397 m!26413))

(assert (=> b!25397 m!26411))

(assert (=> b!25398 m!26413))

(assert (=> b!25398 m!26411))

(assert (=> b!25309 d!13807))

(declare-fun b!25401 () Bool)

(declare-fun e!13080 () Bool)

(declare-fun e!13079 () Bool)

(assert (=> b!25401 (= e!13080 e!13079)))

(declare-fun res!11461 () Bool)

(assert (=> b!25401 (=> (not res!11461) (not e!13079))))

(assert (=> b!25401 (= res!11461 (not (isEmpty!314 (left!702 (right!705 ys!77)))))))

(declare-fun b!25402 () Bool)

(declare-fun res!11460 () Bool)

(assert (=> b!25402 (=> (not res!11460) (not e!13079))))

(assert (=> b!25402 (= res!11460 (not (isEmpty!314 (right!705 (right!705 ys!77)))))))

(declare-fun b!25403 () Bool)

(declare-fun res!11459 () Bool)

(assert (=> b!25403 (=> (not res!11459) (not e!13079))))

(assert (=> b!25403 (= res!11459 (concInv!52 (left!702 (right!705 ys!77))))))

(declare-fun d!13809 () Bool)

(declare-fun res!11458 () Bool)

(assert (=> d!13809 (=> res!11458 e!13080)))

(assert (=> d!13809 (= res!11458 (not (is-CC!57 (right!705 ys!77))))))

(assert (=> d!13809 (= (concInv!52 (right!705 ys!77)) e!13080)))

(declare-fun b!25404 () Bool)

(assert (=> b!25404 (= e!13079 (concInv!52 (right!705 (right!705 ys!77))))))

(assert (= (and d!13809 (not res!11458)) b!25401))

(assert (= (and b!25401 res!11461) b!25402))

(assert (= (and b!25402 res!11460) b!25403))

(assert (= (and b!25403 res!11459) b!25404))

(declare-fun m!26447 () Bool)

(assert (=> b!25401 m!26447))

(declare-fun m!26449 () Bool)

(assert (=> b!25402 m!26449))

(declare-fun m!26451 () Bool)

(assert (=> b!25403 m!26451))

(declare-fun m!26453 () Bool)

(assert (=> b!25404 m!26453))

(assert (=> b!25270 d!13809))

(declare-fun b!25405 () Bool)

(declare-fun e!13082 () Bool)

(declare-fun e!13081 () Bool)

(assert (=> b!25405 (= e!13082 e!13081)))

(declare-fun res!11465 () Bool)

(assert (=> b!25405 (=> (not res!11465) (not e!13081))))

(assert (=> b!25405 (= res!11465 (not (isEmpty!314 (left!702 (left!702 xs!544)))))))

(declare-fun b!25406 () Bool)

(declare-fun res!11464 () Bool)

(assert (=> b!25406 (=> (not res!11464) (not e!13081))))

(assert (=> b!25406 (= res!11464 (not (isEmpty!314 (right!705 (left!702 xs!544)))))))

(declare-fun b!25407 () Bool)

(declare-fun res!11463 () Bool)

(assert (=> b!25407 (=> (not res!11463) (not e!13081))))

(assert (=> b!25407 (= res!11463 (concInv!52 (left!702 (left!702 xs!544))))))

(declare-fun d!13811 () Bool)

(declare-fun res!11462 () Bool)

(assert (=> d!13811 (=> res!11462 e!13082)))

(assert (=> d!13811 (= res!11462 (not (is-CC!57 (left!702 xs!544))))))

(assert (=> d!13811 (= (concInv!52 (left!702 xs!544)) e!13082)))

(declare-fun b!25408 () Bool)

(assert (=> b!25408 (= e!13081 (concInv!52 (right!705 (left!702 xs!544))))))

(assert (= (and d!13811 (not res!11462)) b!25405))

(assert (= (and b!25405 res!11465) b!25406))

(assert (= (and b!25406 res!11464) b!25407))

(assert (= (and b!25407 res!11463) b!25408))

(declare-fun m!26455 () Bool)

(assert (=> b!25405 m!26455))

(declare-fun m!26457 () Bool)

(assert (=> b!25406 m!26457))

(declare-fun m!26459 () Bool)

(assert (=> b!25407 m!26459))

(declare-fun m!26461 () Bool)

(assert (=> b!25408 m!26461))

(assert (=> b!25317 d!13811))

(declare-fun b!25412 () Bool)

(declare-fun e!13083 () Bool)

(assert (=> b!25412 (= e!13083 (balanced!53 (right!705 (right!705 ys!77))))))

(declare-fun b!25411 () Bool)

(declare-fun res!11469 () Bool)

(assert (=> b!25411 (=> (not res!11469) (not e!13083))))

(assert (=> b!25411 (= res!11469 (balanced!53 (left!702 (right!705 ys!77))))))

(declare-fun b!25409 () Bool)

(declare-fun e!13084 () Bool)

(assert (=> b!25409 (= e!13084 e!13083)))

(declare-fun res!11467 () Bool)

(assert (=> b!25409 (=> (not res!11467) (not e!13083))))

(assert (=> b!25409 (= res!11467 (>= (- (level!46 (left!702 (right!705 ys!77))) (level!46 (right!705 (right!705 ys!77)))) (- 1)))))

(declare-fun b!25410 () Bool)

(declare-fun res!11468 () Bool)

(assert (=> b!25410 (=> (not res!11468) (not e!13083))))

(assert (=> b!25410 (= res!11468 (<= (- (level!46 (left!702 (right!705 ys!77))) (level!46 (right!705 (right!705 ys!77)))) 1))))

(declare-fun d!13813 () Bool)

(declare-fun res!11466 () Bool)

(assert (=> d!13813 (=> res!11466 e!13084)))

(assert (=> d!13813 (= res!11466 (not (is-CC!57 (right!705 ys!77))))))

(assert (=> d!13813 (= (balanced!53 (right!705 ys!77)) e!13084)))

(assert (= (and d!13813 (not res!11466)) b!25409))

(assert (= (and b!25409 res!11467) b!25410))

(assert (= (and b!25410 res!11468) b!25411))

(assert (= (and b!25411 res!11469) b!25412))

(declare-fun m!26463 () Bool)

(assert (=> b!25412 m!26463))

(declare-fun m!26465 () Bool)

(assert (=> b!25411 m!26465))

(assert (=> b!25409 m!26369))

(assert (=> b!25409 m!26367))

(assert (=> b!25410 m!26369))

(assert (=> b!25410 m!26367))

(assert (=> b!25290 d!13813))

(declare-fun d!13815 () Bool)

(assert (=> d!13815 (= (isEmpty!314 (right!705 xs!533)) (= (right!705 xs!533) Empty!68))))

(assert (=> b!25292 d!13815))

(declare-fun d!13817 () Bool)

(assert (=> d!13817 (= (isEmpty!314 (right!705 ys!77)) (= (right!705 ys!77) Empty!68))))

(assert (=> b!25268 d!13817))

(declare-fun b!25416 () Bool)

(declare-fun e!13085 () Bool)

(assert (=> b!25416 (= e!13085 (balanced!53 (right!705 (right!705 ys!88))))))

(declare-fun b!25415 () Bool)

(declare-fun res!11473 () Bool)

(assert (=> b!25415 (=> (not res!11473) (not e!13085))))

(assert (=> b!25415 (= res!11473 (balanced!53 (left!702 (right!705 ys!88))))))

(declare-fun b!25413 () Bool)

(declare-fun e!13086 () Bool)

(assert (=> b!25413 (= e!13086 e!13085)))

(declare-fun res!11471 () Bool)

(assert (=> b!25413 (=> (not res!11471) (not e!13085))))

(assert (=> b!25413 (= res!11471 (>= (- (level!46 (left!702 (right!705 ys!88))) (level!46 (right!705 (right!705 ys!88)))) (- 1)))))

(declare-fun b!25414 () Bool)

(declare-fun res!11472 () Bool)

(assert (=> b!25414 (=> (not res!11472) (not e!13085))))

(assert (=> b!25414 (= res!11472 (<= (- (level!46 (left!702 (right!705 ys!88))) (level!46 (right!705 (right!705 ys!88)))) 1))))

(declare-fun d!13819 () Bool)

(declare-fun res!11470 () Bool)

(assert (=> d!13819 (=> res!11470 e!13086)))

(assert (=> d!13819 (= res!11470 (not (is-CC!57 (right!705 ys!88))))))

(assert (=> d!13819 (= (balanced!53 (right!705 ys!88)) e!13086)))

(assert (= (and d!13819 (not res!11470)) b!25413))

(assert (= (and b!25413 res!11471) b!25414))

(assert (= (and b!25414 res!11472) b!25415))

(assert (= (and b!25415 res!11473) b!25416))

(declare-fun m!26467 () Bool)

(assert (=> b!25416 m!26467))

(declare-fun m!26469 () Bool)

(assert (=> b!25415 m!26469))

(assert (=> b!25413 m!26385))

(assert (=> b!25413 m!26383))

(assert (=> b!25414 m!26385))

(assert (=> b!25414 m!26383))

(assert (=> b!25298 d!13819))

(declare-fun b!25420 () Bool)

(declare-fun e!13087 () Bool)

(assert (=> b!25420 (= e!13087 (balanced!53 (right!705 (right!705 xs!544))))))

(declare-fun b!25419 () Bool)

(declare-fun res!11477 () Bool)

(assert (=> b!25419 (=> (not res!11477) (not e!13087))))

(assert (=> b!25419 (= res!11477 (balanced!53 (left!702 (right!705 xs!544))))))

(declare-fun b!25417 () Bool)

(declare-fun e!13088 () Bool)

(assert (=> b!25417 (= e!13088 e!13087)))

(declare-fun res!11475 () Bool)

(assert (=> b!25417 (=> (not res!11475) (not e!13087))))

(assert (=> b!25417 (= res!11475 (>= (- (level!46 (left!702 (right!705 xs!544))) (level!46 (right!705 (right!705 xs!544)))) (- 1)))))

(declare-fun b!25418 () Bool)

(declare-fun res!11476 () Bool)

(assert (=> b!25418 (=> (not res!11476) (not e!13087))))

(assert (=> b!25418 (= res!11476 (<= (- (level!46 (left!702 (right!705 xs!544))) (level!46 (right!705 (right!705 xs!544)))) 1))))

(declare-fun d!13821 () Bool)

(declare-fun res!11474 () Bool)

(assert (=> d!13821 (=> res!11474 e!13088)))

(assert (=> d!13821 (= res!11474 (not (is-CC!57 (right!705 xs!544))))))

(assert (=> d!13821 (= (balanced!53 (right!705 xs!544)) e!13088)))

(assert (= (and d!13821 (not res!11474)) b!25417))

(assert (= (and b!25417 res!11475) b!25418))

(assert (= (and b!25418 res!11476) b!25419))

(assert (= (and b!25419 res!11477) b!25420))

(declare-fun m!26471 () Bool)

(assert (=> b!25420 m!26471))

(declare-fun m!26473 () Bool)

(assert (=> b!25419 m!26473))

(assert (=> b!25417 m!26417))

(assert (=> b!25417 m!26415))

(assert (=> b!25418 m!26417))

(assert (=> b!25418 m!26415))

(assert (=> b!25310 d!13821))

(declare-fun b!25424 () Bool)

(declare-fun e!13089 () Bool)

(assert (=> b!25424 (= e!13089 (balanced!53 (right!705 (right!705 xs!533))))))

(declare-fun b!25423 () Bool)

(declare-fun res!11481 () Bool)

(assert (=> b!25423 (=> (not res!11481) (not e!13089))))

(assert (=> b!25423 (= res!11481 (balanced!53 (left!702 (right!705 xs!533))))))

(declare-fun b!25421 () Bool)

(declare-fun e!13090 () Bool)

(assert (=> b!25421 (= e!13090 e!13089)))

(declare-fun res!11479 () Bool)

(assert (=> b!25421 (=> (not res!11479) (not e!13089))))

(assert (=> b!25421 (= res!11479 (>= (- (level!46 (left!702 (right!705 xs!533))) (level!46 (right!705 (right!705 xs!533)))) (- 1)))))

(declare-fun b!25422 () Bool)

(declare-fun res!11480 () Bool)

(assert (=> b!25422 (=> (not res!11480) (not e!13089))))

(assert (=> b!25422 (= res!11480 (<= (- (level!46 (left!702 (right!705 xs!533))) (level!46 (right!705 (right!705 xs!533)))) 1))))

(declare-fun d!13823 () Bool)

(declare-fun res!11478 () Bool)

(assert (=> d!13823 (=> res!11478 e!13090)))

(assert (=> d!13823 (= res!11478 (not (is-CC!57 (right!705 xs!533))))))

(assert (=> d!13823 (= (balanced!53 (right!705 xs!533)) e!13090)))

(assert (= (and d!13823 (not res!11478)) b!25421))

(assert (= (and b!25421 res!11479) b!25422))

(assert (= (and b!25422 res!11480) b!25423))

(assert (= (and b!25423 res!11481) b!25424))

(declare-fun m!26475 () Bool)

(assert (=> b!25424 m!26475))

(declare-fun m!26477 () Bool)

(assert (=> b!25423 m!26477))

(assert (=> b!25421 m!26289))

(assert (=> b!25421 m!26287))

(assert (=> b!25422 m!26289))

(assert (=> b!25422 m!26287))

(assert (=> b!25302 d!13823))

(assert (=> b!25304 d!13769))

(assert (=> b!25304 d!13767))

(declare-fun b!25425 () Bool)

(declare-fun e!13091 () Bool)

(declare-fun tp!5534 () Bool)

(declare-fun tp!5535 () Bool)

(assert (=> b!25425 (= e!13091 (and tp!5534 tp!5535))))

(declare-fun b!25426 () Bool)

(assert (=> b!25426 (= e!13091 tp_is_empty!161)))

(assert (=> b!25333 (= tp!5526 e!13091)))

(assert (= (and b!25333 (is-CC!57 (left!702 (left!702 xs!544)))) b!25425))

(assert (= (and b!25333 (is-Single!57 (left!702 (left!702 xs!544)))) b!25426))

(declare-fun b!25427 () Bool)

(declare-fun e!13092 () Bool)

(declare-fun tp!5536 () Bool)

(declare-fun tp!5537 () Bool)

(assert (=> b!25427 (= e!13092 (and tp!5536 tp!5537))))

(declare-fun b!25428 () Bool)

(assert (=> b!25428 (= e!13092 tp_is_empty!161)))

(assert (=> b!25333 (= tp!5527 e!13092)))

(assert (= (and b!25333 (is-CC!57 (right!705 (left!702 xs!544)))) b!25427))

(assert (= (and b!25333 (is-Single!57 (right!705 (left!702 xs!544)))) b!25428))

(declare-fun b!25429 () Bool)

(declare-fun e!13093 () Bool)

(declare-fun tp!5538 () Bool)

(declare-fun tp!5539 () Bool)

(assert (=> b!25429 (= e!13093 (and tp!5538 tp!5539))))

(declare-fun b!25430 () Bool)

(assert (=> b!25430 (= e!13093 tp_is_empty!161)))

(assert (=> b!25335 (= tp!5528 e!13093)))

(assert (= (and b!25335 (is-CC!57 (left!702 (right!705 xs!544)))) b!25429))

(assert (= (and b!25335 (is-Single!57 (left!702 (right!705 xs!544)))) b!25430))

(declare-fun b!25431 () Bool)

(declare-fun e!13094 () Bool)

(declare-fun tp!5540 () Bool)

(declare-fun tp!5541 () Bool)

(assert (=> b!25431 (= e!13094 (and tp!5540 tp!5541))))

(declare-fun b!25432 () Bool)

(assert (=> b!25432 (= e!13094 tp_is_empty!161)))

(assert (=> b!25335 (= tp!5529 e!13094)))

(assert (= (and b!25335 (is-CC!57 (right!705 (right!705 xs!544)))) b!25431))

(assert (= (and b!25335 (is-Single!57 (right!705 (right!705 xs!544)))) b!25432))

(declare-fun b!25433 () Bool)

(declare-fun e!13095 () Bool)

(declare-fun tp!5542 () Bool)

(declare-fun tp!5543 () Bool)

(assert (=> b!25433 (= e!13095 (and tp!5542 tp!5543))))

(declare-fun b!25434 () Bool)

(assert (=> b!25434 (= e!13095 tp_is_empty!161)))

(assert (=> b!25329 (= tp!5522 e!13095)))

(assert (= (and b!25329 (is-CC!57 (left!702 (left!702 ys!77)))) b!25433))

(assert (= (and b!25329 (is-Single!57 (left!702 (left!702 ys!77)))) b!25434))

(declare-fun b!25435 () Bool)

(declare-fun e!13096 () Bool)

(declare-fun tp!5544 () Bool)

(declare-fun tp!5545 () Bool)

(assert (=> b!25435 (= e!13096 (and tp!5544 tp!5545))))

(declare-fun b!25436 () Bool)

(assert (=> b!25436 (= e!13096 tp_is_empty!161)))

(assert (=> b!25329 (= tp!5523 e!13096)))

(assert (= (and b!25329 (is-CC!57 (right!705 (left!702 ys!77)))) b!25435))

(assert (= (and b!25329 (is-Single!57 (right!705 (left!702 ys!77)))) b!25436))

(declare-fun b!25437 () Bool)

(declare-fun e!13097 () Bool)

(declare-fun tp!5546 () Bool)

(declare-fun tp!5547 () Bool)

(assert (=> b!25437 (= e!13097 (and tp!5546 tp!5547))))

(declare-fun b!25438 () Bool)

(assert (=> b!25438 (= e!13097 tp_is_empty!161)))

(assert (=> b!25331 (= tp!5524 e!13097)))

(assert (= (and b!25331 (is-CC!57 (left!702 (right!705 ys!77)))) b!25437))

(assert (= (and b!25331 (is-Single!57 (left!702 (right!705 ys!77)))) b!25438))

(declare-fun b!25439 () Bool)

(declare-fun e!13098 () Bool)

(declare-fun tp!5548 () Bool)

(declare-fun tp!5549 () Bool)

(assert (=> b!25439 (= e!13098 (and tp!5548 tp!5549))))

(declare-fun b!25440 () Bool)

(assert (=> b!25440 (= e!13098 tp_is_empty!161)))

(assert (=> b!25331 (= tp!5525 e!13098)))

(assert (= (and b!25331 (is-CC!57 (right!705 (right!705 ys!77)))) b!25439))

(assert (= (and b!25331 (is-Single!57 (right!705 (right!705 ys!77)))) b!25440))

(declare-fun b!25441 () Bool)

(declare-fun e!13099 () Bool)

(declare-fun tp!5550 () Bool)

(declare-fun tp!5551 () Bool)

(assert (=> b!25441 (= e!13099 (and tp!5550 tp!5551))))

(declare-fun b!25442 () Bool)

(assert (=> b!25442 (= e!13099 tp_is_empty!161)))

(assert (=> b!25327 (= tp!5520 e!13099)))

(assert (= (and b!25327 (is-CC!57 (left!702 (right!705 xs!533)))) b!25441))

(assert (= (and b!25327 (is-Single!57 (left!702 (right!705 xs!533)))) b!25442))

(declare-fun b!25443 () Bool)

(declare-fun e!13100 () Bool)

(declare-fun tp!5552 () Bool)

(declare-fun tp!5553 () Bool)

(assert (=> b!25443 (= e!13100 (and tp!5552 tp!5553))))

(declare-fun b!25444 () Bool)

(assert (=> b!25444 (= e!13100 tp_is_empty!161)))

(assert (=> b!25327 (= tp!5521 e!13100)))

(assert (= (and b!25327 (is-CC!57 (right!705 (right!705 xs!533)))) b!25443))

(assert (= (and b!25327 (is-Single!57 (right!705 (right!705 xs!533)))) b!25444))

(declare-fun b!25445 () Bool)

(declare-fun e!13101 () Bool)

(declare-fun tp!5554 () Bool)

(declare-fun tp!5555 () Bool)

(assert (=> b!25445 (= e!13101 (and tp!5554 tp!5555))))

(declare-fun b!25446 () Bool)

(assert (=> b!25446 (= e!13101 tp_is_empty!161)))

(assert (=> b!25337 (= tp!5530 e!13101)))

(assert (= (and b!25337 (is-CC!57 (left!702 (left!702 ys!88)))) b!25445))

(assert (= (and b!25337 (is-Single!57 (left!702 (left!702 ys!88)))) b!25446))

(declare-fun b!25447 () Bool)

(declare-fun e!13102 () Bool)

(declare-fun tp!5556 () Bool)

(declare-fun tp!5557 () Bool)

(assert (=> b!25447 (= e!13102 (and tp!5556 tp!5557))))

(declare-fun b!25448 () Bool)

(assert (=> b!25448 (= e!13102 tp_is_empty!161)))

(assert (=> b!25337 (= tp!5531 e!13102)))

(assert (= (and b!25337 (is-CC!57 (right!705 (left!702 ys!88)))) b!25447))

(assert (= (and b!25337 (is-Single!57 (right!705 (left!702 ys!88)))) b!25448))

(declare-fun b!25449 () Bool)

(declare-fun e!13103 () Bool)

(declare-fun tp!5558 () Bool)

(declare-fun tp!5559 () Bool)

(assert (=> b!25449 (= e!13103 (and tp!5558 tp!5559))))

(declare-fun b!25450 () Bool)

(assert (=> b!25450 (= e!13103 tp_is_empty!161)))

(assert (=> b!25325 (= tp!5518 e!13103)))

(assert (= (and b!25325 (is-CC!57 (left!702 (left!702 xs!533)))) b!25449))

(assert (= (and b!25325 (is-Single!57 (left!702 (left!702 xs!533)))) b!25450))

(declare-fun b!25451 () Bool)

(declare-fun e!13104 () Bool)

(declare-fun tp!5560 () Bool)

(declare-fun tp!5561 () Bool)

(assert (=> b!25451 (= e!13104 (and tp!5560 tp!5561))))

(declare-fun b!25452 () Bool)

(assert (=> b!25452 (= e!13104 tp_is_empty!161)))

(assert (=> b!25325 (= tp!5519 e!13104)))

(assert (= (and b!25325 (is-CC!57 (right!705 (left!702 xs!533)))) b!25451))

(assert (= (and b!25325 (is-Single!57 (right!705 (left!702 xs!533)))) b!25452))

(declare-fun b!25453 () Bool)

(declare-fun e!13105 () Bool)

(declare-fun tp!5562 () Bool)

(declare-fun tp!5563 () Bool)

(assert (=> b!25453 (= e!13105 (and tp!5562 tp!5563))))

(declare-fun b!25454 () Bool)

(assert (=> b!25454 (= e!13105 tp_is_empty!161)))

(assert (=> b!25339 (= tp!5532 e!13105)))

(assert (= (and b!25339 (is-CC!57 (left!702 (right!705 ys!88)))) b!25453))

(assert (= (and b!25339 (is-Single!57 (left!702 (right!705 ys!88)))) b!25454))

(declare-fun b!25455 () Bool)

(declare-fun e!13106 () Bool)

(declare-fun tp!5564 () Bool)

(declare-fun tp!5565 () Bool)

(assert (=> b!25455 (= e!13106 (and tp!5564 tp!5565))))

(declare-fun b!25456 () Bool)

(assert (=> b!25456 (= e!13106 tp_is_empty!161)))

(assert (=> b!25339 (= tp!5533 e!13106)))

(assert (= (and b!25339 (is-CC!57 (right!705 (right!705 ys!88)))) b!25455))

(assert (= (and b!25339 (is-Single!57 (right!705 (right!705 ys!88)))) b!25456))

(push 1)

(assert (not b!25387))

(assert (not b!25411))

(assert (not b!25451))

(assert (not b!25342))

(assert (not b!25356))

(assert (not b!25449))

(assert (not b!25410))

(assert (not b!25413))

(assert (not b!25364))

(assert (not b!25376))

(assert (not b!25343))

(assert (not b!25401))

(assert (not b!25354))

(assert (not b!25437))

(assert (not b!25349))

(assert (not b!25404))

(assert (not b!25403))

(assert (not b!25341))

(assert (not b!25433))

(assert (not b!25390))

(assert (not b!25352))

(assert (not b!25346))

(assert (not b!25371))

(assert (not b!25447))

(assert (not b!25421))

(assert (not b!25368))

(assert (not b!25384))

(assert (not b!25418))

(assert (not b!25370))

(assert (not b!25431))

(assert (not b!25443))

(assert (not b!25400))

(assert (not b!25358))

(assert (not b!25423))

(assert (not b!25359))

(assert (not b!25382))

(assert (not b!25348))

(assert (not b!25389))

(assert (not b!25414))

(assert (not b!25365))

(assert (not b!25455))

(assert (not b!25439))

(assert (not b!25372))

(assert (not b!25408))

(assert (not b!25391))

(assert (not b!25398))

(assert (not b!25417))

(assert (not b!25409))

(assert (not b!25429))

(assert (not b!25367))

(assert (not b!25366))

(assert (not b!25402))

(assert (not b!25396))

(assert (not b!25344))

(assert (not b!25424))

(assert (not b!25405))

(assert (not b!25453))

(assert (not b!25362))

(assert (not b!25383))

(assert (not b!25350))

(assert (not b!25351))

(assert tp_is_empty!161)

(assert (not b!25378))

(assert (not b!25415))

(assert (not b!25369))

(assert (not b!25419))

(assert (not b!25425))

(assert (not b!25422))

(assert (not b!25397))

(assert (not b!25385))

(assert (not b!25407))

(assert (not b!25381))

(assert (not b!25360))

(assert (not b!25374))

(assert (not b!25373))

(assert (not b!25427))

(assert (not b!25388))

(assert (not b!25375))

(assert (not b!25416))

(assert (not b!25399))

(assert (not b!25441))

(assert (not b!25394))

(assert (not b!25406))

(assert (not b!25386))

(assert (not b!25445))

(assert (not b!25420))

(assert (not b!25392))

(assert (not b!25412))

(assert (not b!25357))

(assert (not b!25435))

(assert (not b!25380))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

