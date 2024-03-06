; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7508 () Bool)

(assert start!7508)

(declare-fun res!24594 () Bool)

(declare-fun e!28115 () Bool)

(assert (=> start!7508 (=> (not res!24594) (not e!28115))))

(declare-fun x$1!781 () Bool)

(assert (=> start!7508 (= res!24594 (= x$1!781 true))))

(assert (=> start!7508 e!28115))

(assert (=> start!7508 true))

(declare-fun b!53882 () Bool)

(declare-fun x!21312 () (_ BitVec 32))

(declare-datatypes () ((IntSet!17 (Node!104 (left!1087 IntSet!17) (elem!163 (_ BitVec 32)) (right!1090 IntSet!17)) (Empty!143))))

(declare-fun contains!12 (IntSet!17 (_ BitVec 32)) Bool)

(assert (=> b!53882 (= e!28115 (contains!12 Empty!143 x!21312))))

(assert (= (and start!7508 res!24594) b!53882))

(declare-fun m!57660 () Bool)

(assert (=> b!53882 m!57660))

(push 1)

(assert (not b!53882))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!44787 () Bool)

(declare-fun res!24602 () Bool)

(declare-fun e!28121 () Bool)

(assert (=> d!44787 (=> (not res!24602) (not e!28121))))

(assert (=> d!44787 (= res!24602 (not (is-Empty!143 Empty!143)))))

(assert (=> d!44787 (= (contains!12 Empty!143 x!21312) e!28121)))

(declare-fun lt!9434 () Bool)

(declare-fun b!53889 () Bool)

(declare-fun lt!9435 () Bool)

(assert (=> b!53889 (= e!28121 (ite lt!9434 lt!9435 (or (not (bvsgt x!21312 (elem!163 Empty!143))) lt!9435)))))

(declare-fun e!28120 () Bool)

(assert (=> b!53889 (= lt!9435 e!28120)))

(declare-fun c!11710 () Bool)

(assert (=> b!53889 (= c!11710 (or lt!9434 (bvsgt x!21312 (elem!163 Empty!143))))))

(assert (=> b!53889 (= lt!9434 (bvslt x!21312 (elem!163 Empty!143)))))

(declare-fun b!53891 () Bool)

(declare-fun res!24603 () Bool)

(assert (=> b!53891 (= e!28120 res!24603)))

(assert (=> b!53891 true))

(assert (=> b!53891 true))

(declare-fun b!53890 () Bool)

(assert (=> b!53890 (= e!28120 (contains!12 (ite lt!9434 (left!1087 Empty!143) (right!1090 Empty!143)) x!21312))))

(assert (= (and d!44787 res!24602) b!53889))

(assert (= (and b!53889 c!11710) b!53890))

(assert (= (and b!53889 (not c!11710)) b!53891))

(declare-fun m!57662 () Bool)

(assert (=> b!53890 m!57662))

(assert (=> b!53882 d!44787))

(push 1)

(assert (not b!53890))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

