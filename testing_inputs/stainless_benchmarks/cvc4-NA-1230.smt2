; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8756 () Bool)

(assert start!8756)

(declare-fun res!28268 () Bool)

(declare-fun e!32428 () Bool)

(assert (=> start!8756 (=> (not res!28268) (not e!32428))))

(declare-datatypes () ((List!547 (Cons!513 (head!859 (_ BitVec 32)) (tail!885 List!547)) (Nil!514))))

(declare-datatypes () ((LList!17 (LNil!16) (LCons!16 (head!860 List!547) (tail!886 LList!17)))))

(declare-fun llist!15 () LList!17)

(assert (=> start!8756 (= res!28268 (not (is-LNil!16 llist!15)))))

(assert (=> start!8756 e!32428))

(assert (=> start!8756 true))

(declare-fun b!60646 () Bool)

(declare-fun res!28269 () Bool)

(assert (=> b!60646 (=> (not res!28269) (not e!32428))))

(declare-fun x$2!314 () Int)

(declare-fun lSize!0 (LList!17) Int)

(assert (=> b!60646 (= res!28269 (= x$2!314 (+ 1 (lSize!0 (tail!886 llist!15)))))))

(declare-fun b!60647 () Bool)

(assert (=> b!60647 (= e!32428 (< x$2!314 0))))

(assert (= (and start!8756 res!28268) b!60646))

(assert (= (and b!60646 res!28269) b!60647))

(declare-fun m!65510 () Bool)

(assert (=> b!60646 m!65510))

(push 1)

(assert (not b!60646))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!51627 () Bool)

(declare-fun lt!11189 () Int)

(assert (=> d!51627 (>= lt!11189 0)))

(declare-fun e!32431 () Int)

(assert (=> d!51627 (= lt!11189 e!32431)))

(declare-fun c!13143 () Bool)

(assert (=> d!51627 (= c!13143 (is-LNil!16 (tail!886 llist!15)))))

(assert (=> d!51627 (= (lSize!0 (tail!886 llist!15)) lt!11189)))

(declare-fun b!60652 () Bool)

(assert (=> b!60652 (= e!32431 0)))

(declare-fun b!60653 () Bool)

(assert (=> b!60653 (= e!32431 (+ 1 (lSize!0 (tail!886 (tail!886 llist!15)))))))

(assert (= (and d!51627 c!13143) b!60652))

(assert (= (and d!51627 (not c!13143)) b!60653))

(declare-fun m!65512 () Bool)

(assert (=> b!60653 m!65512))

(assert (=> b!60646 d!51627))

(push 1)

(assert (not b!60653))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

