; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10464 () Bool)

(assert start!10464)

(declare-fun b!79547 () Bool)

(declare-fun res!40220 () Bool)

(declare-fun e!43088 () Bool)

(assert (=> b!79547 (=> res!40220 e!43088)))

(declare-datatypes () ((List!645 (Cons!603 (h!890 Int) (t!47632 List!645)) (Nil!605))))

(declare-fun l!1420 () List!645)

(declare-fun x!29137 () Int)

(declare-fun contains!47 (List!645 Int) Bool)

(assert (=> b!79547 (= res!40220 (not (contains!47 l!1420 x!29137)))))

(declare-fun inst!490 () Bool)

(assert (=> b!79547 (= inst!490 (=> true e!43088))))

(declare-fun b!79549 () Bool)

(declare-fun x!29080 () Int)

(assert (=> b!79549 (= e!43088 (<= x!29137 x!29080))))

(assert (= (and b!79547 (not res!40220)) b!79549))

(declare-fun m!74148 () Bool)

(assert (=> b!79547 m!74148))

(declare-fun b!79548 () Bool)

(declare-fun res!40221 () Bool)

(declare-fun e!43089 () Bool)

(assert (=> b!79548 (=> res!40221 e!43089)))

(declare-fun r!612 () List!645)

(declare-fun x!29138 () Int)

(assert (=> b!79548 (= res!40221 (not (contains!47 r!612 x!29138)))))

(declare-fun inst!491 () Bool)

(assert (=> b!79548 (= inst!491 (=> true e!43089))))

(declare-fun b!79550 () Bool)

(assert (=> b!79550 (= e!43089 (< x!29080 x!29138))))

(assert (= (and b!79548 (not res!40221)) b!79550))

(declare-fun m!74150 () Bool)

(assert (=> b!79548 m!74150))

(declare-fun m!74152 () Bool)

(assert (=> start!10464 m!74152))

(declare-fun bs!38086 () Bool)

(assert (= bs!38086 (and start!10464 b!79547)))

(declare-fun x!29075 () Int)

(declare-fun l!1419 () List!645)

(assert (=> (and bs!38086 (= l!1419 l!1420) (= x!29075 x!29080)) (= true inst!490)))

(declare-fun b!79545 () Bool)

(declare-fun m!74154 () Bool)

(assert (=> b!79545 m!74154))

(declare-fun bs!38087 () Bool)

(assert (= bs!38087 (and b!79545 start!10464)))

(declare-fun r!611 () List!645)

(declare-fun content!108 (List!645) (Set Int))

(assert (=> (and bs!38087 (= r!611 l!1419) (= (content!108 r!611) (content!108 l!1419))) (= true true)))

(declare-fun bs!38088 () Bool)

(assert (= bs!38088 (and b!79545 b!79548)))

(assert (=> (and bs!38088 (= r!611 r!612) (= x!29075 x!29080)) (= true inst!491)))

(declare-fun m!74156 () Bool)

(assert (=> b!79547 m!74156))

(declare-fun bs!38089 () Bool)

(declare-fun b!79546 () Bool)

(declare-fun s!2343 () Bool)

(assert (= bs!38089 (and b!79545 b!79547 b!79546 start!10464 s!2343)))

(assert (=> bs!38089 (=> true (= (contains!47 l!1420 x!29137) (member x!29137 (content!108 l!1420))))))

(declare-fun bs!38090 () Bool)

(declare-fun m!74158 () Bool)

(assert (= bs!38090 m!74158))

(assert (=> bs!38090 s!2343))

(assert (=> m!74148 m!74158))

(assert (=> m!74148 s!2343))

(declare-fun bs!38091 () Bool)

(assert (= bs!38091 (and b!79547 b!79545)))

(assert (=> (and bs!38091 (= l!1420 r!611) (= (content!108 l!1420) (content!108 r!611))) (= true true)))

(assert (=> (and bs!38086 (= l!1420 l!1419) (= (content!108 l!1420) (content!108 l!1419))) (= true true)))

(declare-fun bs!38092 () Bool)

(declare-fun neg-inst!440 () Bool)

(declare-fun s!2345 () Bool)

(assert (= bs!38092 (and neg-inst!440 s!2345)))

(declare-fun res!40222 () Bool)

(declare-fun e!43090 () Bool)

(assert (=> bs!38092 (=> res!40222 e!43090)))

(assert (=> bs!38092 (= res!40222 (not (contains!47 l!1420 x!29137)))))

(assert (=> bs!38092 (=> true e!43090)))

(declare-fun b!79551 () Bool)

(assert (=> b!79551 (= e!43090 (<= x!29137 x!29080))))

(assert (= (and bs!38092 (not res!40222)) b!79551))

(assert (=> m!74148 s!2345))

(declare-fun bs!38093 () Bool)

(assert (= bs!38093 (and neg-inst!440 start!10464)))

(assert (=> (and bs!38093 (= l!1420 l!1419) (= x!29080 x!29075)) (= true true)))

(declare-fun bs!38094 () Bool)

(assert (= bs!38094 (and neg-inst!440 b!79547)))

(assert (=> bs!38094 (= true inst!490)))

(declare-fun m!74160 () Bool)

(assert (=> b!79548 m!74160))

(declare-fun bs!38095 () Bool)

(declare-fun s!2347 () Bool)

(assert (= bs!38095 (and b!79545 b!79547 b!79546 b!79548 start!10464 s!2347)))

(assert (=> bs!38095 (=> true (= (contains!47 r!612 x!29138) (member x!29138 (content!108 r!612))))))

(declare-fun bs!38096 () Bool)

(declare-fun m!74162 () Bool)

(assert (= bs!38096 m!74162))

(assert (=> bs!38096 s!2347))

(assert (=> m!74150 m!74162))

(assert (=> m!74150 s!2347))

(assert (=> (and bs!38088 (= r!612 r!611) (= (content!108 r!612) (content!108 r!611))) (= true true)))

(declare-fun bs!38097 () Bool)

(assert (= bs!38097 (and b!79548 b!79547)))

(assert (=> (and bs!38097 (= r!612 l!1420) (= (content!108 r!612) (content!108 l!1420))) (= true true)))

(declare-fun bs!38098 () Bool)

(assert (= bs!38098 (and b!79548 start!10464)))

(assert (=> (and bs!38098 (= r!612 l!1419) (= (content!108 r!612) (content!108 l!1419))) (= true true)))

(declare-fun e!43086 () Bool)

(declare-fun e!43087 () Bool)

(assert (=> b!79547 (= e!43086 e!43087)))

(declare-fun res!40216 () Bool)

(assert (=> b!79547 (=> res!40216 e!43087)))

(assert (=> b!79547 (= res!40216 (not inst!490))))

(assert (=> b!79547 true))

(assert (=> b!79548 (= e!43087 (not inst!491))))

(assert (=> b!79548 true))

(declare-fun res!40217 () Bool)

(assert (=> b!79546 (=> (not res!40217) (not e!43086))))

(declare-fun ls!27 () List!645)

(declare-fun ls!28 () List!645)

(assert (=> b!79546 (= res!40217 (and (not (is-Nil!605 ls!27)) (<= (h!890 ls!27) x!29075) (= x!29080 x!29075) (= l!1420 (Cons!603 (h!890 ls!27) l!1419)) (= r!612 r!611) (= ls!28 (t!47632 ls!27))))))

(declare-fun res!40218 () Bool)

(assert (=> b!79545 (=> (not res!40218) (not e!43086))))

(assert (=> b!79545 (= res!40218 true)))

(assert (=> b!79545 true))

(declare-fun res!40219 () Bool)

(assert (=> start!10464 (=> (not res!40219) (not e!43086))))

(assert (=> start!10464 (= res!40219 true)))

(assert (=> start!10464 true))

(assert (=> start!10464 e!43086))

(assert (= (and start!10464 res!40219) b!79545))

(assert (= (and b!79545 res!40218) b!79546))

(assert (= (and b!79546 res!40217) b!79547))

(assert (= neg-inst!440 inst!490))

(assert (= (and b!79547 (not res!40216)) b!79548))

(push 1)

(assert (not b!79547))

(assert (not start!10464))

(assert (not bs!38092))

(assert (not bs!38089))

(assert (not bs!38095))

(assert (not b!79545))

(assert (not b!79548))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!55155 () Bool)

(declare-fun c!20199 () Bool)

(assert (=> d!55155 (= c!20199 (is-Nil!605 r!611))))

(declare-fun e!43093 () (Set Int))

(assert (=> d!55155 (= (content!108 r!611) e!43093)))

(declare-fun b!79556 () Bool)

(assert (=> b!79556 (= e!43093 (as emptyset (Set Int)))))

(declare-fun b!79557 () Bool)

(assert (=> b!79557 (= e!43093 (union (insert (h!890 r!611) (as emptyset (Set Int))) (content!108 (t!47632 r!611))))))

(assert (= (and d!55155 c!20199) b!79556))

(assert (= (and d!55155 (not c!20199)) b!79557))

(declare-fun m!74164 () Bool)

(assert (=> b!79557 m!74164))

(declare-fun m!74166 () Bool)

(assert (=> b!79557 m!74166))

(assert (=> b!79545 d!55155))

(declare-fun d!55157 () Bool)

(declare-fun lt!18249 () Bool)

(assert (=> d!55157 (= lt!18249 (member x!29138 (content!108 r!612)))))

(declare-fun e!43099 () Bool)

(assert (=> d!55157 (= lt!18249 e!43099)))

(declare-fun res!40228 () Bool)

(assert (=> d!55157 (=> (not res!40228) (not e!43099))))

(assert (=> d!55157 (= res!40228 (is-Cons!603 r!612))))

(assert (=> d!55157 (= (contains!47 r!612 x!29138) lt!18249)))

(declare-fun b!79562 () Bool)

(declare-fun e!43098 () Bool)

(assert (=> b!79562 (= e!43099 e!43098)))

(declare-fun res!40227 () Bool)

(assert (=> b!79562 (=> res!40227 e!43098)))

(assert (=> b!79562 (= res!40227 (= (h!890 r!612) x!29138))))

(declare-fun b!79563 () Bool)

(assert (=> b!79563 (= e!43098 (contains!47 (t!47632 r!612) x!29138))))

(assert (= (and d!55157 res!40228) b!79562))

(assert (= (and b!79562 (not res!40227)) b!79563))

(assert (=> d!55157 m!74160))

(assert (=> d!55157 m!74162))

(declare-fun bs!38099 () Bool)

(declare-fun m!74168 () Bool)

(assert (= bs!38099 m!74168))

(assert (=> bs!38099 s!2347))

(assert (=> b!79563 m!74168))

(assert (=> bs!38095 d!55157))

(declare-fun d!55159 () Bool)

(declare-fun lt!18250 () Bool)

(assert (=> d!55159 (= lt!18250 (member x!29137 (content!108 l!1420)))))

(declare-fun e!43101 () Bool)

(assert (=> d!55159 (= lt!18250 e!43101)))

(declare-fun res!40230 () Bool)

(assert (=> d!55159 (=> (not res!40230) (not e!43101))))

(assert (=> d!55159 (= res!40230 (is-Cons!603 l!1420))))

(assert (=> d!55159 (= (contains!47 l!1420 x!29137) lt!18250)))

(declare-fun b!79564 () Bool)

(declare-fun e!43100 () Bool)

(assert (=> b!79564 (= e!43101 e!43100)))

(declare-fun res!40229 () Bool)

(assert (=> b!79564 (=> res!40229 e!43100)))

(assert (=> b!79564 (= res!40229 (= (h!890 l!1420) x!29137))))

(declare-fun b!79565 () Bool)

(assert (=> b!79565 (= e!43100 (contains!47 (t!47632 l!1420) x!29137))))

(assert (= (and d!55159 res!40230) b!79564))

(assert (= (and b!79564 (not res!40229)) b!79565))

(assert (=> d!55159 m!74156))

(assert (=> d!55159 m!74158))

(declare-fun bs!38100 () Bool)

(declare-fun m!74170 () Bool)

(assert (= bs!38100 m!74170))

(assert (=> bs!38100 s!2343))

(assert (=> bs!38100 s!2345))

(assert (=> b!79565 m!74170))

(assert (=> b!79547 d!55159))

(declare-fun d!55161 () Bool)

(declare-fun c!20200 () Bool)

(assert (=> d!55161 (= c!20200 (is-Nil!605 l!1420))))

(declare-fun e!43102 () (Set Int))

(assert (=> d!55161 (= (content!108 l!1420) e!43102)))

(declare-fun b!79566 () Bool)

(assert (=> b!79566 (= e!43102 (as emptyset (Set Int)))))

(declare-fun b!79567 () Bool)

(assert (=> b!79567 (= e!43102 (union (insert (h!890 l!1420) (as emptyset (Set Int))) (content!108 (t!47632 l!1420))))))

(assert (= (and d!55161 c!20200) b!79566))

(assert (= (and d!55161 (not c!20200)) b!79567))

(declare-fun m!74172 () Bool)

(assert (=> b!79567 m!74172))

(declare-fun m!74174 () Bool)

(assert (=> b!79567 m!74174))

(assert (=> b!79547 d!55161))

(assert (=> bs!38092 d!55159))

(assert (=> b!79548 d!55157))

(declare-fun d!55163 () Bool)

(declare-fun c!20201 () Bool)

(assert (=> d!55163 (= c!20201 (is-Nil!605 r!612))))

(declare-fun e!43103 () (Set Int))

(assert (=> d!55163 (= (content!108 r!612) e!43103)))

(declare-fun b!79568 () Bool)

(assert (=> b!79568 (= e!43103 (as emptyset (Set Int)))))

(declare-fun b!79569 () Bool)

(assert (=> b!79569 (= e!43103 (union (insert (h!890 r!612) (as emptyset (Set Int))) (content!108 (t!47632 r!612))))))

(assert (= (and d!55163 c!20201) b!79568))

(assert (= (and d!55163 (not c!20201)) b!79569))

(declare-fun m!74176 () Bool)

(assert (=> b!79569 m!74176))

(declare-fun m!74178 () Bool)

(assert (=> b!79569 m!74178))

(assert (=> b!79548 d!55163))

(declare-fun d!55165 () Bool)

(declare-fun c!20202 () Bool)

(assert (=> d!55165 (= c!20202 (is-Nil!605 l!1419))))

(declare-fun e!43104 () (Set Int))

(assert (=> d!55165 (= (content!108 l!1419) e!43104)))

(declare-fun b!79570 () Bool)

(assert (=> b!79570 (= e!43104 (as emptyset (Set Int)))))

(declare-fun b!79571 () Bool)

(assert (=> b!79571 (= e!43104 (union (insert (h!890 l!1419) (as emptyset (Set Int))) (content!108 (t!47632 l!1419))))))

(assert (= (and d!55165 c!20202) b!79570))

(assert (= (and d!55165 (not c!20202)) b!79571))

(declare-fun m!74180 () Bool)

(assert (=> b!79571 m!74180))

(declare-fun m!74182 () Bool)

(assert (=> b!79571 m!74182))

(assert (=> start!10464 d!55165))

(push 1)

(assert (not d!55157))

(assert (not b!79557))

(assert (not b!79565))

(assert (not b!79567))

(assert (not b!79569))

(assert (not bs!38089))

(assert (not b!79571))

(assert (not b!79563))

(assert (not d!55159))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> d!55157 d!55163))

(assert (=> d!55159 d!55161))

(push 1)

(assert (not b!79557))

(assert (not b!79565))

(assert (not b!79567))

(assert (not b!79569))

(assert (not bs!38089))

(assert (not b!79571))

(assert (not b!79563))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!55167 () Bool)

(declare-fun c!20203 () Bool)

(assert (=> d!55167 (= c!20203 (is-Nil!605 (t!47632 l!1419)))))

(declare-fun e!43105 () (Set Int))

(assert (=> d!55167 (= (content!108 (t!47632 l!1419)) e!43105)))

(declare-fun b!79572 () Bool)

(assert (=> b!79572 (= e!43105 (as emptyset (Set Int)))))

(declare-fun b!79573 () Bool)

(assert (=> b!79573 (= e!43105 (union (insert (h!890 (t!47632 l!1419)) (as emptyset (Set Int))) (content!108 (t!47632 (t!47632 l!1419)))))))

(assert (= (and d!55167 c!20203) b!79572))

(assert (= (and d!55167 (not c!20203)) b!79573))

(declare-fun m!74184 () Bool)

(assert (=> b!79573 m!74184))

(declare-fun m!74186 () Bool)

(assert (=> b!79573 m!74186))

(assert (=> b!79571 d!55167))

(declare-fun d!55169 () Bool)

(declare-fun c!20204 () Bool)

(assert (=> d!55169 (= c!20204 (is-Nil!605 (t!47632 r!612)))))

(declare-fun e!43106 () (Set Int))

(assert (=> d!55169 (= (content!108 (t!47632 r!612)) e!43106)))

(declare-fun b!79574 () Bool)

(assert (=> b!79574 (= e!43106 (as emptyset (Set Int)))))

(declare-fun b!79575 () Bool)

(assert (=> b!79575 (= e!43106 (union (insert (h!890 (t!47632 r!612)) (as emptyset (Set Int))) (content!108 (t!47632 (t!47632 r!612)))))))

(assert (= (and d!55169 c!20204) b!79574))

(assert (= (and d!55169 (not c!20204)) b!79575))

(declare-fun m!74188 () Bool)

(assert (=> b!79575 m!74188))

(declare-fun m!74190 () Bool)

(assert (=> b!79575 m!74190))

(assert (=> b!79569 d!55169))

(assert (=> bs!38089 d!55159))

(declare-fun d!55171 () Bool)

(declare-fun lt!18251 () Bool)

(assert (=> d!55171 (= lt!18251 (member x!29137 (content!108 (t!47632 l!1420))))))

(declare-fun e!43108 () Bool)

(assert (=> d!55171 (= lt!18251 e!43108)))

(declare-fun res!40232 () Bool)

(assert (=> d!55171 (=> (not res!40232) (not e!43108))))

(assert (=> d!55171 (= res!40232 (is-Cons!603 (t!47632 l!1420)))))

(assert (=> d!55171 (= (contains!47 (t!47632 l!1420) x!29137) lt!18251)))

(declare-fun b!79576 () Bool)

(declare-fun e!43107 () Bool)

(assert (=> b!79576 (= e!43108 e!43107)))

(declare-fun res!40231 () Bool)

(assert (=> b!79576 (=> res!40231 e!43107)))

(assert (=> b!79576 (= res!40231 (= (h!890 (t!47632 l!1420)) x!29137))))

(declare-fun b!79577 () Bool)

(assert (=> b!79577 (= e!43107 (contains!47 (t!47632 (t!47632 l!1420)) x!29137))))

(assert (= (and d!55171 res!40232) b!79576))

(assert (= (and b!79576 (not res!40231)) b!79577))

(assert (=> d!55171 m!74174))

(declare-fun bs!38101 () Bool)

(declare-fun m!74192 () Bool)

(assert (= bs!38101 m!74192))

(assert (=> bs!38101 s!2343))

(assert (=> d!55171 m!74192))

(declare-fun bs!38102 () Bool)

(declare-fun m!74194 () Bool)

(assert (= bs!38102 m!74194))

(assert (=> bs!38102 s!2343))

(assert (=> bs!38102 s!2345))

(assert (=> b!79577 m!74194))

(assert (=> b!79565 d!55171))

(declare-fun d!55173 () Bool)

(declare-fun c!20205 () Bool)

(assert (=> d!55173 (= c!20205 (is-Nil!605 (t!47632 l!1420)))))

(declare-fun e!43109 () (Set Int))

(assert (=> d!55173 (= (content!108 (t!47632 l!1420)) e!43109)))

(declare-fun b!79578 () Bool)

(assert (=> b!79578 (= e!43109 (as emptyset (Set Int)))))

(declare-fun b!79579 () Bool)

(assert (=> b!79579 (= e!43109 (union (insert (h!890 (t!47632 l!1420)) (as emptyset (Set Int))) (content!108 (t!47632 (t!47632 l!1420)))))))

(assert (= (and d!55173 c!20205) b!79578))

(assert (= (and d!55173 (not c!20205)) b!79579))

(declare-fun m!74196 () Bool)

(assert (=> b!79579 m!74196))

(declare-fun m!74198 () Bool)

(assert (=> b!79579 m!74198))

(assert (=> b!79567 d!55173))

(declare-fun d!55175 () Bool)

(declare-fun c!20206 () Bool)

(assert (=> d!55175 (= c!20206 (is-Nil!605 (t!47632 r!611)))))

(declare-fun e!43110 () (Set Int))

(assert (=> d!55175 (= (content!108 (t!47632 r!611)) e!43110)))

(declare-fun b!79580 () Bool)

(assert (=> b!79580 (= e!43110 (as emptyset (Set Int)))))

(declare-fun b!79581 () Bool)

(assert (=> b!79581 (= e!43110 (union (insert (h!890 (t!47632 r!611)) (as emptyset (Set Int))) (content!108 (t!47632 (t!47632 r!611)))))))

(assert (= (and d!55175 c!20206) b!79580))

(assert (= (and d!55175 (not c!20206)) b!79581))

(declare-fun m!74200 () Bool)

(assert (=> b!79581 m!74200))

(declare-fun m!74202 () Bool)

(assert (=> b!79581 m!74202))

(assert (=> b!79557 d!55175))

(declare-fun bs!38103 () Bool)

(declare-fun s!2349 () Bool)

(assert (= bs!38103 (and start!10464 s!2349)))

(assert (=> bs!38103 (=> true (= (contains!47 l!1419 x!29138) (member x!29138 (content!108 l!1419))))))

(declare-fun m!74204 () Bool)

(assert (=> m!74162 m!74204))

(declare-fun m!74206 () Bool)

(assert (=> m!74162 m!74206))

(assert (=> m!74162 s!2349))

(declare-fun bs!38104 () Bool)

(declare-fun s!2351 () Bool)

(assert (= bs!38104 (and start!10464 s!2351)))

(assert (=> bs!38104 (=> true (= (contains!47 l!1419 x!29137) (member x!29137 (content!108 l!1419))))))

(declare-fun m!74208 () Bool)

(assert (=> m!74158 m!74208))

(declare-fun m!74210 () Bool)

(assert (=> m!74158 m!74210))

(assert (=> m!74158 s!2351))

(assert (=> m!74148 s!2351))

(assert (=> m!74150 s!2349))

(declare-fun bs!38105 () Bool)

(declare-fun s!2353 () Bool)

(assert (= bs!38105 (and start!10464 s!2353)))

(declare-fun res!40233 () Bool)

(declare-fun e!43111 () Bool)

(assert (=> bs!38105 (=> res!40233 e!43111)))

(assert (=> bs!38105 (= res!40233 (not (contains!47 l!1419 x!29138)))))

(assert (=> bs!38105 (=> true e!43111)))

(declare-fun b!79582 () Bool)

(assert (=> b!79582 (= e!43111 (<= x!29138 x!29075))))

(assert (= (and bs!38105 (not res!40233)) b!79582))

(assert (=> m!74150 m!74204))

(assert (=> m!74150 s!2353))

(declare-fun bs!38106 () Bool)

(declare-fun s!2355 () Bool)

(assert (= bs!38106 (and start!10464 s!2355)))

(declare-fun res!40234 () Bool)

(declare-fun e!43112 () Bool)

(assert (=> bs!38106 (=> res!40234 e!43112)))

(assert (=> bs!38106 (= res!40234 (not (contains!47 l!1419 x!29137)))))

(assert (=> bs!38106 (=> true e!43112)))

(declare-fun b!79583 () Bool)

(assert (=> b!79583 (= e!43112 (<= x!29137 x!29075))))

(assert (= (and bs!38106 (not res!40234)) b!79583))

(assert (=> m!74148 m!74208))

(assert (=> m!74148 s!2355))

(declare-fun bs!38107 () Bool)

(declare-fun s!2357 () Bool)

(assert (= bs!38107 (and start!10464 b!79545 s!2357)))

(assert (=> bs!38107 (=> true (= (contains!47 r!611 x!29138) (member x!29138 (content!108 r!611))))))

(declare-fun m!74212 () Bool)

(assert (=> m!74150 m!74212))

(declare-fun m!74214 () Bool)

(assert (=> m!74150 m!74214))

(assert (=> m!74150 s!2357))

(assert (=> m!74162 s!2357))

(declare-fun bs!38108 () Bool)

(declare-fun s!2359 () Bool)

(assert (= bs!38108 (and start!10464 b!79545 s!2359)))

(assert (=> bs!38108 (=> true (= (contains!47 r!611 x!29137) (member x!29137 (content!108 r!611))))))

(declare-fun m!74216 () Bool)

(assert (=> m!74158 m!74216))

(declare-fun m!74218 () Bool)

(assert (=> m!74158 m!74218))

(assert (=> m!74158 s!2359))

(assert (=> m!74148 s!2359))

(declare-fun bs!38109 () Bool)

(declare-fun s!2361 () Bool)

(assert (= bs!38109 (and start!10464 b!79545 s!2361)))

(declare-fun res!40235 () Bool)

(declare-fun e!43113 () Bool)

(assert (=> bs!38109 (=> res!40235 e!43113)))

(assert (=> bs!38109 (= res!40235 (not (contains!47 r!611 x!29137)))))

(assert (=> bs!38109 (=> true e!43113)))

(declare-fun b!79584 () Bool)

(assert (=> b!79584 (= e!43113 (< x!29075 x!29137))))

(assert (= (and bs!38109 (not res!40235)) b!79584))

(assert (=> m!74148 m!74216))

(assert (=> m!74148 s!2361))

(declare-fun bs!38110 () Bool)

(declare-fun s!2363 () Bool)

(assert (= bs!38110 (and start!10464 b!79545 s!2363)))

(declare-fun res!40236 () Bool)

(declare-fun e!43114 () Bool)

(assert (=> bs!38110 (=> res!40236 e!43114)))

(assert (=> bs!38110 (= res!40236 (not (contains!47 r!611 x!29138)))))

(assert (=> bs!38110 (=> true e!43114)))

(declare-fun b!79585 () Bool)

(assert (=> b!79585 (= e!43114 (< x!29075 x!29138))))

(assert (= (and bs!38110 (not res!40236)) b!79585))

(assert (=> m!74150 m!74212))

(assert (=> m!74150 s!2363))

(declare-fun s!2365 () Bool)

(declare-fun bs!38111 () Bool)

(assert (= bs!38111 (and b!79545 b!79547 b!79546 s!2365 start!10464)))

(assert (=> bs!38111 (=> true (= (contains!47 l!1420 x!29138) (member x!29138 (content!108 l!1420))))))

(declare-fun m!74220 () Bool)

(assert (=> m!74150 m!74220))

(declare-fun m!74222 () Bool)

(assert (=> m!74150 m!74222))

(assert (=> m!74150 s!2365))

(assert (=> m!74162 s!2365))

(declare-fun bs!38112 () Bool)

(declare-fun s!2367 () Bool)

(assert (= bs!38112 (and b!79545 b!79547 b!79546 b!79548 start!10464 s!2367)))

(assert (=> bs!38112 (=> true (= (contains!47 r!612 x!29137) (member x!29137 (content!108 r!612))))))

(declare-fun m!74224 () Bool)

(assert (=> m!74158 m!74224))

(declare-fun m!74226 () Bool)

(assert (=> m!74158 m!74226))

(assert (=> m!74158 s!2367))

(assert (=> m!74148 s!2367))

(push 1)

(assert (not bs!38111))

(assert (not bs!38105))

(assert (not bs!38104))

(assert (not bs!38110))

(assert (not bs!38108))

(assert (not bs!38103))

(assert (not bs!38109))

(assert (not bs!38112))

(assert (not bs!38106))

(assert (not b!79579))

(assert (not bs!38107))

(assert (not b!79577))

(assert (not b!79575))

(assert (not b!79581))

(assert (not b!79573))

(assert (not d!55171))

(assert (not b!79563))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

