; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8344 () Bool)

(assert start!8344)

(declare-fun res!27192 () Bool)

(declare-fun e!31214 () Bool)

(assert (=> start!8344 (=> (not res!27192) (not e!31214))))

(declare-datatypes () ((List!493 (Cons!467 (head!744 (_ BitVec 32)) (tail!770 List!493)) (Nil!468))))

(declare-fun l!1249 () List!493)

(assert (=> start!8344 (= res!27192 (is-Cons!467 l!1249))))

(assert (=> start!8344 e!31214))

(assert (=> start!8344 true))

(declare-fun b!58655 () Bool)

(declare-fun res!27193 () Bool)

(assert (=> b!58655 (=> (not res!27193) (not e!31214))))

(declare-fun inductVal!148 () Bool)

(declare-fun nilAppend!0 (List!493) Bool)

(assert (=> b!58655 (= res!27193 (= inductVal!148 (nilAppend!0 (tail!770 l!1249))))))

(declare-fun b!58656 () Bool)

(declare-fun append!9 (List!493 List!493) List!493)

(assert (=> b!58656 (= e!31214 (not (= (append!9 l!1249 Nil!468) l!1249)))))

(assert (= (and start!8344 res!27192) b!58655))

(assert (= (and b!58655 res!27193) b!58656))

(declare-fun m!63198 () Bool)

(assert (=> b!58655 m!63198))

(declare-fun m!63200 () Bool)

(assert (=> b!58656 m!63200))

(push 1)

(assert (not b!58656))

(assert (not b!58655))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!50692 () Bool)

(declare-fun lt!10744 () List!493)

(declare-fun content!16 (List!493) (Set (_ BitVec 32)))

(assert (=> d!50692 (= (content!16 lt!10744) (union (content!16 l!1249) (content!16 Nil!468)))))

(declare-fun e!31217 () List!493)

(assert (=> d!50692 (= lt!10744 e!31217)))

(declare-fun c!12581 () Bool)

(assert (=> d!50692 (= c!12581 (is-Nil!468 l!1249))))

(assert (=> d!50692 (= (append!9 l!1249 Nil!468) lt!10744)))

(declare-fun b!58661 () Bool)

(assert (=> b!58661 (= e!31217 Nil!468)))

(declare-fun b!58662 () Bool)

(assert (=> b!58662 (= e!31217 (Cons!467 (head!744 l!1249) (append!9 (tail!770 l!1249) Nil!468)))))

(assert (= (and d!50692 c!12581) b!58661))

(assert (= (and d!50692 (not c!12581)) b!58662))

(declare-fun m!63202 () Bool)

(assert (=> d!50692 m!63202))

(declare-fun m!63204 () Bool)

(assert (=> d!50692 m!63204))

(declare-fun m!63206 () Bool)

(assert (=> d!50692 m!63206))

(declare-fun m!63208 () Bool)

(assert (=> b!58662 m!63208))

(assert (=> b!58656 d!50692))

(declare-fun b!58667 () Bool)

(declare-fun e!31220 () Bool)

(assert (=> b!58667 (= e!31220 (= (append!9 (tail!770 l!1249) Nil!468) (tail!770 l!1249)))))

(declare-fun lt!10747 () Bool)

(assert (=> b!58667 (= lt!10747 (nilAppend!0 (tail!770 (tail!770 l!1249))))))

(declare-fun d!50694 () Bool)

(assert (=> d!50694 e!31220))

(declare-fun c!12584 () Bool)

(assert (=> d!50694 (= c!12584 (is-Cons!467 (tail!770 l!1249)))))

(assert (=> d!50694 (= (nilAppend!0 (tail!770 l!1249)) true)))

(declare-fun b!58668 () Bool)

(assert (=> b!58668 (= e!31220 (= (append!9 (tail!770 l!1249) Nil!468) (tail!770 l!1249)))))

(assert (= (and d!50694 c!12584) b!58667))

(assert (= (and d!50694 (not c!12584)) b!58668))

(assert (=> b!58667 m!63208))

(declare-fun m!63210 () Bool)

(assert (=> b!58667 m!63210))

(assert (=> b!58668 m!63208))

(assert (=> b!58655 d!50694))

(push 1)

(assert (not b!58667))

(assert (not b!58662))

(assert (not b!58668))

(assert (not d!50692))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

