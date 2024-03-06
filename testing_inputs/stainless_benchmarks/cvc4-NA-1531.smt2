; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10368 () Bool)

(assert start!10368)

(declare-fun res!38717 () Bool)

(declare-fun e!41756 () Bool)

(assert (=> start!10368 (=> (not res!38717) (not e!41756))))

(declare-datatypes () ((Formula!100 (Implies!104 (lhs!1413 Formula!100) (rhs!1413 Formula!100)) (And!104 (lhs!1414 Formula!100) (rhs!1414 Formula!100)) (Or!104 (lhs!1415 Formula!100) (rhs!1415 Formula!100)) (Literal!98 (id!4961 (_ BitVec 32))) (Not!104 (f!4745 Formula!100)))))

(declare-fun f!4501 () Formula!100)

(declare-fun isNNF!0 (Formula!100) Bool)

(assert (=> start!10368 (= res!38717 (isNNF!0 f!4501))))

(assert (=> start!10368 e!41756))

(assert (=> start!10368 true))

(declare-fun b!77254 () Bool)

(declare-fun res!38718 () Bool)

(assert (=> b!77254 (=> (not res!38718) (not e!41756))))

(declare-fun f!4510 () Formula!100)

(assert (=> b!77254 (= res!38718 (and (not (is-And!104 f!4501)) (is-Or!104 f!4501) (= f!4510 (rhs!1415 f!4501))))))

(declare-fun b!77255 () Bool)

(assert (=> b!77255 (= e!41756 (not (isNNF!0 f!4510)))))

(assert (= (and start!10368 res!38717) b!77254))

(assert (= (and b!77254 res!38718) b!77255))

(declare-fun m!73454 () Bool)

(assert (=> start!10368 m!73454))

(declare-fun m!73456 () Bool)

(assert (=> b!77255 m!73456))

(push 1)

(assert (not b!77255))

(assert (not start!10368))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!77304 () Bool)

(declare-fun e!41794 () Bool)

(declare-fun res!38761 () Bool)

(assert (=> b!77304 (= e!41794 res!38761)))

(assert (=> b!77304 true))

(assert (=> b!77304 true))

(declare-fun b!77305 () Bool)

(declare-fun e!41790 () Formula!100)

(assert (=> b!77305 (= e!41790 (rhs!1414 f!4510))))

(declare-fun b!77306 () Bool)

(declare-fun e!41786 () Bool)

(assert (=> b!77306 (= e!41786 (isNNF!0 e!41790))))

(declare-fun c!19325 () Bool)

(declare-fun lt!17353 () Bool)

(assert (=> b!77306 (= c!19325 lt!17353)))

(declare-fun d!54949 () Bool)

(declare-fun c!19327 () Bool)

(declare-fun lt!17354 () Bool)

(assert (=> d!54949 (= c!19327 lt!17354)))

(declare-fun lt!17357 () Bool)

(assert (=> d!54949 (= lt!17357 e!41786)))

(declare-fun c!19329 () Bool)

(declare-fun e!41796 () Bool)

(assert (=> d!54949 (= c!19329 e!41796)))

(declare-fun res!38753 () Bool)

(assert (=> d!54949 (=> res!38753 e!41796)))

(assert (=> d!54949 (= res!38753 lt!17353)))

(declare-fun lt!17355 () Bool)

(assert (=> d!54949 (= lt!17353 (and lt!17354 lt!17355))))

(declare-fun e!41787 () Bool)

(assert (=> d!54949 (= lt!17355 e!41787)))

(declare-fun c!19326 () Bool)

(assert (=> d!54949 (= c!19326 (or lt!17354 (is-Or!104 f!4510) (is-Implies!104 f!4510)))))

(assert (=> d!54949 (= lt!17354 (is-And!104 f!4510))))

(declare-fun e!41791 () Bool)

(assert (=> d!54949 (= (isNNF!0 f!4510) e!41791)))

(declare-fun b!77307 () Bool)

(declare-fun e!41795 () Formula!100)

(assert (=> b!77307 (= e!41795 (rhs!1413 f!4510))))

(declare-fun b!77308 () Bool)

(assert (=> b!77308 (= e!41794 lt!17357)))

(declare-fun b!77309 () Bool)

(declare-fun res!38760 () Bool)

(assert (=> b!77309 (= e!41787 res!38760)))

(assert (=> b!77309 true))

(declare-fun b!77310 () Bool)

(declare-fun e!41785 () Bool)

(assert (=> b!77310 (= e!41785 (or (and (is-Not!104 f!4510) (is-Literal!98 (f!4745 f!4510))) (not (is-Not!104 f!4510))))))

(declare-fun b!77311 () Bool)

(declare-fun res!38754 () Bool)

(assert (=> b!77311 (= e!41786 res!38754)))

(assert (=> b!77311 true))

(declare-fun b!77312 () Bool)

(declare-fun e!41798 () Bool)

(assert (=> b!77312 (= e!41798 lt!17355)))

(declare-fun b!77313 () Bool)

(declare-fun e!41797 () Bool)

(assert (=> b!77313 (= e!41797 lt!17355)))

(declare-fun b!77314 () Bool)

(declare-fun res!38759 () Bool)

(assert (=> b!77314 (= e!41798 res!38759)))

(assert (=> b!77314 true))

(declare-fun b!77315 () Bool)

(assert (=> b!77315 (= e!41790 e!41795)))

(declare-fun c!19328 () Bool)

(declare-fun e!41792 () Bool)

(assert (=> b!77315 (= c!19328 e!41792)))

(declare-fun res!38758 () Bool)

(assert (=> b!77315 (=> (not res!38758) (not e!41792))))

(declare-fun lt!17356 () Bool)

(assert (=> b!77315 (= res!38758 lt!17356)))

(assert (=> b!77315 (= lt!17356 (is-Or!104 f!4510))))

(declare-fun b!77316 () Bool)

(declare-fun res!38762 () Bool)

(assert (=> b!77316 (= e!41797 res!38762)))

(assert (=> b!77316 true))

(declare-fun lt!17359 () Bool)

(declare-fun b!77317 () Bool)

(declare-fun e!41789 () Bool)

(declare-fun lt!17352 () Bool)

(assert (=> b!77317 (= e!41789 (or (and lt!17359 lt!17352) (and (not lt!17359) (is-Implies!104 f!4510) lt!17352)))))

(assert (=> b!77317 (= lt!17352 e!41798)))

(declare-fun c!19331 () Bool)

(assert (=> b!77317 (= c!19331 (or lt!17359 (is-Implies!104 f!4510)))))

(assert (=> b!77317 (= lt!17359 (is-Or!104 f!4510))))

(declare-fun b!77318 () Bool)

(assert (=> b!77318 (= e!41791 (and lt!17355 lt!17357))))

(declare-fun b!77319 () Bool)

(declare-fun e!41788 () Bool)

(assert (=> b!77319 (= e!41785 e!41788)))

(declare-fun res!38757 () Bool)

(assert (=> b!77319 (=> (not res!38757) (not e!41788))))

(declare-fun lt!17360 () Bool)

(assert (=> b!77319 (= res!38757 lt!17360)))

(declare-fun b!77320 () Bool)

(declare-fun e!41793 () Bool)

(assert (=> b!77320 (= e!41792 e!41793)))

(declare-fun c!19330 () Bool)

(assert (=> b!77320 (= c!19330 (or lt!17356 (is-Implies!104 f!4510)))))

(declare-fun b!77321 () Bool)

(assert (=> b!77321 (= e!41795 (rhs!1415 f!4510))))

(declare-fun b!77322 () Bool)

(assert (=> b!77322 (= e!41788 e!41794)))

(declare-fun lt!17358 () Bool)

(declare-fun c!19324 () Bool)

(assert (=> b!77322 (= c!19324 (or (and lt!17358 lt!17360) (and (not lt!17358) (is-Implies!104 f!4510) lt!17360)))))

(declare-fun b!77323 () Bool)

(assert (=> b!77323 (= e!41793 lt!17355)))

(declare-fun b!77324 () Bool)

(declare-fun res!38755 () Bool)

(assert (=> b!77324 (= e!41793 res!38755)))

(assert (=> b!77324 true))

(declare-fun b!77325 () Bool)

(assert (=> b!77325 (= e!41787 (isNNF!0 (ite lt!17354 (lhs!1414 f!4510) (ite (is-Or!104 f!4510) (lhs!1415 f!4510) (lhs!1413 f!4510)))))))

(declare-fun b!77326 () Bool)

(assert (=> b!77326 (= e!41791 e!41785)))

(declare-fun c!19332 () Bool)

(assert (=> b!77326 (= c!19332 (or lt!17358 (is-Implies!104 f!4510)))))

(assert (=> b!77326 (= lt!17360 e!41797)))

(declare-fun c!19333 () Bool)

(assert (=> b!77326 (= c!19333 (or lt!17358 (is-Implies!104 f!4510)))))

(assert (=> b!77326 (= lt!17358 (is-Or!104 f!4510))))

(declare-fun b!77327 () Bool)

(assert (=> b!77327 (= e!41796 e!41789)))

(declare-fun res!38756 () Bool)

(assert (=> b!77327 (=> (not res!38756) (not e!41789))))

(assert (=> b!77327 (= res!38756 (not lt!17354))))

(assert (= (and d!54949 c!19326) b!77325))

(assert (= (and d!54949 (not c!19326)) b!77309))

(assert (= (and d!54949 (not res!38753)) b!77327))

(assert (= (and b!77327 res!38756) b!77317))

(assert (= (and b!77317 c!19331) b!77312))

(assert (= (and b!77317 (not c!19331)) b!77314))

(assert (= (and b!77315 res!38758) b!77320))

(assert (= (and b!77320 c!19330) b!77323))

(assert (= (and b!77320 (not c!19330)) b!77324))

(assert (= (and b!77315 c!19328) b!77321))

(assert (= (and b!77315 (not c!19328)) b!77307))

(assert (= (and b!77306 c!19325) b!77305))

(assert (= (and b!77306 (not c!19325)) b!77315))

(assert (= (and d!54949 c!19329) b!77306))

(assert (= (and d!54949 (not c!19329)) b!77311))

(assert (= (and b!77326 c!19333) b!77313))

(assert (= (and b!77326 (not c!19333)) b!77316))

(assert (= (and b!77319 res!38757) b!77322))

(assert (= (and b!77322 c!19324) b!77308))

(assert (= (and b!77322 (not c!19324)) b!77304))

(assert (= (and b!77326 c!19332) b!77319))

(assert (= (and b!77326 (not c!19332)) b!77310))

(assert (= (and d!54949 c!19327) b!77318))

(assert (= (and d!54949 (not c!19327)) b!77326))

(declare-fun m!73458 () Bool)

(assert (=> b!77306 m!73458))

(declare-fun m!73460 () Bool)

(assert (=> b!77325 m!73460))

(assert (=> b!77255 d!54949))

(declare-fun b!77328 () Bool)

(declare-fun e!41808 () Bool)

(declare-fun res!38771 () Bool)

(assert (=> b!77328 (= e!41808 res!38771)))

(assert (=> b!77328 true))

(assert (=> b!77328 true))

(declare-fun b!77329 () Bool)

(declare-fun e!41804 () Formula!100)

(assert (=> b!77329 (= e!41804 (rhs!1414 f!4501))))

(declare-fun b!77330 () Bool)

(declare-fun e!41800 () Bool)

(assert (=> b!77330 (= e!41800 (isNNF!0 e!41804))))

(declare-fun c!19335 () Bool)

(declare-fun lt!17362 () Bool)

(assert (=> b!77330 (= c!19335 lt!17362)))

(declare-fun d!54951 () Bool)

(declare-fun c!19337 () Bool)

(declare-fun lt!17363 () Bool)

(assert (=> d!54951 (= c!19337 lt!17363)))

(declare-fun lt!17366 () Bool)

(assert (=> d!54951 (= lt!17366 e!41800)))

(declare-fun c!19339 () Bool)

(declare-fun e!41810 () Bool)

(assert (=> d!54951 (= c!19339 e!41810)))

(declare-fun res!38763 () Bool)

(assert (=> d!54951 (=> res!38763 e!41810)))

(assert (=> d!54951 (= res!38763 lt!17362)))

(declare-fun lt!17364 () Bool)

(assert (=> d!54951 (= lt!17362 (and lt!17363 lt!17364))))

(declare-fun e!41801 () Bool)

(assert (=> d!54951 (= lt!17364 e!41801)))

(declare-fun c!19336 () Bool)

(assert (=> d!54951 (= c!19336 (or lt!17363 (is-Or!104 f!4501) (is-Implies!104 f!4501)))))

(assert (=> d!54951 (= lt!17363 (is-And!104 f!4501))))

(declare-fun e!41805 () Bool)

(assert (=> d!54951 (= (isNNF!0 f!4501) e!41805)))

(declare-fun b!77331 () Bool)

(declare-fun e!41809 () Formula!100)

(assert (=> b!77331 (= e!41809 (rhs!1413 f!4501))))

(declare-fun b!77332 () Bool)

(assert (=> b!77332 (= e!41808 lt!17366)))

(declare-fun b!77333 () Bool)

(declare-fun res!38770 () Bool)

(assert (=> b!77333 (= e!41801 res!38770)))

(assert (=> b!77333 true))

(declare-fun b!77334 () Bool)

(declare-fun e!41799 () Bool)

(assert (=> b!77334 (= e!41799 (or (and (is-Not!104 f!4501) (is-Literal!98 (f!4745 f!4501))) (not (is-Not!104 f!4501))))))

(declare-fun b!77335 () Bool)

(declare-fun res!38764 () Bool)

(assert (=> b!77335 (= e!41800 res!38764)))

(assert (=> b!77335 true))

(declare-fun b!77336 () Bool)

(declare-fun e!41812 () Bool)

(assert (=> b!77336 (= e!41812 lt!17364)))

(declare-fun b!77337 () Bool)

(declare-fun e!41811 () Bool)

(assert (=> b!77337 (= e!41811 lt!17364)))

(declare-fun b!77338 () Bool)

(declare-fun res!38769 () Bool)

(assert (=> b!77338 (= e!41812 res!38769)))

(assert (=> b!77338 true))

(declare-fun b!77339 () Bool)

(assert (=> b!77339 (= e!41804 e!41809)))

(declare-fun c!19338 () Bool)

(declare-fun e!41806 () Bool)

(assert (=> b!77339 (= c!19338 e!41806)))

(declare-fun res!38768 () Bool)

(assert (=> b!77339 (=> (not res!38768) (not e!41806))))

(declare-fun lt!17365 () Bool)

(assert (=> b!77339 (= res!38768 lt!17365)))

(assert (=> b!77339 (= lt!17365 (is-Or!104 f!4501))))

(declare-fun b!77340 () Bool)

(declare-fun res!38772 () Bool)

(assert (=> b!77340 (= e!41811 res!38772)))

(assert (=> b!77340 true))

(declare-fun e!41803 () Bool)

(declare-fun b!77341 () Bool)

(declare-fun lt!17361 () Bool)

(declare-fun lt!17368 () Bool)

(assert (=> b!77341 (= e!41803 (or (and lt!17368 lt!17361) (and (not lt!17368) (is-Implies!104 f!4501) lt!17361)))))

(assert (=> b!77341 (= lt!17361 e!41812)))

(declare-fun c!19341 () Bool)

(assert (=> b!77341 (= c!19341 (or lt!17368 (is-Implies!104 f!4501)))))

(assert (=> b!77341 (= lt!17368 (is-Or!104 f!4501))))

(declare-fun b!77342 () Bool)

(assert (=> b!77342 (= e!41805 (and lt!17364 lt!17366))))

(declare-fun b!77343 () Bool)

(declare-fun e!41802 () Bool)

(assert (=> b!77343 (= e!41799 e!41802)))

(declare-fun res!38767 () Bool)

(assert (=> b!77343 (=> (not res!38767) (not e!41802))))

(declare-fun lt!17369 () Bool)

(assert (=> b!77343 (= res!38767 lt!17369)))

(declare-fun b!77344 () Bool)

(declare-fun e!41807 () Bool)

(assert (=> b!77344 (= e!41806 e!41807)))

(declare-fun c!19340 () Bool)

(assert (=> b!77344 (= c!19340 (or lt!17365 (is-Implies!104 f!4501)))))

(declare-fun b!77345 () Bool)

(assert (=> b!77345 (= e!41809 (rhs!1415 f!4501))))

(declare-fun b!77346 () Bool)

(assert (=> b!77346 (= e!41802 e!41808)))

(declare-fun c!19334 () Bool)

(declare-fun lt!17367 () Bool)

(assert (=> b!77346 (= c!19334 (or (and lt!17367 lt!17369) (and (not lt!17367) (is-Implies!104 f!4501) lt!17369)))))

(declare-fun b!77347 () Bool)

(assert (=> b!77347 (= e!41807 lt!17364)))

(declare-fun b!77348 () Bool)

(declare-fun res!38765 () Bool)

(assert (=> b!77348 (= e!41807 res!38765)))

(assert (=> b!77348 true))

(declare-fun b!77349 () Bool)

(assert (=> b!77349 (= e!41801 (isNNF!0 (ite lt!17363 (lhs!1414 f!4501) (ite (is-Or!104 f!4501) (lhs!1415 f!4501) (lhs!1413 f!4501)))))))

(declare-fun b!77350 () Bool)

(assert (=> b!77350 (= e!41805 e!41799)))

(declare-fun c!19342 () Bool)

(assert (=> b!77350 (= c!19342 (or lt!17367 (is-Implies!104 f!4501)))))

(assert (=> b!77350 (= lt!17369 e!41811)))

(declare-fun c!19343 () Bool)

(assert (=> b!77350 (= c!19343 (or lt!17367 (is-Implies!104 f!4501)))))

(assert (=> b!77350 (= lt!17367 (is-Or!104 f!4501))))

(declare-fun b!77351 () Bool)

(assert (=> b!77351 (= e!41810 e!41803)))

(declare-fun res!38766 () Bool)

(assert (=> b!77351 (=> (not res!38766) (not e!41803))))

(assert (=> b!77351 (= res!38766 (not lt!17363))))

(assert (= (and d!54951 c!19336) b!77349))

(assert (= (and d!54951 (not c!19336)) b!77333))

(assert (= (and d!54951 (not res!38763)) b!77351))

(assert (= (and b!77351 res!38766) b!77341))

(assert (= (and b!77341 c!19341) b!77336))

(assert (= (and b!77341 (not c!19341)) b!77338))

(assert (= (and b!77339 res!38768) b!77344))

(assert (= (and b!77344 c!19340) b!77347))

(assert (= (and b!77344 (not c!19340)) b!77348))

(assert (= (and b!77339 c!19338) b!77345))

(assert (= (and b!77339 (not c!19338)) b!77331))

(assert (= (and b!77330 c!19335) b!77329))

(assert (= (and b!77330 (not c!19335)) b!77339))

(assert (= (and d!54951 c!19339) b!77330))

(assert (= (and d!54951 (not c!19339)) b!77335))

(assert (= (and b!77350 c!19343) b!77337))

(assert (= (and b!77350 (not c!19343)) b!77340))

(assert (= (and b!77343 res!38767) b!77346))

(assert (= (and b!77346 c!19334) b!77332))

(assert (= (and b!77346 (not c!19334)) b!77328))

(assert (= (and b!77350 c!19342) b!77343))

(assert (= (and b!77350 (not c!19342)) b!77334))

(assert (= (and d!54951 c!19337) b!77342))

(assert (= (and d!54951 (not c!19337)) b!77350))

(declare-fun m!73462 () Bool)

(assert (=> b!77330 m!73462))

(declare-fun m!73464 () Bool)

(assert (=> b!77349 m!73464))

(assert (=> start!10368 d!54951))

(push 1)

(assert (not b!77330))

(assert (not b!77306))

(assert (not b!77325))

(assert (not b!77349))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

