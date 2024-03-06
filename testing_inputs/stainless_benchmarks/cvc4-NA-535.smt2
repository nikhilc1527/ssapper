; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3860 () Bool)

(assert start!3860)

(declare-fun b!26241 () Bool)

(declare-fun res!11941 () Bool)

(declare-fun e!13456 () Bool)

(assert (=> b!26241 (=> (not res!11941) (not e!13456))))

(declare-datatypes () ((T!1825 (T!1826 (val!85 Int)))))

(declare-datatypes () ((Conc!62 (CC!61 (left!706 Conc!62) (right!709 Conc!62)) (Single!61 (x!8917 T!1825)) (Empty!72))))

(declare-fun xs!533 () Conc!62)

(declare-fun ys!77 () Conc!62)

(declare-fun appendAssocInst!11 (Conc!62 Conc!62) Bool)

(assert (=> b!26241 (= res!11941 (appendAssocInst!11 xs!533 ys!77))))

(declare-fun b!26242 () Bool)

(declare-fun res!5528 () Conc!62)

(declare-fun concatCorrectness!11 (Conc!62 Conc!62 Conc!62) Bool)

(assert (=> b!26242 (= e!13456 (concatCorrectness!11 res!5528 xs!533 ys!77))))

(declare-fun b!26243 () Bool)

(declare-fun e!13454 () Bool)

(declare-fun tp_is_empty!169 () Bool)

(assert (=> b!26243 (= e!13454 tp_is_empty!169)))

(declare-fun b!26244 () Bool)

(declare-fun e!13453 () Bool)

(assert (=> b!26244 (= e!13453 (not e!13456))))

(declare-fun res!11940 () Bool)

(assert (=> b!26244 (=> (not res!11940) (not e!13456))))

(declare-fun lt!4175 () Int)

(declare-fun lt!4174 () Int)

(declare-fun lt!4173 () Int)

(assert (=> b!26244 (= res!11940 (<= lt!4175 (+ (ite (>= lt!4174 lt!4173) lt!4174 lt!4173) 1)))))

(declare-fun level!50 (Conc!62) Int)

(assert (=> b!26244 (= lt!4173 (level!50 ys!77))))

(assert (=> b!26244 (= lt!4174 (level!50 xs!533))))

(assert (=> b!26244 (= lt!4175 (level!50 res!5528))))

(assert (=> b!26244 (is-CC!61 res!5528)))

(declare-fun b!26245 () Bool)

(declare-fun tp!5756 () Bool)

(declare-fun tp!5757 () Bool)

(assert (=> b!26245 (= e!13454 (and tp!5756 tp!5757))))

(declare-fun b!26246 () Bool)

(declare-fun res!11936 () Bool)

(assert (=> b!26246 (=> (not res!11936) (not e!13453))))

(declare-fun isEmpty!318 (Conc!62) Bool)

(assert (=> b!26246 (= res!11936 (not (isEmpty!318 xs!533)))))

(declare-fun b!26247 () Bool)

(declare-fun res!11943 () Bool)

(assert (=> b!26247 (=> (not res!11943) (not e!13456))))

(declare-fun lt!4178 () Int)

(declare-fun lt!4177 () Int)

(declare-fun lt!4176 () Int)

(assert (=> b!26247 (= res!11943 (>= lt!4178 (ite (>= lt!4176 lt!4177) lt!4176 lt!4177)))))

(assert (=> b!26247 (= lt!4177 (level!50 ys!77))))

(assert (=> b!26247 (= lt!4176 (level!50 xs!533))))

(assert (=> b!26247 (= lt!4178 (level!50 res!5528))))

(declare-fun b!26248 () Bool)

(declare-fun res!11930 () Bool)

(assert (=> b!26248 (=> (not res!11930) (not e!13453))))

(declare-fun diff!6 () Int)

(assert (=> b!26248 (= res!11930 (and (or (< diff!6 (- 1)) (> diff!6 1)) (< diff!6 (- 1))))))

(declare-fun res!11933 () Bool)

(assert (=> start!3860 (=> (not res!11933) (not e!13453))))

(declare-fun concInv!56 (Conc!62) Bool)

(assert (=> start!3860 (= res!11933 (concInv!56 xs!533))))

(assert (=> start!3860 e!13453))

(declare-fun e!13455 () Bool)

(assert (=> start!3860 e!13455))

(declare-fun e!13452 () Bool)

(assert (=> start!3860 e!13452))

(assert (=> start!3860 true))

(assert (=> start!3860 e!13454))

(declare-fun b!26249 () Bool)

(declare-fun tp!5758 () Bool)

(declare-fun tp!5761 () Bool)

(assert (=> b!26249 (= e!13452 (and tp!5758 tp!5761))))

(declare-fun b!26250 () Bool)

(declare-fun res!11935 () Bool)

(assert (=> b!26250 (=> (not res!11935) (not e!13453))))

(assert (=> b!26250 (= res!11935 (not (isEmpty!318 ys!77)))))

(declare-fun b!26251 () Bool)

(declare-fun res!11934 () Bool)

(assert (=> b!26251 (=> (not res!11934) (not e!13453))))

(assert (=> b!26251 (= res!11934 (= diff!6 (- (level!50 ys!77) (level!50 xs!533))))))

(declare-fun b!26252 () Bool)

(declare-fun res!11939 () Bool)

(assert (=> b!26252 (=> (not res!11939) (not e!13456))))

(assert (=> b!26252 (= res!11939 (concInv!56 res!5528))))

(declare-fun b!26253 () Bool)

(declare-fun tp!5760 () Bool)

(declare-fun tp!5759 () Bool)

(assert (=> b!26253 (= e!13455 (and tp!5760 tp!5759))))

(declare-fun b!26254 () Bool)

(assert (=> b!26254 (= e!13452 tp_is_empty!169)))

(declare-fun b!26255 () Bool)

(declare-fun res!11942 () Bool)

(assert (=> b!26255 (=> (not res!11942) (not e!13453))))

(declare-fun concatNonEmpty!14 (Conc!62 Conc!62) Conc!62)

(assert (=> b!26255 (= res!11942 (= res!5528 (CC!61 (left!706 xs!533) (concatNonEmpty!14 (right!709 xs!533) ys!77))))))

(declare-fun b!26256 () Bool)

(declare-fun res!11931 () Bool)

(assert (=> b!26256 (=> (not res!11931) (not e!13453))))

(assert (=> b!26256 (= res!11931 (>= (level!50 (left!706 xs!533)) (level!50 (right!709 xs!533))))))

(declare-fun b!26257 () Bool)

(declare-fun res!11932 () Bool)

(assert (=> b!26257 (=> (not res!11932) (not e!13453))))

(declare-fun balanced!57 (Conc!62) Bool)

(assert (=> b!26257 (= res!11932 (balanced!57 xs!533))))

(declare-fun b!26258 () Bool)

(declare-fun res!11938 () Bool)

(assert (=> b!26258 (=> (not res!11938) (not e!13453))))

(assert (=> b!26258 (= res!11938 (concInv!56 ys!77))))

(declare-fun b!26259 () Bool)

(assert (=> b!26259 (= e!13455 tp_is_empty!169)))

(declare-fun b!26260 () Bool)

(declare-fun res!11937 () Bool)

(assert (=> b!26260 (=> (not res!11937) (not e!13456))))

(assert (=> b!26260 (= res!11937 (balanced!57 res!5528))))

(declare-fun b!26261 () Bool)

(declare-fun res!11929 () Bool)

(assert (=> b!26261 (=> (not res!11929) (not e!13453))))

(assert (=> b!26261 (= res!11929 (balanced!57 ys!77))))

(assert (= (and start!3860 res!11933) b!26257))

(assert (= (and b!26257 res!11932) b!26258))

(assert (= (and b!26258 res!11938) b!26261))

(assert (= (and b!26261 res!11929) b!26246))

(assert (= (and b!26246 res!11936) b!26250))

(assert (= (and b!26250 res!11935) b!26251))

(assert (= (and b!26251 res!11934) b!26248))

(assert (= (and b!26248 res!11930) b!26256))

(assert (= (and b!26256 res!11931) b!26255))

(assert (= (and b!26255 res!11942) b!26244))

(assert (= (and b!26244 res!11940) b!26247))

(assert (= (and b!26247 res!11943) b!26252))

(assert (= (and b!26252 res!11939) b!26260))

(assert (= (and b!26260 res!11937) b!26241))

(assert (= (and b!26241 res!11941) b!26242))

(assert (= (and start!3860 (is-CC!61 xs!533)) b!26253))

(assert (= (and start!3860 (is-Single!61 xs!533)) b!26259))

(assert (= (and start!3860 (is-CC!61 ys!77)) b!26249))

(assert (= (and start!3860 (is-Single!61 ys!77)) b!26254))

(assert (= (and start!3860 (is-CC!61 res!5528)) b!26245))

(assert (= (and start!3860 (is-Single!61 res!5528)) b!26243))

(declare-fun m!27197 () Bool)

(assert (=> b!26244 m!27197))

(declare-fun m!27199 () Bool)

(assert (=> b!26244 m!27199))

(declare-fun m!27201 () Bool)

(assert (=> b!26244 m!27201))

(declare-fun m!27203 () Bool)

(assert (=> b!26252 m!27203))

(assert (=> b!26247 m!27197))

(assert (=> b!26247 m!27199))

(assert (=> b!26247 m!27201))

(declare-fun m!27205 () Bool)

(assert (=> b!26241 m!27205))

(declare-fun m!27207 () Bool)

(assert (=> b!26242 m!27207))

(declare-fun m!27209 () Bool)

(assert (=> b!26258 m!27209))

(declare-fun m!27211 () Bool)

(assert (=> start!3860 m!27211))

(declare-fun m!27213 () Bool)

(assert (=> b!26260 m!27213))

(assert (=> b!26251 m!27197))

(assert (=> b!26251 m!27199))

(declare-fun m!27215 () Bool)

(assert (=> b!26246 m!27215))

(declare-fun m!27217 () Bool)

(assert (=> b!26261 m!27217))

(declare-fun m!27219 () Bool)

(assert (=> b!26255 m!27219))

(declare-fun m!27221 () Bool)

(assert (=> b!26257 m!27221))

(declare-fun m!27223 () Bool)

(assert (=> b!26250 m!27223))

(declare-fun m!27225 () Bool)

(assert (=> b!26256 m!27225))

(declare-fun m!27227 () Bool)

(assert (=> b!26256 m!27227))

(push 1)

(assert (not b!26256))

(assert (not b!26246))

(assert (not b!26249))

(assert (not b!26261))

(assert (not b!26255))

(assert (not b!26242))

(assert (not b!26245))

(assert (not b!26257))

(assert (not b!26241))

(assert (not b!26253))

(assert tp_is_empty!169)

(assert (not b!26260))

(assert (not b!26247))

(assert (not b!26250))

(assert (not start!3860))

(assert (not b!26258))

(assert (not b!26252))

(assert (not b!26251))

(assert (not b!26244))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!26267 () Bool)

(declare-fun e!13459 () Int)

(declare-fun lt!4187 () Int)

(declare-fun lt!4186 () Int)

(assert (=> b!26267 (= e!13459 (+ 1 (ite (>= lt!4187 lt!4186) lt!4187 lt!4186)))))

(assert (=> b!26267 (= lt!4186 (level!50 (right!709 (left!706 xs!533))))))

(assert (=> b!26267 (= lt!4187 (level!50 (left!706 (left!706 xs!533))))))

(declare-fun d!14071 () Bool)

(declare-fun lt!4185 () Int)

(assert (=> d!14071 (>= lt!4185 0)))

(assert (=> d!14071 (= lt!4185 e!13459)))

(declare-fun c!5800 () Bool)

(assert (=> d!14071 (= c!5800 (or (is-Empty!72 (left!706 xs!533)) (is-Single!61 (left!706 xs!533))))))

(assert (=> d!14071 (= (level!50 (left!706 xs!533)) lt!4185)))

(declare-fun b!26266 () Bool)

(assert (=> b!26266 (= e!13459 0)))

(assert (= (and d!14071 c!5800) b!26266))

(assert (= (and d!14071 (not c!5800)) b!26267))

(declare-fun m!27229 () Bool)

(assert (=> b!26267 m!27229))

(declare-fun m!27231 () Bool)

(assert (=> b!26267 m!27231))

(assert (=> b!26256 d!14071))

(declare-fun b!26269 () Bool)

(declare-fun e!13460 () Int)

(declare-fun lt!4190 () Int)

(declare-fun lt!4189 () Int)

(assert (=> b!26269 (= e!13460 (+ 1 (ite (>= lt!4190 lt!4189) lt!4190 lt!4189)))))

(assert (=> b!26269 (= lt!4189 (level!50 (right!709 (right!709 xs!533))))))

(assert (=> b!26269 (= lt!4190 (level!50 (left!706 (right!709 xs!533))))))

(declare-fun d!14073 () Bool)

(declare-fun lt!4188 () Int)

(assert (=> d!14073 (>= lt!4188 0)))

(assert (=> d!14073 (= lt!4188 e!13460)))

(declare-fun c!5801 () Bool)

(assert (=> d!14073 (= c!5801 (or (is-Empty!72 (right!709 xs!533)) (is-Single!61 (right!709 xs!533))))))

(assert (=> d!14073 (= (level!50 (right!709 xs!533)) lt!4188)))

(declare-fun b!26268 () Bool)

(assert (=> b!26268 (= e!13460 0)))

(assert (= (and d!14073 c!5801) b!26268))

(assert (= (and d!14073 (not c!5801)) b!26269))

(declare-fun m!27233 () Bool)

(assert (=> b!26269 m!27233))

(declare-fun m!27235 () Bool)

(assert (=> b!26269 m!27235))

(assert (=> b!26256 d!14073))

(declare-fun b!26288 () Bool)

(declare-fun e!13480 () Bool)

(declare-datatypes () ((List!359 (Cons!353 (h!270 T!1825) (t!4373 List!359)) (Nil!354))))

(declare-fun appendAssoc!7 (List!359 List!359 List!359) Bool)

(declare-fun ++!39 (List!359 List!359) List!359)

(declare-fun toList!114 (Conc!62) List!359)

(assert (=> b!26288 (= e!13480 (appendAssoc!7 (++!39 (toList!114 xs!533) (toList!114 (left!706 (left!706 ys!77)))) (toList!114 (right!709 (left!706 ys!77))) (toList!114 (right!709 ys!77))))))

(declare-fun b!26289 () Bool)

(declare-fun e!13481 () Bool)

(assert (=> b!26289 (= e!13481 (appendAssoc!7 (toList!114 (left!706 xs!533)) (toList!114 (left!706 (right!709 xs!533))) (++!39 (toList!114 (right!709 (right!709 xs!533))) (toList!114 ys!77))))))

(declare-fun b!26290 () Bool)

(declare-fun e!13483 () Bool)

(assert (=> b!26290 (= e!13483 e!13481)))

(declare-fun res!11970 () Bool)

(assert (=> b!26290 (=> (not res!11970) (not e!13481))))

(assert (=> b!26290 (= res!11970 (appendAssoc!7 (toList!114 (left!706 (right!709 xs!533))) (toList!114 (right!709 (right!709 xs!533))) (toList!114 ys!77)))))

(declare-fun b!26291 () Bool)

(declare-fun e!13484 () Bool)

(declare-fun e!13485 () Bool)

(assert (=> b!26291 (= e!13484 e!13485)))

(declare-fun res!11963 () Bool)

(assert (=> b!26291 (=> (not res!11963) (not e!13485))))

(assert (=> b!26291 (= res!11963 (appendAssoc!7 (toList!114 xs!533) (toList!114 (left!706 ys!77)) (toList!114 (right!709 ys!77))))))

(declare-fun d!14075 () Bool)

(declare-fun e!13482 () Bool)

(assert (=> d!14075 e!13482))

(declare-fun res!11962 () Bool)

(assert (=> d!14075 (=> (not res!11962) (not e!13482))))

(declare-fun e!13486 () Bool)

(assert (=> d!14075 (= res!11962 e!13486)))

(declare-fun res!11966 () Bool)

(assert (=> d!14075 (=> res!11966 e!13486)))

(assert (=> d!14075 (= res!11966 (not (is-CC!61 xs!533)))))

(assert (=> d!14075 (= (appendAssocInst!11 xs!533 ys!77) true)))

(declare-fun b!26292 () Bool)

(assert (=> b!26292 (= e!13482 e!13484)))

(declare-fun res!11969 () Bool)

(assert (=> b!26292 (=> res!11969 e!13484)))

(assert (=> b!26292 (= res!11969 (not (is-CC!61 ys!77)))))

(declare-fun b!26293 () Bool)

(declare-fun e!13487 () Bool)

(assert (=> b!26293 (= e!13487 e!13483)))

(declare-fun res!11965 () Bool)

(assert (=> b!26293 (=> res!11965 e!13483)))

(assert (=> b!26293 (= res!11965 (not (is-CC!61 (right!709 xs!533))))))

(declare-fun b!26294 () Bool)

(declare-fun e!13479 () Bool)

(assert (=> b!26294 (= e!13485 e!13479)))

(declare-fun res!11968 () Bool)

(assert (=> b!26294 (=> res!11968 e!13479)))

(assert (=> b!26294 (= res!11968 (not (is-CC!61 (left!706 ys!77))))))

(declare-fun b!26295 () Bool)

(assert (=> b!26295 (= e!13486 e!13487)))

(declare-fun res!11964 () Bool)

(assert (=> b!26295 (=> (not res!11964) (not e!13487))))

(assert (=> b!26295 (= res!11964 (appendAssoc!7 (toList!114 (left!706 xs!533)) (toList!114 (right!709 xs!533)) (toList!114 ys!77)))))

(declare-fun b!26296 () Bool)

(assert (=> b!26296 (= e!13479 e!13480)))

(declare-fun res!11967 () Bool)

(assert (=> b!26296 (=> (not res!11967) (not e!13480))))

(assert (=> b!26296 (= res!11967 (appendAssoc!7 (toList!114 xs!533) (toList!114 (left!706 (left!706 ys!77))) (toList!114 (right!709 (left!706 ys!77)))))))

(assert (= (and d!14075 (not res!11966)) b!26295))

(assert (= (and b!26295 res!11964) b!26293))

(assert (= (and b!26293 (not res!11965)) b!26290))

(assert (= (and b!26290 res!11970) b!26289))

(assert (= (and d!14075 res!11962) b!26292))

(assert (= (and b!26292 (not res!11969)) b!26291))

(assert (= (and b!26291 res!11963) b!26294))

(assert (= (and b!26294 (not res!11968)) b!26296))

(assert (= (and b!26296 res!11967) b!26288))

(declare-fun m!27237 () Bool)

(assert (=> b!26291 m!27237))

(declare-fun m!27239 () Bool)

(assert (=> b!26291 m!27239))

(declare-fun m!27241 () Bool)

(assert (=> b!26291 m!27241))

(assert (=> b!26291 m!27237))

(assert (=> b!26291 m!27239))

(assert (=> b!26291 m!27241))

(declare-fun m!27243 () Bool)

(assert (=> b!26291 m!27243))

(assert (=> b!26288 m!27237))

(declare-fun m!27245 () Bool)

(assert (=> b!26288 m!27245))

(declare-fun m!27247 () Bool)

(assert (=> b!26288 m!27247))

(assert (=> b!26288 m!27241))

(declare-fun m!27249 () Bool)

(assert (=> b!26288 m!27249))

(assert (=> b!26288 m!27241))

(assert (=> b!26288 m!27237))

(declare-fun m!27251 () Bool)

(assert (=> b!26288 m!27251))

(assert (=> b!26288 m!27245))

(assert (=> b!26288 m!27251))

(assert (=> b!26288 m!27247))

(declare-fun m!27253 () Bool)

(assert (=> b!26289 m!27253))

(declare-fun m!27255 () Bool)

(assert (=> b!26289 m!27255))

(assert (=> b!26289 m!27253))

(declare-fun m!27257 () Bool)

(assert (=> b!26289 m!27257))

(declare-fun m!27259 () Bool)

(assert (=> b!26289 m!27259))

(declare-fun m!27261 () Bool)

(assert (=> b!26289 m!27261))

(assert (=> b!26289 m!27259))

(assert (=> b!26289 m!27257))

(declare-fun m!27263 () Bool)

(assert (=> b!26289 m!27263))

(assert (=> b!26289 m!27261))

(assert (=> b!26289 m!27255))

(assert (=> b!26296 m!27237))

(assert (=> b!26296 m!27251))

(assert (=> b!26296 m!27247))

(assert (=> b!26296 m!27237))

(assert (=> b!26296 m!27251))

(assert (=> b!26296 m!27247))

(declare-fun m!27265 () Bool)

(assert (=> b!26296 m!27265))

(assert (=> b!26290 m!27259))

(assert (=> b!26290 m!27255))

(assert (=> b!26290 m!27253))

(assert (=> b!26290 m!27259))

(assert (=> b!26290 m!27255))

(assert (=> b!26290 m!27253))

(declare-fun m!27267 () Bool)

(assert (=> b!26290 m!27267))

(assert (=> b!26295 m!27261))

(declare-fun m!27269 () Bool)

(assert (=> b!26295 m!27269))

(assert (=> b!26295 m!27253))

(assert (=> b!26295 m!27261))

(assert (=> b!26295 m!27269))

(assert (=> b!26295 m!27253))

(declare-fun m!27271 () Bool)

(assert (=> b!26295 m!27271))

(assert (=> b!26241 d!14075))

(declare-fun d!14077 () Bool)

(assert (=> d!14077 (= (concatCorrectness!11 res!5528 xs!533 ys!77) (= (toList!114 res!5528) (++!39 (toList!114 xs!533) (toList!114 ys!77))))))

(declare-fun bs!5089 () Bool)

(assert (= bs!5089 d!14077))

(assert (=> bs!5089 m!27237))

(assert (=> bs!5089 m!27253))

(declare-fun m!27273 () Bool)

(assert (=> bs!5089 m!27273))

(declare-fun m!27275 () Bool)

(assert (=> bs!5089 m!27275))

(assert (=> bs!5089 m!27253))

(assert (=> bs!5089 m!27237))

(assert (=> b!26242 d!14077))

(declare-fun d!14079 () Bool)

(assert (=> d!14079 (= (isEmpty!318 xs!533) (= xs!533 Empty!72))))

(assert (=> b!26246 d!14079))

(declare-fun b!26308 () Bool)

(declare-fun e!13493 () Bool)

(assert (=> b!26308 (= e!13493 (balanced!57 (right!709 xs!533)))))

(declare-fun b!26306 () Bool)

(declare-fun res!11982 () Bool)

(assert (=> b!26306 (=> (not res!11982) (not e!13493))))

(assert (=> b!26306 (= res!11982 (<= (- (level!50 (left!706 xs!533)) (level!50 (right!709 xs!533))) 1))))

(declare-fun b!26307 () Bool)

(declare-fun res!11983 () Bool)

(assert (=> b!26307 (=> (not res!11983) (not e!13493))))

(assert (=> b!26307 (= res!11983 (balanced!57 (left!706 xs!533)))))

(declare-fun b!26305 () Bool)

(declare-fun e!13492 () Bool)

(assert (=> b!26305 (= e!13492 e!13493)))

(declare-fun res!11981 () Bool)

(assert (=> b!26305 (=> (not res!11981) (not e!13493))))

(assert (=> b!26305 (= res!11981 (>= (- (level!50 (left!706 xs!533)) (level!50 (right!709 xs!533))) (- 1)))))

(declare-fun d!14081 () Bool)

(declare-fun res!11980 () Bool)

(assert (=> d!14081 (=> res!11980 e!13492)))

(assert (=> d!14081 (= res!11980 (not (is-CC!61 xs!533)))))

(assert (=> d!14081 (= (balanced!57 xs!533) e!13492)))

(assert (= (and d!14081 (not res!11980)) b!26305))

(assert (= (and b!26305 res!11981) b!26306))

(assert (= (and b!26306 res!11982) b!26307))

(assert (= (and b!26307 res!11983) b!26308))

(declare-fun m!27277 () Bool)

(assert (=> b!26308 m!27277))

(assert (=> b!26306 m!27225))

(assert (=> b!26306 m!27227))

(declare-fun m!27279 () Bool)

(assert (=> b!26307 m!27279))

(assert (=> b!26305 m!27225))

(assert (=> b!26305 m!27227))

(assert (=> b!26257 d!14081))

(declare-fun b!26317 () Bool)

(declare-fun e!13498 () Bool)

(declare-fun e!13499 () Bool)

(assert (=> b!26317 (= e!13498 e!13499)))

(declare-fun res!11994 () Bool)

(assert (=> b!26317 (=> (not res!11994) (not e!13499))))

(assert (=> b!26317 (= res!11994 (not (isEmpty!318 (left!706 ys!77))))))

(declare-fun b!26319 () Bool)

(declare-fun res!11995 () Bool)

(assert (=> b!26319 (=> (not res!11995) (not e!13499))))

(assert (=> b!26319 (= res!11995 (concInv!56 (left!706 ys!77)))))

(declare-fun b!26318 () Bool)

(declare-fun res!11993 () Bool)

(assert (=> b!26318 (=> (not res!11993) (not e!13499))))

(assert (=> b!26318 (= res!11993 (not (isEmpty!318 (right!709 ys!77))))))

(declare-fun d!14083 () Bool)

(declare-fun res!11992 () Bool)

(assert (=> d!14083 (=> res!11992 e!13498)))

(assert (=> d!14083 (= res!11992 (not (is-CC!61 ys!77)))))

(assert (=> d!14083 (= (concInv!56 ys!77) e!13498)))

(declare-fun b!26320 () Bool)

(assert (=> b!26320 (= e!13499 (concInv!56 (right!709 ys!77)))))

(assert (= (and d!14083 (not res!11992)) b!26317))

(assert (= (and b!26317 res!11994) b!26318))

(assert (= (and b!26318 res!11993) b!26319))

(assert (= (and b!26319 res!11995) b!26320))

(declare-fun m!27281 () Bool)

(assert (=> b!26317 m!27281))

(declare-fun m!27283 () Bool)

(assert (=> b!26319 m!27283))

(declare-fun m!27285 () Bool)

(assert (=> b!26318 m!27285))

(declare-fun m!27287 () Bool)

(assert (=> b!26320 m!27287))

(assert (=> b!26258 d!14083))

(declare-fun d!14085 () Bool)

(assert (=> d!14085 (= (isEmpty!318 ys!77) (= ys!77 Empty!72))))

(assert (=> b!26250 d!14085))

(declare-fun b!26322 () Bool)

(declare-fun e!13500 () Int)

(declare-fun lt!4193 () Int)

(declare-fun lt!4192 () Int)

(assert (=> b!26322 (= e!13500 (+ 1 (ite (>= lt!4193 lt!4192) lt!4193 lt!4192)))))

(assert (=> b!26322 (= lt!4192 (level!50 (right!709 ys!77)))))

(assert (=> b!26322 (= lt!4193 (level!50 (left!706 ys!77)))))

(declare-fun d!14087 () Bool)

(declare-fun lt!4191 () Int)

(assert (=> d!14087 (>= lt!4191 0)))

(assert (=> d!14087 (= lt!4191 e!13500)))

(declare-fun c!5802 () Bool)

(assert (=> d!14087 (= c!5802 (or (is-Empty!72 ys!77) (is-Single!61 ys!77)))))

(assert (=> d!14087 (= (level!50 ys!77) lt!4191)))

(declare-fun b!26321 () Bool)

(assert (=> b!26321 (= e!13500 0)))

(assert (= (and d!14087 c!5802) b!26321))

(assert (= (and d!14087 (not c!5802)) b!26322))

(declare-fun m!27289 () Bool)

(assert (=> b!26322 m!27289))

(declare-fun m!27291 () Bool)

(assert (=> b!26322 m!27291))

(assert (=> b!26251 d!14087))

(declare-fun b!26324 () Bool)

(declare-fun e!13501 () Int)

(declare-fun lt!4196 () Int)

(declare-fun lt!4195 () Int)

(assert (=> b!26324 (= e!13501 (+ 1 (ite (>= lt!4196 lt!4195) lt!4196 lt!4195)))))

(assert (=> b!26324 (= lt!4195 (level!50 (right!709 xs!533)))))

(assert (=> b!26324 (= lt!4196 (level!50 (left!706 xs!533)))))

(declare-fun d!14089 () Bool)

(declare-fun lt!4194 () Int)

(assert (=> d!14089 (>= lt!4194 0)))

(assert (=> d!14089 (= lt!4194 e!13501)))

(declare-fun c!5803 () Bool)

(assert (=> d!14089 (= c!5803 (or (is-Empty!72 xs!533) (is-Single!61 xs!533)))))

(assert (=> d!14089 (= (level!50 xs!533) lt!4194)))

(declare-fun b!26323 () Bool)

(assert (=> b!26323 (= e!13501 0)))

(assert (= (and d!14089 c!5803) b!26323))

(assert (= (and d!14089 (not c!5803)) b!26324))

(assert (=> b!26324 m!27227))

(assert (=> b!26324 m!27225))

(assert (=> b!26251 d!14089))

(declare-fun b!26367 () Bool)

(declare-fun res!12052 () Bool)

(declare-fun e!13525 () Bool)

(assert (=> b!26367 (=> (not res!12052) (not e!13525))))

(assert (=> b!26367 (= res!12052 (appendAssocInst!11 (right!709 xs!533) ys!77))))

(declare-fun b!26368 () Bool)

(declare-fun res!12051 () Bool)

(declare-fun e!13526 () Bool)

(assert (=> b!26368 (=> (not res!12051) (not e!13526))))

(assert (=> b!26368 (= res!12051 (not (isEmpty!318 (right!709 xs!533))))))

(declare-fun b!26369 () Bool)

(declare-fun e!13521 () Int)

(declare-fun res!12055 () Int)

(assert (=> b!26369 (= e!13521 res!12055)))

(assert (=> b!26369 true))

(declare-fun e!13527 () Conc!62)

(declare-fun lt!4237 () Int)

(declare-fun lt!4229 () Int)

(declare-fun b!26370 () Bool)

(declare-fun lt!4242 () Int)

(declare-fun lt!4238 () Conc!62)

(declare-fun lt!4231 () Bool)

(declare-fun lt!4241 () Int)

(assert (=> b!26370 (= e!13527 (ite lt!4231 (let ((res!11999 lt!4238)) (ite (>= lt!4241 lt!4237) (CC!61 (left!706 (right!709 xs!533)) res!11999) (ite (= lt!4242 (- lt!4229 3)) (CC!61 (left!706 (right!709 xs!533)) (CC!61 (left!706 (right!709 (right!709 xs!533))) res!11999)) (CC!61 (CC!61 (left!706 (right!709 xs!533)) (left!706 (right!709 (right!709 xs!533)))) res!11999)))) (let ((res!12002 lt!4238)) (ite (>= lt!4241 lt!4237) (CC!61 res!12002 (right!709 ys!77)) (ite (= lt!4242 (- lt!4229 3)) (CC!61 (CC!61 res!12002 (right!709 (left!706 ys!77))) (right!709 ys!77)) (CC!61 res!12002 (CC!61 (right!709 (left!706 ys!77)) (right!709 ys!77))))))))))

(declare-fun e!13520 () Int)

(assert (=> b!26370 (= lt!4229 e!13520)))

(declare-fun c!5813 () Bool)

(declare-fun lt!4240 () Bool)

(assert (=> b!26370 (= c!5813 (or lt!4240 (and (not lt!4231) (not (>= lt!4241 lt!4237)))))))

(assert (=> b!26370 (= lt!4240 (and lt!4231 (not (>= lt!4241 lt!4237))))))

(assert (=> b!26370 (= lt!4242 e!13521)))

(declare-fun c!5814 () Bool)

(assert (=> b!26370 (= c!5814 (or (and lt!4231 (not (>= lt!4241 lt!4237))) (and (not lt!4231) (not (>= lt!4241 lt!4237)))))))

(declare-fun e!13523 () Conc!62)

(assert (=> b!26370 (= lt!4238 e!13523)))

(declare-fun c!5812 () Bool)

(declare-fun lt!4232 () Bool)

(assert (=> b!26370 (= c!5812 (or lt!4232 (not lt!4231)))))

(assert (=> b!26370 (= lt!4232 lt!4231)))

(assert (=> b!26370 (= lt!4237 (level!50 (ite lt!4231 (right!709 (right!709 xs!533)) (left!706 ys!77))))))

(assert (=> b!26370 (= lt!4241 (level!50 (ite lt!4231 (left!706 (right!709 xs!533)) (right!709 ys!77))))))

(declare-fun lt!4235 () Int)

(assert (=> b!26370 (= lt!4231 (< lt!4235 (- 1)))))

(declare-fun b!26371 () Bool)

(declare-fun e!13524 () Bool)

(assert (=> b!26371 (= e!13524 e!13525)))

(declare-fun res!12061 () Bool)

(assert (=> b!26371 (=> (not res!12061) (not e!13525))))

(declare-fun lt!4233 () Int)

(declare-fun lt!4244 () Int)

(declare-fun lt!4239 () Int)

(assert (=> b!26371 (= res!12061 (<= lt!4239 (+ (ite (>= lt!4233 lt!4244) lt!4233 lt!4244) 1)))))

(assert (=> b!26371 (= lt!4244 (level!50 ys!77))))

(assert (=> b!26371 (= lt!4233 (level!50 (right!709 xs!533)))))

(declare-fun lt!4234 () Conc!62)

(assert (=> b!26371 (= lt!4239 (level!50 lt!4234))))

(declare-fun b!26372 () Bool)

(declare-fun res!12058 () Bool)

(assert (=> b!26372 (=> (not res!12058) (not e!13526))))

(assert (=> b!26372 (= res!12058 (concInv!56 ys!77))))

(declare-fun b!26373 () Bool)

(assert (=> b!26373 (= e!13525 (concatCorrectness!11 lt!4234 (right!709 xs!533) ys!77))))

(declare-fun b!26374 () Bool)

(assert (=> b!26374 (= e!13520 (level!50 (ite lt!4240 (right!709 xs!533) ys!77)))))

(declare-fun b!26375 () Bool)

(declare-fun e!13522 () Bool)

(assert (=> b!26375 (= e!13522 (balanced!57 (right!709 xs!533)))))

(declare-fun d!14091 () Bool)

(assert (=> d!14091 e!13524))

(declare-fun res!12053 () Bool)

(assert (=> d!14091 (=> (not res!12053) (not e!13524))))

(assert (=> d!14091 (= res!12053 (is-CC!61 lt!4234))))

(assert (=> d!14091 (= lt!4234 e!13527)))

(declare-fun c!5815 () Bool)

(assert (=> d!14091 (= c!5815 (and (>= lt!4235 (- 1)) (<= lt!4235 1)))))

(assert (=> d!14091 (= lt!4235 (- (level!50 ys!77) (level!50 (right!709 xs!533))))))

(assert (=> d!14091 e!13526))

(declare-fun res!12062 () Bool)

(assert (=> d!14091 (=> (not res!12062) (not e!13526))))

(assert (=> d!14091 (= res!12062 e!13522)))

(declare-fun res!12059 () Bool)

(assert (=> d!14091 (=> (not res!12059) (not e!13522))))

(assert (=> d!14091 (= res!12059 (concInv!56 (right!709 xs!533)))))

(assert (=> d!14091 (= (concatNonEmpty!14 (right!709 xs!533) ys!77) lt!4234)))

(declare-fun b!26376 () Bool)

(declare-fun e!13528 () Bool)

(assert (=> b!26376 (= e!13528 tp_is_empty!169)))

(declare-fun b!26377 () Bool)

(declare-fun tp!5766 () Bool)

(declare-fun tp!5767 () Bool)

(assert (=> b!26377 (= e!13528 (and tp!5766 tp!5767))))

(declare-fun b!26378 () Bool)

(assert (=> b!26378 (= e!13521 (level!50 lt!4238))))

(declare-fun b!26379 () Bool)

(assert (=> b!26379 (= e!13527 (CC!61 (right!709 xs!533) ys!77))))

(declare-fun b!26380 () Bool)

(declare-fun res!12060 () Int)

(assert (=> b!26380 (= e!13520 res!12060)))

(assert (=> b!26380 true))

(assert (=> b!26380 true))

(declare-fun b!26381 () Bool)

(declare-fun res!12063 () Bool)

(assert (=> b!26381 (=> (not res!12063) (not e!13525))))

(assert (=> b!26381 (= res!12063 (concInv!56 lt!4234))))

(declare-fun b!26382 () Bool)

(assert (=> b!26382 (= e!13526 (not (isEmpty!318 ys!77)))))

(declare-fun b!26383 () Bool)

(assert (=> b!26383 (= e!13523 (concatNonEmpty!14 (ite lt!4232 (ite (>= lt!4241 lt!4237) (right!709 (right!709 xs!533)) (right!709 (right!709 (right!709 xs!533)))) (right!709 xs!533)) (ite lt!4232 ys!77 (ite (>= lt!4241 lt!4237) (left!706 ys!77) (left!706 (left!706 ys!77))))))))

(declare-fun b!26384 () Bool)

(declare-fun res!12056 () Bool)

(assert (=> b!26384 (=> (not res!12056) (not e!13526))))

(assert (=> b!26384 (= res!12056 (balanced!57 ys!77))))

(declare-fun b!26385 () Bool)

(declare-fun res!12054 () Bool)

(assert (=> b!26385 (=> (not res!12054) (not e!13525))))

(declare-fun lt!4230 () Int)

(declare-fun lt!4243 () Int)

(declare-fun lt!4236 () Int)

(assert (=> b!26385 (= res!12054 (>= lt!4236 (ite (>= lt!4243 lt!4230) lt!4243 lt!4230)))))

(assert (=> b!26385 (= lt!4230 (level!50 ys!77))))

(assert (=> b!26385 (= lt!4243 (level!50 (right!709 xs!533)))))

(assert (=> b!26385 (= lt!4236 (level!50 lt!4234))))

(declare-fun b!26386 () Bool)

(declare-fun res!12057 () Bool)

(assert (=> b!26386 (=> (not res!12057) (not e!13525))))

(assert (=> b!26386 (= res!12057 (balanced!57 lt!4234))))

(declare-fun b!26387 () Bool)

(declare-fun res!12050 () Conc!62)

(assert (=> b!26387 (= e!13523 res!12050)))

(assert (=> b!26387 true))

(assert (=> b!26387 e!13528))

(assert (= (and d!14091 res!12059) b!26375))

(assert (= (and d!14091 res!12062) b!26372))

(assert (= (and b!26372 res!12058) b!26384))

(assert (= (and b!26384 res!12056) b!26368))

(assert (= (and b!26368 res!12051) b!26382))

(assert (= (and b!26387 (is-CC!61 res!12050)) b!26377))

(assert (= (and b!26387 (is-Single!61 res!12050)) b!26376))

(assert (= (and b!26370 c!5812) b!26383))

(assert (= (and b!26370 (not c!5812)) b!26387))

(assert (= (and b!26370 c!5814) b!26378))

(assert (= (and b!26370 (not c!5814)) b!26369))

(assert (= (and b!26370 c!5813) b!26374))

(assert (= (and b!26370 (not c!5813)) b!26380))

(assert (= (and d!14091 c!5815) b!26379))

(assert (= (and d!14091 (not c!5815)) b!26370))

(assert (= (and d!14091 res!12053) b!26371))

(assert (= (and b!26371 res!12061) b!26385))

(assert (= (and b!26385 res!12054) b!26381))

(assert (= (and b!26381 res!12063) b!26386))

(assert (= (and b!26386 res!12057) b!26367))

(assert (= (and b!26367 res!12052) b!26373))

(declare-fun m!27293 () Bool)

(assert (=> b!26383 m!27293))

(assert (=> b!26384 m!27217))

(assert (=> b!26382 m!27223))

(declare-fun m!27295 () Bool)

(assert (=> b!26373 m!27295))

(assert (=> b!26375 m!27277))

(assert (=> b!26372 m!27209))

(declare-fun m!27297 () Bool)

(assert (=> b!26367 m!27297))

(assert (=> b!26371 m!27197))

(assert (=> b!26371 m!27227))

(declare-fun m!27299 () Bool)

(assert (=> b!26371 m!27299))

(assert (=> b!26385 m!27197))

(assert (=> b!26385 m!27227))

(assert (=> b!26385 m!27299))

(declare-fun m!27301 () Bool)

(assert (=> b!26368 m!27301))

(declare-fun m!27303 () Bool)

(assert (=> b!26386 m!27303))

(declare-fun m!27305 () Bool)

(assert (=> b!26378 m!27305))

(assert (=> d!14091 m!27197))

(assert (=> d!14091 m!27227))

(declare-fun m!27307 () Bool)

(assert (=> d!14091 m!27307))

(declare-fun m!27309 () Bool)

(assert (=> b!26370 m!27309))

(declare-fun m!27311 () Bool)

(assert (=> b!26370 m!27311))

(declare-fun m!27313 () Bool)

(assert (=> b!26374 m!27313))

(declare-fun m!27315 () Bool)

(assert (=> b!26381 m!27315))

(assert (=> b!26255 d!14091))

(assert (=> b!26244 d!14087))

(assert (=> b!26244 d!14089))

(declare-fun b!26389 () Bool)

(declare-fun e!13529 () Int)

(declare-fun lt!4247 () Int)

(declare-fun lt!4246 () Int)

(assert (=> b!26389 (= e!13529 (+ 1 (ite (>= lt!4247 lt!4246) lt!4247 lt!4246)))))

(assert (=> b!26389 (= lt!4246 (level!50 (right!709 res!5528)))))

(assert (=> b!26389 (= lt!4247 (level!50 (left!706 res!5528)))))

(declare-fun d!14093 () Bool)

(declare-fun lt!4245 () Int)

(assert (=> d!14093 (>= lt!4245 0)))

(assert (=> d!14093 (= lt!4245 e!13529)))

(declare-fun c!5816 () Bool)

(assert (=> d!14093 (= c!5816 (or (is-Empty!72 res!5528) (is-Single!61 res!5528)))))

(assert (=> d!14093 (= (level!50 res!5528) lt!4245)))

(declare-fun b!26388 () Bool)

(assert (=> b!26388 (= e!13529 0)))

(assert (= (and d!14093 c!5816) b!26388))

(assert (= (and d!14093 (not c!5816)) b!26389))

(declare-fun m!27317 () Bool)

(assert (=> b!26389 m!27317))

(declare-fun m!27319 () Bool)

(assert (=> b!26389 m!27319))

(assert (=> b!26244 d!14093))

(declare-fun b!26390 () Bool)

(declare-fun e!13530 () Bool)

(declare-fun e!13531 () Bool)

(assert (=> b!26390 (= e!13530 e!13531)))

(declare-fun res!12066 () Bool)

(assert (=> b!26390 (=> (not res!12066) (not e!13531))))

(assert (=> b!26390 (= res!12066 (not (isEmpty!318 (left!706 res!5528))))))

(declare-fun b!26392 () Bool)

(declare-fun res!12067 () Bool)

(assert (=> b!26392 (=> (not res!12067) (not e!13531))))

(assert (=> b!26392 (= res!12067 (concInv!56 (left!706 res!5528)))))

(declare-fun b!26391 () Bool)

(declare-fun res!12065 () Bool)

(assert (=> b!26391 (=> (not res!12065) (not e!13531))))

(assert (=> b!26391 (= res!12065 (not (isEmpty!318 (right!709 res!5528))))))

(declare-fun d!14095 () Bool)

(declare-fun res!12064 () Bool)

(assert (=> d!14095 (=> res!12064 e!13530)))

(assert (=> d!14095 (= res!12064 (not (is-CC!61 res!5528)))))

(assert (=> d!14095 (= (concInv!56 res!5528) e!13530)))

(declare-fun b!26393 () Bool)

(assert (=> b!26393 (= e!13531 (concInv!56 (right!709 res!5528)))))

(assert (= (and d!14095 (not res!12064)) b!26390))

(assert (= (and b!26390 res!12066) b!26391))

(assert (= (and b!26391 res!12065) b!26392))

(assert (= (and b!26392 res!12067) b!26393))

(declare-fun m!27321 () Bool)

(assert (=> b!26390 m!27321))

(declare-fun m!27323 () Bool)

(assert (=> b!26392 m!27323))

(declare-fun m!27325 () Bool)

(assert (=> b!26391 m!27325))

(declare-fun m!27327 () Bool)

(assert (=> b!26393 m!27327))

(assert (=> b!26252 d!14095))

(declare-fun b!26397 () Bool)

(declare-fun e!13533 () Bool)

(assert (=> b!26397 (= e!13533 (balanced!57 (right!709 ys!77)))))

(declare-fun b!26395 () Bool)

(declare-fun res!12070 () Bool)

(assert (=> b!26395 (=> (not res!12070) (not e!13533))))

(assert (=> b!26395 (= res!12070 (<= (- (level!50 (left!706 ys!77)) (level!50 (right!709 ys!77))) 1))))

(declare-fun b!26396 () Bool)

(declare-fun res!12071 () Bool)

(assert (=> b!26396 (=> (not res!12071) (not e!13533))))

(assert (=> b!26396 (= res!12071 (balanced!57 (left!706 ys!77)))))

(declare-fun b!26394 () Bool)

(declare-fun e!13532 () Bool)

(assert (=> b!26394 (= e!13532 e!13533)))

(declare-fun res!12069 () Bool)

(assert (=> b!26394 (=> (not res!12069) (not e!13533))))

(assert (=> b!26394 (= res!12069 (>= (- (level!50 (left!706 ys!77)) (level!50 (right!709 ys!77))) (- 1)))))

(declare-fun d!14097 () Bool)

(declare-fun res!12068 () Bool)

(assert (=> d!14097 (=> res!12068 e!13532)))

(assert (=> d!14097 (= res!12068 (not (is-CC!61 ys!77)))))

(assert (=> d!14097 (= (balanced!57 ys!77) e!13532)))

(assert (= (and d!14097 (not res!12068)) b!26394))

(assert (= (and b!26394 res!12069) b!26395))

(assert (= (and b!26395 res!12070) b!26396))

(assert (= (and b!26396 res!12071) b!26397))

(declare-fun m!27329 () Bool)

(assert (=> b!26397 m!27329))

(assert (=> b!26395 m!27291))

(assert (=> b!26395 m!27289))

(declare-fun m!27331 () Bool)

(assert (=> b!26396 m!27331))

(assert (=> b!26394 m!27291))

(assert (=> b!26394 m!27289))

(assert (=> b!26261 d!14097))

(assert (=> b!26247 d!14087))

(assert (=> b!26247 d!14089))

(assert (=> b!26247 d!14093))

(declare-fun b!26401 () Bool)

(declare-fun e!13535 () Bool)

(assert (=> b!26401 (= e!13535 (balanced!57 (right!709 res!5528)))))

(declare-fun b!26399 () Bool)

(declare-fun res!12074 () Bool)

(assert (=> b!26399 (=> (not res!12074) (not e!13535))))

(assert (=> b!26399 (= res!12074 (<= (- (level!50 (left!706 res!5528)) (level!50 (right!709 res!5528))) 1))))

(declare-fun b!26400 () Bool)

(declare-fun res!12075 () Bool)

(assert (=> b!26400 (=> (not res!12075) (not e!13535))))

(assert (=> b!26400 (= res!12075 (balanced!57 (left!706 res!5528)))))

(declare-fun b!26398 () Bool)

(declare-fun e!13534 () Bool)

(assert (=> b!26398 (= e!13534 e!13535)))

(declare-fun res!12073 () Bool)

(assert (=> b!26398 (=> (not res!12073) (not e!13535))))

(assert (=> b!26398 (= res!12073 (>= (- (level!50 (left!706 res!5528)) (level!50 (right!709 res!5528))) (- 1)))))

(declare-fun d!14099 () Bool)

(declare-fun res!12072 () Bool)

(assert (=> d!14099 (=> res!12072 e!13534)))

(assert (=> d!14099 (= res!12072 (not (is-CC!61 res!5528)))))

(assert (=> d!14099 (= (balanced!57 res!5528) e!13534)))

(assert (= (and d!14099 (not res!12072)) b!26398))

(assert (= (and b!26398 res!12073) b!26399))

(assert (= (and b!26399 res!12074) b!26400))

(assert (= (and b!26400 res!12075) b!26401))

(declare-fun m!27333 () Bool)

(assert (=> b!26401 m!27333))

(assert (=> b!26399 m!27319))

(assert (=> b!26399 m!27317))

(declare-fun m!27335 () Bool)

(assert (=> b!26400 m!27335))

(assert (=> b!26398 m!27319))

(assert (=> b!26398 m!27317))

(assert (=> b!26260 d!14099))

(declare-fun b!26402 () Bool)

(declare-fun e!13536 () Bool)

(declare-fun e!13537 () Bool)

(assert (=> b!26402 (= e!13536 e!13537)))

(declare-fun res!12078 () Bool)

(assert (=> b!26402 (=> (not res!12078) (not e!13537))))

(assert (=> b!26402 (= res!12078 (not (isEmpty!318 (left!706 xs!533))))))

(declare-fun b!26404 () Bool)

(declare-fun res!12079 () Bool)

(assert (=> b!26404 (=> (not res!12079) (not e!13537))))

(assert (=> b!26404 (= res!12079 (concInv!56 (left!706 xs!533)))))

(declare-fun b!26403 () Bool)

(declare-fun res!12077 () Bool)

(assert (=> b!26403 (=> (not res!12077) (not e!13537))))

(assert (=> b!26403 (= res!12077 (not (isEmpty!318 (right!709 xs!533))))))

(declare-fun d!14101 () Bool)

(declare-fun res!12076 () Bool)

(assert (=> d!14101 (=> res!12076 e!13536)))

(assert (=> d!14101 (= res!12076 (not (is-CC!61 xs!533)))))

(assert (=> d!14101 (= (concInv!56 xs!533) e!13536)))

(declare-fun b!26405 () Bool)

(assert (=> b!26405 (= e!13537 (concInv!56 (right!709 xs!533)))))

(assert (= (and d!14101 (not res!12076)) b!26402))

(assert (= (and b!26402 res!12078) b!26403))

(assert (= (and b!26403 res!12077) b!26404))

(assert (= (and b!26404 res!12079) b!26405))

(declare-fun m!27337 () Bool)

(assert (=> b!26402 m!27337))

(declare-fun m!27339 () Bool)

(assert (=> b!26404 m!27339))

(assert (=> b!26403 m!27301))

(assert (=> b!26405 m!27307))

(assert (=> start!3860 d!14101))

(declare-fun b!26412 () Bool)

(declare-fun e!13540 () Bool)

(declare-fun tp!5772 () Bool)

(declare-fun tp!5773 () Bool)

(assert (=> b!26412 (= e!13540 (and tp!5772 tp!5773))))

(declare-fun b!26413 () Bool)

(assert (=> b!26413 (= e!13540 tp_is_empty!169)))

(assert (=> b!26249 (= tp!5758 e!13540)))

(assert (= (and b!26249 (is-CC!61 (left!706 ys!77))) b!26412))

(assert (= (and b!26249 (is-Single!61 (left!706 ys!77))) b!26413))

(declare-fun b!26414 () Bool)

(declare-fun e!13541 () Bool)

(declare-fun tp!5774 () Bool)

(declare-fun tp!5775 () Bool)

(assert (=> b!26414 (= e!13541 (and tp!5774 tp!5775))))

(declare-fun b!26415 () Bool)

(assert (=> b!26415 (= e!13541 tp_is_empty!169)))

(assert (=> b!26249 (= tp!5761 e!13541)))

(assert (= (and b!26249 (is-CC!61 (right!709 ys!77))) b!26414))

(assert (= (and b!26249 (is-Single!61 (right!709 ys!77))) b!26415))

(declare-fun b!26416 () Bool)

(declare-fun e!13542 () Bool)

(declare-fun tp!5776 () Bool)

(declare-fun tp!5777 () Bool)

(assert (=> b!26416 (= e!13542 (and tp!5776 tp!5777))))

(declare-fun b!26417 () Bool)

(assert (=> b!26417 (= e!13542 tp_is_empty!169)))

(assert (=> b!26253 (= tp!5760 e!13542)))

(assert (= (and b!26253 (is-CC!61 (left!706 xs!533))) b!26416))

(assert (= (and b!26253 (is-Single!61 (left!706 xs!533))) b!26417))

(declare-fun b!26418 () Bool)

(declare-fun e!13543 () Bool)

(declare-fun tp!5778 () Bool)

(declare-fun tp!5779 () Bool)

(assert (=> b!26418 (= e!13543 (and tp!5778 tp!5779))))

(declare-fun b!26419 () Bool)

(assert (=> b!26419 (= e!13543 tp_is_empty!169)))

(assert (=> b!26253 (= tp!5759 e!13543)))

(assert (= (and b!26253 (is-CC!61 (right!709 xs!533))) b!26418))

(assert (= (and b!26253 (is-Single!61 (right!709 xs!533))) b!26419))

(declare-fun b!26420 () Bool)

(declare-fun e!13544 () Bool)

(declare-fun tp!5780 () Bool)

(declare-fun tp!5781 () Bool)

(assert (=> b!26420 (= e!13544 (and tp!5780 tp!5781))))

(declare-fun b!26421 () Bool)

(assert (=> b!26421 (= e!13544 tp_is_empty!169)))

(assert (=> b!26245 (= tp!5756 e!13544)))

(assert (= (and b!26245 (is-CC!61 (left!706 res!5528))) b!26420))

(assert (= (and b!26245 (is-Single!61 (left!706 res!5528))) b!26421))

(declare-fun b!26422 () Bool)

(declare-fun e!13545 () Bool)

(declare-fun tp!5782 () Bool)

(declare-fun tp!5783 () Bool)

(assert (=> b!26422 (= e!13545 (and tp!5782 tp!5783))))

(declare-fun b!26423 () Bool)

(assert (=> b!26423 (= e!13545 tp_is_empty!169)))

(assert (=> b!26245 (= tp!5757 e!13545)))

(assert (= (and b!26245 (is-CC!61 (right!709 res!5528))) b!26422))

(assert (= (and b!26245 (is-Single!61 (right!709 res!5528))) b!26423))

(push 1)

(assert (not b!26395))

(assert (not b!26317))

(assert (not b!26305))

(assert (not b!26382))

(assert (not b!26397))

(assert (not b!26319))

(assert (not b!26391))

(assert (not b!26373))

(assert (not b!26371))

(assert (not b!26308))

(assert (not b!26290))

(assert (not b!26296))

(assert (not b!26394))

(assert (not d!14091))

(assert (not b!26404))

(assert (not d!14077))

(assert (not b!26412))

(assert (not b!26393))

(assert (not b!26324))

(assert (not b!26422))

(assert (not b!26399))

(assert (not b!26291))

(assert (not b!26295))

(assert (not b!26381))

(assert (not b!26322))

(assert (not b!26383))

(assert (not b!26392))

(assert (not b!26402))

(assert (not b!26372))

(assert (not b!26420))

(assert (not b!26288))

(assert (not b!26289))

(assert (not b!26386))

(assert tp_is_empty!169)

(assert (not b!26400))

(assert (not b!26375))

(assert (not b!26267))

(assert (not b!26368))

(assert (not b!26378))

(assert (not b!26367))

(assert (not b!26405))

(assert (not b!26390))

(assert (not b!26398))

(assert (not b!26389))

(assert (not b!26306))

(assert (not b!26396))

(assert (not b!26403))

(assert (not b!26401))

(assert (not b!26416))

(assert (not b!26269))

(assert (not b!26414))

(assert (not b!26418))

(assert (not b!26384))

(assert (not b!26385))

(assert (not b!26377))

(assert (not b!26318))

(assert (not b!26370))

(assert (not b!26307))

(assert (not b!26374))

(assert (not b!26320))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!26434 () Bool)

(declare-fun e!13550 () List!359)

(assert (=> b!26434 (= e!13550 (Cons!353 (x!8917 (left!706 (left!706 ys!77))) Nil!354))))

(declare-fun b!26433 () Bool)

(declare-fun e!13551 () List!359)

(assert (=> b!26433 (= e!13551 e!13550)))

(declare-fun c!5822 () Bool)

(assert (=> b!26433 (= c!5822 (is-Single!61 (left!706 (left!706 ys!77))))))

(declare-fun b!26432 () Bool)

(assert (=> b!26432 (= e!13551 Nil!354)))

(declare-fun b!26435 () Bool)

(assert (=> b!26435 (= e!13550 (++!39 (toList!114 (left!706 (left!706 (left!706 ys!77)))) (toList!114 (right!709 (left!706 (left!706 ys!77))))))))

(declare-fun d!14103 () Bool)

(declare-fun lt!4250 () List!359)

(declare-fun size!267 (List!359) Int)

(declare-fun size!268 (Conc!62) Int)

(assert (=> d!14103 (= (size!267 lt!4250) (size!268 (left!706 (left!706 ys!77))))))

(assert (=> d!14103 (= lt!4250 e!13551)))

(declare-fun c!5821 () Bool)

(assert (=> d!14103 (= c!5821 (is-Empty!72 (left!706 (left!706 ys!77))))))

(assert (=> d!14103 (= (toList!114 (left!706 (left!706 ys!77))) lt!4250)))

(assert (= (and b!26433 c!5822) b!26434))

(assert (= (and b!26433 (not c!5822)) b!26435))

(assert (= (and d!14103 c!5821) b!26432))

(assert (= (and d!14103 (not c!5821)) b!26433))

(declare-fun m!27341 () Bool)

(assert (=> b!26435 m!27341))

(declare-fun m!27343 () Bool)

(assert (=> b!26435 m!27343))

(assert (=> b!26435 m!27341))

(assert (=> b!26435 m!27343))

(declare-fun m!27345 () Bool)

(assert (=> b!26435 m!27345))

(declare-fun m!27347 () Bool)

(assert (=> d!14103 m!27347))

(declare-fun m!27349 () Bool)

(assert (=> d!14103 m!27349))

(assert (=> b!26288 d!14103))

(declare-fun b!26438 () Bool)

(declare-fun e!13552 () List!359)

(assert (=> b!26438 (= e!13552 (Cons!353 (x!8917 (right!709 ys!77)) Nil!354))))

(declare-fun b!26437 () Bool)

(declare-fun e!13553 () List!359)

(assert (=> b!26437 (= e!13553 e!13552)))

(declare-fun c!5824 () Bool)

(assert (=> b!26437 (= c!5824 (is-Single!61 (right!709 ys!77)))))

(declare-fun b!26436 () Bool)

(assert (=> b!26436 (= e!13553 Nil!354)))

(declare-fun b!26439 () Bool)

(assert (=> b!26439 (= e!13552 (++!39 (toList!114 (left!706 (right!709 ys!77))) (toList!114 (right!709 (right!709 ys!77)))))))

(declare-fun d!14105 () Bool)

(declare-fun lt!4251 () List!359)

(assert (=> d!14105 (= (size!267 lt!4251) (size!268 (right!709 ys!77)))))

(assert (=> d!14105 (= lt!4251 e!13553)))

(declare-fun c!5823 () Bool)

(assert (=> d!14105 (= c!5823 (is-Empty!72 (right!709 ys!77)))))

(assert (=> d!14105 (= (toList!114 (right!709 ys!77)) lt!4251)))

(assert (= (and b!26437 c!5824) b!26438))

(assert (= (and b!26437 (not c!5824)) b!26439))

(assert (= (and d!14105 c!5823) b!26436))

(assert (= (and d!14105 (not c!5823)) b!26437))

(declare-fun m!27351 () Bool)

(assert (=> b!26439 m!27351))

(declare-fun m!27353 () Bool)

(assert (=> b!26439 m!27353))

(assert (=> b!26439 m!27351))

(assert (=> b!26439 m!27353))

(declare-fun m!27355 () Bool)

(assert (=> b!26439 m!27355))

(declare-fun m!27357 () Bool)

(assert (=> d!14105 m!27357))

(declare-fun m!27359 () Bool)

(assert (=> d!14105 m!27359))

(assert (=> b!26288 d!14105))

(declare-fun b!26442 () Bool)

(declare-fun e!13554 () List!359)

(assert (=> b!26442 (= e!13554 (Cons!353 (x!8917 (right!709 (left!706 ys!77))) Nil!354))))

(declare-fun b!26441 () Bool)

(declare-fun e!13555 () List!359)

(assert (=> b!26441 (= e!13555 e!13554)))

(declare-fun c!5826 () Bool)

(assert (=> b!26441 (= c!5826 (is-Single!61 (right!709 (left!706 ys!77))))))

(declare-fun b!26440 () Bool)

(assert (=> b!26440 (= e!13555 Nil!354)))

(declare-fun b!26443 () Bool)

(assert (=> b!26443 (= e!13554 (++!39 (toList!114 (left!706 (right!709 (left!706 ys!77)))) (toList!114 (right!709 (right!709 (left!706 ys!77))))))))

(declare-fun d!14107 () Bool)

(declare-fun lt!4252 () List!359)

(assert (=> d!14107 (= (size!267 lt!4252) (size!268 (right!709 (left!706 ys!77))))))

(assert (=> d!14107 (= lt!4252 e!13555)))

(declare-fun c!5825 () Bool)

(assert (=> d!14107 (= c!5825 (is-Empty!72 (right!709 (left!706 ys!77))))))

(assert (=> d!14107 (= (toList!114 (right!709 (left!706 ys!77))) lt!4252)))

(assert (= (and b!26441 c!5826) b!26442))

(assert (= (and b!26441 (not c!5826)) b!26443))

(assert (= (and d!14107 c!5825) b!26440))

(assert (= (and d!14107 (not c!5825)) b!26441))

(declare-fun m!27361 () Bool)

(assert (=> b!26443 m!27361))

(declare-fun m!27363 () Bool)

(assert (=> b!26443 m!27363))

(assert (=> b!26443 m!27361))

(assert (=> b!26443 m!27363))

(declare-fun m!27365 () Bool)

(assert (=> b!26443 m!27365))

(declare-fun m!27367 () Bool)

(assert (=> d!14107 m!27367))

(declare-fun m!27369 () Bool)

(assert (=> d!14107 m!27369))

(assert (=> b!26288 d!14107))

(declare-fun b!26446 () Bool)

(declare-fun e!13556 () List!359)

(assert (=> b!26446 (= e!13556 (Cons!353 (x!8917 xs!533) Nil!354))))

(declare-fun b!26445 () Bool)

(declare-fun e!13557 () List!359)

(assert (=> b!26445 (= e!13557 e!13556)))

(declare-fun c!5828 () Bool)

(assert (=> b!26445 (= c!5828 (is-Single!61 xs!533))))

(declare-fun b!26444 () Bool)

(assert (=> b!26444 (= e!13557 Nil!354)))

(declare-fun b!26447 () Bool)

(assert (=> b!26447 (= e!13556 (++!39 (toList!114 (left!706 xs!533)) (toList!114 (right!709 xs!533))))))

(declare-fun d!14109 () Bool)

(declare-fun lt!4253 () List!359)

(assert (=> d!14109 (= (size!267 lt!4253) (size!268 xs!533))))

(assert (=> d!14109 (= lt!4253 e!13557)))

(declare-fun c!5827 () Bool)

(assert (=> d!14109 (= c!5827 (is-Empty!72 xs!533))))

(assert (=> d!14109 (= (toList!114 xs!533) lt!4253)))

(assert (= (and b!26445 c!5828) b!26446))

(assert (= (and b!26445 (not c!5828)) b!26447))

(assert (= (and d!14109 c!5827) b!26444))

(assert (= (and d!14109 (not c!5827)) b!26445))

(assert (=> b!26447 m!27261))

(assert (=> b!26447 m!27269))

(assert (=> b!26447 m!27261))

(assert (=> b!26447 m!27269))

(declare-fun m!27371 () Bool)

(assert (=> b!26447 m!27371))

(declare-fun m!27373 () Bool)

(assert (=> d!14109 m!27373))

(declare-fun m!27375 () Bool)

(assert (=> d!14109 m!27375))

(assert (=> b!26288 d!14109))

(declare-fun b!26457 () Bool)

(declare-fun e!13563 () List!359)

(assert (=> b!26457 (= e!13563 (Cons!353 (h!270 (toList!114 xs!533)) (++!39 (t!4373 (toList!114 xs!533)) (toList!114 (left!706 (left!706 ys!77))))))))

(declare-fun d!14111 () Bool)

(declare-fun e!13562 () Bool)

(assert (=> d!14111 e!13562))

(declare-fun res!12086 () Bool)

(assert (=> d!14111 (=> (not res!12086) (not e!13562))))

(declare-fun lt!4256 () List!359)

(declare-fun content!69 (List!359) (Set T!1825))

(assert (=> d!14111 (= res!12086 (= (content!69 lt!4256) (union (content!69 (toList!114 xs!533)) (content!69 (toList!114 (left!706 (left!706 ys!77)))))))))

(assert (=> d!14111 (= lt!4256 e!13563)))

(declare-fun c!5831 () Bool)

(assert (=> d!14111 (= c!5831 (is-Nil!354 (toList!114 xs!533)))))

(assert (=> d!14111 (= (++!39 (toList!114 xs!533) (toList!114 (left!706 (left!706 ys!77)))) lt!4256)))

(declare-fun b!26459 () Bool)

(assert (=> b!26459 (= e!13562 (or (not (= (toList!114 (left!706 (left!706 ys!77))) Nil!354)) (= lt!4256 (toList!114 xs!533))))))

(declare-fun b!26456 () Bool)

(assert (=> b!26456 (= e!13563 (toList!114 (left!706 (left!706 ys!77))))))

(declare-fun b!26458 () Bool)

(declare-fun res!12087 () Bool)

(assert (=> b!26458 (=> (not res!12087) (not e!13562))))

(assert (=> b!26458 (= res!12087 (= (size!267 lt!4256) (+ (size!267 (toList!114 xs!533)) (size!267 (toList!114 (left!706 (left!706 ys!77)))))))))

(assert (= (and d!14111 c!5831) b!26456))

(assert (= (and d!14111 (not c!5831)) b!26457))

(assert (= (and d!14111 res!12086) b!26458))

(assert (= (and b!26458 res!12087) b!26459))

(assert (=> b!26457 m!27251))

(declare-fun m!27377 () Bool)

(assert (=> b!26457 m!27377))

(declare-fun m!27379 () Bool)

(assert (=> d!14111 m!27379))

(assert (=> d!14111 m!27237))

(declare-fun m!27381 () Bool)

(assert (=> d!14111 m!27381))

(assert (=> d!14111 m!27251))

(declare-fun m!27383 () Bool)

(assert (=> d!14111 m!27383))

(declare-fun m!27385 () Bool)

(assert (=> b!26458 m!27385))

(assert (=> b!26458 m!27237))

(declare-fun m!27387 () Bool)

(assert (=> b!26458 m!27387))

(assert (=> b!26458 m!27251))

(declare-fun m!27389 () Bool)

(assert (=> b!26458 m!27389))

(assert (=> b!26288 d!14111))

(declare-fun b!26464 () Bool)

(declare-fun e!13566 () Bool)

(assert (=> b!26464 (= e!13566 (= (++!39 (++!39 (++!39 (toList!114 xs!533) (toList!114 (left!706 (left!706 ys!77)))) (toList!114 (right!709 (left!706 ys!77)))) (toList!114 (right!709 ys!77))) (++!39 (++!39 (toList!114 xs!533) (toList!114 (left!706 (left!706 ys!77)))) (++!39 (toList!114 (right!709 (left!706 ys!77))) (toList!114 (right!709 ys!77))))))))

(declare-fun lt!4259 () Bool)

(assert (=> b!26464 (= lt!4259 (appendAssoc!7 (t!4373 (++!39 (toList!114 xs!533) (toList!114 (left!706 (left!706 ys!77))))) (toList!114 (right!709 (left!706 ys!77))) (toList!114 (right!709 ys!77))))))

(declare-fun d!14113 () Bool)

(assert (=> d!14113 e!13566))

(declare-fun c!5834 () Bool)

(assert (=> d!14113 (= c!5834 (is-Cons!353 (++!39 (toList!114 xs!533) (toList!114 (left!706 (left!706 ys!77))))))))

(assert (=> d!14113 (= (appendAssoc!7 (++!39 (toList!114 xs!533) (toList!114 (left!706 (left!706 ys!77)))) (toList!114 (right!709 (left!706 ys!77))) (toList!114 (right!709 ys!77))) true)))

(declare-fun b!26465 () Bool)

(assert (=> b!26465 (= e!13566 (= (++!39 (++!39 (++!39 (toList!114 xs!533) (toList!114 (left!706 (left!706 ys!77)))) (toList!114 (right!709 (left!706 ys!77)))) (toList!114 (right!709 ys!77))) (++!39 (++!39 (toList!114 xs!533) (toList!114 (left!706 (left!706 ys!77)))) (++!39 (toList!114 (right!709 (left!706 ys!77))) (toList!114 (right!709 ys!77))))))))

(assert (= (and d!14113 c!5834) b!26464))

(assert (= (and d!14113 (not c!5834)) b!26465))

(assert (=> b!26464 m!27247))

(assert (=> b!26464 m!27241))

(declare-fun m!27391 () Bool)

(assert (=> b!26464 m!27391))

(assert (=> b!26464 m!27245))

(declare-fun m!27393 () Bool)

(assert (=> b!26464 m!27393))

(declare-fun m!27395 () Bool)

(assert (=> b!26464 m!27395))

(assert (=> b!26464 m!27245))

(assert (=> b!26464 m!27247))

(declare-fun m!27397 () Bool)

(assert (=> b!26464 m!27397))

(assert (=> b!26464 m!27397))

(assert (=> b!26464 m!27241))

(declare-fun m!27399 () Bool)

(assert (=> b!26464 m!27399))

(assert (=> b!26464 m!27247))

(assert (=> b!26464 m!27241))

(assert (=> b!26464 m!27393))

(assert (=> b!26465 m!27245))

(assert (=> b!26465 m!27247))

(assert (=> b!26465 m!27397))

(assert (=> b!26465 m!27397))

(assert (=> b!26465 m!27241))

(assert (=> b!26465 m!27399))

(assert (=> b!26465 m!27247))

(assert (=> b!26465 m!27241))

(assert (=> b!26465 m!27393))

(assert (=> b!26465 m!27245))

(assert (=> b!26465 m!27393))

(assert (=> b!26465 m!27395))

(assert (=> b!26288 d!14113))

(declare-fun b!26467 () Bool)

(declare-fun e!13567 () Int)

(declare-fun lt!4262 () Int)

(declare-fun lt!4261 () Int)

(assert (=> b!26467 (= e!13567 (+ 1 (ite (>= lt!4262 lt!4261) lt!4262 lt!4261)))))

(assert (=> b!26467 (= lt!4261 (level!50 (right!709 (ite lt!4240 (right!709 xs!533) ys!77))))))

(assert (=> b!26467 (= lt!4262 (level!50 (left!706 (ite lt!4240 (right!709 xs!533) ys!77))))))

(declare-fun d!14115 () Bool)

(declare-fun lt!4260 () Int)

(assert (=> d!14115 (>= lt!4260 0)))

(assert (=> d!14115 (= lt!4260 e!13567)))

(declare-fun c!5835 () Bool)

(assert (=> d!14115 (= c!5835 (or (is-Empty!72 (ite lt!4240 (right!709 xs!533) ys!77)) (is-Single!61 (ite lt!4240 (right!709 xs!533) ys!77))))))

(assert (=> d!14115 (= (level!50 (ite lt!4240 (right!709 xs!533) ys!77)) lt!4260)))

(declare-fun b!26466 () Bool)

(assert (=> b!26466 (= e!13567 0)))

(assert (= (and d!14115 c!5835) b!26466))

(assert (= (and d!14115 (not c!5835)) b!26467))

(declare-fun m!27401 () Bool)

(assert (=> b!26467 m!27401))

(declare-fun m!27403 () Bool)

(assert (=> b!26467 m!27403))

(assert (=> b!26374 d!14115))

(declare-fun d!14117 () Bool)

(assert (=> d!14117 (= (isEmpty!318 (right!709 ys!77)) (= (right!709 ys!77) Empty!72))))

(assert (=> b!26318 d!14117))

(assert (=> b!26384 d!14097))

(declare-fun d!14119 () Bool)

(assert (=> d!14119 (= (concatCorrectness!11 lt!4234 (right!709 xs!533) ys!77) (= (toList!114 lt!4234) (++!39 (toList!114 (right!709 xs!533)) (toList!114 ys!77))))))

(declare-fun bs!5090 () Bool)

(assert (= bs!5090 d!14119))

(assert (=> bs!5090 m!27269))

(assert (=> bs!5090 m!27253))

(declare-fun m!27405 () Bool)

(assert (=> bs!5090 m!27405))

(declare-fun m!27407 () Bool)

(assert (=> bs!5090 m!27407))

(assert (=> bs!5090 m!27253))

(assert (=> bs!5090 m!27269))

(assert (=> b!26373 d!14119))

(declare-fun b!26471 () Bool)

(declare-fun e!13569 () Bool)

(assert (=> b!26471 (= e!13569 (balanced!57 (right!709 lt!4234)))))

(declare-fun b!26469 () Bool)

(declare-fun res!12090 () Bool)

(assert (=> b!26469 (=> (not res!12090) (not e!13569))))

(assert (=> b!26469 (= res!12090 (<= (- (level!50 (left!706 lt!4234)) (level!50 (right!709 lt!4234))) 1))))

(declare-fun b!26470 () Bool)

(declare-fun res!12091 () Bool)

(assert (=> b!26470 (=> (not res!12091) (not e!13569))))

(assert (=> b!26470 (= res!12091 (balanced!57 (left!706 lt!4234)))))

(declare-fun b!26468 () Bool)

(declare-fun e!13568 () Bool)

(assert (=> b!26468 (= e!13568 e!13569)))

(declare-fun res!12089 () Bool)

(assert (=> b!26468 (=> (not res!12089) (not e!13569))))

(assert (=> b!26468 (= res!12089 (>= (- (level!50 (left!706 lt!4234)) (level!50 (right!709 lt!4234))) (- 1)))))

(declare-fun d!14121 () Bool)

(declare-fun res!12088 () Bool)

(assert (=> d!14121 (=> res!12088 e!13568)))

(assert (=> d!14121 (= res!12088 (not (is-CC!61 lt!4234)))))

(assert (=> d!14121 (= (balanced!57 lt!4234) e!13568)))

(assert (= (and d!14121 (not res!12088)) b!26468))

(assert (= (and b!26468 res!12089) b!26469))

(assert (= (and b!26469 res!12090) b!26470))

(assert (= (and b!26470 res!12091) b!26471))

(declare-fun m!27409 () Bool)

(assert (=> b!26471 m!27409))

(declare-fun m!27411 () Bool)

(assert (=> b!26469 m!27411))

(declare-fun m!27413 () Bool)

(assert (=> b!26469 m!27413))

(declare-fun m!27415 () Bool)

(assert (=> b!26470 m!27415))

(assert (=> b!26468 m!27411))

(assert (=> b!26468 m!27413))

(assert (=> b!26386 d!14121))

(declare-fun b!26472 () Bool)

(declare-fun e!13570 () Bool)

(declare-fun e!13571 () Bool)

(assert (=> b!26472 (= e!13570 e!13571)))

(declare-fun res!12094 () Bool)

(assert (=> b!26472 (=> (not res!12094) (not e!13571))))

(assert (=> b!26472 (= res!12094 (not (isEmpty!318 (left!706 (left!706 res!5528)))))))

(declare-fun b!26474 () Bool)

(declare-fun res!12095 () Bool)

(assert (=> b!26474 (=> (not res!12095) (not e!13571))))

(assert (=> b!26474 (= res!12095 (concInv!56 (left!706 (left!706 res!5528))))))

(declare-fun b!26473 () Bool)

(declare-fun res!12093 () Bool)

(assert (=> b!26473 (=> (not res!12093) (not e!13571))))

(assert (=> b!26473 (= res!12093 (not (isEmpty!318 (right!709 (left!706 res!5528)))))))

(declare-fun d!14123 () Bool)

(declare-fun res!12092 () Bool)

(assert (=> d!14123 (=> res!12092 e!13570)))

(assert (=> d!14123 (= res!12092 (not (is-CC!61 (left!706 res!5528))))))

(assert (=> d!14123 (= (concInv!56 (left!706 res!5528)) e!13570)))

(declare-fun b!26475 () Bool)

(assert (=> b!26475 (= e!13571 (concInv!56 (right!709 (left!706 res!5528))))))

(assert (= (and d!14123 (not res!12092)) b!26472))

(assert (= (and b!26472 res!12094) b!26473))

(assert (= (and b!26473 res!12093) b!26474))

(assert (= (and b!26474 res!12095) b!26475))

(declare-fun m!27417 () Bool)

(assert (=> b!26472 m!27417))

(declare-fun m!27419 () Bool)

(assert (=> b!26474 m!27419))

(declare-fun m!27421 () Bool)

(assert (=> b!26473 m!27421))

(declare-fun m!27423 () Bool)

(assert (=> b!26475 m!27423))

(assert (=> b!26392 d!14123))

(declare-fun b!26479 () Bool)

(declare-fun e!13573 () Bool)

(assert (=> b!26479 (= e!13573 (balanced!57 (right!709 (right!709 ys!77))))))

(declare-fun b!26477 () Bool)

(declare-fun res!12098 () Bool)

(assert (=> b!26477 (=> (not res!12098) (not e!13573))))

(assert (=> b!26477 (= res!12098 (<= (- (level!50 (left!706 (right!709 ys!77))) (level!50 (right!709 (right!709 ys!77)))) 1))))

(declare-fun b!26478 () Bool)

(declare-fun res!12099 () Bool)

(assert (=> b!26478 (=> (not res!12099) (not e!13573))))

(assert (=> b!26478 (= res!12099 (balanced!57 (left!706 (right!709 ys!77))))))

(declare-fun b!26476 () Bool)

(declare-fun e!13572 () Bool)

(assert (=> b!26476 (= e!13572 e!13573)))

(declare-fun res!12097 () Bool)

(assert (=> b!26476 (=> (not res!12097) (not e!13573))))

(assert (=> b!26476 (= res!12097 (>= (- (level!50 (left!706 (right!709 ys!77))) (level!50 (right!709 (right!709 ys!77)))) (- 1)))))

(declare-fun d!14125 () Bool)

(declare-fun res!12096 () Bool)

(assert (=> d!14125 (=> res!12096 e!13572)))

(assert (=> d!14125 (= res!12096 (not (is-CC!61 (right!709 ys!77))))))

(assert (=> d!14125 (= (balanced!57 (right!709 ys!77)) e!13572)))

(assert (= (and d!14125 (not res!12096)) b!26476))

(assert (= (and b!26476 res!12097) b!26477))

(assert (= (and b!26477 res!12098) b!26478))

(assert (= (and b!26478 res!12099) b!26479))

(declare-fun m!27425 () Bool)

(assert (=> b!26479 m!27425))

(declare-fun m!27427 () Bool)

(assert (=> b!26477 m!27427))

(declare-fun m!27429 () Bool)

(assert (=> b!26477 m!27429))

(declare-fun m!27431 () Bool)

(assert (=> b!26478 m!27431))

(assert (=> b!26476 m!27427))

(assert (=> b!26476 m!27429))

(assert (=> b!26397 d!14125))

(declare-fun b!26481 () Bool)

(declare-fun e!13574 () Int)

(declare-fun lt!4265 () Int)

(declare-fun lt!4264 () Int)

(assert (=> b!26481 (= e!13574 (+ 1 (ite (>= lt!4265 lt!4264) lt!4265 lt!4264)))))

(assert (=> b!26481 (= lt!4264 (level!50 (right!709 lt!4238)))))

(assert (=> b!26481 (= lt!4265 (level!50 (left!706 lt!4238)))))

(declare-fun d!14127 () Bool)

(declare-fun lt!4263 () Int)

(assert (=> d!14127 (>= lt!4263 0)))

(assert (=> d!14127 (= lt!4263 e!13574)))

(declare-fun c!5836 () Bool)

(assert (=> d!14127 (= c!5836 (or (is-Empty!72 lt!4238) (is-Single!61 lt!4238)))))

(assert (=> d!14127 (= (level!50 lt!4238) lt!4263)))

(declare-fun b!26480 () Bool)

(assert (=> b!26480 (= e!13574 0)))

(assert (= (and d!14127 c!5836) b!26480))

(assert (= (and d!14127 (not c!5836)) b!26481))

(declare-fun m!27433 () Bool)

(assert (=> b!26481 m!27433))

(declare-fun m!27435 () Bool)

(assert (=> b!26481 m!27435))

(assert (=> b!26378 d!14127))

(declare-fun b!26485 () Bool)

(declare-fun e!13576 () Bool)

(assert (=> b!26485 (= e!13576 (balanced!57 (right!709 (left!706 xs!533))))))

(declare-fun b!26483 () Bool)

(declare-fun res!12102 () Bool)

(assert (=> b!26483 (=> (not res!12102) (not e!13576))))

(assert (=> b!26483 (= res!12102 (<= (- (level!50 (left!706 (left!706 xs!533))) (level!50 (right!709 (left!706 xs!533)))) 1))))

(declare-fun b!26484 () Bool)

(declare-fun res!12103 () Bool)

(assert (=> b!26484 (=> (not res!12103) (not e!13576))))

(assert (=> b!26484 (= res!12103 (balanced!57 (left!706 (left!706 xs!533))))))

(declare-fun b!26482 () Bool)

(declare-fun e!13575 () Bool)

(assert (=> b!26482 (= e!13575 e!13576)))

(declare-fun res!12101 () Bool)

(assert (=> b!26482 (=> (not res!12101) (not e!13576))))

(assert (=> b!26482 (= res!12101 (>= (- (level!50 (left!706 (left!706 xs!533))) (level!50 (right!709 (left!706 xs!533)))) (- 1)))))

(declare-fun d!14129 () Bool)

(declare-fun res!12100 () Bool)

(assert (=> d!14129 (=> res!12100 e!13575)))

(assert (=> d!14129 (= res!12100 (not (is-CC!61 (left!706 xs!533))))))

(assert (=> d!14129 (= (balanced!57 (left!706 xs!533)) e!13575)))

(assert (= (and d!14129 (not res!12100)) b!26482))

(assert (= (and b!26482 res!12101) b!26483))

(assert (= (and b!26483 res!12102) b!26484))

(assert (= (and b!26484 res!12103) b!26485))

(declare-fun m!27437 () Bool)

(assert (=> b!26485 m!27437))

(assert (=> b!26483 m!27231))

(assert (=> b!26483 m!27229))

(declare-fun m!27439 () Bool)

(assert (=> b!26484 m!27439))

(assert (=> b!26482 m!27231))

(assert (=> b!26482 m!27229))

(assert (=> b!26307 d!14129))

(declare-fun b!26489 () Bool)

(declare-fun e!13578 () Bool)

(assert (=> b!26489 (= e!13578 (balanced!57 (right!709 (right!709 xs!533))))))

(declare-fun b!26487 () Bool)

(declare-fun res!12106 () Bool)

(assert (=> b!26487 (=> (not res!12106) (not e!13578))))

(assert (=> b!26487 (= res!12106 (<= (- (level!50 (left!706 (right!709 xs!533))) (level!50 (right!709 (right!709 xs!533)))) 1))))

(declare-fun b!26488 () Bool)

(declare-fun res!12107 () Bool)

(assert (=> b!26488 (=> (not res!12107) (not e!13578))))

(assert (=> b!26488 (= res!12107 (balanced!57 (left!706 (right!709 xs!533))))))

(declare-fun b!26486 () Bool)

(declare-fun e!13577 () Bool)

(assert (=> b!26486 (= e!13577 e!13578)))

(declare-fun res!12105 () Bool)

(assert (=> b!26486 (=> (not res!12105) (not e!13578))))

(assert (=> b!26486 (= res!12105 (>= (- (level!50 (left!706 (right!709 xs!533))) (level!50 (right!709 (right!709 xs!533)))) (- 1)))))

(declare-fun d!14131 () Bool)

(declare-fun res!12104 () Bool)

(assert (=> d!14131 (=> res!12104 e!13577)))

(assert (=> d!14131 (= res!12104 (not (is-CC!61 (right!709 xs!533))))))

(assert (=> d!14131 (= (balanced!57 (right!709 xs!533)) e!13577)))

(assert (= (and d!14131 (not res!12104)) b!26486))

(assert (= (and b!26486 res!12105) b!26487))

(assert (= (and b!26487 res!12106) b!26488))

(assert (= (and b!26488 res!12107) b!26489))

(declare-fun m!27441 () Bool)

(assert (=> b!26489 m!27441))

(assert (=> b!26487 m!27235))

(assert (=> b!26487 m!27233))

(declare-fun m!27443 () Bool)

(assert (=> b!26488 m!27443))

(assert (=> b!26486 m!27235))

(assert (=> b!26486 m!27233))

(assert (=> b!26375 d!14131))

(assert (=> b!26382 d!14085))

(declare-fun d!14133 () Bool)

(assert (=> d!14133 (= (isEmpty!318 (left!706 res!5528)) (= (left!706 res!5528) Empty!72))))

(assert (=> b!26390 d!14133))

(declare-fun b!26491 () Bool)

(declare-fun e!13579 () Int)

(declare-fun lt!4268 () Int)

(declare-fun lt!4267 () Int)

(assert (=> b!26491 (= e!13579 (+ 1 (ite (>= lt!4268 lt!4267) lt!4268 lt!4267)))))

(assert (=> b!26491 (= lt!4267 (level!50 (right!709 (ite lt!4231 (right!709 (right!709 xs!533)) (left!706 ys!77)))))))

(assert (=> b!26491 (= lt!4268 (level!50 (left!706 (ite lt!4231 (right!709 (right!709 xs!533)) (left!706 ys!77)))))))

(declare-fun d!14135 () Bool)

(declare-fun lt!4266 () Int)

(assert (=> d!14135 (>= lt!4266 0)))

(assert (=> d!14135 (= lt!4266 e!13579)))

(declare-fun c!5837 () Bool)

(assert (=> d!14135 (= c!5837 (or (is-Empty!72 (ite lt!4231 (right!709 (right!709 xs!533)) (left!706 ys!77))) (is-Single!61 (ite lt!4231 (right!709 (right!709 xs!533)) (left!706 ys!77)))))))

(assert (=> d!14135 (= (level!50 (ite lt!4231 (right!709 (right!709 xs!533)) (left!706 ys!77))) lt!4266)))

(declare-fun b!26490 () Bool)

(assert (=> b!26490 (= e!13579 0)))

(assert (= (and d!14135 c!5837) b!26490))

(assert (= (and d!14135 (not c!5837)) b!26491))

(declare-fun m!27445 () Bool)

(assert (=> b!26491 m!27445))

(declare-fun m!27447 () Bool)

(assert (=> b!26491 m!27447))

(assert (=> b!26370 d!14135))

(declare-fun b!26493 () Bool)

(declare-fun e!13580 () Int)

(declare-fun lt!4271 () Int)

(declare-fun lt!4270 () Int)

(assert (=> b!26493 (= e!13580 (+ 1 (ite (>= lt!4271 lt!4270) lt!4271 lt!4270)))))

(assert (=> b!26493 (= lt!4270 (level!50 (right!709 (ite lt!4231 (left!706 (right!709 xs!533)) (right!709 ys!77)))))))

(assert (=> b!26493 (= lt!4271 (level!50 (left!706 (ite lt!4231 (left!706 (right!709 xs!533)) (right!709 ys!77)))))))

(declare-fun d!14137 () Bool)

(declare-fun lt!4269 () Int)

(assert (=> d!14137 (>= lt!4269 0)))

(assert (=> d!14137 (= lt!4269 e!13580)))

(declare-fun c!5838 () Bool)

(assert (=> d!14137 (= c!5838 (or (is-Empty!72 (ite lt!4231 (left!706 (right!709 xs!533)) (right!709 ys!77))) (is-Single!61 (ite lt!4231 (left!706 (right!709 xs!533)) (right!709 ys!77)))))))

(assert (=> d!14137 (= (level!50 (ite lt!4231 (left!706 (right!709 xs!533)) (right!709 ys!77))) lt!4269)))

(declare-fun b!26492 () Bool)

(assert (=> b!26492 (= e!13580 0)))

(assert (= (and d!14137 c!5838) b!26492))

(assert (= (and d!14137 (not c!5838)) b!26493))

(declare-fun m!27449 () Bool)

(assert (=> b!26493 m!27449))

(declare-fun m!27451 () Bool)

(assert (=> b!26493 m!27451))

(assert (=> b!26370 d!14137))

(declare-fun d!14139 () Bool)

(assert (=> d!14139 (= (isEmpty!318 (right!709 xs!533)) (= (right!709 xs!533) Empty!72))))

(assert (=> b!26368 d!14139))

(declare-fun b!26494 () Bool)

(declare-fun e!13581 () Bool)

(assert (=> b!26494 (= e!13581 (= (++!39 (++!39 (toList!114 xs!533) (toList!114 (left!706 ys!77))) (toList!114 (right!709 ys!77))) (++!39 (toList!114 xs!533) (++!39 (toList!114 (left!706 ys!77)) (toList!114 (right!709 ys!77))))))))

(declare-fun lt!4272 () Bool)

(assert (=> b!26494 (= lt!4272 (appendAssoc!7 (t!4373 (toList!114 xs!533)) (toList!114 (left!706 ys!77)) (toList!114 (right!709 ys!77))))))

(declare-fun d!14141 () Bool)

(assert (=> d!14141 e!13581))

(declare-fun c!5839 () Bool)

(assert (=> d!14141 (= c!5839 (is-Cons!353 (toList!114 xs!533)))))

(assert (=> d!14141 (= (appendAssoc!7 (toList!114 xs!533) (toList!114 (left!706 ys!77)) (toList!114 (right!709 ys!77))) true)))

(declare-fun b!26495 () Bool)

(assert (=> b!26495 (= e!13581 (= (++!39 (++!39 (toList!114 xs!533) (toList!114 (left!706 ys!77))) (toList!114 (right!709 ys!77))) (++!39 (toList!114 xs!533) (++!39 (toList!114 (left!706 ys!77)) (toList!114 (right!709 ys!77))))))))

(assert (= (and d!14141 c!5839) b!26494))

(assert (= (and d!14141 (not c!5839)) b!26495))

(assert (=> b!26494 m!27239))

(assert (=> b!26494 m!27241))

(declare-fun m!27453 () Bool)

(assert (=> b!26494 m!27453))

(assert (=> b!26494 m!27237))

(declare-fun m!27455 () Bool)

(assert (=> b!26494 m!27455))

(declare-fun m!27457 () Bool)

(assert (=> b!26494 m!27457))

(assert (=> b!26494 m!27237))

(assert (=> b!26494 m!27239))

(declare-fun m!27459 () Bool)

(assert (=> b!26494 m!27459))

(assert (=> b!26494 m!27459))

(assert (=> b!26494 m!27241))

(declare-fun m!27461 () Bool)

(assert (=> b!26494 m!27461))

(assert (=> b!26494 m!27239))

(assert (=> b!26494 m!27241))

(assert (=> b!26494 m!27455))

(assert (=> b!26495 m!27237))

(assert (=> b!26495 m!27239))

(assert (=> b!26495 m!27459))

(assert (=> b!26495 m!27459))

(assert (=> b!26495 m!27241))

(assert (=> b!26495 m!27461))

(assert (=> b!26495 m!27239))

(assert (=> b!26495 m!27241))

(assert (=> b!26495 m!27455))

(assert (=> b!26495 m!27237))

(assert (=> b!26495 m!27455))

(assert (=> b!26495 m!27457))

(assert (=> b!26291 d!14141))

(assert (=> b!26291 d!14109))

(declare-fun b!26498 () Bool)

(declare-fun e!13582 () List!359)

(assert (=> b!26498 (= e!13582 (Cons!353 (x!8917 (left!706 ys!77)) Nil!354))))

(declare-fun b!26497 () Bool)

(declare-fun e!13583 () List!359)

(assert (=> b!26497 (= e!13583 e!13582)))

(declare-fun c!5841 () Bool)

(assert (=> b!26497 (= c!5841 (is-Single!61 (left!706 ys!77)))))

(declare-fun b!26496 () Bool)

(assert (=> b!26496 (= e!13583 Nil!354)))

(declare-fun b!26499 () Bool)

(assert (=> b!26499 (= e!13582 (++!39 (toList!114 (left!706 (left!706 ys!77))) (toList!114 (right!709 (left!706 ys!77)))))))

(declare-fun d!14143 () Bool)

(declare-fun lt!4273 () List!359)

(assert (=> d!14143 (= (size!267 lt!4273) (size!268 (left!706 ys!77)))))

(assert (=> d!14143 (= lt!4273 e!13583)))

(declare-fun c!5840 () Bool)

(assert (=> d!14143 (= c!5840 (is-Empty!72 (left!706 ys!77)))))

(assert (=> d!14143 (= (toList!114 (left!706 ys!77)) lt!4273)))

(assert (= (and b!26497 c!5841) b!26498))

(assert (= (and b!26497 (not c!5841)) b!26499))

(assert (= (and d!14143 c!5840) b!26496))

(assert (= (and d!14143 (not c!5840)) b!26497))

(assert (=> b!26499 m!27251))

(assert (=> b!26499 m!27247))

(assert (=> b!26499 m!27251))

(assert (=> b!26499 m!27247))

(declare-fun m!27463 () Bool)

(assert (=> b!26499 m!27463))

(declare-fun m!27465 () Bool)

(assert (=> d!14143 m!27465))

(declare-fun m!27467 () Bool)

(assert (=> d!14143 m!27467))

(assert (=> b!26291 d!14143))

(assert (=> b!26291 d!14105))

(declare-fun b!26503 () Bool)

(declare-fun e!13585 () Bool)

(assert (=> b!26503 (= e!13585 (balanced!57 (right!709 (right!709 res!5528))))))

(declare-fun b!26501 () Bool)

(declare-fun res!12110 () Bool)

(assert (=> b!26501 (=> (not res!12110) (not e!13585))))

(assert (=> b!26501 (= res!12110 (<= (- (level!50 (left!706 (right!709 res!5528))) (level!50 (right!709 (right!709 res!5528)))) 1))))

(declare-fun b!26502 () Bool)

(declare-fun res!12111 () Bool)

(assert (=> b!26502 (=> (not res!12111) (not e!13585))))

(assert (=> b!26502 (= res!12111 (balanced!57 (left!706 (right!709 res!5528))))))

(declare-fun b!26500 () Bool)

(declare-fun e!13584 () Bool)

(assert (=> b!26500 (= e!13584 e!13585)))

(declare-fun res!12109 () Bool)

(assert (=> b!26500 (=> (not res!12109) (not e!13585))))

(assert (=> b!26500 (= res!12109 (>= (- (level!50 (left!706 (right!709 res!5528))) (level!50 (right!709 (right!709 res!5528)))) (- 1)))))

(declare-fun d!14145 () Bool)

(declare-fun res!12108 () Bool)

(assert (=> d!14145 (=> res!12108 e!13584)))

(assert (=> d!14145 (= res!12108 (not (is-CC!61 (right!709 res!5528))))))

(assert (=> d!14145 (= (balanced!57 (right!709 res!5528)) e!13584)))

(assert (= (and d!14145 (not res!12108)) b!26500))

(assert (= (and b!26500 res!12109) b!26501))

(assert (= (and b!26501 res!12110) b!26502))

(assert (= (and b!26502 res!12111) b!26503))

(declare-fun m!27469 () Bool)

(assert (=> b!26503 m!27469))

(declare-fun m!27471 () Bool)

(assert (=> b!26501 m!27471))

(declare-fun m!27473 () Bool)

(assert (=> b!26501 m!27473))

(declare-fun m!27475 () Bool)

(assert (=> b!26502 m!27475))

(assert (=> b!26500 m!27471))

(assert (=> b!26500 m!27473))

(assert (=> b!26401 d!14145))

(assert (=> d!14077 d!14109))

(declare-fun b!26506 () Bool)

(declare-fun e!13586 () List!359)

(assert (=> b!26506 (= e!13586 (Cons!353 (x!8917 res!5528) Nil!354))))

(declare-fun b!26505 () Bool)

(declare-fun e!13587 () List!359)

(assert (=> b!26505 (= e!13587 e!13586)))

(declare-fun c!5843 () Bool)

(assert (=> b!26505 (= c!5843 (is-Single!61 res!5528))))

(declare-fun b!26504 () Bool)

(assert (=> b!26504 (= e!13587 Nil!354)))

(declare-fun b!26507 () Bool)

(assert (=> b!26507 (= e!13586 (++!39 (toList!114 (left!706 res!5528)) (toList!114 (right!709 res!5528))))))

(declare-fun d!14147 () Bool)

(declare-fun lt!4274 () List!359)

(assert (=> d!14147 (= (size!267 lt!4274) (size!268 res!5528))))

(assert (=> d!14147 (= lt!4274 e!13587)))

(declare-fun c!5842 () Bool)

(assert (=> d!14147 (= c!5842 (is-Empty!72 res!5528))))

(assert (=> d!14147 (= (toList!114 res!5528) lt!4274)))

(assert (= (and b!26505 c!5843) b!26506))

(assert (= (and b!26505 (not c!5843)) b!26507))

(assert (= (and d!14147 c!5842) b!26504))

(assert (= (and d!14147 (not c!5842)) b!26505))

(declare-fun m!27477 () Bool)

(assert (=> b!26507 m!27477))

(declare-fun m!27479 () Bool)

(assert (=> b!26507 m!27479))

(assert (=> b!26507 m!27477))

(assert (=> b!26507 m!27479))

(declare-fun m!27481 () Bool)

(assert (=> b!26507 m!27481))

(declare-fun m!27483 () Bool)

(assert (=> d!14147 m!27483))

(declare-fun m!27485 () Bool)

(assert (=> d!14147 m!27485))

(assert (=> d!14077 d!14147))

(declare-fun b!26509 () Bool)

(declare-fun e!13589 () List!359)

(assert (=> b!26509 (= e!13589 (Cons!353 (h!270 (toList!114 xs!533)) (++!39 (t!4373 (toList!114 xs!533)) (toList!114 ys!77))))))

(declare-fun d!14149 () Bool)

(declare-fun e!13588 () Bool)

(assert (=> d!14149 e!13588))

(declare-fun res!12112 () Bool)

(assert (=> d!14149 (=> (not res!12112) (not e!13588))))

(declare-fun lt!4275 () List!359)

(assert (=> d!14149 (= res!12112 (= (content!69 lt!4275) (union (content!69 (toList!114 xs!533)) (content!69 (toList!114 ys!77)))))))

(assert (=> d!14149 (= lt!4275 e!13589)))

(declare-fun c!5844 () Bool)

(assert (=> d!14149 (= c!5844 (is-Nil!354 (toList!114 xs!533)))))

(assert (=> d!14149 (= (++!39 (toList!114 xs!533) (toList!114 ys!77)) lt!4275)))

(declare-fun b!26511 () Bool)

(assert (=> b!26511 (= e!13588 (or (not (= (toList!114 ys!77) Nil!354)) (= lt!4275 (toList!114 xs!533))))))

(declare-fun b!26508 () Bool)

(assert (=> b!26508 (= e!13589 (toList!114 ys!77))))

(declare-fun b!26510 () Bool)

(declare-fun res!12113 () Bool)

(assert (=> b!26510 (=> (not res!12113) (not e!13588))))

(assert (=> b!26510 (= res!12113 (= (size!267 lt!4275) (+ (size!267 (toList!114 xs!533)) (size!267 (toList!114 ys!77)))))))

(assert (= (and d!14149 c!5844) b!26508))

(assert (= (and d!14149 (not c!5844)) b!26509))

(assert (= (and d!14149 res!12112) b!26510))

(assert (= (and b!26510 res!12113) b!26511))

(assert (=> b!26509 m!27253))

(declare-fun m!27487 () Bool)

(assert (=> b!26509 m!27487))

(declare-fun m!27489 () Bool)

(assert (=> d!14149 m!27489))

(assert (=> d!14149 m!27237))

(assert (=> d!14149 m!27381))

(assert (=> d!14149 m!27253))

(declare-fun m!27491 () Bool)

(assert (=> d!14149 m!27491))

(declare-fun m!27493 () Bool)

(assert (=> b!26510 m!27493))

(assert (=> b!26510 m!27237))

(assert (=> b!26510 m!27387))

(assert (=> b!26510 m!27253))

(declare-fun m!27495 () Bool)

(assert (=> b!26510 m!27495))

(assert (=> d!14077 d!14149))

(declare-fun b!26514 () Bool)

(declare-fun e!13590 () List!359)

(assert (=> b!26514 (= e!13590 (Cons!353 (x!8917 ys!77) Nil!354))))

(declare-fun b!26513 () Bool)

(declare-fun e!13591 () List!359)

(assert (=> b!26513 (= e!13591 e!13590)))

(declare-fun c!5846 () Bool)

(assert (=> b!26513 (= c!5846 (is-Single!61 ys!77))))

(declare-fun b!26512 () Bool)

(assert (=> b!26512 (= e!13591 Nil!354)))

(declare-fun b!26515 () Bool)

(assert (=> b!26515 (= e!13590 (++!39 (toList!114 (left!706 ys!77)) (toList!114 (right!709 ys!77))))))

(declare-fun d!14151 () Bool)

(declare-fun lt!4276 () List!359)

(assert (=> d!14151 (= (size!267 lt!4276) (size!268 ys!77))))

(assert (=> d!14151 (= lt!4276 e!13591)))

(declare-fun c!5845 () Bool)

(assert (=> d!14151 (= c!5845 (is-Empty!72 ys!77))))

(assert (=> d!14151 (= (toList!114 ys!77) lt!4276)))

(assert (= (and b!26513 c!5846) b!26514))

(assert (= (and b!26513 (not c!5846)) b!26515))

(assert (= (and d!14151 c!5845) b!26512))

(assert (= (and d!14151 (not c!5845)) b!26513))

(assert (=> b!26515 m!27239))

(assert (=> b!26515 m!27241))

(assert (=> b!26515 m!27239))

(assert (=> b!26515 m!27241))

(assert (=> b!26515 m!27455))

(declare-fun m!27497 () Bool)

(assert (=> d!14151 m!27497))

(declare-fun m!27499 () Bool)

(assert (=> d!14151 m!27499))

(assert (=> d!14077 d!14151))

(declare-fun b!26517 () Bool)

(declare-fun e!13592 () Int)

(declare-fun lt!4279 () Int)

(declare-fun lt!4278 () Int)

(assert (=> b!26517 (= e!13592 (+ 1 (ite (>= lt!4279 lt!4278) lt!4279 lt!4278)))))

(assert (=> b!26517 (= lt!4278 (level!50 (right!709 (right!709 (right!709 xs!533)))))))

(assert (=> b!26517 (= lt!4279 (level!50 (left!706 (right!709 (right!709 xs!533)))))))

(declare-fun d!14153 () Bool)

(declare-fun lt!4277 () Int)

(assert (=> d!14153 (>= lt!4277 0)))

(assert (=> d!14153 (= lt!4277 e!13592)))

(declare-fun c!5847 () Bool)

(assert (=> d!14153 (= c!5847 (or (is-Empty!72 (right!709 (right!709 xs!533))) (is-Single!61 (right!709 (right!709 xs!533)))))))

(assert (=> d!14153 (= (level!50 (right!709 (right!709 xs!533))) lt!4277)))

(declare-fun b!26516 () Bool)

(assert (=> b!26516 (= e!13592 0)))

(assert (= (and d!14153 c!5847) b!26516))

(assert (= (and d!14153 (not c!5847)) b!26517))

(declare-fun m!27501 () Bool)

(assert (=> b!26517 m!27501))

(declare-fun m!27503 () Bool)

(assert (=> b!26517 m!27503))

(assert (=> b!26269 d!14153))

(declare-fun b!26519 () Bool)

(declare-fun e!13593 () Int)

(declare-fun lt!4282 () Int)

(declare-fun lt!4281 () Int)

(assert (=> b!26519 (= e!13593 (+ 1 (ite (>= lt!4282 lt!4281) lt!4282 lt!4281)))))

(assert (=> b!26519 (= lt!4281 (level!50 (right!709 (left!706 (right!709 xs!533)))))))

(assert (=> b!26519 (= lt!4282 (level!50 (left!706 (left!706 (right!709 xs!533)))))))

(declare-fun d!14155 () Bool)

(declare-fun lt!4280 () Int)

(assert (=> d!14155 (>= lt!4280 0)))

(assert (=> d!14155 (= lt!4280 e!13593)))

(declare-fun c!5848 () Bool)

(assert (=> d!14155 (= c!5848 (or (is-Empty!72 (left!706 (right!709 xs!533))) (is-Single!61 (left!706 (right!709 xs!533)))))))

(assert (=> d!14155 (= (level!50 (left!706 (right!709 xs!533))) lt!4280)))

(declare-fun b!26518 () Bool)

(assert (=> b!26518 (= e!13593 0)))

(assert (= (and d!14155 c!5848) b!26518))

(assert (= (and d!14155 (not c!5848)) b!26519))

(declare-fun m!27505 () Bool)

(assert (=> b!26519 m!27505))

(declare-fun m!27507 () Bool)

(assert (=> b!26519 m!27507))

(assert (=> b!26269 d!14155))

(declare-fun b!26523 () Bool)

(declare-fun e!13595 () Bool)

(assert (=> b!26523 (= e!13595 (balanced!57 (right!709 (left!706 ys!77))))))

(declare-fun b!26521 () Bool)

(declare-fun res!12116 () Bool)

(assert (=> b!26521 (=> (not res!12116) (not e!13595))))

(assert (=> b!26521 (= res!12116 (<= (- (level!50 (left!706 (left!706 ys!77))) (level!50 (right!709 (left!706 ys!77)))) 1))))

(declare-fun b!26522 () Bool)

(declare-fun res!12117 () Bool)

(assert (=> b!26522 (=> (not res!12117) (not e!13595))))

(assert (=> b!26522 (= res!12117 (balanced!57 (left!706 (left!706 ys!77))))))

(declare-fun b!26520 () Bool)

(declare-fun e!13594 () Bool)

(assert (=> b!26520 (= e!13594 e!13595)))

(declare-fun res!12115 () Bool)

(assert (=> b!26520 (=> (not res!12115) (not e!13595))))

(assert (=> b!26520 (= res!12115 (>= (- (level!50 (left!706 (left!706 ys!77))) (level!50 (right!709 (left!706 ys!77)))) (- 1)))))

(declare-fun d!14157 () Bool)

(declare-fun res!12114 () Bool)

(assert (=> d!14157 (=> res!12114 e!13594)))

(assert (=> d!14157 (= res!12114 (not (is-CC!61 (left!706 ys!77))))))

(assert (=> d!14157 (= (balanced!57 (left!706 ys!77)) e!13594)))

(assert (= (and d!14157 (not res!12114)) b!26520))

(assert (= (and b!26520 res!12115) b!26521))

(assert (= (and b!26521 res!12116) b!26522))

(assert (= (and b!26522 res!12117) b!26523))

(declare-fun m!27509 () Bool)

(assert (=> b!26523 m!27509))

(declare-fun m!27511 () Bool)

(assert (=> b!26521 m!27511))

(declare-fun m!27513 () Bool)

(assert (=> b!26521 m!27513))

(declare-fun m!27515 () Bool)

(assert (=> b!26522 m!27515))

(assert (=> b!26520 m!27511))

(assert (=> b!26520 m!27513))

(assert (=> b!26396 d!14157))

(declare-fun b!26524 () Bool)

(declare-fun e!13596 () Bool)

(assert (=> b!26524 (= e!13596 (= (++!39 (++!39 (toList!114 xs!533) (toList!114 (left!706 (left!706 ys!77)))) (toList!114 (right!709 (left!706 ys!77)))) (++!39 (toList!114 xs!533) (++!39 (toList!114 (left!706 (left!706 ys!77))) (toList!114 (right!709 (left!706 ys!77)))))))))

(declare-fun lt!4283 () Bool)

(assert (=> b!26524 (= lt!4283 (appendAssoc!7 (t!4373 (toList!114 xs!533)) (toList!114 (left!706 (left!706 ys!77))) (toList!114 (right!709 (left!706 ys!77)))))))

(declare-fun d!14159 () Bool)

(assert (=> d!14159 e!13596))

(declare-fun c!5849 () Bool)

(assert (=> d!14159 (= c!5849 (is-Cons!353 (toList!114 xs!533)))))

(assert (=> d!14159 (= (appendAssoc!7 (toList!114 xs!533) (toList!114 (left!706 (left!706 ys!77))) (toList!114 (right!709 (left!706 ys!77)))) true)))

(declare-fun b!26525 () Bool)

(assert (=> b!26525 (= e!13596 (= (++!39 (++!39 (toList!114 xs!533) (toList!114 (left!706 (left!706 ys!77)))) (toList!114 (right!709 (left!706 ys!77)))) (++!39 (toList!114 xs!533) (++!39 (toList!114 (left!706 (left!706 ys!77))) (toList!114 (right!709 (left!706 ys!77)))))))))

(assert (= (and d!14159 c!5849) b!26524))

(assert (= (and d!14159 (not c!5849)) b!26525))

(assert (=> b!26524 m!27251))

(assert (=> b!26524 m!27247))

(declare-fun m!27517 () Bool)

(assert (=> b!26524 m!27517))

(assert (=> b!26524 m!27237))

(assert (=> b!26524 m!27463))

(declare-fun m!27519 () Bool)

(assert (=> b!26524 m!27519))

(assert (=> b!26524 m!27237))

(assert (=> b!26524 m!27251))

(assert (=> b!26524 m!27245))

(assert (=> b!26524 m!27245))

(assert (=> b!26524 m!27247))

(assert (=> b!26524 m!27397))

(assert (=> b!26524 m!27251))

(assert (=> b!26524 m!27247))

(assert (=> b!26524 m!27463))

(assert (=> b!26525 m!27237))

(assert (=> b!26525 m!27251))

(assert (=> b!26525 m!27245))

(assert (=> b!26525 m!27245))

(assert (=> b!26525 m!27247))

(assert (=> b!26525 m!27397))

(assert (=> b!26525 m!27251))

(assert (=> b!26525 m!27247))

(assert (=> b!26525 m!27463))

(assert (=> b!26525 m!27237))

(assert (=> b!26525 m!27463))

(assert (=> b!26525 m!27519))

(assert (=> b!26296 d!14159))

(assert (=> b!26296 d!14109))

(assert (=> b!26296 d!14103))

(assert (=> b!26296 d!14107))

(declare-fun b!26526 () Bool)

(declare-fun e!13597 () Bool)

(assert (=> b!26526 (= e!13597 (= (++!39 (++!39 (toList!114 (left!706 xs!533)) (toList!114 (right!709 xs!533))) (toList!114 ys!77)) (++!39 (toList!114 (left!706 xs!533)) (++!39 (toList!114 (right!709 xs!533)) (toList!114 ys!77)))))))

(declare-fun lt!4284 () Bool)

(assert (=> b!26526 (= lt!4284 (appendAssoc!7 (t!4373 (toList!114 (left!706 xs!533))) (toList!114 (right!709 xs!533)) (toList!114 ys!77)))))

(declare-fun d!14161 () Bool)

(assert (=> d!14161 e!13597))

(declare-fun c!5850 () Bool)

(assert (=> d!14161 (= c!5850 (is-Cons!353 (toList!114 (left!706 xs!533))))))

(assert (=> d!14161 (= (appendAssoc!7 (toList!114 (left!706 xs!533)) (toList!114 (right!709 xs!533)) (toList!114 ys!77)) true)))

(declare-fun b!26527 () Bool)

(assert (=> b!26527 (= e!13597 (= (++!39 (++!39 (toList!114 (left!706 xs!533)) (toList!114 (right!709 xs!533))) (toList!114 ys!77)) (++!39 (toList!114 (left!706 xs!533)) (++!39 (toList!114 (right!709 xs!533)) (toList!114 ys!77)))))))

(assert (= (and d!14161 c!5850) b!26526))

(assert (= (and d!14161 (not c!5850)) b!26527))

(assert (=> b!26526 m!27269))

(assert (=> b!26526 m!27253))

(declare-fun m!27521 () Bool)

(assert (=> b!26526 m!27521))

(assert (=> b!26526 m!27261))

(assert (=> b!26526 m!27405))

(declare-fun m!27523 () Bool)

(assert (=> b!26526 m!27523))

(assert (=> b!26526 m!27261))

(assert (=> b!26526 m!27269))

(assert (=> b!26526 m!27371))

(assert (=> b!26526 m!27371))

(assert (=> b!26526 m!27253))

(declare-fun m!27525 () Bool)

(assert (=> b!26526 m!27525))

(assert (=> b!26526 m!27269))

(assert (=> b!26526 m!27253))

(assert (=> b!26526 m!27405))

(assert (=> b!26527 m!27261))

(assert (=> b!26527 m!27269))

(assert (=> b!26527 m!27371))

(assert (=> b!26527 m!27371))

(assert (=> b!26527 m!27253))

(assert (=> b!26527 m!27525))

(assert (=> b!26527 m!27269))

(assert (=> b!26527 m!27253))

(assert (=> b!26527 m!27405))

(assert (=> b!26527 m!27261))

(assert (=> b!26527 m!27405))

(assert (=> b!26527 m!27523))

(assert (=> b!26295 d!14161))

(declare-fun b!26530 () Bool)

(declare-fun e!13598 () List!359)

(assert (=> b!26530 (= e!13598 (Cons!353 (x!8917 (left!706 xs!533)) Nil!354))))

(declare-fun b!26529 () Bool)

(declare-fun e!13599 () List!359)

(assert (=> b!26529 (= e!13599 e!13598)))

(declare-fun c!5852 () Bool)

(assert (=> b!26529 (= c!5852 (is-Single!61 (left!706 xs!533)))))

(declare-fun b!26528 () Bool)

(assert (=> b!26528 (= e!13599 Nil!354)))

(declare-fun b!26531 () Bool)

(assert (=> b!26531 (= e!13598 (++!39 (toList!114 (left!706 (left!706 xs!533))) (toList!114 (right!709 (left!706 xs!533)))))))

(declare-fun d!14163 () Bool)

(declare-fun lt!4285 () List!359)

(assert (=> d!14163 (= (size!267 lt!4285) (size!268 (left!706 xs!533)))))

(assert (=> d!14163 (= lt!4285 e!13599)))

(declare-fun c!5851 () Bool)

(assert (=> d!14163 (= c!5851 (is-Empty!72 (left!706 xs!533)))))

(assert (=> d!14163 (= (toList!114 (left!706 xs!533)) lt!4285)))

(assert (= (and b!26529 c!5852) b!26530))

(assert (= (and b!26529 (not c!5852)) b!26531))

(assert (= (and d!14163 c!5851) b!26528))

(assert (= (and d!14163 (not c!5851)) b!26529))

(declare-fun m!27527 () Bool)

(assert (=> b!26531 m!27527))

(declare-fun m!27529 () Bool)

(assert (=> b!26531 m!27529))

(assert (=> b!26531 m!27527))

(assert (=> b!26531 m!27529))

(declare-fun m!27531 () Bool)

(assert (=> b!26531 m!27531))

(declare-fun m!27533 () Bool)

(assert (=> d!14163 m!27533))

(declare-fun m!27535 () Bool)

(assert (=> d!14163 m!27535))

(assert (=> b!26295 d!14163))

(declare-fun b!26534 () Bool)

(declare-fun e!13600 () List!359)

(assert (=> b!26534 (= e!13600 (Cons!353 (x!8917 (right!709 xs!533)) Nil!354))))

(declare-fun b!26533 () Bool)

(declare-fun e!13601 () List!359)

(assert (=> b!26533 (= e!13601 e!13600)))

(declare-fun c!5854 () Bool)

(assert (=> b!26533 (= c!5854 (is-Single!61 (right!709 xs!533)))))

(declare-fun b!26532 () Bool)

(assert (=> b!26532 (= e!13601 Nil!354)))

(declare-fun b!26535 () Bool)

(assert (=> b!26535 (= e!13600 (++!39 (toList!114 (left!706 (right!709 xs!533))) (toList!114 (right!709 (right!709 xs!533)))))))

(declare-fun d!14165 () Bool)

(declare-fun lt!4286 () List!359)

(assert (=> d!14165 (= (size!267 lt!4286) (size!268 (right!709 xs!533)))))

(assert (=> d!14165 (= lt!4286 e!13601)))

(declare-fun c!5853 () Bool)

(assert (=> d!14165 (= c!5853 (is-Empty!72 (right!709 xs!533)))))

(assert (=> d!14165 (= (toList!114 (right!709 xs!533)) lt!4286)))

(assert (= (and b!26533 c!5854) b!26534))

(assert (= (and b!26533 (not c!5854)) b!26535))

(assert (= (and d!14165 c!5853) b!26532))

(assert (= (and d!14165 (not c!5853)) b!26533))

(assert (=> b!26535 m!27259))

(assert (=> b!26535 m!27255))

(assert (=> b!26535 m!27259))

(assert (=> b!26535 m!27255))

(declare-fun m!27537 () Bool)

(assert (=> b!26535 m!27537))

(declare-fun m!27539 () Bool)

(assert (=> d!14165 m!27539))

(declare-fun m!27541 () Bool)

(assert (=> d!14165 m!27541))

(assert (=> b!26295 d!14165))

(assert (=> b!26295 d!14151))

(assert (=> b!26385 d!14087))

(assert (=> b!26385 d!14073))

(declare-fun b!26537 () Bool)

(declare-fun e!13602 () Int)

(declare-fun lt!4289 () Int)

(declare-fun lt!4288 () Int)

(assert (=> b!26537 (= e!13602 (+ 1 (ite (>= lt!4289 lt!4288) lt!4289 lt!4288)))))

(assert (=> b!26537 (= lt!4288 (level!50 (right!709 lt!4234)))))

(assert (=> b!26537 (= lt!4289 (level!50 (left!706 lt!4234)))))

(declare-fun d!14167 () Bool)

(declare-fun lt!4287 () Int)

(assert (=> d!14167 (>= lt!4287 0)))

(assert (=> d!14167 (= lt!4287 e!13602)))

(declare-fun c!5855 () Bool)

(assert (=> d!14167 (= c!5855 (or (is-Empty!72 lt!4234) (is-Single!61 lt!4234)))))

(assert (=> d!14167 (= (level!50 lt!4234) lt!4287)))

(declare-fun b!26536 () Bool)

(assert (=> b!26536 (= e!13602 0)))

(assert (= (and d!14167 c!5855) b!26536))

(assert (= (and d!14167 (not c!5855)) b!26537))

(assert (=> b!26537 m!27413))

(assert (=> b!26537 m!27411))

(assert (=> b!26385 d!14167))

(assert (=> b!26305 d!14071))

(assert (=> b!26305 d!14073))

(assert (=> d!14091 d!14087))

(assert (=> d!14091 d!14073))

(declare-fun b!26538 () Bool)

(declare-fun e!13603 () Bool)

(declare-fun e!13604 () Bool)

(assert (=> b!26538 (= e!13603 e!13604)))

(declare-fun res!12120 () Bool)

(assert (=> b!26538 (=> (not res!12120) (not e!13604))))

(assert (=> b!26538 (= res!12120 (not (isEmpty!318 (left!706 (right!709 xs!533)))))))

(declare-fun b!26540 () Bool)

(declare-fun res!12121 () Bool)

(assert (=> b!26540 (=> (not res!12121) (not e!13604))))

(assert (=> b!26540 (= res!12121 (concInv!56 (left!706 (right!709 xs!533))))))

(declare-fun b!26539 () Bool)

(declare-fun res!12119 () Bool)

(assert (=> b!26539 (=> (not res!12119) (not e!13604))))

(assert (=> b!26539 (= res!12119 (not (isEmpty!318 (right!709 (right!709 xs!533)))))))

(declare-fun d!14169 () Bool)

(declare-fun res!12118 () Bool)

(assert (=> d!14169 (=> res!12118 e!13603)))

(assert (=> d!14169 (= res!12118 (not (is-CC!61 (right!709 xs!533))))))

(assert (=> d!14169 (= (concInv!56 (right!709 xs!533)) e!13603)))

(declare-fun b!26541 () Bool)

(assert (=> b!26541 (= e!13604 (concInv!56 (right!709 (right!709 xs!533))))))

(assert (= (and d!14169 (not res!12118)) b!26538))

(assert (= (and b!26538 res!12120) b!26539))

(assert (= (and b!26539 res!12119) b!26540))

(assert (= (and b!26540 res!12121) b!26541))

(declare-fun m!27543 () Bool)

(assert (=> b!26538 m!27543))

(declare-fun m!27545 () Bool)

(assert (=> b!26540 m!27545))

(declare-fun m!27547 () Bool)

(assert (=> b!26539 m!27547))

(declare-fun m!27549 () Bool)

(assert (=> b!26541 m!27549))

(assert (=> d!14091 d!14169))

(declare-fun b!26542 () Bool)

(declare-fun e!13605 () Bool)

(declare-fun e!13606 () Bool)

(assert (=> b!26542 (= e!13605 e!13606)))

(declare-fun res!12124 () Bool)

(assert (=> b!26542 (=> (not res!12124) (not e!13606))))

(assert (=> b!26542 (= res!12124 (not (isEmpty!318 (left!706 (left!706 ys!77)))))))

(declare-fun b!26544 () Bool)

(declare-fun res!12125 () Bool)

(assert (=> b!26544 (=> (not res!12125) (not e!13606))))

(assert (=> b!26544 (= res!12125 (concInv!56 (left!706 (left!706 ys!77))))))

(declare-fun b!26543 () Bool)

(declare-fun res!12123 () Bool)

(assert (=> b!26543 (=> (not res!12123) (not e!13606))))

(assert (=> b!26543 (= res!12123 (not (isEmpty!318 (right!709 (left!706 ys!77)))))))

(declare-fun d!14171 () Bool)

(declare-fun res!12122 () Bool)

(assert (=> d!14171 (=> res!12122 e!13605)))

(assert (=> d!14171 (= res!12122 (not (is-CC!61 (left!706 ys!77))))))

(assert (=> d!14171 (= (concInv!56 (left!706 ys!77)) e!13605)))

(declare-fun b!26545 () Bool)

(assert (=> b!26545 (= e!13606 (concInv!56 (right!709 (left!706 ys!77))))))

(assert (= (and d!14171 (not res!12122)) b!26542))

(assert (= (and b!26542 res!12124) b!26543))

(assert (= (and b!26543 res!12123) b!26544))

(assert (= (and b!26544 res!12125) b!26545))

(declare-fun m!27551 () Bool)

(assert (=> b!26542 m!27551))

(declare-fun m!27553 () Bool)

(assert (=> b!26544 m!27553))

(declare-fun m!27555 () Bool)

(assert (=> b!26543 m!27555))

(declare-fun m!27557 () Bool)

(assert (=> b!26545 m!27557))

(assert (=> b!26319 d!14171))

(declare-fun b!26547 () Bool)

(declare-fun e!13607 () Int)

(declare-fun lt!4292 () Int)

(declare-fun lt!4291 () Int)

(assert (=> b!26547 (= e!13607 (+ 1 (ite (>= lt!4292 lt!4291) lt!4292 lt!4291)))))

(assert (=> b!26547 (= lt!4291 (level!50 (right!709 (right!709 ys!77))))))

(assert (=> b!26547 (= lt!4292 (level!50 (left!706 (right!709 ys!77))))))

(declare-fun d!14173 () Bool)

(declare-fun lt!4290 () Int)

(assert (=> d!14173 (>= lt!4290 0)))

(assert (=> d!14173 (= lt!4290 e!13607)))

(declare-fun c!5856 () Bool)

(assert (=> d!14173 (= c!5856 (or (is-Empty!72 (right!709 ys!77)) (is-Single!61 (right!709 ys!77))))))

(assert (=> d!14173 (= (level!50 (right!709 ys!77)) lt!4290)))

(declare-fun b!26546 () Bool)

(assert (=> b!26546 (= e!13607 0)))

(assert (= (and d!14173 c!5856) b!26546))

(assert (= (and d!14173 (not c!5856)) b!26547))

(assert (=> b!26547 m!27429))

(assert (=> b!26547 m!27427))

(assert (=> b!26322 d!14173))

(declare-fun b!26549 () Bool)

(declare-fun e!13608 () Int)

(declare-fun lt!4295 () Int)

(declare-fun lt!4294 () Int)

(assert (=> b!26549 (= e!13608 (+ 1 (ite (>= lt!4295 lt!4294) lt!4295 lt!4294)))))

(assert (=> b!26549 (= lt!4294 (level!50 (right!709 (left!706 ys!77))))))

(assert (=> b!26549 (= lt!4295 (level!50 (left!706 (left!706 ys!77))))))

(declare-fun d!14175 () Bool)

(declare-fun lt!4293 () Int)

(assert (=> d!14175 (>= lt!4293 0)))

(assert (=> d!14175 (= lt!4293 e!13608)))

(declare-fun c!5857 () Bool)

(assert (=> d!14175 (= c!5857 (or (is-Empty!72 (left!706 ys!77)) (is-Single!61 (left!706 ys!77))))))

(assert (=> d!14175 (= (level!50 (left!706 ys!77)) lt!4293)))

(declare-fun b!26548 () Bool)

(assert (=> b!26548 (= e!13608 0)))

(assert (= (and d!14175 c!5857) b!26548))

(assert (= (and d!14175 (not c!5857)) b!26549))

(assert (=> b!26549 m!27513))

(assert (=> b!26549 m!27511))

(assert (=> b!26322 d!14175))

(assert (=> b!26394 d!14175))

(assert (=> b!26394 d!14173))

(declare-fun b!26551 () Bool)

(declare-fun e!13609 () Int)

(declare-fun lt!4298 () Int)

(declare-fun lt!4297 () Int)

(assert (=> b!26551 (= e!13609 (+ 1 (ite (>= lt!4298 lt!4297) lt!4298 lt!4297)))))

(assert (=> b!26551 (= lt!4297 (level!50 (right!709 (right!709 res!5528))))))

(assert (=> b!26551 (= lt!4298 (level!50 (left!706 (right!709 res!5528))))))

(declare-fun d!14177 () Bool)

(declare-fun lt!4296 () Int)

(assert (=> d!14177 (>= lt!4296 0)))

(assert (=> d!14177 (= lt!4296 e!13609)))

(declare-fun c!5858 () Bool)

(assert (=> d!14177 (= c!5858 (or (is-Empty!72 (right!709 res!5528)) (is-Single!61 (right!709 res!5528))))))

(assert (=> d!14177 (= (level!50 (right!709 res!5528)) lt!4296)))

(declare-fun b!26550 () Bool)

(assert (=> b!26550 (= e!13609 0)))

(assert (= (and d!14177 c!5858) b!26550))

(assert (= (and d!14177 (not c!5858)) b!26551))

(assert (=> b!26551 m!27473))

(assert (=> b!26551 m!27471))

(assert (=> b!26389 d!14177))

(declare-fun b!26553 () Bool)

(declare-fun e!13610 () Int)

(declare-fun lt!4301 () Int)

(declare-fun lt!4300 () Int)

(assert (=> b!26553 (= e!13610 (+ 1 (ite (>= lt!4301 lt!4300) lt!4301 lt!4300)))))

(assert (=> b!26553 (= lt!4300 (level!50 (right!709 (left!706 res!5528))))))

(assert (=> b!26553 (= lt!4301 (level!50 (left!706 (left!706 res!5528))))))

(declare-fun d!14179 () Bool)

(declare-fun lt!4299 () Int)

(assert (=> d!14179 (>= lt!4299 0)))

(assert (=> d!14179 (= lt!4299 e!13610)))

(declare-fun c!5859 () Bool)

(assert (=> d!14179 (= c!5859 (or (is-Empty!72 (left!706 res!5528)) (is-Single!61 (left!706 res!5528))))))

(assert (=> d!14179 (= (level!50 (left!706 res!5528)) lt!4299)))

(declare-fun b!26552 () Bool)

(assert (=> b!26552 (= e!13610 0)))

(assert (= (and d!14179 c!5859) b!26552))

(assert (= (and d!14179 (not c!5859)) b!26553))

(declare-fun m!27559 () Bool)

(assert (=> b!26553 m!27559))

(declare-fun m!27561 () Bool)

(assert (=> b!26553 m!27561))

(assert (=> b!26389 d!14179))

(assert (=> b!26405 d!14169))

(assert (=> b!26398 d!14179))

(assert (=> b!26398 d!14177))

(declare-fun b!26555 () Bool)

(declare-fun e!13611 () Int)

(declare-fun lt!4304 () Int)

(declare-fun lt!4303 () Int)

(assert (=> b!26555 (= e!13611 (+ 1 (ite (>= lt!4304 lt!4303) lt!4304 lt!4303)))))

(assert (=> b!26555 (= lt!4303 (level!50 (right!709 (right!709 (left!706 xs!533)))))))

(assert (=> b!26555 (= lt!4304 (level!50 (left!706 (right!709 (left!706 xs!533)))))))

(declare-fun d!14181 () Bool)

(declare-fun lt!4302 () Int)

(assert (=> d!14181 (>= lt!4302 0)))

(assert (=> d!14181 (= lt!4302 e!13611)))

(declare-fun c!5860 () Bool)

(assert (=> d!14181 (= c!5860 (or (is-Empty!72 (right!709 (left!706 xs!533))) (is-Single!61 (right!709 (left!706 xs!533)))))))

(assert (=> d!14181 (= (level!50 (right!709 (left!706 xs!533))) lt!4302)))

(declare-fun b!26554 () Bool)

(assert (=> b!26554 (= e!13611 0)))

(assert (= (and d!14181 c!5860) b!26554))

(assert (= (and d!14181 (not c!5860)) b!26555))

(declare-fun m!27563 () Bool)

(assert (=> b!26555 m!27563))

(declare-fun m!27565 () Bool)

(assert (=> b!26555 m!27565))

(assert (=> b!26267 d!14181))

(declare-fun b!26557 () Bool)

(declare-fun e!13612 () Int)

(declare-fun lt!4307 () Int)

(declare-fun lt!4306 () Int)

(assert (=> b!26557 (= e!13612 (+ 1 (ite (>= lt!4307 lt!4306) lt!4307 lt!4306)))))

(assert (=> b!26557 (= lt!4306 (level!50 (right!709 (left!706 (left!706 xs!533)))))))

(assert (=> b!26557 (= lt!4307 (level!50 (left!706 (left!706 (left!706 xs!533)))))))

(declare-fun d!14183 () Bool)

(declare-fun lt!4305 () Int)

(assert (=> d!14183 (>= lt!4305 0)))

(assert (=> d!14183 (= lt!4305 e!13612)))

(declare-fun c!5861 () Bool)

(assert (=> d!14183 (= c!5861 (or (is-Empty!72 (left!706 (left!706 xs!533))) (is-Single!61 (left!706 (left!706 xs!533)))))))

(assert (=> d!14183 (= (level!50 (left!706 (left!706 xs!533))) lt!4305)))

(declare-fun b!26556 () Bool)

(assert (=> b!26556 (= e!13612 0)))

(assert (= (and d!14183 c!5861) b!26556))

(assert (= (and d!14183 (not c!5861)) b!26557))

(declare-fun m!27567 () Bool)

(assert (=> b!26557 m!27567))

(declare-fun m!27569 () Bool)

(assert (=> b!26557 m!27569))

(assert (=> b!26267 d!14183))

(declare-fun b!26558 () Bool)

(declare-fun e!13613 () Bool)

(assert (=> b!26558 (= e!13613 (= (++!39 (++!39 (toList!114 (left!706 (right!709 xs!533))) (toList!114 (right!709 (right!709 xs!533)))) (toList!114 ys!77)) (++!39 (toList!114 (left!706 (right!709 xs!533))) (++!39 (toList!114 (right!709 (right!709 xs!533))) (toList!114 ys!77)))))))

(declare-fun lt!4308 () Bool)

(assert (=> b!26558 (= lt!4308 (appendAssoc!7 (t!4373 (toList!114 (left!706 (right!709 xs!533)))) (toList!114 (right!709 (right!709 xs!533))) (toList!114 ys!77)))))

(declare-fun d!14185 () Bool)

(assert (=> d!14185 e!13613))

(declare-fun c!5862 () Bool)

(assert (=> d!14185 (= c!5862 (is-Cons!353 (toList!114 (left!706 (right!709 xs!533)))))))

(assert (=> d!14185 (= (appendAssoc!7 (toList!114 (left!706 (right!709 xs!533))) (toList!114 (right!709 (right!709 xs!533))) (toList!114 ys!77)) true)))

(declare-fun b!26559 () Bool)

(assert (=> b!26559 (= e!13613 (= (++!39 (++!39 (toList!114 (left!706 (right!709 xs!533))) (toList!114 (right!709 (right!709 xs!533)))) (toList!114 ys!77)) (++!39 (toList!114 (left!706 (right!709 xs!533))) (++!39 (toList!114 (right!709 (right!709 xs!533))) (toList!114 ys!77)))))))

(assert (= (and d!14185 c!5862) b!26558))

(assert (= (and d!14185 (not c!5862)) b!26559))

(assert (=> b!26558 m!27255))

(assert (=> b!26558 m!27253))

(declare-fun m!27571 () Bool)

(assert (=> b!26558 m!27571))

(assert (=> b!26558 m!27259))

(assert (=> b!26558 m!27257))

(declare-fun m!27573 () Bool)

(assert (=> b!26558 m!27573))

(assert (=> b!26558 m!27259))

(assert (=> b!26558 m!27255))

(assert (=> b!26558 m!27537))

(assert (=> b!26558 m!27537))

(assert (=> b!26558 m!27253))

(declare-fun m!27575 () Bool)

(assert (=> b!26558 m!27575))

(assert (=> b!26558 m!27255))

(assert (=> b!26558 m!27253))

(assert (=> b!26558 m!27257))

(assert (=> b!26559 m!27259))

(assert (=> b!26559 m!27255))

(assert (=> b!26559 m!27537))

(assert (=> b!26559 m!27537))

(assert (=> b!26559 m!27253))

(assert (=> b!26559 m!27575))

(assert (=> b!26559 m!27255))

(assert (=> b!26559 m!27253))

(assert (=> b!26559 m!27257))

(assert (=> b!26559 m!27259))

(assert (=> b!26559 m!27257))

(assert (=> b!26559 m!27573))

(assert (=> b!26290 d!14185))

(declare-fun b!26562 () Bool)

(declare-fun e!13614 () List!359)

(assert (=> b!26562 (= e!13614 (Cons!353 (x!8917 (left!706 (right!709 xs!533))) Nil!354))))

(declare-fun b!26561 () Bool)

(declare-fun e!13615 () List!359)

(assert (=> b!26561 (= e!13615 e!13614)))

(declare-fun c!5864 () Bool)

(assert (=> b!26561 (= c!5864 (is-Single!61 (left!706 (right!709 xs!533))))))

(declare-fun b!26560 () Bool)

(assert (=> b!26560 (= e!13615 Nil!354)))

(declare-fun b!26563 () Bool)

(assert (=> b!26563 (= e!13614 (++!39 (toList!114 (left!706 (left!706 (right!709 xs!533)))) (toList!114 (right!709 (left!706 (right!709 xs!533))))))))

(declare-fun d!14187 () Bool)

(declare-fun lt!4309 () List!359)

(assert (=> d!14187 (= (size!267 lt!4309) (size!268 (left!706 (right!709 xs!533))))))

(assert (=> d!14187 (= lt!4309 e!13615)))

(declare-fun c!5863 () Bool)

(assert (=> d!14187 (= c!5863 (is-Empty!72 (left!706 (right!709 xs!533))))))

(assert (=> d!14187 (= (toList!114 (left!706 (right!709 xs!533))) lt!4309)))

(assert (= (and b!26561 c!5864) b!26562))

(assert (= (and b!26561 (not c!5864)) b!26563))

(assert (= (and d!14187 c!5863) b!26560))

(assert (= (and d!14187 (not c!5863)) b!26561))

(declare-fun m!27577 () Bool)

(assert (=> b!26563 m!27577))

(declare-fun m!27579 () Bool)

(assert (=> b!26563 m!27579))

(assert (=> b!26563 m!27577))

(assert (=> b!26563 m!27579))

(declare-fun m!27581 () Bool)

(assert (=> b!26563 m!27581))

(declare-fun m!27583 () Bool)

(assert (=> d!14187 m!27583))

(declare-fun m!27585 () Bool)

(assert (=> d!14187 m!27585))

(assert (=> b!26290 d!14187))

(declare-fun b!26566 () Bool)

(declare-fun e!13616 () List!359)

(assert (=> b!26566 (= e!13616 (Cons!353 (x!8917 (right!709 (right!709 xs!533))) Nil!354))))

(declare-fun b!26565 () Bool)

(declare-fun e!13617 () List!359)

(assert (=> b!26565 (= e!13617 e!13616)))

(declare-fun c!5866 () Bool)

(assert (=> b!26565 (= c!5866 (is-Single!61 (right!709 (right!709 xs!533))))))

(declare-fun b!26564 () Bool)

(assert (=> b!26564 (= e!13617 Nil!354)))

(declare-fun b!26567 () Bool)

(assert (=> b!26567 (= e!13616 (++!39 (toList!114 (left!706 (right!709 (right!709 xs!533)))) (toList!114 (right!709 (right!709 (right!709 xs!533))))))))

(declare-fun d!14189 () Bool)

(declare-fun lt!4310 () List!359)

(assert (=> d!14189 (= (size!267 lt!4310) (size!268 (right!709 (right!709 xs!533))))))

(assert (=> d!14189 (= lt!4310 e!13617)))

(declare-fun c!5865 () Bool)

(assert (=> d!14189 (= c!5865 (is-Empty!72 (right!709 (right!709 xs!533))))))

(assert (=> d!14189 (= (toList!114 (right!709 (right!709 xs!533))) lt!4310)))

(assert (= (and b!26565 c!5866) b!26566))

(assert (= (and b!26565 (not c!5866)) b!26567))

(assert (= (and d!14189 c!5865) b!26564))

(assert (= (and d!14189 (not c!5865)) b!26565))

(declare-fun m!27587 () Bool)

(assert (=> b!26567 m!27587))

(declare-fun m!27589 () Bool)

(assert (=> b!26567 m!27589))

(assert (=> b!26567 m!27587))

(assert (=> b!26567 m!27589))

(declare-fun m!27591 () Bool)

(assert (=> b!26567 m!27591))

(declare-fun m!27593 () Bool)

(assert (=> d!14189 m!27593))

(declare-fun m!27595 () Bool)

(assert (=> d!14189 m!27595))

(assert (=> b!26290 d!14189))

(assert (=> b!26290 d!14151))

(assert (=> b!26306 d!14071))

(assert (=> b!26306 d!14073))

(assert (=> b!26371 d!14087))

(assert (=> b!26371 d!14073))

(assert (=> b!26371 d!14167))

(assert (=> b!26289 d!14151))

(assert (=> b!26289 d!14189))

(assert (=> b!26289 d!14187))

(declare-fun b!26569 () Bool)

(declare-fun e!13619 () List!359)

(assert (=> b!26569 (= e!13619 (Cons!353 (h!270 (toList!114 (right!709 (right!709 xs!533)))) (++!39 (t!4373 (toList!114 (right!709 (right!709 xs!533)))) (toList!114 ys!77))))))

(declare-fun d!14191 () Bool)

(declare-fun e!13618 () Bool)

(assert (=> d!14191 e!13618))

(declare-fun res!12126 () Bool)

(assert (=> d!14191 (=> (not res!12126) (not e!13618))))

(declare-fun lt!4311 () List!359)

(assert (=> d!14191 (= res!12126 (= (content!69 lt!4311) (union (content!69 (toList!114 (right!709 (right!709 xs!533)))) (content!69 (toList!114 ys!77)))))))

(assert (=> d!14191 (= lt!4311 e!13619)))

(declare-fun c!5867 () Bool)

(assert (=> d!14191 (= c!5867 (is-Nil!354 (toList!114 (right!709 (right!709 xs!533)))))))

(assert (=> d!14191 (= (++!39 (toList!114 (right!709 (right!709 xs!533))) (toList!114 ys!77)) lt!4311)))

(declare-fun b!26571 () Bool)

(assert (=> b!26571 (= e!13618 (or (not (= (toList!114 ys!77) Nil!354)) (= lt!4311 (toList!114 (right!709 (right!709 xs!533))))))))

(declare-fun b!26568 () Bool)

(assert (=> b!26568 (= e!13619 (toList!114 ys!77))))

(declare-fun b!26570 () Bool)

(declare-fun res!12127 () Bool)

(assert (=> b!26570 (=> (not res!12127) (not e!13618))))

(assert (=> b!26570 (= res!12127 (= (size!267 lt!4311) (+ (size!267 (toList!114 (right!709 (right!709 xs!533)))) (size!267 (toList!114 ys!77)))))))

(assert (= (and d!14191 c!5867) b!26568))

(assert (= (and d!14191 (not c!5867)) b!26569))

(assert (= (and d!14191 res!12126) b!26570))

(assert (= (and b!26570 res!12127) b!26571))

(assert (=> b!26569 m!27253))

(declare-fun m!27597 () Bool)

(assert (=> b!26569 m!27597))

(declare-fun m!27599 () Bool)

(assert (=> d!14191 m!27599))

(assert (=> d!14191 m!27255))

(declare-fun m!27601 () Bool)

(assert (=> d!14191 m!27601))

(assert (=> d!14191 m!27253))

(assert (=> d!14191 m!27491))

(declare-fun m!27603 () Bool)

(assert (=> b!26570 m!27603))

(assert (=> b!26570 m!27255))

(declare-fun m!27605 () Bool)

(assert (=> b!26570 m!27605))

(assert (=> b!26570 m!27253))

(assert (=> b!26570 m!27495))

(assert (=> b!26289 d!14191))

(declare-fun b!26572 () Bool)

(declare-fun e!13620 () Bool)

(assert (=> b!26572 (= e!13620 (= (++!39 (++!39 (toList!114 (left!706 xs!533)) (toList!114 (left!706 (right!709 xs!533)))) (++!39 (toList!114 (right!709 (right!709 xs!533))) (toList!114 ys!77))) (++!39 (toList!114 (left!706 xs!533)) (++!39 (toList!114 (left!706 (right!709 xs!533))) (++!39 (toList!114 (right!709 (right!709 xs!533))) (toList!114 ys!77))))))))

(declare-fun lt!4312 () Bool)

(assert (=> b!26572 (= lt!4312 (appendAssoc!7 (t!4373 (toList!114 (left!706 xs!533))) (toList!114 (left!706 (right!709 xs!533))) (++!39 (toList!114 (right!709 (right!709 xs!533))) (toList!114 ys!77))))))

(declare-fun d!14193 () Bool)

(assert (=> d!14193 e!13620))

(declare-fun c!5868 () Bool)

(assert (=> d!14193 (= c!5868 (is-Cons!353 (toList!114 (left!706 xs!533))))))

(assert (=> d!14193 (= (appendAssoc!7 (toList!114 (left!706 xs!533)) (toList!114 (left!706 (right!709 xs!533))) (++!39 (toList!114 (right!709 (right!709 xs!533))) (toList!114 ys!77))) true)))

(declare-fun b!26573 () Bool)

(assert (=> b!26573 (= e!13620 (= (++!39 (++!39 (toList!114 (left!706 xs!533)) (toList!114 (left!706 (right!709 xs!533)))) (++!39 (toList!114 (right!709 (right!709 xs!533))) (toList!114 ys!77))) (++!39 (toList!114 (left!706 xs!533)) (++!39 (toList!114 (left!706 (right!709 xs!533))) (++!39 (toList!114 (right!709 (right!709 xs!533))) (toList!114 ys!77))))))))

(assert (= (and d!14193 c!5868) b!26572))

(assert (= (and d!14193 (not c!5868)) b!26573))

(assert (=> b!26572 m!27259))

(assert (=> b!26572 m!27257))

(declare-fun m!27607 () Bool)

(assert (=> b!26572 m!27607))

(assert (=> b!26572 m!27261))

(assert (=> b!26572 m!27573))

(declare-fun m!27609 () Bool)

(assert (=> b!26572 m!27609))

(assert (=> b!26572 m!27261))

(assert (=> b!26572 m!27259))

(declare-fun m!27611 () Bool)

(assert (=> b!26572 m!27611))

(assert (=> b!26572 m!27611))

(assert (=> b!26572 m!27257))

(declare-fun m!27613 () Bool)

(assert (=> b!26572 m!27613))

(assert (=> b!26572 m!27259))

(assert (=> b!26572 m!27257))

(assert (=> b!26572 m!27573))

(assert (=> b!26573 m!27261))

(assert (=> b!26573 m!27259))

(assert (=> b!26573 m!27611))

(assert (=> b!26573 m!27611))

(assert (=> b!26573 m!27257))

(assert (=> b!26573 m!27613))

(assert (=> b!26573 m!27259))

(assert (=> b!26573 m!27257))

(assert (=> b!26573 m!27573))

(assert (=> b!26573 m!27261))

(assert (=> b!26573 m!27573))

(assert (=> b!26573 m!27609))

(assert (=> b!26289 d!14193))

(assert (=> b!26289 d!14163))

(declare-fun d!14195 () Bool)

(assert (=> d!14195 (= (isEmpty!318 (left!706 xs!533)) (= (left!706 xs!533) Empty!72))))

(assert (=> b!26402 d!14195))

(assert (=> b!26399 d!14179))

(assert (=> b!26399 d!14177))

(declare-fun b!26574 () Bool)

(declare-fun e!13621 () Bool)

(declare-fun e!13622 () Bool)

(assert (=> b!26574 (= e!13621 e!13622)))

(declare-fun res!12130 () Bool)

(assert (=> b!26574 (=> (not res!12130) (not e!13622))))

(assert (=> b!26574 (= res!12130 (not (isEmpty!318 (left!706 (left!706 xs!533)))))))

(declare-fun b!26576 () Bool)

(declare-fun res!12131 () Bool)

(assert (=> b!26576 (=> (not res!12131) (not e!13622))))

(assert (=> b!26576 (= res!12131 (concInv!56 (left!706 (left!706 xs!533))))))

(declare-fun b!26575 () Bool)

(declare-fun res!12129 () Bool)

(assert (=> b!26575 (=> (not res!12129) (not e!13622))))

(assert (=> b!26575 (= res!12129 (not (isEmpty!318 (right!709 (left!706 xs!533)))))))

(declare-fun d!14197 () Bool)

(declare-fun res!12128 () Bool)

(assert (=> d!14197 (=> res!12128 e!13621)))

(assert (=> d!14197 (= res!12128 (not (is-CC!61 (left!706 xs!533))))))

(assert (=> d!14197 (= (concInv!56 (left!706 xs!533)) e!13621)))

(declare-fun b!26577 () Bool)

(assert (=> b!26577 (= e!13622 (concInv!56 (right!709 (left!706 xs!533))))))

(assert (= (and d!14197 (not res!12128)) b!26574))

(assert (= (and b!26574 res!12130) b!26575))

(assert (= (and b!26575 res!12129) b!26576))

(assert (= (and b!26576 res!12131) b!26577))

(declare-fun m!27615 () Bool)

(assert (=> b!26574 m!27615))

(declare-fun m!27617 () Bool)

(assert (=> b!26576 m!27617))

(declare-fun m!27619 () Bool)

(assert (=> b!26575 m!27619))

(declare-fun m!27621 () Bool)

(assert (=> b!26577 m!27621))

(assert (=> b!26404 d!14197))

(declare-fun d!14199 () Bool)

(assert (=> d!14199 (= (isEmpty!318 (right!709 res!5528)) (= (right!709 res!5528) Empty!72))))

(assert (=> b!26391 d!14199))

(assert (=> b!26324 d!14073))

(assert (=> b!26324 d!14071))

(declare-fun b!26578 () Bool)

(declare-fun e!13623 () Bool)

(declare-fun e!13624 () Bool)

(assert (=> b!26578 (= e!13623 e!13624)))

(declare-fun res!12134 () Bool)

(assert (=> b!26578 (=> (not res!12134) (not e!13624))))

(assert (=> b!26578 (= res!12134 (not (isEmpty!318 (left!706 (right!709 ys!77)))))))

(declare-fun b!26580 () Bool)

(declare-fun res!12135 () Bool)

(assert (=> b!26580 (=> (not res!12135) (not e!13624))))

(assert (=> b!26580 (= res!12135 (concInv!56 (left!706 (right!709 ys!77))))))

(declare-fun b!26579 () Bool)

(declare-fun res!12133 () Bool)

(assert (=> b!26579 (=> (not res!12133) (not e!13624))))

(assert (=> b!26579 (= res!12133 (not (isEmpty!318 (right!709 (right!709 ys!77)))))))

(declare-fun d!14201 () Bool)

(declare-fun res!12132 () Bool)

(assert (=> d!14201 (=> res!12132 e!13623)))

(assert (=> d!14201 (= res!12132 (not (is-CC!61 (right!709 ys!77))))))

(assert (=> d!14201 (= (concInv!56 (right!709 ys!77)) e!13623)))

(declare-fun b!26581 () Bool)

(assert (=> b!26581 (= e!13624 (concInv!56 (right!709 (right!709 ys!77))))))

(assert (= (and d!14201 (not res!12132)) b!26578))

(assert (= (and b!26578 res!12134) b!26579))

(assert (= (and b!26579 res!12133) b!26580))

(assert (= (and b!26580 res!12135) b!26581))

(declare-fun m!27623 () Bool)

(assert (=> b!26578 m!27623))

(declare-fun m!27625 () Bool)

(assert (=> b!26580 m!27625))

(declare-fun m!27627 () Bool)

(assert (=> b!26579 m!27627))

(declare-fun m!27629 () Bool)

(assert (=> b!26581 m!27629))

(assert (=> b!26320 d!14201))

(declare-fun b!26582 () Bool)

(declare-fun e!13625 () Bool)

(declare-fun e!13626 () Bool)

(assert (=> b!26582 (= e!13625 e!13626)))

(declare-fun res!12138 () Bool)

(assert (=> b!26582 (=> (not res!12138) (not e!13626))))

(assert (=> b!26582 (= res!12138 (not (isEmpty!318 (left!706 (right!709 res!5528)))))))

(declare-fun b!26584 () Bool)

(declare-fun res!12139 () Bool)

(assert (=> b!26584 (=> (not res!12139) (not e!13626))))

(assert (=> b!26584 (= res!12139 (concInv!56 (left!706 (right!709 res!5528))))))

(declare-fun b!26583 () Bool)

(declare-fun res!12137 () Bool)

(assert (=> b!26583 (=> (not res!12137) (not e!13626))))

(assert (=> b!26583 (= res!12137 (not (isEmpty!318 (right!709 (right!709 res!5528)))))))

(declare-fun d!14203 () Bool)

(declare-fun res!12136 () Bool)

(assert (=> d!14203 (=> res!12136 e!13625)))

(assert (=> d!14203 (= res!12136 (not (is-CC!61 (right!709 res!5528))))))

(assert (=> d!14203 (= (concInv!56 (right!709 res!5528)) e!13625)))

(declare-fun b!26585 () Bool)

(assert (=> b!26585 (= e!13626 (concInv!56 (right!709 (right!709 res!5528))))))

(assert (= (and d!14203 (not res!12136)) b!26582))

(assert (= (and b!26582 res!12138) b!26583))

(assert (= (and b!26583 res!12137) b!26584))

(assert (= (and b!26584 res!12139) b!26585))

(declare-fun m!27631 () Bool)

(assert (=> b!26582 m!27631))

(declare-fun m!27633 () Bool)

(assert (=> b!26584 m!27633))

(declare-fun m!27635 () Bool)

(assert (=> b!26583 m!27635))

(declare-fun m!27637 () Bool)

(assert (=> b!26585 m!27637))

(assert (=> b!26393 d!14203))

(assert (=> b!26395 d!14175))

(assert (=> b!26395 d!14173))

(assert (=> b!26308 d!14131))

(declare-fun d!14205 () Bool)

(assert (=> d!14205 (= (isEmpty!318 (left!706 ys!77)) (= (left!706 ys!77) Empty!72))))

(assert (=> b!26317 d!14205))

(declare-fun b!26586 () Bool)

(declare-fun res!12142 () Bool)

(declare-fun e!13632 () Bool)

(assert (=> b!26586 (=> (not res!12142) (not e!13632))))

(assert (=> b!26586 (= res!12142 (appendAssocInst!11 (ite lt!4232 (ite (>= lt!4241 lt!4237) (right!709 (right!709 xs!533)) (right!709 (right!709 (right!709 xs!533)))) (right!709 xs!533)) (ite lt!4232 ys!77 (ite (>= lt!4241 lt!4237) (left!706 ys!77) (left!706 (left!706 ys!77))))))))

(declare-fun b!26587 () Bool)

(declare-fun res!12141 () Bool)

(declare-fun e!13633 () Bool)

(assert (=> b!26587 (=> (not res!12141) (not e!13633))))

(assert (=> b!26587 (= res!12141 (not (isEmpty!318 (ite lt!4232 (ite (>= lt!4241 lt!4237) (right!709 (right!709 xs!533)) (right!709 (right!709 (right!709 xs!533)))) (right!709 xs!533)))))))

(declare-fun b!26588 () Bool)

(declare-fun e!13628 () Int)

(declare-fun res!12145 () Int)

(assert (=> b!26588 (= e!13628 res!12145)))

(assert (=> b!26588 true))

(declare-fun lt!4313 () Int)

(declare-fun lt!4325 () Int)

(declare-fun lt!4315 () Bool)

(declare-fun lt!4321 () Int)

(declare-fun lt!4322 () Conc!62)

(declare-fun lt!4326 () Int)

(declare-fun b!26589 () Bool)

(declare-fun e!13634 () Conc!62)

(assert (=> b!26589 (= e!13634 (ite lt!4315 (let ((res!11999 lt!4322)) (ite (>= lt!4325 lt!4321) (CC!61 (left!706 (ite lt!4232 (ite (>= lt!4241 lt!4237) (right!709 (right!709 xs!533)) (right!709 (right!709 (right!709 xs!533)))) (right!709 xs!533))) res!11999) (ite (= lt!4326 (- lt!4313 3)) (CC!61 (left!706 (ite lt!4232 (ite (>= lt!4241 lt!4237) (right!709 (right!709 xs!533)) (right!709 (right!709 (right!709 xs!533)))) (right!709 xs!533))) (CC!61 (left!706 (right!709 (ite lt!4232 (ite (>= lt!4241 lt!4237) (right!709 (right!709 xs!533)) (right!709 (right!709 (right!709 xs!533)))) (right!709 xs!533)))) res!11999)) (CC!61 (CC!61 (left!706 (ite lt!4232 (ite (>= lt!4241 lt!4237) (right!709 (right!709 xs!533)) (right!709 (right!709 (right!709 xs!533)))) (right!709 xs!533))) (left!706 (right!709 (ite lt!4232 (ite (>= lt!4241 lt!4237) (right!709 (right!709 xs!533)) (right!709 (right!709 (right!709 xs!533)))) (right!709 xs!533))))) res!11999)))) (let ((res!12002 lt!4322)) (ite (>= lt!4325 lt!4321) (CC!61 res!12002 (right!709 (ite lt!4232 ys!77 (ite (>= lt!4241 lt!4237) (left!706 ys!77) (left!706 (left!706 ys!77)))))) (ite (= lt!4326 (- lt!4313 3)) (CC!61 (CC!61 res!12002 (right!709 (left!706 (ite lt!4232 ys!77 (ite (>= lt!4241 lt!4237) (left!706 ys!77) (left!706 (left!706 ys!77))))))) (right!709 (ite lt!4232 ys!77 (ite (>= lt!4241 lt!4237) (left!706 ys!77) (left!706 (left!706 ys!77)))))) (CC!61 res!12002 (CC!61 (right!709 (left!706 (ite lt!4232 ys!77 (ite (>= lt!4241 lt!4237) (left!706 ys!77) (left!706 (left!706 ys!77)))))) (right!709 (ite lt!4232 ys!77 (ite (>= lt!4241 lt!4237) (left!706 ys!77) (left!706 (left!706 ys!77))))))))))))))

(declare-fun e!13627 () Int)

(assert (=> b!26589 (= lt!4313 e!13627)))

(declare-fun lt!4324 () Bool)

(declare-fun c!5870 () Bool)

(assert (=> b!26589 (= c!5870 (or lt!4324 (and (not lt!4315) (not (>= lt!4325 lt!4321)))))))

(assert (=> b!26589 (= lt!4324 (and lt!4315 (not (>= lt!4325 lt!4321))))))

(assert (=> b!26589 (= lt!4326 e!13628)))

(declare-fun c!5871 () Bool)

(assert (=> b!26589 (= c!5871 (or (and lt!4315 (not (>= lt!4325 lt!4321))) (and (not lt!4315) (not (>= lt!4325 lt!4321)))))))

(declare-fun e!13630 () Conc!62)

(assert (=> b!26589 (= lt!4322 e!13630)))

(declare-fun c!5869 () Bool)

(declare-fun lt!4316 () Bool)

(assert (=> b!26589 (= c!5869 (or lt!4316 (not lt!4315)))))

(assert (=> b!26589 (= lt!4316 lt!4315)))

(assert (=> b!26589 (= lt!4321 (level!50 (ite lt!4315 (right!709 (ite lt!4232 (ite (>= lt!4241 lt!4237) (right!709 (right!709 xs!533)) (right!709 (right!709 (right!709 xs!533)))) (right!709 xs!533))) (left!706 (ite lt!4232 ys!77 (ite (>= lt!4241 lt!4237) (left!706 ys!77) (left!706 (left!706 ys!77))))))))))

(assert (=> b!26589 (= lt!4325 (level!50 (ite lt!4315 (left!706 (ite lt!4232 (ite (>= lt!4241 lt!4237) (right!709 (right!709 xs!533)) (right!709 (right!709 (right!709 xs!533)))) (right!709 xs!533))) (right!709 (ite lt!4232 ys!77 (ite (>= lt!4241 lt!4237) (left!706 ys!77) (left!706 (left!706 ys!77))))))))))

(declare-fun lt!4319 () Int)

(assert (=> b!26589 (= lt!4315 (< lt!4319 (- 1)))))

(declare-fun b!26590 () Bool)

(declare-fun e!13631 () Bool)

(assert (=> b!26590 (= e!13631 e!13632)))

(declare-fun res!12151 () Bool)

(assert (=> b!26590 (=> (not res!12151) (not e!13632))))

(declare-fun lt!4328 () Int)

(declare-fun lt!4317 () Int)

(declare-fun lt!4323 () Int)

(assert (=> b!26590 (= res!12151 (<= lt!4323 (+ (ite (>= lt!4317 lt!4328) lt!4317 lt!4328) 1)))))

(assert (=> b!26590 (= lt!4328 (level!50 (ite lt!4232 ys!77 (ite (>= lt!4241 lt!4237) (left!706 ys!77) (left!706 (left!706 ys!77))))))))

(assert (=> b!26590 (= lt!4317 (level!50 (ite lt!4232 (ite (>= lt!4241 lt!4237) (right!709 (right!709 xs!533)) (right!709 (right!709 (right!709 xs!533)))) (right!709 xs!533))))))

(declare-fun lt!4318 () Conc!62)

(assert (=> b!26590 (= lt!4323 (level!50 lt!4318))))

(declare-fun b!26591 () Bool)

(declare-fun res!12148 () Bool)

(assert (=> b!26591 (=> (not res!12148) (not e!13633))))

(assert (=> b!26591 (= res!12148 (concInv!56 (ite lt!4232 ys!77 (ite (>= lt!4241 lt!4237) (left!706 ys!77) (left!706 (left!706 ys!77))))))))

(declare-fun b!26592 () Bool)

(assert (=> b!26592 (= e!13632 (concatCorrectness!11 lt!4318 (ite lt!4232 (ite (>= lt!4241 lt!4237) (right!709 (right!709 xs!533)) (right!709 (right!709 (right!709 xs!533)))) (right!709 xs!533)) (ite lt!4232 ys!77 (ite (>= lt!4241 lt!4237) (left!706 ys!77) (left!706 (left!706 ys!77))))))))

(declare-fun b!26593 () Bool)

(assert (=> b!26593 (= e!13627 (level!50 (ite lt!4324 (ite lt!4232 (ite (>= lt!4241 lt!4237) (right!709 (right!709 xs!533)) (right!709 (right!709 (right!709 xs!533)))) (right!709 xs!533)) (ite lt!4232 ys!77 (ite (>= lt!4241 lt!4237) (left!706 ys!77) (left!706 (left!706 ys!77)))))))))

(declare-fun e!13629 () Bool)

(declare-fun b!26594 () Bool)

(assert (=> b!26594 (= e!13629 (balanced!57 (ite lt!4232 (ite (>= lt!4241 lt!4237) (right!709 (right!709 xs!533)) (right!709 (right!709 (right!709 xs!533)))) (right!709 xs!533))))))

(declare-fun d!14207 () Bool)

(assert (=> d!14207 e!13631))

(declare-fun res!12143 () Bool)

(assert (=> d!14207 (=> (not res!12143) (not e!13631))))

(assert (=> d!14207 (= res!12143 (is-CC!61 lt!4318))))

(assert (=> d!14207 (= lt!4318 e!13634)))

(declare-fun c!5872 () Bool)

(assert (=> d!14207 (= c!5872 (and (>= lt!4319 (- 1)) (<= lt!4319 1)))))

(assert (=> d!14207 (= lt!4319 (- (level!50 (ite lt!4232 ys!77 (ite (>= lt!4241 lt!4237) (left!706 ys!77) (left!706 (left!706 ys!77))))) (level!50 (ite lt!4232 (ite (>= lt!4241 lt!4237) (right!709 (right!709 xs!533)) (right!709 (right!709 (right!709 xs!533)))) (right!709 xs!533)))))))

(assert (=> d!14207 e!13633))

(declare-fun res!12152 () Bool)

(assert (=> d!14207 (=> (not res!12152) (not e!13633))))

(assert (=> d!14207 (= res!12152 e!13629)))

(declare-fun res!12149 () Bool)

(assert (=> d!14207 (=> (not res!12149) (not e!13629))))

(assert (=> d!14207 (= res!12149 (concInv!56 (ite lt!4232 (ite (>= lt!4241 lt!4237) (right!709 (right!709 xs!533)) (right!709 (right!709 (right!709 xs!533)))) (right!709 xs!533))))))

(assert (=> d!14207 (= (concatNonEmpty!14 (ite lt!4232 (ite (>= lt!4241 lt!4237) (right!709 (right!709 xs!533)) (right!709 (right!709 (right!709 xs!533)))) (right!709 xs!533)) (ite lt!4232 ys!77 (ite (>= lt!4241 lt!4237) (left!706 ys!77) (left!706 (left!706 ys!77))))) lt!4318)))

(declare-fun b!26595 () Bool)

(declare-fun e!13635 () Bool)

(assert (=> b!26595 (= e!13635 tp_is_empty!169)))

(declare-fun b!26596 () Bool)

(declare-fun tp!5784 () Bool)

(declare-fun tp!5785 () Bool)

(assert (=> b!26596 (= e!13635 (and tp!5784 tp!5785))))

(declare-fun b!26597 () Bool)

(assert (=> b!26597 (= e!13628 (level!50 lt!4322))))

(declare-fun b!26598 () Bool)

(assert (=> b!26598 (= e!13634 (CC!61 (ite lt!4232 (ite (>= lt!4241 lt!4237) (right!709 (right!709 xs!533)) (right!709 (right!709 (right!709 xs!533)))) (right!709 xs!533)) (ite lt!4232 ys!77 (ite (>= lt!4241 lt!4237) (left!706 ys!77) (left!706 (left!706 ys!77))))))))

(declare-fun b!26599 () Bool)

(declare-fun res!12150 () Int)

(assert (=> b!26599 (= e!13627 res!12150)))

(assert (=> b!26599 true))

(assert (=> b!26599 true))

(declare-fun b!26600 () Bool)

(declare-fun res!12153 () Bool)

(assert (=> b!26600 (=> (not res!12153) (not e!13632))))

(assert (=> b!26600 (= res!12153 (concInv!56 lt!4318))))

(declare-fun b!26601 () Bool)

(assert (=> b!26601 (= e!13633 (not (isEmpty!318 (ite lt!4232 ys!77 (ite (>= lt!4241 lt!4237) (left!706 ys!77) (left!706 (left!706 ys!77)))))))))

(declare-fun b!26602 () Bool)

(assert (=> b!26602 (= e!13630 (concatNonEmpty!14 (ite lt!4316 (ite (>= lt!4325 lt!4321) (right!709 (ite lt!4232 (ite (>= lt!4241 lt!4237) (right!709 (right!709 xs!533)) (right!709 (right!709 (right!709 xs!533)))) (right!709 xs!533))) (right!709 (right!709 (ite lt!4232 (ite (>= lt!4241 lt!4237) (right!709 (right!709 xs!533)) (right!709 (right!709 (right!709 xs!533)))) (right!709 xs!533))))) (ite lt!4232 (ite (>= lt!4241 lt!4237) (right!709 (right!709 xs!533)) (right!709 (right!709 (right!709 xs!533)))) (right!709 xs!533))) (ite lt!4316 (ite lt!4232 ys!77 (ite (>= lt!4241 lt!4237) (left!706 ys!77) (left!706 (left!706 ys!77)))) (ite (>= lt!4325 lt!4321) (left!706 (ite lt!4232 ys!77 (ite (>= lt!4241 lt!4237) (left!706 ys!77) (left!706 (left!706 ys!77))))) (left!706 (left!706 (ite lt!4232 ys!77 (ite (>= lt!4241 lt!4237) (left!706 ys!77) (left!706 (left!706 ys!77))))))))))))

(declare-fun b!26603 () Bool)

(declare-fun res!12146 () Bool)

(assert (=> b!26603 (=> (not res!12146) (not e!13633))))

(assert (=> b!26603 (= res!12146 (balanced!57 (ite lt!4232 ys!77 (ite (>= lt!4241 lt!4237) (left!706 ys!77) (left!706 (left!706 ys!77))))))))

(declare-fun b!26604 () Bool)

(declare-fun res!12144 () Bool)

(assert (=> b!26604 (=> (not res!12144) (not e!13632))))

(declare-fun lt!4314 () Int)

(declare-fun lt!4320 () Int)

(declare-fun lt!4327 () Int)

(assert (=> b!26604 (= res!12144 (>= lt!4320 (ite (>= lt!4327 lt!4314) lt!4327 lt!4314)))))

(assert (=> b!26604 (= lt!4314 (level!50 (ite lt!4232 ys!77 (ite (>= lt!4241 lt!4237) (left!706 ys!77) (left!706 (left!706 ys!77))))))))

(assert (=> b!26604 (= lt!4327 (level!50 (ite lt!4232 (ite (>= lt!4241 lt!4237) (right!709 (right!709 xs!533)) (right!709 (right!709 (right!709 xs!533)))) (right!709 xs!533))))))

(assert (=> b!26604 (= lt!4320 (level!50 lt!4318))))

(declare-fun b!26605 () Bool)

(declare-fun res!12147 () Bool)

(assert (=> b!26605 (=> (not res!12147) (not e!13632))))

(assert (=> b!26605 (= res!12147 (balanced!57 lt!4318))))

(declare-fun b!26606 () Bool)

(declare-fun res!12140 () Conc!62)

(assert (=> b!26606 (= e!13630 res!12140)))

(assert (=> b!26606 true))

(assert (=> b!26606 e!13635))

(assert (= (and d!14207 res!12149) b!26594))

(assert (= (and d!14207 res!12152) b!26591))

(assert (= (and b!26591 res!12148) b!26603))

(assert (= (and b!26603 res!12146) b!26587))

(assert (= (and b!26587 res!12141) b!26601))

(assert (= (and b!26606 (is-CC!61 res!12140)) b!26596))

(assert (= (and b!26606 (is-Single!61 res!12140)) b!26595))

(assert (= (and b!26589 c!5869) b!26602))

(assert (= (and b!26589 (not c!5869)) b!26606))

(assert (= (and b!26589 c!5871) b!26597))

(assert (= (and b!26589 (not c!5871)) b!26588))

(assert (= (and b!26589 c!5870) b!26593))

(assert (= (and b!26589 (not c!5870)) b!26599))

(assert (= (and d!14207 c!5872) b!26598))

(assert (= (and d!14207 (not c!5872)) b!26589))

(assert (= (and d!14207 res!12143) b!26590))

(assert (= (and b!26590 res!12151) b!26604))

(assert (= (and b!26604 res!12144) b!26600))

(assert (= (and b!26600 res!12153) b!26605))

(assert (= (and b!26605 res!12147) b!26586))

(assert (= (and b!26586 res!12142) b!26592))

(declare-fun m!27639 () Bool)

(assert (=> b!26602 m!27639))

(declare-fun m!27641 () Bool)

(assert (=> b!26603 m!27641))

(declare-fun m!27643 () Bool)

(assert (=> b!26601 m!27643))

(declare-fun m!27645 () Bool)

(assert (=> b!26592 m!27645))

(declare-fun m!27647 () Bool)

(assert (=> b!26594 m!27647))

(declare-fun m!27649 () Bool)

(assert (=> b!26591 m!27649))

(declare-fun m!27651 () Bool)

(assert (=> b!26586 m!27651))

(declare-fun m!27653 () Bool)

(assert (=> b!26590 m!27653))

(declare-fun m!27655 () Bool)

(assert (=> b!26590 m!27655))

(declare-fun m!27657 () Bool)

(assert (=> b!26590 m!27657))

(assert (=> b!26604 m!27653))

(assert (=> b!26604 m!27655))

(assert (=> b!26604 m!27657))

(declare-fun m!27659 () Bool)

(assert (=> b!26587 m!27659))

(declare-fun m!27661 () Bool)

(assert (=> b!26605 m!27661))

(declare-fun m!27663 () Bool)

(assert (=> b!26597 m!27663))

(assert (=> d!14207 m!27653))

(assert (=> d!14207 m!27655))

(declare-fun m!27665 () Bool)

(assert (=> d!14207 m!27665))

(declare-fun m!27667 () Bool)

(assert (=> b!26589 m!27667))

(declare-fun m!27669 () Bool)

(assert (=> b!26589 m!27669))

(declare-fun m!27671 () Bool)

(assert (=> b!26593 m!27671))

(declare-fun m!27673 () Bool)

(assert (=> b!26600 m!27673))

(assert (=> b!26383 d!14207))

(assert (=> b!26372 d!14083))

(assert (=> b!26403 d!14139))

(declare-fun b!26607 () Bool)

(declare-fun e!13637 () Bool)

(assert (=> b!26607 (= e!13637 (appendAssoc!7 (++!39 (toList!114 (right!709 xs!533)) (toList!114 (left!706 (left!706 ys!77)))) (toList!114 (right!709 (left!706 ys!77))) (toList!114 (right!709 ys!77))))))

(declare-fun b!26608 () Bool)

(declare-fun e!13638 () Bool)

(assert (=> b!26608 (= e!13638 (appendAssoc!7 (toList!114 (left!706 (right!709 xs!533))) (toList!114 (left!706 (right!709 (right!709 xs!533)))) (++!39 (toList!114 (right!709 (right!709 (right!709 xs!533)))) (toList!114 ys!77))))))

(declare-fun b!26609 () Bool)

(declare-fun e!13640 () Bool)

(assert (=> b!26609 (= e!13640 e!13638)))

(declare-fun res!12162 () Bool)

(assert (=> b!26609 (=> (not res!12162) (not e!13638))))

(assert (=> b!26609 (= res!12162 (appendAssoc!7 (toList!114 (left!706 (right!709 (right!709 xs!533)))) (toList!114 (right!709 (right!709 (right!709 xs!533)))) (toList!114 ys!77)))))

(declare-fun b!26610 () Bool)

(declare-fun e!13641 () Bool)

(declare-fun e!13642 () Bool)

(assert (=> b!26610 (= e!13641 e!13642)))

(declare-fun res!12155 () Bool)

(assert (=> b!26610 (=> (not res!12155) (not e!13642))))

(assert (=> b!26610 (= res!12155 (appendAssoc!7 (toList!114 (right!709 xs!533)) (toList!114 (left!706 ys!77)) (toList!114 (right!709 ys!77))))))

(declare-fun d!14209 () Bool)

(declare-fun e!13639 () Bool)

(assert (=> d!14209 e!13639))

(declare-fun res!12154 () Bool)

(assert (=> d!14209 (=> (not res!12154) (not e!13639))))

(declare-fun e!13643 () Bool)

(assert (=> d!14209 (= res!12154 e!13643)))

(declare-fun res!12158 () Bool)

(assert (=> d!14209 (=> res!12158 e!13643)))

(assert (=> d!14209 (= res!12158 (not (is-CC!61 (right!709 xs!533))))))

(assert (=> d!14209 (= (appendAssocInst!11 (right!709 xs!533) ys!77) true)))

(declare-fun b!26611 () Bool)

(assert (=> b!26611 (= e!13639 e!13641)))

(declare-fun res!12161 () Bool)

(assert (=> b!26611 (=> res!12161 e!13641)))

(assert (=> b!26611 (= res!12161 (not (is-CC!61 ys!77)))))

(declare-fun b!26612 () Bool)

(declare-fun e!13644 () Bool)

(assert (=> b!26612 (= e!13644 e!13640)))

(declare-fun res!12157 () Bool)

(assert (=> b!26612 (=> res!12157 e!13640)))

(assert (=> b!26612 (= res!12157 (not (is-CC!61 (right!709 (right!709 xs!533)))))))

(declare-fun b!26613 () Bool)

(declare-fun e!13636 () Bool)

(assert (=> b!26613 (= e!13642 e!13636)))

(declare-fun res!12160 () Bool)

(assert (=> b!26613 (=> res!12160 e!13636)))

(assert (=> b!26613 (= res!12160 (not (is-CC!61 (left!706 ys!77))))))

(declare-fun b!26614 () Bool)

(assert (=> b!26614 (= e!13643 e!13644)))

(declare-fun res!12156 () Bool)

(assert (=> b!26614 (=> (not res!12156) (not e!13644))))

(assert (=> b!26614 (= res!12156 (appendAssoc!7 (toList!114 (left!706 (right!709 xs!533))) (toList!114 (right!709 (right!709 xs!533))) (toList!114 ys!77)))))

(declare-fun b!26615 () Bool)

(assert (=> b!26615 (= e!13636 e!13637)))

(declare-fun res!12159 () Bool)

(assert (=> b!26615 (=> (not res!12159) (not e!13637))))

(assert (=> b!26615 (= res!12159 (appendAssoc!7 (toList!114 (right!709 xs!533)) (toList!114 (left!706 (left!706 ys!77))) (toList!114 (right!709 (left!706 ys!77)))))))

(assert (= (and d!14209 (not res!12158)) b!26614))

(assert (= (and b!26614 res!12156) b!26612))

(assert (= (and b!26612 (not res!12157)) b!26609))

(assert (= (and b!26609 res!12162) b!26608))

(assert (= (and d!14209 res!12154) b!26611))

(assert (= (and b!26611 (not res!12161)) b!26610))

(assert (= (and b!26610 res!12155) b!26613))

(assert (= (and b!26613 (not res!12160)) b!26615))

(assert (= (and b!26615 res!12159) b!26607))

(assert (=> b!26610 m!27269))

(assert (=> b!26610 m!27239))

(assert (=> b!26610 m!27241))

(assert (=> b!26610 m!27269))

(assert (=> b!26610 m!27239))

(assert (=> b!26610 m!27241))

(declare-fun m!27675 () Bool)

(assert (=> b!26610 m!27675))

(assert (=> b!26607 m!27269))

(declare-fun m!27677 () Bool)

(assert (=> b!26607 m!27677))

(assert (=> b!26607 m!27247))

(assert (=> b!26607 m!27241))

(declare-fun m!27679 () Bool)

(assert (=> b!26607 m!27679))

(assert (=> b!26607 m!27241))

(assert (=> b!26607 m!27269))

(assert (=> b!26607 m!27251))

(assert (=> b!26607 m!27677))

(assert (=> b!26607 m!27251))

(assert (=> b!26607 m!27247))

(assert (=> b!26608 m!27253))

(assert (=> b!26608 m!27589))

(assert (=> b!26608 m!27253))

(declare-fun m!27681 () Bool)

(assert (=> b!26608 m!27681))

(assert (=> b!26608 m!27587))

(assert (=> b!26608 m!27259))

(assert (=> b!26608 m!27587))

(assert (=> b!26608 m!27681))

(declare-fun m!27683 () Bool)

(assert (=> b!26608 m!27683))

(assert (=> b!26608 m!27259))

(assert (=> b!26608 m!27589))

(assert (=> b!26615 m!27269))

(assert (=> b!26615 m!27251))

(assert (=> b!26615 m!27247))

(assert (=> b!26615 m!27269))

(assert (=> b!26615 m!27251))

(assert (=> b!26615 m!27247))

(declare-fun m!27685 () Bool)

(assert (=> b!26615 m!27685))

(assert (=> b!26609 m!27587))

(assert (=> b!26609 m!27589))

(assert (=> b!26609 m!27253))

(assert (=> b!26609 m!27587))

(assert (=> b!26609 m!27589))

(assert (=> b!26609 m!27253))

(declare-fun m!27687 () Bool)

(assert (=> b!26609 m!27687))

(assert (=> b!26614 m!27259))

(assert (=> b!26614 m!27255))

(assert (=> b!26614 m!27253))

(assert (=> b!26614 m!27259))

(assert (=> b!26614 m!27255))

(assert (=> b!26614 m!27253))

(assert (=> b!26614 m!27267))

(assert (=> b!26367 d!14209))

(declare-fun b!26619 () Bool)

(declare-fun e!13646 () Bool)

(assert (=> b!26619 (= e!13646 (balanced!57 (right!709 (left!706 res!5528))))))

(declare-fun b!26617 () Bool)

(declare-fun res!12165 () Bool)

(assert (=> b!26617 (=> (not res!12165) (not e!13646))))

(assert (=> b!26617 (= res!12165 (<= (- (level!50 (left!706 (left!706 res!5528))) (level!50 (right!709 (left!706 res!5528)))) 1))))

(declare-fun b!26618 () Bool)

(declare-fun res!12166 () Bool)

(assert (=> b!26618 (=> (not res!12166) (not e!13646))))

(assert (=> b!26618 (= res!12166 (balanced!57 (left!706 (left!706 res!5528))))))

(declare-fun b!26616 () Bool)

(declare-fun e!13645 () Bool)

(assert (=> b!26616 (= e!13645 e!13646)))

(declare-fun res!12164 () Bool)

(assert (=> b!26616 (=> (not res!12164) (not e!13646))))

(assert (=> b!26616 (= res!12164 (>= (- (level!50 (left!706 (left!706 res!5528))) (level!50 (right!709 (left!706 res!5528)))) (- 1)))))

(declare-fun d!14211 () Bool)

(declare-fun res!12163 () Bool)

(assert (=> d!14211 (=> res!12163 e!13645)))

(assert (=> d!14211 (= res!12163 (not (is-CC!61 (left!706 res!5528))))))

(assert (=> d!14211 (= (balanced!57 (left!706 res!5528)) e!13645)))

(assert (= (and d!14211 (not res!12163)) b!26616))

(assert (= (and b!26616 res!12164) b!26617))

(assert (= (and b!26617 res!12165) b!26618))

(assert (= (and b!26618 res!12166) b!26619))

(declare-fun m!27689 () Bool)

(assert (=> b!26619 m!27689))

(assert (=> b!26617 m!27561))

(assert (=> b!26617 m!27559))

(declare-fun m!27691 () Bool)

(assert (=> b!26618 m!27691))

(assert (=> b!26616 m!27561))

(assert (=> b!26616 m!27559))

(assert (=> b!26400 d!14211))

(declare-fun b!26620 () Bool)

(declare-fun e!13647 () Bool)

(declare-fun e!13648 () Bool)

(assert (=> b!26620 (= e!13647 e!13648)))

(declare-fun res!12169 () Bool)

(assert (=> b!26620 (=> (not res!12169) (not e!13648))))

(assert (=> b!26620 (= res!12169 (not (isEmpty!318 (left!706 lt!4234))))))

(declare-fun b!26622 () Bool)

(declare-fun res!12170 () Bool)

(assert (=> b!26622 (=> (not res!12170) (not e!13648))))

(assert (=> b!26622 (= res!12170 (concInv!56 (left!706 lt!4234)))))

(declare-fun b!26621 () Bool)

(declare-fun res!12168 () Bool)

(assert (=> b!26621 (=> (not res!12168) (not e!13648))))

(assert (=> b!26621 (= res!12168 (not (isEmpty!318 (right!709 lt!4234))))))

(declare-fun d!14213 () Bool)

(declare-fun res!12167 () Bool)

(assert (=> d!14213 (=> res!12167 e!13647)))

(assert (=> d!14213 (= res!12167 (not (is-CC!61 lt!4234)))))

(assert (=> d!14213 (= (concInv!56 lt!4234) e!13647)))

(declare-fun b!26623 () Bool)

(assert (=> b!26623 (= e!13648 (concInv!56 (right!709 lt!4234)))))

(assert (= (and d!14213 (not res!12167)) b!26620))

(assert (= (and b!26620 res!12169) b!26621))

(assert (= (and b!26621 res!12168) b!26622))

(assert (= (and b!26622 res!12170) b!26623))

(declare-fun m!27693 () Bool)

(assert (=> b!26620 m!27693))

(declare-fun m!27695 () Bool)

(assert (=> b!26622 m!27695))

(declare-fun m!27697 () Bool)

(assert (=> b!26621 m!27697))

(declare-fun m!27699 () Bool)

(assert (=> b!26623 m!27699))

(assert (=> b!26381 d!14213))

(declare-fun b!26624 () Bool)

(declare-fun e!13649 () Bool)

(declare-fun tp!5786 () Bool)

(declare-fun tp!5787 () Bool)

(assert (=> b!26624 (= e!13649 (and tp!5786 tp!5787))))

(declare-fun b!26625 () Bool)

(assert (=> b!26625 (= e!13649 tp_is_empty!169)))

(assert (=> b!26422 (= tp!5782 e!13649)))

(assert (= (and b!26422 (is-CC!61 (left!706 (right!709 res!5528)))) b!26624))

(assert (= (and b!26422 (is-Single!61 (left!706 (right!709 res!5528)))) b!26625))

(declare-fun b!26626 () Bool)

(declare-fun e!13650 () Bool)

(declare-fun tp!5788 () Bool)

(declare-fun tp!5789 () Bool)

(assert (=> b!26626 (= e!13650 (and tp!5788 tp!5789))))

(declare-fun b!26627 () Bool)

(assert (=> b!26627 (= e!13650 tp_is_empty!169)))

(assert (=> b!26422 (= tp!5783 e!13650)))

(assert (= (and b!26422 (is-CC!61 (right!709 (right!709 res!5528)))) b!26626))

(assert (= (and b!26422 (is-Single!61 (right!709 (right!709 res!5528)))) b!26627))

(declare-fun b!26628 () Bool)

(declare-fun e!13651 () Bool)

(declare-fun tp!5790 () Bool)

(declare-fun tp!5791 () Bool)

(assert (=> b!26628 (= e!13651 (and tp!5790 tp!5791))))

(declare-fun b!26629 () Bool)

(assert (=> b!26629 (= e!13651 tp_is_empty!169)))

(assert (=> b!26377 (= tp!5766 e!13651)))

(assert (= (and b!26377 (is-CC!61 (left!706 res!12050))) b!26628))

(assert (= (and b!26377 (is-Single!61 (left!706 res!12050))) b!26629))

(declare-fun b!26630 () Bool)

(declare-fun e!13652 () Bool)

(declare-fun tp!5792 () Bool)

(declare-fun tp!5793 () Bool)

(assert (=> b!26630 (= e!13652 (and tp!5792 tp!5793))))

(declare-fun b!26631 () Bool)

(assert (=> b!26631 (= e!13652 tp_is_empty!169)))

(assert (=> b!26377 (= tp!5767 e!13652)))

(assert (= (and b!26377 (is-CC!61 (right!709 res!12050))) b!26630))

(assert (= (and b!26377 (is-Single!61 (right!709 res!12050))) b!26631))

(declare-fun b!26632 () Bool)

(declare-fun e!13653 () Bool)

(declare-fun tp!5794 () Bool)

(declare-fun tp!5795 () Bool)

(assert (=> b!26632 (= e!13653 (and tp!5794 tp!5795))))

(declare-fun b!26633 () Bool)

(assert (=> b!26633 (= e!13653 tp_is_empty!169)))

(assert (=> b!26416 (= tp!5776 e!13653)))

(assert (= (and b!26416 (is-CC!61 (left!706 (left!706 xs!533)))) b!26632))

(assert (= (and b!26416 (is-Single!61 (left!706 (left!706 xs!533)))) b!26633))

(declare-fun b!26634 () Bool)

(declare-fun e!13654 () Bool)

(declare-fun tp!5796 () Bool)

(declare-fun tp!5797 () Bool)

(assert (=> b!26634 (= e!13654 (and tp!5796 tp!5797))))

(declare-fun b!26635 () Bool)

(assert (=> b!26635 (= e!13654 tp_is_empty!169)))

(assert (=> b!26416 (= tp!5777 e!13654)))

(assert (= (and b!26416 (is-CC!61 (right!709 (left!706 xs!533)))) b!26634))

(assert (= (and b!26416 (is-Single!61 (right!709 (left!706 xs!533)))) b!26635))

(declare-fun b!26636 () Bool)

(declare-fun e!13655 () Bool)

(declare-fun tp!5798 () Bool)

(declare-fun tp!5799 () Bool)

(assert (=> b!26636 (= e!13655 (and tp!5798 tp!5799))))

(declare-fun b!26637 () Bool)

(assert (=> b!26637 (= e!13655 tp_is_empty!169)))

(assert (=> b!26414 (= tp!5774 e!13655)))

(assert (= (and b!26414 (is-CC!61 (left!706 (right!709 ys!77)))) b!26636))

(assert (= (and b!26414 (is-Single!61 (left!706 (right!709 ys!77)))) b!26637))

(declare-fun b!26638 () Bool)

(declare-fun e!13656 () Bool)

(declare-fun tp!5800 () Bool)

(declare-fun tp!5801 () Bool)

(assert (=> b!26638 (= e!13656 (and tp!5800 tp!5801))))

(declare-fun b!26639 () Bool)

(assert (=> b!26639 (= e!13656 tp_is_empty!169)))

(assert (=> b!26414 (= tp!5775 e!13656)))

(assert (= (and b!26414 (is-CC!61 (right!709 (right!709 ys!77)))) b!26638))

(assert (= (and b!26414 (is-Single!61 (right!709 (right!709 ys!77)))) b!26639))

(declare-fun b!26640 () Bool)

(declare-fun e!13657 () Bool)

(declare-fun tp!5802 () Bool)

(declare-fun tp!5803 () Bool)

(assert (=> b!26640 (= e!13657 (and tp!5802 tp!5803))))

(declare-fun b!26641 () Bool)

(assert (=> b!26641 (= e!13657 tp_is_empty!169)))

(assert (=> b!26418 (= tp!5778 e!13657)))

(assert (= (and b!26418 (is-CC!61 (left!706 (right!709 xs!533)))) b!26640))

(assert (= (and b!26418 (is-Single!61 (left!706 (right!709 xs!533)))) b!26641))

(declare-fun b!26642 () Bool)

(declare-fun e!13658 () Bool)

(declare-fun tp!5804 () Bool)

(declare-fun tp!5805 () Bool)

(assert (=> b!26642 (= e!13658 (and tp!5804 tp!5805))))

(declare-fun b!26643 () Bool)

(assert (=> b!26643 (= e!13658 tp_is_empty!169)))

(assert (=> b!26418 (= tp!5779 e!13658)))

(assert (= (and b!26418 (is-CC!61 (right!709 (right!709 xs!533)))) b!26642))

(assert (= (and b!26418 (is-Single!61 (right!709 (right!709 xs!533)))) b!26643))

(declare-fun b!26644 () Bool)

(declare-fun e!13659 () Bool)

(declare-fun tp!5806 () Bool)

(declare-fun tp!5807 () Bool)

(assert (=> b!26644 (= e!13659 (and tp!5806 tp!5807))))

(declare-fun b!26645 () Bool)

(assert (=> b!26645 (= e!13659 tp_is_empty!169)))

(assert (=> b!26412 (= tp!5772 e!13659)))

(assert (= (and b!26412 (is-CC!61 (left!706 (left!706 ys!77)))) b!26644))

(assert (= (and b!26412 (is-Single!61 (left!706 (left!706 ys!77)))) b!26645))

(declare-fun b!26646 () Bool)

(declare-fun e!13660 () Bool)

(declare-fun tp!5808 () Bool)

(declare-fun tp!5809 () Bool)

(assert (=> b!26646 (= e!13660 (and tp!5808 tp!5809))))

(declare-fun b!26647 () Bool)

(assert (=> b!26647 (= e!13660 tp_is_empty!169)))

(assert (=> b!26412 (= tp!5773 e!13660)))

(assert (= (and b!26412 (is-CC!61 (right!709 (left!706 ys!77)))) b!26646))

(assert (= (and b!26412 (is-Single!61 (right!709 (left!706 ys!77)))) b!26647))

(declare-fun b!26648 () Bool)

(declare-fun e!13661 () Bool)

(declare-fun tp!5810 () Bool)

(declare-fun tp!5811 () Bool)

(assert (=> b!26648 (= e!13661 (and tp!5810 tp!5811))))

(declare-fun b!26649 () Bool)

(assert (=> b!26649 (= e!13661 tp_is_empty!169)))

(assert (=> b!26420 (= tp!5780 e!13661)))

(assert (= (and b!26420 (is-CC!61 (left!706 (left!706 res!5528)))) b!26648))

(assert (= (and b!26420 (is-Single!61 (left!706 (left!706 res!5528)))) b!26649))

(declare-fun b!26650 () Bool)

(declare-fun e!13662 () Bool)

(declare-fun tp!5812 () Bool)

(declare-fun tp!5813 () Bool)

(assert (=> b!26650 (= e!13662 (and tp!5812 tp!5813))))

(declare-fun b!26651 () Bool)

(assert (=> b!26651 (= e!13662 tp_is_empty!169)))

(assert (=> b!26420 (= tp!5781 e!13662)))

(assert (= (and b!26420 (is-CC!61 (right!709 (left!706 res!5528)))) b!26650))

(assert (= (and b!26420 (is-Single!61 (right!709 (left!706 res!5528)))) b!26651))

(push 1)

(assert (not b!26515))

(assert (not b!26608))

(assert (not b!26563))

(assert (not b!26447))

(assert (not d!14151))

(assert (not b!26607))

(assert (not d!14165))

(assert (not b!26580))

(assert (not b!26541))

(assert (not b!26494))

(assert (not b!26626))

(assert (not b!26617))

(assert (not d!14103))

(assert (not b!26475))

(assert (not b!26549))

(assert (not b!26524))

(assert (not b!26483))

(assert (not b!26471))

(assert (not b!26642))

(assert (not b!26577))

(assert (not b!26522))

(assert (not b!26525))

(assert (not b!26486))

(assert (not b!26484))

(assert (not b!26469))

(assert (not b!26636))

(assert (not b!26558))

(assert (not b!26600))

(assert (not b!26576))

(assert (not b!26578))

(assert (not b!26519))

(assert (not b!26610))

(assert (not b!26520))

(assert (not b!26458))

(assert (not b!26544))

(assert (not b!26476))

(assert (not b!26632))

(assert (not b!26551))

(assert (not b!26542))

(assert (not b!26621))

(assert (not b!26586))

(assert (not b!26614))

(assert (not d!14207))

(assert (not b!26500))

(assert (not b!26634))

(assert (not b!26591))

(assert (not b!26628))

(assert (not d!14119))

(assert (not b!26478))

(assert (not b!26567))

(assert (not b!26616))

(assert (not b!26553))

(assert (not b!26619))

(assert (not b!26540))

(assert (not d!14107))

(assert (not b!26623))

(assert (not d!14147))

(assert (not d!14109))

(assert (not b!26537))

(assert (not b!26630))

(assert (not b!26499))

(assert (not b!26618))

(assert (not b!26582))

(assert (not b!26526))

(assert (not d!14191))

(assert (not b!26573))

(assert (not b!26620))

(assert (not b!26527))

(assert (not b!26579))

(assert (not b!26521))

(assert (not b!26479))

(assert (not b!26615))

(assert (not b!26517))

(assert (not b!26467))

(assert (not b!26545))

(assert (not b!26477))

(assert (not b!26539))

(assert (not b!26596))

(assert (not b!26507))

(assert (not b!26501))

(assert (not b!26481))

(assert (not b!26531))

(assert tp_is_empty!169)

(assert (not d!14111))

(assert (not b!26609))

(assert (not b!26472))

(assert (not b!26622))

(assert (not b!26601))

(assert (not b!26638))

(assert (not b!26464))

(assert (not b!26646))

(assert (not d!14163))

(assert (not b!26491))

(assert (not b!26557))

(assert (not b!26572))

(assert (not b!26650))

(assert (not b!26523))

(assert (not b!26584))

(assert (not b!26443))

(assert (not d!14143))

(assert (not b!26495))

(assert (not b!26581))

(assert (not b!26575))

(assert (not b!26570))

(assert (not b!26574))

(assert (not b!26648))

(assert (not b!26640))

(assert (not b!26559))

(assert (not b!26585))

(assert (not b!26465))

(assert (not b!26470))

(assert (not b!26597))

(assert (not b!26644))

(assert (not b!26439))

(assert (not d!14189))

(assert (not b!26624))

(assert (not b!26457))

(assert (not b!26509))

(assert (not b!26594))

(assert (not b!26543))

(assert (not d!14105))

(assert (not b!26489))

(assert (not b!26590))

(assert (not b!26488))

(assert (not b!26604))

(assert (not b!26602))

(assert (not b!26587))

(assert (not b!26605))

(assert (not b!26482))

(assert (not b!26538))

(assert (not b!26435))

(assert (not b!26583))

(assert (not b!26502))

(assert (not b!26569))

(assert (not b!26473))

(assert (not b!26485))

(assert (not b!26503))

(assert (not d!14187))

(assert (not b!26547))

(assert (not b!26589))

(assert (not b!26592))

(assert (not b!26555))

(assert (not b!26487))

(assert (not b!26510))

(assert (not b!26493))

(assert (not b!26474))

(assert (not d!14149))

(assert (not b!26535))

(assert (not b!26603))

(assert (not b!26468))

(assert (not b!26593))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

