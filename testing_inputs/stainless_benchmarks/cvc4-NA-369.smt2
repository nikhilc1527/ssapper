; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2734 () Bool)

(assert start!2734)

(declare-fun res!5057 () Bool)

(declare-fun e!7348 () Bool)

(assert (=> start!2734 (=> (not res!5057) (not e!7348))))

(declare-fun value!1495 () Int)

(declare-datatypes () ((Tree!95 (Leaf!177) (Node!26 (left!593 Tree!95) (value!1512 Int) (right!596 Tree!95)))))

(declare-fun res!5049 () Tree!95)

(declare-fun tree!126 () Tree!95)

(assert (=> start!2734 (= res!5057 (and (is-Leaf!177 tree!126) (= res!5049 (Node!26 Leaf!177 value!1495 Leaf!177))))))

(assert (=> start!2734 e!7348))

(declare-fun e!7347 () Bool)

(declare-fun inv!443 (Tree!95) Bool)

(assert (=> start!2734 (and (inv!443 tree!126) e!7347)))

(declare-fun e!7346 () Bool)

(assert (=> start!2734 (and (inv!443 res!5049) e!7346)))

(assert (=> start!2734 true))

(declare-fun b!13384 () Bool)

(declare-fun content!20 (Tree!95) (Set Int))

(assert (=> b!13384 (= e!7348 (not (= (content!20 res!5049) (union (content!20 tree!126) (insert value!1495 (as emptyset (Set Int)))))))))

(assert (=> b!13384 (is-Node!26 res!5049)))

(declare-fun tp!3294 () Bool)

(declare-fun b!13385 () Bool)

(declare-fun tp!3295 () Bool)

(assert (=> b!13385 (= e!7347 (and (inv!443 (left!593 tree!126)) tp!3294 (inv!443 (right!596 tree!126)) tp!3295))))

(declare-fun tp!3297 () Bool)

(declare-fun b!13386 () Bool)

(declare-fun tp!3296 () Bool)

(assert (=> b!13386 (= e!7346 (and (inv!443 (left!593 res!5049)) tp!3296 (inv!443 (right!596 res!5049)) tp!3297))))

(assert (= (and start!2734 res!5057) b!13384))

(assert (= (and start!2734 (is-Node!26 tree!126)) b!13385))

(assert (= (and start!2734 (is-Node!26 res!5049)) b!13386))

(declare-fun m!16981 () Bool)

(assert (=> start!2734 m!16981))

(declare-fun m!16983 () Bool)

(assert (=> start!2734 m!16983))

(declare-fun m!16985 () Bool)

(assert (=> b!13384 m!16985))

(declare-fun m!16987 () Bool)

(assert (=> b!13384 m!16987))

(declare-fun m!16989 () Bool)

(assert (=> b!13384 m!16989))

(declare-fun m!16991 () Bool)

(assert (=> b!13385 m!16991))

(declare-fun m!16993 () Bool)

(assert (=> b!13385 m!16993))

(declare-fun m!16995 () Bool)

(assert (=> b!13386 m!16995))

(declare-fun m!16997 () Bool)

(assert (=> b!13386 m!16997))

(push 1)

(assert (not b!13385))

(assert (not start!2734))

(assert (not b!13384))

(assert (not b!13386))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!13391 () Bool)

(declare-fun m!16999 () Bool)

(assert (=> b!13391 m!16999))

(declare-fun inst!106 () Bool)

(declare-fun x!7590 () Int)

(assert (=> b!13391 (= inst!106 (=> true (or (not (member x!7590 (content!20 (left!593 (left!593 tree!126))))) (< x!7590 (value!1512 (left!593 tree!126))))))))

(declare-fun m!17001 () Bool)

(assert (=> b!13391 m!17001))

(declare-fun b!13392 () Bool)

(declare-fun m!17003 () Bool)

(assert (=> b!13392 m!17003))

(declare-fun inst!107 () Bool)

(declare-fun x!7591 () Int)

(assert (=> b!13392 (= inst!107 (=> true (or (not (member x!7591 (content!20 (right!596 (left!593 tree!126))))) (< (value!1512 (left!593 tree!126)) x!7591))))))

(declare-fun m!17005 () Bool)

(assert (=> b!13392 m!17005))

(declare-fun bs!4143 () Bool)

(declare-fun neg-inst!94 () Bool)

(assert (= bs!4143 neg-inst!94))

(assert (=> bs!4143 m!16999))

(declare-fun bs!4144 () Bool)

(declare-fun s!587 () Bool)

(assert (= bs!4144 (and neg-inst!94 s!587)))

(assert (=> bs!4144 (=> true (or (not (member x!7590 (content!20 (left!593 (left!593 tree!126))))) (< x!7590 (value!1512 (left!593 tree!126)))))))

(assert (=> m!17001 s!587))

(declare-fun bs!4145 () Bool)

(assert (= bs!4145 (and neg-inst!94 b!13391)))

(assert (=> bs!4145 (= true inst!106)))

(declare-fun bs!4146 () Bool)

(declare-fun neg-inst!95 () Bool)

(assert (= bs!4146 neg-inst!95))

(assert (=> bs!4146 m!17003))

(declare-fun bs!4147 () Bool)

(declare-fun s!589 () Bool)

(assert (= bs!4147 (and neg-inst!95 s!589)))

(assert (=> bs!4147 (=> true (or (not (member x!7591 (content!20 (right!596 (left!593 tree!126))))) (< (value!1512 (left!593 tree!126)) x!7591)))))

(assert (=> m!17005 s!589))

(declare-fun bs!4148 () Bool)

(assert (= bs!4148 (and neg-inst!95 b!13392)))

(assert (=> bs!4148 (= true inst!107)))

(declare-fun d!10320 () Bool)

(declare-fun res!5062 () Bool)

(declare-fun e!7354 () Bool)

(assert (=> d!10320 (=> res!5062 e!7354)))

(assert (=> d!10320 (= res!5062 (not (is-Node!26 (left!593 tree!126))))))

(assert (=> d!10320 (= (inv!443 (left!593 tree!126)) e!7354)))

(declare-fun e!7353 () Bool)

(assert (=> b!13391 (= e!7354 e!7353)))

(declare-fun res!5063 () Bool)

(assert (=> b!13391 (=> (not res!5063) (not e!7353))))

(assert (=> b!13391 (= res!5063 inst!106)))

(assert (=> b!13392 (= e!7353 inst!107)))

(assert (= (and d!10320 (not res!5062)) b!13391))

(assert (= neg-inst!94 inst!106))

(assert (= (and b!13391 res!5063) b!13392))

(assert (= neg-inst!95 inst!107))

(assert (=> b!13385 d!10320))

(declare-fun b!13393 () Bool)

(declare-fun m!17007 () Bool)

(assert (=> b!13393 m!17007))

(declare-fun inst!108 () Bool)

(declare-fun x!7592 () Int)

(assert (=> b!13393 (= inst!108 (=> true (or (not (member x!7592 (content!20 (left!593 (right!596 tree!126))))) (< x!7592 (value!1512 (right!596 tree!126))))))))

(declare-fun m!17009 () Bool)

(assert (=> b!13393 m!17009))

(declare-fun bs!4149 () Bool)

(assert (= bs!4149 (and b!13393 b!13391)))

(assert (=> (and bs!4149 (= (content!20 (left!593 (right!596 tree!126))) (content!20 (left!593 (left!593 tree!126)))) (= (value!1512 (right!596 tree!126)) (value!1512 (left!593 tree!126)))) (= inst!108 inst!106)))

(declare-fun bs!4150 () Bool)

(assert (= bs!4150 (and b!13393 neg-inst!94)))

(assert (=> (and bs!4150 (= (content!20 (left!593 (right!596 tree!126))) (content!20 (left!593 (left!593 tree!126)))) (= (value!1512 (right!596 tree!126)) (value!1512 (left!593 tree!126)))) (= inst!108 true)))

(declare-fun b!13394 () Bool)

(declare-fun m!17011 () Bool)

(assert (=> b!13394 m!17011))

(declare-fun inst!109 () Bool)

(declare-fun x!7593 () Int)

(assert (=> b!13394 (= inst!109 (=> true (or (not (member x!7593 (content!20 (right!596 (right!596 tree!126))))) (< (value!1512 (right!596 tree!126)) x!7593))))))

(declare-fun m!17013 () Bool)

(assert (=> b!13394 m!17013))

(declare-fun bs!4151 () Bool)

(assert (= bs!4151 (and b!13394 neg-inst!95)))

(assert (=> (and bs!4151 (= (content!20 (right!596 (right!596 tree!126))) (content!20 (right!596 (left!593 tree!126)))) (= (value!1512 (right!596 tree!126)) (value!1512 (left!593 tree!126)))) (= inst!109 true)))

(declare-fun bs!4152 () Bool)

(assert (= bs!4152 (and b!13394 b!13392)))

(assert (=> (and bs!4152 (= (content!20 (right!596 (right!596 tree!126))) (content!20 (right!596 (left!593 tree!126)))) (= (value!1512 (right!596 tree!126)) (value!1512 (left!593 tree!126)))) (= inst!109 inst!107)))

(declare-fun bs!4153 () Bool)

(declare-fun neg-inst!96 () Bool)

(assert (= bs!4153 neg-inst!96))

(assert (=> bs!4153 m!17007))

(declare-fun bs!4154 () Bool)

(declare-fun s!591 () Bool)

(assert (= bs!4154 (and neg-inst!96 s!591)))

(assert (=> bs!4154 (=> true (or (not (member x!7592 (content!20 (left!593 (right!596 tree!126))))) (< x!7592 (value!1512 (right!596 tree!126)))))))

(assert (=> m!17009 s!591))

(declare-fun bs!4155 () Bool)

(assert (= bs!4155 (and neg-inst!96 b!13391)))

(assert (=> (and bs!4155 (= (content!20 (left!593 (right!596 tree!126))) (content!20 (left!593 (left!593 tree!126)))) (= (value!1512 (right!596 tree!126)) (value!1512 (left!593 tree!126)))) (= true inst!106)))

(declare-fun bs!4156 () Bool)

(assert (= bs!4156 (and neg-inst!96 b!13393)))

(assert (=> bs!4156 (= true inst!108)))

(declare-fun bs!4157 () Bool)

(assert (= bs!4157 (and neg-inst!96 neg-inst!94)))

(assert (=> (and bs!4157 (= (content!20 (left!593 (right!596 tree!126))) (content!20 (left!593 (left!593 tree!126)))) (= (value!1512 (right!596 tree!126)) (value!1512 (left!593 tree!126)))) (= true true)))

(declare-fun bs!4158 () Bool)

(declare-fun neg-inst!97 () Bool)

(assert (= bs!4158 neg-inst!97))

(assert (=> bs!4158 m!17011))

(declare-fun bs!4159 () Bool)

(declare-fun s!593 () Bool)

(assert (= bs!4159 (and neg-inst!97 s!593)))

(assert (=> bs!4159 (=> true (or (not (member x!7593 (content!20 (right!596 (right!596 tree!126))))) (< (value!1512 (right!596 tree!126)) x!7593)))))

(assert (=> m!17013 s!593))

(declare-fun bs!4160 () Bool)

(assert (= bs!4160 (and neg-inst!97 neg-inst!95)))

(assert (=> (and bs!4160 (= (content!20 (right!596 (right!596 tree!126))) (content!20 (right!596 (left!593 tree!126)))) (= (value!1512 (right!596 tree!126)) (value!1512 (left!593 tree!126)))) (= true true)))

(declare-fun bs!4161 () Bool)

(assert (= bs!4161 (and neg-inst!97 b!13394)))

(assert (=> bs!4161 (= true inst!109)))

(declare-fun bs!4162 () Bool)

(assert (= bs!4162 (and neg-inst!97 b!13392)))

(assert (=> (and bs!4162 (= (content!20 (right!596 (right!596 tree!126))) (content!20 (right!596 (left!593 tree!126)))) (= (value!1512 (right!596 tree!126)) (value!1512 (left!593 tree!126)))) (= true inst!107)))

(declare-fun d!10322 () Bool)

(declare-fun res!5064 () Bool)

(declare-fun e!7356 () Bool)

(assert (=> d!10322 (=> res!5064 e!7356)))

(assert (=> d!10322 (= res!5064 (not (is-Node!26 (right!596 tree!126))))))

(assert (=> d!10322 (= (inv!443 (right!596 tree!126)) e!7356)))

(declare-fun e!7355 () Bool)

(assert (=> b!13393 (= e!7356 e!7355)))

(declare-fun res!5065 () Bool)

(assert (=> b!13393 (=> (not res!5065) (not e!7355))))

(assert (=> b!13393 (= res!5065 inst!108)))

(assert (=> b!13394 (= e!7355 inst!109)))

(assert (= (and d!10322 (not res!5064)) b!13393))

(assert (= neg-inst!96 inst!108))

(assert (= (and b!13393 res!5065) b!13394))

(assert (= neg-inst!97 inst!109))

(assert (=> b!13385 d!10322))

(declare-fun b!13395 () Bool)

(declare-fun m!17015 () Bool)

(assert (=> b!13395 m!17015))

(declare-fun inst!110 () Bool)

(declare-fun x!7594 () Int)

(assert (=> b!13395 (= inst!110 (=> true (or (not (member x!7594 (content!20 (left!593 tree!126)))) (< x!7594 (value!1512 tree!126)))))))

(declare-fun m!17017 () Bool)

(assert (=> b!13395 m!17017))

(declare-fun bs!4163 () Bool)

(assert (= bs!4163 (and b!13395 neg-inst!96)))

(assert (=> (and bs!4163 (= (content!20 (left!593 tree!126)) (content!20 (left!593 (right!596 tree!126)))) (= (value!1512 tree!126) (value!1512 (right!596 tree!126)))) (= inst!110 true)))

(declare-fun bs!4164 () Bool)

(assert (= bs!4164 (and b!13395 b!13391)))

(assert (=> (and bs!4164 (= (content!20 (left!593 tree!126)) (content!20 (left!593 (left!593 tree!126)))) (= (value!1512 tree!126) (value!1512 (left!593 tree!126)))) (= inst!110 inst!106)))

(declare-fun bs!4165 () Bool)

(assert (= bs!4165 (and b!13395 b!13393)))

(assert (=> (and bs!4165 (= (content!20 (left!593 tree!126)) (content!20 (left!593 (right!596 tree!126)))) (= (value!1512 tree!126) (value!1512 (right!596 tree!126)))) (= inst!110 inst!108)))

(declare-fun bs!4166 () Bool)

(assert (= bs!4166 (and b!13395 neg-inst!94)))

(assert (=> (and bs!4166 (= (content!20 (left!593 tree!126)) (content!20 (left!593 (left!593 tree!126)))) (= (value!1512 tree!126) (value!1512 (left!593 tree!126)))) (= inst!110 true)))

(declare-fun b!13396 () Bool)

(declare-fun m!17019 () Bool)

(assert (=> b!13396 m!17019))

(declare-fun inst!111 () Bool)

(declare-fun x!7595 () Int)

(assert (=> b!13396 (= inst!111 (=> true (or (not (member x!7595 (content!20 (right!596 tree!126)))) (< (value!1512 tree!126) x!7595))))))

(declare-fun m!17021 () Bool)

(assert (=> b!13396 m!17021))

(declare-fun bs!4167 () Bool)

(assert (= bs!4167 (and b!13396 neg-inst!97)))

(assert (=> (and bs!4167 (= (content!20 (right!596 tree!126)) (content!20 (right!596 (right!596 tree!126)))) (= (value!1512 tree!126) (value!1512 (right!596 tree!126)))) (= inst!111 true)))

(declare-fun bs!4168 () Bool)

(assert (= bs!4168 (and b!13396 neg-inst!95)))

(assert (=> (and bs!4168 (= (content!20 (right!596 tree!126)) (content!20 (right!596 (left!593 tree!126)))) (= (value!1512 tree!126) (value!1512 (left!593 tree!126)))) (= inst!111 true)))

(declare-fun bs!4169 () Bool)

(assert (= bs!4169 (and b!13396 b!13394)))

(assert (=> (and bs!4169 (= (content!20 (right!596 tree!126)) (content!20 (right!596 (right!596 tree!126)))) (= (value!1512 tree!126) (value!1512 (right!596 tree!126)))) (= inst!111 inst!109)))

(declare-fun bs!4170 () Bool)

(assert (= bs!4170 (and b!13396 b!13392)))

(assert (=> (and bs!4170 (= (content!20 (right!596 tree!126)) (content!20 (right!596 (left!593 tree!126)))) (= (value!1512 tree!126) (value!1512 (left!593 tree!126)))) (= inst!111 inst!107)))

(declare-fun bs!4171 () Bool)

(declare-fun neg-inst!98 () Bool)

(assert (= bs!4171 neg-inst!98))

(assert (=> bs!4171 m!17015))

(declare-fun bs!4172 () Bool)

(declare-fun s!595 () Bool)

(assert (= bs!4172 (and neg-inst!98 s!595)))

(assert (=> bs!4172 (=> true (or (not (member x!7594 (content!20 (left!593 tree!126)))) (< x!7594 (value!1512 tree!126))))))

(assert (=> m!17017 s!595))

(declare-fun bs!4173 () Bool)

(assert (= bs!4173 (and neg-inst!98 neg-inst!96)))

(assert (=> (and bs!4173 (= (content!20 (left!593 tree!126)) (content!20 (left!593 (right!596 tree!126)))) (= (value!1512 tree!126) (value!1512 (right!596 tree!126)))) (= true true)))

(declare-fun bs!4174 () Bool)

(assert (= bs!4174 (and neg-inst!98 b!13391)))

(assert (=> (and bs!4174 (= (content!20 (left!593 tree!126)) (content!20 (left!593 (left!593 tree!126)))) (= (value!1512 tree!126) (value!1512 (left!593 tree!126)))) (= true inst!106)))

(declare-fun bs!4175 () Bool)

(assert (= bs!4175 (and neg-inst!98 b!13393)))

(assert (=> (and bs!4175 (= (content!20 (left!593 tree!126)) (content!20 (left!593 (right!596 tree!126)))) (= (value!1512 tree!126) (value!1512 (right!596 tree!126)))) (= true inst!108)))

(declare-fun bs!4176 () Bool)

(assert (= bs!4176 (and neg-inst!98 neg-inst!94)))

(assert (=> (and bs!4176 (= (content!20 (left!593 tree!126)) (content!20 (left!593 (left!593 tree!126)))) (= (value!1512 tree!126) (value!1512 (left!593 tree!126)))) (= true true)))

(declare-fun bs!4177 () Bool)

(assert (= bs!4177 (and neg-inst!98 b!13395)))

(assert (=> bs!4177 (= true inst!110)))

(declare-fun bs!4178 () Bool)

(declare-fun neg-inst!99 () Bool)

(assert (= bs!4178 neg-inst!99))

(assert (=> bs!4178 m!17019))

(declare-fun bs!4179 () Bool)

(declare-fun s!597 () Bool)

(assert (= bs!4179 (and neg-inst!99 s!597)))

(assert (=> bs!4179 (=> true (or (not (member x!7595 (content!20 (right!596 tree!126)))) (< (value!1512 tree!126) x!7595)))))

(assert (=> m!17021 s!597))

(declare-fun bs!4180 () Bool)

(assert (= bs!4180 (and neg-inst!99 b!13396)))

(assert (=> bs!4180 (= true inst!111)))

(declare-fun bs!4181 () Bool)

(assert (= bs!4181 (and neg-inst!99 neg-inst!97)))

(assert (=> (and bs!4181 (= (content!20 (right!596 tree!126)) (content!20 (right!596 (right!596 tree!126)))) (= (value!1512 tree!126) (value!1512 (right!596 tree!126)))) (= true true)))

(declare-fun bs!4182 () Bool)

(assert (= bs!4182 (and neg-inst!99 neg-inst!95)))

(assert (=> (and bs!4182 (= (content!20 (right!596 tree!126)) (content!20 (right!596 (left!593 tree!126)))) (= (value!1512 tree!126) (value!1512 (left!593 tree!126)))) (= true true)))

(declare-fun bs!4183 () Bool)

(assert (= bs!4183 (and neg-inst!99 b!13394)))

(assert (=> (and bs!4183 (= (content!20 (right!596 tree!126)) (content!20 (right!596 (right!596 tree!126)))) (= (value!1512 tree!126) (value!1512 (right!596 tree!126)))) (= true inst!109)))

(declare-fun bs!4184 () Bool)

(assert (= bs!4184 (and neg-inst!99 b!13392)))

(assert (=> (and bs!4184 (= (content!20 (right!596 tree!126)) (content!20 (right!596 (left!593 tree!126)))) (= (value!1512 tree!126) (value!1512 (left!593 tree!126)))) (= true inst!107)))

(declare-fun d!10324 () Bool)

(declare-fun res!5066 () Bool)

(declare-fun e!7358 () Bool)

(assert (=> d!10324 (=> res!5066 e!7358)))

(assert (=> d!10324 (= res!5066 (not (is-Node!26 tree!126)))))

(assert (=> d!10324 (= (inv!443 tree!126) e!7358)))

(declare-fun e!7357 () Bool)

(assert (=> b!13395 (= e!7358 e!7357)))

(declare-fun res!5067 () Bool)

(assert (=> b!13395 (=> (not res!5067) (not e!7357))))

(assert (=> b!13395 (= res!5067 inst!110)))

(assert (=> b!13396 (= e!7357 inst!111)))

(assert (= (and d!10324 (not res!5066)) b!13395))

(assert (= neg-inst!98 inst!110))

(assert (= (and b!13395 res!5067) b!13396))

(assert (= neg-inst!99 inst!111))

(assert (=> start!2734 d!10324))

(declare-fun b!13397 () Bool)

(declare-fun m!17023 () Bool)

(assert (=> b!13397 m!17023))

(declare-fun inst!112 () Bool)

(declare-fun x!7596 () Int)

(assert (=> b!13397 (= inst!112 (=> true (or (not (member x!7596 (content!20 (left!593 res!5049)))) (< x!7596 (value!1512 res!5049)))))))

(declare-fun m!17025 () Bool)

(assert (=> b!13397 m!17025))

(declare-fun bs!4185 () Bool)

(assert (= bs!4185 (and b!13397 neg-inst!96)))

(assert (=> (and bs!4185 (= (content!20 (left!593 res!5049)) (content!20 (left!593 (right!596 tree!126)))) (= (value!1512 res!5049) (value!1512 (right!596 tree!126)))) (= inst!112 true)))

(declare-fun bs!4186 () Bool)

(assert (= bs!4186 (and b!13397 neg-inst!98)))

(assert (=> (and bs!4186 (= (content!20 (left!593 res!5049)) (content!20 (left!593 tree!126))) (= (value!1512 res!5049) (value!1512 tree!126))) (= inst!112 true)))

(declare-fun bs!4187 () Bool)

(assert (= bs!4187 (and b!13397 b!13391)))

(assert (=> (and bs!4187 (= (content!20 (left!593 res!5049)) (content!20 (left!593 (left!593 tree!126)))) (= (value!1512 res!5049) (value!1512 (left!593 tree!126)))) (= inst!112 inst!106)))

(declare-fun bs!4188 () Bool)

(assert (= bs!4188 (and b!13397 b!13393)))

(assert (=> (and bs!4188 (= (content!20 (left!593 res!5049)) (content!20 (left!593 (right!596 tree!126)))) (= (value!1512 res!5049) (value!1512 (right!596 tree!126)))) (= inst!112 inst!108)))

(declare-fun bs!4189 () Bool)

(assert (= bs!4189 (and b!13397 neg-inst!94)))

(assert (=> (and bs!4189 (= (content!20 (left!593 res!5049)) (content!20 (left!593 (left!593 tree!126)))) (= (value!1512 res!5049) (value!1512 (left!593 tree!126)))) (= inst!112 true)))

(declare-fun bs!4190 () Bool)

(assert (= bs!4190 (and b!13397 b!13395)))

(assert (=> (and bs!4190 (= (content!20 (left!593 res!5049)) (content!20 (left!593 tree!126))) (= (value!1512 res!5049) (value!1512 tree!126))) (= inst!112 inst!110)))

(declare-fun b!13398 () Bool)

(declare-fun m!17027 () Bool)

(assert (=> b!13398 m!17027))

(declare-fun inst!113 () Bool)

(declare-fun x!7597 () Int)

(assert (=> b!13398 (= inst!113 (=> true (or (not (member x!7597 (content!20 (right!596 res!5049)))) (< (value!1512 res!5049) x!7597))))))

(declare-fun m!17029 () Bool)

(assert (=> b!13398 m!17029))

(declare-fun bs!4191 () Bool)

(assert (= bs!4191 (and b!13398 b!13396)))

(assert (=> (and bs!4191 (= (content!20 (right!596 res!5049)) (content!20 (right!596 tree!126))) (= (value!1512 res!5049) (value!1512 tree!126))) (= inst!113 inst!111)))

(declare-fun bs!4192 () Bool)

(assert (= bs!4192 (and b!13398 neg-inst!95)))

(assert (=> (and bs!4192 (= (content!20 (right!596 res!5049)) (content!20 (right!596 (left!593 tree!126)))) (= (value!1512 res!5049) (value!1512 (left!593 tree!126)))) (= inst!113 true)))

(declare-fun bs!4193 () Bool)

(assert (= bs!4193 (and b!13398 neg-inst!97)))

(assert (=> (and bs!4193 (= (content!20 (right!596 res!5049)) (content!20 (right!596 (right!596 tree!126)))) (= (value!1512 res!5049) (value!1512 (right!596 tree!126)))) (= inst!113 true)))

(declare-fun bs!4194 () Bool)

(assert (= bs!4194 (and b!13398 neg-inst!99)))

(assert (=> (and bs!4194 (= (content!20 (right!596 res!5049)) (content!20 (right!596 tree!126))) (= (value!1512 res!5049) (value!1512 tree!126))) (= inst!113 true)))

(declare-fun bs!4195 () Bool)

(assert (= bs!4195 (and b!13398 b!13394)))

(assert (=> (and bs!4195 (= (content!20 (right!596 res!5049)) (content!20 (right!596 (right!596 tree!126)))) (= (value!1512 res!5049) (value!1512 (right!596 tree!126)))) (= inst!113 inst!109)))

(declare-fun bs!4196 () Bool)

(assert (= bs!4196 (and b!13398 b!13392)))

(assert (=> (and bs!4196 (= (content!20 (right!596 res!5049)) (content!20 (right!596 (left!593 tree!126)))) (= (value!1512 res!5049) (value!1512 (left!593 tree!126)))) (= inst!113 inst!107)))

(declare-fun bs!4197 () Bool)

(declare-fun neg-inst!100 () Bool)

(assert (= bs!4197 neg-inst!100))

(assert (=> bs!4197 m!17023))

(declare-fun bs!4198 () Bool)

(declare-fun s!599 () Bool)

(assert (= bs!4198 (and neg-inst!100 s!599)))

(assert (=> bs!4198 (=> true (or (not (member x!7596 (content!20 (left!593 res!5049)))) (< x!7596 (value!1512 res!5049))))))

(assert (=> m!17025 s!599))

(declare-fun bs!4199 () Bool)

(assert (= bs!4199 (and neg-inst!100 b!13397)))

(assert (=> bs!4199 (= true inst!112)))

(declare-fun bs!4200 () Bool)

(assert (= bs!4200 (and neg-inst!100 neg-inst!96)))

(assert (=> (and bs!4200 (= (content!20 (left!593 res!5049)) (content!20 (left!593 (right!596 tree!126)))) (= (value!1512 res!5049) (value!1512 (right!596 tree!126)))) (= true true)))

(declare-fun bs!4201 () Bool)

(assert (= bs!4201 (and neg-inst!100 neg-inst!98)))

(assert (=> (and bs!4201 (= (content!20 (left!593 res!5049)) (content!20 (left!593 tree!126))) (= (value!1512 res!5049) (value!1512 tree!126))) (= true true)))

(declare-fun bs!4202 () Bool)

(assert (= bs!4202 (and neg-inst!100 b!13391)))

(assert (=> (and bs!4202 (= (content!20 (left!593 res!5049)) (content!20 (left!593 (left!593 tree!126)))) (= (value!1512 res!5049) (value!1512 (left!593 tree!126)))) (= true inst!106)))

(declare-fun bs!4203 () Bool)

(assert (= bs!4203 (and neg-inst!100 neg-inst!94)))

(assert (=> (and bs!4203 (= (content!20 (left!593 res!5049)) (content!20 (left!593 (left!593 tree!126)))) (= (value!1512 res!5049) (value!1512 (left!593 tree!126)))) (= true true)))

(declare-fun bs!4204 () Bool)

(assert (= bs!4204 (and neg-inst!100 b!13393)))

(assert (=> (and bs!4204 (= (content!20 (left!593 res!5049)) (content!20 (left!593 (right!596 tree!126)))) (= (value!1512 res!5049) (value!1512 (right!596 tree!126)))) (= true inst!108)))

(declare-fun bs!4205 () Bool)

(assert (= bs!4205 (and neg-inst!100 b!13395)))

(assert (=> (and bs!4205 (= (content!20 (left!593 res!5049)) (content!20 (left!593 tree!126))) (= (value!1512 res!5049) (value!1512 tree!126))) (= true inst!110)))

(declare-fun bs!4206 () Bool)

(declare-fun neg-inst!101 () Bool)

(assert (= bs!4206 neg-inst!101))

(assert (=> bs!4206 m!17027))

(declare-fun bs!4207 () Bool)

(declare-fun s!601 () Bool)

(assert (= bs!4207 (and neg-inst!101 s!601)))

(assert (=> bs!4207 (=> true (or (not (member x!7597 (content!20 (right!596 res!5049)))) (< (value!1512 res!5049) x!7597)))))

(assert (=> m!17029 s!601))

(declare-fun bs!4208 () Bool)

(assert (= bs!4208 (and neg-inst!101 b!13396)))

(assert (=> (and bs!4208 (= (content!20 (right!596 res!5049)) (content!20 (right!596 tree!126))) (= (value!1512 res!5049) (value!1512 tree!126))) (= true inst!111)))

(declare-fun bs!4209 () Bool)

(assert (= bs!4209 (and neg-inst!101 neg-inst!95)))

(assert (=> (and bs!4209 (= (content!20 (right!596 res!5049)) (content!20 (right!596 (left!593 tree!126)))) (= (value!1512 res!5049) (value!1512 (left!593 tree!126)))) (= true true)))

(declare-fun bs!4210 () Bool)

(assert (= bs!4210 (and neg-inst!101 neg-inst!97)))

(assert (=> (and bs!4210 (= (content!20 (right!596 res!5049)) (content!20 (right!596 (right!596 tree!126)))) (= (value!1512 res!5049) (value!1512 (right!596 tree!126)))) (= true true)))

(declare-fun bs!4211 () Bool)

(assert (= bs!4211 (and neg-inst!101 b!13398)))

(assert (=> bs!4211 (= true inst!113)))

(declare-fun bs!4212 () Bool)

(assert (= bs!4212 (and neg-inst!101 neg-inst!99)))

(assert (=> (and bs!4212 (= (content!20 (right!596 res!5049)) (content!20 (right!596 tree!126))) (= (value!1512 res!5049) (value!1512 tree!126))) (= true true)))

(declare-fun bs!4213 () Bool)

(assert (= bs!4213 (and neg-inst!101 b!13394)))

(assert (=> (and bs!4213 (= (content!20 (right!596 res!5049)) (content!20 (right!596 (right!596 tree!126)))) (= (value!1512 res!5049) (value!1512 (right!596 tree!126)))) (= true inst!109)))

(declare-fun bs!4214 () Bool)

(assert (= bs!4214 (and neg-inst!101 b!13392)))

(assert (=> (and bs!4214 (= (content!20 (right!596 res!5049)) (content!20 (right!596 (left!593 tree!126)))) (= (value!1512 res!5049) (value!1512 (left!593 tree!126)))) (= true inst!107)))

(declare-fun d!10326 () Bool)

(declare-fun res!5068 () Bool)

(declare-fun e!7360 () Bool)

(assert (=> d!10326 (=> res!5068 e!7360)))

(assert (=> d!10326 (= res!5068 (not (is-Node!26 res!5049)))))

(assert (=> d!10326 (= (inv!443 res!5049) e!7360)))

(declare-fun e!7359 () Bool)

(assert (=> b!13397 (= e!7360 e!7359)))

(declare-fun res!5069 () Bool)

(assert (=> b!13397 (=> (not res!5069) (not e!7359))))

(assert (=> b!13397 (= res!5069 inst!112)))

(assert (=> b!13398 (= e!7359 inst!113)))

(assert (= (and d!10326 (not res!5068)) b!13397))

(assert (= neg-inst!100 inst!112))

(assert (= (and b!13397 res!5069) b!13398))

(assert (= neg-inst!101 inst!113))

(assert (=> start!2734 d!10326))

(declare-fun d!10328 () Bool)

(declare-fun c!3744 () Bool)

(assert (=> d!10328 (= c!3744 (is-Leaf!177 res!5049))))

(declare-fun e!7363 () (Set Int))

(assert (=> d!10328 (= (content!20 res!5049) e!7363)))

(declare-fun b!13403 () Bool)

(assert (=> b!13403 (= e!7363 (as emptyset (Set Int)))))

(declare-fun b!13404 () Bool)

(assert (=> b!13404 (= e!7363 (union (union (content!20 (left!593 res!5049)) (insert (value!1512 res!5049) (as emptyset (Set Int)))) (content!20 (right!596 res!5049))))))

(assert (= (and d!10328 c!3744) b!13403))

(assert (= (and d!10328 (not c!3744)) b!13404))

(assert (=> b!13404 m!17023))

(declare-fun m!17031 () Bool)

(assert (=> b!13404 m!17031))

(assert (=> b!13404 m!17027))

(assert (=> b!13384 d!10328))

(declare-fun d!10330 () Bool)

(declare-fun c!3745 () Bool)

(assert (=> d!10330 (= c!3745 (is-Leaf!177 tree!126))))

(declare-fun e!7364 () (Set Int))

(assert (=> d!10330 (= (content!20 tree!126) e!7364)))

(declare-fun b!13405 () Bool)

(assert (=> b!13405 (= e!7364 (as emptyset (Set Int)))))

(declare-fun b!13406 () Bool)

(assert (=> b!13406 (= e!7364 (union (union (content!20 (left!593 tree!126)) (insert (value!1512 tree!126) (as emptyset (Set Int)))) (content!20 (right!596 tree!126))))))

(assert (= (and d!10330 c!3745) b!13405))

(assert (= (and d!10330 (not c!3745)) b!13406))

(assert (=> b!13406 m!17015))

(declare-fun m!17033 () Bool)

(assert (=> b!13406 m!17033))

(assert (=> b!13406 m!17019))

(assert (=> b!13384 d!10330))

(declare-fun b!13407 () Bool)

(declare-fun m!17035 () Bool)

(assert (=> b!13407 m!17035))

(declare-fun inst!114 () Bool)

(declare-fun x!7598 () Int)

(assert (=> b!13407 (= inst!114 (=> true (or (not (member x!7598 (content!20 (left!593 (left!593 res!5049))))) (< x!7598 (value!1512 (left!593 res!5049))))))))

(declare-fun m!17037 () Bool)

(assert (=> b!13407 m!17037))

(declare-fun bs!4215 () Bool)

(assert (= bs!4215 (and b!13407 b!13397)))

(assert (=> (and bs!4215 (= (content!20 (left!593 (left!593 res!5049))) (content!20 (left!593 res!5049))) (= (value!1512 (left!593 res!5049)) (value!1512 res!5049))) (= inst!114 inst!112)))

(declare-fun bs!4216 () Bool)

(assert (= bs!4216 (and b!13407 neg-inst!96)))

(assert (=> (and bs!4216 (= (content!20 (left!593 (left!593 res!5049))) (content!20 (left!593 (right!596 tree!126)))) (= (value!1512 (left!593 res!5049)) (value!1512 (right!596 tree!126)))) (= inst!114 true)))

(declare-fun bs!4217 () Bool)

(assert (= bs!4217 (and b!13407 neg-inst!100)))

(assert (=> (and bs!4217 (= (content!20 (left!593 (left!593 res!5049))) (content!20 (left!593 res!5049))) (= (value!1512 (left!593 res!5049)) (value!1512 res!5049))) (= inst!114 true)))

(declare-fun bs!4218 () Bool)

(assert (= bs!4218 (and b!13407 neg-inst!98)))

(assert (=> (and bs!4218 (= (content!20 (left!593 (left!593 res!5049))) (content!20 (left!593 tree!126))) (= (value!1512 (left!593 res!5049)) (value!1512 tree!126))) (= inst!114 true)))

(declare-fun bs!4219 () Bool)

(assert (= bs!4219 (and b!13407 b!13391)))

(assert (=> (and bs!4219 (= (content!20 (left!593 (left!593 res!5049))) (content!20 (left!593 (left!593 tree!126)))) (= (value!1512 (left!593 res!5049)) (value!1512 (left!593 tree!126)))) (= inst!114 inst!106)))

(declare-fun bs!4220 () Bool)

(assert (= bs!4220 (and b!13407 neg-inst!94)))

(assert (=> (and bs!4220 (= (content!20 (left!593 (left!593 res!5049))) (content!20 (left!593 (left!593 tree!126)))) (= (value!1512 (left!593 res!5049)) (value!1512 (left!593 tree!126)))) (= inst!114 true)))

(declare-fun bs!4221 () Bool)

(assert (= bs!4221 (and b!13407 b!13393)))

(assert (=> (and bs!4221 (= (content!20 (left!593 (left!593 res!5049))) (content!20 (left!593 (right!596 tree!126)))) (= (value!1512 (left!593 res!5049)) (value!1512 (right!596 tree!126)))) (= inst!114 inst!108)))

(declare-fun bs!4222 () Bool)

(assert (= bs!4222 (and b!13407 b!13395)))

(assert (=> (and bs!4222 (= (content!20 (left!593 (left!593 res!5049))) (content!20 (left!593 tree!126))) (= (value!1512 (left!593 res!5049)) (value!1512 tree!126))) (= inst!114 inst!110)))

(declare-fun b!13408 () Bool)

(declare-fun m!17039 () Bool)

(assert (=> b!13408 m!17039))

(declare-fun inst!115 () Bool)

(declare-fun x!7599 () Int)

(assert (=> b!13408 (= inst!115 (=> true (or (not (member x!7599 (content!20 (right!596 (left!593 res!5049))))) (< (value!1512 (left!593 res!5049)) x!7599))))))

(declare-fun m!17041 () Bool)

(assert (=> b!13408 m!17041))

(declare-fun bs!4223 () Bool)

(assert (= bs!4223 (and b!13408 b!13396)))

(assert (=> (and bs!4223 (= (content!20 (right!596 (left!593 res!5049))) (content!20 (right!596 tree!126))) (= (value!1512 (left!593 res!5049)) (value!1512 tree!126))) (= inst!115 inst!111)))

(declare-fun bs!4224 () Bool)

(assert (= bs!4224 (and b!13408 neg-inst!95)))

(assert (=> (and bs!4224 (= (content!20 (right!596 (left!593 res!5049))) (content!20 (right!596 (left!593 tree!126)))) (= (value!1512 (left!593 res!5049)) (value!1512 (left!593 tree!126)))) (= inst!115 true)))

(declare-fun bs!4225 () Bool)

(assert (= bs!4225 (and b!13408 neg-inst!97)))

(assert (=> (and bs!4225 (= (content!20 (right!596 (left!593 res!5049))) (content!20 (right!596 (right!596 tree!126)))) (= (value!1512 (left!593 res!5049)) (value!1512 (right!596 tree!126)))) (= inst!115 true)))

(declare-fun bs!4226 () Bool)

(assert (= bs!4226 (and b!13408 b!13398)))

(assert (=> (and bs!4226 (= (content!20 (right!596 (left!593 res!5049))) (content!20 (right!596 res!5049))) (= (value!1512 (left!593 res!5049)) (value!1512 res!5049))) (= inst!115 inst!113)))

(declare-fun bs!4227 () Bool)

(assert (= bs!4227 (and b!13408 neg-inst!99)))

(assert (=> (and bs!4227 (= (content!20 (right!596 (left!593 res!5049))) (content!20 (right!596 tree!126))) (= (value!1512 (left!593 res!5049)) (value!1512 tree!126))) (= inst!115 true)))

(declare-fun bs!4228 () Bool)

(assert (= bs!4228 (and b!13408 b!13394)))

(assert (=> (and bs!4228 (= (content!20 (right!596 (left!593 res!5049))) (content!20 (right!596 (right!596 tree!126)))) (= (value!1512 (left!593 res!5049)) (value!1512 (right!596 tree!126)))) (= inst!115 inst!109)))

(declare-fun bs!4229 () Bool)

(assert (= bs!4229 (and b!13408 b!13392)))

(assert (=> (and bs!4229 (= (content!20 (right!596 (left!593 res!5049))) (content!20 (right!596 (left!593 tree!126)))) (= (value!1512 (left!593 res!5049)) (value!1512 (left!593 tree!126)))) (= inst!115 inst!107)))

(declare-fun bs!4230 () Bool)

(assert (= bs!4230 (and b!13408 neg-inst!101)))

(assert (=> (and bs!4230 (= (content!20 (right!596 (left!593 res!5049))) (content!20 (right!596 res!5049))) (= (value!1512 (left!593 res!5049)) (value!1512 res!5049))) (= inst!115 true)))

(declare-fun bs!4231 () Bool)

(declare-fun neg-inst!102 () Bool)

(assert (= bs!4231 neg-inst!102))

(assert (=> bs!4231 m!17035))

(declare-fun bs!4232 () Bool)

(declare-fun s!603 () Bool)

(assert (= bs!4232 (and neg-inst!102 s!603)))

(assert (=> bs!4232 (=> true (or (not (member x!7598 (content!20 (left!593 (left!593 res!5049))))) (< x!7598 (value!1512 (left!593 res!5049)))))))

(assert (=> m!17037 s!603))

(declare-fun bs!4233 () Bool)

(assert (= bs!4233 (and neg-inst!102 b!13397)))

(assert (=> (and bs!4233 (= (content!20 (left!593 (left!593 res!5049))) (content!20 (left!593 res!5049))) (= (value!1512 (left!593 res!5049)) (value!1512 res!5049))) (= true inst!112)))

(declare-fun bs!4234 () Bool)

(assert (= bs!4234 (and neg-inst!102 neg-inst!96)))

(assert (=> (and bs!4234 (= (content!20 (left!593 (left!593 res!5049))) (content!20 (left!593 (right!596 tree!126)))) (= (value!1512 (left!593 res!5049)) (value!1512 (right!596 tree!126)))) (= true true)))

(declare-fun bs!4235 () Bool)

(assert (= bs!4235 (and neg-inst!102 neg-inst!100)))

(assert (=> (and bs!4235 (= (content!20 (left!593 (left!593 res!5049))) (content!20 (left!593 res!5049))) (= (value!1512 (left!593 res!5049)) (value!1512 res!5049))) (= true true)))

(declare-fun bs!4236 () Bool)

(assert (= bs!4236 (and neg-inst!102 neg-inst!98)))

(assert (=> (and bs!4236 (= (content!20 (left!593 (left!593 res!5049))) (content!20 (left!593 tree!126))) (= (value!1512 (left!593 res!5049)) (value!1512 tree!126))) (= true true)))

(declare-fun bs!4237 () Bool)

(assert (= bs!4237 (and neg-inst!102 b!13407)))

(assert (=> bs!4237 (= true inst!114)))

(declare-fun bs!4238 () Bool)

(assert (= bs!4238 (and neg-inst!102 b!13391)))

(assert (=> (and bs!4238 (= (content!20 (left!593 (left!593 res!5049))) (content!20 (left!593 (left!593 tree!126)))) (= (value!1512 (left!593 res!5049)) (value!1512 (left!593 tree!126)))) (= true inst!106)))

(declare-fun bs!4239 () Bool)

(assert (= bs!4239 (and neg-inst!102 neg-inst!94)))

(assert (=> (and bs!4239 (= (content!20 (left!593 (left!593 res!5049))) (content!20 (left!593 (left!593 tree!126)))) (= (value!1512 (left!593 res!5049)) (value!1512 (left!593 tree!126)))) (= true true)))

(declare-fun bs!4240 () Bool)

(assert (= bs!4240 (and neg-inst!102 b!13393)))

(assert (=> (and bs!4240 (= (content!20 (left!593 (left!593 res!5049))) (content!20 (left!593 (right!596 tree!126)))) (= (value!1512 (left!593 res!5049)) (value!1512 (right!596 tree!126)))) (= true inst!108)))

(declare-fun bs!4241 () Bool)

(assert (= bs!4241 (and neg-inst!102 b!13395)))

(assert (=> (and bs!4241 (= (content!20 (left!593 (left!593 res!5049))) (content!20 (left!593 tree!126))) (= (value!1512 (left!593 res!5049)) (value!1512 tree!126))) (= true inst!110)))

(declare-fun bs!4242 () Bool)

(declare-fun neg-inst!103 () Bool)

(assert (= bs!4242 neg-inst!103))

(assert (=> bs!4242 m!17039))

(declare-fun bs!4243 () Bool)

(declare-fun s!605 () Bool)

(assert (= bs!4243 (and neg-inst!103 s!605)))

(assert (=> bs!4243 (=> true (or (not (member x!7599 (content!20 (right!596 (left!593 res!5049))))) (< (value!1512 (left!593 res!5049)) x!7599)))))

(assert (=> m!17041 s!605))

(declare-fun bs!4244 () Bool)

(assert (= bs!4244 (and neg-inst!103 b!13396)))

(assert (=> (and bs!4244 (= (content!20 (right!596 (left!593 res!5049))) (content!20 (right!596 tree!126))) (= (value!1512 (left!593 res!5049)) (value!1512 tree!126))) (= true inst!111)))

(declare-fun bs!4245 () Bool)

(assert (= bs!4245 (and neg-inst!103 b!13408)))

(assert (=> bs!4245 (= true inst!115)))

(declare-fun bs!4246 () Bool)

(assert (= bs!4246 (and neg-inst!103 neg-inst!95)))

(assert (=> (and bs!4246 (= (content!20 (right!596 (left!593 res!5049))) (content!20 (right!596 (left!593 tree!126)))) (= (value!1512 (left!593 res!5049)) (value!1512 (left!593 tree!126)))) (= true true)))

(declare-fun bs!4247 () Bool)

(assert (= bs!4247 (and neg-inst!103 neg-inst!97)))

(assert (=> (and bs!4247 (= (content!20 (right!596 (left!593 res!5049))) (content!20 (right!596 (right!596 tree!126)))) (= (value!1512 (left!593 res!5049)) (value!1512 (right!596 tree!126)))) (= true true)))

(declare-fun bs!4248 () Bool)

(assert (= bs!4248 (and neg-inst!103 b!13398)))

(assert (=> (and bs!4248 (= (content!20 (right!596 (left!593 res!5049))) (content!20 (right!596 res!5049))) (= (value!1512 (left!593 res!5049)) (value!1512 res!5049))) (= true inst!113)))

(declare-fun bs!4249 () Bool)

(assert (= bs!4249 (and neg-inst!103 neg-inst!99)))

(assert (=> (and bs!4249 (= (content!20 (right!596 (left!593 res!5049))) (content!20 (right!596 tree!126))) (= (value!1512 (left!593 res!5049)) (value!1512 tree!126))) (= true true)))

(declare-fun bs!4250 () Bool)

(assert (= bs!4250 (and neg-inst!103 b!13394)))

(assert (=> (and bs!4250 (= (content!20 (right!596 (left!593 res!5049))) (content!20 (right!596 (right!596 tree!126)))) (= (value!1512 (left!593 res!5049)) (value!1512 (right!596 tree!126)))) (= true inst!109)))

(declare-fun bs!4251 () Bool)

(assert (= bs!4251 (and neg-inst!103 b!13392)))

(assert (=> (and bs!4251 (= (content!20 (right!596 (left!593 res!5049))) (content!20 (right!596 (left!593 tree!126)))) (= (value!1512 (left!593 res!5049)) (value!1512 (left!593 tree!126)))) (= true inst!107)))

(declare-fun bs!4252 () Bool)

(assert (= bs!4252 (and neg-inst!103 neg-inst!101)))

(assert (=> (and bs!4252 (= (content!20 (right!596 (left!593 res!5049))) (content!20 (right!596 res!5049))) (= (value!1512 (left!593 res!5049)) (value!1512 res!5049))) (= true true)))

(declare-fun d!10332 () Bool)

(declare-fun res!5070 () Bool)

(declare-fun e!7366 () Bool)

(assert (=> d!10332 (=> res!5070 e!7366)))

(assert (=> d!10332 (= res!5070 (not (is-Node!26 (left!593 res!5049))))))

(assert (=> d!10332 (= (inv!443 (left!593 res!5049)) e!7366)))

(declare-fun e!7365 () Bool)

(assert (=> b!13407 (= e!7366 e!7365)))

(declare-fun res!5071 () Bool)

(assert (=> b!13407 (=> (not res!5071) (not e!7365))))

(assert (=> b!13407 (= res!5071 inst!114)))

(assert (=> b!13408 (= e!7365 inst!115)))

(assert (= (and d!10332 (not res!5070)) b!13407))

(assert (= neg-inst!102 inst!114))

(assert (= (and b!13407 res!5071) b!13408))

(assert (= neg-inst!103 inst!115))

(assert (=> b!13386 d!10332))

(declare-fun b!13409 () Bool)

(declare-fun m!17043 () Bool)

(assert (=> b!13409 m!17043))

(declare-fun inst!116 () Bool)

(declare-fun x!7600 () Int)

(assert (=> b!13409 (= inst!116 (=> true (or (not (member x!7600 (content!20 (left!593 (right!596 res!5049))))) (< x!7600 (value!1512 (right!596 res!5049))))))))

(declare-fun m!17045 () Bool)

(assert (=> b!13409 m!17045))

(declare-fun bs!4253 () Bool)

(assert (= bs!4253 (and b!13409 b!13397)))

(assert (=> (and bs!4253 (= (content!20 (left!593 (right!596 res!5049))) (content!20 (left!593 res!5049))) (= (value!1512 (right!596 res!5049)) (value!1512 res!5049))) (= inst!116 inst!112)))

(declare-fun bs!4254 () Bool)

(assert (= bs!4254 (and b!13409 neg-inst!96)))

(assert (=> (and bs!4254 (= (content!20 (left!593 (right!596 res!5049))) (content!20 (left!593 (right!596 tree!126)))) (= (value!1512 (right!596 res!5049)) (value!1512 (right!596 tree!126)))) (= inst!116 true)))

(declare-fun bs!4255 () Bool)

(assert (= bs!4255 (and b!13409 neg-inst!100)))

(assert (=> (and bs!4255 (= (content!20 (left!593 (right!596 res!5049))) (content!20 (left!593 res!5049))) (= (value!1512 (right!596 res!5049)) (value!1512 res!5049))) (= inst!116 true)))

(declare-fun bs!4256 () Bool)

(assert (= bs!4256 (and b!13409 neg-inst!98)))

(assert (=> (and bs!4256 (= (content!20 (left!593 (right!596 res!5049))) (content!20 (left!593 tree!126))) (= (value!1512 (right!596 res!5049)) (value!1512 tree!126))) (= inst!116 true)))

(declare-fun bs!4257 () Bool)

(assert (= bs!4257 (and b!13409 b!13407)))

(assert (=> (and bs!4257 (= (content!20 (left!593 (right!596 res!5049))) (content!20 (left!593 (left!593 res!5049)))) (= (value!1512 (right!596 res!5049)) (value!1512 (left!593 res!5049)))) (= inst!116 inst!114)))

(declare-fun bs!4258 () Bool)

(assert (= bs!4258 (and b!13409 b!13391)))

(assert (=> (and bs!4258 (= (content!20 (left!593 (right!596 res!5049))) (content!20 (left!593 (left!593 tree!126)))) (= (value!1512 (right!596 res!5049)) (value!1512 (left!593 tree!126)))) (= inst!116 inst!106)))

(declare-fun bs!4259 () Bool)

(assert (= bs!4259 (and b!13409 neg-inst!102)))

(assert (=> (and bs!4259 (= (content!20 (left!593 (right!596 res!5049))) (content!20 (left!593 (left!593 res!5049)))) (= (value!1512 (right!596 res!5049)) (value!1512 (left!593 res!5049)))) (= inst!116 true)))

(declare-fun bs!4260 () Bool)

(assert (= bs!4260 (and b!13409 neg-inst!94)))

(assert (=> (and bs!4260 (= (content!20 (left!593 (right!596 res!5049))) (content!20 (left!593 (left!593 tree!126)))) (= (value!1512 (right!596 res!5049)) (value!1512 (left!593 tree!126)))) (= inst!116 true)))

(declare-fun bs!4261 () Bool)

(assert (= bs!4261 (and b!13409 b!13393)))

(assert (=> (and bs!4261 (= (content!20 (left!593 (right!596 res!5049))) (content!20 (left!593 (right!596 tree!126)))) (= (value!1512 (right!596 res!5049)) (value!1512 (right!596 tree!126)))) (= inst!116 inst!108)))

(declare-fun bs!4262 () Bool)

(assert (= bs!4262 (and b!13409 b!13395)))

(assert (=> (and bs!4262 (= (content!20 (left!593 (right!596 res!5049))) (content!20 (left!593 tree!126))) (= (value!1512 (right!596 res!5049)) (value!1512 tree!126))) (= inst!116 inst!110)))

(declare-fun b!13410 () Bool)

(declare-fun m!17047 () Bool)

(assert (=> b!13410 m!17047))

(declare-fun inst!117 () Bool)

(declare-fun x!7601 () Int)

(assert (=> b!13410 (= inst!117 (=> true (or (not (member x!7601 (content!20 (right!596 (right!596 res!5049))))) (< (value!1512 (right!596 res!5049)) x!7601))))))

(declare-fun m!17049 () Bool)

(assert (=> b!13410 m!17049))

(declare-fun bs!4263 () Bool)

(assert (= bs!4263 (and b!13410 b!13396)))

(assert (=> (and bs!4263 (= (content!20 (right!596 (right!596 res!5049))) (content!20 (right!596 tree!126))) (= (value!1512 (right!596 res!5049)) (value!1512 tree!126))) (= inst!117 inst!111)))

(declare-fun bs!4264 () Bool)

(assert (= bs!4264 (and b!13410 b!13408)))

(assert (=> (and bs!4264 (= (content!20 (right!596 (right!596 res!5049))) (content!20 (right!596 (left!593 res!5049)))) (= (value!1512 (right!596 res!5049)) (value!1512 (left!593 res!5049)))) (= inst!117 inst!115)))

(declare-fun bs!4265 () Bool)

(assert (= bs!4265 (and b!13410 neg-inst!95)))

(assert (=> (and bs!4265 (= (content!20 (right!596 (right!596 res!5049))) (content!20 (right!596 (left!593 tree!126)))) (= (value!1512 (right!596 res!5049)) (value!1512 (left!593 tree!126)))) (= inst!117 true)))

(declare-fun bs!4266 () Bool)

(assert (= bs!4266 (and b!13410 neg-inst!97)))

(assert (=> (and bs!4266 (= (content!20 (right!596 (right!596 res!5049))) (content!20 (right!596 (right!596 tree!126)))) (= (value!1512 (right!596 res!5049)) (value!1512 (right!596 tree!126)))) (= inst!117 true)))

(declare-fun bs!4267 () Bool)

(assert (= bs!4267 (and b!13410 b!13398)))

(assert (=> (and bs!4267 (= (content!20 (right!596 (right!596 res!5049))) (content!20 (right!596 res!5049))) (= (value!1512 (right!596 res!5049)) (value!1512 res!5049))) (= inst!117 inst!113)))

(declare-fun bs!4268 () Bool)

(assert (= bs!4268 (and b!13410 neg-inst!99)))

(assert (=> (and bs!4268 (= (content!20 (right!596 (right!596 res!5049))) (content!20 (right!596 tree!126))) (= (value!1512 (right!596 res!5049)) (value!1512 tree!126))) (= inst!117 true)))

(declare-fun bs!4269 () Bool)

(assert (= bs!4269 (and b!13410 b!13394)))

(assert (=> (and bs!4269 (= (content!20 (right!596 (right!596 res!5049))) (content!20 (right!596 (right!596 tree!126)))) (= (value!1512 (right!596 res!5049)) (value!1512 (right!596 tree!126)))) (= inst!117 inst!109)))

(declare-fun bs!4270 () Bool)

(assert (= bs!4270 (and b!13410 b!13392)))

(assert (=> (and bs!4270 (= (content!20 (right!596 (right!596 res!5049))) (content!20 (right!596 (left!593 tree!126)))) (= (value!1512 (right!596 res!5049)) (value!1512 (left!593 tree!126)))) (= inst!117 inst!107)))

(declare-fun bs!4271 () Bool)

(assert (= bs!4271 (and b!13410 neg-inst!103)))

(assert (=> (and bs!4271 (= (content!20 (right!596 (right!596 res!5049))) (content!20 (right!596 (left!593 res!5049)))) (= (value!1512 (right!596 res!5049)) (value!1512 (left!593 res!5049)))) (= inst!117 true)))

(declare-fun bs!4272 () Bool)

(assert (= bs!4272 (and b!13410 neg-inst!101)))

(assert (=> (and bs!4272 (= (content!20 (right!596 (right!596 res!5049))) (content!20 (right!596 res!5049))) (= (value!1512 (right!596 res!5049)) (value!1512 res!5049))) (= inst!117 true)))

(declare-fun bs!4273 () Bool)

(declare-fun neg-inst!104 () Bool)

(assert (= bs!4273 neg-inst!104))

(assert (=> bs!4273 m!17043))

(declare-fun bs!4274 () Bool)

(declare-fun s!607 () Bool)

(assert (= bs!4274 (and neg-inst!104 s!607)))

(assert (=> bs!4274 (=> true (or (not (member x!7600 (content!20 (left!593 (right!596 res!5049))))) (< x!7600 (value!1512 (right!596 res!5049)))))))

(assert (=> m!17045 s!607))

(declare-fun bs!4275 () Bool)

(assert (= bs!4275 (and neg-inst!104 b!13397)))

(assert (=> (and bs!4275 (= (content!20 (left!593 (right!596 res!5049))) (content!20 (left!593 res!5049))) (= (value!1512 (right!596 res!5049)) (value!1512 res!5049))) (= true inst!112)))

(declare-fun bs!4276 () Bool)

(assert (= bs!4276 (and neg-inst!104 neg-inst!96)))

(assert (=> (and bs!4276 (= (content!20 (left!593 (right!596 res!5049))) (content!20 (left!593 (right!596 tree!126)))) (= (value!1512 (right!596 res!5049)) (value!1512 (right!596 tree!126)))) (= true true)))

(declare-fun bs!4277 () Bool)

(assert (= bs!4277 (and neg-inst!104 b!13409)))

(assert (=> bs!4277 (= true inst!116)))

(declare-fun bs!4278 () Bool)

(assert (= bs!4278 (and neg-inst!104 neg-inst!100)))

(assert (=> (and bs!4278 (= (content!20 (left!593 (right!596 res!5049))) (content!20 (left!593 res!5049))) (= (value!1512 (right!596 res!5049)) (value!1512 res!5049))) (= true true)))

(declare-fun bs!4279 () Bool)

(assert (= bs!4279 (and neg-inst!104 neg-inst!98)))

(assert (=> (and bs!4279 (= (content!20 (left!593 (right!596 res!5049))) (content!20 (left!593 tree!126))) (= (value!1512 (right!596 res!5049)) (value!1512 tree!126))) (= true true)))

(declare-fun bs!4280 () Bool)

(assert (= bs!4280 (and neg-inst!104 b!13407)))

(assert (=> (and bs!4280 (= (content!20 (left!593 (right!596 res!5049))) (content!20 (left!593 (left!593 res!5049)))) (= (value!1512 (right!596 res!5049)) (value!1512 (left!593 res!5049)))) (= true inst!114)))

(declare-fun bs!4281 () Bool)

(assert (= bs!4281 (and neg-inst!104 b!13391)))

(assert (=> (and bs!4281 (= (content!20 (left!593 (right!596 res!5049))) (content!20 (left!593 (left!593 tree!126)))) (= (value!1512 (right!596 res!5049)) (value!1512 (left!593 tree!126)))) (= true inst!106)))

(declare-fun bs!4282 () Bool)

(assert (= bs!4282 (and neg-inst!104 neg-inst!102)))

(assert (=> (and bs!4282 (= (content!20 (left!593 (right!596 res!5049))) (content!20 (left!593 (left!593 res!5049)))) (= (value!1512 (right!596 res!5049)) (value!1512 (left!593 res!5049)))) (= true true)))

(declare-fun bs!4283 () Bool)

(assert (= bs!4283 (and neg-inst!104 neg-inst!94)))

(assert (=> (and bs!4283 (= (content!20 (left!593 (right!596 res!5049))) (content!20 (left!593 (left!593 tree!126)))) (= (value!1512 (right!596 res!5049)) (value!1512 (left!593 tree!126)))) (= true true)))

(declare-fun bs!4284 () Bool)

(assert (= bs!4284 (and neg-inst!104 b!13393)))

(assert (=> (and bs!4284 (= (content!20 (left!593 (right!596 res!5049))) (content!20 (left!593 (right!596 tree!126)))) (= (value!1512 (right!596 res!5049)) (value!1512 (right!596 tree!126)))) (= true inst!108)))

(declare-fun bs!4285 () Bool)

(assert (= bs!4285 (and neg-inst!104 b!13395)))

(assert (=> (and bs!4285 (= (content!20 (left!593 (right!596 res!5049))) (content!20 (left!593 tree!126))) (= (value!1512 (right!596 res!5049)) (value!1512 tree!126))) (= true inst!110)))

(declare-fun bs!4286 () Bool)

(declare-fun neg-inst!105 () Bool)

(assert (= bs!4286 neg-inst!105))

(assert (=> bs!4286 m!17047))

(declare-fun bs!4287 () Bool)

(declare-fun s!609 () Bool)

(assert (= bs!4287 (and neg-inst!105 s!609)))

(assert (=> bs!4287 (=> true (or (not (member x!7601 (content!20 (right!596 (right!596 res!5049))))) (< (value!1512 (right!596 res!5049)) x!7601)))))

(assert (=> m!17049 s!609))

(declare-fun bs!4288 () Bool)

(assert (= bs!4288 (and neg-inst!105 b!13396)))

(assert (=> (and bs!4288 (= (content!20 (right!596 (right!596 res!5049))) (content!20 (right!596 tree!126))) (= (value!1512 (right!596 res!5049)) (value!1512 tree!126))) (= true inst!111)))

(declare-fun bs!4289 () Bool)

(assert (= bs!4289 (and neg-inst!105 b!13408)))

(assert (=> (and bs!4289 (= (content!20 (right!596 (right!596 res!5049))) (content!20 (right!596 (left!593 res!5049)))) (= (value!1512 (right!596 res!5049)) (value!1512 (left!593 res!5049)))) (= true inst!115)))

(declare-fun bs!4290 () Bool)

(assert (= bs!4290 (and neg-inst!105 neg-inst!95)))

(assert (=> (and bs!4290 (= (content!20 (right!596 (right!596 res!5049))) (content!20 (right!596 (left!593 tree!126)))) (= (value!1512 (right!596 res!5049)) (value!1512 (left!593 tree!126)))) (= true true)))

(declare-fun bs!4291 () Bool)

(assert (= bs!4291 (and neg-inst!105 neg-inst!97)))

(assert (=> (and bs!4291 (= (content!20 (right!596 (right!596 res!5049))) (content!20 (right!596 (right!596 tree!126)))) (= (value!1512 (right!596 res!5049)) (value!1512 (right!596 tree!126)))) (= true true)))

(declare-fun bs!4292 () Bool)

(assert (= bs!4292 (and neg-inst!105 b!13410)))

(assert (=> bs!4292 (= true inst!117)))

(declare-fun bs!4293 () Bool)

(assert (= bs!4293 (and neg-inst!105 b!13398)))

(assert (=> (and bs!4293 (= (content!20 (right!596 (right!596 res!5049))) (content!20 (right!596 res!5049))) (= (value!1512 (right!596 res!5049)) (value!1512 res!5049))) (= true inst!113)))

(declare-fun bs!4294 () Bool)

(assert (= bs!4294 (and neg-inst!105 neg-inst!99)))

(assert (=> (and bs!4294 (= (content!20 (right!596 (right!596 res!5049))) (content!20 (right!596 tree!126))) (= (value!1512 (right!596 res!5049)) (value!1512 tree!126))) (= true true)))

(declare-fun bs!4295 () Bool)

(assert (= bs!4295 (and neg-inst!105 b!13394)))

(assert (=> (and bs!4295 (= (content!20 (right!596 (right!596 res!5049))) (content!20 (right!596 (right!596 tree!126)))) (= (value!1512 (right!596 res!5049)) (value!1512 (right!596 tree!126)))) (= true inst!109)))

(declare-fun bs!4296 () Bool)

(assert (= bs!4296 (and neg-inst!105 b!13392)))

(assert (=> (and bs!4296 (= (content!20 (right!596 (right!596 res!5049))) (content!20 (right!596 (left!593 tree!126)))) (= (value!1512 (right!596 res!5049)) (value!1512 (left!593 tree!126)))) (= true inst!107)))

(declare-fun bs!4297 () Bool)

(assert (= bs!4297 (and neg-inst!105 neg-inst!103)))

(assert (=> (and bs!4297 (= (content!20 (right!596 (right!596 res!5049))) (content!20 (right!596 (left!593 res!5049)))) (= (value!1512 (right!596 res!5049)) (value!1512 (left!593 res!5049)))) (= true true)))

(declare-fun bs!4298 () Bool)

(assert (= bs!4298 (and neg-inst!105 neg-inst!101)))

(assert (=> (and bs!4298 (= (content!20 (right!596 (right!596 res!5049))) (content!20 (right!596 res!5049))) (= (value!1512 (right!596 res!5049)) (value!1512 res!5049))) (= true true)))

(declare-fun d!10334 () Bool)

(declare-fun res!5072 () Bool)

(declare-fun e!7368 () Bool)

(assert (=> d!10334 (=> res!5072 e!7368)))

(assert (=> d!10334 (= res!5072 (not (is-Node!26 (right!596 res!5049))))))

(assert (=> d!10334 (= (inv!443 (right!596 res!5049)) e!7368)))

(declare-fun e!7367 () Bool)

(assert (=> b!13409 (= e!7368 e!7367)))

(declare-fun res!5073 () Bool)

(assert (=> b!13409 (=> (not res!5073) (not e!7367))))

(assert (=> b!13409 (= res!5073 inst!116)))

(assert (=> b!13410 (= e!7367 inst!117)))

(assert (= (and d!10334 (not res!5072)) b!13409))

(assert (= neg-inst!104 inst!116))

(assert (= (and b!13409 res!5073) b!13410))

(assert (= neg-inst!105 inst!117))

(assert (=> b!13386 d!10334))

(declare-fun tp!3303 () Bool)

(declare-fun b!13415 () Bool)

(declare-fun tp!3302 () Bool)

(declare-fun e!7371 () Bool)

(assert (=> b!13415 (= e!7371 (and (inv!443 (left!593 (left!593 tree!126))) tp!3302 (inv!443 (right!596 (left!593 tree!126))) tp!3303))))

(assert (=> b!13385 (= tp!3294 (and (inv!443 (left!593 tree!126)) e!7371))))

(assert (= (and b!13385 (is-Node!26 (left!593 tree!126))) b!13415))

(declare-fun m!17051 () Bool)

(assert (=> b!13415 m!17051))

(declare-fun m!17053 () Bool)

(assert (=> b!13415 m!17053))

(assert (=> b!13385 m!16991))

(declare-fun b!13416 () Bool)

(declare-fun e!7372 () Bool)

(declare-fun tp!3304 () Bool)

(declare-fun tp!3305 () Bool)

(assert (=> b!13416 (= e!7372 (and (inv!443 (left!593 (right!596 tree!126))) tp!3304 (inv!443 (right!596 (right!596 tree!126))) tp!3305))))

(assert (=> b!13385 (= tp!3295 (and (inv!443 (right!596 tree!126)) e!7372))))

(assert (= (and b!13385 (is-Node!26 (right!596 tree!126))) b!13416))

(declare-fun m!17055 () Bool)

(assert (=> b!13416 m!17055))

(declare-fun m!17057 () Bool)

(assert (=> b!13416 m!17057))

(assert (=> b!13385 m!16993))

(declare-fun b!13417 () Bool)

(declare-fun e!7373 () Bool)

(declare-fun tp!3307 () Bool)

(declare-fun tp!3306 () Bool)

(assert (=> b!13417 (= e!7373 (and (inv!443 (left!593 (left!593 res!5049))) tp!3306 (inv!443 (right!596 (left!593 res!5049))) tp!3307))))

(assert (=> b!13386 (= tp!3296 (and (inv!443 (left!593 res!5049)) e!7373))))

(assert (= (and b!13386 (is-Node!26 (left!593 res!5049))) b!13417))

(declare-fun m!17059 () Bool)

(assert (=> b!13417 m!17059))

(declare-fun m!17061 () Bool)

(assert (=> b!13417 m!17061))

(assert (=> b!13386 m!16995))

(declare-fun e!7374 () Bool)

(declare-fun tp!3308 () Bool)

(declare-fun b!13418 () Bool)

(declare-fun tp!3309 () Bool)

(assert (=> b!13418 (= e!7374 (and (inv!443 (left!593 (right!596 res!5049))) tp!3308 (inv!443 (right!596 (right!596 res!5049))) tp!3309))))

(assert (=> b!13386 (= tp!3297 (and (inv!443 (right!596 res!5049)) e!7374))))

(assert (= (and b!13386 (is-Node!26 (right!596 res!5049))) b!13418))

(declare-fun m!17063 () Bool)

(assert (=> b!13418 m!17063))

(declare-fun m!17065 () Bool)

(assert (=> b!13418 m!17065))

(assert (=> b!13386 m!16997))

(push 1)

(assert (not b!13385))

(assert (not b!13395))

(assert (not neg-inst!98))

(assert (not neg-inst!94))

(assert (not neg-inst!101))

(assert (not neg-inst!100))

(assert (not neg-inst!105))

(assert (not b!13398))

(assert (not b!13418))

(assert (not b!13394))

(assert (not b!13406))

(assert (not b!13409))

(assert (not b!13416))

(assert (not b!13391))

(assert (not b!13415))

(assert (not b!13408))

(assert (not neg-inst!102))

(assert (not b!13393))

(assert (not b!13397))

(assert (not b!13410))

(assert (not b!13417))

(assert (not b!13404))

(assert (not neg-inst!97))

(assert (not b!13396))

(assert (not neg-inst!99))

(assert (not neg-inst!104))

(assert (not b!13392))

(assert (not neg-inst!103))

(assert (not b!13386))

(assert (not neg-inst!96))

(assert (not neg-inst!95))

(assert (not b!13407))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

