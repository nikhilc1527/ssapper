; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7606 () Bool)

(assert start!7606)

(declare-fun res!24956 () Bool)

(declare-fun e!28515 () Bool)

(assert (=> start!7606 (=> (not res!24956) (not e!28515))))

(declare-datatypes () ((IntSet!34 (Empty!159) (Node!120 (left!1150 IntSet!34) (elem!220 (_ BitVec 32)) (right!1153 IntSet!34)))))

(declare-fun thiss!7629 () IntSet!34)

(declare-fun x!21384 () (_ BitVec 32))

(assert (=> start!7606 (= res!24956 (and (not (is-Empty!159 thiss!7629)) (bvsge x!21384 (elem!220 thiss!7629)) (bvsgt x!21384 (elem!220 thiss!7629))))))

(assert (=> start!7606 e!28515))

(declare-fun e!28514 () Bool)

(declare-fun inv!977 (IntSet!34) Bool)

(assert (=> start!7606 (and (inv!977 thiss!7629) e!28514)))

(assert (=> start!7606 true))

(declare-fun b!54423 () Bool)

(declare-fun res!24957 () Bool)

(assert (=> b!54423 (=> (not res!24957) (not e!28515))))

(declare-fun res!24708 () Bool)

(declare-fun contains!11 (IntSet!34 (_ BitVec 32)) Bool)

(assert (=> b!54423 (= res!24957 (= res!24708 (contains!11 (right!1153 thiss!7629) x!21384)))))

(declare-fun b!54424 () Bool)

(declare-fun content!17 (IntSet!34) (Set (_ BitVec 32)))

(assert (=> b!54424 (= e!28515 (not (= res!24708 (member x!21384 (content!17 thiss!7629)))))))

(declare-fun tp!15346 () Bool)

(declare-fun tp!15345 () Bool)

(declare-fun b!54425 () Bool)

(assert (=> b!54425 (= e!28514 (and (inv!977 (left!1150 thiss!7629)) tp!15345 (inv!977 (right!1153 thiss!7629)) tp!15346))))

(assert (= (and start!7606 res!24956) b!54423))

(assert (= (and b!54423 res!24957) b!54424))

(assert (= (and start!7606 (is-Node!120 thiss!7629)) b!54425))

(declare-fun m!58514 () Bool)

(assert (=> start!7606 m!58514))

(declare-fun m!58516 () Bool)

(assert (=> b!54423 m!58516))

(declare-fun m!58518 () Bool)

(assert (=> b!54424 m!58518))

(declare-fun m!58520 () Bool)

(assert (=> b!54424 m!58520))

(declare-fun m!58522 () Bool)

(assert (=> b!54425 m!58522))

(declare-fun m!58524 () Bool)

(assert (=> b!54425 m!58524))

(push 1)

(assert (not b!54425))

(assert (not start!7606))

(assert (not b!54424))

(assert (not b!54423))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!54430 () Bool)

(declare-fun m!58526 () Bool)

(assert (=> b!54430 m!58526))

(declare-fun inst!278 () Bool)

(declare-fun x!21672 () (_ BitVec 32))

(assert (=> b!54430 (= inst!278 (=> true (or (not (member x!21672 (content!17 (left!1150 (left!1150 thiss!7629))))) (bvslt x!21672 (elem!220 (left!1150 thiss!7629))))))))

(declare-fun m!58528 () Bool)

(assert (=> b!54430 m!58528))

(declare-fun b!54431 () Bool)

(declare-fun m!58530 () Bool)

(assert (=> b!54431 m!58530))

(declare-fun inst!279 () Bool)

(declare-fun x!21673 () (_ BitVec 32))

(assert (=> b!54431 (= inst!279 (=> true (or (not (member x!21673 (content!17 (right!1153 (left!1150 thiss!7629))))) (bvslt (elem!220 (left!1150 thiss!7629)) x!21673))))))

(declare-fun m!58532 () Bool)

(assert (=> b!54431 m!58532))

(declare-fun bs!25183 () Bool)

(declare-fun neg-inst!267 () Bool)

(assert (= bs!25183 neg-inst!267))

(assert (=> bs!25183 m!58526))

(declare-fun bs!25184 () Bool)

(declare-fun s!1149 () Bool)

(assert (= bs!25184 (and neg-inst!267 s!1149)))

(assert (=> bs!25184 (=> true (or (not (member x!21672 (content!17 (left!1150 (left!1150 thiss!7629))))) (bvslt x!21672 (elem!220 (left!1150 thiss!7629)))))))

(assert (=> m!58528 s!1149))

(declare-fun bs!25185 () Bool)

(assert (= bs!25185 (and neg-inst!267 b!54430)))

(assert (=> bs!25185 (= true inst!278)))

(declare-fun bs!25186 () Bool)

(declare-fun neg-inst!266 () Bool)

(assert (= bs!25186 neg-inst!266))

(assert (=> bs!25186 m!58530))

(declare-fun bs!25187 () Bool)

(declare-fun s!1151 () Bool)

(assert (= bs!25187 (and neg-inst!266 s!1151)))

(assert (=> bs!25187 (=> true (or (not (member x!21673 (content!17 (right!1153 (left!1150 thiss!7629))))) (bvslt (elem!220 (left!1150 thiss!7629)) x!21673)))))

(assert (=> m!58532 s!1151))

(declare-fun bs!25188 () Bool)

(assert (= bs!25188 (and neg-inst!266 b!54431)))

(assert (=> bs!25188 (= true inst!279)))

(declare-fun d!44950 () Bool)

(declare-fun res!24963 () Bool)

(declare-fun e!28520 () Bool)

(assert (=> d!44950 (=> res!24963 e!28520)))

(assert (=> d!44950 (= res!24963 (not (is-Node!120 (left!1150 thiss!7629))))))

(assert (=> d!44950 (= (inv!977 (left!1150 thiss!7629)) e!28520)))

(declare-fun e!28521 () Bool)

(assert (=> b!54430 (= e!28520 e!28521)))

(declare-fun res!24962 () Bool)

(assert (=> b!54430 (=> (not res!24962) (not e!28521))))

(assert (=> b!54430 (= res!24962 inst!278)))

(assert (=> b!54431 (= e!28521 inst!279)))

(assert (= (and d!44950 (not res!24963)) b!54430))

(assert (= neg-inst!267 inst!278))

(assert (= (and b!54430 res!24962) b!54431))

(assert (= neg-inst!266 inst!279))

(assert (=> b!54425 d!44950))

(declare-fun b!54432 () Bool)

(declare-fun m!58534 () Bool)

(assert (=> b!54432 m!58534))

(declare-fun inst!280 () Bool)

(declare-fun x!21674 () (_ BitVec 32))

(assert (=> b!54432 (= inst!280 (=> true (or (not (member x!21674 (content!17 (left!1150 (right!1153 thiss!7629))))) (bvslt x!21674 (elem!220 (right!1153 thiss!7629))))))))

(declare-fun m!58536 () Bool)

(assert (=> b!54432 m!58536))

(declare-fun bs!25189 () Bool)

(assert (= bs!25189 (and b!54432 neg-inst!267)))

(assert (=> (and bs!25189 (= (content!17 (left!1150 (right!1153 thiss!7629))) (content!17 (left!1150 (left!1150 thiss!7629)))) (= (elem!220 (right!1153 thiss!7629)) (elem!220 (left!1150 thiss!7629)))) (= inst!280 true)))

(declare-fun bs!25190 () Bool)

(assert (= bs!25190 (and b!54432 b!54430)))

(assert (=> (and bs!25190 (= (content!17 (left!1150 (right!1153 thiss!7629))) (content!17 (left!1150 (left!1150 thiss!7629)))) (= (elem!220 (right!1153 thiss!7629)) (elem!220 (left!1150 thiss!7629)))) (= inst!280 inst!278)))

(declare-fun b!54433 () Bool)

(declare-fun m!58538 () Bool)

(assert (=> b!54433 m!58538))

(declare-fun inst!281 () Bool)

(declare-fun x!21675 () (_ BitVec 32))

(assert (=> b!54433 (= inst!281 (=> true (or (not (member x!21675 (content!17 (right!1153 (right!1153 thiss!7629))))) (bvslt (elem!220 (right!1153 thiss!7629)) x!21675))))))

(declare-fun m!58540 () Bool)

(assert (=> b!54433 m!58540))

(declare-fun bs!25191 () Bool)

(assert (= bs!25191 (and b!54433 b!54431)))

(assert (=> (and bs!25191 (= (content!17 (right!1153 (right!1153 thiss!7629))) (content!17 (right!1153 (left!1150 thiss!7629)))) (= (elem!220 (right!1153 thiss!7629)) (elem!220 (left!1150 thiss!7629)))) (= inst!281 inst!279)))

(declare-fun bs!25192 () Bool)

(assert (= bs!25192 (and b!54433 neg-inst!266)))

(assert (=> (and bs!25192 (= (content!17 (right!1153 (right!1153 thiss!7629))) (content!17 (right!1153 (left!1150 thiss!7629)))) (= (elem!220 (right!1153 thiss!7629)) (elem!220 (left!1150 thiss!7629)))) (= inst!281 true)))

(declare-fun bs!25193 () Bool)

(declare-fun neg-inst!269 () Bool)

(assert (= bs!25193 neg-inst!269))

(assert (=> bs!25193 m!58534))

(declare-fun bs!25194 () Bool)

(declare-fun s!1153 () Bool)

(assert (= bs!25194 (and neg-inst!269 s!1153)))

(assert (=> bs!25194 (=> true (or (not (member x!21674 (content!17 (left!1150 (right!1153 thiss!7629))))) (bvslt x!21674 (elem!220 (right!1153 thiss!7629)))))))

(assert (=> m!58536 s!1153))

(declare-fun bs!25195 () Bool)

(assert (= bs!25195 (and neg-inst!269 neg-inst!267)))

(assert (=> (and bs!25195 (= (content!17 (left!1150 (right!1153 thiss!7629))) (content!17 (left!1150 (left!1150 thiss!7629)))) (= (elem!220 (right!1153 thiss!7629)) (elem!220 (left!1150 thiss!7629)))) (= true true)))

(declare-fun bs!25196 () Bool)

(assert (= bs!25196 (and neg-inst!269 b!54432)))

(assert (=> bs!25196 (= true inst!280)))

(declare-fun bs!25197 () Bool)

(assert (= bs!25197 (and neg-inst!269 b!54430)))

(assert (=> (and bs!25197 (= (content!17 (left!1150 (right!1153 thiss!7629))) (content!17 (left!1150 (left!1150 thiss!7629)))) (= (elem!220 (right!1153 thiss!7629)) (elem!220 (left!1150 thiss!7629)))) (= true inst!278)))

(declare-fun bs!25198 () Bool)

(declare-fun neg-inst!268 () Bool)

(assert (= bs!25198 neg-inst!268))

(assert (=> bs!25198 m!58538))

(declare-fun bs!25199 () Bool)

(declare-fun s!1155 () Bool)

(assert (= bs!25199 (and neg-inst!268 s!1155)))

(assert (=> bs!25199 (=> true (or (not (member x!21675 (content!17 (right!1153 (right!1153 thiss!7629))))) (bvslt (elem!220 (right!1153 thiss!7629)) x!21675)))))

(assert (=> m!58540 s!1155))

(declare-fun bs!25200 () Bool)

(assert (= bs!25200 (and neg-inst!268 b!54431)))

(assert (=> (and bs!25200 (= (content!17 (right!1153 (right!1153 thiss!7629))) (content!17 (right!1153 (left!1150 thiss!7629)))) (= (elem!220 (right!1153 thiss!7629)) (elem!220 (left!1150 thiss!7629)))) (= true inst!279)))

(declare-fun bs!25201 () Bool)

(assert (= bs!25201 (and neg-inst!268 b!54433)))

(assert (=> bs!25201 (= true inst!281)))

(declare-fun bs!25202 () Bool)

(assert (= bs!25202 (and neg-inst!268 neg-inst!266)))

(assert (=> (and bs!25202 (= (content!17 (right!1153 (right!1153 thiss!7629))) (content!17 (right!1153 (left!1150 thiss!7629)))) (= (elem!220 (right!1153 thiss!7629)) (elem!220 (left!1150 thiss!7629)))) (= true true)))

(declare-fun d!44952 () Bool)

(declare-fun res!24965 () Bool)

(declare-fun e!28522 () Bool)

(assert (=> d!44952 (=> res!24965 e!28522)))

(assert (=> d!44952 (= res!24965 (not (is-Node!120 (right!1153 thiss!7629))))))

(assert (=> d!44952 (= (inv!977 (right!1153 thiss!7629)) e!28522)))

(declare-fun e!28523 () Bool)

(assert (=> b!54432 (= e!28522 e!28523)))

(declare-fun res!24964 () Bool)

(assert (=> b!54432 (=> (not res!24964) (not e!28523))))

(assert (=> b!54432 (= res!24964 inst!280)))

(assert (=> b!54433 (= e!28523 inst!281)))

(assert (= (and d!44952 (not res!24965)) b!54432))

(assert (= neg-inst!269 inst!280))

(assert (= (and b!54432 res!24964) b!54433))

(assert (= neg-inst!268 inst!281))

(assert (=> b!54425 d!44952))

(declare-fun b!54434 () Bool)

(declare-fun m!58542 () Bool)

(assert (=> b!54434 m!58542))

(declare-fun inst!282 () Bool)

(declare-fun x!21676 () (_ BitVec 32))

(assert (=> b!54434 (= inst!282 (=> true (or (not (member x!21676 (content!17 (left!1150 thiss!7629)))) (bvslt x!21676 (elem!220 thiss!7629)))))))

(declare-fun m!58544 () Bool)

(assert (=> b!54434 m!58544))

(declare-fun bs!25203 () Bool)

(assert (= bs!25203 (and b!54434 neg-inst!267)))

(assert (=> (and bs!25203 (= (content!17 (left!1150 thiss!7629)) (content!17 (left!1150 (left!1150 thiss!7629)))) (= (elem!220 thiss!7629) (elem!220 (left!1150 thiss!7629)))) (= inst!282 true)))

(declare-fun bs!25204 () Bool)

(assert (= bs!25204 (and b!54434 b!54432)))

(assert (=> (and bs!25204 (= (content!17 (left!1150 thiss!7629)) (content!17 (left!1150 (right!1153 thiss!7629)))) (= (elem!220 thiss!7629) (elem!220 (right!1153 thiss!7629)))) (= inst!282 inst!280)))

(declare-fun bs!25205 () Bool)

(assert (= bs!25205 (and b!54434 neg-inst!269)))

(assert (=> (and bs!25205 (= (content!17 (left!1150 thiss!7629)) (content!17 (left!1150 (right!1153 thiss!7629)))) (= (elem!220 thiss!7629) (elem!220 (right!1153 thiss!7629)))) (= inst!282 true)))

(declare-fun bs!25206 () Bool)

(assert (= bs!25206 (and b!54434 b!54430)))

(assert (=> (and bs!25206 (= (content!17 (left!1150 thiss!7629)) (content!17 (left!1150 (left!1150 thiss!7629)))) (= (elem!220 thiss!7629) (elem!220 (left!1150 thiss!7629)))) (= inst!282 inst!278)))

(declare-fun b!54435 () Bool)

(declare-fun m!58546 () Bool)

(assert (=> b!54435 m!58546))

(declare-fun inst!283 () Bool)

(declare-fun x!21677 () (_ BitVec 32))

(assert (=> b!54435 (= inst!283 (=> true (or (not (member x!21677 (content!17 (right!1153 thiss!7629)))) (bvslt (elem!220 thiss!7629) x!21677))))))

(declare-fun m!58548 () Bool)

(assert (=> b!54435 m!58548))

(declare-fun bs!25207 () Bool)

(assert (= bs!25207 (and b!54435 b!54431)))

(assert (=> (and bs!25207 (= (content!17 (right!1153 thiss!7629)) (content!17 (right!1153 (left!1150 thiss!7629)))) (= (elem!220 thiss!7629) (elem!220 (left!1150 thiss!7629)))) (= inst!283 inst!279)))

(declare-fun bs!25208 () Bool)

(assert (= bs!25208 (and b!54435 b!54433)))

(assert (=> (and bs!25208 (= (content!17 (right!1153 thiss!7629)) (content!17 (right!1153 (right!1153 thiss!7629)))) (= (elem!220 thiss!7629) (elem!220 (right!1153 thiss!7629)))) (= inst!283 inst!281)))

(declare-fun bs!25209 () Bool)

(assert (= bs!25209 (and b!54435 neg-inst!268)))

(assert (=> (and bs!25209 (= (content!17 (right!1153 thiss!7629)) (content!17 (right!1153 (right!1153 thiss!7629)))) (= (elem!220 thiss!7629) (elem!220 (right!1153 thiss!7629)))) (= inst!283 true)))

(declare-fun bs!25210 () Bool)

(assert (= bs!25210 (and b!54435 neg-inst!266)))

(assert (=> (and bs!25210 (= (content!17 (right!1153 thiss!7629)) (content!17 (right!1153 (left!1150 thiss!7629)))) (= (elem!220 thiss!7629) (elem!220 (left!1150 thiss!7629)))) (= inst!283 true)))

(declare-fun bs!25211 () Bool)

(declare-fun neg-inst!271 () Bool)

(assert (= bs!25211 neg-inst!271))

(assert (=> bs!25211 m!58542))

(declare-fun bs!25212 () Bool)

(declare-fun s!1157 () Bool)

(assert (= bs!25212 (and neg-inst!271 s!1157)))

(assert (=> bs!25212 (=> true (or (not (member x!21676 (content!17 (left!1150 thiss!7629)))) (bvslt x!21676 (elem!220 thiss!7629))))))

(assert (=> m!58544 s!1157))

(declare-fun bs!25213 () Bool)

(assert (= bs!25213 (and neg-inst!271 neg-inst!267)))

(assert (=> (and bs!25213 (= (content!17 (left!1150 thiss!7629)) (content!17 (left!1150 (left!1150 thiss!7629)))) (= (elem!220 thiss!7629) (elem!220 (left!1150 thiss!7629)))) (= true true)))

(declare-fun bs!25214 () Bool)

(assert (= bs!25214 (and neg-inst!271 b!54434)))

(assert (=> bs!25214 (= true inst!282)))

(declare-fun bs!25215 () Bool)

(assert (= bs!25215 (and neg-inst!271 b!54432)))

(assert (=> (and bs!25215 (= (content!17 (left!1150 thiss!7629)) (content!17 (left!1150 (right!1153 thiss!7629)))) (= (elem!220 thiss!7629) (elem!220 (right!1153 thiss!7629)))) (= true inst!280)))

(declare-fun bs!25216 () Bool)

(assert (= bs!25216 (and neg-inst!271 neg-inst!269)))

(assert (=> (and bs!25216 (= (content!17 (left!1150 thiss!7629)) (content!17 (left!1150 (right!1153 thiss!7629)))) (= (elem!220 thiss!7629) (elem!220 (right!1153 thiss!7629)))) (= true true)))

(declare-fun bs!25217 () Bool)

(assert (= bs!25217 (and neg-inst!271 b!54430)))

(assert (=> (and bs!25217 (= (content!17 (left!1150 thiss!7629)) (content!17 (left!1150 (left!1150 thiss!7629)))) (= (elem!220 thiss!7629) (elem!220 (left!1150 thiss!7629)))) (= true inst!278)))

(declare-fun bs!25218 () Bool)

(declare-fun neg-inst!270 () Bool)

(assert (= bs!25218 neg-inst!270))

(assert (=> bs!25218 m!58546))

(declare-fun bs!25219 () Bool)

(declare-fun s!1159 () Bool)

(assert (= bs!25219 (and neg-inst!270 s!1159)))

(assert (=> bs!25219 (=> true (or (not (member x!21677 (content!17 (right!1153 thiss!7629)))) (bvslt (elem!220 thiss!7629) x!21677)))))

(assert (=> m!58548 s!1159))

(declare-fun bs!25220 () Bool)

(assert (= bs!25220 (and neg-inst!270 b!54435)))

(assert (=> bs!25220 (= true inst!283)))

(declare-fun bs!25221 () Bool)

(assert (= bs!25221 (and neg-inst!270 b!54431)))

(assert (=> (and bs!25221 (= (content!17 (right!1153 thiss!7629)) (content!17 (right!1153 (left!1150 thiss!7629)))) (= (elem!220 thiss!7629) (elem!220 (left!1150 thiss!7629)))) (= true inst!279)))

(declare-fun bs!25222 () Bool)

(assert (= bs!25222 (and neg-inst!270 b!54433)))

(assert (=> (and bs!25222 (= (content!17 (right!1153 thiss!7629)) (content!17 (right!1153 (right!1153 thiss!7629)))) (= (elem!220 thiss!7629) (elem!220 (right!1153 thiss!7629)))) (= true inst!281)))

(declare-fun bs!25223 () Bool)

(assert (= bs!25223 (and neg-inst!270 neg-inst!268)))

(assert (=> (and bs!25223 (= (content!17 (right!1153 thiss!7629)) (content!17 (right!1153 (right!1153 thiss!7629)))) (= (elem!220 thiss!7629) (elem!220 (right!1153 thiss!7629)))) (= true true)))

(declare-fun bs!25224 () Bool)

(assert (= bs!25224 (and neg-inst!270 neg-inst!266)))

(assert (=> (and bs!25224 (= (content!17 (right!1153 thiss!7629)) (content!17 (right!1153 (left!1150 thiss!7629)))) (= (elem!220 thiss!7629) (elem!220 (left!1150 thiss!7629)))) (= true true)))

(declare-fun d!44954 () Bool)

(declare-fun res!24967 () Bool)

(declare-fun e!28524 () Bool)

(assert (=> d!44954 (=> res!24967 e!28524)))

(assert (=> d!44954 (= res!24967 (not (is-Node!120 thiss!7629)))))

(assert (=> d!44954 (= (inv!977 thiss!7629) e!28524)))

(declare-fun e!28525 () Bool)

(assert (=> b!54434 (= e!28524 e!28525)))

(declare-fun res!24966 () Bool)

(assert (=> b!54434 (=> (not res!24966) (not e!28525))))

(assert (=> b!54434 (= res!24966 inst!282)))

(assert (=> b!54435 (= e!28525 inst!283)))

(assert (= (and d!44954 (not res!24967)) b!54434))

(assert (= neg-inst!271 inst!282))

(assert (= (and b!54434 res!24966) b!54435))

(assert (= neg-inst!270 inst!283))

(assert (=> start!7606 d!44954))

(declare-fun d!44956 () Bool)

(declare-fun c!11821 () Bool)

(assert (=> d!44956 (= c!11821 (is-Empty!159 thiss!7629))))

(declare-fun e!28528 () (Set (_ BitVec 32)))

(assert (=> d!44956 (= (content!17 thiss!7629) e!28528)))

(declare-fun b!54440 () Bool)

(assert (=> b!54440 (= e!28528 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!54441 () Bool)

(assert (=> b!54441 (= e!28528 (union (union (content!17 (left!1150 thiss!7629)) (insert (elem!220 thiss!7629) (as emptyset (Set (_ BitVec 32))))) (content!17 (right!1153 thiss!7629))))))

(assert (= (and d!44956 c!11821) b!54440))

(assert (= (and d!44956 (not c!11821)) b!54441))

(assert (=> b!54441 m!58542))

(declare-fun m!58550 () Bool)

(assert (=> b!54441 m!58550))

(assert (=> b!54441 m!58546))

(assert (=> b!54424 d!44956))

(declare-fun d!44958 () Bool)

(declare-fun lt!9601 () Bool)

(assert (=> d!44958 (= lt!9601 (member x!21384 (content!17 (right!1153 thiss!7629))))))

(declare-fun e!28534 () Bool)

(assert (=> d!44958 (= lt!9601 e!28534)))

(declare-fun res!24976 () Bool)

(assert (=> d!44958 (=> (not res!24976) (not e!28534))))

(assert (=> d!44958 (= res!24976 (not (is-Empty!159 (right!1153 thiss!7629))))))

(assert (=> d!44958 (= (contains!11 (right!1153 thiss!7629) x!21384) lt!9601)))

(declare-fun b!54448 () Bool)

(declare-fun lt!9599 () Bool)

(declare-fun lt!9600 () Bool)

(assert (=> b!54448 (= e!28534 (ite lt!9599 lt!9600 (or (not (bvsgt x!21384 (elem!220 (right!1153 thiss!7629)))) lt!9600)))))

(declare-fun e!28533 () Bool)

(assert (=> b!54448 (= lt!9600 e!28533)))

(declare-fun c!11824 () Bool)

(assert (=> b!54448 (= c!11824 (or lt!9599 (bvsgt x!21384 (elem!220 (right!1153 thiss!7629)))))))

(assert (=> b!54448 (= lt!9599 (bvslt x!21384 (elem!220 (right!1153 thiss!7629))))))

(declare-fun b!54450 () Bool)

(declare-fun res!24977 () Bool)

(assert (=> b!54450 (= e!28533 res!24977)))

(assert (=> b!54450 true))

(assert (=> b!54450 true))

(declare-fun b!54449 () Bool)

(assert (=> b!54449 (= e!28533 (contains!11 (ite lt!9599 (left!1150 (right!1153 thiss!7629)) (right!1153 (right!1153 thiss!7629))) x!21384))))

(assert (= (and d!44958 res!24976) b!54448))

(assert (= (and b!54448 c!11824) b!54449))

(assert (= (and b!54448 (not c!11824)) b!54450))

(assert (=> d!44958 m!58546))

(declare-fun bs!25225 () Bool)

(declare-fun s!1161 () Bool)

(assert (= bs!25225 (and neg-inst!270 s!1161)))

(assert (=> bs!25225 (=> true (or (not (member x!21384 (content!17 (right!1153 thiss!7629)))) (bvslt (elem!220 thiss!7629) x!21384)))))

(declare-fun bs!25226 () Bool)

(declare-fun m!58552 () Bool)

(assert (= bs!25226 m!58552))

(assert (=> bs!25226 s!1161))

(assert (=> d!44958 m!58552))

(declare-fun m!58554 () Bool)

(assert (=> b!54449 m!58554))

(assert (=> b!54423 d!44958))

(declare-fun tp!15351 () Bool)

(declare-fun b!54455 () Bool)

(declare-fun e!28537 () Bool)

(declare-fun tp!15352 () Bool)

(assert (=> b!54455 (= e!28537 (and (inv!977 (left!1150 (left!1150 thiss!7629))) tp!15351 (inv!977 (right!1153 (left!1150 thiss!7629))) tp!15352))))

(assert (=> b!54425 (= tp!15345 (and (inv!977 (left!1150 thiss!7629)) e!28537))))

(assert (= (and b!54425 (is-Node!120 (left!1150 thiss!7629))) b!54455))

(declare-fun m!58556 () Bool)

(assert (=> b!54455 m!58556))

(declare-fun m!58558 () Bool)

(assert (=> b!54455 m!58558))

(assert (=> b!54425 m!58522))

(declare-fun e!28538 () Bool)

(declare-fun tp!15354 () Bool)

(declare-fun tp!15353 () Bool)

(declare-fun b!54456 () Bool)

(assert (=> b!54456 (= e!28538 (and (inv!977 (left!1150 (right!1153 thiss!7629))) tp!15353 (inv!977 (right!1153 (right!1153 thiss!7629))) tp!15354))))

(assert (=> b!54425 (= tp!15346 (and (inv!977 (right!1153 thiss!7629)) e!28538))))

(assert (= (and b!54425 (is-Node!120 (right!1153 thiss!7629))) b!54456))

(declare-fun m!58560 () Bool)

(assert (=> b!54456 m!58560))

(declare-fun m!58562 () Bool)

(assert (=> b!54456 m!58562))

(assert (=> b!54425 m!58524))

(push 1)

(assert (not b!54430))

(assert (not neg-inst!271))

(assert (not b!54431))

(assert (not b!54456))

(assert (not d!44958))

(assert (not b!54434))

(assert (not b!54455))

(assert (not b!54432))

(assert (not b!54433))

(assert (not neg-inst!267))

(assert (not neg-inst!266))

(assert (not b!54449))

(assert (not b!54441))

(assert (not neg-inst!268))

(assert (not neg-inst!269))

(assert (not b!54425))

(assert (not b!54435))

(assert (not neg-inst!270))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!44960 () Bool)

(declare-fun c!11825 () Bool)

(assert (=> d!44960 (= c!11825 (is-Empty!159 (left!1150 (right!1153 thiss!7629))))))

(declare-fun e!28539 () (Set (_ BitVec 32)))

(assert (=> d!44960 (= (content!17 (left!1150 (right!1153 thiss!7629))) e!28539)))

(declare-fun b!54457 () Bool)

(assert (=> b!54457 (= e!28539 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!54458 () Bool)

(assert (=> b!54458 (= e!28539 (union (union (content!17 (left!1150 (left!1150 (right!1153 thiss!7629)))) (insert (elem!220 (left!1150 (right!1153 thiss!7629))) (as emptyset (Set (_ BitVec 32))))) (content!17 (right!1153 (left!1150 (right!1153 thiss!7629))))))))

(assert (= (and d!44960 c!11825) b!54457))

(assert (= (and d!44960 (not c!11825)) b!54458))

(declare-fun m!58564 () Bool)

(assert (=> b!54458 m!58564))

(declare-fun m!58566 () Bool)

(assert (=> b!54458 m!58566))

(declare-fun m!58568 () Bool)

(assert (=> b!54458 m!58568))

(assert (=> neg-inst!269 d!44960))

(declare-fun d!44962 () Bool)

(declare-fun c!11826 () Bool)

(assert (=> d!44962 (= c!11826 (is-Empty!159 (left!1150 thiss!7629)))))

(declare-fun e!28540 () (Set (_ BitVec 32)))

(assert (=> d!44962 (= (content!17 (left!1150 thiss!7629)) e!28540)))

(declare-fun b!54459 () Bool)

(assert (=> b!54459 (= e!28540 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!54460 () Bool)

(assert (=> b!54460 (= e!28540 (union (union (content!17 (left!1150 (left!1150 thiss!7629))) (insert (elem!220 (left!1150 thiss!7629)) (as emptyset (Set (_ BitVec 32))))) (content!17 (right!1153 (left!1150 thiss!7629)))))))

(assert (= (and d!44962 c!11826) b!54459))

(assert (= (and d!44962 (not c!11826)) b!54460))

(assert (=> b!54460 m!58526))

(declare-fun m!58570 () Bool)

(assert (=> b!54460 m!58570))

(assert (=> b!54460 m!58530))

(assert (=> b!54434 d!44962))

(declare-fun d!44964 () Bool)

(declare-fun lt!9604 () Bool)

(assert (=> d!44964 (= lt!9604 (member x!21384 (content!17 (ite lt!9599 (left!1150 (right!1153 thiss!7629)) (right!1153 (right!1153 thiss!7629))))))))

(declare-fun e!28542 () Bool)

(assert (=> d!44964 (= lt!9604 e!28542)))

(declare-fun res!24978 () Bool)

(assert (=> d!44964 (=> (not res!24978) (not e!28542))))

(assert (=> d!44964 (= res!24978 (not (is-Empty!159 (ite lt!9599 (left!1150 (right!1153 thiss!7629)) (right!1153 (right!1153 thiss!7629))))))))

(assert (=> d!44964 (= (contains!11 (ite lt!9599 (left!1150 (right!1153 thiss!7629)) (right!1153 (right!1153 thiss!7629))) x!21384) lt!9604)))

(declare-fun b!54461 () Bool)

(declare-fun lt!9602 () Bool)

(declare-fun lt!9603 () Bool)

(assert (=> b!54461 (= e!28542 (ite lt!9602 lt!9603 (or (not (bvsgt x!21384 (elem!220 (ite lt!9599 (left!1150 (right!1153 thiss!7629)) (right!1153 (right!1153 thiss!7629)))))) lt!9603)))))

(declare-fun e!28541 () Bool)

(assert (=> b!54461 (= lt!9603 e!28541)))

(declare-fun c!11827 () Bool)

(assert (=> b!54461 (= c!11827 (or lt!9602 (bvsgt x!21384 (elem!220 (ite lt!9599 (left!1150 (right!1153 thiss!7629)) (right!1153 (right!1153 thiss!7629)))))))))

(assert (=> b!54461 (= lt!9602 (bvslt x!21384 (elem!220 (ite lt!9599 (left!1150 (right!1153 thiss!7629)) (right!1153 (right!1153 thiss!7629))))))))

(declare-fun b!54463 () Bool)

(declare-fun res!24979 () Bool)

(assert (=> b!54463 (= e!28541 res!24979)))

(assert (=> b!54463 true))

(assert (=> b!54463 true))

(declare-fun b!54462 () Bool)

(assert (=> b!54462 (= e!28541 (contains!11 (ite lt!9602 (left!1150 (ite lt!9599 (left!1150 (right!1153 thiss!7629)) (right!1153 (right!1153 thiss!7629)))) (right!1153 (ite lt!9599 (left!1150 (right!1153 thiss!7629)) (right!1153 (right!1153 thiss!7629))))) x!21384))))

(assert (= (and d!44964 res!24978) b!54461))

(assert (= (and b!54461 c!11827) b!54462))

(assert (= (and b!54461 (not c!11827)) b!54463))

(declare-fun m!58572 () Bool)

(assert (=> d!44964 m!58572))

(declare-fun bs!25227 () Bool)

(declare-fun m!58574 () Bool)

(assert (= bs!25227 m!58574))

(assert (=> bs!25227 s!1161))

(assert (=> d!44964 m!58574))

(declare-fun m!58576 () Bool)

(assert (=> b!54462 m!58576))

(assert (=> b!54449 d!44964))

(declare-fun d!44966 () Bool)

(declare-fun c!11828 () Bool)

(assert (=> d!44966 (= c!11828 (is-Empty!159 (right!1153 thiss!7629)))))

(declare-fun e!28543 () (Set (_ BitVec 32)))

(assert (=> d!44966 (= (content!17 (right!1153 thiss!7629)) e!28543)))

(declare-fun b!54464 () Bool)

(assert (=> b!54464 (= e!28543 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!54465 () Bool)

(assert (=> b!54465 (= e!28543 (union (union (content!17 (left!1150 (right!1153 thiss!7629))) (insert (elem!220 (right!1153 thiss!7629)) (as emptyset (Set (_ BitVec 32))))) (content!17 (right!1153 (right!1153 thiss!7629)))))))

(assert (= (and d!44966 c!11828) b!54464))

(assert (= (and d!44966 (not c!11828)) b!54465))

(assert (=> b!54465 m!58534))

(declare-fun m!58578 () Bool)

(assert (=> b!54465 m!58578))

(assert (=> b!54465 m!58538))

(assert (=> neg-inst!270 d!44966))

(assert (=> d!44958 d!44966))

(assert (=> b!54441 d!44962))

(assert (=> b!54441 d!44966))

(assert (=> b!54432 d!44960))

(declare-fun b!54466 () Bool)

(declare-fun m!58580 () Bool)

(assert (=> b!54466 m!58580))

(declare-fun inst!284 () Bool)

(declare-fun x!21681 () (_ BitVec 32))

(assert (=> b!54466 (= inst!284 (=> true (or (not (member x!21681 (content!17 (left!1150 (left!1150 (left!1150 thiss!7629)))))) (bvslt x!21681 (elem!220 (left!1150 (left!1150 thiss!7629)))))))))

(declare-fun m!58582 () Bool)

(assert (=> b!54466 m!58582))

(declare-fun bs!25228 () Bool)

(assert (= bs!25228 (and b!54466 neg-inst!267)))

(assert (=> (and bs!25228 (= (content!17 (left!1150 (left!1150 (left!1150 thiss!7629)))) (content!17 (left!1150 (left!1150 thiss!7629)))) (= (elem!220 (left!1150 (left!1150 thiss!7629))) (elem!220 (left!1150 thiss!7629)))) (= inst!284 true)))

(declare-fun bs!25229 () Bool)

(assert (= bs!25229 (and b!54466 b!54434)))

(assert (=> (and bs!25229 (= (content!17 (left!1150 (left!1150 (left!1150 thiss!7629)))) (content!17 (left!1150 thiss!7629))) (= (elem!220 (left!1150 (left!1150 thiss!7629))) (elem!220 thiss!7629))) (= inst!284 inst!282)))

(declare-fun bs!25230 () Bool)

(assert (= bs!25230 (and b!54466 b!54432)))

(assert (=> (and bs!25230 (= (content!17 (left!1150 (left!1150 (left!1150 thiss!7629)))) (content!17 (left!1150 (right!1153 thiss!7629)))) (= (elem!220 (left!1150 (left!1150 thiss!7629))) (elem!220 (right!1153 thiss!7629)))) (= inst!284 inst!280)))

(declare-fun bs!25231 () Bool)

(assert (= bs!25231 (and b!54466 neg-inst!271)))

(assert (=> (and bs!25231 (= (content!17 (left!1150 (left!1150 (left!1150 thiss!7629)))) (content!17 (left!1150 thiss!7629))) (= (elem!220 (left!1150 (left!1150 thiss!7629))) (elem!220 thiss!7629))) (= inst!284 true)))

(declare-fun bs!25232 () Bool)

(assert (= bs!25232 (and b!54466 neg-inst!269)))

(assert (=> (and bs!25232 (= (content!17 (left!1150 (left!1150 (left!1150 thiss!7629)))) (content!17 (left!1150 (right!1153 thiss!7629)))) (= (elem!220 (left!1150 (left!1150 thiss!7629))) (elem!220 (right!1153 thiss!7629)))) (= inst!284 true)))

(declare-fun bs!25233 () Bool)

(assert (= bs!25233 (and b!54466 b!54430)))

(assert (=> (and bs!25233 (= (content!17 (left!1150 (left!1150 (left!1150 thiss!7629)))) (content!17 (left!1150 (left!1150 thiss!7629)))) (= (elem!220 (left!1150 (left!1150 thiss!7629))) (elem!220 (left!1150 thiss!7629)))) (= inst!284 inst!278)))

(declare-fun b!54467 () Bool)

(declare-fun m!58584 () Bool)

(assert (=> b!54467 m!58584))

(declare-fun inst!285 () Bool)

(declare-fun x!21682 () (_ BitVec 32))

(assert (=> b!54467 (= inst!285 (=> true (or (not (member x!21682 (content!17 (right!1153 (left!1150 (left!1150 thiss!7629)))))) (bvslt (elem!220 (left!1150 (left!1150 thiss!7629))) x!21682))))))

(declare-fun m!58586 () Bool)

(assert (=> b!54467 m!58586))

(declare-fun bs!25234 () Bool)

(assert (= bs!25234 (and b!54467 b!54435)))

(assert (=> (and bs!25234 (= (content!17 (right!1153 (left!1150 (left!1150 thiss!7629)))) (content!17 (right!1153 thiss!7629))) (= (elem!220 (left!1150 (left!1150 thiss!7629))) (elem!220 thiss!7629))) (= inst!285 inst!283)))

(declare-fun bs!25235 () Bool)

(assert (= bs!25235 (and b!54467 neg-inst!270)))

(assert (=> (and bs!25235 (= (content!17 (right!1153 (left!1150 (left!1150 thiss!7629)))) (content!17 (right!1153 thiss!7629))) (= (elem!220 (left!1150 (left!1150 thiss!7629))) (elem!220 thiss!7629))) (= inst!285 true)))

(declare-fun bs!25236 () Bool)

(assert (= bs!25236 (and b!54467 b!54431)))

(assert (=> (and bs!25236 (= (content!17 (right!1153 (left!1150 (left!1150 thiss!7629)))) (content!17 (right!1153 (left!1150 thiss!7629)))) (= (elem!220 (left!1150 (left!1150 thiss!7629))) (elem!220 (left!1150 thiss!7629)))) (= inst!285 inst!279)))

(declare-fun bs!25237 () Bool)

(assert (= bs!25237 (and b!54467 b!54433)))

(assert (=> (and bs!25237 (= (content!17 (right!1153 (left!1150 (left!1150 thiss!7629)))) (content!17 (right!1153 (right!1153 thiss!7629)))) (= (elem!220 (left!1150 (left!1150 thiss!7629))) (elem!220 (right!1153 thiss!7629)))) (= inst!285 inst!281)))

(declare-fun bs!25238 () Bool)

(assert (= bs!25238 (and b!54467 neg-inst!268)))

(assert (=> (and bs!25238 (= (content!17 (right!1153 (left!1150 (left!1150 thiss!7629)))) (content!17 (right!1153 (right!1153 thiss!7629)))) (= (elem!220 (left!1150 (left!1150 thiss!7629))) (elem!220 (right!1153 thiss!7629)))) (= inst!285 true)))

(declare-fun bs!25239 () Bool)

(assert (= bs!25239 (and b!54467 neg-inst!266)))

(assert (=> (and bs!25239 (= (content!17 (right!1153 (left!1150 (left!1150 thiss!7629)))) (content!17 (right!1153 (left!1150 thiss!7629)))) (= (elem!220 (left!1150 (left!1150 thiss!7629))) (elem!220 (left!1150 thiss!7629)))) (= inst!285 true)))

(declare-fun bs!25240 () Bool)

(declare-fun neg-inst!273 () Bool)

(assert (= bs!25240 neg-inst!273))

(assert (=> bs!25240 m!58580))

(declare-fun bs!25241 () Bool)

(declare-fun s!1163 () Bool)

(assert (= bs!25241 (and neg-inst!273 s!1163)))

(assert (=> bs!25241 (=> true (or (not (member x!21681 (content!17 (left!1150 (left!1150 (left!1150 thiss!7629)))))) (bvslt x!21681 (elem!220 (left!1150 (left!1150 thiss!7629))))))))

(assert (=> m!58582 s!1163))

(declare-fun bs!25242 () Bool)

(assert (= bs!25242 (and neg-inst!273 neg-inst!267)))

(assert (=> (and bs!25242 (= (content!17 (left!1150 (left!1150 (left!1150 thiss!7629)))) (content!17 (left!1150 (left!1150 thiss!7629)))) (= (elem!220 (left!1150 (left!1150 thiss!7629))) (elem!220 (left!1150 thiss!7629)))) (= true true)))

(declare-fun bs!25243 () Bool)

(assert (= bs!25243 (and neg-inst!273 b!54466)))

(assert (=> bs!25243 (= true inst!284)))

(declare-fun bs!25244 () Bool)

(assert (= bs!25244 (and neg-inst!273 b!54434)))

(assert (=> (and bs!25244 (= (content!17 (left!1150 (left!1150 (left!1150 thiss!7629)))) (content!17 (left!1150 thiss!7629))) (= (elem!220 (left!1150 (left!1150 thiss!7629))) (elem!220 thiss!7629))) (= true inst!282)))

(declare-fun bs!25245 () Bool)

(assert (= bs!25245 (and neg-inst!273 b!54432)))

(assert (=> (and bs!25245 (= (content!17 (left!1150 (left!1150 (left!1150 thiss!7629)))) (content!17 (left!1150 (right!1153 thiss!7629)))) (= (elem!220 (left!1150 (left!1150 thiss!7629))) (elem!220 (right!1153 thiss!7629)))) (= true inst!280)))

(declare-fun bs!25246 () Bool)

(assert (= bs!25246 (and neg-inst!273 neg-inst!271)))

(assert (=> (and bs!25246 (= (content!17 (left!1150 (left!1150 (left!1150 thiss!7629)))) (content!17 (left!1150 thiss!7629))) (= (elem!220 (left!1150 (left!1150 thiss!7629))) (elem!220 thiss!7629))) (= true true)))

(declare-fun bs!25247 () Bool)

(assert (= bs!25247 (and neg-inst!273 neg-inst!269)))

(assert (=> (and bs!25247 (= (content!17 (left!1150 (left!1150 (left!1150 thiss!7629)))) (content!17 (left!1150 (right!1153 thiss!7629)))) (= (elem!220 (left!1150 (left!1150 thiss!7629))) (elem!220 (right!1153 thiss!7629)))) (= true true)))

(declare-fun bs!25248 () Bool)

(assert (= bs!25248 (and neg-inst!273 b!54430)))

(assert (=> (and bs!25248 (= (content!17 (left!1150 (left!1150 (left!1150 thiss!7629)))) (content!17 (left!1150 (left!1150 thiss!7629)))) (= (elem!220 (left!1150 (left!1150 thiss!7629))) (elem!220 (left!1150 thiss!7629)))) (= true inst!278)))

(declare-fun bs!25249 () Bool)

(declare-fun neg-inst!272 () Bool)

(assert (= bs!25249 neg-inst!272))

(assert (=> bs!25249 m!58584))

(declare-fun bs!25250 () Bool)

(declare-fun s!1165 () Bool)

(assert (= bs!25250 (and neg-inst!272 s!1165)))

(assert (=> bs!25250 (=> true (or (not (member x!21682 (content!17 (right!1153 (left!1150 (left!1150 thiss!7629)))))) (bvslt (elem!220 (left!1150 (left!1150 thiss!7629))) x!21682)))))

(assert (=> m!58586 s!1165))

(declare-fun bs!25251 () Bool)

(assert (= bs!25251 (and neg-inst!272 b!54435)))

(assert (=> (and bs!25251 (= (content!17 (right!1153 (left!1150 (left!1150 thiss!7629)))) (content!17 (right!1153 thiss!7629))) (= (elem!220 (left!1150 (left!1150 thiss!7629))) (elem!220 thiss!7629))) (= true inst!283)))

(declare-fun bs!25252 () Bool)

(assert (= bs!25252 (and neg-inst!272 neg-inst!270)))

(assert (=> (and bs!25252 (= (content!17 (right!1153 (left!1150 (left!1150 thiss!7629)))) (content!17 (right!1153 thiss!7629))) (= (elem!220 (left!1150 (left!1150 thiss!7629))) (elem!220 thiss!7629))) (= true true)))

(declare-fun bs!25253 () Bool)

(assert (= bs!25253 (and neg-inst!272 b!54431)))

(assert (=> (and bs!25253 (= (content!17 (right!1153 (left!1150 (left!1150 thiss!7629)))) (content!17 (right!1153 (left!1150 thiss!7629)))) (= (elem!220 (left!1150 (left!1150 thiss!7629))) (elem!220 (left!1150 thiss!7629)))) (= true inst!279)))

(declare-fun bs!25254 () Bool)

(assert (= bs!25254 (and neg-inst!272 b!54433)))

(assert (=> (and bs!25254 (= (content!17 (right!1153 (left!1150 (left!1150 thiss!7629)))) (content!17 (right!1153 (right!1153 thiss!7629)))) (= (elem!220 (left!1150 (left!1150 thiss!7629))) (elem!220 (right!1153 thiss!7629)))) (= true inst!281)))

(declare-fun bs!25255 () Bool)

(assert (= bs!25255 (and neg-inst!272 b!54467)))

(assert (=> bs!25255 (= true inst!285)))

(declare-fun bs!25256 () Bool)

(assert (= bs!25256 (and neg-inst!272 neg-inst!268)))

(assert (=> (and bs!25256 (= (content!17 (right!1153 (left!1150 (left!1150 thiss!7629)))) (content!17 (right!1153 (right!1153 thiss!7629)))) (= (elem!220 (left!1150 (left!1150 thiss!7629))) (elem!220 (right!1153 thiss!7629)))) (= true true)))

(declare-fun bs!25257 () Bool)

(assert (= bs!25257 (and neg-inst!272 neg-inst!266)))

(assert (=> (and bs!25257 (= (content!17 (right!1153 (left!1150 (left!1150 thiss!7629)))) (content!17 (right!1153 (left!1150 thiss!7629)))) (= (elem!220 (left!1150 (left!1150 thiss!7629))) (elem!220 (left!1150 thiss!7629)))) (= true true)))

(declare-fun d!44968 () Bool)

(declare-fun res!24981 () Bool)

(declare-fun e!28544 () Bool)

(assert (=> d!44968 (=> res!24981 e!28544)))

(assert (=> d!44968 (= res!24981 (not (is-Node!120 (left!1150 (left!1150 thiss!7629)))))))

(assert (=> d!44968 (= (inv!977 (left!1150 (left!1150 thiss!7629))) e!28544)))

(declare-fun e!28545 () Bool)

(assert (=> b!54466 (= e!28544 e!28545)))

(declare-fun res!24980 () Bool)

(assert (=> b!54466 (=> (not res!24980) (not e!28545))))

(assert (=> b!54466 (= res!24980 inst!284)))

(assert (=> b!54467 (= e!28545 inst!285)))

(assert (= (and d!44968 (not res!24981)) b!54466))

(assert (= neg-inst!273 inst!284))

(assert (= (and b!54466 res!24980) b!54467))

(assert (= neg-inst!272 inst!285))

(assert (=> b!54455 d!44968))

(declare-fun b!54468 () Bool)

(declare-fun m!58588 () Bool)

(assert (=> b!54468 m!58588))

(declare-fun inst!286 () Bool)

(declare-fun x!21683 () (_ BitVec 32))

(assert (=> b!54468 (= inst!286 (=> true (or (not (member x!21683 (content!17 (left!1150 (right!1153 (left!1150 thiss!7629)))))) (bvslt x!21683 (elem!220 (right!1153 (left!1150 thiss!7629)))))))))

(declare-fun m!58590 () Bool)

(assert (=> b!54468 m!58590))

(declare-fun bs!25258 () Bool)

(assert (= bs!25258 (and b!54468 neg-inst!273)))

(assert (=> (and bs!25258 (= (content!17 (left!1150 (right!1153 (left!1150 thiss!7629)))) (content!17 (left!1150 (left!1150 (left!1150 thiss!7629))))) (= (elem!220 (right!1153 (left!1150 thiss!7629))) (elem!220 (left!1150 (left!1150 thiss!7629))))) (= inst!286 true)))

(declare-fun bs!25259 () Bool)

(assert (= bs!25259 (and b!54468 neg-inst!267)))

(assert (=> (and bs!25259 (= (content!17 (left!1150 (right!1153 (left!1150 thiss!7629)))) (content!17 (left!1150 (left!1150 thiss!7629)))) (= (elem!220 (right!1153 (left!1150 thiss!7629))) (elem!220 (left!1150 thiss!7629)))) (= inst!286 true)))

(declare-fun bs!25260 () Bool)

(assert (= bs!25260 (and b!54468 b!54466)))

(assert (=> (and bs!25260 (= (content!17 (left!1150 (right!1153 (left!1150 thiss!7629)))) (content!17 (left!1150 (left!1150 (left!1150 thiss!7629))))) (= (elem!220 (right!1153 (left!1150 thiss!7629))) (elem!220 (left!1150 (left!1150 thiss!7629))))) (= inst!286 inst!284)))

(declare-fun bs!25261 () Bool)

(assert (= bs!25261 (and b!54468 b!54434)))

(assert (=> (and bs!25261 (= (content!17 (left!1150 (right!1153 (left!1150 thiss!7629)))) (content!17 (left!1150 thiss!7629))) (= (elem!220 (right!1153 (left!1150 thiss!7629))) (elem!220 thiss!7629))) (= inst!286 inst!282)))

(declare-fun bs!25262 () Bool)

(assert (= bs!25262 (and b!54468 b!54432)))

(assert (=> (and bs!25262 (= (content!17 (left!1150 (right!1153 (left!1150 thiss!7629)))) (content!17 (left!1150 (right!1153 thiss!7629)))) (= (elem!220 (right!1153 (left!1150 thiss!7629))) (elem!220 (right!1153 thiss!7629)))) (= inst!286 inst!280)))

(declare-fun bs!25263 () Bool)

(assert (= bs!25263 (and b!54468 neg-inst!271)))

(assert (=> (and bs!25263 (= (content!17 (left!1150 (right!1153 (left!1150 thiss!7629)))) (content!17 (left!1150 thiss!7629))) (= (elem!220 (right!1153 (left!1150 thiss!7629))) (elem!220 thiss!7629))) (= inst!286 true)))

(declare-fun bs!25264 () Bool)

(assert (= bs!25264 (and b!54468 neg-inst!269)))

(assert (=> (and bs!25264 (= (content!17 (left!1150 (right!1153 (left!1150 thiss!7629)))) (content!17 (left!1150 (right!1153 thiss!7629)))) (= (elem!220 (right!1153 (left!1150 thiss!7629))) (elem!220 (right!1153 thiss!7629)))) (= inst!286 true)))

(declare-fun bs!25265 () Bool)

(assert (= bs!25265 (and b!54468 b!54430)))

(assert (=> (and bs!25265 (= (content!17 (left!1150 (right!1153 (left!1150 thiss!7629)))) (content!17 (left!1150 (left!1150 thiss!7629)))) (= (elem!220 (right!1153 (left!1150 thiss!7629))) (elem!220 (left!1150 thiss!7629)))) (= inst!286 inst!278)))

(declare-fun b!54469 () Bool)

(declare-fun m!58592 () Bool)

(assert (=> b!54469 m!58592))

(declare-fun inst!287 () Bool)

(declare-fun x!21684 () (_ BitVec 32))

(assert (=> b!54469 (= inst!287 (=> true (or (not (member x!21684 (content!17 (right!1153 (right!1153 (left!1150 thiss!7629)))))) (bvslt (elem!220 (right!1153 (left!1150 thiss!7629))) x!21684))))))

(declare-fun m!58594 () Bool)

(assert (=> b!54469 m!58594))

(declare-fun bs!25266 () Bool)

(assert (= bs!25266 (and b!54469 b!54435)))

(assert (=> (and bs!25266 (= (content!17 (right!1153 (right!1153 (left!1150 thiss!7629)))) (content!17 (right!1153 thiss!7629))) (= (elem!220 (right!1153 (left!1150 thiss!7629))) (elem!220 thiss!7629))) (= inst!287 inst!283)))

(declare-fun bs!25267 () Bool)

(assert (= bs!25267 (and b!54469 neg-inst!270)))

(assert (=> (and bs!25267 (= (content!17 (right!1153 (right!1153 (left!1150 thiss!7629)))) (content!17 (right!1153 thiss!7629))) (= (elem!220 (right!1153 (left!1150 thiss!7629))) (elem!220 thiss!7629))) (= inst!287 true)))

(declare-fun bs!25268 () Bool)

(assert (= bs!25268 (and b!54469 b!54431)))

(assert (=> (and bs!25268 (= (content!17 (right!1153 (right!1153 (left!1150 thiss!7629)))) (content!17 (right!1153 (left!1150 thiss!7629)))) (= (elem!220 (right!1153 (left!1150 thiss!7629))) (elem!220 (left!1150 thiss!7629)))) (= inst!287 inst!279)))

(declare-fun bs!25269 () Bool)

(assert (= bs!25269 (and b!54469 b!54433)))

(assert (=> (and bs!25269 (= (content!17 (right!1153 (right!1153 (left!1150 thiss!7629)))) (content!17 (right!1153 (right!1153 thiss!7629)))) (= (elem!220 (right!1153 (left!1150 thiss!7629))) (elem!220 (right!1153 thiss!7629)))) (= inst!287 inst!281)))

(declare-fun bs!25270 () Bool)

(assert (= bs!25270 (and b!54469 b!54467)))

(assert (=> (and bs!25270 (= (content!17 (right!1153 (right!1153 (left!1150 thiss!7629)))) (content!17 (right!1153 (left!1150 (left!1150 thiss!7629))))) (= (elem!220 (right!1153 (left!1150 thiss!7629))) (elem!220 (left!1150 (left!1150 thiss!7629))))) (= inst!287 inst!285)))

(declare-fun bs!25271 () Bool)

(assert (= bs!25271 (and b!54469 neg-inst!268)))

(assert (=> (and bs!25271 (= (content!17 (right!1153 (right!1153 (left!1150 thiss!7629)))) (content!17 (right!1153 (right!1153 thiss!7629)))) (= (elem!220 (right!1153 (left!1150 thiss!7629))) (elem!220 (right!1153 thiss!7629)))) (= inst!287 true)))

(declare-fun bs!25272 () Bool)

(assert (= bs!25272 (and b!54469 neg-inst!272)))

(assert (=> (and bs!25272 (= (content!17 (right!1153 (right!1153 (left!1150 thiss!7629)))) (content!17 (right!1153 (left!1150 (left!1150 thiss!7629))))) (= (elem!220 (right!1153 (left!1150 thiss!7629))) (elem!220 (left!1150 (left!1150 thiss!7629))))) (= inst!287 true)))

(declare-fun bs!25273 () Bool)

(assert (= bs!25273 (and b!54469 neg-inst!266)))

(assert (=> (and bs!25273 (= (content!17 (right!1153 (right!1153 (left!1150 thiss!7629)))) (content!17 (right!1153 (left!1150 thiss!7629)))) (= (elem!220 (right!1153 (left!1150 thiss!7629))) (elem!220 (left!1150 thiss!7629)))) (= inst!287 true)))

(declare-fun bs!25274 () Bool)

(declare-fun neg-inst!275 () Bool)

(assert (= bs!25274 neg-inst!275))

(assert (=> bs!25274 m!58588))

(declare-fun bs!25275 () Bool)

(declare-fun s!1167 () Bool)

(assert (= bs!25275 (and neg-inst!275 s!1167)))

(assert (=> bs!25275 (=> true (or (not (member x!21683 (content!17 (left!1150 (right!1153 (left!1150 thiss!7629)))))) (bvslt x!21683 (elem!220 (right!1153 (left!1150 thiss!7629))))))))

(assert (=> m!58590 s!1167))

(declare-fun bs!25276 () Bool)

(assert (= bs!25276 (and neg-inst!275 b!54468)))

(assert (=> bs!25276 (= true inst!286)))

(declare-fun bs!25277 () Bool)

(assert (= bs!25277 (and neg-inst!275 neg-inst!273)))

(assert (=> (and bs!25277 (= (content!17 (left!1150 (right!1153 (left!1150 thiss!7629)))) (content!17 (left!1150 (left!1150 (left!1150 thiss!7629))))) (= (elem!220 (right!1153 (left!1150 thiss!7629))) (elem!220 (left!1150 (left!1150 thiss!7629))))) (= true true)))

(declare-fun bs!25278 () Bool)

(assert (= bs!25278 (and neg-inst!275 neg-inst!267)))

(assert (=> (and bs!25278 (= (content!17 (left!1150 (right!1153 (left!1150 thiss!7629)))) (content!17 (left!1150 (left!1150 thiss!7629)))) (= (elem!220 (right!1153 (left!1150 thiss!7629))) (elem!220 (left!1150 thiss!7629)))) (= true true)))

(declare-fun bs!25279 () Bool)

(assert (= bs!25279 (and neg-inst!275 b!54466)))

(assert (=> (and bs!25279 (= (content!17 (left!1150 (right!1153 (left!1150 thiss!7629)))) (content!17 (left!1150 (left!1150 (left!1150 thiss!7629))))) (= (elem!220 (right!1153 (left!1150 thiss!7629))) (elem!220 (left!1150 (left!1150 thiss!7629))))) (= true inst!284)))

(declare-fun bs!25280 () Bool)

(assert (= bs!25280 (and neg-inst!275 b!54434)))

(assert (=> (and bs!25280 (= (content!17 (left!1150 (right!1153 (left!1150 thiss!7629)))) (content!17 (left!1150 thiss!7629))) (= (elem!220 (right!1153 (left!1150 thiss!7629))) (elem!220 thiss!7629))) (= true inst!282)))

(declare-fun bs!25281 () Bool)

(assert (= bs!25281 (and neg-inst!275 b!54432)))

(assert (=> (and bs!25281 (= (content!17 (left!1150 (right!1153 (left!1150 thiss!7629)))) (content!17 (left!1150 (right!1153 thiss!7629)))) (= (elem!220 (right!1153 (left!1150 thiss!7629))) (elem!220 (right!1153 thiss!7629)))) (= true inst!280)))

(declare-fun bs!25282 () Bool)

(assert (= bs!25282 (and neg-inst!275 neg-inst!271)))

(assert (=> (and bs!25282 (= (content!17 (left!1150 (right!1153 (left!1150 thiss!7629)))) (content!17 (left!1150 thiss!7629))) (= (elem!220 (right!1153 (left!1150 thiss!7629))) (elem!220 thiss!7629))) (= true true)))

(declare-fun bs!25283 () Bool)

(assert (= bs!25283 (and neg-inst!275 neg-inst!269)))

(assert (=> (and bs!25283 (= (content!17 (left!1150 (right!1153 (left!1150 thiss!7629)))) (content!17 (left!1150 (right!1153 thiss!7629)))) (= (elem!220 (right!1153 (left!1150 thiss!7629))) (elem!220 (right!1153 thiss!7629)))) (= true true)))

(declare-fun bs!25284 () Bool)

(assert (= bs!25284 (and neg-inst!275 b!54430)))

(assert (=> (and bs!25284 (= (content!17 (left!1150 (right!1153 (left!1150 thiss!7629)))) (content!17 (left!1150 (left!1150 thiss!7629)))) (= (elem!220 (right!1153 (left!1150 thiss!7629))) (elem!220 (left!1150 thiss!7629)))) (= true inst!278)))

(declare-fun bs!25285 () Bool)

(declare-fun neg-inst!274 () Bool)

(assert (= bs!25285 neg-inst!274))

(assert (=> bs!25285 m!58592))

(declare-fun bs!25286 () Bool)

(declare-fun s!1169 () Bool)

(assert (= bs!25286 (and neg-inst!274 s!1169)))

(assert (=> bs!25286 (=> true (or (not (member x!21684 (content!17 (right!1153 (right!1153 (left!1150 thiss!7629)))))) (bvslt (elem!220 (right!1153 (left!1150 thiss!7629))) x!21684)))))

(assert (=> m!58594 s!1169))

(declare-fun bs!25287 () Bool)

(assert (= bs!25287 (and neg-inst!274 b!54435)))

(assert (=> (and bs!25287 (= (content!17 (right!1153 (right!1153 (left!1150 thiss!7629)))) (content!17 (right!1153 thiss!7629))) (= (elem!220 (right!1153 (left!1150 thiss!7629))) (elem!220 thiss!7629))) (= true inst!283)))

(declare-fun bs!25288 () Bool)

(assert (= bs!25288 (and neg-inst!274 neg-inst!270)))

(assert (=> (and bs!25288 (= (content!17 (right!1153 (right!1153 (left!1150 thiss!7629)))) (content!17 (right!1153 thiss!7629))) (= (elem!220 (right!1153 (left!1150 thiss!7629))) (elem!220 thiss!7629))) (= true true)))

(declare-fun bs!25289 () Bool)

(assert (= bs!25289 (and neg-inst!274 b!54431)))

(assert (=> (and bs!25289 (= (content!17 (right!1153 (right!1153 (left!1150 thiss!7629)))) (content!17 (right!1153 (left!1150 thiss!7629)))) (= (elem!220 (right!1153 (left!1150 thiss!7629))) (elem!220 (left!1150 thiss!7629)))) (= true inst!279)))

(declare-fun bs!25290 () Bool)

(assert (= bs!25290 (and neg-inst!274 b!54433)))

(assert (=> (and bs!25290 (= (content!17 (right!1153 (right!1153 (left!1150 thiss!7629)))) (content!17 (right!1153 (right!1153 thiss!7629)))) (= (elem!220 (right!1153 (left!1150 thiss!7629))) (elem!220 (right!1153 thiss!7629)))) (= true inst!281)))

(declare-fun bs!25291 () Bool)

(assert (= bs!25291 (and neg-inst!274 b!54469)))

(assert (=> bs!25291 (= true inst!287)))

(declare-fun bs!25292 () Bool)

(assert (= bs!25292 (and neg-inst!274 b!54467)))

(assert (=> (and bs!25292 (= (content!17 (right!1153 (right!1153 (left!1150 thiss!7629)))) (content!17 (right!1153 (left!1150 (left!1150 thiss!7629))))) (= (elem!220 (right!1153 (left!1150 thiss!7629))) (elem!220 (left!1150 (left!1150 thiss!7629))))) (= true inst!285)))

(declare-fun bs!25293 () Bool)

(assert (= bs!25293 (and neg-inst!274 neg-inst!268)))

(assert (=> (and bs!25293 (= (content!17 (right!1153 (right!1153 (left!1150 thiss!7629)))) (content!17 (right!1153 (right!1153 thiss!7629)))) (= (elem!220 (right!1153 (left!1150 thiss!7629))) (elem!220 (right!1153 thiss!7629)))) (= true true)))

(declare-fun bs!25294 () Bool)

(assert (= bs!25294 (and neg-inst!274 neg-inst!272)))

(assert (=> (and bs!25294 (= (content!17 (right!1153 (right!1153 (left!1150 thiss!7629)))) (content!17 (right!1153 (left!1150 (left!1150 thiss!7629))))) (= (elem!220 (right!1153 (left!1150 thiss!7629))) (elem!220 (left!1150 (left!1150 thiss!7629))))) (= true true)))

(declare-fun bs!25295 () Bool)

(assert (= bs!25295 (and neg-inst!274 neg-inst!266)))

(assert (=> (and bs!25295 (= (content!17 (right!1153 (right!1153 (left!1150 thiss!7629)))) (content!17 (right!1153 (left!1150 thiss!7629)))) (= (elem!220 (right!1153 (left!1150 thiss!7629))) (elem!220 (left!1150 thiss!7629)))) (= true true)))

(declare-fun d!44970 () Bool)

(declare-fun res!24983 () Bool)

(declare-fun e!28546 () Bool)

(assert (=> d!44970 (=> res!24983 e!28546)))

(assert (=> d!44970 (= res!24983 (not (is-Node!120 (right!1153 (left!1150 thiss!7629)))))))

(assert (=> d!44970 (= (inv!977 (right!1153 (left!1150 thiss!7629))) e!28546)))

(declare-fun e!28547 () Bool)

(assert (=> b!54468 (= e!28546 e!28547)))

(declare-fun res!24982 () Bool)

(assert (=> b!54468 (=> (not res!24982) (not e!28547))))

(assert (=> b!54468 (= res!24982 inst!286)))

(assert (=> b!54469 (= e!28547 inst!287)))

(assert (= (and d!44970 (not res!24983)) b!54468))

(assert (= neg-inst!275 inst!286))

(assert (= (and b!54468 res!24982) b!54469))

(assert (= neg-inst!274 inst!287))

(assert (=> b!54455 d!44970))

(assert (=> b!54435 d!44966))

(declare-fun d!44972 () Bool)

(declare-fun c!11829 () Bool)

(assert (=> d!44972 (= c!11829 (is-Empty!159 (right!1153 (left!1150 thiss!7629))))))

(declare-fun e!28548 () (Set (_ BitVec 32)))

(assert (=> d!44972 (= (content!17 (right!1153 (left!1150 thiss!7629))) e!28548)))

(declare-fun b!54470 () Bool)

(assert (=> b!54470 (= e!28548 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!54471 () Bool)

(assert (=> b!54471 (= e!28548 (union (union (content!17 (left!1150 (right!1153 (left!1150 thiss!7629)))) (insert (elem!220 (right!1153 (left!1150 thiss!7629))) (as emptyset (Set (_ BitVec 32))))) (content!17 (right!1153 (right!1153 (left!1150 thiss!7629))))))))

(assert (= (and d!44972 c!11829) b!54470))

(assert (= (and d!44972 (not c!11829)) b!54471))

(assert (=> b!54471 m!58588))

(declare-fun m!58596 () Bool)

(assert (=> b!54471 m!58596))

(assert (=> b!54471 m!58592))

(assert (=> neg-inst!266 d!44972))

(declare-fun d!44974 () Bool)

(declare-fun c!11830 () Bool)

(assert (=> d!44974 (= c!11830 (is-Empty!159 (right!1153 (right!1153 thiss!7629))))))

(declare-fun e!28549 () (Set (_ BitVec 32)))

(assert (=> d!44974 (= (content!17 (right!1153 (right!1153 thiss!7629))) e!28549)))

(declare-fun b!54472 () Bool)

(assert (=> b!54472 (= e!28549 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!54473 () Bool)

(assert (=> b!54473 (= e!28549 (union (union (content!17 (left!1150 (right!1153 (right!1153 thiss!7629)))) (insert (elem!220 (right!1153 (right!1153 thiss!7629))) (as emptyset (Set (_ BitVec 32))))) (content!17 (right!1153 (right!1153 (right!1153 thiss!7629))))))))

(assert (= (and d!44974 c!11830) b!54472))

(assert (= (and d!44974 (not c!11830)) b!54473))

(declare-fun m!58598 () Bool)

(assert (=> b!54473 m!58598))

(declare-fun m!58600 () Bool)

(assert (=> b!54473 m!58600))

(declare-fun m!58602 () Bool)

(assert (=> b!54473 m!58602))

(assert (=> b!54433 d!44974))

(declare-fun d!44976 () Bool)

(declare-fun c!11831 () Bool)

(assert (=> d!44976 (= c!11831 (is-Empty!159 (left!1150 (left!1150 thiss!7629))))))

(declare-fun e!28550 () (Set (_ BitVec 32)))

(assert (=> d!44976 (= (content!17 (left!1150 (left!1150 thiss!7629))) e!28550)))

(declare-fun b!54474 () Bool)

(assert (=> b!54474 (= e!28550 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!54475 () Bool)

(assert (=> b!54475 (= e!28550 (union (union (content!17 (left!1150 (left!1150 (left!1150 thiss!7629)))) (insert (elem!220 (left!1150 (left!1150 thiss!7629))) (as emptyset (Set (_ BitVec 32))))) (content!17 (right!1153 (left!1150 (left!1150 thiss!7629))))))))

(assert (= (and d!44976 c!11831) b!54474))

(assert (= (and d!44976 (not c!11831)) b!54475))

(assert (=> b!54475 m!58580))

(declare-fun m!58604 () Bool)

(assert (=> b!54475 m!58604))

(assert (=> b!54475 m!58584))

(assert (=> b!54430 d!44976))

(assert (=> neg-inst!268 d!44974))

(assert (=> b!54431 d!44972))

(assert (=> neg-inst!271 d!44962))

(assert (=> neg-inst!267 d!44976))

(declare-fun b!54476 () Bool)

(assert (=> b!54476 m!58564))

(declare-fun inst!288 () Bool)

(declare-fun x!21685 () (_ BitVec 32))

(assert (=> b!54476 (= inst!288 (=> true (or (not (member x!21685 (content!17 (left!1150 (left!1150 (right!1153 thiss!7629)))))) (bvslt x!21685 (elem!220 (left!1150 (right!1153 thiss!7629)))))))))

(declare-fun m!58606 () Bool)

(assert (=> b!54476 m!58606))

(declare-fun bs!25296 () Bool)

(assert (= bs!25296 (and b!54476 b!54468)))

(assert (=> (and bs!25296 (= (content!17 (left!1150 (left!1150 (right!1153 thiss!7629)))) (content!17 (left!1150 (right!1153 (left!1150 thiss!7629))))) (= (elem!220 (left!1150 (right!1153 thiss!7629))) (elem!220 (right!1153 (left!1150 thiss!7629))))) (= inst!288 inst!286)))

(declare-fun bs!25297 () Bool)

(assert (= bs!25297 (and b!54476 neg-inst!273)))

(assert (=> (and bs!25297 (= (content!17 (left!1150 (left!1150 (right!1153 thiss!7629)))) (content!17 (left!1150 (left!1150 (left!1150 thiss!7629))))) (= (elem!220 (left!1150 (right!1153 thiss!7629))) (elem!220 (left!1150 (left!1150 thiss!7629))))) (= inst!288 true)))

(declare-fun bs!25298 () Bool)

(assert (= bs!25298 (and b!54476 neg-inst!267)))

(assert (=> (and bs!25298 (= (content!17 (left!1150 (left!1150 (right!1153 thiss!7629)))) (content!17 (left!1150 (left!1150 thiss!7629)))) (= (elem!220 (left!1150 (right!1153 thiss!7629))) (elem!220 (left!1150 thiss!7629)))) (= inst!288 true)))

(declare-fun bs!25299 () Bool)

(assert (= bs!25299 (and b!54476 b!54466)))

(assert (=> (and bs!25299 (= (content!17 (left!1150 (left!1150 (right!1153 thiss!7629)))) (content!17 (left!1150 (left!1150 (left!1150 thiss!7629))))) (= (elem!220 (left!1150 (right!1153 thiss!7629))) (elem!220 (left!1150 (left!1150 thiss!7629))))) (= inst!288 inst!284)))

(declare-fun bs!25300 () Bool)

(assert (= bs!25300 (and b!54476 b!54434)))

(assert (=> (and bs!25300 (= (content!17 (left!1150 (left!1150 (right!1153 thiss!7629)))) (content!17 (left!1150 thiss!7629))) (= (elem!220 (left!1150 (right!1153 thiss!7629))) (elem!220 thiss!7629))) (= inst!288 inst!282)))

(declare-fun bs!25301 () Bool)

(assert (= bs!25301 (and b!54476 b!54432)))

(assert (=> (and bs!25301 (= (content!17 (left!1150 (left!1150 (right!1153 thiss!7629)))) (content!17 (left!1150 (right!1153 thiss!7629)))) (= (elem!220 (left!1150 (right!1153 thiss!7629))) (elem!220 (right!1153 thiss!7629)))) (= inst!288 inst!280)))

(declare-fun bs!25302 () Bool)

(assert (= bs!25302 (and b!54476 neg-inst!271)))

(assert (=> (and bs!25302 (= (content!17 (left!1150 (left!1150 (right!1153 thiss!7629)))) (content!17 (left!1150 thiss!7629))) (= (elem!220 (left!1150 (right!1153 thiss!7629))) (elem!220 thiss!7629))) (= inst!288 true)))

(declare-fun bs!25303 () Bool)

(assert (= bs!25303 (and b!54476 neg-inst!269)))

(assert (=> (and bs!25303 (= (content!17 (left!1150 (left!1150 (right!1153 thiss!7629)))) (content!17 (left!1150 (right!1153 thiss!7629)))) (= (elem!220 (left!1150 (right!1153 thiss!7629))) (elem!220 (right!1153 thiss!7629)))) (= inst!288 true)))

(declare-fun bs!25304 () Bool)

(assert (= bs!25304 (and b!54476 neg-inst!275)))

(assert (=> (and bs!25304 (= (content!17 (left!1150 (left!1150 (right!1153 thiss!7629)))) (content!17 (left!1150 (right!1153 (left!1150 thiss!7629))))) (= (elem!220 (left!1150 (right!1153 thiss!7629))) (elem!220 (right!1153 (left!1150 thiss!7629))))) (= inst!288 true)))

(declare-fun bs!25305 () Bool)

(assert (= bs!25305 (and b!54476 b!54430)))

(assert (=> (and bs!25305 (= (content!17 (left!1150 (left!1150 (right!1153 thiss!7629)))) (content!17 (left!1150 (left!1150 thiss!7629)))) (= (elem!220 (left!1150 (right!1153 thiss!7629))) (elem!220 (left!1150 thiss!7629)))) (= inst!288 inst!278)))

(declare-fun b!54477 () Bool)

(assert (=> b!54477 m!58568))

(declare-fun inst!289 () Bool)

(declare-fun x!21686 () (_ BitVec 32))

(assert (=> b!54477 (= inst!289 (=> true (or (not (member x!21686 (content!17 (right!1153 (left!1150 (right!1153 thiss!7629)))))) (bvslt (elem!220 (left!1150 (right!1153 thiss!7629))) x!21686))))))

(declare-fun m!58608 () Bool)

(assert (=> b!54477 m!58608))

(declare-fun bs!25306 () Bool)

(assert (= bs!25306 (and b!54477 b!54435)))

(assert (=> (and bs!25306 (= (content!17 (right!1153 (left!1150 (right!1153 thiss!7629)))) (content!17 (right!1153 thiss!7629))) (= (elem!220 (left!1150 (right!1153 thiss!7629))) (elem!220 thiss!7629))) (= inst!289 inst!283)))

(declare-fun bs!25307 () Bool)

(assert (= bs!25307 (and b!54477 neg-inst!270)))

(assert (=> (and bs!25307 (= (content!17 (right!1153 (left!1150 (right!1153 thiss!7629)))) (content!17 (right!1153 thiss!7629))) (= (elem!220 (left!1150 (right!1153 thiss!7629))) (elem!220 thiss!7629))) (= inst!289 true)))

(declare-fun bs!25308 () Bool)

(assert (= bs!25308 (and b!54477 neg-inst!274)))

(assert (=> (and bs!25308 (= (content!17 (right!1153 (left!1150 (right!1153 thiss!7629)))) (content!17 (right!1153 (right!1153 (left!1150 thiss!7629))))) (= (elem!220 (left!1150 (right!1153 thiss!7629))) (elem!220 (right!1153 (left!1150 thiss!7629))))) (= inst!289 true)))

(declare-fun bs!25309 () Bool)

(assert (= bs!25309 (and b!54477 b!54431)))

(assert (=> (and bs!25309 (= (content!17 (right!1153 (left!1150 (right!1153 thiss!7629)))) (content!17 (right!1153 (left!1150 thiss!7629)))) (= (elem!220 (left!1150 (right!1153 thiss!7629))) (elem!220 (left!1150 thiss!7629)))) (= inst!289 inst!279)))

(declare-fun bs!25310 () Bool)

(assert (= bs!25310 (and b!54477 b!54433)))

(assert (=> (and bs!25310 (= (content!17 (right!1153 (left!1150 (right!1153 thiss!7629)))) (content!17 (right!1153 (right!1153 thiss!7629)))) (= (elem!220 (left!1150 (right!1153 thiss!7629))) (elem!220 (right!1153 thiss!7629)))) (= inst!289 inst!281)))

(declare-fun bs!25311 () Bool)

(assert (= bs!25311 (and b!54477 b!54469)))

(assert (=> (and bs!25311 (= (content!17 (right!1153 (left!1150 (right!1153 thiss!7629)))) (content!17 (right!1153 (right!1153 (left!1150 thiss!7629))))) (= (elem!220 (left!1150 (right!1153 thiss!7629))) (elem!220 (right!1153 (left!1150 thiss!7629))))) (= inst!289 inst!287)))

(declare-fun bs!25312 () Bool)

(assert (= bs!25312 (and b!54477 b!54467)))

(assert (=> (and bs!25312 (= (content!17 (right!1153 (left!1150 (right!1153 thiss!7629)))) (content!17 (right!1153 (left!1150 (left!1150 thiss!7629))))) (= (elem!220 (left!1150 (right!1153 thiss!7629))) (elem!220 (left!1150 (left!1150 thiss!7629))))) (= inst!289 inst!285)))

(declare-fun bs!25313 () Bool)

(assert (= bs!25313 (and b!54477 neg-inst!268)))

(assert (=> (and bs!25313 (= (content!17 (right!1153 (left!1150 (right!1153 thiss!7629)))) (content!17 (right!1153 (right!1153 thiss!7629)))) (= (elem!220 (left!1150 (right!1153 thiss!7629))) (elem!220 (right!1153 thiss!7629)))) (= inst!289 true)))

(declare-fun bs!25314 () Bool)

(assert (= bs!25314 (and b!54477 neg-inst!272)))

(assert (=> (and bs!25314 (= (content!17 (right!1153 (left!1150 (right!1153 thiss!7629)))) (content!17 (right!1153 (left!1150 (left!1150 thiss!7629))))) (= (elem!220 (left!1150 (right!1153 thiss!7629))) (elem!220 (left!1150 (left!1150 thiss!7629))))) (= inst!289 true)))

(declare-fun bs!25315 () Bool)

(assert (= bs!25315 (and b!54477 neg-inst!266)))

(assert (=> (and bs!25315 (= (content!17 (right!1153 (left!1150 (right!1153 thiss!7629)))) (content!17 (right!1153 (left!1150 thiss!7629)))) (= (elem!220 (left!1150 (right!1153 thiss!7629))) (elem!220 (left!1150 thiss!7629)))) (= inst!289 true)))

(declare-fun bs!25316 () Bool)

(declare-fun neg-inst!277 () Bool)

(assert (= bs!25316 neg-inst!277))

(assert (=> bs!25316 m!58564))

(declare-fun bs!25317 () Bool)

(declare-fun s!1171 () Bool)

(assert (= bs!25317 (and neg-inst!277 s!1171)))

(assert (=> bs!25317 (=> true (or (not (member x!21685 (content!17 (left!1150 (left!1150 (right!1153 thiss!7629)))))) (bvslt x!21685 (elem!220 (left!1150 (right!1153 thiss!7629))))))))

(assert (=> m!58606 s!1171))

(declare-fun bs!25318 () Bool)

(assert (= bs!25318 (and neg-inst!277 b!54468)))

(assert (=> (and bs!25318 (= (content!17 (left!1150 (left!1150 (right!1153 thiss!7629)))) (content!17 (left!1150 (right!1153 (left!1150 thiss!7629))))) (= (elem!220 (left!1150 (right!1153 thiss!7629))) (elem!220 (right!1153 (left!1150 thiss!7629))))) (= true inst!286)))

(declare-fun bs!25319 () Bool)

(assert (= bs!25319 (and neg-inst!277 neg-inst!273)))

(assert (=> (and bs!25319 (= (content!17 (left!1150 (left!1150 (right!1153 thiss!7629)))) (content!17 (left!1150 (left!1150 (left!1150 thiss!7629))))) (= (elem!220 (left!1150 (right!1153 thiss!7629))) (elem!220 (left!1150 (left!1150 thiss!7629))))) (= true true)))

(declare-fun bs!25320 () Bool)

(assert (= bs!25320 (and neg-inst!277 neg-inst!267)))

(assert (=> (and bs!25320 (= (content!17 (left!1150 (left!1150 (right!1153 thiss!7629)))) (content!17 (left!1150 (left!1150 thiss!7629)))) (= (elem!220 (left!1150 (right!1153 thiss!7629))) (elem!220 (left!1150 thiss!7629)))) (= true true)))

(declare-fun bs!25321 () Bool)

(assert (= bs!25321 (and neg-inst!277 b!54466)))

(assert (=> (and bs!25321 (= (content!17 (left!1150 (left!1150 (right!1153 thiss!7629)))) (content!17 (left!1150 (left!1150 (left!1150 thiss!7629))))) (= (elem!220 (left!1150 (right!1153 thiss!7629))) (elem!220 (left!1150 (left!1150 thiss!7629))))) (= true inst!284)))

(declare-fun bs!25322 () Bool)

(assert (= bs!25322 (and neg-inst!277 b!54434)))

(assert (=> (and bs!25322 (= (content!17 (left!1150 (left!1150 (right!1153 thiss!7629)))) (content!17 (left!1150 thiss!7629))) (= (elem!220 (left!1150 (right!1153 thiss!7629))) (elem!220 thiss!7629))) (= true inst!282)))

(declare-fun bs!25323 () Bool)

(assert (= bs!25323 (and neg-inst!277 b!54476)))

(assert (=> bs!25323 (= true inst!288)))

(declare-fun bs!25324 () Bool)

(assert (= bs!25324 (and neg-inst!277 b!54432)))

(assert (=> (and bs!25324 (= (content!17 (left!1150 (left!1150 (right!1153 thiss!7629)))) (content!17 (left!1150 (right!1153 thiss!7629)))) (= (elem!220 (left!1150 (right!1153 thiss!7629))) (elem!220 (right!1153 thiss!7629)))) (= true inst!280)))

(declare-fun bs!25325 () Bool)

(assert (= bs!25325 (and neg-inst!277 neg-inst!271)))

(assert (=> (and bs!25325 (= (content!17 (left!1150 (left!1150 (right!1153 thiss!7629)))) (content!17 (left!1150 thiss!7629))) (= (elem!220 (left!1150 (right!1153 thiss!7629))) (elem!220 thiss!7629))) (= true true)))

(declare-fun bs!25326 () Bool)

(assert (= bs!25326 (and neg-inst!277 neg-inst!269)))

(assert (=> (and bs!25326 (= (content!17 (left!1150 (left!1150 (right!1153 thiss!7629)))) (content!17 (left!1150 (right!1153 thiss!7629)))) (= (elem!220 (left!1150 (right!1153 thiss!7629))) (elem!220 (right!1153 thiss!7629)))) (= true true)))

(declare-fun bs!25327 () Bool)

(assert (= bs!25327 (and neg-inst!277 neg-inst!275)))

(assert (=> (and bs!25327 (= (content!17 (left!1150 (left!1150 (right!1153 thiss!7629)))) (content!17 (left!1150 (right!1153 (left!1150 thiss!7629))))) (= (elem!220 (left!1150 (right!1153 thiss!7629))) (elem!220 (right!1153 (left!1150 thiss!7629))))) (= true true)))

(declare-fun bs!25328 () Bool)

(assert (= bs!25328 (and neg-inst!277 b!54430)))

(assert (=> (and bs!25328 (= (content!17 (left!1150 (left!1150 (right!1153 thiss!7629)))) (content!17 (left!1150 (left!1150 thiss!7629)))) (= (elem!220 (left!1150 (right!1153 thiss!7629))) (elem!220 (left!1150 thiss!7629)))) (= true inst!278)))

(declare-fun bs!25329 () Bool)

(declare-fun neg-inst!276 () Bool)

(assert (= bs!25329 neg-inst!276))

(assert (=> bs!25329 m!58568))

(declare-fun bs!25330 () Bool)

(declare-fun s!1173 () Bool)

(assert (= bs!25330 (and neg-inst!276 s!1173)))

(assert (=> bs!25330 (=> true (or (not (member x!21686 (content!17 (right!1153 (left!1150 (right!1153 thiss!7629)))))) (bvslt (elem!220 (left!1150 (right!1153 thiss!7629))) x!21686)))))

(assert (=> m!58608 s!1173))

(declare-fun bs!25331 () Bool)

(assert (= bs!25331 (and neg-inst!276 b!54435)))

(assert (=> (and bs!25331 (= (content!17 (right!1153 (left!1150 (right!1153 thiss!7629)))) (content!17 (right!1153 thiss!7629))) (= (elem!220 (left!1150 (right!1153 thiss!7629))) (elem!220 thiss!7629))) (= true inst!283)))

(declare-fun bs!25332 () Bool)

(assert (= bs!25332 (and neg-inst!276 neg-inst!270)))

(assert (=> (and bs!25332 (= (content!17 (right!1153 (left!1150 (right!1153 thiss!7629)))) (content!17 (right!1153 thiss!7629))) (= (elem!220 (left!1150 (right!1153 thiss!7629))) (elem!220 thiss!7629))) (= true true)))

(declare-fun bs!25333 () Bool)

(assert (= bs!25333 (and neg-inst!276 neg-inst!274)))

(assert (=> (and bs!25333 (= (content!17 (right!1153 (left!1150 (right!1153 thiss!7629)))) (content!17 (right!1153 (right!1153 (left!1150 thiss!7629))))) (= (elem!220 (left!1150 (right!1153 thiss!7629))) (elem!220 (right!1153 (left!1150 thiss!7629))))) (= true true)))

(declare-fun bs!25334 () Bool)

(assert (= bs!25334 (and neg-inst!276 b!54431)))

(assert (=> (and bs!25334 (= (content!17 (right!1153 (left!1150 (right!1153 thiss!7629)))) (content!17 (right!1153 (left!1150 thiss!7629)))) (= (elem!220 (left!1150 (right!1153 thiss!7629))) (elem!220 (left!1150 thiss!7629)))) (= true inst!279)))

(declare-fun bs!25335 () Bool)

(assert (= bs!25335 (and neg-inst!276 b!54433)))

(assert (=> (and bs!25335 (= (content!17 (right!1153 (left!1150 (right!1153 thiss!7629)))) (content!17 (right!1153 (right!1153 thiss!7629)))) (= (elem!220 (left!1150 (right!1153 thiss!7629))) (elem!220 (right!1153 thiss!7629)))) (= true inst!281)))

(declare-fun bs!25336 () Bool)

(assert (= bs!25336 (and neg-inst!276 b!54477)))

(assert (=> bs!25336 (= true inst!289)))

(declare-fun bs!25337 () Bool)

(assert (= bs!25337 (and neg-inst!276 b!54469)))

(assert (=> (and bs!25337 (= (content!17 (right!1153 (left!1150 (right!1153 thiss!7629)))) (content!17 (right!1153 (right!1153 (left!1150 thiss!7629))))) (= (elem!220 (left!1150 (right!1153 thiss!7629))) (elem!220 (right!1153 (left!1150 thiss!7629))))) (= true inst!287)))

(declare-fun bs!25338 () Bool)

(assert (= bs!25338 (and neg-inst!276 b!54467)))

(assert (=> (and bs!25338 (= (content!17 (right!1153 (left!1150 (right!1153 thiss!7629)))) (content!17 (right!1153 (left!1150 (left!1150 thiss!7629))))) (= (elem!220 (left!1150 (right!1153 thiss!7629))) (elem!220 (left!1150 (left!1150 thiss!7629))))) (= true inst!285)))

(declare-fun bs!25339 () Bool)

(assert (= bs!25339 (and neg-inst!276 neg-inst!268)))

(assert (=> (and bs!25339 (= (content!17 (right!1153 (left!1150 (right!1153 thiss!7629)))) (content!17 (right!1153 (right!1153 thiss!7629)))) (= (elem!220 (left!1150 (right!1153 thiss!7629))) (elem!220 (right!1153 thiss!7629)))) (= true true)))

(declare-fun bs!25340 () Bool)

(assert (= bs!25340 (and neg-inst!276 neg-inst!272)))

(assert (=> (and bs!25340 (= (content!17 (right!1153 (left!1150 (right!1153 thiss!7629)))) (content!17 (right!1153 (left!1150 (left!1150 thiss!7629))))) (= (elem!220 (left!1150 (right!1153 thiss!7629))) (elem!220 (left!1150 (left!1150 thiss!7629))))) (= true true)))

(declare-fun bs!25341 () Bool)

(assert (= bs!25341 (and neg-inst!276 neg-inst!266)))

(assert (=> (and bs!25341 (= (content!17 (right!1153 (left!1150 (right!1153 thiss!7629)))) (content!17 (right!1153 (left!1150 thiss!7629)))) (= (elem!220 (left!1150 (right!1153 thiss!7629))) (elem!220 (left!1150 thiss!7629)))) (= true true)))

(declare-fun d!44978 () Bool)

(declare-fun res!24985 () Bool)

(declare-fun e!28551 () Bool)

(assert (=> d!44978 (=> res!24985 e!28551)))

(assert (=> d!44978 (= res!24985 (not (is-Node!120 (left!1150 (right!1153 thiss!7629)))))))

(assert (=> d!44978 (= (inv!977 (left!1150 (right!1153 thiss!7629))) e!28551)))

(declare-fun e!28552 () Bool)

(assert (=> b!54476 (= e!28551 e!28552)))

(declare-fun res!24984 () Bool)

(assert (=> b!54476 (=> (not res!24984) (not e!28552))))

(assert (=> b!54476 (= res!24984 inst!288)))

(assert (=> b!54477 (= e!28552 inst!289)))

(assert (= (and d!44978 (not res!24985)) b!54476))

(assert (= neg-inst!277 inst!288))

(assert (= (and b!54476 res!24984) b!54477))

(assert (= neg-inst!276 inst!289))

(assert (=> b!54456 d!44978))

(declare-fun b!54478 () Bool)

(assert (=> b!54478 m!58598))

(declare-fun inst!290 () Bool)

(declare-fun x!21687 () (_ BitVec 32))

(assert (=> b!54478 (= inst!290 (=> true (or (not (member x!21687 (content!17 (left!1150 (right!1153 (right!1153 thiss!7629)))))) (bvslt x!21687 (elem!220 (right!1153 (right!1153 thiss!7629)))))))))

(declare-fun m!58610 () Bool)

(assert (=> b!54478 m!58610))

(declare-fun bs!25342 () Bool)

(assert (= bs!25342 (and b!54478 b!54468)))

(assert (=> (and bs!25342 (= (content!17 (left!1150 (right!1153 (right!1153 thiss!7629)))) (content!17 (left!1150 (right!1153 (left!1150 thiss!7629))))) (= (elem!220 (right!1153 (right!1153 thiss!7629))) (elem!220 (right!1153 (left!1150 thiss!7629))))) (= inst!290 inst!286)))

(declare-fun bs!25343 () Bool)

(assert (= bs!25343 (and b!54478 neg-inst!273)))

(assert (=> (and bs!25343 (= (content!17 (left!1150 (right!1153 (right!1153 thiss!7629)))) (content!17 (left!1150 (left!1150 (left!1150 thiss!7629))))) (= (elem!220 (right!1153 (right!1153 thiss!7629))) (elem!220 (left!1150 (left!1150 thiss!7629))))) (= inst!290 true)))

(declare-fun bs!25344 () Bool)

(assert (= bs!25344 (and b!54478 neg-inst!267)))

(assert (=> (and bs!25344 (= (content!17 (left!1150 (right!1153 (right!1153 thiss!7629)))) (content!17 (left!1150 (left!1150 thiss!7629)))) (= (elem!220 (right!1153 (right!1153 thiss!7629))) (elem!220 (left!1150 thiss!7629)))) (= inst!290 true)))

(declare-fun bs!25345 () Bool)

(assert (= bs!25345 (and b!54478 b!54466)))

(assert (=> (and bs!25345 (= (content!17 (left!1150 (right!1153 (right!1153 thiss!7629)))) (content!17 (left!1150 (left!1150 (left!1150 thiss!7629))))) (= (elem!220 (right!1153 (right!1153 thiss!7629))) (elem!220 (left!1150 (left!1150 thiss!7629))))) (= inst!290 inst!284)))

(declare-fun bs!25346 () Bool)

(assert (= bs!25346 (and b!54478 b!54434)))

(assert (=> (and bs!25346 (= (content!17 (left!1150 (right!1153 (right!1153 thiss!7629)))) (content!17 (left!1150 thiss!7629))) (= (elem!220 (right!1153 (right!1153 thiss!7629))) (elem!220 thiss!7629))) (= inst!290 inst!282)))

(declare-fun bs!25347 () Bool)

(assert (= bs!25347 (and b!54478 b!54476)))

(assert (=> (and bs!25347 (= (content!17 (left!1150 (right!1153 (right!1153 thiss!7629)))) (content!17 (left!1150 (left!1150 (right!1153 thiss!7629))))) (= (elem!220 (right!1153 (right!1153 thiss!7629))) (elem!220 (left!1150 (right!1153 thiss!7629))))) (= inst!290 inst!288)))

(declare-fun bs!25348 () Bool)

(assert (= bs!25348 (and b!54478 b!54432)))

(assert (=> (and bs!25348 (= (content!17 (left!1150 (right!1153 (right!1153 thiss!7629)))) (content!17 (left!1150 (right!1153 thiss!7629)))) (= (elem!220 (right!1153 (right!1153 thiss!7629))) (elem!220 (right!1153 thiss!7629)))) (= inst!290 inst!280)))

(declare-fun bs!25349 () Bool)

(assert (= bs!25349 (and b!54478 neg-inst!271)))

(assert (=> (and bs!25349 (= (content!17 (left!1150 (right!1153 (right!1153 thiss!7629)))) (content!17 (left!1150 thiss!7629))) (= (elem!220 (right!1153 (right!1153 thiss!7629))) (elem!220 thiss!7629))) (= inst!290 true)))

(declare-fun bs!25350 () Bool)

(assert (= bs!25350 (and b!54478 neg-inst!277)))

(assert (=> (and bs!25350 (= (content!17 (left!1150 (right!1153 (right!1153 thiss!7629)))) (content!17 (left!1150 (left!1150 (right!1153 thiss!7629))))) (= (elem!220 (right!1153 (right!1153 thiss!7629))) (elem!220 (left!1150 (right!1153 thiss!7629))))) (= inst!290 true)))

(declare-fun bs!25351 () Bool)

(assert (= bs!25351 (and b!54478 neg-inst!269)))

(assert (=> (and bs!25351 (= (content!17 (left!1150 (right!1153 (right!1153 thiss!7629)))) (content!17 (left!1150 (right!1153 thiss!7629)))) (= (elem!220 (right!1153 (right!1153 thiss!7629))) (elem!220 (right!1153 thiss!7629)))) (= inst!290 true)))

(declare-fun bs!25352 () Bool)

(assert (= bs!25352 (and b!54478 neg-inst!275)))

(assert (=> (and bs!25352 (= (content!17 (left!1150 (right!1153 (right!1153 thiss!7629)))) (content!17 (left!1150 (right!1153 (left!1150 thiss!7629))))) (= (elem!220 (right!1153 (right!1153 thiss!7629))) (elem!220 (right!1153 (left!1150 thiss!7629))))) (= inst!290 true)))

(declare-fun bs!25353 () Bool)

(assert (= bs!25353 (and b!54478 b!54430)))

(assert (=> (and bs!25353 (= (content!17 (left!1150 (right!1153 (right!1153 thiss!7629)))) (content!17 (left!1150 (left!1150 thiss!7629)))) (= (elem!220 (right!1153 (right!1153 thiss!7629))) (elem!220 (left!1150 thiss!7629)))) (= inst!290 inst!278)))

(declare-fun b!54479 () Bool)

(assert (=> b!54479 m!58602))

(declare-fun inst!291 () Bool)

(declare-fun x!21688 () (_ BitVec 32))

(assert (=> b!54479 (= inst!291 (=> true (or (not (member x!21688 (content!17 (right!1153 (right!1153 (right!1153 thiss!7629)))))) (bvslt (elem!220 (right!1153 (right!1153 thiss!7629))) x!21688))))))

(declare-fun m!58612 () Bool)

(assert (=> b!54479 m!58612))

(declare-fun bs!25354 () Bool)

(assert (= bs!25354 (and b!54479 b!54435)))

(assert (=> (and bs!25354 (= (content!17 (right!1153 (right!1153 (right!1153 thiss!7629)))) (content!17 (right!1153 thiss!7629))) (= (elem!220 (right!1153 (right!1153 thiss!7629))) (elem!220 thiss!7629))) (= inst!291 inst!283)))

(declare-fun bs!25355 () Bool)

(assert (= bs!25355 (and b!54479 neg-inst!270)))

(assert (=> (and bs!25355 (= (content!17 (right!1153 (right!1153 (right!1153 thiss!7629)))) (content!17 (right!1153 thiss!7629))) (= (elem!220 (right!1153 (right!1153 thiss!7629))) (elem!220 thiss!7629))) (= inst!291 true)))

(declare-fun bs!25356 () Bool)

(assert (= bs!25356 (and b!54479 b!54431)))

(assert (=> (and bs!25356 (= (content!17 (right!1153 (right!1153 (right!1153 thiss!7629)))) (content!17 (right!1153 (left!1150 thiss!7629)))) (= (elem!220 (right!1153 (right!1153 thiss!7629))) (elem!220 (left!1150 thiss!7629)))) (= inst!291 inst!279)))

(declare-fun bs!25357 () Bool)

(assert (= bs!25357 (and b!54479 neg-inst!274)))

(assert (=> (and bs!25357 (= (content!17 (right!1153 (right!1153 (right!1153 thiss!7629)))) (content!17 (right!1153 (right!1153 (left!1150 thiss!7629))))) (= (elem!220 (right!1153 (right!1153 thiss!7629))) (elem!220 (right!1153 (left!1150 thiss!7629))))) (= inst!291 true)))

(declare-fun bs!25358 () Bool)

(assert (= bs!25358 (and b!54479 neg-inst!276)))

(assert (=> (and bs!25358 (= (content!17 (right!1153 (right!1153 (right!1153 thiss!7629)))) (content!17 (right!1153 (left!1150 (right!1153 thiss!7629))))) (= (elem!220 (right!1153 (right!1153 thiss!7629))) (elem!220 (left!1150 (right!1153 thiss!7629))))) (= inst!291 true)))

(declare-fun bs!25359 () Bool)

(assert (= bs!25359 (and b!54479 b!54433)))

(assert (=> (and bs!25359 (= (content!17 (right!1153 (right!1153 (right!1153 thiss!7629)))) (content!17 (right!1153 (right!1153 thiss!7629)))) (= (elem!220 (right!1153 (right!1153 thiss!7629))) (elem!220 (right!1153 thiss!7629)))) (= inst!291 inst!281)))

(declare-fun bs!25360 () Bool)

(assert (= bs!25360 (and b!54479 b!54477)))

(assert (=> (and bs!25360 (= (content!17 (right!1153 (right!1153 (right!1153 thiss!7629)))) (content!17 (right!1153 (left!1150 (right!1153 thiss!7629))))) (= (elem!220 (right!1153 (right!1153 thiss!7629))) (elem!220 (left!1150 (right!1153 thiss!7629))))) (= inst!291 inst!289)))

(declare-fun bs!25361 () Bool)

(assert (= bs!25361 (and b!54479 b!54469)))

(assert (=> (and bs!25361 (= (content!17 (right!1153 (right!1153 (right!1153 thiss!7629)))) (content!17 (right!1153 (right!1153 (left!1150 thiss!7629))))) (= (elem!220 (right!1153 (right!1153 thiss!7629))) (elem!220 (right!1153 (left!1150 thiss!7629))))) (= inst!291 inst!287)))

(declare-fun bs!25362 () Bool)

(assert (= bs!25362 (and b!54479 b!54467)))

(assert (=> (and bs!25362 (= (content!17 (right!1153 (right!1153 (right!1153 thiss!7629)))) (content!17 (right!1153 (left!1150 (left!1150 thiss!7629))))) (= (elem!220 (right!1153 (right!1153 thiss!7629))) (elem!220 (left!1150 (left!1150 thiss!7629))))) (= inst!291 inst!285)))

(declare-fun bs!25363 () Bool)

(assert (= bs!25363 (and b!54479 neg-inst!268)))

(assert (=> (and bs!25363 (= (content!17 (right!1153 (right!1153 (right!1153 thiss!7629)))) (content!17 (right!1153 (right!1153 thiss!7629)))) (= (elem!220 (right!1153 (right!1153 thiss!7629))) (elem!220 (right!1153 thiss!7629)))) (= inst!291 true)))

(declare-fun bs!25364 () Bool)

(assert (= bs!25364 (and b!54479 neg-inst!272)))

(assert (=> (and bs!25364 (= (content!17 (right!1153 (right!1153 (right!1153 thiss!7629)))) (content!17 (right!1153 (left!1150 (left!1150 thiss!7629))))) (= (elem!220 (right!1153 (right!1153 thiss!7629))) (elem!220 (left!1150 (left!1150 thiss!7629))))) (= inst!291 true)))

(declare-fun bs!25365 () Bool)

(assert (= bs!25365 (and b!54479 neg-inst!266)))

(assert (=> (and bs!25365 (= (content!17 (right!1153 (right!1153 (right!1153 thiss!7629)))) (content!17 (right!1153 (left!1150 thiss!7629)))) (= (elem!220 (right!1153 (right!1153 thiss!7629))) (elem!220 (left!1150 thiss!7629)))) (= inst!291 true)))

(declare-fun bs!25366 () Bool)

(declare-fun neg-inst!279 () Bool)

(assert (= bs!25366 neg-inst!279))

(assert (=> bs!25366 m!58598))

(declare-fun bs!25367 () Bool)

(declare-fun s!1175 () Bool)

(assert (= bs!25367 (and neg-inst!279 s!1175)))

(assert (=> bs!25367 (=> true (or (not (member x!21687 (content!17 (left!1150 (right!1153 (right!1153 thiss!7629)))))) (bvslt x!21687 (elem!220 (right!1153 (right!1153 thiss!7629))))))))

(assert (=> m!58610 s!1175))

(declare-fun bs!25368 () Bool)

(assert (= bs!25368 (and neg-inst!279 b!54468)))

(assert (=> (and bs!25368 (= (content!17 (left!1150 (right!1153 (right!1153 thiss!7629)))) (content!17 (left!1150 (right!1153 (left!1150 thiss!7629))))) (= (elem!220 (right!1153 (right!1153 thiss!7629))) (elem!220 (right!1153 (left!1150 thiss!7629))))) (= true inst!286)))

(declare-fun bs!25369 () Bool)

(assert (= bs!25369 (and neg-inst!279 neg-inst!273)))

(assert (=> (and bs!25369 (= (content!17 (left!1150 (right!1153 (right!1153 thiss!7629)))) (content!17 (left!1150 (left!1150 (left!1150 thiss!7629))))) (= (elem!220 (right!1153 (right!1153 thiss!7629))) (elem!220 (left!1150 (left!1150 thiss!7629))))) (= true true)))

(declare-fun bs!25370 () Bool)

(assert (= bs!25370 (and neg-inst!279 b!54466)))

(assert (=> (and bs!25370 (= (content!17 (left!1150 (right!1153 (right!1153 thiss!7629)))) (content!17 (left!1150 (left!1150 (left!1150 thiss!7629))))) (= (elem!220 (right!1153 (right!1153 thiss!7629))) (elem!220 (left!1150 (left!1150 thiss!7629))))) (= true inst!284)))

(declare-fun bs!25371 () Bool)

(assert (= bs!25371 (and neg-inst!279 neg-inst!267)))

(assert (=> (and bs!25371 (= (content!17 (left!1150 (right!1153 (right!1153 thiss!7629)))) (content!17 (left!1150 (left!1150 thiss!7629)))) (= (elem!220 (right!1153 (right!1153 thiss!7629))) (elem!220 (left!1150 thiss!7629)))) (= true true)))

(declare-fun bs!25372 () Bool)

(assert (= bs!25372 (and neg-inst!279 b!54434)))

(assert (=> (and bs!25372 (= (content!17 (left!1150 (right!1153 (right!1153 thiss!7629)))) (content!17 (left!1150 thiss!7629))) (= (elem!220 (right!1153 (right!1153 thiss!7629))) (elem!220 thiss!7629))) (= true inst!282)))

(declare-fun bs!25373 () Bool)

(assert (= bs!25373 (and neg-inst!279 b!54476)))

(assert (=> (and bs!25373 (= (content!17 (left!1150 (right!1153 (right!1153 thiss!7629)))) (content!17 (left!1150 (left!1150 (right!1153 thiss!7629))))) (= (elem!220 (right!1153 (right!1153 thiss!7629))) (elem!220 (left!1150 (right!1153 thiss!7629))))) (= true inst!288)))

(declare-fun bs!25374 () Bool)

(assert (= bs!25374 (and neg-inst!279 b!54432)))

(assert (=> (and bs!25374 (= (content!17 (left!1150 (right!1153 (right!1153 thiss!7629)))) (content!17 (left!1150 (right!1153 thiss!7629)))) (= (elem!220 (right!1153 (right!1153 thiss!7629))) (elem!220 (right!1153 thiss!7629)))) (= true inst!280)))

(declare-fun bs!25375 () Bool)

(assert (= bs!25375 (and neg-inst!279 neg-inst!271)))

(assert (=> (and bs!25375 (= (content!17 (left!1150 (right!1153 (right!1153 thiss!7629)))) (content!17 (left!1150 thiss!7629))) (= (elem!220 (right!1153 (right!1153 thiss!7629))) (elem!220 thiss!7629))) (= true true)))

(declare-fun bs!25376 () Bool)

(assert (= bs!25376 (and neg-inst!279 neg-inst!269)))

(assert (=> (and bs!25376 (= (content!17 (left!1150 (right!1153 (right!1153 thiss!7629)))) (content!17 (left!1150 (right!1153 thiss!7629)))) (= (elem!220 (right!1153 (right!1153 thiss!7629))) (elem!220 (right!1153 thiss!7629)))) (= true true)))

(declare-fun bs!25377 () Bool)

(assert (= bs!25377 (and neg-inst!279 neg-inst!277)))

(assert (=> (and bs!25377 (= (content!17 (left!1150 (right!1153 (right!1153 thiss!7629)))) (content!17 (left!1150 (left!1150 (right!1153 thiss!7629))))) (= (elem!220 (right!1153 (right!1153 thiss!7629))) (elem!220 (left!1150 (right!1153 thiss!7629))))) (= true true)))

(declare-fun bs!25378 () Bool)

(assert (= bs!25378 (and neg-inst!279 neg-inst!275)))

(assert (=> (and bs!25378 (= (content!17 (left!1150 (right!1153 (right!1153 thiss!7629)))) (content!17 (left!1150 (right!1153 (left!1150 thiss!7629))))) (= (elem!220 (right!1153 (right!1153 thiss!7629))) (elem!220 (right!1153 (left!1150 thiss!7629))))) (= true true)))

(declare-fun bs!25379 () Bool)

(assert (= bs!25379 (and neg-inst!279 b!54478)))

(assert (=> bs!25379 (= true inst!290)))

(declare-fun bs!25380 () Bool)

(assert (= bs!25380 (and neg-inst!279 b!54430)))

(assert (=> (and bs!25380 (= (content!17 (left!1150 (right!1153 (right!1153 thiss!7629)))) (content!17 (left!1150 (left!1150 thiss!7629)))) (= (elem!220 (right!1153 (right!1153 thiss!7629))) (elem!220 (left!1150 thiss!7629)))) (= true inst!278)))

(declare-fun bs!25381 () Bool)

(declare-fun neg-inst!278 () Bool)

(assert (= bs!25381 neg-inst!278))

(assert (=> bs!25381 m!58602))

(declare-fun bs!25382 () Bool)

(declare-fun s!1177 () Bool)

(assert (= bs!25382 (and neg-inst!278 s!1177)))

(assert (=> bs!25382 (=> true (or (not (member x!21688 (content!17 (right!1153 (right!1153 (right!1153 thiss!7629)))))) (bvslt (elem!220 (right!1153 (right!1153 thiss!7629))) x!21688)))))

(assert (=> m!58612 s!1177))

(declare-fun bs!25383 () Bool)

(assert (= bs!25383 (and neg-inst!278 b!54435)))

(assert (=> (and bs!25383 (= (content!17 (right!1153 (right!1153 (right!1153 thiss!7629)))) (content!17 (right!1153 thiss!7629))) (= (elem!220 (right!1153 (right!1153 thiss!7629))) (elem!220 thiss!7629))) (= true inst!283)))

(declare-fun bs!25384 () Bool)

(assert (= bs!25384 (and neg-inst!278 neg-inst!270)))

(assert (=> (and bs!25384 (= (content!17 (right!1153 (right!1153 (right!1153 thiss!7629)))) (content!17 (right!1153 thiss!7629))) (= (elem!220 (right!1153 (right!1153 thiss!7629))) (elem!220 thiss!7629))) (= true true)))

(declare-fun bs!25385 () Bool)

(assert (= bs!25385 (and neg-inst!278 b!54431)))

(assert (=> (and bs!25385 (= (content!17 (right!1153 (right!1153 (right!1153 thiss!7629)))) (content!17 (right!1153 (left!1150 thiss!7629)))) (= (elem!220 (right!1153 (right!1153 thiss!7629))) (elem!220 (left!1150 thiss!7629)))) (= true inst!279)))

(declare-fun bs!25386 () Bool)

(assert (= bs!25386 (and neg-inst!278 neg-inst!274)))

(assert (=> (and bs!25386 (= (content!17 (right!1153 (right!1153 (right!1153 thiss!7629)))) (content!17 (right!1153 (right!1153 (left!1150 thiss!7629))))) (= (elem!220 (right!1153 (right!1153 thiss!7629))) (elem!220 (right!1153 (left!1150 thiss!7629))))) (= true true)))

(declare-fun bs!25387 () Bool)

(assert (= bs!25387 (and neg-inst!278 neg-inst!276)))

(assert (=> (and bs!25387 (= (content!17 (right!1153 (right!1153 (right!1153 thiss!7629)))) (content!17 (right!1153 (left!1150 (right!1153 thiss!7629))))) (= (elem!220 (right!1153 (right!1153 thiss!7629))) (elem!220 (left!1150 (right!1153 thiss!7629))))) (= true true)))

(declare-fun bs!25388 () Bool)

(assert (= bs!25388 (and neg-inst!278 b!54433)))

(assert (=> (and bs!25388 (= (content!17 (right!1153 (right!1153 (right!1153 thiss!7629)))) (content!17 (right!1153 (right!1153 thiss!7629)))) (= (elem!220 (right!1153 (right!1153 thiss!7629))) (elem!220 (right!1153 thiss!7629)))) (= true inst!281)))

(declare-fun bs!25389 () Bool)

(assert (= bs!25389 (and neg-inst!278 b!54479)))

(assert (=> bs!25389 (= true inst!291)))

(declare-fun bs!25390 () Bool)

(assert (= bs!25390 (and neg-inst!278 b!54477)))

(assert (=> (and bs!25390 (= (content!17 (right!1153 (right!1153 (right!1153 thiss!7629)))) (content!17 (right!1153 (left!1150 (right!1153 thiss!7629))))) (= (elem!220 (right!1153 (right!1153 thiss!7629))) (elem!220 (left!1150 (right!1153 thiss!7629))))) (= true inst!289)))

(declare-fun bs!25391 () Bool)

(assert (= bs!25391 (and neg-inst!278 b!54469)))

(assert (=> (and bs!25391 (= (content!17 (right!1153 (right!1153 (right!1153 thiss!7629)))) (content!17 (right!1153 (right!1153 (left!1150 thiss!7629))))) (= (elem!220 (right!1153 (right!1153 thiss!7629))) (elem!220 (right!1153 (left!1150 thiss!7629))))) (= true inst!287)))

(declare-fun bs!25392 () Bool)

(assert (= bs!25392 (and neg-inst!278 b!54467)))

(assert (=> (and bs!25392 (= (content!17 (right!1153 (right!1153 (right!1153 thiss!7629)))) (content!17 (right!1153 (left!1150 (left!1150 thiss!7629))))) (= (elem!220 (right!1153 (right!1153 thiss!7629))) (elem!220 (left!1150 (left!1150 thiss!7629))))) (= true inst!285)))

(declare-fun bs!25393 () Bool)

(assert (= bs!25393 (and neg-inst!278 neg-inst!268)))

(assert (=> (and bs!25393 (= (content!17 (right!1153 (right!1153 (right!1153 thiss!7629)))) (content!17 (right!1153 (right!1153 thiss!7629)))) (= (elem!220 (right!1153 (right!1153 thiss!7629))) (elem!220 (right!1153 thiss!7629)))) (= true true)))

(declare-fun bs!25394 () Bool)

(assert (= bs!25394 (and neg-inst!278 neg-inst!272)))

(assert (=> (and bs!25394 (= (content!17 (right!1153 (right!1153 (right!1153 thiss!7629)))) (content!17 (right!1153 (left!1150 (left!1150 thiss!7629))))) (= (elem!220 (right!1153 (right!1153 thiss!7629))) (elem!220 (left!1150 (left!1150 thiss!7629))))) (= true true)))

(declare-fun bs!25395 () Bool)

(assert (= bs!25395 (and neg-inst!278 neg-inst!266)))

(assert (=> (and bs!25395 (= (content!17 (right!1153 (right!1153 (right!1153 thiss!7629)))) (content!17 (right!1153 (left!1150 thiss!7629)))) (= (elem!220 (right!1153 (right!1153 thiss!7629))) (elem!220 (left!1150 thiss!7629)))) (= true true)))

(declare-fun d!44980 () Bool)

(declare-fun res!24987 () Bool)

(declare-fun e!28553 () Bool)

(assert (=> d!44980 (=> res!24987 e!28553)))

(assert (=> d!44980 (= res!24987 (not (is-Node!120 (right!1153 (right!1153 thiss!7629)))))))

(assert (=> d!44980 (= (inv!977 (right!1153 (right!1153 thiss!7629))) e!28553)))

(declare-fun e!28554 () Bool)

(assert (=> b!54478 (= e!28553 e!28554)))

(declare-fun res!24986 () Bool)

(assert (=> b!54478 (=> (not res!24986) (not e!28554))))

(assert (=> b!54478 (= res!24986 inst!290)))

(assert (=> b!54479 (= e!28554 inst!291)))

(assert (= (and d!44980 (not res!24987)) b!54478))

(assert (= neg-inst!279 inst!290))

(assert (= (and b!54478 res!24986) b!54479))

(assert (= neg-inst!278 inst!291))

(assert (=> b!54456 d!44980))

(assert (=> b!54425 d!44950))

(assert (=> b!54425 d!44952))

(declare-fun tp!15356 () Bool)

(declare-fun e!28555 () Bool)

(declare-fun tp!15355 () Bool)

(declare-fun b!54480 () Bool)

(assert (=> b!54480 (= e!28555 (and (inv!977 (left!1150 (left!1150 (left!1150 thiss!7629)))) tp!15355 (inv!977 (right!1153 (left!1150 (left!1150 thiss!7629)))) tp!15356))))

(assert (=> b!54455 (= tp!15351 (and (inv!977 (left!1150 (left!1150 thiss!7629))) e!28555))))

(assert (= (and b!54455 (is-Node!120 (left!1150 (left!1150 thiss!7629)))) b!54480))

(declare-fun m!58614 () Bool)

(assert (=> b!54480 m!58614))

(declare-fun m!58616 () Bool)

(assert (=> b!54480 m!58616))

(assert (=> b!54455 m!58556))

(declare-fun b!54481 () Bool)

(declare-fun tp!15357 () Bool)

(declare-fun e!28556 () Bool)

(declare-fun tp!15358 () Bool)

(assert (=> b!54481 (= e!28556 (and (inv!977 (left!1150 (right!1153 (left!1150 thiss!7629)))) tp!15357 (inv!977 (right!1153 (right!1153 (left!1150 thiss!7629)))) tp!15358))))

(assert (=> b!54455 (= tp!15352 (and (inv!977 (right!1153 (left!1150 thiss!7629))) e!28556))))

(assert (= (and b!54455 (is-Node!120 (right!1153 (left!1150 thiss!7629)))) b!54481))

(declare-fun m!58618 () Bool)

(assert (=> b!54481 m!58618))

(declare-fun m!58620 () Bool)

(assert (=> b!54481 m!58620))

(assert (=> b!54455 m!58558))

(declare-fun e!28557 () Bool)

(declare-fun tp!15360 () Bool)

(declare-fun b!54482 () Bool)

(declare-fun tp!15359 () Bool)

(assert (=> b!54482 (= e!28557 (and (inv!977 (left!1150 (left!1150 (right!1153 thiss!7629)))) tp!15359 (inv!977 (right!1153 (left!1150 (right!1153 thiss!7629)))) tp!15360))))

(assert (=> b!54456 (= tp!15353 (and (inv!977 (left!1150 (right!1153 thiss!7629))) e!28557))))

(assert (= (and b!54456 (is-Node!120 (left!1150 (right!1153 thiss!7629)))) b!54482))

(declare-fun m!58622 () Bool)

(assert (=> b!54482 m!58622))

(declare-fun m!58624 () Bool)

(assert (=> b!54482 m!58624))

(assert (=> b!54456 m!58560))

(declare-fun b!54483 () Bool)

(declare-fun tp!15362 () Bool)

(declare-fun e!28558 () Bool)

(declare-fun tp!15361 () Bool)

(assert (=> b!54483 (= e!28558 (and (inv!977 (left!1150 (right!1153 (right!1153 thiss!7629)))) tp!15361 (inv!977 (right!1153 (right!1153 (right!1153 thiss!7629)))) tp!15362))))

(assert (=> b!54456 (= tp!15354 (and (inv!977 (right!1153 (right!1153 thiss!7629))) e!28558))))

(assert (= (and b!54456 (is-Node!120 (right!1153 (right!1153 thiss!7629)))) b!54483))

(declare-fun m!58626 () Bool)

(assert (=> b!54483 m!58626))

(declare-fun m!58628 () Bool)

(assert (=> b!54483 m!58628))

(assert (=> b!54456 m!58562))

(push 1)

(assert (not b!54478))

(assert (not b!54468))

(assert (not b!54462))

(assert (not neg-inst!276))

(assert (not neg-inst!274))

(assert (not neg-inst!279))

(assert (not b!54456))

(assert (not b!54467))

(assert (not neg-inst!272))

(assert (not b!54458))

(assert (not b!54455))

(assert (not neg-inst!275))

(assert (not b!54460))

(assert (not b!54475))

(assert (not b!54465))

(assert (not b!54471))

(assert (not b!54479))

(assert (not b!54481))

(assert (not b!54483))

(assert (not b!54477))

(assert (not b!54482))

(assert (not neg-inst!278))

(assert (not b!54480))

(assert (not neg-inst!273))

(assert (not b!54476))

(assert (not neg-inst!277))

(assert (not d!44964))

(assert (not b!54473))

(assert (not b!54466))

(assert (not b!54469))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!25396 () Bool)

(declare-fun s!1179 () Bool)

(assert (= bs!25396 (and neg-inst!267 s!1179)))

(assert (=> bs!25396 (=> true (or (not (member x!21674 (content!17 (left!1150 (left!1150 thiss!7629))))) (bvslt x!21674 (elem!220 (left!1150 thiss!7629)))))))

(declare-fun m!58630 () Bool)

(assert (=> m!58536 m!58630))

(assert (=> m!58536 s!1179))

(declare-fun bs!25397 () Bool)

(declare-fun s!1181 () Bool)

(assert (= bs!25397 (and neg-inst!267 s!1181)))

(assert (=> bs!25397 (=> true (or (not (member (elem!220 thiss!7629) (content!17 (left!1150 (left!1150 thiss!7629))))) (bvslt (elem!220 thiss!7629) (elem!220 (left!1150 thiss!7629)))))))

(declare-fun m!58632 () Bool)

(assert (=> m!58550 m!58632))

(assert (=> m!58550 s!1181))

(declare-fun bs!25398 () Bool)

(declare-fun s!1183 () Bool)

(assert (= bs!25398 (and neg-inst!267 s!1183)))

(assert (=> bs!25398 (=> true (or (not (member x!21384 (content!17 (left!1150 (left!1150 thiss!7629))))) (bvslt x!21384 (elem!220 (left!1150 thiss!7629)))))))

(declare-fun m!58634 () Bool)

(assert (=> m!58520 m!58634))

(assert (=> m!58520 s!1183))

(declare-fun bs!25399 () Bool)

(declare-fun s!1185 () Bool)

(assert (= bs!25399 (and neg-inst!267 s!1185)))

(assert (=> bs!25399 (=> true (or (not (member x!21673 (content!17 (left!1150 (left!1150 thiss!7629))))) (bvslt x!21673 (elem!220 (left!1150 thiss!7629)))))))

(declare-fun m!58636 () Bool)

(assert (=> m!58532 m!58636))

(assert (=> m!58532 s!1185))

(assert (=> m!58552 s!1183))

(declare-fun bs!25400 () Bool)

(declare-fun s!1187 () Bool)

(assert (= bs!25400 (and neg-inst!267 s!1187)))

(assert (=> bs!25400 (=> true (or (not (member x!21676 (content!17 (left!1150 (left!1150 thiss!7629))))) (bvslt x!21676 (elem!220 (left!1150 thiss!7629)))))))

(declare-fun m!58638 () Bool)

(assert (=> m!58544 m!58638))

(assert (=> m!58544 s!1187))

(declare-fun bs!25401 () Bool)

(declare-fun s!1189 () Bool)

(assert (= bs!25401 (and neg-inst!267 s!1189)))

(assert (=> bs!25401 (=> true (or (not (member x!21675 (content!17 (left!1150 (left!1150 thiss!7629))))) (bvslt x!21675 (elem!220 (left!1150 thiss!7629)))))))

(declare-fun m!58640 () Bool)

(assert (=> m!58540 m!58640))

(assert (=> m!58540 s!1189))

(declare-fun bs!25402 () Bool)

(declare-fun s!1191 () Bool)

(assert (= bs!25402 (and neg-inst!267 s!1191)))

(assert (=> bs!25402 (=> true (or (not (member x!21677 (content!17 (left!1150 (left!1150 thiss!7629))))) (bvslt x!21677 (elem!220 (left!1150 thiss!7629)))))))

(declare-fun m!58642 () Bool)

(assert (=> m!58548 m!58642))

(assert (=> m!58548 s!1191))

(declare-fun bs!25403 () Bool)

(declare-fun s!1193 () Bool)

(assert (= bs!25403 (and neg-inst!266 s!1193)))

(assert (=> bs!25403 (=> true (or (not (member x!21384 (content!17 (right!1153 (left!1150 thiss!7629))))) (bvslt (elem!220 (left!1150 thiss!7629)) x!21384)))))

(declare-fun m!58644 () Bool)

(assert (=> m!58520 m!58644))

(assert (=> m!58520 s!1193))

(declare-fun bs!25404 () Bool)

(declare-fun s!1195 () Bool)

(assert (= bs!25404 (and neg-inst!266 s!1195)))

(assert (=> bs!25404 (=> true (or (not (member x!21672 (content!17 (right!1153 (left!1150 thiss!7629))))) (bvslt (elem!220 (left!1150 thiss!7629)) x!21672)))))

(declare-fun m!58646 () Bool)

(assert (=> m!58528 m!58646))

(assert (=> m!58528 s!1195))

(declare-fun bs!25405 () Bool)

(declare-fun s!1197 () Bool)

(assert (= bs!25405 (and neg-inst!266 s!1197)))

(assert (=> bs!25405 (=> true (or (not (member (elem!220 thiss!7629) (content!17 (right!1153 (left!1150 thiss!7629))))) (bvslt (elem!220 (left!1150 thiss!7629)) (elem!220 thiss!7629))))))

(declare-fun m!58648 () Bool)

(assert (=> m!58550 m!58648))

(assert (=> m!58550 s!1197))

(declare-fun bs!25406 () Bool)

(declare-fun s!1199 () Bool)

(assert (= bs!25406 (and neg-inst!266 s!1199)))

(assert (=> bs!25406 (=> true (or (not (member x!21677 (content!17 (right!1153 (left!1150 thiss!7629))))) (bvslt (elem!220 (left!1150 thiss!7629)) x!21677)))))

(declare-fun m!58650 () Bool)

(assert (=> m!58548 m!58650))

(assert (=> m!58548 s!1199))

(declare-fun bs!25407 () Bool)

(declare-fun s!1201 () Bool)

(assert (= bs!25407 (and neg-inst!266 s!1201)))

(assert (=> bs!25407 (=> true (or (not (member x!21675 (content!17 (right!1153 (left!1150 thiss!7629))))) (bvslt (elem!220 (left!1150 thiss!7629)) x!21675)))))

(declare-fun m!58652 () Bool)

(assert (=> m!58540 m!58652))

(assert (=> m!58540 s!1201))

(declare-fun bs!25408 () Bool)

(declare-fun s!1203 () Bool)

(assert (= bs!25408 (and neg-inst!266 s!1203)))

(assert (=> bs!25408 (=> true (or (not (member x!21674 (content!17 (right!1153 (left!1150 thiss!7629))))) (bvslt (elem!220 (left!1150 thiss!7629)) x!21674)))))

(declare-fun m!58654 () Bool)

(assert (=> m!58536 m!58654))

(assert (=> m!58536 s!1203))

(assert (=> m!58552 s!1193))

(declare-fun bs!25409 () Bool)

(declare-fun s!1205 () Bool)

(assert (= bs!25409 (and neg-inst!266 s!1205)))

(assert (=> bs!25409 (=> true (or (not (member x!21676 (content!17 (right!1153 (left!1150 thiss!7629))))) (bvslt (elem!220 (left!1150 thiss!7629)) x!21676)))))

(declare-fun m!58656 () Bool)

(assert (=> m!58544 m!58656))

(assert (=> m!58544 s!1205))

(declare-fun bs!25410 () Bool)

(declare-fun s!1207 () Bool)

(assert (= bs!25410 (and neg-inst!269 s!1207)))

(assert (=> bs!25410 (=> true (or (not (member (elem!220 thiss!7629) (content!17 (left!1150 (right!1153 thiss!7629))))) (bvslt (elem!220 thiss!7629) (elem!220 (right!1153 thiss!7629)))))))

(declare-fun m!58658 () Bool)

(assert (=> m!58550 m!58658))

(assert (=> m!58550 s!1207))

(declare-fun bs!25411 () Bool)

(declare-fun s!1209 () Bool)

(assert (= bs!25411 (and neg-inst!269 s!1209)))

(assert (=> bs!25411 (=> true (or (not (member x!21384 (content!17 (left!1150 (right!1153 thiss!7629))))) (bvslt x!21384 (elem!220 (right!1153 thiss!7629)))))))

(declare-fun m!58660 () Bool)

(assert (=> m!58520 m!58660))

(assert (=> m!58520 s!1209))

(declare-fun bs!25412 () Bool)

(declare-fun s!1211 () Bool)

(assert (= bs!25412 (and neg-inst!269 s!1211)))

(assert (=> bs!25412 (=> true (or (not (member x!21673 (content!17 (left!1150 (right!1153 thiss!7629))))) (bvslt x!21673 (elem!220 (right!1153 thiss!7629)))))))

(declare-fun m!58662 () Bool)

(assert (=> m!58532 m!58662))

(assert (=> m!58532 s!1211))

(assert (=> m!58552 s!1209))

(declare-fun bs!25413 () Bool)

(declare-fun s!1213 () Bool)

(assert (= bs!25413 (and neg-inst!269 s!1213)))

(assert (=> bs!25413 (=> true (or (not (member x!21676 (content!17 (left!1150 (right!1153 thiss!7629))))) (bvslt x!21676 (elem!220 (right!1153 thiss!7629)))))))

(declare-fun m!58664 () Bool)

(assert (=> m!58544 m!58664))

(assert (=> m!58544 s!1213))

(declare-fun bs!25414 () Bool)

(declare-fun s!1215 () Bool)

(assert (= bs!25414 (and neg-inst!269 s!1215)))

(assert (=> bs!25414 (=> true (or (not (member x!21675 (content!17 (left!1150 (right!1153 thiss!7629))))) (bvslt x!21675 (elem!220 (right!1153 thiss!7629)))))))

(declare-fun m!58666 () Bool)

(assert (=> m!58540 m!58666))

(assert (=> m!58540 s!1215))

(declare-fun bs!25415 () Bool)

(declare-fun s!1217 () Bool)

(assert (= bs!25415 (and neg-inst!269 s!1217)))

(assert (=> bs!25415 (=> true (or (not (member x!21677 (content!17 (left!1150 (right!1153 thiss!7629))))) (bvslt x!21677 (elem!220 (right!1153 thiss!7629)))))))

(declare-fun m!58668 () Bool)

(assert (=> m!58548 m!58668))

(assert (=> m!58548 s!1217))

(declare-fun bs!25416 () Bool)

(declare-fun s!1219 () Bool)

(assert (= bs!25416 (and neg-inst!269 s!1219)))

(assert (=> bs!25416 (=> true (or (not (member x!21672 (content!17 (left!1150 (right!1153 thiss!7629))))) (bvslt x!21672 (elem!220 (right!1153 thiss!7629)))))))

(declare-fun m!58670 () Bool)

(assert (=> m!58528 m!58670))

(assert (=> m!58528 s!1219))

(declare-fun bs!25417 () Bool)

(declare-fun s!1221 () Bool)

(assert (= bs!25417 (and neg-inst!268 s!1221)))

(assert (=> bs!25417 (=> true (or (not (member x!21384 (content!17 (right!1153 (right!1153 thiss!7629))))) (bvslt (elem!220 (right!1153 thiss!7629)) x!21384)))))

(declare-fun m!58672 () Bool)

(assert (=> m!58520 m!58672))

(assert (=> m!58520 s!1221))

(declare-fun bs!25418 () Bool)

(declare-fun s!1223 () Bool)

(assert (= bs!25418 (and neg-inst!268 s!1223)))

(assert (=> bs!25418 (=> true (or (not (member x!21672 (content!17 (right!1153 (right!1153 thiss!7629))))) (bvslt (elem!220 (right!1153 thiss!7629)) x!21672)))))

(declare-fun m!58674 () Bool)

(assert (=> m!58528 m!58674))

(assert (=> m!58528 s!1223))

(declare-fun bs!25419 () Bool)

(declare-fun s!1225 () Bool)

(assert (= bs!25419 (and neg-inst!268 s!1225)))

(assert (=> bs!25419 (=> true (or (not (member (elem!220 thiss!7629) (content!17 (right!1153 (right!1153 thiss!7629))))) (bvslt (elem!220 (right!1153 thiss!7629)) (elem!220 thiss!7629))))))

(declare-fun m!58676 () Bool)

(assert (=> m!58550 m!58676))

(assert (=> m!58550 s!1225))

(declare-fun bs!25420 () Bool)

(declare-fun s!1227 () Bool)

(assert (= bs!25420 (and neg-inst!268 s!1227)))

(assert (=> bs!25420 (=> true (or (not (member x!21677 (content!17 (right!1153 (right!1153 thiss!7629))))) (bvslt (elem!220 (right!1153 thiss!7629)) x!21677)))))

(declare-fun m!58678 () Bool)

(assert (=> m!58548 m!58678))

(assert (=> m!58548 s!1227))

(declare-fun bs!25421 () Bool)

(declare-fun s!1229 () Bool)

(assert (= bs!25421 (and neg-inst!268 s!1229)))

(assert (=> bs!25421 (=> true (or (not (member x!21673 (content!17 (right!1153 (right!1153 thiss!7629))))) (bvslt (elem!220 (right!1153 thiss!7629)) x!21673)))))

(declare-fun m!58680 () Bool)

(assert (=> m!58532 m!58680))

(assert (=> m!58532 s!1229))

(declare-fun bs!25422 () Bool)

(declare-fun s!1231 () Bool)

(assert (= bs!25422 (and neg-inst!268 s!1231)))

(assert (=> bs!25422 (=> true (or (not (member x!21674 (content!17 (right!1153 (right!1153 thiss!7629))))) (bvslt (elem!220 (right!1153 thiss!7629)) x!21674)))))

(declare-fun m!58682 () Bool)

(assert (=> m!58536 m!58682))

(assert (=> m!58536 s!1231))

(assert (=> m!58552 s!1221))

(declare-fun bs!25423 () Bool)

(declare-fun s!1233 () Bool)

(assert (= bs!25423 (and neg-inst!268 s!1233)))

(assert (=> bs!25423 (=> true (or (not (member x!21676 (content!17 (right!1153 (right!1153 thiss!7629))))) (bvslt (elem!220 (right!1153 thiss!7629)) x!21676)))))

(declare-fun m!58684 () Bool)

(assert (=> m!58544 m!58684))

(assert (=> m!58544 s!1233))

(declare-fun bs!25424 () Bool)

(declare-fun s!1235 () Bool)

(assert (= bs!25424 (and neg-inst!271 s!1235)))

(assert (=> bs!25424 (=> true (or (not (member x!21674 (content!17 (left!1150 thiss!7629)))) (bvslt x!21674 (elem!220 thiss!7629))))))

(declare-fun m!58686 () Bool)

(assert (=> m!58536 m!58686))

(assert (=> m!58536 s!1235))

(declare-fun bs!25425 () Bool)

(declare-fun s!1237 () Bool)

(assert (= bs!25425 (and neg-inst!271 s!1237)))

(assert (=> bs!25425 (=> true (or (not (member (elem!220 thiss!7629) (content!17 (left!1150 thiss!7629)))) (bvslt (elem!220 thiss!7629) (elem!220 thiss!7629))))))

(declare-fun m!58688 () Bool)

(assert (=> m!58550 m!58688))

(assert (=> m!58550 s!1237))

(declare-fun bs!25426 () Bool)

(declare-fun s!1239 () Bool)

(assert (= bs!25426 (and neg-inst!271 s!1239)))

(assert (=> bs!25426 (=> true (or (not (member x!21384 (content!17 (left!1150 thiss!7629)))) (bvslt x!21384 (elem!220 thiss!7629))))))

(declare-fun m!58690 () Bool)

(assert (=> m!58520 m!58690))

(assert (=> m!58520 s!1239))

(declare-fun bs!25427 () Bool)

(declare-fun s!1241 () Bool)

(assert (= bs!25427 (and neg-inst!271 s!1241)))

(assert (=> bs!25427 (=> true (or (not (member x!21673 (content!17 (left!1150 thiss!7629)))) (bvslt x!21673 (elem!220 thiss!7629))))))

(declare-fun m!58692 () Bool)

(assert (=> m!58532 m!58692))

(assert (=> m!58532 s!1241))

(assert (=> m!58552 s!1239))

(declare-fun bs!25428 () Bool)

(declare-fun s!1243 () Bool)

(assert (= bs!25428 (and neg-inst!271 s!1243)))

(assert (=> bs!25428 (=> true (or (not (member x!21675 (content!17 (left!1150 thiss!7629)))) (bvslt x!21675 (elem!220 thiss!7629))))))

(declare-fun m!58694 () Bool)

(assert (=> m!58540 m!58694))

(assert (=> m!58540 s!1243))

(declare-fun bs!25429 () Bool)

(declare-fun s!1245 () Bool)

(assert (= bs!25429 (and neg-inst!271 s!1245)))

(assert (=> bs!25429 (=> true (or (not (member x!21677 (content!17 (left!1150 thiss!7629)))) (bvslt x!21677 (elem!220 thiss!7629))))))

(declare-fun m!58696 () Bool)

(assert (=> m!58548 m!58696))

(assert (=> m!58548 s!1245))

(declare-fun bs!25430 () Bool)

(declare-fun s!1247 () Bool)

(assert (= bs!25430 (and neg-inst!271 s!1247)))

(assert (=> bs!25430 (=> true (or (not (member x!21672 (content!17 (left!1150 thiss!7629)))) (bvslt x!21672 (elem!220 thiss!7629))))))

(declare-fun m!58698 () Bool)

(assert (=> m!58528 m!58698))

(assert (=> m!58528 s!1247))

(assert (=> m!58520 s!1161))

(declare-fun bs!25431 () Bool)

(declare-fun s!1249 () Bool)

(assert (= bs!25431 (and neg-inst!270 s!1249)))

(assert (=> bs!25431 (=> true (or (not (member x!21672 (content!17 (right!1153 thiss!7629)))) (bvslt (elem!220 thiss!7629) x!21672)))))

(declare-fun m!58700 () Bool)

(assert (=> m!58528 m!58700))

(assert (=> m!58528 s!1249))

(declare-fun bs!25432 () Bool)

(declare-fun s!1251 () Bool)

(assert (= bs!25432 (and neg-inst!270 s!1251)))

(assert (=> bs!25432 (=> true (or (not (member (elem!220 thiss!7629) (content!17 (right!1153 thiss!7629)))) (bvslt (elem!220 thiss!7629) (elem!220 thiss!7629))))))

(declare-fun m!58702 () Bool)

(assert (=> m!58550 m!58702))

(assert (=> m!58550 s!1251))

(declare-fun bs!25433 () Bool)

(declare-fun s!1253 () Bool)

(assert (= bs!25433 (and neg-inst!270 s!1253)))

(assert (=> bs!25433 (=> true (or (not (member x!21675 (content!17 (right!1153 thiss!7629)))) (bvslt (elem!220 thiss!7629) x!21675)))))

(declare-fun m!58704 () Bool)

(assert (=> m!58540 m!58704))

(assert (=> m!58540 s!1253))

(declare-fun bs!25434 () Bool)

(declare-fun s!1255 () Bool)

(assert (= bs!25434 (and neg-inst!270 s!1255)))

(assert (=> bs!25434 (=> true (or (not (member x!21673 (content!17 (right!1153 thiss!7629)))) (bvslt (elem!220 thiss!7629) x!21673)))))

(declare-fun m!58706 () Bool)

(assert (=> m!58532 m!58706))

(assert (=> m!58532 s!1255))

(declare-fun bs!25435 () Bool)

(declare-fun s!1257 () Bool)

(assert (= bs!25435 (and neg-inst!270 s!1257)))

(assert (=> bs!25435 (=> true (or (not (member x!21674 (content!17 (right!1153 thiss!7629)))) (bvslt (elem!220 thiss!7629) x!21674)))))

(declare-fun m!58708 () Bool)

(assert (=> m!58536 m!58708))

(assert (=> m!58536 s!1257))

(declare-fun bs!25436 () Bool)

(declare-fun s!1259 () Bool)

(assert (= bs!25436 (and neg-inst!270 s!1259)))

(assert (=> bs!25436 (=> true (or (not (member x!21676 (content!17 (right!1153 thiss!7629)))) (bvslt (elem!220 thiss!7629) x!21676)))))

(declare-fun m!58710 () Bool)

(assert (=> m!58544 m!58710))

(assert (=> m!58544 s!1259))

(push 1)

(assert (not b!54478))

(assert (not b!54468))

(assert (not b!54462))

(assert (not neg-inst!276))

(assert (not neg-inst!274))

(assert (not neg-inst!279))

(assert (not b!54456))

(assert (not b!54467))

(assert (not neg-inst!272))

(assert (not b!54458))

(assert (not b!54455))

(assert (not neg-inst!275))

(assert (not b!54460))

(assert (not b!54475))

(assert (not b!54465))

(assert (not b!54471))

(assert (not b!54479))

(assert (not b!54481))

(assert (not b!54483))

(assert (not b!54477))

(assert (not b!54482))

(assert (not neg-inst!278))

(assert (not b!54480))

(assert (not neg-inst!273))

(assert (not b!54476))

(assert (not neg-inst!277))

(assert (not d!44964))

(assert (not b!54473))

(assert (not b!54466))

(assert (not b!54469))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

