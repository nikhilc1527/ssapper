; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4036 () Bool)

(assert start!4036)

(declare-fun b!31877 () Bool)

(declare-fun e!16239 () Bool)

(declare-fun tp_is_empty!185 () Bool)

(assert (=> b!31877 (= e!16239 tp_is_empty!185)))

(declare-fun b!31878 () Bool)

(declare-fun e!16242 () Bool)

(assert (=> b!31878 (= e!16242 false)))

(declare-fun b!31879 () Bool)

(declare-fun e!16241 () Bool)

(declare-fun tp!6605 () Bool)

(declare-fun tp!6607 () Bool)

(assert (=> b!31879 (= e!16241 (and tp!6605 tp!6607))))

(declare-fun b!31880 () Bool)

(declare-fun e!16240 () Bool)

(declare-fun e!16236 () Bool)

(assert (=> b!31880 (= e!16240 e!16236)))

(declare-fun res!14631 () Bool)

(assert (=> b!31880 (=> res!14631 e!16236)))

(declare-datatypes () ((T!1841 (T!1842 (val!93 Int)))))

(declare-datatypes () ((Conc!70 (CC!69 (left!714 Conc!70) (right!717 Conc!70)) (Single!69 (x!8971 T!1841)) (Empty!80))))

(declare-fun xs!634 () Conc!70)

(assert (=> b!31880 (= res!14631 (not (is-CC!69 (right!717 xs!634))))))

(declare-fun b!31881 () Bool)

(declare-fun e!16238 () Bool)

(assert (=> b!31881 (= e!16238 e!16240)))

(declare-fun res!14628 () Bool)

(assert (=> b!31881 (=> (not res!14628) (not e!16240))))

(declare-fun ys!128 () Conc!70)

(declare-datatypes () ((List!365 (Cons!359 (h!276 T!1841) (t!4379 List!365)) (Nil!360))))

(declare-fun appendAssoc!13 (List!365 List!365 List!365) Bool)

(declare-fun toList!120 (Conc!70) List!365)

(assert (=> b!31881 (= res!14628 (appendAssoc!13 (toList!120 (left!714 xs!634)) (toList!120 (right!717 xs!634)) (toList!120 ys!128)))))

(declare-fun b!31882 () Bool)

(declare-fun e!16237 () Bool)

(declare-fun ++!45 (List!365 List!365) List!365)

(assert (=> b!31882 (= e!16237 (appendAssoc!13 (toList!120 (left!714 xs!634)) (toList!120 (left!714 (right!717 xs!634))) (++!45 (toList!120 (right!717 (right!717 xs!634))) (toList!120 ys!128))))))

(declare-fun b!31883 () Bool)

(assert (=> b!31883 (= e!16241 tp_is_empty!185)))

(declare-fun b!31884 () Bool)

(declare-fun tp!6604 () Bool)

(declare-fun tp!6606 () Bool)

(assert (=> b!31884 (= e!16239 (and tp!6604 tp!6606))))

(declare-fun res!14627 () Bool)

(assert (=> start!4036 (=> (not res!14627) (not e!16242))))

(assert (=> start!4036 (= res!14627 e!16238)))

(declare-fun res!14629 () Bool)

(assert (=> start!4036 (=> res!14629 e!16238)))

(assert (=> start!4036 (= res!14629 (not (is-CC!69 xs!634)))))

(assert (=> start!4036 e!16242))

(assert (=> start!4036 e!16239))

(assert (=> start!4036 e!16241))

(declare-fun b!31885 () Bool)

(assert (=> b!31885 (= e!16236 e!16237)))

(declare-fun res!14630 () Bool)

(assert (=> b!31885 (=> (not res!14630) (not e!16237))))

(assert (=> b!31885 (= res!14630 (appendAssoc!13 (toList!120 (left!714 (right!717 xs!634))) (toList!120 (right!717 (right!717 xs!634))) (toList!120 ys!128)))))

(assert (= (and start!4036 (not res!14629)) b!31881))

(assert (= (and b!31881 res!14628) b!31880))

(assert (= (and b!31880 (not res!14631)) b!31885))

(assert (= (and b!31885 res!14630) b!31882))

(assert (= (and start!4036 res!14627) b!31878))

(assert (= (and start!4036 (is-CC!69 xs!634)) b!31884))

(assert (= (and start!4036 (is-Single!69 xs!634)) b!31877))

(assert (= (and start!4036 (is-CC!69 ys!128)) b!31879))

(assert (= (and start!4036 (is-Single!69 ys!128)) b!31883))

(declare-fun m!34685 () Bool)

(assert (=> b!31881 m!34685))

(declare-fun m!34687 () Bool)

(assert (=> b!31881 m!34687))

(declare-fun m!34689 () Bool)

(assert (=> b!31881 m!34689))

(assert (=> b!31881 m!34685))

(assert (=> b!31881 m!34687))

(assert (=> b!31881 m!34689))

(declare-fun m!34691 () Bool)

(assert (=> b!31881 m!34691))

(assert (=> b!31882 m!34685))

(declare-fun m!34693 () Bool)

(assert (=> b!31882 m!34693))

(assert (=> b!31882 m!34689))

(declare-fun m!34695 () Bool)

(assert (=> b!31882 m!34695))

(declare-fun m!34697 () Bool)

(assert (=> b!31882 m!34697))

(assert (=> b!31882 m!34689))

(assert (=> b!31882 m!34685))

(assert (=> b!31882 m!34697))

(assert (=> b!31882 m!34695))

(declare-fun m!34699 () Bool)

(assert (=> b!31882 m!34699))

(assert (=> b!31882 m!34693))

(assert (=> b!31885 m!34697))

(assert (=> b!31885 m!34693))

(assert (=> b!31885 m!34689))

(assert (=> b!31885 m!34697))

(assert (=> b!31885 m!34693))

(assert (=> b!31885 m!34689))

(declare-fun m!34701 () Bool)

(assert (=> b!31885 m!34701))

(push 1)

(assert (not b!31885))

(assert (not b!31881))

(assert (not b!31884))

(assert (not b!31879))

(assert (not b!31882))

(assert tp_is_empty!185)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

