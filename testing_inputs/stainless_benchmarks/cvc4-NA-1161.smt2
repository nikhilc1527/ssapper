; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8360 () Bool)

(assert start!8360)

(declare-fun res!27207 () Bool)

(declare-fun e!31243 () Bool)

(assert (=> start!8360 (=> (not res!27207) (not e!31243))))

(declare-datatypes () ((List!496 (Cons!470 (head!747 (_ BitVec 32)) (tail!773 List!496)) (Nil!471))))

(declare-fun l1!304 () List!496)

(assert (=> start!8360 (= res!27207 (not (is-Nil!471 l1!304)))))

(assert (=> start!8360 e!31243))

(assert (=> start!8360 true))

(declare-fun b!58710 () Bool)

(declare-fun res!27208 () Bool)

(assert (=> b!58710 (=> (not res!27208) (not e!31243))))

(declare-fun l2!298 () List!496)

(declare-fun x$6!85 () List!496)

(declare-fun append!9 (List!496 List!496) List!496)

(assert (=> b!58710 (= res!27208 (= x$6!85 (Cons!470 (head!747 l1!304) (append!9 (tail!773 l1!304) l2!298))))))

(declare-fun b!58711 () Bool)

(declare-fun content!16 (List!496) (Set (_ BitVec 32)))

(assert (=> b!58711 (= e!31243 (not (= (content!16 x$6!85) (union (content!16 l1!304) (content!16 l2!298)))))))

(assert (= (and start!8360 res!27207) b!58710))

(assert (= (and b!58710 res!27208) b!58711))

(declare-fun m!63270 () Bool)

(assert (=> b!58710 m!63270))

(declare-fun m!63272 () Bool)

(assert (=> b!58711 m!63272))

(declare-fun m!63274 () Bool)

(assert (=> b!58711 m!63274))

(declare-fun m!63276 () Bool)

(assert (=> b!58711 m!63276))

(push 1)

(assert (not b!58711))

(assert (not b!58710))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!50712 () Bool)

(declare-fun c!12601 () Bool)

(assert (=> d!50712 (= c!12601 (is-Nil!471 x$6!85))))

(declare-fun e!31246 () (Set (_ BitVec 32)))

(assert (=> d!50712 (= (content!16 x$6!85) e!31246)))

(declare-fun b!58716 () Bool)

(assert (=> b!58716 (= e!31246 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!58717 () Bool)

(assert (=> b!58717 (= e!31246 (union (insert (head!747 x$6!85) (as emptyset (Set (_ BitVec 32)))) (content!16 (tail!773 x$6!85))))))

(assert (= (and d!50712 c!12601) b!58716))

(assert (= (and d!50712 (not c!12601)) b!58717))

(declare-fun m!63278 () Bool)

(assert (=> b!58717 m!63278))

(declare-fun m!63280 () Bool)

(assert (=> b!58717 m!63280))

(assert (=> b!58711 d!50712))

(declare-fun d!50714 () Bool)

(declare-fun c!12602 () Bool)

(assert (=> d!50714 (= c!12602 (is-Nil!471 l1!304))))

(declare-fun e!31247 () (Set (_ BitVec 32)))

(assert (=> d!50714 (= (content!16 l1!304) e!31247)))

(declare-fun b!58718 () Bool)

(assert (=> b!58718 (= e!31247 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!58719 () Bool)

(assert (=> b!58719 (= e!31247 (union (insert (head!747 l1!304) (as emptyset (Set (_ BitVec 32)))) (content!16 (tail!773 l1!304))))))

(assert (= (and d!50714 c!12602) b!58718))

(assert (= (and d!50714 (not c!12602)) b!58719))

(declare-fun m!63282 () Bool)

(assert (=> b!58719 m!63282))

(declare-fun m!63284 () Bool)

(assert (=> b!58719 m!63284))

(assert (=> b!58711 d!50714))

(declare-fun d!50716 () Bool)

(declare-fun c!12603 () Bool)

(assert (=> d!50716 (= c!12603 (is-Nil!471 l2!298))))

(declare-fun e!31248 () (Set (_ BitVec 32)))

(assert (=> d!50716 (= (content!16 l2!298) e!31248)))

(declare-fun b!58720 () Bool)

(assert (=> b!58720 (= e!31248 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!58721 () Bool)

(assert (=> b!58721 (= e!31248 (union (insert (head!747 l2!298) (as emptyset (Set (_ BitVec 32)))) (content!16 (tail!773 l2!298))))))

(assert (= (and d!50716 c!12603) b!58720))

(assert (= (and d!50716 (not c!12603)) b!58721))

(declare-fun m!63286 () Bool)

(assert (=> b!58721 m!63286))

(declare-fun m!63288 () Bool)

(assert (=> b!58721 m!63288))

(assert (=> b!58711 d!50716))

(declare-fun d!50718 () Bool)

(declare-fun lt!10759 () List!496)

(assert (=> d!50718 (= (content!16 lt!10759) (union (content!16 (tail!773 l1!304)) (content!16 l2!298)))))

(declare-fun e!31251 () List!496)

(assert (=> d!50718 (= lt!10759 e!31251)))

(declare-fun c!12606 () Bool)

(assert (=> d!50718 (= c!12606 (is-Nil!471 (tail!773 l1!304)))))

(assert (=> d!50718 (= (append!9 (tail!773 l1!304) l2!298) lt!10759)))

(declare-fun b!58726 () Bool)

(assert (=> b!58726 (= e!31251 l2!298)))

(declare-fun b!58727 () Bool)

(assert (=> b!58727 (= e!31251 (Cons!470 (head!747 (tail!773 l1!304)) (append!9 (tail!773 (tail!773 l1!304)) l2!298)))))

(assert (= (and d!50718 c!12606) b!58726))

(assert (= (and d!50718 (not c!12606)) b!58727))

(declare-fun m!63290 () Bool)

(assert (=> d!50718 m!63290))

(assert (=> d!50718 m!63284))

(assert (=> d!50718 m!63276))

(declare-fun m!63292 () Bool)

(assert (=> b!58727 m!63292))

(assert (=> b!58710 d!50718))

(push 1)

(assert (not b!58717))

(assert (not d!50718))

(assert (not b!58721))

(assert (not b!58727))

(assert (not b!58719))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

