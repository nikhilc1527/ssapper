; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7788 () Bool)

(assert start!7788)

(declare-fun res!25524 () Bool)

(declare-fun e!29152 () Bool)

(assert (=> start!7788 (=> (not res!25524) (not e!29152))))

(declare-datatypes () ((Unit!952 (Unit!953))))

(declare-fun tmp!445 () Unit!952)

(declare-fun dynAssert!1 (Bool) Unit!952)

(assert (=> start!7788 (= res!25524 (= tmp!445 (dynAssert!1 false)))))

(assert (=> start!7788 e!29152))

(assert (=> start!7788 true))

(declare-fun b!55349 () Bool)

(declare-datatypes () ((tuple2!280 (tuple2!281 (_1!167 Unit!952) (_2!167 (_ BitVec 32))))))

(declare-fun tmp!446 () tuple2!280)

(assert (=> b!55349 (= e!29152 (= tmp!446 (tuple2!281 (dynAssert!1 false) #b00000000000000000000000000000000)))))

(assert (= (and start!7788 res!25524) b!55349))

(declare-fun m!60122 () Bool)

(assert (=> start!7788 m!60122))

(assert (=> b!55349 m!60122))

(push 1)

(assert (not start!7788))

(assert (not b!55349))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!45326 () Bool)

(assert (=> d!45326 false))

(assert (=> d!45326 true))

(declare-fun res!25527 () Unit!952)

(assert (=> d!45326 (= (dynAssert!1 false) res!25527)))

(assert (=> start!7788 d!45326))

(assert (=> b!55349 d!45326))

(push 1)

(check-sat)

(pop 1)

