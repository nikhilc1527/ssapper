; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5180 () Bool)

(assert start!5180)

(declare-fun res!18964 () Bool)

(declare-fun e!20371 () Bool)

(assert (=> start!5180 (=> (not res!18964) (not e!20371))))

(declare-datatypes () ((Nat!86 (Zero!70) (Succ!67 (n!1172 Nat!86)))))

(declare-fun n2!205 () Nat!86)

(declare-fun n3!50 () Nat!86)

(declare-fun <!2 (Nat!86 Nat!86) Bool)

(assert (=> start!5180 (= res!18964 (<!2 n2!205 n3!50))))

(assert (=> start!5180 e!20371))

(assert (=> start!5180 true))

(declare-fun b!39531 () Bool)

(assert (=> b!39531 (= e!20371 (and (or (not (is-Succ!67 n3!50)) (not (= n2!205 (n!1172 n3!50)))) (not (is-Succ!67 n3!50))))))

(assert (= (and start!5180 res!18964) b!39531))

(declare-fun m!40677 () Bool)

(assert (=> start!5180 m!40677))

(push 1)

(assert (not start!5180))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!20030 () Bool)

(declare-fun lt!7634 () Bool)

(declare-fun repr!0 (Nat!86) Int)

(assert (=> d!20030 (= lt!7634 (< (repr!0 n2!205) (repr!0 n3!50)))))

(declare-fun e!20374 () Bool)

(assert (=> d!20030 (= lt!7634 e!20374)))

(declare-fun c!8415 () Bool)

(assert (=> d!20030 (= c!8415 (and (is-Succ!67 n2!205) (is-Succ!67 n3!50)))))

(assert (=> d!20030 (= (<!2 n2!205 n3!50) lt!7634)))

(declare-fun b!39536 () Bool)

(assert (=> b!39536 (= e!20374 (<!2 (n!1172 n2!205) (n!1172 n3!50)))))

(declare-fun b!39537 () Bool)

(assert (=> b!39537 (= e!20374 (and (is-Zero!70 n2!205) (is-Succ!67 n3!50)))))

(assert (= (and d!20030 c!8415) b!39536))

(assert (= (and d!20030 (not c!8415)) b!39537))

(declare-fun m!40679 () Bool)

(assert (=> d!20030 m!40679))

(declare-fun m!40681 () Bool)

(assert (=> d!20030 m!40681))

(declare-fun m!40683 () Bool)

(assert (=> b!39536 m!40683))

(assert (=> start!5180 d!20030))

(push 1)

(assert (not d!20030))

(assert (not b!39536))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

