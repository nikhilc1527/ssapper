; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5100 () Bool)

(assert start!5100)

(declare-fun res!18784 () Bool)

(declare-fun e!20243 () Bool)

(assert (=> start!5100 (=> (not res!18784) (not e!20243))))

(declare-datatypes () ((Nat!76 (Zero!60) (Succ!57 (n!1157 Nat!76)))))

(declare-fun n1!376 () Nat!76)

(declare-fun n3!65 () Nat!76)

(declare-fun <=!2 (Nat!76 Nat!76) Bool)

(assert (=> start!5100 (= res!18784 (<=!2 n1!376 n3!65))))

(assert (=> start!5100 e!20243))

(assert (=> start!5100 true))

(declare-fun b!39253 () Bool)

(declare-fun res!18785 () Bool)

(assert (=> b!39253 (=> (not res!18785) (not e!20243))))

(declare-fun n2!392 () Nat!76)

(declare-fun n4!3 () Nat!76)

(assert (=> b!39253 (= res!18785 (<=!2 n2!392 n4!3))))

(declare-fun b!39254 () Bool)

(declare-fun res!18786 () Bool)

(assert (=> b!39254 (=> (not res!18786) (not e!20243))))

(declare-fun n1!377 () Nat!76)

(declare-fun n2!393 () Nat!76)

(declare-fun n3!66 () Nat!76)

(assert (=> b!39254 (= res!18786 (and (not (is-Zero!60 n3!65)) (or (not (= n1!376 n3!65)) (not (= n2!392 n4!3))) (= n1!376 n3!65) (= n1!377 n1!376) (= n2!393 n2!392) (= n3!66 n4!3)))))

(declare-fun b!39255 () Bool)

(declare-fun <!2 (Nat!76 Nat!76) Bool)

(assert (=> b!39255 (= e!20243 (not (<!2 n2!393 n3!66)))))

(assert (= (and start!5100 res!18784) b!39253))

(assert (= (and b!39253 res!18785) b!39254))

(assert (= (and b!39254 res!18786) b!39255))

(declare-fun m!40431 () Bool)

(assert (=> start!5100 m!40431))

(declare-fun m!40433 () Bool)

(assert (=> b!39253 m!40433))

(declare-fun m!40435 () Bool)

(assert (=> b!39255 m!40435))

(push 1)

(assert (not b!39253))

(assert (not start!5100))

(assert (not b!39255))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!19924 () Bool)

(declare-fun res!18789 () Bool)

(declare-fun e!20246 () Bool)

(assert (=> d!19924 (=> res!18789 e!20246)))

(assert (=> d!19924 (= res!18789 (<!2 n2!392 n4!3))))

(assert (=> d!19924 (= (<=!2 n2!392 n4!3) e!20246)))

(declare-fun b!39258 () Bool)

(assert (=> b!39258 (= e!20246 (= n2!392 n4!3))))

(assert (= (and d!19924 (not res!18789)) b!39258))

(declare-fun m!40437 () Bool)

(assert (=> d!19924 m!40437))

(assert (=> b!39253 d!19924))

(declare-fun d!19926 () Bool)

(declare-fun res!18790 () Bool)

(declare-fun e!20247 () Bool)

(assert (=> d!19926 (=> res!18790 e!20247)))

(assert (=> d!19926 (= res!18790 (<!2 n1!376 n3!65))))

(assert (=> d!19926 (= (<=!2 n1!376 n3!65) e!20247)))

(declare-fun b!39259 () Bool)

(assert (=> b!39259 (= e!20247 (= n1!376 n3!65))))

(assert (= (and d!19926 (not res!18790)) b!39259))

(declare-fun m!40439 () Bool)

(assert (=> d!19926 m!40439))

(assert (=> start!5100 d!19926))

(declare-fun d!19928 () Bool)

(declare-fun lt!7589 () Bool)

(declare-fun repr!0 (Nat!76) Int)

(assert (=> d!19928 (= lt!7589 (< (repr!0 n2!393) (repr!0 n3!66)))))

(declare-fun e!20250 () Bool)

(assert (=> d!19928 (= lt!7589 e!20250)))

(declare-fun c!8366 () Bool)

(assert (=> d!19928 (= c!8366 (and (is-Succ!57 n2!393) (is-Succ!57 n3!66)))))

(assert (=> d!19928 (= (<!2 n2!393 n3!66) lt!7589)))

(declare-fun b!39264 () Bool)

(assert (=> b!39264 (= e!20250 (<!2 (n!1157 n2!393) (n!1157 n3!66)))))

(declare-fun b!39265 () Bool)

(assert (=> b!39265 (= e!20250 (and (is-Zero!60 n2!393) (is-Succ!57 n3!66)))))

(assert (= (and d!19928 c!8366) b!39264))

(assert (= (and d!19928 (not c!8366)) b!39265))

(declare-fun m!40441 () Bool)

(assert (=> d!19928 m!40441))

(declare-fun m!40443 () Bool)

(assert (=> d!19928 m!40443))

(declare-fun m!40445 () Bool)

(assert (=> b!39264 m!40445))

(assert (=> b!39255 d!19928))

(push 1)

(assert (not d!19924))

(assert (not b!39264))

(assert (not d!19926))

(assert (not d!19928))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

