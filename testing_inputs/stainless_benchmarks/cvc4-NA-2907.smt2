; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14914 () Bool)

(assert start!14914)

(declare-fun res!49306 () Bool)

(declare-fun e!51610 () Bool)

(assert (=> start!14914 (=> res!49306 e!51610)))

(declare-datatypes () ((P!61 (Charlie!61) (Alice!61) (Bob!61))))

(declare-datatypes () ((tuple2!468 (tuple2!469 (_1!273 P!61) (_2!273 P!61)))))

(declare-datatypes () ((List!875 (Cons!813 (h!5292 tuple2!468) (t!53581 List!875)) (Nil!815))))

(declare-fun lt!21615 () List!875)

(declare-fun lt!21614 () List!875)

(declare-fun content!196 (List!875) (Set tuple2!468))

(assert (=> start!14914 (= res!49306 (not (= (content!196 lt!21615) (union (content!196 lt!21614) (content!196 lt!21615)))))))

(assert (=> start!14914 (= lt!21614 Nil!815)))

(assert (=> start!14914 (= lt!21615 Nil!815)))

(assert (=> start!14914 e!51610))

(declare-fun b!94365 () Bool)

(declare-fun res!49307 () Bool)

(assert (=> b!94365 (=> res!49307 e!51610)))

(declare-fun size!986 (List!875) Int)

(assert (=> b!94365 (= res!49307 (not (= (size!986 lt!21615) (+ (size!986 lt!21614) (size!986 lt!21615)))))))

(declare-fun b!94366 () Bool)

(assert (=> b!94366 (= e!51610 (and (= lt!21615 Nil!815) (not (= lt!21615 lt!21614))))))

(assert (= (and start!14914 (not res!49306)) b!94365))

(assert (= (and b!94365 (not res!49307)) b!94366))

(declare-fun m!89803 () Bool)

(assert (=> start!14914 m!89803))

(declare-fun m!89805 () Bool)

(assert (=> start!14914 m!89805))

(declare-fun m!89807 () Bool)

(assert (=> b!94365 m!89807))

(declare-fun m!89809 () Bool)

(assert (=> b!94365 m!89809))

(push 1)

(assert (not b!94365))

(assert (not start!14914))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61496 () Bool)

(declare-fun lt!21618 () Int)

(assert (=> d!61496 (>= lt!21618 0)))

(declare-fun e!51613 () Int)

(assert (=> d!61496 (= lt!21618 e!51613)))

(declare-fun c!23202 () Bool)

(assert (=> d!61496 (= c!23202 (is-Nil!815 lt!21615))))

(assert (=> d!61496 (= (size!986 lt!21615) lt!21618)))

(declare-fun b!94371 () Bool)

(assert (=> b!94371 (= e!51613 0)))

(declare-fun b!94372 () Bool)

(assert (=> b!94372 (= e!51613 (+ 1 (size!986 (t!53581 lt!21615))))))

(assert (= (and d!61496 c!23202) b!94371))

(assert (= (and d!61496 (not c!23202)) b!94372))

(declare-fun m!89811 () Bool)

(assert (=> b!94372 m!89811))

(assert (=> b!94365 d!61496))

(declare-fun d!61498 () Bool)

(declare-fun lt!21619 () Int)

(assert (=> d!61498 (>= lt!21619 0)))

(declare-fun e!51614 () Int)

(assert (=> d!61498 (= lt!21619 e!51614)))

(declare-fun c!23203 () Bool)

(assert (=> d!61498 (= c!23203 (is-Nil!815 lt!21614))))

(assert (=> d!61498 (= (size!986 lt!21614) lt!21619)))

(declare-fun b!94373 () Bool)

(assert (=> b!94373 (= e!51614 0)))

(declare-fun b!94374 () Bool)

(assert (=> b!94374 (= e!51614 (+ 1 (size!986 (t!53581 lt!21614))))))

(assert (= (and d!61498 c!23203) b!94373))

(assert (= (and d!61498 (not c!23203)) b!94374))

(declare-fun m!89813 () Bool)

(assert (=> b!94374 m!89813))

(assert (=> b!94365 d!61498))

(declare-fun d!61500 () Bool)

(declare-fun c!23206 () Bool)

(assert (=> d!61500 (= c!23206 (is-Nil!815 lt!21615))))

(declare-fun e!51617 () (Set tuple2!468))

(assert (=> d!61500 (= (content!196 lt!21615) e!51617)))

(declare-fun b!94379 () Bool)

(assert (=> b!94379 (= e!51617 (as emptyset (Set tuple2!468)))))

(declare-fun b!94380 () Bool)

(assert (=> b!94380 (= e!51617 (union (insert (h!5292 lt!21615) (as emptyset (Set tuple2!468))) (content!196 (t!53581 lt!21615))))))

(assert (= (and d!61500 c!23206) b!94379))

(assert (= (and d!61500 (not c!23206)) b!94380))

(declare-fun m!89815 () Bool)

(assert (=> b!94380 m!89815))

(declare-fun m!89817 () Bool)

(assert (=> b!94380 m!89817))

(assert (=> start!14914 d!61500))

(declare-fun d!61502 () Bool)

(declare-fun c!23207 () Bool)

(assert (=> d!61502 (= c!23207 (is-Nil!815 lt!21614))))

(declare-fun e!51618 () (Set tuple2!468))

(assert (=> d!61502 (= (content!196 lt!21614) e!51618)))

(declare-fun b!94381 () Bool)

(assert (=> b!94381 (= e!51618 (as emptyset (Set tuple2!468)))))

(declare-fun b!94382 () Bool)

(assert (=> b!94382 (= e!51618 (union (insert (h!5292 lt!21614) (as emptyset (Set tuple2!468))) (content!196 (t!53581 lt!21614))))))

(assert (= (and d!61502 c!23207) b!94381))

(assert (= (and d!61502 (not c!23207)) b!94382))

(declare-fun m!89819 () Bool)

(assert (=> b!94382 m!89819))

(declare-fun m!89821 () Bool)

(assert (=> b!94382 m!89821))

(assert (=> start!14914 d!61502))

(push 1)

(assert (not b!94372))

(assert (not b!94382))

(assert (not b!94380))

(assert (not b!94374))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

