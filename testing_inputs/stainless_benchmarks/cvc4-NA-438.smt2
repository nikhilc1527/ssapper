; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2912 () Bool)

(assert start!2912)

(declare-fun res!5259 () Bool)

(declare-fun e!7719 () Bool)

(assert (=> start!2912 (=> (not res!5259) (not e!7719))))

(declare-fun x!7822 () (_ BitVec 32))

(declare-fun res!5194 () (_ BitVec 32))

(declare-fun y!697 () (_ BitVec 32))

(declare-fun t!4054 () (_ BitVec 32))

(assert (=> start!2912 (= res!5259 (and (= t!4054 (bvadd (bvand x!7822 y!697) (bvashr (bvxor x!7822 y!697) #b00000000000000000000000000000001))) (= res!5194 (bvadd t!4054 (bvand (bvlshr t!4054 #b00000000000000000000000000011111) (bvxor x!7822 y!697))))))))

(assert (=> start!2912 e!7719))

(assert (=> start!2912 true))

(declare-fun b!13948 () Bool)

(declare-fun safeMean!0 ((_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!13948 (= e!7719 (not (= res!5194 (safeMean!0 x!7822 y!697))))))

(assert (= (and start!2912 res!5259) b!13948))

(declare-fun m!17915 () Bool)

(assert (=> b!13948 m!17915))

(push 1)

(assert (not b!13948))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!10924 () Bool)

(assert (=> d!10924 (= (safeMean!0 x!7822 y!697) (ite (or (and (bvsge x!7822 #b00000000000000000000000000000000) (bvsle y!697 #b00000000000000000000000000000000)) (and (bvsle x!7822 #b00000000000000000000000000000000) (bvsge y!697 #b00000000000000000000000000000000))) (bvsdiv (bvadd x!7822 y!697) #b00000000000000000000000000000010) (ite (and (bvsge x!7822 #b00000000000000000000000000000000) (bvsle x!7822 y!697)) (bvadd x!7822 (bvsdiv (bvsub y!697 x!7822) #b00000000000000000000000000000010)) (ite (or (and (bvsge x!7822 #b00000000000000000000000000000000) (bvsle y!697 x!7822)) (and (bvsle x!7822 #b00000000000000000000000000000000) (bvsle x!7822 y!697))) (bvadd y!697 (bvsdiv (bvsub x!7822 y!697) #b00000000000000000000000000000010)) (bvadd x!7822 (bvsdiv (bvsub y!697 x!7822) #b00000000000000000000000000000010))))))))

(assert (=> b!13948 d!10924))

(push 1)

(check-sat)

(pop 1)

