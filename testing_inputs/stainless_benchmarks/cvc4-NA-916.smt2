; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6954 () Bool)

(assert start!6954)

(declare-fun b!51337 () Bool)

(declare-fun res!23549 () Bool)

(declare-fun e!26671 () Bool)

(assert (=> b!51337 (=> (not res!23549) (not e!26671))))

(declare-datatypes () ((Node!42 (Node!43 (rank!13 Int) (elem!85 (_ BitVec 32)) (nodes!13 Heap!7))) (Heap!7 (Empty!109) (Nodes!6 (head!638 Node!42) (tail!662 Heap!7)))))

(declare-fun ns1!5 () Heap!7)

(declare-fun res!23489 () Heap!7)

(declare-fun ns2!5 () Heap!7)

(declare-fun merge!1 (Heap!7 Heap!7) Heap!7)

(declare-fun reverse!3 (Heap!7) Heap!7)

(assert (=> b!51337 (= res!23549 (= res!23489 (merge!1 (reverse!3 ns1!5) ns2!5)))))

(declare-fun res!23547 () Bool)

(assert (=> start!6954 (=> (not res!23547) (not e!26671))))

(declare-fun h!424 () Heap!7)

(assert (=> start!6954 (= res!23547 (not (is-Empty!109 h!424)))))

(assert (=> start!6954 e!26671))

(assert (=> start!6954 true))

(declare-fun b!51335 () Bool)

(declare-fun res!23546 () Bool)

(assert (=> b!51335 (=> (not res!23546) (not e!26671))))

(declare-datatypes () ((tuple3!24 (tuple3!25 (_1!161 (_ BitVec 32)) (_2!161 Heap!7) (_3!26 Heap!7)))))

(declare-fun x$4!91 () tuple3!24)

(declare-datatypes () ((tuple2!270 (tuple2!271 (_1!162 Node!42) (_2!162 Heap!7)))))

(declare-fun getMin!0 (Heap!7) tuple2!270)

(assert (=> b!51335 (= res!23546 (= x$4!91 (tuple3!25 (elem!85 (_1!162 (getMin!0 h!424))) (nodes!13 (_1!162 (getMin!0 h!424))) (_2!162 (getMin!0 h!424)))))))

(declare-fun b!51338 () Bool)

(declare-fun heapContent!0 (Heap!7) (Set (_ BitVec 32)))

(assert (=> b!51338 (= e!26671 (not (subset (heapContent!0 res!23489) (heapContent!0 h!424))))))

(declare-fun b!51336 () Bool)

(declare-fun res!23548 () Bool)

(assert (=> b!51336 (=> (not res!23548) (not e!26671))))

(declare-fun e!26479 () (_ BitVec 32))

(assert (=> b!51336 (= res!23548 (and (= e!26479 (_1!161 x$4!91)) (= ns1!5 (_2!161 x$4!91)) (= ns2!5 (_3!26 x$4!91))))))

(assert (= (and start!6954 res!23547) b!51335))

(assert (= (and b!51335 res!23546) b!51336))

(assert (= (and b!51336 res!23548) b!51337))

(assert (= (and b!51337 res!23549) b!51338))

(declare-fun m!55113 () Bool)

(assert (=> b!51337 m!55113))

(assert (=> b!51337 m!55113))

(declare-fun m!55115 () Bool)

(assert (=> b!51337 m!55115))

(declare-fun m!55117 () Bool)

(assert (=> b!51335 m!55117))

(declare-fun m!55119 () Bool)

(assert (=> b!51338 m!55119))

(declare-fun m!55121 () Bool)

(assert (=> b!51338 m!55121))

(push 1)

(assert (not b!51335))

(assert (not b!51337))

(assert (not b!51338))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!43768 () Bool)

(declare-fun lt!8971 () tuple2!270)

(declare-fun nodeContent!0 (Node!42) (Set (_ BitVec 32)))

(assert (=> d!43768 (= (union (nodeContent!0 (_1!162 lt!8971)) (heapContent!0 (_2!162 lt!8971))) (heapContent!0 h!424))))

(declare-fun e!26674 () tuple2!270)

(assert (=> d!43768 (= lt!8971 e!26674)))

(declare-fun c!10928 () Bool)

(assert (=> d!43768 (= c!10928 (and (is-Nodes!6 h!424) (is-Empty!109 (tail!662 h!424))))))

(assert (=> d!43768 (not (= h!424 Empty!109))))

(assert (=> d!43768 (= (getMin!0 h!424) lt!8971)))

(declare-fun b!51344 () Bool)

(declare-fun lt!8970 () Node!42)

(declare-fun lt!8973 () tuple2!270)

(assert (=> b!51344 (= e!26674 (ite (bvslt (elem!85 (head!638 h!424)) (elem!85 lt!8970)) (tuple2!271 (head!638 h!424) (tail!662 h!424)) (tuple2!271 lt!8970 (Nodes!6 (head!638 h!424) (_2!162 lt!8973)))))))

(declare-fun lt!8972 () tuple2!270)

(assert (=> b!51344 (= lt!8970 (_1!162 lt!8972))))

(assert (=> b!51344 (= lt!8973 (getMin!0 (tail!662 h!424)))))

(assert (=> b!51344 (= lt!8972 (getMin!0 (tail!662 h!424)))))

(declare-fun b!51343 () Bool)

(assert (=> b!51343 (= e!26674 (tuple2!271 (head!638 h!424) Empty!109))))

(assert (= (and d!43768 c!10928) b!51343))

(assert (= (and d!43768 (not c!10928)) b!51344))

(declare-fun m!55123 () Bool)

(assert (=> d!43768 m!55123))

(declare-fun m!55125 () Bool)

(assert (=> d!43768 m!55125))

(assert (=> d!43768 m!55121))

(declare-fun m!55127 () Bool)

(assert (=> b!51344 m!55127))

(assert (=> b!51335 d!43768))

(declare-fun b!51365 () Bool)

(declare-fun e!26686 () Heap!7)

(declare-fun e!26687 () Heap!7)

(assert (=> b!51365 (= e!26686 e!26687)))

(declare-fun c!10939 () Bool)

(declare-fun lt!8982 () Bool)

(assert (=> b!51365 (= c!10939 lt!8982)))

(declare-fun lt!8981 () Heap!7)

(declare-fun e!26685 () Heap!7)

(assert (=> b!51365 (= lt!8981 e!26685)))

(declare-fun c!10942 () Bool)

(assert (=> b!51365 (= c!10942 (or lt!8982 (< (rank!13 (head!638 ns2!5)) (rank!13 (head!638 (reverse!3 ns1!5))))))))

(assert (=> b!51365 (= lt!8982 (< (rank!13 (head!638 (reverse!3 ns1!5))) (rank!13 (head!638 ns2!5))))))

(declare-fun b!51366 () Bool)

(assert (=> b!51366 (= e!26685 (merge!1 (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5)) (ite lt!8982 ns2!5 (tail!662 ns2!5))))))

(declare-fun b!51367 () Bool)

(declare-fun e!26688 () Heap!7)

(assert (=> b!51367 (= e!26688 (Nodes!6 (head!638 ns2!5) lt!8981))))

(declare-fun b!51368 () Bool)

(assert (=> b!51368 (= e!26687 (Nodes!6 (head!638 (reverse!3 ns1!5)) lt!8981))))

(declare-fun b!51369 () Bool)

(declare-fun insertNode!0 (Node!42 Heap!7) Heap!7)

(declare-fun link!0 (Node!42 Node!42) Node!42)

(assert (=> b!51369 (= e!26688 (insertNode!0 (link!0 (head!638 (reverse!3 ns1!5)) (head!638 ns2!5)) (merge!1 (tail!662 (reverse!3 ns1!5)) (tail!662 ns2!5))))))

(declare-fun d!43770 () Bool)

(declare-fun lt!8980 () Heap!7)

(assert (=> d!43770 (= (heapContent!0 lt!8980) (union (heapContent!0 (reverse!3 ns1!5)) (heapContent!0 ns2!5)))))

(declare-fun e!26689 () Heap!7)

(assert (=> d!43770 (= lt!8980 e!26689)))

(declare-fun c!10941 () Bool)

(assert (=> d!43770 (= c!10941 (is-Empty!109 ns2!5))))

(assert (=> d!43770 (= (merge!1 (reverse!3 ns1!5) ns2!5) lt!8980)))

(declare-fun b!51370 () Bool)

(assert (=> b!51370 (= e!26689 (reverse!3 ns1!5))))

(declare-fun b!51371 () Bool)

(declare-fun res!23556 () Heap!7)

(assert (=> b!51371 (= e!26685 res!23556)))

(assert (=> b!51371 true))

(assert (=> b!51371 true))

(declare-fun b!51372 () Bool)

(assert (=> b!51372 (= e!26689 e!26686)))

(declare-fun c!10943 () Bool)

(assert (=> b!51372 (= c!10943 (is-Empty!109 (reverse!3 ns1!5)))))

(declare-fun b!51373 () Bool)

(assert (=> b!51373 (= e!26686 ns2!5)))

(declare-fun b!51374 () Bool)

(assert (=> b!51374 (= e!26687 e!26688)))

(declare-fun c!10940 () Bool)

(assert (=> b!51374 (= c!10940 (< (rank!13 (head!638 ns2!5)) (rank!13 (head!638 (reverse!3 ns1!5)))))))

(assert (= (and b!51365 c!10942) b!51366))

(assert (= (and b!51365 (not c!10942)) b!51371))

(assert (= (and b!51374 c!10940) b!51367))

(assert (= (and b!51374 (not c!10940)) b!51369))

(assert (= (and b!51365 c!10939) b!51368))

(assert (= (and b!51365 (not c!10939)) b!51374))

(assert (= (and b!51372 c!10943) b!51373))

(assert (= (and b!51372 (not c!10943)) b!51365))

(assert (= (and d!43770 c!10941) b!51370))

(assert (= (and d!43770 (not c!10941)) b!51372))

(declare-fun m!55129 () Bool)

(assert (=> b!51366 m!55129))

(declare-fun m!55131 () Bool)

(assert (=> b!51369 m!55131))

(declare-fun m!55133 () Bool)

(assert (=> b!51369 m!55133))

(assert (=> b!51369 m!55131))

(assert (=> b!51369 m!55133))

(declare-fun m!55135 () Bool)

(assert (=> b!51369 m!55135))

(declare-fun m!55137 () Bool)

(assert (=> d!43770 m!55137))

(assert (=> d!43770 m!55113))

(declare-fun m!55139 () Bool)

(assert (=> d!43770 m!55139))

(declare-fun m!55141 () Bool)

(assert (=> d!43770 m!55141))

(assert (=> b!51337 d!43770))

(declare-fun d!43772 () Bool)

(declare-fun reverse0!2 (Heap!7 Heap!7) Heap!7)

(assert (=> d!43772 (= (reverse!3 ns1!5) (reverse0!2 ns1!5 Empty!109))))

(declare-fun bs!23748 () Bool)

(assert (= bs!23748 d!43772))

(declare-fun m!55143 () Bool)

(assert (=> bs!23748 m!55143))

(assert (=> b!51337 d!43772))

(declare-fun d!43774 () Bool)

(declare-fun c!10946 () Bool)

(assert (=> d!43774 (= c!10946 (is-Empty!109 res!23489))))

(declare-fun e!26692 () (Set (_ BitVec 32)))

(assert (=> d!43774 (= (heapContent!0 res!23489) e!26692)))

(declare-fun b!51379 () Bool)

(assert (=> b!51379 (= e!26692 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51380 () Bool)

(assert (=> b!51380 (= e!26692 (union (nodeContent!0 (head!638 res!23489)) (heapContent!0 (tail!662 res!23489))))))

(assert (= (and d!43774 c!10946) b!51379))

(assert (= (and d!43774 (not c!10946)) b!51380))

(declare-fun m!55145 () Bool)

(assert (=> b!51380 m!55145))

(declare-fun m!55147 () Bool)

(assert (=> b!51380 m!55147))

(assert (=> b!51338 d!43774))

(declare-fun d!43776 () Bool)

(declare-fun c!10947 () Bool)

(assert (=> d!43776 (= c!10947 (is-Empty!109 h!424))))

(declare-fun e!26693 () (Set (_ BitVec 32)))

(assert (=> d!43776 (= (heapContent!0 h!424) e!26693)))

(declare-fun b!51381 () Bool)

(assert (=> b!51381 (= e!26693 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51382 () Bool)

(assert (=> b!51382 (= e!26693 (union (nodeContent!0 (head!638 h!424)) (heapContent!0 (tail!662 h!424))))))

(assert (= (and d!43776 c!10947) b!51381))

(assert (= (and d!43776 (not c!10947)) b!51382))

(declare-fun m!55149 () Bool)

(assert (=> b!51382 m!55149))

(declare-fun m!55151 () Bool)

(assert (=> b!51382 m!55151))

(assert (=> b!51338 d!43776))

(push 1)

(assert (not b!51380))

(assert (not b!51382))

(assert (not d!43772))

(assert (not d!43768))

(assert (not d!43770))

(assert (not b!51366))

(assert (not b!51369))

(assert (not b!51344))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!43778 () Bool)

(declare-fun lt!8984 () tuple2!270)

(assert (=> d!43778 (= (union (nodeContent!0 (_1!162 lt!8984)) (heapContent!0 (_2!162 lt!8984))) (heapContent!0 (tail!662 h!424)))))

(declare-fun e!26694 () tuple2!270)

(assert (=> d!43778 (= lt!8984 e!26694)))

(declare-fun c!10948 () Bool)

(assert (=> d!43778 (= c!10948 (and (is-Nodes!6 (tail!662 h!424)) (is-Empty!109 (tail!662 (tail!662 h!424)))))))

(assert (=> d!43778 (not (= (tail!662 h!424) Empty!109))))

(assert (=> d!43778 (= (getMin!0 (tail!662 h!424)) lt!8984)))

(declare-fun b!51384 () Bool)

(declare-fun lt!8983 () Node!42)

(declare-fun lt!8986 () tuple2!270)

(assert (=> b!51384 (= e!26694 (ite (bvslt (elem!85 (head!638 (tail!662 h!424))) (elem!85 lt!8983)) (tuple2!271 (head!638 (tail!662 h!424)) (tail!662 (tail!662 h!424))) (tuple2!271 lt!8983 (Nodes!6 (head!638 (tail!662 h!424)) (_2!162 lt!8986)))))))

(declare-fun lt!8985 () tuple2!270)

(assert (=> b!51384 (= lt!8983 (_1!162 lt!8985))))

(assert (=> b!51384 (= lt!8986 (getMin!0 (tail!662 (tail!662 h!424))))))

(assert (=> b!51384 (= lt!8985 (getMin!0 (tail!662 (tail!662 h!424))))))

(declare-fun b!51383 () Bool)

(assert (=> b!51383 (= e!26694 (tuple2!271 (head!638 (tail!662 h!424)) Empty!109))))

(assert (= (and d!43778 c!10948) b!51383))

(assert (= (and d!43778 (not c!10948)) b!51384))

(declare-fun m!55153 () Bool)

(assert (=> d!43778 m!55153))

(declare-fun m!55155 () Bool)

(assert (=> d!43778 m!55155))

(assert (=> d!43778 m!55151))

(declare-fun m!55157 () Bool)

(assert (=> b!51384 m!55157))

(assert (=> b!51344 d!43778))

(declare-fun b!51385 () Bool)

(declare-fun e!26696 () Heap!7)

(declare-fun e!26697 () Heap!7)

(assert (=> b!51385 (= e!26696 e!26697)))

(declare-fun c!10949 () Bool)

(declare-fun lt!8989 () Bool)

(assert (=> b!51385 (= c!10949 lt!8989)))

(declare-fun lt!8988 () Heap!7)

(declare-fun e!26695 () Heap!7)

(assert (=> b!51385 (= lt!8988 e!26695)))

(declare-fun c!10952 () Bool)

(assert (=> b!51385 (= c!10952 (or lt!8989 (< (rank!13 (head!638 (ite lt!8982 ns2!5 (tail!662 ns2!5)))) (rank!13 (head!638 (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5)))))))))

(assert (=> b!51385 (= lt!8989 (< (rank!13 (head!638 (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5)))) (rank!13 (head!638 (ite lt!8982 ns2!5 (tail!662 ns2!5))))))))

(declare-fun b!51386 () Bool)

(assert (=> b!51386 (= e!26695 (merge!1 (ite lt!8989 (tail!662 (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5))) (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5))) (ite lt!8989 (ite lt!8982 ns2!5 (tail!662 ns2!5)) (tail!662 (ite lt!8982 ns2!5 (tail!662 ns2!5))))))))

(declare-fun b!51387 () Bool)

(declare-fun e!26698 () Heap!7)

(assert (=> b!51387 (= e!26698 (Nodes!6 (head!638 (ite lt!8982 ns2!5 (tail!662 ns2!5))) lt!8988))))

(declare-fun b!51388 () Bool)

(assert (=> b!51388 (= e!26697 (Nodes!6 (head!638 (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5))) lt!8988))))

(declare-fun b!51389 () Bool)

(assert (=> b!51389 (= e!26698 (insertNode!0 (link!0 (head!638 (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5))) (head!638 (ite lt!8982 ns2!5 (tail!662 ns2!5)))) (merge!1 (tail!662 (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5))) (tail!662 (ite lt!8982 ns2!5 (tail!662 ns2!5))))))))

(declare-fun lt!8987 () Heap!7)

(declare-fun d!43780 () Bool)

(assert (=> d!43780 (= (heapContent!0 lt!8987) (union (heapContent!0 (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5))) (heapContent!0 (ite lt!8982 ns2!5 (tail!662 ns2!5)))))))

(declare-fun e!26699 () Heap!7)

(assert (=> d!43780 (= lt!8987 e!26699)))

(declare-fun c!10951 () Bool)

(assert (=> d!43780 (= c!10951 (is-Empty!109 (ite lt!8982 ns2!5 (tail!662 ns2!5))))))

(assert (=> d!43780 (= (merge!1 (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5)) (ite lt!8982 ns2!5 (tail!662 ns2!5))) lt!8987)))

(declare-fun b!51390 () Bool)

(assert (=> b!51390 (= e!26699 (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5)))))

(declare-fun b!51391 () Bool)

(declare-fun res!23557 () Heap!7)

(assert (=> b!51391 (= e!26695 res!23557)))

(assert (=> b!51391 true))

(assert (=> b!51391 true))

(declare-fun b!51392 () Bool)

(assert (=> b!51392 (= e!26699 e!26696)))

(declare-fun c!10953 () Bool)

(assert (=> b!51392 (= c!10953 (is-Empty!109 (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5))))))

(declare-fun b!51393 () Bool)

(assert (=> b!51393 (= e!26696 (ite lt!8982 ns2!5 (tail!662 ns2!5)))))

(declare-fun b!51394 () Bool)

(assert (=> b!51394 (= e!26697 e!26698)))

(declare-fun c!10950 () Bool)

(assert (=> b!51394 (= c!10950 (< (rank!13 (head!638 (ite lt!8982 ns2!5 (tail!662 ns2!5)))) (rank!13 (head!638 (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5))))))))

(assert (= (and b!51385 c!10952) b!51386))

(assert (= (and b!51385 (not c!10952)) b!51391))

(assert (= (and b!51394 c!10950) b!51387))

(assert (= (and b!51394 (not c!10950)) b!51389))

(assert (= (and b!51385 c!10949) b!51388))

(assert (= (and b!51385 (not c!10949)) b!51394))

(assert (= (and b!51392 c!10953) b!51393))

(assert (= (and b!51392 (not c!10953)) b!51385))

(assert (= (and d!43780 c!10951) b!51390))

(assert (= (and d!43780 (not c!10951)) b!51392))

(declare-fun m!55159 () Bool)

(assert (=> b!51386 m!55159))

(declare-fun m!55161 () Bool)

(assert (=> b!51389 m!55161))

(declare-fun m!55163 () Bool)

(assert (=> b!51389 m!55163))

(assert (=> b!51389 m!55161))

(assert (=> b!51389 m!55163))

(declare-fun m!55165 () Bool)

(assert (=> b!51389 m!55165))

(declare-fun m!55167 () Bool)

(assert (=> d!43780 m!55167))

(declare-fun m!55169 () Bool)

(assert (=> d!43780 m!55169))

(declare-fun m!55171 () Bool)

(assert (=> d!43780 m!55171))

(assert (=> b!51366 d!43780))

(declare-fun d!43782 () Bool)

(assert (=> d!43782 (= (nodeContent!0 (head!638 res!23489)) (union (insert (elem!85 (head!638 res!23489)) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!13 (head!638 res!23489)))))))

(declare-fun bs!23749 () Bool)

(assert (= bs!23749 d!43782))

(declare-fun m!55173 () Bool)

(assert (=> bs!23749 m!55173))

(declare-fun m!55175 () Bool)

(assert (=> bs!23749 m!55175))

(assert (=> b!51380 d!43782))

(declare-fun d!43784 () Bool)

(declare-fun c!10954 () Bool)

(assert (=> d!43784 (= c!10954 (is-Empty!109 (tail!662 res!23489)))))

(declare-fun e!26700 () (Set (_ BitVec 32)))

(assert (=> d!43784 (= (heapContent!0 (tail!662 res!23489)) e!26700)))

(declare-fun b!51395 () Bool)

(assert (=> b!51395 (= e!26700 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51396 () Bool)

(assert (=> b!51396 (= e!26700 (union (nodeContent!0 (head!638 (tail!662 res!23489))) (heapContent!0 (tail!662 (tail!662 res!23489)))))))

(assert (= (and d!43784 c!10954) b!51395))

(assert (= (and d!43784 (not c!10954)) b!51396))

(declare-fun m!55177 () Bool)

(assert (=> b!51396 m!55177))

(declare-fun m!55179 () Bool)

(assert (=> b!51396 m!55179))

(assert (=> b!51380 d!43784))

(declare-fun d!43786 () Bool)

(assert (=> d!43786 (= (nodeContent!0 (head!638 h!424)) (union (insert (elem!85 (head!638 h!424)) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!13 (head!638 h!424)))))))

(declare-fun bs!23750 () Bool)

(assert (= bs!23750 d!43786))

(declare-fun m!55181 () Bool)

(assert (=> bs!23750 m!55181))

(declare-fun m!55183 () Bool)

(assert (=> bs!23750 m!55183))

(assert (=> b!51382 d!43786))

(declare-fun d!43788 () Bool)

(declare-fun c!10955 () Bool)

(assert (=> d!43788 (= c!10955 (is-Empty!109 (tail!662 h!424)))))

(declare-fun e!26701 () (Set (_ BitVec 32)))

(assert (=> d!43788 (= (heapContent!0 (tail!662 h!424)) e!26701)))

(declare-fun b!51397 () Bool)

(assert (=> b!51397 (= e!26701 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51398 () Bool)

(assert (=> b!51398 (= e!26701 (union (nodeContent!0 (head!638 (tail!662 h!424))) (heapContent!0 (tail!662 (tail!662 h!424)))))))

(assert (= (and d!43788 c!10955) b!51397))

(assert (= (and d!43788 (not c!10955)) b!51398))

(declare-fun m!55185 () Bool)

(assert (=> b!51398 m!55185))

(declare-fun m!55187 () Bool)

(assert (=> b!51398 m!55187))

(assert (=> b!51382 d!43788))

(declare-fun d!43790 () Bool)

(declare-fun lt!8992 () Heap!7)

(assert (=> d!43790 (= (heapContent!0 lt!8992) (union (heapContent!0 ns1!5) (heapContent!0 Empty!109)))))

(declare-fun e!26704 () Heap!7)

(assert (=> d!43790 (= lt!8992 e!26704)))

(declare-fun c!10958 () Bool)

(assert (=> d!43790 (= c!10958 (is-Empty!109 ns1!5))))

(assert (=> d!43790 (= (reverse0!2 ns1!5 Empty!109) lt!8992)))

(declare-fun b!51403 () Bool)

(assert (=> b!51403 (= e!26704 Empty!109)))

(declare-fun b!51404 () Bool)

(assert (=> b!51404 (= e!26704 (reverse0!2 (tail!662 ns1!5) (Nodes!6 (head!638 ns1!5) Empty!109)))))

(assert (= (and d!43790 c!10958) b!51403))

(assert (= (and d!43790 (not c!10958)) b!51404))

(declare-fun m!55189 () Bool)

(assert (=> d!43790 m!55189))

(declare-fun m!55191 () Bool)

(assert (=> d!43790 m!55191))

(declare-fun m!55193 () Bool)

(assert (=> d!43790 m!55193))

(declare-fun m!55195 () Bool)

(assert (=> b!51404 m!55195))

(assert (=> d!43772 d!43790))

(declare-fun d!43792 () Bool)

(assert (=> d!43792 (= (nodeContent!0 (_1!162 lt!8971)) (union (insert (elem!85 (_1!162 lt!8971)) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!13 (_1!162 lt!8971)))))))

(declare-fun bs!23751 () Bool)

(assert (= bs!23751 d!43792))

(declare-fun m!55197 () Bool)

(assert (=> bs!23751 m!55197))

(declare-fun m!55199 () Bool)

(assert (=> bs!23751 m!55199))

(assert (=> d!43768 d!43792))

(declare-fun d!43794 () Bool)

(declare-fun c!10959 () Bool)

(assert (=> d!43794 (= c!10959 (is-Empty!109 (_2!162 lt!8971)))))

(declare-fun e!26705 () (Set (_ BitVec 32)))

(assert (=> d!43794 (= (heapContent!0 (_2!162 lt!8971)) e!26705)))

(declare-fun b!51405 () Bool)

(assert (=> b!51405 (= e!26705 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51406 () Bool)

(assert (=> b!51406 (= e!26705 (union (nodeContent!0 (head!638 (_2!162 lt!8971))) (heapContent!0 (tail!662 (_2!162 lt!8971)))))))

(assert (= (and d!43794 c!10959) b!51405))

(assert (= (and d!43794 (not c!10959)) b!51406))

(declare-fun m!55201 () Bool)

(assert (=> b!51406 m!55201))

(declare-fun m!55203 () Bool)

(assert (=> b!51406 m!55203))

(assert (=> d!43768 d!43794))

(assert (=> d!43768 d!43776))

(declare-fun d!43796 () Bool)

(declare-fun c!10960 () Bool)

(assert (=> d!43796 (= c!10960 (is-Empty!109 lt!8980))))

(declare-fun e!26706 () (Set (_ BitVec 32)))

(assert (=> d!43796 (= (heapContent!0 lt!8980) e!26706)))

(declare-fun b!51407 () Bool)

(assert (=> b!51407 (= e!26706 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51408 () Bool)

(assert (=> b!51408 (= e!26706 (union (nodeContent!0 (head!638 lt!8980)) (heapContent!0 (tail!662 lt!8980))))))

(assert (= (and d!43796 c!10960) b!51407))

(assert (= (and d!43796 (not c!10960)) b!51408))

(declare-fun m!55205 () Bool)

(assert (=> b!51408 m!55205))

(declare-fun m!55207 () Bool)

(assert (=> b!51408 m!55207))

(assert (=> d!43770 d!43796))

(declare-fun d!43798 () Bool)

(declare-fun c!10961 () Bool)

(assert (=> d!43798 (= c!10961 (is-Empty!109 (reverse!3 ns1!5)))))

(declare-fun e!26707 () (Set (_ BitVec 32)))

(assert (=> d!43798 (= (heapContent!0 (reverse!3 ns1!5)) e!26707)))

(declare-fun b!51409 () Bool)

(assert (=> b!51409 (= e!26707 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51410 () Bool)

(assert (=> b!51410 (= e!26707 (union (nodeContent!0 (head!638 (reverse!3 ns1!5))) (heapContent!0 (tail!662 (reverse!3 ns1!5)))))))

(assert (= (and d!43798 c!10961) b!51409))

(assert (= (and d!43798 (not c!10961)) b!51410))

(declare-fun m!55209 () Bool)

(assert (=> b!51410 m!55209))

(declare-fun m!55211 () Bool)

(assert (=> b!51410 m!55211))

(assert (=> d!43770 d!43798))

(declare-fun d!43800 () Bool)

(declare-fun c!10962 () Bool)

(assert (=> d!43800 (= c!10962 (is-Empty!109 ns2!5))))

(declare-fun e!26708 () (Set (_ BitVec 32)))

(assert (=> d!43800 (= (heapContent!0 ns2!5) e!26708)))

(declare-fun b!51411 () Bool)

(assert (=> b!51411 (= e!26708 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51412 () Bool)

(assert (=> b!51412 (= e!26708 (union (nodeContent!0 (head!638 ns2!5)) (heapContent!0 (tail!662 ns2!5))))))

(assert (= (and d!43800 c!10962) b!51411))

(assert (= (and d!43800 (not c!10962)) b!51412))

(declare-fun m!55213 () Bool)

(assert (=> b!51412 m!55213))

(declare-fun m!55215 () Bool)

(assert (=> b!51412 m!55215))

(assert (=> d!43770 d!43800))

(declare-fun b!51421 () Bool)

(declare-fun e!26713 () Heap!7)

(assert (=> b!51421 (= e!26713 (Nodes!6 (link!0 (head!638 (reverse!3 ns1!5)) (head!638 ns2!5)) Empty!109))))

(declare-fun b!51422 () Bool)

(declare-fun e!26714 () Heap!7)

(assert (=> b!51422 (= e!26713 e!26714)))

(declare-fun c!10967 () Bool)

(assert (=> b!51422 (= c!10967 (< (rank!13 (link!0 (head!638 (reverse!3 ns1!5)) (head!638 ns2!5))) (rank!13 (head!638 (merge!1 (tail!662 (reverse!3 ns1!5)) (tail!662 ns2!5))))))))

(declare-fun b!51424 () Bool)

(assert (=> b!51424 (= e!26714 (insertNode!0 (link!0 (link!0 (head!638 (reverse!3 ns1!5)) (head!638 ns2!5)) (head!638 (merge!1 (tail!662 (reverse!3 ns1!5)) (tail!662 ns2!5)))) (tail!662 (merge!1 (tail!662 (reverse!3 ns1!5)) (tail!662 ns2!5)))))))

(declare-fun d!43802 () Bool)

(declare-fun lt!8995 () Heap!7)

(assert (=> d!43802 (= (heapContent!0 lt!8995) (union (nodeContent!0 (link!0 (head!638 (reverse!3 ns1!5)) (head!638 ns2!5))) (heapContent!0 (merge!1 (tail!662 (reverse!3 ns1!5)) (tail!662 ns2!5)))))))

(assert (=> d!43802 (= lt!8995 e!26713)))

(declare-fun c!10968 () Bool)

(assert (=> d!43802 (= c!10968 (is-Empty!109 (merge!1 (tail!662 (reverse!3 ns1!5)) (tail!662 ns2!5))))))

(assert (=> d!43802 (= (insertNode!0 (link!0 (head!638 (reverse!3 ns1!5)) (head!638 ns2!5)) (merge!1 (tail!662 (reverse!3 ns1!5)) (tail!662 ns2!5))) lt!8995)))

(declare-fun b!51423 () Bool)

(assert (=> b!51423 (= e!26714 (Nodes!6 (link!0 (head!638 (reverse!3 ns1!5)) (head!638 ns2!5)) (merge!1 (tail!662 (reverse!3 ns1!5)) (tail!662 ns2!5))))))

(assert (= (and b!51422 c!10967) b!51423))

(assert (= (and b!51422 (not c!10967)) b!51424))

(assert (= (and d!43802 c!10968) b!51421))

(assert (= (and d!43802 (not c!10968)) b!51422))

(assert (=> b!51424 m!55131))

(declare-fun m!55217 () Bool)

(assert (=> b!51424 m!55217))

(assert (=> b!51424 m!55217))

(declare-fun m!55219 () Bool)

(assert (=> b!51424 m!55219))

(declare-fun m!55221 () Bool)

(assert (=> d!43802 m!55221))

(assert (=> d!43802 m!55131))

(declare-fun m!55223 () Bool)

(assert (=> d!43802 m!55223))

(assert (=> d!43802 m!55133))

(declare-fun m!55225 () Bool)

(assert (=> d!43802 m!55225))

(assert (=> b!51369 d!43802))

(declare-fun d!43804 () Bool)

(assert (=> d!43804 (= (link!0 (head!638 (reverse!3 ns1!5)) (head!638 ns2!5)) (ite (bvsle (elem!85 (head!638 (reverse!3 ns1!5))) (elem!85 (head!638 ns2!5))) (Node!43 (+ (rank!13 (head!638 (reverse!3 ns1!5))) 1) (elem!85 (head!638 (reverse!3 ns1!5))) (Nodes!6 (head!638 ns2!5) (nodes!13 (head!638 (reverse!3 ns1!5))))) (Node!43 (+ (rank!13 (head!638 (reverse!3 ns1!5))) 1) (elem!85 (head!638 ns2!5)) (Nodes!6 (head!638 (reverse!3 ns1!5)) (nodes!13 (head!638 ns2!5))))))))

(assert (=> b!51369 d!43804))

(declare-fun b!51425 () Bool)

(declare-fun e!26716 () Heap!7)

(declare-fun e!26717 () Heap!7)

(assert (=> b!51425 (= e!26716 e!26717)))

(declare-fun c!10969 () Bool)

(declare-fun lt!8998 () Bool)

(assert (=> b!51425 (= c!10969 lt!8998)))

(declare-fun lt!8997 () Heap!7)

(declare-fun e!26715 () Heap!7)

(assert (=> b!51425 (= lt!8997 e!26715)))

(declare-fun c!10972 () Bool)

(assert (=> b!51425 (= c!10972 (or lt!8998 (< (rank!13 (head!638 (tail!662 ns2!5))) (rank!13 (head!638 (tail!662 (reverse!3 ns1!5)))))))))

(assert (=> b!51425 (= lt!8998 (< (rank!13 (head!638 (tail!662 (reverse!3 ns1!5)))) (rank!13 (head!638 (tail!662 ns2!5)))))))

(declare-fun b!51426 () Bool)

(assert (=> b!51426 (= e!26715 (merge!1 (ite lt!8998 (tail!662 (tail!662 (reverse!3 ns1!5))) (tail!662 (reverse!3 ns1!5))) (ite lt!8998 (tail!662 ns2!5) (tail!662 (tail!662 ns2!5)))))))

(declare-fun b!51427 () Bool)

(declare-fun e!26718 () Heap!7)

(assert (=> b!51427 (= e!26718 (Nodes!6 (head!638 (tail!662 ns2!5)) lt!8997))))

(declare-fun b!51428 () Bool)

(assert (=> b!51428 (= e!26717 (Nodes!6 (head!638 (tail!662 (reverse!3 ns1!5))) lt!8997))))

(declare-fun b!51429 () Bool)

(assert (=> b!51429 (= e!26718 (insertNode!0 (link!0 (head!638 (tail!662 (reverse!3 ns1!5))) (head!638 (tail!662 ns2!5))) (merge!1 (tail!662 (tail!662 (reverse!3 ns1!5))) (tail!662 (tail!662 ns2!5)))))))

(declare-fun d!43806 () Bool)

(declare-fun lt!8996 () Heap!7)

(assert (=> d!43806 (= (heapContent!0 lt!8996) (union (heapContent!0 (tail!662 (reverse!3 ns1!5))) (heapContent!0 (tail!662 ns2!5))))))

(declare-fun e!26719 () Heap!7)

(assert (=> d!43806 (= lt!8996 e!26719)))

(declare-fun c!10971 () Bool)

(assert (=> d!43806 (= c!10971 (is-Empty!109 (tail!662 ns2!5)))))

(assert (=> d!43806 (= (merge!1 (tail!662 (reverse!3 ns1!5)) (tail!662 ns2!5)) lt!8996)))

(declare-fun b!51430 () Bool)

(assert (=> b!51430 (= e!26719 (tail!662 (reverse!3 ns1!5)))))

(declare-fun b!51431 () Bool)

(declare-fun res!23560 () Heap!7)

(assert (=> b!51431 (= e!26715 res!23560)))

(assert (=> b!51431 true))

(assert (=> b!51431 true))

(declare-fun b!51432 () Bool)

(assert (=> b!51432 (= e!26719 e!26716)))

(declare-fun c!10973 () Bool)

(assert (=> b!51432 (= c!10973 (is-Empty!109 (tail!662 (reverse!3 ns1!5))))))

(declare-fun b!51433 () Bool)

(assert (=> b!51433 (= e!26716 (tail!662 ns2!5))))

(declare-fun b!51434 () Bool)

(assert (=> b!51434 (= e!26717 e!26718)))

(declare-fun c!10970 () Bool)

(assert (=> b!51434 (= c!10970 (< (rank!13 (head!638 (tail!662 ns2!5))) (rank!13 (head!638 (tail!662 (reverse!3 ns1!5))))))))

(assert (= (and b!51425 c!10972) b!51426))

(assert (= (and b!51425 (not c!10972)) b!51431))

(assert (= (and b!51434 c!10970) b!51427))

(assert (= (and b!51434 (not c!10970)) b!51429))

(assert (= (and b!51425 c!10969) b!51428))

(assert (= (and b!51425 (not c!10969)) b!51434))

(assert (= (and b!51432 c!10973) b!51433))

(assert (= (and b!51432 (not c!10973)) b!51425))

(assert (= (and d!43806 c!10971) b!51430))

(assert (= (and d!43806 (not c!10971)) b!51432))

(declare-fun m!55227 () Bool)

(assert (=> b!51426 m!55227))

(declare-fun m!55229 () Bool)

(assert (=> b!51429 m!55229))

(declare-fun m!55231 () Bool)

(assert (=> b!51429 m!55231))

(assert (=> b!51429 m!55229))

(assert (=> b!51429 m!55231))

(declare-fun m!55233 () Bool)

(assert (=> b!51429 m!55233))

(declare-fun m!55235 () Bool)

(assert (=> d!43806 m!55235))

(assert (=> d!43806 m!55211))

(assert (=> d!43806 m!55215))

(assert (=> b!51369 d!43806))

(push 1)

(assert (not b!51410))

(assert (not b!51389))

(assert (not b!51412))

(assert (not d!43806))

(assert (not b!51406))

(assert (not b!51396))

(assert (not d!43790))

(assert (not b!51429))

(assert (not b!51386))

(assert (not d!43782))

(assert (not b!51398))

(assert (not d!43786))

(assert (not b!51426))

(assert (not b!51408))

(assert (not b!51404))

(assert (not b!51424))

(assert (not d!43792))

(assert (not d!43802))

(assert (not d!43780))

(assert (not b!51384))

(assert (not d!43778))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!43808 () Bool)

(declare-fun c!10974 () Bool)

(assert (=> d!43808 (= c!10974 (is-Empty!109 (nodes!13 (head!638 h!424))))))

(declare-fun e!26720 () (Set (_ BitVec 32)))

(assert (=> d!43808 (= (heapContent!0 (nodes!13 (head!638 h!424))) e!26720)))

(declare-fun b!51435 () Bool)

(assert (=> b!51435 (= e!26720 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51436 () Bool)

(assert (=> b!51436 (= e!26720 (union (nodeContent!0 (head!638 (nodes!13 (head!638 h!424)))) (heapContent!0 (tail!662 (nodes!13 (head!638 h!424))))))))

(assert (= (and d!43808 c!10974) b!51435))

(assert (= (and d!43808 (not c!10974)) b!51436))

(declare-fun m!55237 () Bool)

(assert (=> b!51436 m!55237))

(declare-fun m!55239 () Bool)

(assert (=> b!51436 m!55239))

(assert (=> d!43786 d!43808))

(declare-fun d!43810 () Bool)

(assert (=> d!43810 (= (nodeContent!0 (head!638 (reverse!3 ns1!5))) (union (insert (elem!85 (head!638 (reverse!3 ns1!5))) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!13 (head!638 (reverse!3 ns1!5))))))))

(declare-fun bs!23752 () Bool)

(assert (= bs!23752 d!43810))

(declare-fun m!55241 () Bool)

(assert (=> bs!23752 m!55241))

(declare-fun m!55243 () Bool)

(assert (=> bs!23752 m!55243))

(assert (=> b!51410 d!43810))

(declare-fun d!43812 () Bool)

(declare-fun c!10975 () Bool)

(assert (=> d!43812 (= c!10975 (is-Empty!109 (tail!662 (reverse!3 ns1!5))))))

(declare-fun e!26721 () (Set (_ BitVec 32)))

(assert (=> d!43812 (= (heapContent!0 (tail!662 (reverse!3 ns1!5))) e!26721)))

(declare-fun b!51437 () Bool)

(assert (=> b!51437 (= e!26721 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51438 () Bool)

(assert (=> b!51438 (= e!26721 (union (nodeContent!0 (head!638 (tail!662 (reverse!3 ns1!5)))) (heapContent!0 (tail!662 (tail!662 (reverse!3 ns1!5))))))))

(assert (= (and d!43812 c!10975) b!51437))

(assert (= (and d!43812 (not c!10975)) b!51438))

(declare-fun m!55245 () Bool)

(assert (=> b!51438 m!55245))

(declare-fun m!55247 () Bool)

(assert (=> b!51438 m!55247))

(assert (=> b!51410 d!43812))

(declare-fun b!51439 () Bool)

(declare-fun e!26722 () Heap!7)

(assert (=> b!51439 (= e!26722 (Nodes!6 (link!0 (link!0 (head!638 (reverse!3 ns1!5)) (head!638 ns2!5)) (head!638 (merge!1 (tail!662 (reverse!3 ns1!5)) (tail!662 ns2!5)))) Empty!109))))

(declare-fun b!51440 () Bool)

(declare-fun e!26723 () Heap!7)

(assert (=> b!51440 (= e!26722 e!26723)))

(declare-fun c!10976 () Bool)

(assert (=> b!51440 (= c!10976 (< (rank!13 (link!0 (link!0 (head!638 (reverse!3 ns1!5)) (head!638 ns2!5)) (head!638 (merge!1 (tail!662 (reverse!3 ns1!5)) (tail!662 ns2!5))))) (rank!13 (head!638 (tail!662 (merge!1 (tail!662 (reverse!3 ns1!5)) (tail!662 ns2!5)))))))))

(declare-fun b!51442 () Bool)

(assert (=> b!51442 (= e!26723 (insertNode!0 (link!0 (link!0 (link!0 (head!638 (reverse!3 ns1!5)) (head!638 ns2!5)) (head!638 (merge!1 (tail!662 (reverse!3 ns1!5)) (tail!662 ns2!5)))) (head!638 (tail!662 (merge!1 (tail!662 (reverse!3 ns1!5)) (tail!662 ns2!5))))) (tail!662 (tail!662 (merge!1 (tail!662 (reverse!3 ns1!5)) (tail!662 ns2!5))))))))

(declare-fun d!43814 () Bool)

(declare-fun lt!8999 () Heap!7)

(assert (=> d!43814 (= (heapContent!0 lt!8999) (union (nodeContent!0 (link!0 (link!0 (head!638 (reverse!3 ns1!5)) (head!638 ns2!5)) (head!638 (merge!1 (tail!662 (reverse!3 ns1!5)) (tail!662 ns2!5))))) (heapContent!0 (tail!662 (merge!1 (tail!662 (reverse!3 ns1!5)) (tail!662 ns2!5))))))))

(assert (=> d!43814 (= lt!8999 e!26722)))

(declare-fun c!10977 () Bool)

(assert (=> d!43814 (= c!10977 (is-Empty!109 (tail!662 (merge!1 (tail!662 (reverse!3 ns1!5)) (tail!662 ns2!5)))))))

(assert (=> d!43814 (= (insertNode!0 (link!0 (link!0 (head!638 (reverse!3 ns1!5)) (head!638 ns2!5)) (head!638 (merge!1 (tail!662 (reverse!3 ns1!5)) (tail!662 ns2!5)))) (tail!662 (merge!1 (tail!662 (reverse!3 ns1!5)) (tail!662 ns2!5)))) lt!8999)))

(declare-fun b!51441 () Bool)

(assert (=> b!51441 (= e!26723 (Nodes!6 (link!0 (link!0 (head!638 (reverse!3 ns1!5)) (head!638 ns2!5)) (head!638 (merge!1 (tail!662 (reverse!3 ns1!5)) (tail!662 ns2!5)))) (tail!662 (merge!1 (tail!662 (reverse!3 ns1!5)) (tail!662 ns2!5)))))))

(assert (= (and b!51440 c!10976) b!51441))

(assert (= (and b!51440 (not c!10976)) b!51442))

(assert (= (and d!43814 c!10977) b!51439))

(assert (= (and d!43814 (not c!10977)) b!51440))

(assert (=> b!51442 m!55217))

(declare-fun m!55249 () Bool)

(assert (=> b!51442 m!55249))

(assert (=> b!51442 m!55249))

(declare-fun m!55251 () Bool)

(assert (=> b!51442 m!55251))

(declare-fun m!55253 () Bool)

(assert (=> d!43814 m!55253))

(assert (=> d!43814 m!55217))

(declare-fun m!55255 () Bool)

(assert (=> d!43814 m!55255))

(declare-fun m!55257 () Bool)

(assert (=> d!43814 m!55257))

(assert (=> b!51424 d!43814))

(declare-fun d!43816 () Bool)

(assert (=> d!43816 (= (link!0 (link!0 (head!638 (reverse!3 ns1!5)) (head!638 ns2!5)) (head!638 (merge!1 (tail!662 (reverse!3 ns1!5)) (tail!662 ns2!5)))) (ite (bvsle (elem!85 (link!0 (head!638 (reverse!3 ns1!5)) (head!638 ns2!5))) (elem!85 (head!638 (merge!1 (tail!662 (reverse!3 ns1!5)) (tail!662 ns2!5))))) (Node!43 (+ (rank!13 (link!0 (head!638 (reverse!3 ns1!5)) (head!638 ns2!5))) 1) (elem!85 (link!0 (head!638 (reverse!3 ns1!5)) (head!638 ns2!5))) (Nodes!6 (head!638 (merge!1 (tail!662 (reverse!3 ns1!5)) (tail!662 ns2!5))) (nodes!13 (link!0 (head!638 (reverse!3 ns1!5)) (head!638 ns2!5))))) (Node!43 (+ (rank!13 (link!0 (head!638 (reverse!3 ns1!5)) (head!638 ns2!5))) 1) (elem!85 (head!638 (merge!1 (tail!662 (reverse!3 ns1!5)) (tail!662 ns2!5)))) (Nodes!6 (link!0 (head!638 (reverse!3 ns1!5)) (head!638 ns2!5)) (nodes!13 (head!638 (merge!1 (tail!662 (reverse!3 ns1!5)) (tail!662 ns2!5))))))))))

(assert (=> b!51424 d!43816))

(declare-fun d!43818 () Bool)

(assert (=> d!43818 (= (nodeContent!0 (head!638 ns2!5)) (union (insert (elem!85 (head!638 ns2!5)) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!13 (head!638 ns2!5)))))))

(declare-fun bs!23753 () Bool)

(assert (= bs!23753 d!43818))

(declare-fun m!55259 () Bool)

(assert (=> bs!23753 m!55259))

(declare-fun m!55261 () Bool)

(assert (=> bs!23753 m!55261))

(assert (=> b!51412 d!43818))

(declare-fun d!43820 () Bool)

(declare-fun c!10978 () Bool)

(assert (=> d!43820 (= c!10978 (is-Empty!109 (tail!662 ns2!5)))))

(declare-fun e!26724 () (Set (_ BitVec 32)))

(assert (=> d!43820 (= (heapContent!0 (tail!662 ns2!5)) e!26724)))

(declare-fun b!51443 () Bool)

(assert (=> b!51443 (= e!26724 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51444 () Bool)

(assert (=> b!51444 (= e!26724 (union (nodeContent!0 (head!638 (tail!662 ns2!5))) (heapContent!0 (tail!662 (tail!662 ns2!5)))))))

(assert (= (and d!43820 c!10978) b!51443))

(assert (= (and d!43820 (not c!10978)) b!51444))

(declare-fun m!55263 () Bool)

(assert (=> b!51444 m!55263))

(declare-fun m!55265 () Bool)

(assert (=> b!51444 m!55265))

(assert (=> b!51412 d!43820))

(declare-fun b!51445 () Bool)

(declare-fun e!26726 () Heap!7)

(declare-fun e!26727 () Heap!7)

(assert (=> b!51445 (= e!26726 e!26727)))

(declare-fun c!10979 () Bool)

(declare-fun lt!9002 () Bool)

(assert (=> b!51445 (= c!10979 lt!9002)))

(declare-fun lt!9001 () Heap!7)

(declare-fun e!26725 () Heap!7)

(assert (=> b!51445 (= lt!9001 e!26725)))

(declare-fun c!10982 () Bool)

(assert (=> b!51445 (= c!10982 (or lt!9002 (< (rank!13 (head!638 (ite lt!8989 (ite lt!8982 ns2!5 (tail!662 ns2!5)) (tail!662 (ite lt!8982 ns2!5 (tail!662 ns2!5)))))) (rank!13 (head!638 (ite lt!8989 (tail!662 (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5))) (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5))))))))))

(assert (=> b!51445 (= lt!9002 (< (rank!13 (head!638 (ite lt!8989 (tail!662 (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5))) (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5))))) (rank!13 (head!638 (ite lt!8989 (ite lt!8982 ns2!5 (tail!662 ns2!5)) (tail!662 (ite lt!8982 ns2!5 (tail!662 ns2!5))))))))))

(declare-fun b!51446 () Bool)

(assert (=> b!51446 (= e!26725 (merge!1 (ite lt!9002 (tail!662 (ite lt!8989 (tail!662 (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5))) (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5)))) (ite lt!8989 (tail!662 (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5))) (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5)))) (ite lt!9002 (ite lt!8989 (ite lt!8982 ns2!5 (tail!662 ns2!5)) (tail!662 (ite lt!8982 ns2!5 (tail!662 ns2!5)))) (tail!662 (ite lt!8989 (ite lt!8982 ns2!5 (tail!662 ns2!5)) (tail!662 (ite lt!8982 ns2!5 (tail!662 ns2!5))))))))))

(declare-fun b!51447 () Bool)

(declare-fun e!26728 () Heap!7)

(assert (=> b!51447 (= e!26728 (Nodes!6 (head!638 (ite lt!8989 (ite lt!8982 ns2!5 (tail!662 ns2!5)) (tail!662 (ite lt!8982 ns2!5 (tail!662 ns2!5))))) lt!9001))))

(declare-fun b!51448 () Bool)

(assert (=> b!51448 (= e!26727 (Nodes!6 (head!638 (ite lt!8989 (tail!662 (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5))) (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5)))) lt!9001))))

(declare-fun b!51449 () Bool)

(assert (=> b!51449 (= e!26728 (insertNode!0 (link!0 (head!638 (ite lt!8989 (tail!662 (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5))) (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5)))) (head!638 (ite lt!8989 (ite lt!8982 ns2!5 (tail!662 ns2!5)) (tail!662 (ite lt!8982 ns2!5 (tail!662 ns2!5)))))) (merge!1 (tail!662 (ite lt!8989 (tail!662 (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5))) (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5)))) (tail!662 (ite lt!8989 (ite lt!8982 ns2!5 (tail!662 ns2!5)) (tail!662 (ite lt!8982 ns2!5 (tail!662 ns2!5))))))))))

(declare-fun lt!9000 () Heap!7)

(declare-fun d!43822 () Bool)

(assert (=> d!43822 (= (heapContent!0 lt!9000) (union (heapContent!0 (ite lt!8989 (tail!662 (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5))) (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5)))) (heapContent!0 (ite lt!8989 (ite lt!8982 ns2!5 (tail!662 ns2!5)) (tail!662 (ite lt!8982 ns2!5 (tail!662 ns2!5)))))))))

(declare-fun e!26729 () Heap!7)

(assert (=> d!43822 (= lt!9000 e!26729)))

(declare-fun c!10981 () Bool)

(assert (=> d!43822 (= c!10981 (is-Empty!109 (ite lt!8989 (ite lt!8982 ns2!5 (tail!662 ns2!5)) (tail!662 (ite lt!8982 ns2!5 (tail!662 ns2!5))))))))

(assert (=> d!43822 (= (merge!1 (ite lt!8989 (tail!662 (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5))) (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5))) (ite lt!8989 (ite lt!8982 ns2!5 (tail!662 ns2!5)) (tail!662 (ite lt!8982 ns2!5 (tail!662 ns2!5))))) lt!9000)))

(declare-fun b!51450 () Bool)

(assert (=> b!51450 (= e!26729 (ite lt!8989 (tail!662 (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5))) (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5))))))

(declare-fun b!51451 () Bool)

(declare-fun res!23561 () Heap!7)

(assert (=> b!51451 (= e!26725 res!23561)))

(assert (=> b!51451 true))

(assert (=> b!51451 true))

(declare-fun b!51452 () Bool)

(assert (=> b!51452 (= e!26729 e!26726)))

(declare-fun c!10983 () Bool)

(assert (=> b!51452 (= c!10983 (is-Empty!109 (ite lt!8989 (tail!662 (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5))) (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5)))))))

(declare-fun b!51453 () Bool)

(assert (=> b!51453 (= e!26726 (ite lt!8989 (ite lt!8982 ns2!5 (tail!662 ns2!5)) (tail!662 (ite lt!8982 ns2!5 (tail!662 ns2!5)))))))

(declare-fun b!51454 () Bool)

(assert (=> b!51454 (= e!26727 e!26728)))

(declare-fun c!10980 () Bool)

(assert (=> b!51454 (= c!10980 (< (rank!13 (head!638 (ite lt!8989 (ite lt!8982 ns2!5 (tail!662 ns2!5)) (tail!662 (ite lt!8982 ns2!5 (tail!662 ns2!5)))))) (rank!13 (head!638 (ite lt!8989 (tail!662 (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5))) (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5)))))))))

(assert (= (and b!51445 c!10982) b!51446))

(assert (= (and b!51445 (not c!10982)) b!51451))

(assert (= (and b!51454 c!10980) b!51447))

(assert (= (and b!51454 (not c!10980)) b!51449))

(assert (= (and b!51445 c!10979) b!51448))

(assert (= (and b!51445 (not c!10979)) b!51454))

(assert (= (and b!51452 c!10983) b!51453))

(assert (= (and b!51452 (not c!10983)) b!51445))

(assert (= (and d!43822 c!10981) b!51450))

(assert (= (and d!43822 (not c!10981)) b!51452))

(declare-fun m!55267 () Bool)

(assert (=> b!51446 m!55267))

(declare-fun m!55269 () Bool)

(assert (=> b!51449 m!55269))

(declare-fun m!55271 () Bool)

(assert (=> b!51449 m!55271))

(assert (=> b!51449 m!55269))

(assert (=> b!51449 m!55271))

(declare-fun m!55273 () Bool)

(assert (=> b!51449 m!55273))

(declare-fun m!55275 () Bool)

(assert (=> d!43822 m!55275))

(declare-fun m!55277 () Bool)

(assert (=> d!43822 m!55277))

(declare-fun m!55279 () Bool)

(assert (=> d!43822 m!55279))

(assert (=> b!51386 d!43822))

(declare-fun d!43824 () Bool)

(declare-fun c!10984 () Bool)

(assert (=> d!43824 (= c!10984 (is-Empty!109 (nodes!13 (_1!162 lt!8971))))))

(declare-fun e!26730 () (Set (_ BitVec 32)))

(assert (=> d!43824 (= (heapContent!0 (nodes!13 (_1!162 lt!8971))) e!26730)))

(declare-fun b!51455 () Bool)

(assert (=> b!51455 (= e!26730 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51456 () Bool)

(assert (=> b!51456 (= e!26730 (union (nodeContent!0 (head!638 (nodes!13 (_1!162 lt!8971)))) (heapContent!0 (tail!662 (nodes!13 (_1!162 lt!8971))))))))

(assert (= (and d!43824 c!10984) b!51455))

(assert (= (and d!43824 (not c!10984)) b!51456))

(declare-fun m!55281 () Bool)

(assert (=> b!51456 m!55281))

(declare-fun m!55283 () Bool)

(assert (=> b!51456 m!55283))

(assert (=> d!43792 d!43824))

(declare-fun d!43826 () Bool)

(assert (=> d!43826 (= (nodeContent!0 (_1!162 lt!8984)) (union (insert (elem!85 (_1!162 lt!8984)) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!13 (_1!162 lt!8984)))))))

(declare-fun bs!23754 () Bool)

(assert (= bs!23754 d!43826))

(declare-fun m!55285 () Bool)

(assert (=> bs!23754 m!55285))

(declare-fun m!55287 () Bool)

(assert (=> bs!23754 m!55287))

(assert (=> d!43778 d!43826))

(declare-fun d!43828 () Bool)

(declare-fun c!10985 () Bool)

(assert (=> d!43828 (= c!10985 (is-Empty!109 (_2!162 lt!8984)))))

(declare-fun e!26731 () (Set (_ BitVec 32)))

(assert (=> d!43828 (= (heapContent!0 (_2!162 lt!8984)) e!26731)))

(declare-fun b!51457 () Bool)

(assert (=> b!51457 (= e!26731 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51458 () Bool)

(assert (=> b!51458 (= e!26731 (union (nodeContent!0 (head!638 (_2!162 lt!8984))) (heapContent!0 (tail!662 (_2!162 lt!8984)))))))

(assert (= (and d!43828 c!10985) b!51457))

(assert (= (and d!43828 (not c!10985)) b!51458))

(declare-fun m!55289 () Bool)

(assert (=> b!51458 m!55289))

(declare-fun m!55291 () Bool)

(assert (=> b!51458 m!55291))

(assert (=> d!43778 d!43828))

(assert (=> d!43778 d!43788))

(declare-fun d!43830 () Bool)

(assert (=> d!43830 (= (nodeContent!0 (head!638 (_2!162 lt!8971))) (union (insert (elem!85 (head!638 (_2!162 lt!8971))) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!13 (head!638 (_2!162 lt!8971))))))))

(declare-fun bs!23755 () Bool)

(assert (= bs!23755 d!43830))

(declare-fun m!55293 () Bool)

(assert (=> bs!23755 m!55293))

(declare-fun m!55295 () Bool)

(assert (=> bs!23755 m!55295))

(assert (=> b!51406 d!43830))

(declare-fun d!43832 () Bool)

(declare-fun c!10986 () Bool)

(assert (=> d!43832 (= c!10986 (is-Empty!109 (tail!662 (_2!162 lt!8971))))))

(declare-fun e!26732 () (Set (_ BitVec 32)))

(assert (=> d!43832 (= (heapContent!0 (tail!662 (_2!162 lt!8971))) e!26732)))

(declare-fun b!51459 () Bool)

(assert (=> b!51459 (= e!26732 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51460 () Bool)

(assert (=> b!51460 (= e!26732 (union (nodeContent!0 (head!638 (tail!662 (_2!162 lt!8971)))) (heapContent!0 (tail!662 (tail!662 (_2!162 lt!8971))))))))

(assert (= (and d!43832 c!10986) b!51459))

(assert (= (and d!43832 (not c!10986)) b!51460))

(declare-fun m!55297 () Bool)

(assert (=> b!51460 m!55297))

(declare-fun m!55299 () Bool)

(assert (=> b!51460 m!55299))

(assert (=> b!51406 d!43832))

(declare-fun d!43834 () Bool)

(declare-fun c!10987 () Bool)

(assert (=> d!43834 (= c!10987 (is-Empty!109 (nodes!13 (head!638 res!23489))))))

(declare-fun e!26733 () (Set (_ BitVec 32)))

(assert (=> d!43834 (= (heapContent!0 (nodes!13 (head!638 res!23489))) e!26733)))

(declare-fun b!51461 () Bool)

(assert (=> b!51461 (= e!26733 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51462 () Bool)

(assert (=> b!51462 (= e!26733 (union (nodeContent!0 (head!638 (nodes!13 (head!638 res!23489)))) (heapContent!0 (tail!662 (nodes!13 (head!638 res!23489))))))))

(assert (= (and d!43834 c!10987) b!51461))

(assert (= (and d!43834 (not c!10987)) b!51462))

(declare-fun m!55301 () Bool)

(assert (=> b!51462 m!55301))

(declare-fun m!55303 () Bool)

(assert (=> b!51462 m!55303))

(assert (=> d!43782 d!43834))

(declare-fun d!43836 () Bool)

(assert (=> d!43836 (= (nodeContent!0 (head!638 (tail!662 res!23489))) (union (insert (elem!85 (head!638 (tail!662 res!23489))) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!13 (head!638 (tail!662 res!23489))))))))

(declare-fun bs!23756 () Bool)

(assert (= bs!23756 d!43836))

(declare-fun m!55305 () Bool)

(assert (=> bs!23756 m!55305))

(declare-fun m!55307 () Bool)

(assert (=> bs!23756 m!55307))

(assert (=> b!51396 d!43836))

(declare-fun d!43838 () Bool)

(declare-fun c!10988 () Bool)

(assert (=> d!43838 (= c!10988 (is-Empty!109 (tail!662 (tail!662 res!23489))))))

(declare-fun e!26734 () (Set (_ BitVec 32)))

(assert (=> d!43838 (= (heapContent!0 (tail!662 (tail!662 res!23489))) e!26734)))

(declare-fun b!51463 () Bool)

(assert (=> b!51463 (= e!26734 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51464 () Bool)

(assert (=> b!51464 (= e!26734 (union (nodeContent!0 (head!638 (tail!662 (tail!662 res!23489)))) (heapContent!0 (tail!662 (tail!662 (tail!662 res!23489))))))))

(assert (= (and d!43838 c!10988) b!51463))

(assert (= (and d!43838 (not c!10988)) b!51464))

(declare-fun m!55309 () Bool)

(assert (=> b!51464 m!55309))

(declare-fun m!55311 () Bool)

(assert (=> b!51464 m!55311))

(assert (=> b!51396 d!43838))

(declare-fun e!26735 () Heap!7)

(declare-fun b!51465 () Bool)

(assert (=> b!51465 (= e!26735 (Nodes!6 (link!0 (head!638 (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5))) (head!638 (ite lt!8982 ns2!5 (tail!662 ns2!5)))) Empty!109))))

(declare-fun b!51466 () Bool)

(declare-fun e!26736 () Heap!7)

(assert (=> b!51466 (= e!26735 e!26736)))

(declare-fun c!10989 () Bool)

(assert (=> b!51466 (= c!10989 (< (rank!13 (link!0 (head!638 (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5))) (head!638 (ite lt!8982 ns2!5 (tail!662 ns2!5))))) (rank!13 (head!638 (merge!1 (tail!662 (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5))) (tail!662 (ite lt!8982 ns2!5 (tail!662 ns2!5))))))))))

(declare-fun b!51468 () Bool)

(assert (=> b!51468 (= e!26736 (insertNode!0 (link!0 (link!0 (head!638 (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5))) (head!638 (ite lt!8982 ns2!5 (tail!662 ns2!5)))) (head!638 (merge!1 (tail!662 (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5))) (tail!662 (ite lt!8982 ns2!5 (tail!662 ns2!5)))))) (tail!662 (merge!1 (tail!662 (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5))) (tail!662 (ite lt!8982 ns2!5 (tail!662 ns2!5)))))))))

(declare-fun d!43840 () Bool)

(declare-fun lt!9003 () Heap!7)

(assert (=> d!43840 (= (heapContent!0 lt!9003) (union (nodeContent!0 (link!0 (head!638 (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5))) (head!638 (ite lt!8982 ns2!5 (tail!662 ns2!5))))) (heapContent!0 (merge!1 (tail!662 (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5))) (tail!662 (ite lt!8982 ns2!5 (tail!662 ns2!5)))))))))

(assert (=> d!43840 (= lt!9003 e!26735)))

(declare-fun c!10990 () Bool)

(assert (=> d!43840 (= c!10990 (is-Empty!109 (merge!1 (tail!662 (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5))) (tail!662 (ite lt!8982 ns2!5 (tail!662 ns2!5))))))))

(assert (=> d!43840 (= (insertNode!0 (link!0 (head!638 (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5))) (head!638 (ite lt!8982 ns2!5 (tail!662 ns2!5)))) (merge!1 (tail!662 (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5))) (tail!662 (ite lt!8982 ns2!5 (tail!662 ns2!5))))) lt!9003)))

(declare-fun b!51467 () Bool)

(assert (=> b!51467 (= e!26736 (Nodes!6 (link!0 (head!638 (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5))) (head!638 (ite lt!8982 ns2!5 (tail!662 ns2!5)))) (merge!1 (tail!662 (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5))) (tail!662 (ite lt!8982 ns2!5 (tail!662 ns2!5))))))))

(assert (= (and b!51466 c!10989) b!51467))

(assert (= (and b!51466 (not c!10989)) b!51468))

(assert (= (and d!43840 c!10990) b!51465))

(assert (= (and d!43840 (not c!10990)) b!51466))

(assert (=> b!51468 m!55161))

(declare-fun m!55313 () Bool)

(assert (=> b!51468 m!55313))

(assert (=> b!51468 m!55313))

(declare-fun m!55315 () Bool)

(assert (=> b!51468 m!55315))

(declare-fun m!55317 () Bool)

(assert (=> d!43840 m!55317))

(assert (=> d!43840 m!55161))

(declare-fun m!55319 () Bool)

(assert (=> d!43840 m!55319))

(assert (=> d!43840 m!55163))

(declare-fun m!55321 () Bool)

(assert (=> d!43840 m!55321))

(assert (=> b!51389 d!43840))

(declare-fun d!43842 () Bool)

(assert (=> d!43842 (= (link!0 (head!638 (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5))) (head!638 (ite lt!8982 ns2!5 (tail!662 ns2!5)))) (ite (bvsle (elem!85 (head!638 (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5)))) (elem!85 (head!638 (ite lt!8982 ns2!5 (tail!662 ns2!5))))) (Node!43 (+ (rank!13 (head!638 (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5)))) 1) (elem!85 (head!638 (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5)))) (Nodes!6 (head!638 (ite lt!8982 ns2!5 (tail!662 ns2!5))) (nodes!13 (head!638 (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5)))))) (Node!43 (+ (rank!13 (head!638 (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5)))) 1) (elem!85 (head!638 (ite lt!8982 ns2!5 (tail!662 ns2!5)))) (Nodes!6 (head!638 (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5))) (nodes!13 (head!638 (ite lt!8982 ns2!5 (tail!662 ns2!5))))))))))

(assert (=> b!51389 d!43842))

(declare-fun b!51469 () Bool)

(declare-fun e!26738 () Heap!7)

(declare-fun e!26739 () Heap!7)

(assert (=> b!51469 (= e!26738 e!26739)))

(declare-fun c!10991 () Bool)

(declare-fun lt!9006 () Bool)

(assert (=> b!51469 (= c!10991 lt!9006)))

(declare-fun lt!9005 () Heap!7)

(declare-fun e!26737 () Heap!7)

(assert (=> b!51469 (= lt!9005 e!26737)))

(declare-fun c!10994 () Bool)

(assert (=> b!51469 (= c!10994 (or lt!9006 (< (rank!13 (head!638 (tail!662 (ite lt!8982 ns2!5 (tail!662 ns2!5))))) (rank!13 (head!638 (tail!662 (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5))))))))))

(assert (=> b!51469 (= lt!9006 (< (rank!13 (head!638 (tail!662 (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5))))) (rank!13 (head!638 (tail!662 (ite lt!8982 ns2!5 (tail!662 ns2!5)))))))))

(declare-fun b!51470 () Bool)

(assert (=> b!51470 (= e!26737 (merge!1 (ite lt!9006 (tail!662 (tail!662 (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5)))) (tail!662 (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5)))) (ite lt!9006 (tail!662 (ite lt!8982 ns2!5 (tail!662 ns2!5))) (tail!662 (tail!662 (ite lt!8982 ns2!5 (tail!662 ns2!5)))))))))

(declare-fun e!26740 () Heap!7)

(declare-fun b!51471 () Bool)

(assert (=> b!51471 (= e!26740 (Nodes!6 (head!638 (tail!662 (ite lt!8982 ns2!5 (tail!662 ns2!5)))) lt!9005))))

(declare-fun b!51472 () Bool)

(assert (=> b!51472 (= e!26739 (Nodes!6 (head!638 (tail!662 (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5)))) lt!9005))))

(declare-fun b!51473 () Bool)

(assert (=> b!51473 (= e!26740 (insertNode!0 (link!0 (head!638 (tail!662 (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5)))) (head!638 (tail!662 (ite lt!8982 ns2!5 (tail!662 ns2!5))))) (merge!1 (tail!662 (tail!662 (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5)))) (tail!662 (tail!662 (ite lt!8982 ns2!5 (tail!662 ns2!5)))))))))

(declare-fun d!43844 () Bool)

(declare-fun lt!9004 () Heap!7)

(assert (=> d!43844 (= (heapContent!0 lt!9004) (union (heapContent!0 (tail!662 (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5)))) (heapContent!0 (tail!662 (ite lt!8982 ns2!5 (tail!662 ns2!5))))))))

(declare-fun e!26741 () Heap!7)

(assert (=> d!43844 (= lt!9004 e!26741)))

(declare-fun c!10993 () Bool)

(assert (=> d!43844 (= c!10993 (is-Empty!109 (tail!662 (ite lt!8982 ns2!5 (tail!662 ns2!5)))))))

(assert (=> d!43844 (= (merge!1 (tail!662 (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5))) (tail!662 (ite lt!8982 ns2!5 (tail!662 ns2!5)))) lt!9004)))

(declare-fun b!51474 () Bool)

(assert (=> b!51474 (= e!26741 (tail!662 (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5))))))

(declare-fun b!51475 () Bool)

(declare-fun res!23562 () Heap!7)

(assert (=> b!51475 (= e!26737 res!23562)))

(assert (=> b!51475 true))

(assert (=> b!51475 true))

(declare-fun b!51476 () Bool)

(assert (=> b!51476 (= e!26741 e!26738)))

(declare-fun c!10995 () Bool)

(assert (=> b!51476 (= c!10995 (is-Empty!109 (tail!662 (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5)))))))

(declare-fun b!51477 () Bool)

(assert (=> b!51477 (= e!26738 (tail!662 (ite lt!8982 ns2!5 (tail!662 ns2!5))))))

(declare-fun b!51478 () Bool)

(assert (=> b!51478 (= e!26739 e!26740)))

(declare-fun c!10992 () Bool)

(assert (=> b!51478 (= c!10992 (< (rank!13 (head!638 (tail!662 (ite lt!8982 ns2!5 (tail!662 ns2!5))))) (rank!13 (head!638 (tail!662 (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5)))))))))

(assert (= (and b!51469 c!10994) b!51470))

(assert (= (and b!51469 (not c!10994)) b!51475))

(assert (= (and b!51478 c!10992) b!51471))

(assert (= (and b!51478 (not c!10992)) b!51473))

(assert (= (and b!51469 c!10991) b!51472))

(assert (= (and b!51469 (not c!10991)) b!51478))

(assert (= (and b!51476 c!10995) b!51477))

(assert (= (and b!51476 (not c!10995)) b!51469))

(assert (= (and d!43844 c!10993) b!51474))

(assert (= (and d!43844 (not c!10993)) b!51476))

(declare-fun m!55323 () Bool)

(assert (=> b!51470 m!55323))

(declare-fun m!55325 () Bool)

(assert (=> b!51473 m!55325))

(declare-fun m!55327 () Bool)

(assert (=> b!51473 m!55327))

(assert (=> b!51473 m!55325))

(assert (=> b!51473 m!55327))

(declare-fun m!55329 () Bool)

(assert (=> b!51473 m!55329))

(declare-fun m!55331 () Bool)

(assert (=> d!43844 m!55331))

(declare-fun m!55333 () Bool)

(assert (=> d!43844 m!55333))

(declare-fun m!55335 () Bool)

(assert (=> d!43844 m!55335))

(assert (=> b!51389 d!43844))

(declare-fun b!51479 () Bool)

(declare-fun e!26742 () Heap!7)

(assert (=> b!51479 (= e!26742 (Nodes!6 (link!0 (head!638 (tail!662 (reverse!3 ns1!5))) (head!638 (tail!662 ns2!5))) Empty!109))))

(declare-fun b!51480 () Bool)

(declare-fun e!26743 () Heap!7)

(assert (=> b!51480 (= e!26742 e!26743)))

(declare-fun c!10996 () Bool)

(assert (=> b!51480 (= c!10996 (< (rank!13 (link!0 (head!638 (tail!662 (reverse!3 ns1!5))) (head!638 (tail!662 ns2!5)))) (rank!13 (head!638 (merge!1 (tail!662 (tail!662 (reverse!3 ns1!5))) (tail!662 (tail!662 ns2!5)))))))))

(declare-fun b!51482 () Bool)

(assert (=> b!51482 (= e!26743 (insertNode!0 (link!0 (link!0 (head!638 (tail!662 (reverse!3 ns1!5))) (head!638 (tail!662 ns2!5))) (head!638 (merge!1 (tail!662 (tail!662 (reverse!3 ns1!5))) (tail!662 (tail!662 ns2!5))))) (tail!662 (merge!1 (tail!662 (tail!662 (reverse!3 ns1!5))) (tail!662 (tail!662 ns2!5))))))))

(declare-fun d!43846 () Bool)

(declare-fun lt!9007 () Heap!7)

(assert (=> d!43846 (= (heapContent!0 lt!9007) (union (nodeContent!0 (link!0 (head!638 (tail!662 (reverse!3 ns1!5))) (head!638 (tail!662 ns2!5)))) (heapContent!0 (merge!1 (tail!662 (tail!662 (reverse!3 ns1!5))) (tail!662 (tail!662 ns2!5))))))))

(assert (=> d!43846 (= lt!9007 e!26742)))

(declare-fun c!10997 () Bool)

(assert (=> d!43846 (= c!10997 (is-Empty!109 (merge!1 (tail!662 (tail!662 (reverse!3 ns1!5))) (tail!662 (tail!662 ns2!5)))))))

(assert (=> d!43846 (= (insertNode!0 (link!0 (head!638 (tail!662 (reverse!3 ns1!5))) (head!638 (tail!662 ns2!5))) (merge!1 (tail!662 (tail!662 (reverse!3 ns1!5))) (tail!662 (tail!662 ns2!5)))) lt!9007)))

(declare-fun b!51481 () Bool)

(assert (=> b!51481 (= e!26743 (Nodes!6 (link!0 (head!638 (tail!662 (reverse!3 ns1!5))) (head!638 (tail!662 ns2!5))) (merge!1 (tail!662 (tail!662 (reverse!3 ns1!5))) (tail!662 (tail!662 ns2!5)))))))

(assert (= (and b!51480 c!10996) b!51481))

(assert (= (and b!51480 (not c!10996)) b!51482))

(assert (= (and d!43846 c!10997) b!51479))

(assert (= (and d!43846 (not c!10997)) b!51480))

(assert (=> b!51482 m!55229))

(declare-fun m!55337 () Bool)

(assert (=> b!51482 m!55337))

(assert (=> b!51482 m!55337))

(declare-fun m!55339 () Bool)

(assert (=> b!51482 m!55339))

(declare-fun m!55341 () Bool)

(assert (=> d!43846 m!55341))

(assert (=> d!43846 m!55229))

(declare-fun m!55343 () Bool)

(assert (=> d!43846 m!55343))

(assert (=> d!43846 m!55231))

(declare-fun m!55345 () Bool)

(assert (=> d!43846 m!55345))

(assert (=> b!51429 d!43846))

(declare-fun d!43848 () Bool)

(assert (=> d!43848 (= (link!0 (head!638 (tail!662 (reverse!3 ns1!5))) (head!638 (tail!662 ns2!5))) (ite (bvsle (elem!85 (head!638 (tail!662 (reverse!3 ns1!5)))) (elem!85 (head!638 (tail!662 ns2!5)))) (Node!43 (+ (rank!13 (head!638 (tail!662 (reverse!3 ns1!5)))) 1) (elem!85 (head!638 (tail!662 (reverse!3 ns1!5)))) (Nodes!6 (head!638 (tail!662 ns2!5)) (nodes!13 (head!638 (tail!662 (reverse!3 ns1!5)))))) (Node!43 (+ (rank!13 (head!638 (tail!662 (reverse!3 ns1!5)))) 1) (elem!85 (head!638 (tail!662 ns2!5))) (Nodes!6 (head!638 (tail!662 (reverse!3 ns1!5))) (nodes!13 (head!638 (tail!662 ns2!5)))))))))

(assert (=> b!51429 d!43848))

(declare-fun b!51483 () Bool)

(declare-fun e!26745 () Heap!7)

(declare-fun e!26746 () Heap!7)

(assert (=> b!51483 (= e!26745 e!26746)))

(declare-fun c!10998 () Bool)

(declare-fun lt!9010 () Bool)

(assert (=> b!51483 (= c!10998 lt!9010)))

(declare-fun lt!9009 () Heap!7)

(declare-fun e!26744 () Heap!7)

(assert (=> b!51483 (= lt!9009 e!26744)))

(declare-fun c!11001 () Bool)

(assert (=> b!51483 (= c!11001 (or lt!9010 (< (rank!13 (head!638 (tail!662 (tail!662 ns2!5)))) (rank!13 (head!638 (tail!662 (tail!662 (reverse!3 ns1!5))))))))))

(assert (=> b!51483 (= lt!9010 (< (rank!13 (head!638 (tail!662 (tail!662 (reverse!3 ns1!5))))) (rank!13 (head!638 (tail!662 (tail!662 ns2!5))))))))

(declare-fun b!51484 () Bool)

(assert (=> b!51484 (= e!26744 (merge!1 (ite lt!9010 (tail!662 (tail!662 (tail!662 (reverse!3 ns1!5)))) (tail!662 (tail!662 (reverse!3 ns1!5)))) (ite lt!9010 (tail!662 (tail!662 ns2!5)) (tail!662 (tail!662 (tail!662 ns2!5))))))))

(declare-fun b!51485 () Bool)

(declare-fun e!26747 () Heap!7)

(assert (=> b!51485 (= e!26747 (Nodes!6 (head!638 (tail!662 (tail!662 ns2!5))) lt!9009))))

(declare-fun b!51486 () Bool)

(assert (=> b!51486 (= e!26746 (Nodes!6 (head!638 (tail!662 (tail!662 (reverse!3 ns1!5)))) lt!9009))))

(declare-fun b!51487 () Bool)

(assert (=> b!51487 (= e!26747 (insertNode!0 (link!0 (head!638 (tail!662 (tail!662 (reverse!3 ns1!5)))) (head!638 (tail!662 (tail!662 ns2!5)))) (merge!1 (tail!662 (tail!662 (tail!662 (reverse!3 ns1!5)))) (tail!662 (tail!662 (tail!662 ns2!5))))))))

(declare-fun d!43850 () Bool)

(declare-fun lt!9008 () Heap!7)

(assert (=> d!43850 (= (heapContent!0 lt!9008) (union (heapContent!0 (tail!662 (tail!662 (reverse!3 ns1!5)))) (heapContent!0 (tail!662 (tail!662 ns2!5)))))))

(declare-fun e!26748 () Heap!7)

(assert (=> d!43850 (= lt!9008 e!26748)))

(declare-fun c!11000 () Bool)

(assert (=> d!43850 (= c!11000 (is-Empty!109 (tail!662 (tail!662 ns2!5))))))

(assert (=> d!43850 (= (merge!1 (tail!662 (tail!662 (reverse!3 ns1!5))) (tail!662 (tail!662 ns2!5))) lt!9008)))

(declare-fun b!51488 () Bool)

(assert (=> b!51488 (= e!26748 (tail!662 (tail!662 (reverse!3 ns1!5))))))

(declare-fun b!51489 () Bool)

(declare-fun res!23563 () Heap!7)

(assert (=> b!51489 (= e!26744 res!23563)))

(assert (=> b!51489 true))

(assert (=> b!51489 true))

(declare-fun b!51490 () Bool)

(assert (=> b!51490 (= e!26748 e!26745)))

(declare-fun c!11002 () Bool)

(assert (=> b!51490 (= c!11002 (is-Empty!109 (tail!662 (tail!662 (reverse!3 ns1!5)))))))

(declare-fun b!51491 () Bool)

(assert (=> b!51491 (= e!26745 (tail!662 (tail!662 ns2!5)))))

(declare-fun b!51492 () Bool)

(assert (=> b!51492 (= e!26746 e!26747)))

(declare-fun c!10999 () Bool)

(assert (=> b!51492 (= c!10999 (< (rank!13 (head!638 (tail!662 (tail!662 ns2!5)))) (rank!13 (head!638 (tail!662 (tail!662 (reverse!3 ns1!5)))))))))

(assert (= (and b!51483 c!11001) b!51484))

(assert (= (and b!51483 (not c!11001)) b!51489))

(assert (= (and b!51492 c!10999) b!51485))

(assert (= (and b!51492 (not c!10999)) b!51487))

(assert (= (and b!51483 c!10998) b!51486))

(assert (= (and b!51483 (not c!10998)) b!51492))

(assert (= (and b!51490 c!11002) b!51491))

(assert (= (and b!51490 (not c!11002)) b!51483))

(assert (= (and d!43850 c!11000) b!51488))

(assert (= (and d!43850 (not c!11000)) b!51490))

(declare-fun m!55347 () Bool)

(assert (=> b!51484 m!55347))

(declare-fun m!55349 () Bool)

(assert (=> b!51487 m!55349))

(declare-fun m!55351 () Bool)

(assert (=> b!51487 m!55351))

(assert (=> b!51487 m!55349))

(assert (=> b!51487 m!55351))

(declare-fun m!55353 () Bool)

(assert (=> b!51487 m!55353))

(declare-fun m!55355 () Bool)

(assert (=> d!43850 m!55355))

(assert (=> d!43850 m!55247))

(assert (=> d!43850 m!55265))

(assert (=> b!51429 d!43850))

(declare-fun d!43852 () Bool)

(declare-fun lt!9012 () tuple2!270)

(assert (=> d!43852 (= (union (nodeContent!0 (_1!162 lt!9012)) (heapContent!0 (_2!162 lt!9012))) (heapContent!0 (tail!662 (tail!662 h!424))))))

(declare-fun e!26749 () tuple2!270)

(assert (=> d!43852 (= lt!9012 e!26749)))

(declare-fun c!11003 () Bool)

(assert (=> d!43852 (= c!11003 (and (is-Nodes!6 (tail!662 (tail!662 h!424))) (is-Empty!109 (tail!662 (tail!662 (tail!662 h!424))))))))

(assert (=> d!43852 (not (= (tail!662 (tail!662 h!424)) Empty!109))))

(assert (=> d!43852 (= (getMin!0 (tail!662 (tail!662 h!424))) lt!9012)))

(declare-fun lt!9011 () Node!42)

(declare-fun b!51494 () Bool)

(declare-fun lt!9014 () tuple2!270)

(assert (=> b!51494 (= e!26749 (ite (bvslt (elem!85 (head!638 (tail!662 (tail!662 h!424)))) (elem!85 lt!9011)) (tuple2!271 (head!638 (tail!662 (tail!662 h!424))) (tail!662 (tail!662 (tail!662 h!424)))) (tuple2!271 lt!9011 (Nodes!6 (head!638 (tail!662 (tail!662 h!424))) (_2!162 lt!9014)))))))

(declare-fun lt!9013 () tuple2!270)

(assert (=> b!51494 (= lt!9011 (_1!162 lt!9013))))

(assert (=> b!51494 (= lt!9014 (getMin!0 (tail!662 (tail!662 (tail!662 h!424)))))))

(assert (=> b!51494 (= lt!9013 (getMin!0 (tail!662 (tail!662 (tail!662 h!424)))))))

(declare-fun b!51493 () Bool)

(assert (=> b!51493 (= e!26749 (tuple2!271 (head!638 (tail!662 (tail!662 h!424))) Empty!109))))

(assert (= (and d!43852 c!11003) b!51493))

(assert (= (and d!43852 (not c!11003)) b!51494))

(declare-fun m!55357 () Bool)

(assert (=> d!43852 m!55357))

(declare-fun m!55359 () Bool)

(assert (=> d!43852 m!55359))

(assert (=> d!43852 m!55187))

(declare-fun m!55361 () Bool)

(assert (=> b!51494 m!55361))

(assert (=> b!51384 d!43852))

(declare-fun d!43854 () Bool)

(declare-fun c!11004 () Bool)

(assert (=> d!43854 (= c!11004 (is-Empty!109 lt!8995))))

(declare-fun e!26750 () (Set (_ BitVec 32)))

(assert (=> d!43854 (= (heapContent!0 lt!8995) e!26750)))

(declare-fun b!51495 () Bool)

(assert (=> b!51495 (= e!26750 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51496 () Bool)

(assert (=> b!51496 (= e!26750 (union (nodeContent!0 (head!638 lt!8995)) (heapContent!0 (tail!662 lt!8995))))))

(assert (= (and d!43854 c!11004) b!51495))

(assert (= (and d!43854 (not c!11004)) b!51496))

(declare-fun m!55363 () Bool)

(assert (=> b!51496 m!55363))

(declare-fun m!55365 () Bool)

(assert (=> b!51496 m!55365))

(assert (=> d!43802 d!43854))

(declare-fun d!43856 () Bool)

(assert (=> d!43856 (= (nodeContent!0 (link!0 (head!638 (reverse!3 ns1!5)) (head!638 ns2!5))) (union (insert (elem!85 (link!0 (head!638 (reverse!3 ns1!5)) (head!638 ns2!5))) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!13 (link!0 (head!638 (reverse!3 ns1!5)) (head!638 ns2!5))))))))

(declare-fun bs!23757 () Bool)

(assert (= bs!23757 d!43856))

(declare-fun m!55367 () Bool)

(assert (=> bs!23757 m!55367))

(declare-fun m!55369 () Bool)

(assert (=> bs!23757 m!55369))

(assert (=> d!43802 d!43856))

(declare-fun d!43858 () Bool)

(declare-fun c!11005 () Bool)

(assert (=> d!43858 (= c!11005 (is-Empty!109 (merge!1 (tail!662 (reverse!3 ns1!5)) (tail!662 ns2!5))))))

(declare-fun e!26751 () (Set (_ BitVec 32)))

(assert (=> d!43858 (= (heapContent!0 (merge!1 (tail!662 (reverse!3 ns1!5)) (tail!662 ns2!5))) e!26751)))

(declare-fun b!51497 () Bool)

(assert (=> b!51497 (= e!26751 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51498 () Bool)

(assert (=> b!51498 (= e!26751 (union (nodeContent!0 (head!638 (merge!1 (tail!662 (reverse!3 ns1!5)) (tail!662 ns2!5)))) (heapContent!0 (tail!662 (merge!1 (tail!662 (reverse!3 ns1!5)) (tail!662 ns2!5))))))))

(assert (= (and d!43858 c!11005) b!51497))

(assert (= (and d!43858 (not c!11005)) b!51498))

(declare-fun m!55371 () Bool)

(assert (=> b!51498 m!55371))

(assert (=> b!51498 m!55257))

(assert (=> d!43802 d!43858))

(declare-fun d!43860 () Bool)

(declare-fun lt!9015 () Heap!7)

(assert (=> d!43860 (= (heapContent!0 lt!9015) (union (heapContent!0 (tail!662 ns1!5)) (heapContent!0 (Nodes!6 (head!638 ns1!5) Empty!109))))))

(declare-fun e!26752 () Heap!7)

(assert (=> d!43860 (= lt!9015 e!26752)))

(declare-fun c!11006 () Bool)

(assert (=> d!43860 (= c!11006 (is-Empty!109 (tail!662 ns1!5)))))

(assert (=> d!43860 (= (reverse0!2 (tail!662 ns1!5) (Nodes!6 (head!638 ns1!5) Empty!109)) lt!9015)))

(declare-fun b!51499 () Bool)

(assert (=> b!51499 (= e!26752 (Nodes!6 (head!638 ns1!5) Empty!109))))

(declare-fun b!51500 () Bool)

(assert (=> b!51500 (= e!26752 (reverse0!2 (tail!662 (tail!662 ns1!5)) (Nodes!6 (head!638 (tail!662 ns1!5)) (Nodes!6 (head!638 ns1!5) Empty!109))))))

(assert (= (and d!43860 c!11006) b!51499))

(assert (= (and d!43860 (not c!11006)) b!51500))

(declare-fun m!55373 () Bool)

(assert (=> d!43860 m!55373))

(declare-fun m!55375 () Bool)

(assert (=> d!43860 m!55375))

(declare-fun m!55377 () Bool)

(assert (=> d!43860 m!55377))

(declare-fun m!55379 () Bool)

(assert (=> b!51500 m!55379))

(assert (=> b!51404 d!43860))

(declare-fun b!51501 () Bool)

(declare-fun e!26754 () Heap!7)

(declare-fun e!26755 () Heap!7)

(assert (=> b!51501 (= e!26754 e!26755)))

(declare-fun c!11007 () Bool)

(declare-fun lt!9018 () Bool)

(assert (=> b!51501 (= c!11007 lt!9018)))

(declare-fun lt!9017 () Heap!7)

(declare-fun e!26753 () Heap!7)

(assert (=> b!51501 (= lt!9017 e!26753)))

(declare-fun c!11010 () Bool)

(assert (=> b!51501 (= c!11010 (or lt!9018 (< (rank!13 (head!638 (ite lt!8998 (tail!662 ns2!5) (tail!662 (tail!662 ns2!5))))) (rank!13 (head!638 (ite lt!8998 (tail!662 (tail!662 (reverse!3 ns1!5))) (tail!662 (reverse!3 ns1!5))))))))))

(assert (=> b!51501 (= lt!9018 (< (rank!13 (head!638 (ite lt!8998 (tail!662 (tail!662 (reverse!3 ns1!5))) (tail!662 (reverse!3 ns1!5))))) (rank!13 (head!638 (ite lt!8998 (tail!662 ns2!5) (tail!662 (tail!662 ns2!5)))))))))

(declare-fun b!51502 () Bool)

(assert (=> b!51502 (= e!26753 (merge!1 (ite lt!9018 (tail!662 (ite lt!8998 (tail!662 (tail!662 (reverse!3 ns1!5))) (tail!662 (reverse!3 ns1!5)))) (ite lt!8998 (tail!662 (tail!662 (reverse!3 ns1!5))) (tail!662 (reverse!3 ns1!5)))) (ite lt!9018 (ite lt!8998 (tail!662 ns2!5) (tail!662 (tail!662 ns2!5))) (tail!662 (ite lt!8998 (tail!662 ns2!5) (tail!662 (tail!662 ns2!5)))))))))

(declare-fun e!26756 () Heap!7)

(declare-fun b!51503 () Bool)

(assert (=> b!51503 (= e!26756 (Nodes!6 (head!638 (ite lt!8998 (tail!662 ns2!5) (tail!662 (tail!662 ns2!5)))) lt!9017))))

(declare-fun b!51504 () Bool)

(assert (=> b!51504 (= e!26755 (Nodes!6 (head!638 (ite lt!8998 (tail!662 (tail!662 (reverse!3 ns1!5))) (tail!662 (reverse!3 ns1!5)))) lt!9017))))

(declare-fun b!51505 () Bool)

(assert (=> b!51505 (= e!26756 (insertNode!0 (link!0 (head!638 (ite lt!8998 (tail!662 (tail!662 (reverse!3 ns1!5))) (tail!662 (reverse!3 ns1!5)))) (head!638 (ite lt!8998 (tail!662 ns2!5) (tail!662 (tail!662 ns2!5))))) (merge!1 (tail!662 (ite lt!8998 (tail!662 (tail!662 (reverse!3 ns1!5))) (tail!662 (reverse!3 ns1!5)))) (tail!662 (ite lt!8998 (tail!662 ns2!5) (tail!662 (tail!662 ns2!5)))))))))

(declare-fun lt!9016 () Heap!7)

(declare-fun d!43862 () Bool)

(assert (=> d!43862 (= (heapContent!0 lt!9016) (union (heapContent!0 (ite lt!8998 (tail!662 (tail!662 (reverse!3 ns1!5))) (tail!662 (reverse!3 ns1!5)))) (heapContent!0 (ite lt!8998 (tail!662 ns2!5) (tail!662 (tail!662 ns2!5))))))))

(declare-fun e!26757 () Heap!7)

(assert (=> d!43862 (= lt!9016 e!26757)))

(declare-fun c!11009 () Bool)

(assert (=> d!43862 (= c!11009 (is-Empty!109 (ite lt!8998 (tail!662 ns2!5) (tail!662 (tail!662 ns2!5)))))))

(assert (=> d!43862 (= (merge!1 (ite lt!8998 (tail!662 (tail!662 (reverse!3 ns1!5))) (tail!662 (reverse!3 ns1!5))) (ite lt!8998 (tail!662 ns2!5) (tail!662 (tail!662 ns2!5)))) lt!9016)))

(declare-fun b!51506 () Bool)

(assert (=> b!51506 (= e!26757 (ite lt!8998 (tail!662 (tail!662 (reverse!3 ns1!5))) (tail!662 (reverse!3 ns1!5))))))

(declare-fun b!51507 () Bool)

(declare-fun res!23564 () Heap!7)

(assert (=> b!51507 (= e!26753 res!23564)))

(assert (=> b!51507 true))

(assert (=> b!51507 true))

(declare-fun b!51508 () Bool)

(assert (=> b!51508 (= e!26757 e!26754)))

(declare-fun c!11011 () Bool)

(assert (=> b!51508 (= c!11011 (is-Empty!109 (ite lt!8998 (tail!662 (tail!662 (reverse!3 ns1!5))) (tail!662 (reverse!3 ns1!5)))))))

(declare-fun b!51509 () Bool)

(assert (=> b!51509 (= e!26754 (ite lt!8998 (tail!662 ns2!5) (tail!662 (tail!662 ns2!5))))))

(declare-fun b!51510 () Bool)

(assert (=> b!51510 (= e!26755 e!26756)))

(declare-fun c!11008 () Bool)

(assert (=> b!51510 (= c!11008 (< (rank!13 (head!638 (ite lt!8998 (tail!662 ns2!5) (tail!662 (tail!662 ns2!5))))) (rank!13 (head!638 (ite lt!8998 (tail!662 (tail!662 (reverse!3 ns1!5))) (tail!662 (reverse!3 ns1!5)))))))))

(assert (= (and b!51501 c!11010) b!51502))

(assert (= (and b!51501 (not c!11010)) b!51507))

(assert (= (and b!51510 c!11008) b!51503))

(assert (= (and b!51510 (not c!11008)) b!51505))

(assert (= (and b!51501 c!11007) b!51504))

(assert (= (and b!51501 (not c!11007)) b!51510))

(assert (= (and b!51508 c!11011) b!51509))

(assert (= (and b!51508 (not c!11011)) b!51501))

(assert (= (and d!43862 c!11009) b!51506))

(assert (= (and d!43862 (not c!11009)) b!51508))

(declare-fun m!55381 () Bool)

(assert (=> b!51502 m!55381))

(declare-fun m!55383 () Bool)

(assert (=> b!51505 m!55383))

(declare-fun m!55385 () Bool)

(assert (=> b!51505 m!55385))

(assert (=> b!51505 m!55383))

(assert (=> b!51505 m!55385))

(declare-fun m!55387 () Bool)

(assert (=> b!51505 m!55387))

(declare-fun m!55389 () Bool)

(assert (=> d!43862 m!55389))

(declare-fun m!55391 () Bool)

(assert (=> d!43862 m!55391))

(declare-fun m!55393 () Bool)

(assert (=> d!43862 m!55393))

(assert (=> b!51426 d!43862))

(declare-fun d!43864 () Bool)

(assert (=> d!43864 (= (nodeContent!0 (head!638 lt!8980)) (union (insert (elem!85 (head!638 lt!8980)) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!13 (head!638 lt!8980)))))))

(declare-fun bs!23758 () Bool)

(assert (= bs!23758 d!43864))

(declare-fun m!55395 () Bool)

(assert (=> bs!23758 m!55395))

(declare-fun m!55397 () Bool)

(assert (=> bs!23758 m!55397))

(assert (=> b!51408 d!43864))

(declare-fun d!43866 () Bool)

(declare-fun c!11012 () Bool)

(assert (=> d!43866 (= c!11012 (is-Empty!109 (tail!662 lt!8980)))))

(declare-fun e!26758 () (Set (_ BitVec 32)))

(assert (=> d!43866 (= (heapContent!0 (tail!662 lt!8980)) e!26758)))

(declare-fun b!51511 () Bool)

(assert (=> b!51511 (= e!26758 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51512 () Bool)

(assert (=> b!51512 (= e!26758 (union (nodeContent!0 (head!638 (tail!662 lt!8980))) (heapContent!0 (tail!662 (tail!662 lt!8980)))))))

(assert (= (and d!43866 c!11012) b!51511))

(assert (= (and d!43866 (not c!11012)) b!51512))

(declare-fun m!55399 () Bool)

(assert (=> b!51512 m!55399))

(declare-fun m!55401 () Bool)

(assert (=> b!51512 m!55401))

(assert (=> b!51408 d!43866))

(declare-fun d!43868 () Bool)

(declare-fun c!11013 () Bool)

(assert (=> d!43868 (= c!11013 (is-Empty!109 lt!8992))))

(declare-fun e!26759 () (Set (_ BitVec 32)))

(assert (=> d!43868 (= (heapContent!0 lt!8992) e!26759)))

(declare-fun b!51513 () Bool)

(assert (=> b!51513 (= e!26759 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51514 () Bool)

(assert (=> b!51514 (= e!26759 (union (nodeContent!0 (head!638 lt!8992)) (heapContent!0 (tail!662 lt!8992))))))

(assert (= (and d!43868 c!11013) b!51513))

(assert (= (and d!43868 (not c!11013)) b!51514))

(declare-fun m!55403 () Bool)

(assert (=> b!51514 m!55403))

(declare-fun m!55405 () Bool)

(assert (=> b!51514 m!55405))

(assert (=> d!43790 d!43868))

(declare-fun d!43870 () Bool)

(declare-fun c!11014 () Bool)

(assert (=> d!43870 (= c!11014 (is-Empty!109 ns1!5))))

(declare-fun e!26760 () (Set (_ BitVec 32)))

(assert (=> d!43870 (= (heapContent!0 ns1!5) e!26760)))

(declare-fun b!51515 () Bool)

(assert (=> b!51515 (= e!26760 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51516 () Bool)

(assert (=> b!51516 (= e!26760 (union (nodeContent!0 (head!638 ns1!5)) (heapContent!0 (tail!662 ns1!5))))))

(assert (= (and d!43870 c!11014) b!51515))

(assert (= (and d!43870 (not c!11014)) b!51516))

(declare-fun m!55407 () Bool)

(assert (=> b!51516 m!55407))

(assert (=> b!51516 m!55375))

(assert (=> d!43790 d!43870))

(declare-fun d!43872 () Bool)

(assert (=> d!43872 (= (heapContent!0 Empty!109) (as emptyset (Set (_ BitVec 32))))))

(assert (=> d!43790 d!43872))

(declare-fun d!43874 () Bool)

(declare-fun c!11015 () Bool)

(assert (=> d!43874 (= c!11015 (is-Empty!109 lt!8996))))

(declare-fun e!26761 () (Set (_ BitVec 32)))

(assert (=> d!43874 (= (heapContent!0 lt!8996) e!26761)))

(declare-fun b!51517 () Bool)

(assert (=> b!51517 (= e!26761 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51518 () Bool)

(assert (=> b!51518 (= e!26761 (union (nodeContent!0 (head!638 lt!8996)) (heapContent!0 (tail!662 lt!8996))))))

(assert (= (and d!43874 c!11015) b!51517))

(assert (= (and d!43874 (not c!11015)) b!51518))

(declare-fun m!55409 () Bool)

(assert (=> b!51518 m!55409))

(declare-fun m!55411 () Bool)

(assert (=> b!51518 m!55411))

(assert (=> d!43806 d!43874))

(assert (=> d!43806 d!43812))

(assert (=> d!43806 d!43820))

(declare-fun d!43876 () Bool)

(assert (=> d!43876 (= (nodeContent!0 (head!638 (tail!662 h!424))) (union (insert (elem!85 (head!638 (tail!662 h!424))) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!13 (head!638 (tail!662 h!424))))))))

(declare-fun bs!23759 () Bool)

(assert (= bs!23759 d!43876))

(declare-fun m!55413 () Bool)

(assert (=> bs!23759 m!55413))

(declare-fun m!55415 () Bool)

(assert (=> bs!23759 m!55415))

(assert (=> b!51398 d!43876))

(declare-fun d!43878 () Bool)

(declare-fun c!11016 () Bool)

(assert (=> d!43878 (= c!11016 (is-Empty!109 (tail!662 (tail!662 h!424))))))

(declare-fun e!26762 () (Set (_ BitVec 32)))

(assert (=> d!43878 (= (heapContent!0 (tail!662 (tail!662 h!424))) e!26762)))

(declare-fun b!51519 () Bool)

(assert (=> b!51519 (= e!26762 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51520 () Bool)

(assert (=> b!51520 (= e!26762 (union (nodeContent!0 (head!638 (tail!662 (tail!662 h!424)))) (heapContent!0 (tail!662 (tail!662 (tail!662 h!424))))))))

(assert (= (and d!43878 c!11016) b!51519))

(assert (= (and d!43878 (not c!11016)) b!51520))

(declare-fun m!55417 () Bool)

(assert (=> b!51520 m!55417))

(declare-fun m!55419 () Bool)

(assert (=> b!51520 m!55419))

(assert (=> b!51398 d!43878))

(declare-fun d!43880 () Bool)

(declare-fun c!11017 () Bool)

(assert (=> d!43880 (= c!11017 (is-Empty!109 lt!8987))))

(declare-fun e!26763 () (Set (_ BitVec 32)))

(assert (=> d!43880 (= (heapContent!0 lt!8987) e!26763)))

(declare-fun b!51521 () Bool)

(assert (=> b!51521 (= e!26763 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51522 () Bool)

(assert (=> b!51522 (= e!26763 (union (nodeContent!0 (head!638 lt!8987)) (heapContent!0 (tail!662 lt!8987))))))

(assert (= (and d!43880 c!11017) b!51521))

(assert (= (and d!43880 (not c!11017)) b!51522))

(declare-fun m!55421 () Bool)

(assert (=> b!51522 m!55421))

(declare-fun m!55423 () Bool)

(assert (=> b!51522 m!55423))

(assert (=> d!43780 d!43880))

(declare-fun d!43882 () Bool)

(declare-fun c!11018 () Bool)

(assert (=> d!43882 (= c!11018 (is-Empty!109 (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5))))))

(declare-fun e!26764 () (Set (_ BitVec 32)))

(assert (=> d!43882 (= (heapContent!0 (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5))) e!26764)))

(declare-fun b!51523 () Bool)

(assert (=> b!51523 (= e!26764 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51524 () Bool)

(assert (=> b!51524 (= e!26764 (union (nodeContent!0 (head!638 (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5)))) (heapContent!0 (tail!662 (ite lt!8982 (tail!662 (reverse!3 ns1!5)) (reverse!3 ns1!5))))))))

(assert (= (and d!43882 c!11018) b!51523))

(assert (= (and d!43882 (not c!11018)) b!51524))

(declare-fun m!55425 () Bool)

(assert (=> b!51524 m!55425))

(assert (=> b!51524 m!55333))

(assert (=> d!43780 d!43882))

(declare-fun d!43884 () Bool)

(declare-fun c!11019 () Bool)

(assert (=> d!43884 (= c!11019 (is-Empty!109 (ite lt!8982 ns2!5 (tail!662 ns2!5))))))

(declare-fun e!26765 () (Set (_ BitVec 32)))

(assert (=> d!43884 (= (heapContent!0 (ite lt!8982 ns2!5 (tail!662 ns2!5))) e!26765)))

(declare-fun b!51525 () Bool)

(assert (=> b!51525 (= e!26765 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!51526 () Bool)

(assert (=> b!51526 (= e!26765 (union (nodeContent!0 (head!638 (ite lt!8982 ns2!5 (tail!662 ns2!5)))) (heapContent!0 (tail!662 (ite lt!8982 ns2!5 (tail!662 ns2!5))))))))

(assert (= (and d!43884 c!11019) b!51525))

(assert (= (and d!43884 (not c!11019)) b!51526))

(declare-fun m!55427 () Bool)

(assert (=> b!51526 m!55427))

(assert (=> b!51526 m!55335))

(assert (=> d!43780 d!43884))

(push 1)

(assert (not b!51520))

(assert (not b!51498))

(assert (not b!51444))

(assert (not b!51496))

(assert (not d!43846))

(assert (not b!51487))

(assert (not b!51500))

(assert (not d!43864))

(assert (not d!43860))

(assert (not b!51442))

(assert (not d!43826))

(assert (not b!51458))

(assert (not b!51473))

(assert (not d!43836))

(assert (not b!51518))

(assert (not b!51524))

(assert (not b!51464))

(assert (not d!43840))

(assert (not d!43856))

(assert (not b!51468))

(assert (not b!51514))

(assert (not d!43862))

(assert (not b!51484))

(assert (not d!43822))

(assert (not b!51494))

(assert (not d!43850))

(assert (not b!51482))

(assert (not b!51456))

(assert (not d!43814))

(assert (not b!51446))

(assert (not b!51438))

(assert (not b!51502))

(assert (not b!51516))

(assert (not b!51470))

(assert (not d!43830))

(assert (not d!43876))

(assert (not b!51449))

(assert (not b!51512))

(assert (not d!43810))

(assert (not b!51460))

(assert (not b!51505))

(assert (not d!43818))

(assert (not d!43844))

(assert (not b!51436))

(assert (not b!51522))

(assert (not d!43852))

(assert (not b!51526))

(assert (not b!51462))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

