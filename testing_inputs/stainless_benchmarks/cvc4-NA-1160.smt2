; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8356 () Bool)

(assert start!8356)

(declare-fun res!27202 () Bool)

(declare-fun e!31235 () Bool)

(assert (=> start!8356 (=> (not res!27202) (not e!31235))))

(declare-datatypes () ((List!495 (Cons!469 (head!746 (_ BitVec 32)) (tail!772 List!495)) (Nil!470))))

(declare-fun l2!298 () List!495)

(declare-fun x$6!84 () List!495)

(declare-fun l1!304 () List!495)

(assert (=> start!8356 (= res!27202 (and (is-Nil!470 l1!304) (= x$6!84 l2!298)))))

(assert (=> start!8356 e!31235))

(assert (=> start!8356 true))

(declare-fun b!58695 () Bool)

(declare-fun content!16 (List!495) (Set (_ BitVec 32)))

(assert (=> b!58695 (= e!31235 (not (= (content!16 x$6!84) (union (content!16 l1!304) (content!16 l2!298)))))))

(assert (= (and start!8356 res!27202) b!58695))

(declare-fun m!63252 () Bool)

(assert (=> b!58695 m!63252))

(declare-fun m!63254 () Bool)

(assert (=> b!58695 m!63254))

(declare-fun m!63256 () Bool)

(assert (=> b!58695 m!63256))

(push 1)

(assert (not b!58695))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!50706 () Bool)

(declare-fun c!12596 () Bool)

(assert (=> d!50706 (= c!12596 (is-Nil!470 x$6!84))))

(declare-fun e!31238 () (Set (_ BitVec 32)))

(assert (=> d!50706 (= (content!16 x$6!84) e!31238)))

(declare-fun b!58700 () Bool)

(assert (=> b!58700 (= e!31238 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!58701 () Bool)

(assert (=> b!58701 (= e!31238 (union (insert (head!746 x$6!84) (as emptyset (Set (_ BitVec 32)))) (content!16 (tail!772 x$6!84))))))

(assert (= (and d!50706 c!12596) b!58700))

(assert (= (and d!50706 (not c!12596)) b!58701))

(declare-fun m!63258 () Bool)

(assert (=> b!58701 m!63258))

(declare-fun m!63260 () Bool)

(assert (=> b!58701 m!63260))

(assert (=> b!58695 d!50706))

(declare-fun d!50708 () Bool)

(declare-fun c!12597 () Bool)

(assert (=> d!50708 (= c!12597 (is-Nil!470 l1!304))))

(declare-fun e!31239 () (Set (_ BitVec 32)))

(assert (=> d!50708 (= (content!16 l1!304) e!31239)))

(declare-fun b!58702 () Bool)

(assert (=> b!58702 (= e!31239 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!58703 () Bool)

(assert (=> b!58703 (= e!31239 (union (insert (head!746 l1!304) (as emptyset (Set (_ BitVec 32)))) (content!16 (tail!772 l1!304))))))

(assert (= (and d!50708 c!12597) b!58702))

(assert (= (and d!50708 (not c!12597)) b!58703))

(declare-fun m!63262 () Bool)

(assert (=> b!58703 m!63262))

(declare-fun m!63264 () Bool)

(assert (=> b!58703 m!63264))

(assert (=> b!58695 d!50708))

(declare-fun d!50710 () Bool)

(declare-fun c!12598 () Bool)

(assert (=> d!50710 (= c!12598 (is-Nil!470 l2!298))))

(declare-fun e!31240 () (Set (_ BitVec 32)))

(assert (=> d!50710 (= (content!16 l2!298) e!31240)))

(declare-fun b!58704 () Bool)

(assert (=> b!58704 (= e!31240 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!58705 () Bool)

(assert (=> b!58705 (= e!31240 (union (insert (head!746 l2!298) (as emptyset (Set (_ BitVec 32)))) (content!16 (tail!772 l2!298))))))

(assert (= (and d!50710 c!12598) b!58704))

(assert (= (and d!50710 (not c!12598)) b!58705))

(declare-fun m!63266 () Bool)

(assert (=> b!58705 m!63266))

(declare-fun m!63268 () Bool)

(assert (=> b!58705 m!63268))

(assert (=> b!58695 d!50710))

(push 1)

(assert (not b!58705))

(assert (not b!58703))

(assert (not b!58701))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

