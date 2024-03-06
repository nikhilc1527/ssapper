; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12412 () Bool)

(assert start!12412)

(declare-fun res!48289 () Bool)

(declare-fun e!50290 () Bool)

(assert (=> start!12412 (=> (not res!48289) (not e!50290))))

(declare-fun i!635 () Int)

(assert (=> start!12412 (= res!48289 (and (>= i!635 0) (not (= i!635 0))))))

(assert (=> start!12412 e!50290))

(assert (=> start!12412 true))

(declare-fun b!91840 () Bool)

(declare-fun res!48290 () Bool)

(assert (=> b!91840 (=> (not res!48290) (not e!50290))))

(declare-datatypes () ((List!784 (Cons!730 (head!1115 (_ BitVec 32)) (tail!1111 List!784)) (Nil!732))))

(declare-fun size!30 (List!784) Int)

(declare-fun listOfSize2!1 (Int) List!784)

(assert (=> b!91840 (= res!48290 (= (size!30 (listOfSize2!1 (- i!635 1))) (- i!635 1)))))

(declare-fun b!91841 () Bool)

(declare-fun res!48291 () Bool)

(assert (=> b!91841 (=> (not res!48291) (not e!50290))))

(declare-fun x$1!1236 () List!784)

(declare-fun res!291 () List!784)

(assert (=> b!91841 (= res!48291 (= x$1!1236 res!291))))

(assert (=> b!91841 (= (size!30 res!291) (- i!635 1))))

(declare-fun b!91842 () Bool)

(assert (=> b!91842 (= e!50290 (not (= (size!30 x$1!1236) i!635)))))

(assert (= (and start!12412 res!48289) b!91840))

(assert (= (and b!91840 res!48290) b!91841))

(assert (= (and b!91841 res!48291) b!91842))

(declare-fun m!87698 () Bool)

(assert (=> b!91840 m!87698))

(assert (=> b!91840 m!87698))

(declare-fun m!87700 () Bool)

(assert (=> b!91840 m!87700))

(declare-fun m!87702 () Bool)

(assert (=> b!91841 m!87702))

(declare-fun m!87704 () Bool)

(assert (=> b!91842 m!87704))

(push 1)

(assert (not b!91842))

(assert (not b!91841))

(assert (not b!91840))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60344 () Bool)

(declare-fun lt!20761 () Int)

(assert (=> d!60344 (>= lt!20761 0)))

(declare-fun e!50293 () Int)

(assert (=> d!60344 (= lt!20761 e!50293)))

(declare-fun c!22356 () Bool)

(assert (=> d!60344 (= c!22356 (is-Nil!732 x$1!1236))))

(assert (=> d!60344 (= (size!30 x$1!1236) lt!20761)))

(declare-fun b!91847 () Bool)

(assert (=> b!91847 (= e!50293 0)))

(declare-fun b!91848 () Bool)

(assert (=> b!91848 (= e!50293 (+ 1 (size!30 (tail!1111 x$1!1236))))))

(assert (= (and d!60344 c!22356) b!91847))

(assert (= (and d!60344 (not c!22356)) b!91848))

(declare-fun m!87706 () Bool)

(assert (=> b!91848 m!87706))

(assert (=> b!91842 d!60344))

(declare-fun d!60346 () Bool)

(declare-fun lt!20762 () Int)

(assert (=> d!60346 (>= lt!20762 0)))

(declare-fun e!50294 () Int)

(assert (=> d!60346 (= lt!20762 e!50294)))

(declare-fun c!22357 () Bool)

(assert (=> d!60346 (= c!22357 (is-Nil!732 res!291))))

(assert (=> d!60346 (= (size!30 res!291) lt!20762)))

(declare-fun b!91849 () Bool)

(assert (=> b!91849 (= e!50294 0)))

(declare-fun b!91850 () Bool)

(assert (=> b!91850 (= e!50294 (+ 1 (size!30 (tail!1111 res!291))))))

(assert (= (and d!60346 c!22357) b!91849))

(assert (= (and d!60346 (not c!22357)) b!91850))

(declare-fun m!87708 () Bool)

(assert (=> b!91850 m!87708))

(assert (=> b!91841 d!60346))

(declare-fun d!60348 () Bool)

(declare-fun lt!20763 () Int)

(assert (=> d!60348 (>= lt!20763 0)))

(declare-fun e!50295 () Int)

(assert (=> d!60348 (= lt!20763 e!50295)))

(declare-fun c!22358 () Bool)

(assert (=> d!60348 (= c!22358 (is-Nil!732 (listOfSize2!1 (- i!635 1))))))

(assert (=> d!60348 (= (size!30 (listOfSize2!1 (- i!635 1))) lt!20763)))

(declare-fun b!91851 () Bool)

(assert (=> b!91851 (= e!50295 0)))

(declare-fun b!91852 () Bool)

(assert (=> b!91852 (= e!50295 (+ 1 (size!30 (tail!1111 (listOfSize2!1 (- i!635 1))))))))

(assert (= (and d!60348 c!22358) b!91851))

(assert (= (and d!60348 (not c!22358)) b!91852))

(declare-fun m!87710 () Bool)

(assert (=> b!91852 m!87710))

(assert (=> b!91840 d!60348))

(declare-fun d!60350 () Bool)

(declare-fun lt!20766 () List!784)

(assert (=> d!60350 (= (size!30 lt!20766) (- i!635 1))))

(declare-fun e!50298 () List!784)

(assert (=> d!60350 (= lt!20766 e!50298)))

(declare-fun c!22361 () Bool)

(assert (=> d!60350 (= c!22361 (> (- i!635 1) 0))))

(assert (=> d!60350 (>= (- i!635 1) 0)))

(assert (=> d!60350 (= (listOfSize2!1 (- i!635 1)) lt!20766)))

(declare-fun b!91857 () Bool)

(declare-fun listOfSize!1 (Int) List!784)

(assert (=> b!91857 (= e!50298 (Cons!730 #b00000000000000000000000000000000 (listOfSize!1 (- (- i!635 1) 1))))))

(declare-fun b!91858 () Bool)

(assert (=> b!91858 (= e!50298 Nil!732)))

(assert (= (and d!60350 c!22361) b!91857))

(assert (= (and d!60350 (not c!22361)) b!91858))

(declare-fun m!87712 () Bool)

(assert (=> d!60350 m!87712))

(declare-fun m!87714 () Bool)

(assert (=> b!91857 m!87714))

(assert (=> b!91840 d!60350))

(push 1)

(assert (not b!91850))

(assert (not d!60350))

(assert (not b!91848))

(assert (not b!91852))

(assert (not b!91857))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60352 () Bool)

(declare-fun lt!20767 () Int)

(assert (=> d!60352 (>= lt!20767 0)))

(declare-fun e!50299 () Int)

(assert (=> d!60352 (= lt!20767 e!50299)))

(declare-fun c!22362 () Bool)

(assert (=> d!60352 (= c!22362 (is-Nil!732 lt!20766))))

(assert (=> d!60352 (= (size!30 lt!20766) lt!20767)))

(declare-fun b!91859 () Bool)

(assert (=> b!91859 (= e!50299 0)))

(declare-fun b!91860 () Bool)

(assert (=> b!91860 (= e!50299 (+ 1 (size!30 (tail!1111 lt!20766))))))

(assert (= (and d!60352 c!22362) b!91859))

(assert (= (and d!60352 (not c!22362)) b!91860))

(declare-fun m!87716 () Bool)

(assert (=> b!91860 m!87716))

(assert (=> d!60350 d!60352))

(declare-fun d!60354 () Bool)

(declare-fun lt!20770 () List!784)

(assert (=> d!60354 (= (size!30 lt!20770) (- (- i!635 1) 1))))

(declare-fun e!50302 () List!784)

(assert (=> d!60354 (= lt!20770 e!50302)))

(declare-fun c!22365 () Bool)

(assert (=> d!60354 (= c!22365 (= (- (- i!635 1) 1) 0))))

(assert (=> d!60354 (>= (- (- i!635 1) 1) 0)))

(assert (=> d!60354 (= (listOfSize!1 (- (- i!635 1) 1)) lt!20770)))

(declare-fun b!91865 () Bool)

(assert (=> b!91865 (= e!50302 Nil!732)))

(declare-fun b!91866 () Bool)

(declare-fun choose!56 (Int) List!784)

(assert (=> b!91866 (= e!50302 (choose!56 (- (- i!635 1) 1)))))

(assert (= (and d!60354 c!22365) b!91865))

(assert (= (and d!60354 (not c!22365)) b!91866))

(declare-fun m!87718 () Bool)

(assert (=> d!60354 m!87718))

(declare-fun m!87720 () Bool)

(assert (=> b!91866 m!87720))

(assert (=> b!91857 d!60354))

(declare-fun d!60356 () Bool)

(declare-fun lt!20771 () Int)

(assert (=> d!60356 (>= lt!20771 0)))

(declare-fun e!50303 () Int)

(assert (=> d!60356 (= lt!20771 e!50303)))

(declare-fun c!22366 () Bool)

(assert (=> d!60356 (= c!22366 (is-Nil!732 (tail!1111 (listOfSize2!1 (- i!635 1)))))))

(assert (=> d!60356 (= (size!30 (tail!1111 (listOfSize2!1 (- i!635 1)))) lt!20771)))

(declare-fun b!91867 () Bool)

(assert (=> b!91867 (= e!50303 0)))

(declare-fun b!91868 () Bool)

(assert (=> b!91868 (= e!50303 (+ 1 (size!30 (tail!1111 (tail!1111 (listOfSize2!1 (- i!635 1)))))))))

(assert (= (and d!60356 c!22366) b!91867))

(assert (= (and d!60356 (not c!22366)) b!91868))

(declare-fun m!87722 () Bool)

(assert (=> b!91868 m!87722))

(assert (=> b!91852 d!60356))

(declare-fun d!60358 () Bool)

(declare-fun lt!20772 () Int)

(assert (=> d!60358 (>= lt!20772 0)))

(declare-fun e!50304 () Int)

(assert (=> d!60358 (= lt!20772 e!50304)))

(declare-fun c!22367 () Bool)

(assert (=> d!60358 (= c!22367 (is-Nil!732 (tail!1111 x$1!1236)))))

(assert (=> d!60358 (= (size!30 (tail!1111 x$1!1236)) lt!20772)))

(declare-fun b!91869 () Bool)

(assert (=> b!91869 (= e!50304 0)))

(declare-fun b!91870 () Bool)

(assert (=> b!91870 (= e!50304 (+ 1 (size!30 (tail!1111 (tail!1111 x$1!1236)))))))

(assert (= (and d!60358 c!22367) b!91869))

(assert (= (and d!60358 (not c!22367)) b!91870))

(declare-fun m!87724 () Bool)

(assert (=> b!91870 m!87724))

(assert (=> b!91848 d!60358))

(declare-fun d!60360 () Bool)

(declare-fun lt!20773 () Int)

(assert (=> d!60360 (>= lt!20773 0)))

(declare-fun e!50305 () Int)

(assert (=> d!60360 (= lt!20773 e!50305)))

(declare-fun c!22368 () Bool)

(assert (=> d!60360 (= c!22368 (is-Nil!732 (tail!1111 res!291)))))

(assert (=> d!60360 (= (size!30 (tail!1111 res!291)) lt!20773)))

(declare-fun b!91871 () Bool)

(assert (=> b!91871 (= e!50305 0)))

(declare-fun b!91872 () Bool)

(assert (=> b!91872 (= e!50305 (+ 1 (size!30 (tail!1111 (tail!1111 res!291)))))))

(assert (= (and d!60360 c!22368) b!91871))

(assert (= (and d!60360 (not c!22368)) b!91872))

(declare-fun m!87726 () Bool)

(assert (=> b!91872 m!87726))

(assert (=> b!91850 d!60360))

(push 1)

(assert (not b!91868))

(assert (not b!91860))

(assert (not b!91870))

(assert (not b!91872))

(assert (not d!60354))

(assert (not b!91866))

(check-sat)

(get-model)

(pop 1)

