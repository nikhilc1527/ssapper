; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10260 () Bool)

(assert start!10260)

(declare-fun res!37246 () Bool)

(declare-fun e!40645 () Bool)

(assert (=> start!10260 (=> (not res!37246) (not e!40645))))

(declare-datatypes () ((Formula!81 (Implies!85 (lhs!1356 Formula!81) (rhs!1356 Formula!81)) (And!85 (lhs!1357 Formula!81) (rhs!1357 Formula!81)) (Or!85 (lhs!1358 Formula!81) (rhs!1358 Formula!81)) (Literal!79 (id!4942 (_ BitVec 32))) (Not!85 (f!4692 Formula!81)))))

(declare-fun f!4460 () Formula!81)

(declare-fun isSimplified!0 (Formula!81) Bool)

(assert (=> start!10260 (= res!37246 (isSimplified!0 f!4460))))

(assert (=> start!10260 e!40645))

(assert (=> start!10260 true))

(declare-fun b!75227 () Bool)

(declare-fun res!37247 () Bool)

(assert (=> b!75227 (=> (not res!37247) (not e!40645))))

(declare-fun f!4474 () Formula!81)

(assert (=> b!75227 (= res!37247 (and (not (is-Implies!85 f!4460)) (is-And!85 f!4460) (= f!4474 (rhs!1357 f!4460))))))

(declare-fun b!75228 () Bool)

(assert (=> b!75228 (= e!40645 (not (isSimplified!0 f!4474)))))

(assert (= (and start!10260 res!37246) b!75227))

(assert (= (and b!75227 res!37247) b!75228))

(declare-fun m!73058 () Bool)

(assert (=> start!10260 m!73058))

(declare-fun m!73060 () Bool)

(assert (=> b!75228 m!73060))

(push 1)

(assert (not start!10260))

(assert (not b!75228))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!54835 () Bool)

(declare-fun c!18482 () Bool)

(declare-fun lt!16374 () Bool)

(assert (=> d!54835 (= c!18482 lt!16374)))

(declare-fun lt!16375 () Bool)

(declare-fun e!40668 () Bool)

(assert (=> d!54835 (= lt!16375 e!40668)))

(declare-fun c!18485 () Bool)

(declare-fun e!40664 () Bool)

(assert (=> d!54835 (= c!18485 e!40664)))

(declare-fun res!37274 () Bool)

(assert (=> d!54835 (=> res!37274 e!40664)))

(declare-fun lt!16373 () Bool)

(assert (=> d!54835 (= res!37274 lt!16373)))

(declare-fun lt!16376 () Bool)

(assert (=> d!54835 (= lt!16373 (and lt!16374 lt!16376))))

(declare-fun e!40663 () Bool)

(assert (=> d!54835 (= lt!16376 e!40663)))

(declare-fun c!18486 () Bool)

(assert (=> d!54835 (= c!18486 (or lt!16374 (is-Or!85 f!4460) (and (not (is-Implies!85 f!4460)) (is-Not!85 f!4460))))))

(assert (=> d!54835 (= lt!16374 (is-And!85 f!4460))))

(declare-fun e!40666 () Bool)

(assert (=> d!54835 (= (isSimplified!0 f!4460) e!40666)))

(declare-fun b!75255 () Bool)

(declare-fun e!40669 () Bool)

(assert (=> b!75255 (= e!40669 lt!16376)))

(declare-fun b!75256 () Bool)

(declare-fun lt!16370 () Bool)

(declare-fun lt!16371 () Bool)

(assert (=> b!75256 (= e!40666 (ite lt!16371 (and lt!16370 lt!16375) (and (not (is-Implies!85 f!4460)) (or (not (is-Not!85 f!4460)) lt!16370))))))

(declare-fun e!40665 () Bool)

(assert (=> b!75256 (= lt!16370 e!40665)))

(declare-fun c!18484 () Bool)

(assert (=> b!75256 (= c!18484 (or lt!16371 (and (not (is-Implies!85 f!4460)) (is-Not!85 f!4460))))))

(assert (=> b!75256 (= lt!16371 (is-Or!85 f!4460))))

(declare-fun b!75257 () Bool)

(declare-fun res!37277 () Bool)

(assert (=> b!75257 (= e!40663 res!37277)))

(assert (=> b!75257 true))

(declare-fun b!75258 () Bool)

(declare-fun res!37279 () Bool)

(assert (=> b!75258 (= e!40668 res!37279)))

(assert (=> b!75258 true))

(declare-fun b!75259 () Bool)

(declare-fun e!40662 () Bool)

(assert (=> b!75259 (= e!40662 e!40669)))

(declare-fun c!18483 () Bool)

(declare-fun lt!16372 () Bool)

(assert (=> b!75259 (= c!18483 (or lt!16372 (and (not (is-Implies!85 f!4460)) (is-Not!85 f!4460))))))

(declare-fun b!75260 () Bool)

(assert (=> b!75260 (= e!40666 (and lt!16376 lt!16375))))

(declare-fun b!75261 () Bool)

(declare-fun res!37275 () Bool)

(assert (=> b!75261 (= e!40669 res!37275)))

(assert (=> b!75261 true))

(declare-fun b!75262 () Bool)

(assert (=> b!75262 (= e!40663 (isSimplified!0 (ite lt!16374 (lhs!1357 f!4460) (ite (is-Or!85 f!4460) (lhs!1358 f!4460) (f!4692 f!4460)))))))

(declare-fun b!75263 () Bool)

(assert (=> b!75263 (= e!40665 lt!16376)))

(declare-fun b!75264 () Bool)

(declare-fun res!37278 () Bool)

(assert (=> b!75264 (= e!40665 res!37278)))

(assert (=> b!75264 true))

(assert (=> b!75264 true))

(declare-fun b!75265 () Bool)

(assert (=> b!75265 (= e!40668 (isSimplified!0 (ite lt!16373 (rhs!1357 f!4460) (rhs!1358 f!4460))))))

(declare-fun b!75266 () Bool)

(declare-fun e!40667 () Bool)

(assert (=> b!75266 (= e!40667 e!40662)))

(declare-fun res!37273 () Bool)

(assert (=> b!75266 (=> (not res!37273) (not e!40662))))

(assert (=> b!75266 (= res!37273 lt!16372)))

(assert (=> b!75266 (= lt!16372 (is-Or!85 f!4460))))

(declare-fun b!75267 () Bool)

(assert (=> b!75267 (= e!40664 e!40667)))

(declare-fun res!37276 () Bool)

(assert (=> b!75267 (=> (not res!37276) (not e!40667))))

(assert (=> b!75267 (= res!37276 (not lt!16374))))

(assert (= (and d!54835 c!18486) b!75262))

(assert (= (and d!54835 (not c!18486)) b!75257))

(assert (= (and d!54835 (not res!37274)) b!75267))

(assert (= (and b!75267 res!37276) b!75266))

(assert (= (and b!75266 res!37273) b!75259))

(assert (= (and b!75259 c!18483) b!75255))

(assert (= (and b!75259 (not c!18483)) b!75261))

(assert (= (and d!54835 c!18485) b!75265))

(assert (= (and d!54835 (not c!18485)) b!75258))

(assert (= (and b!75256 c!18484) b!75263))

(assert (= (and b!75256 (not c!18484)) b!75264))

(assert (= (and d!54835 c!18482) b!75260))

(assert (= (and d!54835 (not c!18482)) b!75256))

(declare-fun m!73062 () Bool)

(assert (=> b!75262 m!73062))

(declare-fun m!73064 () Bool)

(assert (=> b!75265 m!73064))

(assert (=> start!10260 d!54835))

(declare-fun d!54837 () Bool)

(declare-fun c!18487 () Bool)

(declare-fun lt!16381 () Bool)

(assert (=> d!54837 (= c!18487 lt!16381)))

(declare-fun lt!16382 () Bool)

(declare-fun e!40676 () Bool)

(assert (=> d!54837 (= lt!16382 e!40676)))

(declare-fun c!18490 () Bool)

(declare-fun e!40672 () Bool)

(assert (=> d!54837 (= c!18490 e!40672)))

(declare-fun res!37281 () Bool)

(assert (=> d!54837 (=> res!37281 e!40672)))

(declare-fun lt!16380 () Bool)

(assert (=> d!54837 (= res!37281 lt!16380)))

(declare-fun lt!16383 () Bool)

(assert (=> d!54837 (= lt!16380 (and lt!16381 lt!16383))))

(declare-fun e!40671 () Bool)

(assert (=> d!54837 (= lt!16383 e!40671)))

(declare-fun c!18491 () Bool)

(assert (=> d!54837 (= c!18491 (or lt!16381 (is-Or!85 f!4474) (and (not (is-Implies!85 f!4474)) (is-Not!85 f!4474))))))

(assert (=> d!54837 (= lt!16381 (is-And!85 f!4474))))

(declare-fun e!40674 () Bool)

(assert (=> d!54837 (= (isSimplified!0 f!4474) e!40674)))

(declare-fun b!75268 () Bool)

(declare-fun e!40677 () Bool)

(assert (=> b!75268 (= e!40677 lt!16383)))

(declare-fun b!75269 () Bool)

(declare-fun lt!16377 () Bool)

(declare-fun lt!16378 () Bool)

(assert (=> b!75269 (= e!40674 (ite lt!16378 (and lt!16377 lt!16382) (and (not (is-Implies!85 f!4474)) (or (not (is-Not!85 f!4474)) lt!16377))))))

(declare-fun e!40673 () Bool)

(assert (=> b!75269 (= lt!16377 e!40673)))

(declare-fun c!18489 () Bool)

(assert (=> b!75269 (= c!18489 (or lt!16378 (and (not (is-Implies!85 f!4474)) (is-Not!85 f!4474))))))

(assert (=> b!75269 (= lt!16378 (is-Or!85 f!4474))))

(declare-fun b!75270 () Bool)

(declare-fun res!37284 () Bool)

(assert (=> b!75270 (= e!40671 res!37284)))

(assert (=> b!75270 true))

(declare-fun b!75271 () Bool)

(declare-fun res!37286 () Bool)

(assert (=> b!75271 (= e!40676 res!37286)))

(assert (=> b!75271 true))

(declare-fun b!75272 () Bool)

(declare-fun e!40670 () Bool)

(assert (=> b!75272 (= e!40670 e!40677)))

(declare-fun c!18488 () Bool)

(declare-fun lt!16379 () Bool)

(assert (=> b!75272 (= c!18488 (or lt!16379 (and (not (is-Implies!85 f!4474)) (is-Not!85 f!4474))))))

(declare-fun b!75273 () Bool)

(assert (=> b!75273 (= e!40674 (and lt!16383 lt!16382))))

(declare-fun b!75274 () Bool)

(declare-fun res!37282 () Bool)

(assert (=> b!75274 (= e!40677 res!37282)))

(assert (=> b!75274 true))

(declare-fun b!75275 () Bool)

(assert (=> b!75275 (= e!40671 (isSimplified!0 (ite lt!16381 (lhs!1357 f!4474) (ite (is-Or!85 f!4474) (lhs!1358 f!4474) (f!4692 f!4474)))))))

(declare-fun b!75276 () Bool)

(assert (=> b!75276 (= e!40673 lt!16383)))

(declare-fun b!75277 () Bool)

(declare-fun res!37285 () Bool)

(assert (=> b!75277 (= e!40673 res!37285)))

(assert (=> b!75277 true))

(assert (=> b!75277 true))

(declare-fun b!75278 () Bool)

(assert (=> b!75278 (= e!40676 (isSimplified!0 (ite lt!16380 (rhs!1357 f!4474) (rhs!1358 f!4474))))))

(declare-fun b!75279 () Bool)

(declare-fun e!40675 () Bool)

(assert (=> b!75279 (= e!40675 e!40670)))

(declare-fun res!37280 () Bool)

(assert (=> b!75279 (=> (not res!37280) (not e!40670))))

(assert (=> b!75279 (= res!37280 lt!16379)))

(assert (=> b!75279 (= lt!16379 (is-Or!85 f!4474))))

(declare-fun b!75280 () Bool)

(assert (=> b!75280 (= e!40672 e!40675)))

(declare-fun res!37283 () Bool)

(assert (=> b!75280 (=> (not res!37283) (not e!40675))))

(assert (=> b!75280 (= res!37283 (not lt!16381))))

(assert (= (and d!54837 c!18491) b!75275))

(assert (= (and d!54837 (not c!18491)) b!75270))

(assert (= (and d!54837 (not res!37281)) b!75280))

(assert (= (and b!75280 res!37283) b!75279))

(assert (= (and b!75279 res!37280) b!75272))

(assert (= (and b!75272 c!18488) b!75268))

(assert (= (and b!75272 (not c!18488)) b!75274))

(assert (= (and d!54837 c!18490) b!75278))

(assert (= (and d!54837 (not c!18490)) b!75271))

(assert (= (and b!75269 c!18489) b!75276))

(assert (= (and b!75269 (not c!18489)) b!75277))

(assert (= (and d!54837 c!18487) b!75273))

(assert (= (and d!54837 (not c!18487)) b!75269))

(declare-fun m!73066 () Bool)

(assert (=> b!75275 m!73066))

(declare-fun m!73068 () Bool)

(assert (=> b!75278 m!73068))

(assert (=> b!75228 d!54837))

(push 1)

(assert (not b!75278))

(assert (not b!75275))

(assert (not b!75265))

(assert (not b!75262))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

