; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2722 () Bool)

(assert start!2722)

(declare-fun res!5046 () Bool)

(declare-fun e!7316 () Bool)

(assert (=> start!2722 (=> (not res!5046) (not e!7316))))

(declare-datatypes () ((Tree!89 (Leaf!169) (Node!21 (left!579 Tree!89) (value!1464 Int) (right!582 Tree!89)))))

(declare-fun x$1!268 () Tree!89)

(declare-fun v!430 () Int)

(assert (=> start!2722 (= res!5046 (= x$1!268 (Node!21 Leaf!169 v!430 Leaf!169)))))

(assert (=> start!2722 e!7316))

(assert (=> start!2722 true))

(declare-fun b!13349 () Bool)

(declare-fun content!21 (Tree!89) (Set Int))

(assert (=> b!13349 (= e!7316 (not (= (content!21 x$1!268) (insert v!430 (as emptyset (Set Int))))))))

(assert (=> b!13349 (is-Node!21 x$1!268)))

(assert (= (and start!2722 res!5046) b!13349))

(declare-fun m!16923 () Bool)

(assert (=> b!13349 m!16923))

(declare-fun m!16925 () Bool)

(assert (=> b!13349 m!16925))

(push 1)

(assert (not b!13349))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!10311 () Bool)

(declare-fun c!3739 () Bool)

(assert (=> d!10311 (= c!3739 (is-Leaf!169 x$1!268))))

(declare-fun e!7319 () (Set Int))

(assert (=> d!10311 (= (content!21 x$1!268) e!7319)))

(declare-fun b!13354 () Bool)

(assert (=> b!13354 (= e!7319 (as emptyset (Set Int)))))

(declare-fun b!13355 () Bool)

(assert (=> b!13355 (= e!7319 (union (union (content!21 (left!579 x$1!268)) (insert (value!1464 x$1!268) (as emptyset (Set Int)))) (content!21 (right!582 x$1!268))))))

(assert (= (and d!10311 c!3739) b!13354))

(assert (= (and d!10311 (not c!3739)) b!13355))

(declare-fun m!16927 () Bool)

(assert (=> b!13355 m!16927))

(declare-fun m!16929 () Bool)

(assert (=> b!13355 m!16929))

(declare-fun m!16931 () Bool)

(assert (=> b!13355 m!16931))

(assert (=> b!13349 d!10311))

(push 1)

(assert (not b!13355))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!10313 () Bool)

(declare-fun c!3740 () Bool)

(assert (=> d!10313 (= c!3740 (is-Leaf!169 (left!579 x$1!268)))))

(declare-fun e!7320 () (Set Int))

(assert (=> d!10313 (= (content!21 (left!579 x$1!268)) e!7320)))

(declare-fun b!13356 () Bool)

(assert (=> b!13356 (= e!7320 (as emptyset (Set Int)))))

(declare-fun b!13357 () Bool)

(assert (=> b!13357 (= e!7320 (union (union (content!21 (left!579 (left!579 x$1!268))) (insert (value!1464 (left!579 x$1!268)) (as emptyset (Set Int)))) (content!21 (right!582 (left!579 x$1!268)))))))

(assert (= (and d!10313 c!3740) b!13356))

(assert (= (and d!10313 (not c!3740)) b!13357))

(declare-fun m!16933 () Bool)

(assert (=> b!13357 m!16933))

(declare-fun m!16935 () Bool)

(assert (=> b!13357 m!16935))

(declare-fun m!16937 () Bool)

(assert (=> b!13357 m!16937))

(assert (=> b!13355 d!10313))

(declare-fun d!10315 () Bool)

(declare-fun c!3741 () Bool)

(assert (=> d!10315 (= c!3741 (is-Leaf!169 (right!582 x$1!268)))))

(declare-fun e!7321 () (Set Int))

(assert (=> d!10315 (= (content!21 (right!582 x$1!268)) e!7321)))

(declare-fun b!13358 () Bool)

(assert (=> b!13358 (= e!7321 (as emptyset (Set Int)))))

(declare-fun b!13359 () Bool)

(assert (=> b!13359 (= e!7321 (union (union (content!21 (left!579 (right!582 x$1!268))) (insert (value!1464 (right!582 x$1!268)) (as emptyset (Set Int)))) (content!21 (right!582 (right!582 x$1!268)))))))

(assert (= (and d!10315 c!3741) b!13358))

(assert (= (and d!10315 (not c!3741)) b!13359))

(declare-fun m!16939 () Bool)

(assert (=> b!13359 m!16939))

(declare-fun m!16941 () Bool)

(assert (=> b!13359 m!16941))

(declare-fun m!16943 () Bool)

(assert (=> b!13359 m!16943))

(assert (=> b!13355 d!10315))

(push 1)

(assert (not b!13359))

(assert (not b!13357))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

