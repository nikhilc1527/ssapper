; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5080 () Bool)

(assert start!5080)

(declare-fun res!18726 () Bool)

(declare-fun e!20186 () Bool)

(assert (=> start!5080 (=> (not res!18726) (not e!20186))))

(declare-datatypes () ((Unit!348 (Unit!349))))

(declare-fun x$4!89 () Unit!348)

(declare-fun Unit!350 () Unit!348)

(assert (=> start!5080 (= res!18726 (= x$4!89 Unit!350))))

(assert (=> start!5080 e!20186))

(assert (=> start!5080 true))

(declare-fun b!39154 () Bool)

(declare-datatypes () ((Nat!74 (Zero!58) (Succ!55 (n!1153 Nat!74)))))

(declare-fun n!490 () Nat!74)

(declare-fun +!5 (Nat!74 Nat!74) Nat!74)

(assert (=> b!39154 (= e!20186 (not (= (+!5 Zero!58 n!490) n!490)))))

(assert (= (and start!5080 res!18726) b!39154))

(declare-fun m!40353 () Bool)

(assert (=> b!39154 m!40353))

(push 1)

(assert (not b!39154))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!19896 () Bool)

(declare-fun c!8345 () Bool)

(assert (=> d!19896 (= c!8345 (is-Zero!58 Zero!58))))

(declare-fun e!20189 () Nat!74)

(assert (=> d!19896 (= (+!5 Zero!58 n!490) e!20189)))

(declare-fun b!39159 () Bool)

(assert (=> b!39159 (= e!20189 n!490)))

(declare-fun b!39160 () Bool)

(assert (=> b!39160 (= e!20189 (Succ!55 (+!5 (n!1153 Zero!58) n!490)))))

(assert (= (and d!19896 c!8345) b!39159))

(assert (= (and d!19896 (not c!8345)) b!39160))

(declare-fun m!40355 () Bool)

(assert (=> b!39160 m!40355))

(assert (=> b!39154 d!19896))

(push 1)

(assert (not b!39160))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

