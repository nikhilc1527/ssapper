; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15592 () Bool)

(assert start!15592)

(declare-fun res!50991 () Bool)

(declare-fun e!53760 () Bool)

(assert (=> start!15592 (=> (not res!50991) (not e!53760))))

(declare-datatypes () ((Color!22 (Red!20) (Black!20))))

(declare-datatypes () ((Tree!142 (Empty!205) (Node!186 (color!77 Color!22) (left!2059 Tree!142) (value!10264 (_ BitVec 32)) (right!2065 Tree!142)))))

(declare-fun t!56282 () Tree!142)

(declare-fun redNodesHaveBlackChildren!1 (Tree!142) Bool)

(assert (=> start!15592 (= res!50991 (redNodesHaveBlackChildren!1 t!56282))))

(assert (=> start!15592 e!53760))

(assert (=> start!15592 true))

(declare-fun b!98386 () Bool)

(declare-fun res!50992 () Bool)

(assert (=> b!98386 (=> (not res!50992) (not e!53760))))

(declare-fun t!56285 () Tree!142)

(declare-fun x!35304 () (_ BitVec 32))

(declare-fun x!35303 () (_ BitVec 32))

(assert (=> b!98386 (= res!50992 (and (= x!35304 x!35303) (= t!56285 t!56282)))))

(declare-fun b!98387 () Bool)

(declare-fun e!53761 () Bool)

(assert (=> b!98387 (= e!53760 e!53761)))

(declare-fun res!50990 () Bool)

(assert (=> b!98387 (=> res!50990 e!53761)))

(assert (=> b!98387 (= res!50990 (not (redNodesHaveBlackChildren!1 t!56285)))))

(declare-fun b!98388 () Bool)

(declare-fun blackBalanced!1 (Tree!142) Bool)

(assert (=> b!98388 (= e!53761 (not (blackBalanced!1 t!56285)))))

(assert (= (and start!15592 res!50991) b!98386))

(assert (= (and b!98386 res!50992) b!98387))

(assert (= (and b!98387 (not res!50990)) b!98388))

(declare-fun m!92405 () Bool)

(assert (=> start!15592 m!92405))

(declare-fun m!92407 () Bool)

(assert (=> b!98387 m!92407))

(declare-fun m!92409 () Bool)

(assert (=> b!98388 m!92409))

(push 1)

(assert (not b!98387))

(assert (not start!15592))

(assert (not b!98388))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!98403 () Bool)

(declare-fun res!51005 () Bool)

(declare-fun e!53772 () Bool)

(assert (=> b!98403 (=> (not res!51005) (not e!53772))))

(assert (=> b!98403 (= res!51005 (redNodesHaveBlackChildren!1 (left!2059 t!56285)))))

(declare-fun b!98404 () Bool)

(declare-fun e!53773 () Bool)

(declare-fun e!53770 () Bool)

(assert (=> b!98404 (= e!53773 e!53770)))

(declare-fun res!51006 () Bool)

(assert (=> b!98404 (=> (not res!51006) (not e!53770))))

(assert (=> b!98404 (= res!51006 (redNodesHaveBlackChildren!1 (left!2059 t!56285)))))

(declare-fun b!98405 () Bool)

(assert (=> b!98405 (= e!53770 (redNodesHaveBlackChildren!1 (right!2065 t!56285)))))

(declare-fun b!98406 () Bool)

(declare-fun res!51007 () Bool)

(assert (=> b!98406 (=> (not res!51007) (not e!53772))))

(declare-fun isBlack!1 (Tree!142) Bool)

(assert (=> b!98406 (= res!51007 (isBlack!1 (right!2065 t!56285)))))

(declare-fun d!63241 () Bool)

(declare-fun res!51003 () Bool)

(declare-fun e!53771 () Bool)

(assert (=> d!63241 (=> res!51003 e!53771)))

(assert (=> d!63241 (= res!51003 (is-Empty!205 t!56285))))

(assert (=> d!63241 (= (redNodesHaveBlackChildren!1 t!56285) e!53771)))

(declare-fun b!98407 () Bool)

(assert (=> b!98407 (= e!53771 e!53773)))

(declare-fun c!24620 () Bool)

(assert (=> b!98407 (= c!24620 (and (is-Node!186 t!56285) (is-Black!20 (color!77 t!56285))))))

(declare-fun b!98408 () Bool)

(assert (=> b!98408 (= e!53773 e!53772)))

(declare-fun res!51004 () Bool)

(assert (=> b!98408 (=> (not res!51004) (not e!53772))))

(assert (=> b!98408 (= res!51004 (isBlack!1 (left!2059 t!56285)))))

(declare-fun b!98409 () Bool)

(assert (=> b!98409 (= e!53772 (redNodesHaveBlackChildren!1 (right!2065 t!56285)))))

(assert (= (and d!63241 (not res!51003)) b!98407))

(assert (= (and b!98404 res!51006) b!98405))

(assert (= (and b!98408 res!51004) b!98406))

(assert (= (and b!98406 res!51007) b!98403))

(assert (= (and b!98403 res!51005) b!98409))

(assert (= (and b!98407 c!24620) b!98404))

(assert (= (and b!98407 (not c!24620)) b!98408))

(declare-fun m!92411 () Bool)

(assert (=> b!98403 m!92411))

(declare-fun m!92413 () Bool)

(assert (=> b!98409 m!92413))

(assert (=> b!98404 m!92411))

(declare-fun m!92415 () Bool)

(assert (=> b!98406 m!92415))

(declare-fun m!92417 () Bool)

(assert (=> b!98408 m!92417))

(assert (=> b!98405 m!92413))

(assert (=> b!98387 d!63241))

(declare-fun b!98410 () Bool)

(declare-fun res!51010 () Bool)

(declare-fun e!53776 () Bool)

(assert (=> b!98410 (=> (not res!51010) (not e!53776))))

(assert (=> b!98410 (= res!51010 (redNodesHaveBlackChildren!1 (left!2059 t!56282)))))

(declare-fun b!98411 () Bool)

(declare-fun e!53777 () Bool)

(declare-fun e!53774 () Bool)

(assert (=> b!98411 (= e!53777 e!53774)))

(declare-fun res!51011 () Bool)

(assert (=> b!98411 (=> (not res!51011) (not e!53774))))

(assert (=> b!98411 (= res!51011 (redNodesHaveBlackChildren!1 (left!2059 t!56282)))))

(declare-fun b!98412 () Bool)

(assert (=> b!98412 (= e!53774 (redNodesHaveBlackChildren!1 (right!2065 t!56282)))))

(declare-fun b!98413 () Bool)

(declare-fun res!51012 () Bool)

(assert (=> b!98413 (=> (not res!51012) (not e!53776))))

(assert (=> b!98413 (= res!51012 (isBlack!1 (right!2065 t!56282)))))

(declare-fun d!63243 () Bool)

(declare-fun res!51008 () Bool)

(declare-fun e!53775 () Bool)

(assert (=> d!63243 (=> res!51008 e!53775)))

(assert (=> d!63243 (= res!51008 (is-Empty!205 t!56282))))

(assert (=> d!63243 (= (redNodesHaveBlackChildren!1 t!56282) e!53775)))

(declare-fun b!98414 () Bool)

(assert (=> b!98414 (= e!53775 e!53777)))

(declare-fun c!24621 () Bool)

(assert (=> b!98414 (= c!24621 (and (is-Node!186 t!56282) (is-Black!20 (color!77 t!56282))))))

(declare-fun b!98415 () Bool)

(assert (=> b!98415 (= e!53777 e!53776)))

(declare-fun res!51009 () Bool)

(assert (=> b!98415 (=> (not res!51009) (not e!53776))))

(assert (=> b!98415 (= res!51009 (isBlack!1 (left!2059 t!56282)))))

(declare-fun b!98416 () Bool)

(assert (=> b!98416 (= e!53776 (redNodesHaveBlackChildren!1 (right!2065 t!56282)))))

(assert (= (and d!63243 (not res!51008)) b!98414))

(assert (= (and b!98411 res!51011) b!98412))

(assert (= (and b!98415 res!51009) b!98413))

(assert (= (and b!98413 res!51012) b!98410))

(assert (= (and b!98410 res!51010) b!98416))

(assert (= (and b!98414 c!24621) b!98411))

(assert (= (and b!98414 (not c!24621)) b!98415))

(declare-fun m!92419 () Bool)

(assert (=> b!98410 m!92419))

(declare-fun m!92421 () Bool)

(assert (=> b!98416 m!92421))

(assert (=> b!98411 m!92419))

(declare-fun m!92423 () Bool)

(assert (=> b!98413 m!92423))

(declare-fun m!92425 () Bool)

(assert (=> b!98415 m!92425))

(assert (=> b!98412 m!92421))

(assert (=> start!15592 d!63243))

(declare-fun d!63245 () Bool)

(declare-fun res!51021 () Bool)

(declare-fun e!53783 () Bool)

(assert (=> d!63245 (=> res!51021 e!53783)))

(assert (=> d!63245 (= res!51021 (not (is-Node!186 t!56285)))))

(assert (=> d!63245 (= (blackBalanced!1 t!56285) e!53783)))

(declare-fun b!98423 () Bool)

(declare-fun e!53782 () Bool)

(assert (=> b!98423 (= e!53783 e!53782)))

(declare-fun res!51020 () Bool)

(assert (=> b!98423 (=> (not res!51020) (not e!53782))))

(assert (=> b!98423 (= res!51020 (blackBalanced!1 (left!2059 t!56285)))))

(declare-fun b!98424 () Bool)

(declare-fun res!51019 () Bool)

(assert (=> b!98424 (=> (not res!51019) (not e!53782))))

(assert (=> b!98424 (= res!51019 (blackBalanced!1 (right!2065 t!56285)))))

(declare-fun b!98425 () Bool)

(declare-fun blackHeight!1 (Tree!142) (_ BitVec 32))

(assert (=> b!98425 (= e!53782 (= (blackHeight!1 (left!2059 t!56285)) (blackHeight!1 (right!2065 t!56285))))))

(assert (= (and d!63245 (not res!51021)) b!98423))

(assert (= (and b!98423 res!51020) b!98424))

(assert (= (and b!98424 res!51019) b!98425))

(declare-fun m!92427 () Bool)

(assert (=> b!98423 m!92427))

(declare-fun m!92429 () Bool)

(assert (=> b!98424 m!92429))

(declare-fun m!92431 () Bool)

(assert (=> b!98425 m!92431))

(declare-fun m!92433 () Bool)

(assert (=> b!98425 m!92433))

(assert (=> b!98388 d!63245))

(push 1)

(assert (not b!98410))

(assert (not b!98405))

(assert (not b!98406))

(assert (not b!98403))

(assert (not b!98404))

(assert (not b!98416))

(assert (not b!98409))

(assert (not b!98411))

(assert (not b!98413))

(assert (not b!98425))

(assert (not b!98412))

(assert (not b!98408))

(assert (not b!98415))

(assert (not b!98424))

(assert (not b!98423))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!98431 () Bool)

(declare-fun e!53786 () (_ BitVec 32))

(declare-fun lt!23046 () (_ BitVec 32))

(assert (=> b!98431 (= e!53786 (ite (and (is-Node!186 (left!2059 t!56285)) (is-Black!20 (color!77 (left!2059 t!56285)))) (bvadd lt!23046 #b00000000000000000000000000000001) lt!23046))))

(assert (=> b!98431 (= lt!23046 (blackHeight!1 (left!2059 (left!2059 t!56285))))))

(declare-fun d!63247 () Bool)

(declare-fun c!24624 () Bool)

(assert (=> d!63247 (= c!24624 (is-Empty!205 (left!2059 t!56285)))))

(assert (=> d!63247 (= (blackHeight!1 (left!2059 t!56285)) e!53786)))

(declare-fun b!98430 () Bool)

(assert (=> b!98430 (= e!53786 #b00000000000000000000000000000001)))

(assert (= (and d!63247 c!24624) b!98430))

(assert (= (and d!63247 (not c!24624)) b!98431))

(declare-fun m!92435 () Bool)

(assert (=> b!98431 m!92435))

(assert (=> b!98425 d!63247))

(declare-fun b!98433 () Bool)

(declare-fun e!53787 () (_ BitVec 32))

(declare-fun lt!23047 () (_ BitVec 32))

(assert (=> b!98433 (= e!53787 (ite (and (is-Node!186 (right!2065 t!56285)) (is-Black!20 (color!77 (right!2065 t!56285)))) (bvadd lt!23047 #b00000000000000000000000000000001) lt!23047))))

(assert (=> b!98433 (= lt!23047 (blackHeight!1 (left!2059 (right!2065 t!56285))))))

(declare-fun d!63249 () Bool)

(declare-fun c!24625 () Bool)

(assert (=> d!63249 (= c!24625 (is-Empty!205 (right!2065 t!56285)))))

(assert (=> d!63249 (= (blackHeight!1 (right!2065 t!56285)) e!53787)))

(declare-fun b!98432 () Bool)

(assert (=> b!98432 (= e!53787 #b00000000000000000000000000000001)))

(assert (= (and d!63249 c!24625) b!98432))

(assert (= (and d!63249 (not c!24625)) b!98433))

(declare-fun m!92437 () Bool)

(assert (=> b!98433 m!92437))

(assert (=> b!98425 d!63249))

(declare-fun d!63251 () Bool)

(assert (=> d!63251 (= (isBlack!1 (right!2065 t!56282)) (or (is-Empty!205 (right!2065 t!56282)) (and (is-Node!186 (right!2065 t!56282)) (is-Black!20 (color!77 (right!2065 t!56282))))))))

(assert (=> b!98413 d!63251))

(declare-fun b!98434 () Bool)

(declare-fun res!51027 () Bool)

(declare-fun e!53790 () Bool)

(assert (=> b!98434 (=> (not res!51027) (not e!53790))))

(assert (=> b!98434 (= res!51027 (redNodesHaveBlackChildren!1 (left!2059 (left!2059 t!56285))))))

(declare-fun b!98435 () Bool)

(declare-fun e!53791 () Bool)

(declare-fun e!53788 () Bool)

(assert (=> b!98435 (= e!53791 e!53788)))

(declare-fun res!51028 () Bool)

(assert (=> b!98435 (=> (not res!51028) (not e!53788))))

(assert (=> b!98435 (= res!51028 (redNodesHaveBlackChildren!1 (left!2059 (left!2059 t!56285))))))

(declare-fun b!98436 () Bool)

(assert (=> b!98436 (= e!53788 (redNodesHaveBlackChildren!1 (right!2065 (left!2059 t!56285))))))

(declare-fun b!98437 () Bool)

(declare-fun res!51029 () Bool)

(assert (=> b!98437 (=> (not res!51029) (not e!53790))))

(assert (=> b!98437 (= res!51029 (isBlack!1 (right!2065 (left!2059 t!56285))))))

(declare-fun d!63253 () Bool)

(declare-fun res!51025 () Bool)

(declare-fun e!53789 () Bool)

(assert (=> d!63253 (=> res!51025 e!53789)))

(assert (=> d!63253 (= res!51025 (is-Empty!205 (left!2059 t!56285)))))

(assert (=> d!63253 (= (redNodesHaveBlackChildren!1 (left!2059 t!56285)) e!53789)))

(declare-fun b!98438 () Bool)

(assert (=> b!98438 (= e!53789 e!53791)))

(declare-fun c!24626 () Bool)

(assert (=> b!98438 (= c!24626 (and (is-Node!186 (left!2059 t!56285)) (is-Black!20 (color!77 (left!2059 t!56285)))))))

(declare-fun b!98439 () Bool)

(assert (=> b!98439 (= e!53791 e!53790)))

(declare-fun res!51026 () Bool)

(assert (=> b!98439 (=> (not res!51026) (not e!53790))))

(assert (=> b!98439 (= res!51026 (isBlack!1 (left!2059 (left!2059 t!56285))))))

(declare-fun b!98440 () Bool)

(assert (=> b!98440 (= e!53790 (redNodesHaveBlackChildren!1 (right!2065 (left!2059 t!56285))))))

(assert (= (and d!63253 (not res!51025)) b!98438))

(assert (= (and b!98435 res!51028) b!98436))

(assert (= (and b!98439 res!51026) b!98437))

(assert (= (and b!98437 res!51029) b!98434))

(assert (= (and b!98434 res!51027) b!98440))

(assert (= (and b!98438 c!24626) b!98435))

(assert (= (and b!98438 (not c!24626)) b!98439))

(declare-fun m!92439 () Bool)

(assert (=> b!98434 m!92439))

(declare-fun m!92441 () Bool)

(assert (=> b!98440 m!92441))

(assert (=> b!98435 m!92439))

(declare-fun m!92443 () Bool)

(assert (=> b!98437 m!92443))

(declare-fun m!92445 () Bool)

(assert (=> b!98439 m!92445))

(assert (=> b!98436 m!92441))

(assert (=> b!98403 d!63253))

(declare-fun d!63255 () Bool)

(assert (=> d!63255 (= (isBlack!1 (left!2059 t!56282)) (or (is-Empty!205 (left!2059 t!56282)) (and (is-Node!186 (left!2059 t!56282)) (is-Black!20 (color!77 (left!2059 t!56282))))))))

(assert (=> b!98415 d!63255))

(declare-fun b!98441 () Bool)

(declare-fun res!51032 () Bool)

(declare-fun e!53794 () Bool)

(assert (=> b!98441 (=> (not res!51032) (not e!53794))))

(assert (=> b!98441 (= res!51032 (redNodesHaveBlackChildren!1 (left!2059 (right!2065 t!56285))))))

(declare-fun b!98442 () Bool)

(declare-fun e!53795 () Bool)

(declare-fun e!53792 () Bool)

(assert (=> b!98442 (= e!53795 e!53792)))

(declare-fun res!51033 () Bool)

(assert (=> b!98442 (=> (not res!51033) (not e!53792))))

(assert (=> b!98442 (= res!51033 (redNodesHaveBlackChildren!1 (left!2059 (right!2065 t!56285))))))

(declare-fun b!98443 () Bool)

(assert (=> b!98443 (= e!53792 (redNodesHaveBlackChildren!1 (right!2065 (right!2065 t!56285))))))

(declare-fun b!98444 () Bool)

(declare-fun res!51034 () Bool)

(assert (=> b!98444 (=> (not res!51034) (not e!53794))))

(assert (=> b!98444 (= res!51034 (isBlack!1 (right!2065 (right!2065 t!56285))))))

(declare-fun d!63257 () Bool)

(declare-fun res!51030 () Bool)

(declare-fun e!53793 () Bool)

(assert (=> d!63257 (=> res!51030 e!53793)))

(assert (=> d!63257 (= res!51030 (is-Empty!205 (right!2065 t!56285)))))

(assert (=> d!63257 (= (redNodesHaveBlackChildren!1 (right!2065 t!56285)) e!53793)))

(declare-fun b!98445 () Bool)

(assert (=> b!98445 (= e!53793 e!53795)))

(declare-fun c!24627 () Bool)

(assert (=> b!98445 (= c!24627 (and (is-Node!186 (right!2065 t!56285)) (is-Black!20 (color!77 (right!2065 t!56285)))))))

(declare-fun b!98446 () Bool)

(assert (=> b!98446 (= e!53795 e!53794)))

(declare-fun res!51031 () Bool)

(assert (=> b!98446 (=> (not res!51031) (not e!53794))))

(assert (=> b!98446 (= res!51031 (isBlack!1 (left!2059 (right!2065 t!56285))))))

(declare-fun b!98447 () Bool)

(assert (=> b!98447 (= e!53794 (redNodesHaveBlackChildren!1 (right!2065 (right!2065 t!56285))))))

(assert (= (and d!63257 (not res!51030)) b!98445))

(assert (= (and b!98442 res!51033) b!98443))

(assert (= (and b!98446 res!51031) b!98444))

(assert (= (and b!98444 res!51034) b!98441))

(assert (= (and b!98441 res!51032) b!98447))

(assert (= (and b!98445 c!24627) b!98442))

(assert (= (and b!98445 (not c!24627)) b!98446))

(declare-fun m!92447 () Bool)

(assert (=> b!98441 m!92447))

(declare-fun m!92449 () Bool)

(assert (=> b!98447 m!92449))

(assert (=> b!98442 m!92447))

(declare-fun m!92451 () Bool)

(assert (=> b!98444 m!92451))

(declare-fun m!92453 () Bool)

(assert (=> b!98446 m!92453))

(assert (=> b!98443 m!92449))

(assert (=> b!98409 d!63257))

(declare-fun b!98448 () Bool)

(declare-fun res!51037 () Bool)

(declare-fun e!53798 () Bool)

(assert (=> b!98448 (=> (not res!51037) (not e!53798))))

(assert (=> b!98448 (= res!51037 (redNodesHaveBlackChildren!1 (left!2059 (left!2059 t!56282))))))

(declare-fun b!98449 () Bool)

(declare-fun e!53799 () Bool)

(declare-fun e!53796 () Bool)

(assert (=> b!98449 (= e!53799 e!53796)))

(declare-fun res!51038 () Bool)

(assert (=> b!98449 (=> (not res!51038) (not e!53796))))

(assert (=> b!98449 (= res!51038 (redNodesHaveBlackChildren!1 (left!2059 (left!2059 t!56282))))))

(declare-fun b!98450 () Bool)

(assert (=> b!98450 (= e!53796 (redNodesHaveBlackChildren!1 (right!2065 (left!2059 t!56282))))))

(declare-fun b!98451 () Bool)

(declare-fun res!51039 () Bool)

(assert (=> b!98451 (=> (not res!51039) (not e!53798))))

(assert (=> b!98451 (= res!51039 (isBlack!1 (right!2065 (left!2059 t!56282))))))

(declare-fun d!63259 () Bool)

(declare-fun res!51035 () Bool)

(declare-fun e!53797 () Bool)

(assert (=> d!63259 (=> res!51035 e!53797)))

(assert (=> d!63259 (= res!51035 (is-Empty!205 (left!2059 t!56282)))))

(assert (=> d!63259 (= (redNodesHaveBlackChildren!1 (left!2059 t!56282)) e!53797)))

(declare-fun b!98452 () Bool)

(assert (=> b!98452 (= e!53797 e!53799)))

(declare-fun c!24628 () Bool)

(assert (=> b!98452 (= c!24628 (and (is-Node!186 (left!2059 t!56282)) (is-Black!20 (color!77 (left!2059 t!56282)))))))

(declare-fun b!98453 () Bool)

(assert (=> b!98453 (= e!53799 e!53798)))

(declare-fun res!51036 () Bool)

(assert (=> b!98453 (=> (not res!51036) (not e!53798))))

(assert (=> b!98453 (= res!51036 (isBlack!1 (left!2059 (left!2059 t!56282))))))

(declare-fun b!98454 () Bool)

(assert (=> b!98454 (= e!53798 (redNodesHaveBlackChildren!1 (right!2065 (left!2059 t!56282))))))

(assert (= (and d!63259 (not res!51035)) b!98452))

(assert (= (and b!98449 res!51038) b!98450))

(assert (= (and b!98453 res!51036) b!98451))

(assert (= (and b!98451 res!51039) b!98448))

(assert (= (and b!98448 res!51037) b!98454))

(assert (= (and b!98452 c!24628) b!98449))

(assert (= (and b!98452 (not c!24628)) b!98453))

(declare-fun m!92455 () Bool)

(assert (=> b!98448 m!92455))

(declare-fun m!92457 () Bool)

(assert (=> b!98454 m!92457))

(assert (=> b!98449 m!92455))

(declare-fun m!92459 () Bool)

(assert (=> b!98451 m!92459))

(declare-fun m!92461 () Bool)

(assert (=> b!98453 m!92461))

(assert (=> b!98450 m!92457))

(assert (=> b!98410 d!63259))

(declare-fun d!63261 () Bool)

(assert (=> d!63261 (= (isBlack!1 (right!2065 t!56285)) (or (is-Empty!205 (right!2065 t!56285)) (and (is-Node!186 (right!2065 t!56285)) (is-Black!20 (color!77 (right!2065 t!56285))))))))

(assert (=> b!98406 d!63261))

(declare-fun d!63263 () Bool)

(declare-fun res!51042 () Bool)

(declare-fun e!53801 () Bool)

(assert (=> d!63263 (=> res!51042 e!53801)))

(assert (=> d!63263 (= res!51042 (not (is-Node!186 (right!2065 t!56285))))))

(assert (=> d!63263 (= (blackBalanced!1 (right!2065 t!56285)) e!53801)))

(declare-fun b!98455 () Bool)

(declare-fun e!53800 () Bool)

(assert (=> b!98455 (= e!53801 e!53800)))

(declare-fun res!51041 () Bool)

(assert (=> b!98455 (=> (not res!51041) (not e!53800))))

(assert (=> b!98455 (= res!51041 (blackBalanced!1 (left!2059 (right!2065 t!56285))))))

(declare-fun b!98456 () Bool)

(declare-fun res!51040 () Bool)

(assert (=> b!98456 (=> (not res!51040) (not e!53800))))

(assert (=> b!98456 (= res!51040 (blackBalanced!1 (right!2065 (right!2065 t!56285))))))

(declare-fun b!98457 () Bool)

(assert (=> b!98457 (= e!53800 (= (blackHeight!1 (left!2059 (right!2065 t!56285))) (blackHeight!1 (right!2065 (right!2065 t!56285)))))))

(assert (= (and d!63263 (not res!51042)) b!98455))

(assert (= (and b!98455 res!51041) b!98456))

(assert (= (and b!98456 res!51040) b!98457))

(declare-fun m!92463 () Bool)

(assert (=> b!98455 m!92463))

(declare-fun m!92465 () Bool)

(assert (=> b!98456 m!92465))

(assert (=> b!98457 m!92437))

(declare-fun m!92467 () Bool)

(assert (=> b!98457 m!92467))

(assert (=> b!98424 d!63263))

(assert (=> b!98405 d!63257))

(assert (=> b!98404 d!63253))

(declare-fun d!63265 () Bool)

(declare-fun res!51045 () Bool)

(declare-fun e!53803 () Bool)

(assert (=> d!63265 (=> res!51045 e!53803)))

(assert (=> d!63265 (= res!51045 (not (is-Node!186 (left!2059 t!56285))))))

(assert (=> d!63265 (= (blackBalanced!1 (left!2059 t!56285)) e!53803)))

(declare-fun b!98458 () Bool)

(declare-fun e!53802 () Bool)

(assert (=> b!98458 (= e!53803 e!53802)))

(declare-fun res!51044 () Bool)

(assert (=> b!98458 (=> (not res!51044) (not e!53802))))

(assert (=> b!98458 (= res!51044 (blackBalanced!1 (left!2059 (left!2059 t!56285))))))

(declare-fun b!98459 () Bool)

(declare-fun res!51043 () Bool)

(assert (=> b!98459 (=> (not res!51043) (not e!53802))))

(assert (=> b!98459 (= res!51043 (blackBalanced!1 (right!2065 (left!2059 t!56285))))))

(declare-fun b!98460 () Bool)

(assert (=> b!98460 (= e!53802 (= (blackHeight!1 (left!2059 (left!2059 t!56285))) (blackHeight!1 (right!2065 (left!2059 t!56285)))))))

(assert (= (and d!63265 (not res!51045)) b!98458))

(assert (= (and b!98458 res!51044) b!98459))

(assert (= (and b!98459 res!51043) b!98460))

(declare-fun m!92469 () Bool)

(assert (=> b!98458 m!92469))

(declare-fun m!92471 () Bool)

(assert (=> b!98459 m!92471))

(assert (=> b!98460 m!92435))

(declare-fun m!92473 () Bool)

(assert (=> b!98460 m!92473))

(assert (=> b!98423 d!63265))

(declare-fun d!63267 () Bool)

(assert (=> d!63267 (= (isBlack!1 (left!2059 t!56285)) (or (is-Empty!205 (left!2059 t!56285)) (and (is-Node!186 (left!2059 t!56285)) (is-Black!20 (color!77 (left!2059 t!56285))))))))

(assert (=> b!98408 d!63267))

(assert (=> b!98411 d!63259))

(declare-fun b!98461 () Bool)

(declare-fun res!51048 () Bool)

(declare-fun e!53806 () Bool)

(assert (=> b!98461 (=> (not res!51048) (not e!53806))))

(assert (=> b!98461 (= res!51048 (redNodesHaveBlackChildren!1 (left!2059 (right!2065 t!56282))))))

(declare-fun b!98462 () Bool)

(declare-fun e!53807 () Bool)

(declare-fun e!53804 () Bool)

(assert (=> b!98462 (= e!53807 e!53804)))

(declare-fun res!51049 () Bool)

(assert (=> b!98462 (=> (not res!51049) (not e!53804))))

(assert (=> b!98462 (= res!51049 (redNodesHaveBlackChildren!1 (left!2059 (right!2065 t!56282))))))

(declare-fun b!98463 () Bool)

(assert (=> b!98463 (= e!53804 (redNodesHaveBlackChildren!1 (right!2065 (right!2065 t!56282))))))

(declare-fun b!98464 () Bool)

(declare-fun res!51050 () Bool)

(assert (=> b!98464 (=> (not res!51050) (not e!53806))))

(assert (=> b!98464 (= res!51050 (isBlack!1 (right!2065 (right!2065 t!56282))))))

(declare-fun d!63269 () Bool)

(declare-fun res!51046 () Bool)

(declare-fun e!53805 () Bool)

(assert (=> d!63269 (=> res!51046 e!53805)))

(assert (=> d!63269 (= res!51046 (is-Empty!205 (right!2065 t!56282)))))

(assert (=> d!63269 (= (redNodesHaveBlackChildren!1 (right!2065 t!56282)) e!53805)))

(declare-fun b!98465 () Bool)

(assert (=> b!98465 (= e!53805 e!53807)))

(declare-fun c!24629 () Bool)

(assert (=> b!98465 (= c!24629 (and (is-Node!186 (right!2065 t!56282)) (is-Black!20 (color!77 (right!2065 t!56282)))))))

(declare-fun b!98466 () Bool)

(assert (=> b!98466 (= e!53807 e!53806)))

(declare-fun res!51047 () Bool)

(assert (=> b!98466 (=> (not res!51047) (not e!53806))))

(assert (=> b!98466 (= res!51047 (isBlack!1 (left!2059 (right!2065 t!56282))))))

(declare-fun b!98467 () Bool)

(assert (=> b!98467 (= e!53806 (redNodesHaveBlackChildren!1 (right!2065 (right!2065 t!56282))))))

(assert (= (and d!63269 (not res!51046)) b!98465))

(assert (= (and b!98462 res!51049) b!98463))

(assert (= (and b!98466 res!51047) b!98464))

(assert (= (and b!98464 res!51050) b!98461))

(assert (= (and b!98461 res!51048) b!98467))

(assert (= (and b!98465 c!24629) b!98462))

(assert (= (and b!98465 (not c!24629)) b!98466))

(declare-fun m!92475 () Bool)

(assert (=> b!98461 m!92475))

(declare-fun m!92477 () Bool)

(assert (=> b!98467 m!92477))

(assert (=> b!98462 m!92475))

(declare-fun m!92479 () Bool)

(assert (=> b!98464 m!92479))

(declare-fun m!92481 () Bool)

(assert (=> b!98466 m!92481))

(assert (=> b!98463 m!92477))

(assert (=> b!98416 d!63269))

(assert (=> b!98412 d!63269))

(push 1)

(assert (not b!98443))

(assert (not b!98441))

(assert (not b!98458))

(assert (not b!98456))

(assert (not b!98457))

(assert (not b!98446))

(assert (not b!98431))

(assert (not b!98448))

(assert (not b!98464))

(assert (not b!98436))

(assert (not b!98442))

(assert (not b!98454))

(assert (not b!98451))

(assert (not b!98440))

(assert (not b!98467))

(assert (not b!98462))

(assert (not b!98466))

(assert (not b!98455))

(assert (not b!98444))

(assert (not b!98433))

(assert (not b!98459))

(assert (not b!98439))

(assert (not b!98460))

(assert (not b!98434))

(assert (not b!98437))

(assert (not b!98450))

(assert (not b!98461))

(assert (not b!98449))

(assert (not b!98447))

(assert (not b!98463))

(assert (not b!98453))

(assert (not b!98435))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!63271 () Bool)

(assert (=> d!63271 (= (isBlack!1 (right!2065 (right!2065 t!56282))) (or (is-Empty!205 (right!2065 (right!2065 t!56282))) (and (is-Node!186 (right!2065 (right!2065 t!56282))) (is-Black!20 (color!77 (right!2065 (right!2065 t!56282)))))))))

(assert (=> b!98464 d!63271))

(declare-fun b!98469 () Bool)

(declare-fun e!53808 () (_ BitVec 32))

(declare-fun lt!23048 () (_ BitVec 32))

(assert (=> b!98469 (= e!53808 (ite (and (is-Node!186 (left!2059 (right!2065 t!56285))) (is-Black!20 (color!77 (left!2059 (right!2065 t!56285))))) (bvadd lt!23048 #b00000000000000000000000000000001) lt!23048))))

(assert (=> b!98469 (= lt!23048 (blackHeight!1 (left!2059 (left!2059 (right!2065 t!56285)))))))

(declare-fun d!63273 () Bool)

(declare-fun c!24630 () Bool)

(assert (=> d!63273 (= c!24630 (is-Empty!205 (left!2059 (right!2065 t!56285))))))

(assert (=> d!63273 (= (blackHeight!1 (left!2059 (right!2065 t!56285))) e!53808)))

(declare-fun b!98468 () Bool)

(assert (=> b!98468 (= e!53808 #b00000000000000000000000000000001)))

(assert (= (and d!63273 c!24630) b!98468))

(assert (= (and d!63273 (not c!24630)) b!98469))

(declare-fun m!92483 () Bool)

(assert (=> b!98469 m!92483))

(assert (=> b!98433 d!63273))

(declare-fun b!98470 () Bool)

(declare-fun res!51053 () Bool)

(declare-fun e!53811 () Bool)

(assert (=> b!98470 (=> (not res!51053) (not e!53811))))

(assert (=> b!98470 (= res!51053 (redNodesHaveBlackChildren!1 (left!2059 (left!2059 (right!2065 t!56282)))))))

(declare-fun b!98471 () Bool)

(declare-fun e!53812 () Bool)

(declare-fun e!53809 () Bool)

(assert (=> b!98471 (= e!53812 e!53809)))

(declare-fun res!51054 () Bool)

(assert (=> b!98471 (=> (not res!51054) (not e!53809))))

(assert (=> b!98471 (= res!51054 (redNodesHaveBlackChildren!1 (left!2059 (left!2059 (right!2065 t!56282)))))))

(declare-fun b!98472 () Bool)

(assert (=> b!98472 (= e!53809 (redNodesHaveBlackChildren!1 (right!2065 (left!2059 (right!2065 t!56282)))))))

(declare-fun b!98473 () Bool)

(declare-fun res!51055 () Bool)

(assert (=> b!98473 (=> (not res!51055) (not e!53811))))

(assert (=> b!98473 (= res!51055 (isBlack!1 (right!2065 (left!2059 (right!2065 t!56282)))))))

(declare-fun d!63275 () Bool)

(declare-fun res!51051 () Bool)

(declare-fun e!53810 () Bool)

(assert (=> d!63275 (=> res!51051 e!53810)))

(assert (=> d!63275 (= res!51051 (is-Empty!205 (left!2059 (right!2065 t!56282))))))

(assert (=> d!63275 (= (redNodesHaveBlackChildren!1 (left!2059 (right!2065 t!56282))) e!53810)))

(declare-fun b!98474 () Bool)

(assert (=> b!98474 (= e!53810 e!53812)))

(declare-fun c!24631 () Bool)

(assert (=> b!98474 (= c!24631 (and (is-Node!186 (left!2059 (right!2065 t!56282))) (is-Black!20 (color!77 (left!2059 (right!2065 t!56282))))))))

(declare-fun b!98475 () Bool)

(assert (=> b!98475 (= e!53812 e!53811)))

(declare-fun res!51052 () Bool)

(assert (=> b!98475 (=> (not res!51052) (not e!53811))))

(assert (=> b!98475 (= res!51052 (isBlack!1 (left!2059 (left!2059 (right!2065 t!56282)))))))

(declare-fun b!98476 () Bool)

(assert (=> b!98476 (= e!53811 (redNodesHaveBlackChildren!1 (right!2065 (left!2059 (right!2065 t!56282)))))))

(assert (= (and d!63275 (not res!51051)) b!98474))

(assert (= (and b!98471 res!51054) b!98472))

(assert (= (and b!98475 res!51052) b!98473))

(assert (= (and b!98473 res!51055) b!98470))

(assert (= (and b!98470 res!51053) b!98476))

(assert (= (and b!98474 c!24631) b!98471))

(assert (= (and b!98474 (not c!24631)) b!98475))

(declare-fun m!92485 () Bool)

(assert (=> b!98470 m!92485))

(declare-fun m!92487 () Bool)

(assert (=> b!98476 m!92487))

(assert (=> b!98471 m!92485))

(declare-fun m!92489 () Bool)

(assert (=> b!98473 m!92489))

(declare-fun m!92491 () Bool)

(assert (=> b!98475 m!92491))

(assert (=> b!98472 m!92487))

(assert (=> b!98461 d!63275))

(declare-fun d!63277 () Bool)

(assert (=> d!63277 (= (isBlack!1 (left!2059 (left!2059 t!56285))) (or (is-Empty!205 (left!2059 (left!2059 t!56285))) (and (is-Node!186 (left!2059 (left!2059 t!56285))) (is-Black!20 (color!77 (left!2059 (left!2059 t!56285)))))))))

(assert (=> b!98439 d!63277))

(declare-fun d!63279 () Bool)

(declare-fun res!51058 () Bool)

(declare-fun e!53814 () Bool)

(assert (=> d!63279 (=> res!51058 e!53814)))

(assert (=> d!63279 (= res!51058 (not (is-Node!186 (left!2059 (right!2065 t!56285)))))))

(assert (=> d!63279 (= (blackBalanced!1 (left!2059 (right!2065 t!56285))) e!53814)))

(declare-fun b!98477 () Bool)

(declare-fun e!53813 () Bool)

(assert (=> b!98477 (= e!53814 e!53813)))

(declare-fun res!51057 () Bool)

(assert (=> b!98477 (=> (not res!51057) (not e!53813))))

(assert (=> b!98477 (= res!51057 (blackBalanced!1 (left!2059 (left!2059 (right!2065 t!56285)))))))

(declare-fun b!98478 () Bool)

(declare-fun res!51056 () Bool)

(assert (=> b!98478 (=> (not res!51056) (not e!53813))))

(assert (=> b!98478 (= res!51056 (blackBalanced!1 (right!2065 (left!2059 (right!2065 t!56285)))))))

(declare-fun b!98479 () Bool)

(assert (=> b!98479 (= e!53813 (= (blackHeight!1 (left!2059 (left!2059 (right!2065 t!56285)))) (blackHeight!1 (right!2065 (left!2059 (right!2065 t!56285))))))))

(assert (= (and d!63279 (not res!51058)) b!98477))

(assert (= (and b!98477 res!51057) b!98478))

(assert (= (and b!98478 res!51056) b!98479))

(declare-fun m!92493 () Bool)

(assert (=> b!98477 m!92493))

(declare-fun m!92495 () Bool)

(assert (=> b!98478 m!92495))

(assert (=> b!98479 m!92483))

(declare-fun m!92497 () Bool)

(assert (=> b!98479 m!92497))

(assert (=> b!98455 d!63279))

(declare-fun b!98480 () Bool)

(declare-fun res!51061 () Bool)

(declare-fun e!53817 () Bool)

(assert (=> b!98480 (=> (not res!51061) (not e!53817))))

(assert (=> b!98480 (= res!51061 (redNodesHaveBlackChildren!1 (left!2059 (right!2065 (left!2059 t!56285)))))))

(declare-fun b!98481 () Bool)

(declare-fun e!53818 () Bool)

(declare-fun e!53815 () Bool)

(assert (=> b!98481 (= e!53818 e!53815)))

(declare-fun res!51062 () Bool)

(assert (=> b!98481 (=> (not res!51062) (not e!53815))))

(assert (=> b!98481 (= res!51062 (redNodesHaveBlackChildren!1 (left!2059 (right!2065 (left!2059 t!56285)))))))

(declare-fun b!98482 () Bool)

(assert (=> b!98482 (= e!53815 (redNodesHaveBlackChildren!1 (right!2065 (right!2065 (left!2059 t!56285)))))))

(declare-fun b!98483 () Bool)

(declare-fun res!51063 () Bool)

(assert (=> b!98483 (=> (not res!51063) (not e!53817))))

(assert (=> b!98483 (= res!51063 (isBlack!1 (right!2065 (right!2065 (left!2059 t!56285)))))))

(declare-fun d!63281 () Bool)

(declare-fun res!51059 () Bool)

(declare-fun e!53816 () Bool)

(assert (=> d!63281 (=> res!51059 e!53816)))

(assert (=> d!63281 (= res!51059 (is-Empty!205 (right!2065 (left!2059 t!56285))))))

(assert (=> d!63281 (= (redNodesHaveBlackChildren!1 (right!2065 (left!2059 t!56285))) e!53816)))

(declare-fun b!98484 () Bool)

(assert (=> b!98484 (= e!53816 e!53818)))

(declare-fun c!24632 () Bool)

(assert (=> b!98484 (= c!24632 (and (is-Node!186 (right!2065 (left!2059 t!56285))) (is-Black!20 (color!77 (right!2065 (left!2059 t!56285))))))))

(declare-fun b!98485 () Bool)

(assert (=> b!98485 (= e!53818 e!53817)))

(declare-fun res!51060 () Bool)

(assert (=> b!98485 (=> (not res!51060) (not e!53817))))

(assert (=> b!98485 (= res!51060 (isBlack!1 (left!2059 (right!2065 (left!2059 t!56285)))))))

(declare-fun b!98486 () Bool)

(assert (=> b!98486 (= e!53817 (redNodesHaveBlackChildren!1 (right!2065 (right!2065 (left!2059 t!56285)))))))

(assert (= (and d!63281 (not res!51059)) b!98484))

(assert (= (and b!98481 res!51062) b!98482))

(assert (= (and b!98485 res!51060) b!98483))

(assert (= (and b!98483 res!51063) b!98480))

(assert (= (and b!98480 res!51061) b!98486))

(assert (= (and b!98484 c!24632) b!98481))

(assert (= (and b!98484 (not c!24632)) b!98485))

(declare-fun m!92499 () Bool)

(assert (=> b!98480 m!92499))

(declare-fun m!92501 () Bool)

(assert (=> b!98486 m!92501))

(assert (=> b!98481 m!92499))

(declare-fun m!92503 () Bool)

(assert (=> b!98483 m!92503))

(declare-fun m!92505 () Bool)

(assert (=> b!98485 m!92505))

(assert (=> b!98482 m!92501))

(assert (=> b!98440 d!63281))

(declare-fun b!98487 () Bool)

(declare-fun res!51066 () Bool)

(declare-fun e!53821 () Bool)

(assert (=> b!98487 (=> (not res!51066) (not e!53821))))

(assert (=> b!98487 (= res!51066 (redNodesHaveBlackChildren!1 (left!2059 (left!2059 (left!2059 t!56282)))))))

(declare-fun b!98488 () Bool)

(declare-fun e!53822 () Bool)

(declare-fun e!53819 () Bool)

(assert (=> b!98488 (= e!53822 e!53819)))

(declare-fun res!51067 () Bool)

(assert (=> b!98488 (=> (not res!51067) (not e!53819))))

(assert (=> b!98488 (= res!51067 (redNodesHaveBlackChildren!1 (left!2059 (left!2059 (left!2059 t!56282)))))))

(declare-fun b!98489 () Bool)

(assert (=> b!98489 (= e!53819 (redNodesHaveBlackChildren!1 (right!2065 (left!2059 (left!2059 t!56282)))))))

(declare-fun b!98490 () Bool)

(declare-fun res!51068 () Bool)

(assert (=> b!98490 (=> (not res!51068) (not e!53821))))

(assert (=> b!98490 (= res!51068 (isBlack!1 (right!2065 (left!2059 (left!2059 t!56282)))))))

(declare-fun d!63283 () Bool)

(declare-fun res!51064 () Bool)

(declare-fun e!53820 () Bool)

(assert (=> d!63283 (=> res!51064 e!53820)))

(assert (=> d!63283 (= res!51064 (is-Empty!205 (left!2059 (left!2059 t!56282))))))

(assert (=> d!63283 (= (redNodesHaveBlackChildren!1 (left!2059 (left!2059 t!56282))) e!53820)))

(declare-fun b!98491 () Bool)

(assert (=> b!98491 (= e!53820 e!53822)))

(declare-fun c!24633 () Bool)

(assert (=> b!98491 (= c!24633 (and (is-Node!186 (left!2059 (left!2059 t!56282))) (is-Black!20 (color!77 (left!2059 (left!2059 t!56282))))))))

(declare-fun b!98492 () Bool)

(assert (=> b!98492 (= e!53822 e!53821)))

(declare-fun res!51065 () Bool)

(assert (=> b!98492 (=> (not res!51065) (not e!53821))))

(assert (=> b!98492 (= res!51065 (isBlack!1 (left!2059 (left!2059 (left!2059 t!56282)))))))

(declare-fun b!98493 () Bool)

(assert (=> b!98493 (= e!53821 (redNodesHaveBlackChildren!1 (right!2065 (left!2059 (left!2059 t!56282)))))))

(assert (= (and d!63283 (not res!51064)) b!98491))

(assert (= (and b!98488 res!51067) b!98489))

(assert (= (and b!98492 res!51065) b!98490))

(assert (= (and b!98490 res!51068) b!98487))

(assert (= (and b!98487 res!51066) b!98493))

(assert (= (and b!98491 c!24633) b!98488))

(assert (= (and b!98491 (not c!24633)) b!98492))

(declare-fun m!92507 () Bool)

(assert (=> b!98487 m!92507))

(declare-fun m!92509 () Bool)

(assert (=> b!98493 m!92509))

(assert (=> b!98488 m!92507))

(declare-fun m!92511 () Bool)

(assert (=> b!98490 m!92511))

(declare-fun m!92513 () Bool)

(assert (=> b!98492 m!92513))

(assert (=> b!98489 m!92509))

(assert (=> b!98449 d!63283))

(declare-fun b!98494 () Bool)

(declare-fun res!51071 () Bool)

(declare-fun e!53825 () Bool)

(assert (=> b!98494 (=> (not res!51071) (not e!53825))))

(assert (=> b!98494 (= res!51071 (redNodesHaveBlackChildren!1 (left!2059 (right!2065 (right!2065 t!56285)))))))

(declare-fun b!98495 () Bool)

(declare-fun e!53826 () Bool)

(declare-fun e!53823 () Bool)

(assert (=> b!98495 (= e!53826 e!53823)))

(declare-fun res!51072 () Bool)

(assert (=> b!98495 (=> (not res!51072) (not e!53823))))

(assert (=> b!98495 (= res!51072 (redNodesHaveBlackChildren!1 (left!2059 (right!2065 (right!2065 t!56285)))))))

(declare-fun b!98496 () Bool)

(assert (=> b!98496 (= e!53823 (redNodesHaveBlackChildren!1 (right!2065 (right!2065 (right!2065 t!56285)))))))

(declare-fun b!98497 () Bool)

(declare-fun res!51073 () Bool)

(assert (=> b!98497 (=> (not res!51073) (not e!53825))))

(assert (=> b!98497 (= res!51073 (isBlack!1 (right!2065 (right!2065 (right!2065 t!56285)))))))

(declare-fun d!63285 () Bool)

(declare-fun res!51069 () Bool)

(declare-fun e!53824 () Bool)

(assert (=> d!63285 (=> res!51069 e!53824)))

(assert (=> d!63285 (= res!51069 (is-Empty!205 (right!2065 (right!2065 t!56285))))))

(assert (=> d!63285 (= (redNodesHaveBlackChildren!1 (right!2065 (right!2065 t!56285))) e!53824)))

(declare-fun b!98498 () Bool)

(assert (=> b!98498 (= e!53824 e!53826)))

(declare-fun c!24634 () Bool)

(assert (=> b!98498 (= c!24634 (and (is-Node!186 (right!2065 (right!2065 t!56285))) (is-Black!20 (color!77 (right!2065 (right!2065 t!56285))))))))

(declare-fun b!98499 () Bool)

(assert (=> b!98499 (= e!53826 e!53825)))

(declare-fun res!51070 () Bool)

(assert (=> b!98499 (=> (not res!51070) (not e!53825))))

(assert (=> b!98499 (= res!51070 (isBlack!1 (left!2059 (right!2065 (right!2065 t!56285)))))))

(declare-fun b!98500 () Bool)

(assert (=> b!98500 (= e!53825 (redNodesHaveBlackChildren!1 (right!2065 (right!2065 (right!2065 t!56285)))))))

(assert (= (and d!63285 (not res!51069)) b!98498))

(assert (= (and b!98495 res!51072) b!98496))

(assert (= (and b!98499 res!51070) b!98497))

(assert (= (and b!98497 res!51073) b!98494))

(assert (= (and b!98494 res!51071) b!98500))

(assert (= (and b!98498 c!24634) b!98495))

(assert (= (and b!98498 (not c!24634)) b!98499))

(declare-fun m!92515 () Bool)

(assert (=> b!98494 m!92515))

(declare-fun m!92517 () Bool)

(assert (=> b!98500 m!92517))

(assert (=> b!98495 m!92515))

(declare-fun m!92519 () Bool)

(assert (=> b!98497 m!92519))

(declare-fun m!92521 () Bool)

(assert (=> b!98499 m!92521))

(assert (=> b!98496 m!92517))

(assert (=> b!98447 d!63285))

(assert (=> b!98462 d!63275))

(declare-fun b!98502 () Bool)

(declare-fun e!53827 () (_ BitVec 32))

(declare-fun lt!23049 () (_ BitVec 32))

(assert (=> b!98502 (= e!53827 (ite (and (is-Node!186 (left!2059 (left!2059 t!56285))) (is-Black!20 (color!77 (left!2059 (left!2059 t!56285))))) (bvadd lt!23049 #b00000000000000000000000000000001) lt!23049))))

(assert (=> b!98502 (= lt!23049 (blackHeight!1 (left!2059 (left!2059 (left!2059 t!56285)))))))

(declare-fun d!63287 () Bool)

(declare-fun c!24635 () Bool)

(assert (=> d!63287 (= c!24635 (is-Empty!205 (left!2059 (left!2059 t!56285))))))

(assert (=> d!63287 (= (blackHeight!1 (left!2059 (left!2059 t!56285))) e!53827)))

(declare-fun b!98501 () Bool)

(assert (=> b!98501 (= e!53827 #b00000000000000000000000000000001)))

(assert (= (and d!63287 c!24635) b!98501))

(assert (= (and d!63287 (not c!24635)) b!98502))

(declare-fun m!92523 () Bool)

(assert (=> b!98502 m!92523))

(assert (=> b!98460 d!63287))

(declare-fun b!98504 () Bool)

(declare-fun e!53828 () (_ BitVec 32))

(declare-fun lt!23050 () (_ BitVec 32))

(assert (=> b!98504 (= e!53828 (ite (and (is-Node!186 (right!2065 (left!2059 t!56285))) (is-Black!20 (color!77 (right!2065 (left!2059 t!56285))))) (bvadd lt!23050 #b00000000000000000000000000000001) lt!23050))))

(assert (=> b!98504 (= lt!23050 (blackHeight!1 (left!2059 (right!2065 (left!2059 t!56285)))))))

(declare-fun d!63289 () Bool)

(declare-fun c!24636 () Bool)

(assert (=> d!63289 (= c!24636 (is-Empty!205 (right!2065 (left!2059 t!56285))))))

(assert (=> d!63289 (= (blackHeight!1 (right!2065 (left!2059 t!56285))) e!53828)))

(declare-fun b!98503 () Bool)

(assert (=> b!98503 (= e!53828 #b00000000000000000000000000000001)))

(assert (= (and d!63289 c!24636) b!98503))

(assert (= (and d!63289 (not c!24636)) b!98504))

(declare-fun m!92525 () Bool)

(assert (=> b!98504 m!92525))

(assert (=> b!98460 d!63289))

(declare-fun b!98505 () Bool)

(declare-fun res!51076 () Bool)

(declare-fun e!53831 () Bool)

(assert (=> b!98505 (=> (not res!51076) (not e!53831))))

(assert (=> b!98505 (= res!51076 (redNodesHaveBlackChildren!1 (left!2059 (right!2065 (right!2065 t!56282)))))))

(declare-fun b!98506 () Bool)

(declare-fun e!53832 () Bool)

(declare-fun e!53829 () Bool)

(assert (=> b!98506 (= e!53832 e!53829)))

(declare-fun res!51077 () Bool)

(assert (=> b!98506 (=> (not res!51077) (not e!53829))))

(assert (=> b!98506 (= res!51077 (redNodesHaveBlackChildren!1 (left!2059 (right!2065 (right!2065 t!56282)))))))

(declare-fun b!98507 () Bool)

(assert (=> b!98507 (= e!53829 (redNodesHaveBlackChildren!1 (right!2065 (right!2065 (right!2065 t!56282)))))))

(declare-fun b!98508 () Bool)

(declare-fun res!51078 () Bool)

(assert (=> b!98508 (=> (not res!51078) (not e!53831))))

(assert (=> b!98508 (= res!51078 (isBlack!1 (right!2065 (right!2065 (right!2065 t!56282)))))))

(declare-fun d!63291 () Bool)

(declare-fun res!51074 () Bool)

(declare-fun e!53830 () Bool)

(assert (=> d!63291 (=> res!51074 e!53830)))

(assert (=> d!63291 (= res!51074 (is-Empty!205 (right!2065 (right!2065 t!56282))))))

(assert (=> d!63291 (= (redNodesHaveBlackChildren!1 (right!2065 (right!2065 t!56282))) e!53830)))

(declare-fun b!98509 () Bool)

(assert (=> b!98509 (= e!53830 e!53832)))

(declare-fun c!24637 () Bool)

(assert (=> b!98509 (= c!24637 (and (is-Node!186 (right!2065 (right!2065 t!56282))) (is-Black!20 (color!77 (right!2065 (right!2065 t!56282))))))))

(declare-fun b!98510 () Bool)

(assert (=> b!98510 (= e!53832 e!53831)))

(declare-fun res!51075 () Bool)

(assert (=> b!98510 (=> (not res!51075) (not e!53831))))

(assert (=> b!98510 (= res!51075 (isBlack!1 (left!2059 (right!2065 (right!2065 t!56282)))))))

(declare-fun b!98511 () Bool)

(assert (=> b!98511 (= e!53831 (redNodesHaveBlackChildren!1 (right!2065 (right!2065 (right!2065 t!56282)))))))

(assert (= (and d!63291 (not res!51074)) b!98509))

(assert (= (and b!98506 res!51077) b!98507))

(assert (= (and b!98510 res!51075) b!98508))

(assert (= (and b!98508 res!51078) b!98505))

(assert (= (and b!98505 res!51076) b!98511))

(assert (= (and b!98509 c!24637) b!98506))

(assert (= (and b!98509 (not c!24637)) b!98510))

(declare-fun m!92527 () Bool)

(assert (=> b!98505 m!92527))

(declare-fun m!92529 () Bool)

(assert (=> b!98511 m!92529))

(assert (=> b!98506 m!92527))

(declare-fun m!92531 () Bool)

(assert (=> b!98508 m!92531))

(declare-fun m!92533 () Bool)

(assert (=> b!98510 m!92533))

(assert (=> b!98507 m!92529))

(assert (=> b!98463 d!63291))

(declare-fun d!63293 () Bool)

(assert (=> d!63293 (= (isBlack!1 (right!2065 (right!2065 t!56285))) (or (is-Empty!205 (right!2065 (right!2065 t!56285))) (and (is-Node!186 (right!2065 (right!2065 t!56285))) (is-Black!20 (color!77 (right!2065 (right!2065 t!56285)))))))))

(assert (=> b!98444 d!63293))

(declare-fun d!63295 () Bool)

(declare-fun res!51081 () Bool)

(declare-fun e!53834 () Bool)

(assert (=> d!63295 (=> res!51081 e!53834)))

(assert (=> d!63295 (= res!51081 (not (is-Node!186 (left!2059 (left!2059 t!56285)))))))

(assert (=> d!63295 (= (blackBalanced!1 (left!2059 (left!2059 t!56285))) e!53834)))

(declare-fun b!98512 () Bool)

(declare-fun e!53833 () Bool)

(assert (=> b!98512 (= e!53834 e!53833)))

(declare-fun res!51080 () Bool)

(assert (=> b!98512 (=> (not res!51080) (not e!53833))))

(assert (=> b!98512 (= res!51080 (blackBalanced!1 (left!2059 (left!2059 (left!2059 t!56285)))))))

(declare-fun b!98513 () Bool)

(declare-fun res!51079 () Bool)

(assert (=> b!98513 (=> (not res!51079) (not e!53833))))

(assert (=> b!98513 (= res!51079 (blackBalanced!1 (right!2065 (left!2059 (left!2059 t!56285)))))))

(declare-fun b!98514 () Bool)

(assert (=> b!98514 (= e!53833 (= (blackHeight!1 (left!2059 (left!2059 (left!2059 t!56285)))) (blackHeight!1 (right!2065 (left!2059 (left!2059 t!56285))))))))

(assert (= (and d!63295 (not res!51081)) b!98512))

(assert (= (and b!98512 res!51080) b!98513))

(assert (= (and b!98513 res!51079) b!98514))

(declare-fun m!92535 () Bool)

(assert (=> b!98512 m!92535))

(declare-fun m!92537 () Bool)

(assert (=> b!98513 m!92537))

(assert (=> b!98514 m!92523))

(declare-fun m!92539 () Bool)

(assert (=> b!98514 m!92539))

(assert (=> b!98458 d!63295))

(assert (=> b!98467 d!63291))

(assert (=> b!98436 d!63281))

(declare-fun b!98515 () Bool)

(declare-fun res!51084 () Bool)

(declare-fun e!53837 () Bool)

(assert (=> b!98515 (=> (not res!51084) (not e!53837))))

(assert (=> b!98515 (= res!51084 (redNodesHaveBlackChildren!1 (left!2059 (right!2065 (left!2059 t!56282)))))))

(declare-fun b!98516 () Bool)

(declare-fun e!53838 () Bool)

(declare-fun e!53835 () Bool)

(assert (=> b!98516 (= e!53838 e!53835)))

(declare-fun res!51085 () Bool)

(assert (=> b!98516 (=> (not res!51085) (not e!53835))))

(assert (=> b!98516 (= res!51085 (redNodesHaveBlackChildren!1 (left!2059 (right!2065 (left!2059 t!56282)))))))

(declare-fun b!98517 () Bool)

(assert (=> b!98517 (= e!53835 (redNodesHaveBlackChildren!1 (right!2065 (right!2065 (left!2059 t!56282)))))))

(declare-fun b!98518 () Bool)

(declare-fun res!51086 () Bool)

(assert (=> b!98518 (=> (not res!51086) (not e!53837))))

(assert (=> b!98518 (= res!51086 (isBlack!1 (right!2065 (right!2065 (left!2059 t!56282)))))))

(declare-fun d!63297 () Bool)

(declare-fun res!51082 () Bool)

(declare-fun e!53836 () Bool)

(assert (=> d!63297 (=> res!51082 e!53836)))

(assert (=> d!63297 (= res!51082 (is-Empty!205 (right!2065 (left!2059 t!56282))))))

(assert (=> d!63297 (= (redNodesHaveBlackChildren!1 (right!2065 (left!2059 t!56282))) e!53836)))

(declare-fun b!98519 () Bool)

(assert (=> b!98519 (= e!53836 e!53838)))

(declare-fun c!24638 () Bool)

(assert (=> b!98519 (= c!24638 (and (is-Node!186 (right!2065 (left!2059 t!56282))) (is-Black!20 (color!77 (right!2065 (left!2059 t!56282))))))))

(declare-fun b!98520 () Bool)

(assert (=> b!98520 (= e!53838 e!53837)))

(declare-fun res!51083 () Bool)

(assert (=> b!98520 (=> (not res!51083) (not e!53837))))

(assert (=> b!98520 (= res!51083 (isBlack!1 (left!2059 (right!2065 (left!2059 t!56282)))))))

(declare-fun b!98521 () Bool)

(assert (=> b!98521 (= e!53837 (redNodesHaveBlackChildren!1 (right!2065 (right!2065 (left!2059 t!56282)))))))

(assert (= (and d!63297 (not res!51082)) b!98519))

(assert (= (and b!98516 res!51085) b!98517))

(assert (= (and b!98520 res!51083) b!98518))

(assert (= (and b!98518 res!51086) b!98515))

(assert (= (and b!98515 res!51084) b!98521))

(assert (= (and b!98519 c!24638) b!98516))

(assert (= (and b!98519 (not c!24638)) b!98520))

(declare-fun m!92541 () Bool)

(assert (=> b!98515 m!92541))

(declare-fun m!92543 () Bool)

(assert (=> b!98521 m!92543))

(assert (=> b!98516 m!92541))

(declare-fun m!92545 () Bool)

(assert (=> b!98518 m!92545))

(declare-fun m!92547 () Bool)

(assert (=> b!98520 m!92547))

(assert (=> b!98517 m!92543))

(assert (=> b!98454 d!63297))

(declare-fun d!63299 () Bool)

(declare-fun res!51089 () Bool)

(declare-fun e!53840 () Bool)

(assert (=> d!63299 (=> res!51089 e!53840)))

(assert (=> d!63299 (= res!51089 (not (is-Node!186 (right!2065 (right!2065 t!56285)))))))

(assert (=> d!63299 (= (blackBalanced!1 (right!2065 (right!2065 t!56285))) e!53840)))

(declare-fun b!98522 () Bool)

(declare-fun e!53839 () Bool)

(assert (=> b!98522 (= e!53840 e!53839)))

(declare-fun res!51088 () Bool)

(assert (=> b!98522 (=> (not res!51088) (not e!53839))))

(assert (=> b!98522 (= res!51088 (blackBalanced!1 (left!2059 (right!2065 (right!2065 t!56285)))))))

(declare-fun b!98523 () Bool)

(declare-fun res!51087 () Bool)

(assert (=> b!98523 (=> (not res!51087) (not e!53839))))

(assert (=> b!98523 (= res!51087 (blackBalanced!1 (right!2065 (right!2065 (right!2065 t!56285)))))))

(declare-fun b!98524 () Bool)

(assert (=> b!98524 (= e!53839 (= (blackHeight!1 (left!2059 (right!2065 (right!2065 t!56285)))) (blackHeight!1 (right!2065 (right!2065 (right!2065 t!56285))))))))

(assert (= (and d!63299 (not res!51089)) b!98522))

(assert (= (and b!98522 res!51088) b!98523))

(assert (= (and b!98523 res!51087) b!98524))

(declare-fun m!92549 () Bool)

(assert (=> b!98522 m!92549))

(declare-fun m!92551 () Bool)

(assert (=> b!98523 m!92551))

(declare-fun m!92553 () Bool)

(assert (=> b!98524 m!92553))

(declare-fun m!92555 () Bool)

(assert (=> b!98524 m!92555))

(assert (=> b!98456 d!63299))

(assert (=> b!98450 d!63297))

(declare-fun b!98525 () Bool)

(declare-fun res!51092 () Bool)

(declare-fun e!53843 () Bool)

(assert (=> b!98525 (=> (not res!51092) (not e!53843))))

(assert (=> b!98525 (= res!51092 (redNodesHaveBlackChildren!1 (left!2059 (left!2059 (left!2059 t!56285)))))))

(declare-fun b!98526 () Bool)

(declare-fun e!53844 () Bool)

(declare-fun e!53841 () Bool)

(assert (=> b!98526 (= e!53844 e!53841)))

(declare-fun res!51093 () Bool)

(assert (=> b!98526 (=> (not res!51093) (not e!53841))))

(assert (=> b!98526 (= res!51093 (redNodesHaveBlackChildren!1 (left!2059 (left!2059 (left!2059 t!56285)))))))

(declare-fun b!98527 () Bool)

(assert (=> b!98527 (= e!53841 (redNodesHaveBlackChildren!1 (right!2065 (left!2059 (left!2059 t!56285)))))))

(declare-fun b!98528 () Bool)

(declare-fun res!51094 () Bool)

(assert (=> b!98528 (=> (not res!51094) (not e!53843))))

(assert (=> b!98528 (= res!51094 (isBlack!1 (right!2065 (left!2059 (left!2059 t!56285)))))))

(declare-fun d!63301 () Bool)

(declare-fun res!51090 () Bool)

(declare-fun e!53842 () Bool)

(assert (=> d!63301 (=> res!51090 e!53842)))

(assert (=> d!63301 (= res!51090 (is-Empty!205 (left!2059 (left!2059 t!56285))))))

(assert (=> d!63301 (= (redNodesHaveBlackChildren!1 (left!2059 (left!2059 t!56285))) e!53842)))

(declare-fun b!98529 () Bool)

(assert (=> b!98529 (= e!53842 e!53844)))

(declare-fun c!24639 () Bool)

(assert (=> b!98529 (= c!24639 (and (is-Node!186 (left!2059 (left!2059 t!56285))) (is-Black!20 (color!77 (left!2059 (left!2059 t!56285))))))))

(declare-fun b!98530 () Bool)

(assert (=> b!98530 (= e!53844 e!53843)))

(declare-fun res!51091 () Bool)

(assert (=> b!98530 (=> (not res!51091) (not e!53843))))

(assert (=> b!98530 (= res!51091 (isBlack!1 (left!2059 (left!2059 (left!2059 t!56285)))))))

(declare-fun b!98531 () Bool)

(assert (=> b!98531 (= e!53843 (redNodesHaveBlackChildren!1 (right!2065 (left!2059 (left!2059 t!56285)))))))

(assert (= (and d!63301 (not res!51090)) b!98529))

(assert (= (and b!98526 res!51093) b!98527))

(assert (= (and b!98530 res!51091) b!98528))

(assert (= (and b!98528 res!51094) b!98525))

(assert (= (and b!98525 res!51092) b!98531))

(assert (= (and b!98529 c!24639) b!98526))

(assert (= (and b!98529 (not c!24639)) b!98530))

(declare-fun m!92557 () Bool)

(assert (=> b!98525 m!92557))

(declare-fun m!92559 () Bool)

(assert (=> b!98531 m!92559))

(assert (=> b!98526 m!92557))

(declare-fun m!92561 () Bool)

(assert (=> b!98528 m!92561))

(declare-fun m!92563 () Bool)

(assert (=> b!98530 m!92563))

(assert (=> b!98527 m!92559))

(assert (=> b!98434 d!63301))

(declare-fun d!63303 () Bool)

(declare-fun res!51097 () Bool)

(declare-fun e!53846 () Bool)

(assert (=> d!63303 (=> res!51097 e!53846)))

(assert (=> d!63303 (= res!51097 (not (is-Node!186 (right!2065 (left!2059 t!56285)))))))

(assert (=> d!63303 (= (blackBalanced!1 (right!2065 (left!2059 t!56285))) e!53846)))

(declare-fun b!98532 () Bool)

(declare-fun e!53845 () Bool)

(assert (=> b!98532 (= e!53846 e!53845)))

(declare-fun res!51096 () Bool)

(assert (=> b!98532 (=> (not res!51096) (not e!53845))))

(assert (=> b!98532 (= res!51096 (blackBalanced!1 (left!2059 (right!2065 (left!2059 t!56285)))))))

(declare-fun b!98533 () Bool)

(declare-fun res!51095 () Bool)

(assert (=> b!98533 (=> (not res!51095) (not e!53845))))

(assert (=> b!98533 (= res!51095 (blackBalanced!1 (right!2065 (right!2065 (left!2059 t!56285)))))))

(declare-fun b!98534 () Bool)

(assert (=> b!98534 (= e!53845 (= (blackHeight!1 (left!2059 (right!2065 (left!2059 t!56285)))) (blackHeight!1 (right!2065 (right!2065 (left!2059 t!56285))))))))

(assert (= (and d!63303 (not res!51097)) b!98532))

(assert (= (and b!98532 res!51096) b!98533))

(assert (= (and b!98533 res!51095) b!98534))

(declare-fun m!92565 () Bool)

(assert (=> b!98532 m!92565))

(declare-fun m!92567 () Bool)

(assert (=> b!98533 m!92567))

(assert (=> b!98534 m!92525))

(declare-fun m!92569 () Bool)

(assert (=> b!98534 m!92569))

(assert (=> b!98459 d!63303))

(declare-fun d!63305 () Bool)

(assert (=> d!63305 (= (isBlack!1 (left!2059 (right!2065 t!56282))) (or (is-Empty!205 (left!2059 (right!2065 t!56282))) (and (is-Node!186 (left!2059 (right!2065 t!56282))) (is-Black!20 (color!77 (left!2059 (right!2065 t!56282)))))))))

(assert (=> b!98466 d!63305))

(declare-fun b!98535 () Bool)

(declare-fun res!51100 () Bool)

(declare-fun e!53849 () Bool)

(assert (=> b!98535 (=> (not res!51100) (not e!53849))))

(assert (=> b!98535 (= res!51100 (redNodesHaveBlackChildren!1 (left!2059 (left!2059 (right!2065 t!56285)))))))

(declare-fun b!98536 () Bool)

(declare-fun e!53850 () Bool)

(declare-fun e!53847 () Bool)

(assert (=> b!98536 (= e!53850 e!53847)))

(declare-fun res!51101 () Bool)

(assert (=> b!98536 (=> (not res!51101) (not e!53847))))

(assert (=> b!98536 (= res!51101 (redNodesHaveBlackChildren!1 (left!2059 (left!2059 (right!2065 t!56285)))))))

(declare-fun b!98537 () Bool)

(assert (=> b!98537 (= e!53847 (redNodesHaveBlackChildren!1 (right!2065 (left!2059 (right!2065 t!56285)))))))

(declare-fun b!98538 () Bool)

(declare-fun res!51102 () Bool)

(assert (=> b!98538 (=> (not res!51102) (not e!53849))))

(assert (=> b!98538 (= res!51102 (isBlack!1 (right!2065 (left!2059 (right!2065 t!56285)))))))

(declare-fun d!63307 () Bool)

(declare-fun res!51098 () Bool)

(declare-fun e!53848 () Bool)

(assert (=> d!63307 (=> res!51098 e!53848)))

(assert (=> d!63307 (= res!51098 (is-Empty!205 (left!2059 (right!2065 t!56285))))))

(assert (=> d!63307 (= (redNodesHaveBlackChildren!1 (left!2059 (right!2065 t!56285))) e!53848)))

(declare-fun b!98539 () Bool)

(assert (=> b!98539 (= e!53848 e!53850)))

(declare-fun c!24640 () Bool)

(assert (=> b!98539 (= c!24640 (and (is-Node!186 (left!2059 (right!2065 t!56285))) (is-Black!20 (color!77 (left!2059 (right!2065 t!56285))))))))

(declare-fun b!98540 () Bool)

(assert (=> b!98540 (= e!53850 e!53849)))

(declare-fun res!51099 () Bool)

(assert (=> b!98540 (=> (not res!51099) (not e!53849))))

(assert (=> b!98540 (= res!51099 (isBlack!1 (left!2059 (left!2059 (right!2065 t!56285)))))))

(declare-fun b!98541 () Bool)

(assert (=> b!98541 (= e!53849 (redNodesHaveBlackChildren!1 (right!2065 (left!2059 (right!2065 t!56285)))))))

(assert (= (and d!63307 (not res!51098)) b!98539))

(assert (= (and b!98536 res!51101) b!98537))

(assert (= (and b!98540 res!51099) b!98538))

(assert (= (and b!98538 res!51102) b!98535))

(assert (= (and b!98535 res!51100) b!98541))

(assert (= (and b!98539 c!24640) b!98536))

(assert (= (and b!98539 (not c!24640)) b!98540))

(declare-fun m!92571 () Bool)

(assert (=> b!98535 m!92571))

(declare-fun m!92573 () Bool)

(assert (=> b!98541 m!92573))

(assert (=> b!98536 m!92571))

(declare-fun m!92575 () Bool)

(assert (=> b!98538 m!92575))

(declare-fun m!92577 () Bool)

(assert (=> b!98540 m!92577))

(assert (=> b!98537 m!92573))

(assert (=> b!98441 d!63307))

(assert (=> b!98457 d!63273))

(declare-fun b!98543 () Bool)

(declare-fun e!53851 () (_ BitVec 32))

(declare-fun lt!23051 () (_ BitVec 32))

(assert (=> b!98543 (= e!53851 (ite (and (is-Node!186 (right!2065 (right!2065 t!56285))) (is-Black!20 (color!77 (right!2065 (right!2065 t!56285))))) (bvadd lt!23051 #b00000000000000000000000000000001) lt!23051))))

(assert (=> b!98543 (= lt!23051 (blackHeight!1 (left!2059 (right!2065 (right!2065 t!56285)))))))

(declare-fun d!63309 () Bool)

(declare-fun c!24641 () Bool)

(assert (=> d!63309 (= c!24641 (is-Empty!205 (right!2065 (right!2065 t!56285))))))

(assert (=> d!63309 (= (blackHeight!1 (right!2065 (right!2065 t!56285))) e!53851)))

(declare-fun b!98542 () Bool)

(assert (=> b!98542 (= e!53851 #b00000000000000000000000000000001)))

(assert (= (and d!63309 c!24641) b!98542))

(assert (= (and d!63309 (not c!24641)) b!98543))

(assert (=> b!98543 m!92553))

(assert (=> b!98457 d!63309))

(assert (=> b!98448 d!63283))

(declare-fun d!63311 () Bool)

(assert (=> d!63311 (= (isBlack!1 (left!2059 (left!2059 t!56282))) (or (is-Empty!205 (left!2059 (left!2059 t!56282))) (and (is-Node!186 (left!2059 (left!2059 t!56282))) (is-Black!20 (color!77 (left!2059 (left!2059 t!56282)))))))))

(assert (=> b!98453 d!63311))

(assert (=> b!98443 d!63285))

(declare-fun d!63313 () Bool)

(assert (=> d!63313 (= (isBlack!1 (right!2065 (left!2059 t!56285))) (or (is-Empty!205 (right!2065 (left!2059 t!56285))) (and (is-Node!186 (right!2065 (left!2059 t!56285))) (is-Black!20 (color!77 (right!2065 (left!2059 t!56285)))))))))

(assert (=> b!98437 d!63313))

(assert (=> b!98442 d!63307))

(declare-fun d!63315 () Bool)

(assert (=> d!63315 (= (isBlack!1 (left!2059 (right!2065 t!56285))) (or (is-Empty!205 (left!2059 (right!2065 t!56285))) (and (is-Node!186 (left!2059 (right!2065 t!56285))) (is-Black!20 (color!77 (left!2059 (right!2065 t!56285)))))))))

(assert (=> b!98446 d!63315))

(declare-fun d!63317 () Bool)

(assert (=> d!63317 (= (isBlack!1 (right!2065 (left!2059 t!56282))) (or (is-Empty!205 (right!2065 (left!2059 t!56282))) (and (is-Node!186 (right!2065 (left!2059 t!56282))) (is-Black!20 (color!77 (right!2065 (left!2059 t!56282)))))))))

(assert (=> b!98451 d!63317))

(assert (=> b!98435 d!63301))

(assert (=> b!98431 d!63287))

(push 1)

(assert (not b!98533))

(assert (not b!98475))

(assert (not b!98493))

(assert (not b!98469))

(assert (not b!98500))

(assert (not b!98496))

(assert (not b!98527))

(assert (not b!98530))

(assert (not b!98476))

(assert (not b!98497))

(assert (not b!98541))

(assert (not b!98525))

(assert (not b!98523))

(assert (not b!98512))

(assert (not b!98534))

(assert (not b!98515))

(assert (not b!98532))

(assert (not b!98485))

(assert (not b!98536))

(assert (not b!98538))

(assert (not b!98505))

(assert (not b!98492))

(assert (not b!98470))

(assert (not b!98540))

(assert (not b!98471))

(assert (not b!98521))

(assert (not b!98481))

(assert (not b!98490))

(assert (not b!98518))

(assert (not b!98537))

(assert (not b!98524))

(assert (not b!98478))

(assert (not b!98511))

(assert (not b!98506))

(assert (not b!98499))

(assert (not b!98479))

(assert (not b!98535))

(assert (not b!98517))

(assert (not b!98513))

(assert (not b!98508))

(assert (not b!98494))

(assert (not b!98483))

(assert (not b!98477))

(assert (not b!98520))

(assert (not b!98473))

(assert (not b!98522))

(assert (not b!98480))

(assert (not b!98495))

(assert (not b!98489))

(assert (not b!98486))

(assert (not b!98482))

(assert (not b!98543))

(assert (not b!98531))

(assert (not b!98507))

(assert (not b!98526))

(assert (not b!98487))

(assert (not b!98510))

(assert (not b!98488))

(assert (not b!98514))

(assert (not b!98516))

(assert (not b!98528))

(assert (not b!98502))

(assert (not b!98472))

(assert (not b!98504))

(check-sat)

(get-model)

(pop 1)

