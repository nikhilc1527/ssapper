; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5076 () Bool)

(assert start!5076)

(declare-fun res!18720 () Bool)

(declare-fun e!20180 () Bool)

(assert (=> start!5076 (=> (not res!18720) (not e!20180))))

(declare-datatypes () ((Nat!73 (Zero!57) (Succ!54 (n!1152 Nat!73)))))

(declare-fun n!715 () Nat!73)

(declare-fun >!2 (Nat!73 Nat!73) Bool)

(assert (=> start!5076 (= res!18720 (>!2 n!715 Zero!57))))

(assert (=> start!5076 e!20180))

(assert (=> start!5076 true))

(declare-fun b!39148 () Bool)

(assert (=> b!39148 (= e!20180 (not (is-Succ!54 n!715)))))

(assert (= (and start!5076 res!18720) b!39148))

(declare-fun m!40349 () Bool)

(assert (=> start!5076 m!40349))

(push 1)

(assert (not start!5076))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!19894 () Bool)

(declare-fun res!18723 () Bool)

(declare-fun e!20183 () Bool)

(assert (=> d!19894 (=> (not res!18723) (not e!20183))))

(declare-fun <!2 (Nat!73 Nat!73) Bool)

(assert (=> d!19894 (= res!18723 (not (<!2 n!715 Zero!57)))))

(assert (=> d!19894 (= (>!2 n!715 Zero!57) e!20183)))

(declare-fun b!39151 () Bool)

(assert (=> b!39151 (= e!20183 (not (= n!715 Zero!57)))))

(assert (= (and d!19894 res!18723) b!39151))

(declare-fun m!40351 () Bool)

(assert (=> d!19894 m!40351))

(assert (=> start!5076 d!19894))

(push 1)

(assert (not d!19894))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

