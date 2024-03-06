; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10372 () Bool)

(assert start!10372)

(declare-fun res!38777 () Bool)

(declare-fun e!41815 () Bool)

(assert (=> start!10372 (=> (not res!38777) (not e!41815))))

(declare-datatypes () ((Formula!101 (Implies!105 (lhs!1416 Formula!101) (rhs!1416 Formula!101)) (And!105 (lhs!1417 Formula!101) (rhs!1417 Formula!101)) (Or!105 (lhs!1418 Formula!101) (rhs!1418 Formula!101)) (Literal!99 (id!4962 (_ BitVec 32))) (Not!105 (f!4747 Formula!101)))))

(declare-fun f!4501 () Formula!101)

(declare-fun isNNF!0 (Formula!101) Bool)

(assert (=> start!10372 (= res!38777 (isNNF!0 f!4501))))

(assert (=> start!10372 e!41815))

(assert (=> start!10372 true))

(declare-fun b!77356 () Bool)

(declare-fun res!38778 () Bool)

(assert (=> b!77356 (=> (not res!38778) (not e!41815))))

(declare-fun f!4512 () Formula!101)

(assert (=> b!77356 (= res!38778 (and (not (is-And!105 f!4501)) (not (is-Or!105 f!4501)) (is-Implies!105 f!4501) (= f!4512 (lhs!1416 f!4501))))))

(declare-fun b!77357 () Bool)

(assert (=> b!77357 (= e!41815 (not (isNNF!0 f!4512)))))

(assert (= (and start!10372 res!38777) b!77356))

(assert (= (and b!77356 res!38778) b!77357))

(declare-fun m!73466 () Bool)

(assert (=> start!10372 m!73466))

(declare-fun m!73468 () Bool)

(assert (=> b!77357 m!73468))

(push 1)

(assert (not start!10372))

(assert (not b!77357))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!77406 () Bool)

(declare-fun e!41851 () Bool)

(declare-fun e!41856 () Bool)

(assert (=> b!77406 (= e!41851 e!41856)))

(declare-fun c!19367 () Bool)

(declare-fun lt!17394 () Bool)

(declare-fun lt!17392 () Bool)

(assert (=> b!77406 (= c!19367 (or (and lt!17392 lt!17394) (and (not lt!17392) (is-Implies!105 f!4501) lt!17394)))))

(declare-fun b!77407 () Bool)

(declare-fun e!41848 () Formula!101)

(assert (=> b!77407 (= e!41848 (rhs!1418 f!4501))))

(declare-fun b!77408 () Bool)

(declare-fun e!41852 () Bool)

(assert (=> b!77408 (= e!41852 e!41851)))

(declare-fun res!38817 () Bool)

(assert (=> b!77408 (=> (not res!38817) (not e!41851))))

(assert (=> b!77408 (= res!38817 lt!17394)))

(declare-fun b!77409 () Bool)

(declare-fun e!41846 () Bool)

(declare-fun e!41845 () Bool)

(assert (=> b!77409 (= e!41846 e!41845)))

(declare-fun res!38819 () Bool)

(assert (=> b!77409 (=> (not res!38819) (not e!41845))))

(declare-fun lt!17390 () Bool)

(assert (=> b!77409 (= res!38819 (not lt!17390))))

(declare-fun lt!17396 () Bool)

(declare-fun lt!17389 () Bool)

(declare-fun b!77410 () Bool)

(assert (=> b!77410 (= e!41845 (or (and lt!17389 lt!17396) (and (not lt!17389) (is-Implies!105 f!4501) lt!17396)))))

(declare-fun e!41847 () Bool)

(assert (=> b!77410 (= lt!17396 e!41847)))

(declare-fun c!19373 () Bool)

(assert (=> b!77410 (= c!19373 (or lt!17389 (is-Implies!105 f!4501)))))

(assert (=> b!77410 (= lt!17389 (is-Or!105 f!4501))))

(declare-fun b!77411 () Bool)

(declare-fun res!38816 () Bool)

(assert (=> b!77411 (= e!41856 res!38816)))

(assert (=> b!77411 true))

(assert (=> b!77411 true))

(declare-fun b!77412 () Bool)

(assert (=> b!77412 (= e!41852 (or (and (is-Not!105 f!4501) (is-Literal!99 (f!4747 f!4501))) (not (is-Not!105 f!4501))))))

(declare-fun b!77413 () Bool)

(declare-fun e!41853 () Bool)

(declare-fun res!38814 () Bool)

(assert (=> b!77413 (= e!41853 res!38814)))

(assert (=> b!77413 true))

(declare-fun b!77414 () Bool)

(declare-fun e!41850 () Bool)

(declare-fun res!38820 () Bool)

(assert (=> b!77414 (= e!41850 res!38820)))

(assert (=> b!77414 true))

(declare-fun b!77415 () Bool)

(declare-fun e!41849 () Bool)

(declare-fun lt!17395 () Bool)

(assert (=> b!77415 (= e!41849 lt!17395)))

(declare-fun b!77416 () Bool)

(assert (=> b!77416 (= e!41853 lt!17395)))

(declare-fun d!54953 () Bool)

(declare-fun c!19368 () Bool)

(assert (=> d!54953 (= c!19368 lt!17390)))

(declare-fun lt!17391 () Bool)

(assert (=> d!54953 (= lt!17391 e!41850)))

(declare-fun c!19370 () Bool)

(assert (=> d!54953 (= c!19370 e!41846)))

(declare-fun res!38821 () Bool)

(assert (=> d!54953 (=> res!38821 e!41846)))

(declare-fun lt!17393 () Bool)

(assert (=> d!54953 (= res!38821 lt!17393)))

(assert (=> d!54953 (= lt!17393 (and lt!17390 lt!17395))))

(declare-fun e!41854 () Bool)

(assert (=> d!54953 (= lt!17395 e!41854)))

(declare-fun c!19366 () Bool)

(assert (=> d!54953 (= c!19366 (or lt!17390 (is-Or!105 f!4501) (is-Implies!105 f!4501)))))

(assert (=> d!54953 (= lt!17390 (is-And!105 f!4501))))

(declare-fun e!41844 () Bool)

(assert (=> d!54953 (= (isNNF!0 f!4501) e!41844)))

(declare-fun b!77417 () Bool)

(declare-fun e!41857 () Formula!101)

(assert (=> b!77417 (= e!41857 (rhs!1417 f!4501))))

(declare-fun b!77418 () Bool)

(assert (=> b!77418 (= e!41848 (rhs!1416 f!4501))))

(declare-fun b!77419 () Bool)

(assert (=> b!77419 (= e!41857 e!41848)))

(declare-fun c!19372 () Bool)

(declare-fun e!41855 () Bool)

(assert (=> b!77419 (= c!19372 e!41855)))

(declare-fun res!38815 () Bool)

(assert (=> b!77419 (=> (not res!38815) (not e!41855))))

(declare-fun lt!17388 () Bool)

(assert (=> b!77419 (= res!38815 lt!17388)))

(assert (=> b!77419 (= lt!17388 (is-Or!105 f!4501))))

(declare-fun b!77420 () Bool)

(assert (=> b!77420 (= e!41856 lt!17391)))

(declare-fun b!77421 () Bool)

(assert (=> b!77421 (= e!41844 (and lt!17395 lt!17391))))

(declare-fun b!77422 () Bool)

(declare-fun res!38822 () Bool)

(assert (=> b!77422 (= e!41847 res!38822)))

(assert (=> b!77422 true))

(declare-fun b!77423 () Bool)

(declare-fun res!38818 () Bool)

(assert (=> b!77423 (= e!41854 res!38818)))

(assert (=> b!77423 true))

(declare-fun b!77424 () Bool)

(assert (=> b!77424 (= e!41854 (isNNF!0 (ite lt!17390 (lhs!1417 f!4501) (ite (is-Or!105 f!4501) (lhs!1418 f!4501) (lhs!1416 f!4501)))))))

(declare-fun b!77425 () Bool)

(assert (=> b!77425 (= e!41844 e!41852)))

(declare-fun c!19364 () Bool)

(assert (=> b!77425 (= c!19364 (or lt!17392 (is-Implies!105 f!4501)))))

(assert (=> b!77425 (= lt!17394 e!41849)))

(declare-fun c!19371 () Bool)

(assert (=> b!77425 (= c!19371 (or lt!17392 (is-Implies!105 f!4501)))))

(assert (=> b!77425 (= lt!17392 (is-Or!105 f!4501))))

(declare-fun b!77426 () Bool)

(assert (=> b!77426 (= e!41850 (isNNF!0 e!41857))))

(declare-fun c!19365 () Bool)

(assert (=> b!77426 (= c!19365 lt!17393)))

(declare-fun b!77427 () Bool)

(declare-fun res!38813 () Bool)

(assert (=> b!77427 (= e!41849 res!38813)))

(assert (=> b!77427 true))

(declare-fun b!77428 () Bool)

(assert (=> b!77428 (= e!41855 e!41853)))

(declare-fun c!19369 () Bool)

(assert (=> b!77428 (= c!19369 (or lt!17388 (is-Implies!105 f!4501)))))

(declare-fun b!77429 () Bool)

(assert (=> b!77429 (= e!41847 lt!17395)))

(assert (= (and d!54953 c!19366) b!77424))

(assert (= (and d!54953 (not c!19366)) b!77423))

(assert (= (and d!54953 (not res!38821)) b!77409))

(assert (= (and b!77409 res!38819) b!77410))

(assert (= (and b!77410 c!19373) b!77429))

(assert (= (and b!77410 (not c!19373)) b!77422))

(assert (= (and b!77419 res!38815) b!77428))

(assert (= (and b!77428 c!19369) b!77416))

(assert (= (and b!77428 (not c!19369)) b!77413))

(assert (= (and b!77419 c!19372) b!77407))

(assert (= (and b!77419 (not c!19372)) b!77418))

(assert (= (and b!77426 c!19365) b!77417))

(assert (= (and b!77426 (not c!19365)) b!77419))

(assert (= (and d!54953 c!19370) b!77426))

(assert (= (and d!54953 (not c!19370)) b!77414))

(assert (= (and b!77425 c!19371) b!77415))

(assert (= (and b!77425 (not c!19371)) b!77427))

(assert (= (and b!77408 res!38817) b!77406))

(assert (= (and b!77406 c!19367) b!77420))

(assert (= (and b!77406 (not c!19367)) b!77411))

(assert (= (and b!77425 c!19364) b!77408))

(assert (= (and b!77425 (not c!19364)) b!77412))

(assert (= (and d!54953 c!19368) b!77421))

(assert (= (and d!54953 (not c!19368)) b!77425))

(declare-fun m!73470 () Bool)

(assert (=> b!77424 m!73470))

(declare-fun m!73472 () Bool)

(assert (=> b!77426 m!73472))

(assert (=> start!10372 d!54953))

(declare-fun b!77430 () Bool)

(declare-fun e!41865 () Bool)

(declare-fun e!41870 () Bool)

(assert (=> b!77430 (= e!41865 e!41870)))

(declare-fun lt!17401 () Bool)

(declare-fun c!19377 () Bool)

(declare-fun lt!17403 () Bool)

(assert (=> b!77430 (= c!19377 (or (and lt!17401 lt!17403) (and (not lt!17401) (is-Implies!105 f!4512) lt!17403)))))

(declare-fun b!77431 () Bool)

(declare-fun e!41862 () Formula!101)

(assert (=> b!77431 (= e!41862 (rhs!1418 f!4512))))

(declare-fun b!77432 () Bool)

(declare-fun e!41866 () Bool)

(assert (=> b!77432 (= e!41866 e!41865)))

(declare-fun res!38827 () Bool)

(assert (=> b!77432 (=> (not res!38827) (not e!41865))))

(assert (=> b!77432 (= res!38827 lt!17403)))

(declare-fun b!77433 () Bool)

(declare-fun e!41860 () Bool)

(declare-fun e!41859 () Bool)

(assert (=> b!77433 (= e!41860 e!41859)))

(declare-fun res!38829 () Bool)

(assert (=> b!77433 (=> (not res!38829) (not e!41859))))

(declare-fun lt!17399 () Bool)

(assert (=> b!77433 (= res!38829 (not lt!17399))))

(declare-fun lt!17398 () Bool)

(declare-fun lt!17405 () Bool)

(declare-fun b!77434 () Bool)

(assert (=> b!77434 (= e!41859 (or (and lt!17398 lt!17405) (and (not lt!17398) (is-Implies!105 f!4512) lt!17405)))))

(declare-fun e!41861 () Bool)

(assert (=> b!77434 (= lt!17405 e!41861)))

(declare-fun c!19383 () Bool)

(assert (=> b!77434 (= c!19383 (or lt!17398 (is-Implies!105 f!4512)))))

(assert (=> b!77434 (= lt!17398 (is-Or!105 f!4512))))

(declare-fun b!77435 () Bool)

(declare-fun res!38826 () Bool)

(assert (=> b!77435 (= e!41870 res!38826)))

(assert (=> b!77435 true))

(assert (=> b!77435 true))

(declare-fun b!77436 () Bool)

(assert (=> b!77436 (= e!41866 (or (and (is-Not!105 f!4512) (is-Literal!99 (f!4747 f!4512))) (not (is-Not!105 f!4512))))))

(declare-fun b!77437 () Bool)

(declare-fun e!41867 () Bool)

(declare-fun res!38824 () Bool)

(assert (=> b!77437 (= e!41867 res!38824)))

(assert (=> b!77437 true))

(declare-fun b!77438 () Bool)

(declare-fun e!41864 () Bool)

(declare-fun res!38830 () Bool)

(assert (=> b!77438 (= e!41864 res!38830)))

(assert (=> b!77438 true))

(declare-fun b!77439 () Bool)

(declare-fun e!41863 () Bool)

(declare-fun lt!17404 () Bool)

(assert (=> b!77439 (= e!41863 lt!17404)))

(declare-fun b!77440 () Bool)

(assert (=> b!77440 (= e!41867 lt!17404)))

(declare-fun d!54955 () Bool)

(declare-fun c!19378 () Bool)

(assert (=> d!54955 (= c!19378 lt!17399)))

(declare-fun lt!17400 () Bool)

(assert (=> d!54955 (= lt!17400 e!41864)))

(declare-fun c!19380 () Bool)

(assert (=> d!54955 (= c!19380 e!41860)))

(declare-fun res!38831 () Bool)

(assert (=> d!54955 (=> res!38831 e!41860)))

(declare-fun lt!17402 () Bool)

(assert (=> d!54955 (= res!38831 lt!17402)))

(assert (=> d!54955 (= lt!17402 (and lt!17399 lt!17404))))

(declare-fun e!41868 () Bool)

(assert (=> d!54955 (= lt!17404 e!41868)))

(declare-fun c!19376 () Bool)

(assert (=> d!54955 (= c!19376 (or lt!17399 (is-Or!105 f!4512) (is-Implies!105 f!4512)))))

(assert (=> d!54955 (= lt!17399 (is-And!105 f!4512))))

(declare-fun e!41858 () Bool)

(assert (=> d!54955 (= (isNNF!0 f!4512) e!41858)))

(declare-fun b!77441 () Bool)

(declare-fun e!41871 () Formula!101)

(assert (=> b!77441 (= e!41871 (rhs!1417 f!4512))))

(declare-fun b!77442 () Bool)

(assert (=> b!77442 (= e!41862 (rhs!1416 f!4512))))

(declare-fun b!77443 () Bool)

(assert (=> b!77443 (= e!41871 e!41862)))

(declare-fun c!19382 () Bool)

(declare-fun e!41869 () Bool)

(assert (=> b!77443 (= c!19382 e!41869)))

(declare-fun res!38825 () Bool)

(assert (=> b!77443 (=> (not res!38825) (not e!41869))))

(declare-fun lt!17397 () Bool)

(assert (=> b!77443 (= res!38825 lt!17397)))

(assert (=> b!77443 (= lt!17397 (is-Or!105 f!4512))))

(declare-fun b!77444 () Bool)

(assert (=> b!77444 (= e!41870 lt!17400)))

(declare-fun b!77445 () Bool)

(assert (=> b!77445 (= e!41858 (and lt!17404 lt!17400))))

(declare-fun b!77446 () Bool)

(declare-fun res!38832 () Bool)

(assert (=> b!77446 (= e!41861 res!38832)))

(assert (=> b!77446 true))

(declare-fun b!77447 () Bool)

(declare-fun res!38828 () Bool)

(assert (=> b!77447 (= e!41868 res!38828)))

(assert (=> b!77447 true))

(declare-fun b!77448 () Bool)

(assert (=> b!77448 (= e!41868 (isNNF!0 (ite lt!17399 (lhs!1417 f!4512) (ite (is-Or!105 f!4512) (lhs!1418 f!4512) (lhs!1416 f!4512)))))))

(declare-fun b!77449 () Bool)

(assert (=> b!77449 (= e!41858 e!41866)))

(declare-fun c!19374 () Bool)

(assert (=> b!77449 (= c!19374 (or lt!17401 (is-Implies!105 f!4512)))))

(assert (=> b!77449 (= lt!17403 e!41863)))

(declare-fun c!19381 () Bool)

(assert (=> b!77449 (= c!19381 (or lt!17401 (is-Implies!105 f!4512)))))

(assert (=> b!77449 (= lt!17401 (is-Or!105 f!4512))))

(declare-fun b!77450 () Bool)

(assert (=> b!77450 (= e!41864 (isNNF!0 e!41871))))

(declare-fun c!19375 () Bool)

(assert (=> b!77450 (= c!19375 lt!17402)))

(declare-fun b!77451 () Bool)

(declare-fun res!38823 () Bool)

(assert (=> b!77451 (= e!41863 res!38823)))

(assert (=> b!77451 true))

(declare-fun b!77452 () Bool)

(assert (=> b!77452 (= e!41869 e!41867)))

(declare-fun c!19379 () Bool)

(assert (=> b!77452 (= c!19379 (or lt!17397 (is-Implies!105 f!4512)))))

(declare-fun b!77453 () Bool)

(assert (=> b!77453 (= e!41861 lt!17404)))

(assert (= (and d!54955 c!19376) b!77448))

(assert (= (and d!54955 (not c!19376)) b!77447))

(assert (= (and d!54955 (not res!38831)) b!77433))

(assert (= (and b!77433 res!38829) b!77434))

(assert (= (and b!77434 c!19383) b!77453))

(assert (= (and b!77434 (not c!19383)) b!77446))

(assert (= (and b!77443 res!38825) b!77452))

(assert (= (and b!77452 c!19379) b!77440))

(assert (= (and b!77452 (not c!19379)) b!77437))

(assert (= (and b!77443 c!19382) b!77431))

(assert (= (and b!77443 (not c!19382)) b!77442))

(assert (= (and b!77450 c!19375) b!77441))

(assert (= (and b!77450 (not c!19375)) b!77443))

(assert (= (and d!54955 c!19380) b!77450))

(assert (= (and d!54955 (not c!19380)) b!77438))

(assert (= (and b!77449 c!19381) b!77439))

(assert (= (and b!77449 (not c!19381)) b!77451))

(assert (= (and b!77432 res!38827) b!77430))

(assert (= (and b!77430 c!19377) b!77444))

(assert (= (and b!77430 (not c!19377)) b!77435))

(assert (= (and b!77449 c!19374) b!77432))

(assert (= (and b!77449 (not c!19374)) b!77436))

(assert (= (and d!54955 c!19378) b!77445))

(assert (= (and d!54955 (not c!19378)) b!77449))

(declare-fun m!73474 () Bool)

(assert (=> b!77448 m!73474))

(declare-fun m!73476 () Bool)

(assert (=> b!77450 m!73476))

(assert (=> b!77357 d!54955))

(push 1)

(assert (not b!77448))

(assert (not b!77424))

(assert (not b!77426))

(assert (not b!77450))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

