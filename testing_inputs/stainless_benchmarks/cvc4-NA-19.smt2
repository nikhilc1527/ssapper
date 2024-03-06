; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!78 () Bool)

(assert start!78)

(declare-fun res!392 () Bool)

(declare-fun e!274 () Bool)

(assert (=> start!78 (=> (not res!392) (not e!274))))

(declare-datatypes () ((A!461 (A!462 (x!1011 (_ BitVec 32))))))

(declare-datatypes () ((array!59 (array!60 (arr!26 (Array (_ BitVec 32) A!461)) (size!53 (_ BitVec 32))))))

(declare-datatypes () ((B!249 (B!250 (a!288 array!59)))))

(declare-fun b!409 () B!249)

(assert (=> start!78 (= res!392 (= b!409 (B!250 (array!60 (store (store (store ((as const (Array (_ BitVec 32) A!461)) (A!462 #b00000000000000000000000000000000)) #b00000000000000000000000000000000 (A!462 #b00000000000000000000000000000001)) #b00000000000000000000000000000001 (A!462 #b00000000000000000000000000000010)) #b00000000000000000000000000000010 (A!462 #b00000000000000000000000000000011)) #b00000000000000000000000000000011))))))

(assert (=> start!78 e!274))

(declare-fun e!275 () Bool)

(assert (=> start!78 e!275))

(assert (=> start!78 true))

(declare-fun b!424 () Bool)

(declare-fun res!391 () Bool)

(assert (=> b!424 (=> (not res!391) (not e!274))))

(declare-fun x$1!164 () (_ BitVec 32))

(declare-fun foo!41 (B!249) (_ BitVec 32))

(assert (=> b!424 (= res!391 (= x$1!164 (foo!41 b!409)))))

(declare-fun b!425 () Bool)

(assert (=> b!425 (= e!274 (not (= x$1!164 #b00000000000000000000000000000001)))))

(declare-fun b!426 () Bool)

(declare-fun array_inv!21 (array!59) Bool)

(assert (=> b!426 (= e!275 (array_inv!21 (a!288 b!409)))))

(assert (= (and start!78 res!392) b!424))

(assert (= (and b!424 res!391) b!425))

(assert (= start!78 b!426))

(declare-fun m!267 () Bool)

(assert (=> b!424 m!267))

(declare-fun m!269 () Bool)

(assert (=> b!426 m!269))

(push 1)

(assert (not b!424))

(assert (not b!426))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!143 () Bool)

(assert (=> d!143 (= (foo!41 b!409) (x!1011 (select (arr!26 (a!288 b!409)) #b00000000000000000000000000000000)))))

(declare-fun bs!37 () Bool)

(assert (= bs!37 d!143))

(declare-fun m!271 () Bool)

(assert (=> bs!37 m!271))

(assert (=> b!424 d!143))

(declare-fun d!145 () Bool)

(assert (=> d!145 (= (array_inv!21 (a!288 b!409)) (bvsge (size!53 (a!288 b!409)) #b00000000000000000000000000000000))))

(assert (=> b!426 d!145))

(push 1)

(check-sat)

(pop 1)

