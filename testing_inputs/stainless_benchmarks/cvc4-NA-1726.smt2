; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11880 () Bool)

(assert start!11880)

(declare-fun res!47247 () Bool)

(declare-fun e!49229 () Bool)

(assert (=> start!11880 (=> (not res!47247) (not e!49229))))

(declare-datatypes () ((List!760 (Cons!712 (head!1110 (_ BitVec 32)) (tail!1106 List!760)) (Nil!714))))

(declare-fun x!31608 () List!760)

(assert (=> start!11880 (= res!47247 (is-Cons!712 x!31608))))

(assert (=> start!11880 e!49229))

(assert (=> start!11880 true))

(declare-fun b!90219 () Bool)

(declare-fun res!47248 () Bool)

(assert (=> b!90219 (=> (not res!47248) (not e!49229))))

(declare-fun res!47240 () List!760)

(declare-fun test!7 (List!760) List!760)

(assert (=> b!90219 (= res!47248 (= res!47240 (test!7 (tail!1106 x!31608))))))

(declare-fun b!90220 () Bool)

(declare-fun isEmpty!5 (List!760) Bool)

(assert (=> b!90220 (= e!49229 (not (isEmpty!5 res!47240)))))

(assert (=> b!90220 (is-Nil!714 res!47240)))

(assert (= (and start!11880 res!47247) b!90219))

(assert (= (and b!90219 res!47248) b!90220))

(declare-fun m!86036 () Bool)

(assert (=> b!90219 m!86036))

(declare-fun m!86038 () Bool)

(assert (=> b!90220 m!86038))

(push 1)

(assert (not b!90220))

(assert (not b!90219))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59465 () Bool)

(assert (=> d!59465 (= (isEmpty!5 res!47240) (is-Nil!714 res!47240))))

(assert (=> b!90220 d!59465))

(declare-fun d!59467 () Bool)

(declare-fun e!49235 () Bool)

(assert (=> d!59467 e!49235))

(declare-fun res!47252 () Bool)

(assert (=> d!59467 (=> (not res!47252) (not e!49235))))

(declare-fun lt!20468 () List!760)

(assert (=> d!59467 (= res!47252 (is-Nil!714 lt!20468))))

(declare-fun e!49234 () List!760)

(assert (=> d!59467 (= lt!20468 e!49234)))

(declare-fun c!22044 () Bool)

(assert (=> d!59467 (= c!22044 (is-Cons!712 (tail!1106 x!31608)))))

(assert (=> d!59467 (= (test!7 (tail!1106 x!31608)) lt!20468)))

(declare-fun b!90227 () Bool)

(assert (=> b!90227 (= e!49234 (test!7 (tail!1106 (tail!1106 x!31608))))))

(declare-fun b!90228 () Bool)

(assert (=> b!90228 (= e!49234 Nil!714)))

(declare-fun b!90229 () Bool)

(assert (=> b!90229 (= e!49235 (isEmpty!5 lt!20468))))

(assert (= (and d!59467 c!22044) b!90227))

(assert (= (and d!59467 (not c!22044)) b!90228))

(assert (= (and d!59467 res!47252) b!90229))

(declare-fun m!86040 () Bool)

(assert (=> b!90227 m!86040))

(declare-fun m!86042 () Bool)

(assert (=> b!90229 m!86042))

(assert (=> b!90219 d!59467))

(push 1)

(assert (not b!90227))

(assert (not b!90229))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

