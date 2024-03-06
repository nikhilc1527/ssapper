; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9460 () Bool)

(assert start!9460)

(declare-fun res!33530 () Bool)

(declare-fun e!37366 () Bool)

(assert (=> start!9460 (=> (not res!33530) (not e!37366))))

(declare-datatypes () ((Formula!48 (And!53 (lhs!947 Formula!48) (rhs!947 Formula!48)) (Literal!47 (id!4828 Int)) (Implies!53 (lhs!948 Formula!48) (rhs!948 Formula!48)) (Or!53 (lhs!949 Formula!48) (rhs!949 Formula!48)) (Not!53 (f!4203 Formula!48)))))

(declare-fun f!3853 () Formula!48)

(assert (=> start!9460 (= res!33530 (and (not (is-And!53 f!3853)) (not (is-Or!53 f!3853)) (is-Implies!53 f!3853)))))

(assert (=> start!9460 e!37366))

(assert (=> start!9460 true))

(declare-fun b!69045 () Bool)

(declare-fun res!33531 () Bool)

(assert (=> b!69045 (=> (not res!33531) (not e!37366))))

(declare-fun x$1!891 () Formula!48)

(declare-fun simplify!1 (Formula!48) Formula!48)

(assert (=> b!69045 (= res!33531 (= x$1!891 (Or!53 (Not!53 (simplify!1 (lhs!948 f!3853))) (simplify!1 (rhs!948 f!3853)))))))

(declare-fun b!69046 () Bool)

(declare-fun isSimplified!1 (Formula!48) Bool)

(assert (=> b!69046 (= e!37366 (not (isSimplified!1 x$1!891)))))

(assert (= (and start!9460 res!33530) b!69045))

(assert (= (and b!69045 res!33531) b!69046))

(declare-fun m!70373 () Bool)

(assert (=> b!69045 m!70373))

(declare-fun m!70375 () Bool)

(assert (=> b!69045 m!70375))

(declare-fun m!70377 () Bool)

(assert (=> b!69046 m!70377))

(push 1)

(assert (not b!69046))

(assert (not b!69045))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!69073 () Bool)

(declare-fun e!37389 () Bool)

(declare-fun res!33557 () Bool)

(assert (=> b!69073 (= e!37389 res!33557)))

(assert (=> b!69073 true))

(assert (=> b!69073 true))

(declare-fun b!69074 () Bool)

(declare-fun e!37385 () Bool)

(declare-fun res!33559 () Bool)

(assert (=> b!69074 (= e!37385 res!33559)))

(assert (=> b!69074 true))

(declare-fun b!69075 () Bool)

(declare-fun lt!14260 () Bool)

(assert (=> b!69075 (= e!37385 lt!14260)))

(declare-fun b!69076 () Bool)

(declare-fun lt!14259 () Bool)

(declare-fun e!37390 () Bool)

(declare-fun lt!14263 () Bool)

(declare-fun lt!14262 () Bool)

(assert (=> b!69076 (= e!37390 (ite lt!14259 (and lt!14263 lt!14262) (and (not (is-Implies!53 x$1!891)) (or (not (is-Not!53 x$1!891)) lt!14263))))))

(assert (=> b!69076 (= lt!14263 e!37389)))

(declare-fun c!16187 () Bool)

(assert (=> b!69076 (= c!16187 (or lt!14259 (and (not (is-Implies!53 x$1!891)) (is-Not!53 x$1!891))))))

(assert (=> b!69076 (= lt!14259 (is-Or!53 x$1!891))))

(declare-fun b!69077 () Bool)

(declare-fun e!37388 () Bool)

(declare-fun e!37387 () Bool)

(assert (=> b!69077 (= e!37388 e!37387)))

(declare-fun res!33558 () Bool)

(assert (=> b!69077 (=> (not res!33558) (not e!37387))))

(declare-fun lt!14261 () Bool)

(assert (=> b!69077 (= res!33558 (not lt!14261))))

(declare-fun d!53598 () Bool)

(declare-fun c!16188 () Bool)

(assert (=> d!53598 (= c!16188 lt!14261)))

(declare-fun e!37383 () Bool)

(assert (=> d!53598 (= lt!14262 e!37383)))

(declare-fun c!16185 () Bool)

(assert (=> d!53598 (= c!16185 e!37388)))

(declare-fun res!33560 () Bool)

(assert (=> d!53598 (=> res!33560 e!37388)))

(declare-fun lt!14258 () Bool)

(assert (=> d!53598 (= res!33560 lt!14258)))

(assert (=> d!53598 (= lt!14258 (and lt!14261 lt!14260))))

(declare-fun e!37386 () Bool)

(assert (=> d!53598 (= lt!14260 e!37386)))

(declare-fun c!16189 () Bool)

(assert (=> d!53598 (= c!16189 (or lt!14261 (is-Or!53 x$1!891) (and (not (is-Implies!53 x$1!891)) (is-Not!53 x$1!891))))))

(assert (=> d!53598 (= lt!14261 (is-And!53 x$1!891))))

(assert (=> d!53598 (= (isSimplified!1 x$1!891) e!37390)))

(declare-fun b!69078 () Bool)

(declare-fun res!33563 () Bool)

(assert (=> b!69078 (= e!37386 res!33563)))

(assert (=> b!69078 true))

(declare-fun b!69079 () Bool)

(assert (=> b!69079 (= e!37390 (and lt!14260 lt!14262))))

(declare-fun b!69080 () Bool)

(assert (=> b!69080 (= e!37383 (isSimplified!1 (ite lt!14258 (rhs!947 x$1!891) (rhs!949 x$1!891))))))

(declare-fun b!69081 () Bool)

(assert (=> b!69081 (= e!37389 lt!14260)))

(declare-fun b!69082 () Bool)

(declare-fun res!33562 () Bool)

(assert (=> b!69082 (= e!37383 res!33562)))

(assert (=> b!69082 true))

(declare-fun b!69083 () Bool)

(declare-fun e!37384 () Bool)

(assert (=> b!69083 (= e!37384 e!37385)))

(declare-fun c!16186 () Bool)

(declare-fun lt!14264 () Bool)

(assert (=> b!69083 (= c!16186 (or lt!14264 (and (not (is-Implies!53 x$1!891)) (is-Not!53 x$1!891))))))

(declare-fun b!69084 () Bool)

(assert (=> b!69084 (= e!37386 (isSimplified!1 (ite lt!14261 (lhs!947 x$1!891) (ite (is-Or!53 x$1!891) (lhs!949 x$1!891) (f!4203 x$1!891)))))))

(declare-fun b!69085 () Bool)

(assert (=> b!69085 (= e!37387 e!37384)))

(declare-fun res!33561 () Bool)

(assert (=> b!69085 (=> (not res!33561) (not e!37384))))

(assert (=> b!69085 (= res!33561 lt!14264)))

(assert (=> b!69085 (= lt!14264 (is-Or!53 x$1!891))))

(assert (= (and d!53598 c!16189) b!69084))

(assert (= (and d!53598 (not c!16189)) b!69078))

(assert (= (and d!53598 (not res!33560)) b!69077))

(assert (= (and b!69077 res!33558) b!69085))

(assert (= (and b!69085 res!33561) b!69083))

(assert (= (and b!69083 c!16186) b!69075))

(assert (= (and b!69083 (not c!16186)) b!69074))

(assert (= (and d!53598 c!16185) b!69080))

(assert (= (and d!53598 (not c!16185)) b!69082))

(assert (= (and b!69076 c!16187) b!69081))

(assert (= (and b!69076 (not c!16187)) b!69073))

(assert (= (and d!53598 c!16188) b!69079))

(assert (= (and d!53598 (not c!16188)) b!69076))

(declare-fun m!70379 () Bool)

(assert (=> b!69080 m!70379))

(declare-fun m!70381 () Bool)

(assert (=> b!69084 m!70381))

(assert (=> b!69046 d!53598))

(declare-fun b!69114 () Bool)

(declare-fun e!37411 () Formula!48)

(declare-fun lt!14283 () Formula!48)

(declare-fun lt!14289 () Formula!48)

(assert (=> b!69114 (= e!37411 (And!53 lt!14283 lt!14289))))

(declare-fun b!69115 () Bool)

(declare-fun e!37405 () Formula!48)

(declare-fun res!33589 () Formula!48)

(assert (=> b!69115 (= e!37405 res!33589)))

(assert (=> b!69115 true))

(assert (=> b!69115 true))

(declare-fun b!69116 () Bool)

(declare-fun lt!14286 () Formula!48)

(assert (=> b!69116 (= e!37405 lt!14286)))

(declare-fun b!69117 () Bool)

(declare-fun e!37406 () Formula!48)

(declare-fun lt!14290 () Bool)

(assert (=> b!69117 (= e!37406 (simplify!1 (ite lt!14290 (rhs!947 (lhs!948 f!3853)) (ite (is-Or!53 (lhs!948 f!3853)) (rhs!949 (lhs!948 f!3853)) (rhs!948 (lhs!948 f!3853))))))))

(declare-fun lt!14291 () Formula!48)

(declare-fun b!69118 () Bool)

(declare-fun lt!14287 () Bool)

(declare-fun e!37408 () Formula!48)

(declare-fun lt!14288 () Formula!48)

(assert (=> b!69118 (= e!37408 (ite lt!14287 (Or!53 (Not!53 lt!14288) lt!14291) (ite (is-Not!53 (lhs!948 f!3853)) (Not!53 lt!14288) (lhs!948 f!3853))))))

(assert (=> b!69118 (= lt!14288 e!37405)))

(declare-fun c!16207 () Bool)

(assert (=> b!69118 (= c!16207 (or lt!14287 (is-Not!53 (lhs!948 f!3853))))))

(assert (=> b!69118 (= lt!14287 (is-Implies!53 (lhs!948 f!3853)))))

(declare-fun d!53600 () Bool)

(declare-fun lt!14285 () Formula!48)

(assert (=> d!53600 (isSimplified!1 lt!14285)))

(assert (=> d!53600 (= lt!14285 e!37411)))

(declare-fun c!16205 () Bool)

(assert (=> d!53600 (= c!16205 lt!14290)))

(assert (=> d!53600 (= lt!14289 e!37406)))

(declare-fun c!16206 () Bool)

(assert (=> d!53600 (= c!16206 (or lt!14290 (is-Or!53 (lhs!948 f!3853)) (is-Implies!53 (lhs!948 f!3853))))))

(declare-fun e!37407 () Formula!48)

(assert (=> d!53600 (= lt!14283 e!37407)))

(declare-fun c!16209 () Bool)

(assert (=> d!53600 (= c!16209 (or lt!14290 (is-Or!53 (lhs!948 f!3853)) (is-Implies!53 (lhs!948 f!3853)) (is-Not!53 (lhs!948 f!3853))))))

(assert (=> d!53600 (= lt!14290 (is-And!53 (lhs!948 f!3853)))))

(assert (=> d!53600 (= (simplify!1 (lhs!948 f!3853)) lt!14285)))

(declare-fun b!69119 () Bool)

(assert (=> b!69119 (= e!37411 e!37408)))

(declare-fun c!16208 () Bool)

(declare-fun lt!14284 () Bool)

(assert (=> b!69119 (= c!16208 lt!14284)))

(declare-fun e!37409 () Formula!48)

(assert (=> b!69119 (= lt!14291 e!37409)))

(declare-fun c!16204 () Bool)

(assert (=> b!69119 (= c!16204 (or lt!14284 (is-Implies!53 (lhs!948 f!3853))))))

(declare-fun e!37410 () Formula!48)

(assert (=> b!69119 (= lt!14286 e!37410)))

(declare-fun c!16210 () Bool)

(assert (=> b!69119 (= c!16210 (or lt!14284 (is-Implies!53 (lhs!948 f!3853)) (is-Not!53 (lhs!948 f!3853))))))

(assert (=> b!69119 (= lt!14284 (is-Or!53 (lhs!948 f!3853)))))

(declare-fun b!69120 () Bool)

(assert (=> b!69120 (= e!37408 (Or!53 lt!14286 lt!14291))))

(declare-fun b!69121 () Bool)

(declare-fun res!33591 () Formula!48)

(assert (=> b!69121 (= e!37409 res!33591)))

(assert (=> b!69121 true))

(declare-fun b!69122 () Bool)

(declare-fun res!33593 () Formula!48)

(assert (=> b!69122 (= e!37407 res!33593)))

(assert (=> b!69122 true))

(declare-fun b!69123 () Bool)

(assert (=> b!69123 (= e!37410 lt!14283)))

(declare-fun b!69124 () Bool)

(declare-fun res!33590 () Formula!48)

(assert (=> b!69124 (= e!37406 res!33590)))

(assert (=> b!69124 true))

(declare-fun b!69125 () Bool)

(assert (=> b!69125 (= e!37409 lt!14289)))

(declare-fun b!69126 () Bool)

(declare-fun res!33592 () Formula!48)

(assert (=> b!69126 (= e!37410 res!33592)))

(assert (=> b!69126 true))

(declare-fun b!69127 () Bool)

(assert (=> b!69127 (= e!37407 (simplify!1 (ite lt!14290 (lhs!947 (lhs!948 f!3853)) (ite (is-Or!53 (lhs!948 f!3853)) (lhs!949 (lhs!948 f!3853)) (ite (is-Implies!53 (lhs!948 f!3853)) (lhs!948 (lhs!948 f!3853)) (f!4203 (lhs!948 f!3853)))))))))

(assert (= (and d!53600 c!16209) b!69127))

(assert (= (and d!53600 (not c!16209)) b!69122))

(assert (= (and d!53600 c!16206) b!69117))

(assert (= (and d!53600 (not c!16206)) b!69124))

(assert (= (and b!69119 c!16210) b!69123))

(assert (= (and b!69119 (not c!16210)) b!69126))

(assert (= (and b!69119 c!16204) b!69125))

(assert (= (and b!69119 (not c!16204)) b!69121))

(assert (= (and b!69118 c!16207) b!69116))

(assert (= (and b!69118 (not c!16207)) b!69115))

(assert (= (and b!69119 c!16208) b!69120))

(assert (= (and b!69119 (not c!16208)) b!69118))

(assert (= (and d!53600 c!16205) b!69114))

(assert (= (and d!53600 (not c!16205)) b!69119))

(declare-fun m!70383 () Bool)

(assert (=> b!69117 m!70383))

(declare-fun m!70385 () Bool)

(assert (=> d!53600 m!70385))

(declare-fun m!70387 () Bool)

(assert (=> b!69127 m!70387))

(assert (=> b!69045 d!53600))

(declare-fun b!69128 () Bool)

(declare-fun e!37418 () Formula!48)

(declare-fun lt!14292 () Formula!48)

(declare-fun lt!14298 () Formula!48)

(assert (=> b!69128 (= e!37418 (And!53 lt!14292 lt!14298))))

(declare-fun b!69129 () Bool)

(declare-fun e!37412 () Formula!48)

(declare-fun res!33594 () Formula!48)

(assert (=> b!69129 (= e!37412 res!33594)))

(assert (=> b!69129 true))

(assert (=> b!69129 true))

(declare-fun b!69130 () Bool)

(declare-fun lt!14295 () Formula!48)

(assert (=> b!69130 (= e!37412 lt!14295)))

(declare-fun b!69131 () Bool)

(declare-fun e!37413 () Formula!48)

(declare-fun lt!14299 () Bool)

(assert (=> b!69131 (= e!37413 (simplify!1 (ite lt!14299 (rhs!947 (rhs!948 f!3853)) (ite (is-Or!53 (rhs!948 f!3853)) (rhs!949 (rhs!948 f!3853)) (rhs!948 (rhs!948 f!3853))))))))

(declare-fun lt!14297 () Formula!48)

(declare-fun b!69132 () Bool)

(declare-fun lt!14296 () Bool)

(declare-fun lt!14300 () Formula!48)

(declare-fun e!37415 () Formula!48)

(assert (=> b!69132 (= e!37415 (ite lt!14296 (Or!53 (Not!53 lt!14297) lt!14300) (ite (is-Not!53 (rhs!948 f!3853)) (Not!53 lt!14297) (rhs!948 f!3853))))))

(assert (=> b!69132 (= lt!14297 e!37412)))

(declare-fun c!16214 () Bool)

(assert (=> b!69132 (= c!16214 (or lt!14296 (is-Not!53 (rhs!948 f!3853))))))

(assert (=> b!69132 (= lt!14296 (is-Implies!53 (rhs!948 f!3853)))))

(declare-fun d!53602 () Bool)

(declare-fun lt!14294 () Formula!48)

(assert (=> d!53602 (isSimplified!1 lt!14294)))

(assert (=> d!53602 (= lt!14294 e!37418)))

(declare-fun c!16212 () Bool)

(assert (=> d!53602 (= c!16212 lt!14299)))

(assert (=> d!53602 (= lt!14298 e!37413)))

(declare-fun c!16213 () Bool)

(assert (=> d!53602 (= c!16213 (or lt!14299 (is-Or!53 (rhs!948 f!3853)) (is-Implies!53 (rhs!948 f!3853))))))

(declare-fun e!37414 () Formula!48)

(assert (=> d!53602 (= lt!14292 e!37414)))

(declare-fun c!16216 () Bool)

(assert (=> d!53602 (= c!16216 (or lt!14299 (is-Or!53 (rhs!948 f!3853)) (is-Implies!53 (rhs!948 f!3853)) (is-Not!53 (rhs!948 f!3853))))))

(assert (=> d!53602 (= lt!14299 (is-And!53 (rhs!948 f!3853)))))

(assert (=> d!53602 (= (simplify!1 (rhs!948 f!3853)) lt!14294)))

(declare-fun b!69133 () Bool)

(assert (=> b!69133 (= e!37418 e!37415)))

(declare-fun c!16215 () Bool)

(declare-fun lt!14293 () Bool)

(assert (=> b!69133 (= c!16215 lt!14293)))

(declare-fun e!37416 () Formula!48)

(assert (=> b!69133 (= lt!14300 e!37416)))

(declare-fun c!16211 () Bool)

(assert (=> b!69133 (= c!16211 (or lt!14293 (is-Implies!53 (rhs!948 f!3853))))))

(declare-fun e!37417 () Formula!48)

(assert (=> b!69133 (= lt!14295 e!37417)))

(declare-fun c!16217 () Bool)

(assert (=> b!69133 (= c!16217 (or lt!14293 (is-Implies!53 (rhs!948 f!3853)) (is-Not!53 (rhs!948 f!3853))))))

(assert (=> b!69133 (= lt!14293 (is-Or!53 (rhs!948 f!3853)))))

(declare-fun b!69134 () Bool)

(assert (=> b!69134 (= e!37415 (Or!53 lt!14295 lt!14300))))

(declare-fun b!69135 () Bool)

(declare-fun res!33596 () Formula!48)

(assert (=> b!69135 (= e!37416 res!33596)))

(assert (=> b!69135 true))

(declare-fun b!69136 () Bool)

(declare-fun res!33598 () Formula!48)

(assert (=> b!69136 (= e!37414 res!33598)))

(assert (=> b!69136 true))

(declare-fun b!69137 () Bool)

(assert (=> b!69137 (= e!37417 lt!14292)))

(declare-fun b!69138 () Bool)

(declare-fun res!33595 () Formula!48)

(assert (=> b!69138 (= e!37413 res!33595)))

(assert (=> b!69138 true))

(declare-fun b!69139 () Bool)

(assert (=> b!69139 (= e!37416 lt!14298)))

(declare-fun b!69140 () Bool)

(declare-fun res!33597 () Formula!48)

(assert (=> b!69140 (= e!37417 res!33597)))

(assert (=> b!69140 true))

(declare-fun b!69141 () Bool)

(assert (=> b!69141 (= e!37414 (simplify!1 (ite lt!14299 (lhs!947 (rhs!948 f!3853)) (ite (is-Or!53 (rhs!948 f!3853)) (lhs!949 (rhs!948 f!3853)) (ite (is-Implies!53 (rhs!948 f!3853)) (lhs!948 (rhs!948 f!3853)) (f!4203 (rhs!948 f!3853)))))))))

(assert (= (and d!53602 c!16216) b!69141))

(assert (= (and d!53602 (not c!16216)) b!69136))

(assert (= (and d!53602 c!16213) b!69131))

(assert (= (and d!53602 (not c!16213)) b!69138))

(assert (= (and b!69133 c!16217) b!69137))

(assert (= (and b!69133 (not c!16217)) b!69140))

(assert (= (and b!69133 c!16211) b!69139))

(assert (= (and b!69133 (not c!16211)) b!69135))

(assert (= (and b!69132 c!16214) b!69130))

(assert (= (and b!69132 (not c!16214)) b!69129))

(assert (= (and b!69133 c!16215) b!69134))

(assert (= (and b!69133 (not c!16215)) b!69132))

(assert (= (and d!53602 c!16212) b!69128))

(assert (= (and d!53602 (not c!16212)) b!69133))

(declare-fun m!70389 () Bool)

(assert (=> b!69131 m!70389))

(declare-fun m!70391 () Bool)

(assert (=> d!53602 m!70391))

(declare-fun m!70393 () Bool)

(assert (=> b!69141 m!70393))

(assert (=> b!69045 d!53602))

(push 1)

(assert (not b!69127))

(assert (not b!69141))

(assert (not b!69080))

(assert (not d!53600))

(assert (not b!69117))

(assert (not b!69131))

(assert (not d!53602))

(assert (not b!69084))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!69142 () Bool)

(declare-fun e!37425 () Formula!48)

(declare-fun lt!14301 () Formula!48)

(declare-fun lt!14307 () Formula!48)

(assert (=> b!69142 (= e!37425 (And!53 lt!14301 lt!14307))))

(declare-fun b!69143 () Bool)

(declare-fun e!37419 () Formula!48)

(declare-fun res!33599 () Formula!48)

(assert (=> b!69143 (= e!37419 res!33599)))

(assert (=> b!69143 true))

(assert (=> b!69143 true))

(declare-fun b!69144 () Bool)

(declare-fun lt!14304 () Formula!48)

(assert (=> b!69144 (= e!37419 lt!14304)))

(declare-fun b!69145 () Bool)

(declare-fun lt!14308 () Bool)

(declare-fun e!37420 () Formula!48)

(assert (=> b!69145 (= e!37420 (simplify!1 (ite lt!14308 (rhs!947 (ite lt!14290 (rhs!947 (lhs!948 f!3853)) (ite (is-Or!53 (lhs!948 f!3853)) (rhs!949 (lhs!948 f!3853)) (rhs!948 (lhs!948 f!3853))))) (ite (is-Or!53 (ite lt!14290 (rhs!947 (lhs!948 f!3853)) (ite (is-Or!53 (lhs!948 f!3853)) (rhs!949 (lhs!948 f!3853)) (rhs!948 (lhs!948 f!3853))))) (rhs!949 (ite lt!14290 (rhs!947 (lhs!948 f!3853)) (ite (is-Or!53 (lhs!948 f!3853)) (rhs!949 (lhs!948 f!3853)) (rhs!948 (lhs!948 f!3853))))) (rhs!948 (ite lt!14290 (rhs!947 (lhs!948 f!3853)) (ite (is-Or!53 (lhs!948 f!3853)) (rhs!949 (lhs!948 f!3853)) (rhs!948 (lhs!948 f!3853)))))))))))

(declare-fun e!37422 () Formula!48)

(declare-fun lt!14309 () Formula!48)

(declare-fun b!69146 () Bool)

(declare-fun lt!14306 () Formula!48)

(declare-fun lt!14305 () Bool)

(assert (=> b!69146 (= e!37422 (ite lt!14305 (Or!53 (Not!53 lt!14306) lt!14309) (ite (is-Not!53 (ite lt!14290 (rhs!947 (lhs!948 f!3853)) (ite (is-Or!53 (lhs!948 f!3853)) (rhs!949 (lhs!948 f!3853)) (rhs!948 (lhs!948 f!3853))))) (Not!53 lt!14306) (ite lt!14290 (rhs!947 (lhs!948 f!3853)) (ite (is-Or!53 (lhs!948 f!3853)) (rhs!949 (lhs!948 f!3853)) (rhs!948 (lhs!948 f!3853)))))))))

(assert (=> b!69146 (= lt!14306 e!37419)))

(declare-fun c!16221 () Bool)

(assert (=> b!69146 (= c!16221 (or lt!14305 (is-Not!53 (ite lt!14290 (rhs!947 (lhs!948 f!3853)) (ite (is-Or!53 (lhs!948 f!3853)) (rhs!949 (lhs!948 f!3853)) (rhs!948 (lhs!948 f!3853)))))))))

(assert (=> b!69146 (= lt!14305 (is-Implies!53 (ite lt!14290 (rhs!947 (lhs!948 f!3853)) (ite (is-Or!53 (lhs!948 f!3853)) (rhs!949 (lhs!948 f!3853)) (rhs!948 (lhs!948 f!3853))))))))

(declare-fun d!53604 () Bool)

(declare-fun lt!14303 () Formula!48)

(assert (=> d!53604 (isSimplified!1 lt!14303)))

(assert (=> d!53604 (= lt!14303 e!37425)))

(declare-fun c!16219 () Bool)

(assert (=> d!53604 (= c!16219 lt!14308)))

(assert (=> d!53604 (= lt!14307 e!37420)))

(declare-fun c!16220 () Bool)

(assert (=> d!53604 (= c!16220 (or lt!14308 (is-Or!53 (ite lt!14290 (rhs!947 (lhs!948 f!3853)) (ite (is-Or!53 (lhs!948 f!3853)) (rhs!949 (lhs!948 f!3853)) (rhs!948 (lhs!948 f!3853))))) (is-Implies!53 (ite lt!14290 (rhs!947 (lhs!948 f!3853)) (ite (is-Or!53 (lhs!948 f!3853)) (rhs!949 (lhs!948 f!3853)) (rhs!948 (lhs!948 f!3853)))))))))

(declare-fun e!37421 () Formula!48)

(assert (=> d!53604 (= lt!14301 e!37421)))

(declare-fun c!16223 () Bool)

(assert (=> d!53604 (= c!16223 (or lt!14308 (is-Or!53 (ite lt!14290 (rhs!947 (lhs!948 f!3853)) (ite (is-Or!53 (lhs!948 f!3853)) (rhs!949 (lhs!948 f!3853)) (rhs!948 (lhs!948 f!3853))))) (is-Implies!53 (ite lt!14290 (rhs!947 (lhs!948 f!3853)) (ite (is-Or!53 (lhs!948 f!3853)) (rhs!949 (lhs!948 f!3853)) (rhs!948 (lhs!948 f!3853))))) (is-Not!53 (ite lt!14290 (rhs!947 (lhs!948 f!3853)) (ite (is-Or!53 (lhs!948 f!3853)) (rhs!949 (lhs!948 f!3853)) (rhs!948 (lhs!948 f!3853)))))))))

(assert (=> d!53604 (= lt!14308 (is-And!53 (ite lt!14290 (rhs!947 (lhs!948 f!3853)) (ite (is-Or!53 (lhs!948 f!3853)) (rhs!949 (lhs!948 f!3853)) (rhs!948 (lhs!948 f!3853))))))))

(assert (=> d!53604 (= (simplify!1 (ite lt!14290 (rhs!947 (lhs!948 f!3853)) (ite (is-Or!53 (lhs!948 f!3853)) (rhs!949 (lhs!948 f!3853)) (rhs!948 (lhs!948 f!3853))))) lt!14303)))

(declare-fun b!69147 () Bool)

(assert (=> b!69147 (= e!37425 e!37422)))

(declare-fun c!16222 () Bool)

(declare-fun lt!14302 () Bool)

(assert (=> b!69147 (= c!16222 lt!14302)))

(declare-fun e!37423 () Formula!48)

(assert (=> b!69147 (= lt!14309 e!37423)))

(declare-fun c!16218 () Bool)

(assert (=> b!69147 (= c!16218 (or lt!14302 (is-Implies!53 (ite lt!14290 (rhs!947 (lhs!948 f!3853)) (ite (is-Or!53 (lhs!948 f!3853)) (rhs!949 (lhs!948 f!3853)) (rhs!948 (lhs!948 f!3853)))))))))

(declare-fun e!37424 () Formula!48)

(assert (=> b!69147 (= lt!14304 e!37424)))

(declare-fun c!16224 () Bool)

(assert (=> b!69147 (= c!16224 (or lt!14302 (is-Implies!53 (ite lt!14290 (rhs!947 (lhs!948 f!3853)) (ite (is-Or!53 (lhs!948 f!3853)) (rhs!949 (lhs!948 f!3853)) (rhs!948 (lhs!948 f!3853))))) (is-Not!53 (ite lt!14290 (rhs!947 (lhs!948 f!3853)) (ite (is-Or!53 (lhs!948 f!3853)) (rhs!949 (lhs!948 f!3853)) (rhs!948 (lhs!948 f!3853)))))))))

(assert (=> b!69147 (= lt!14302 (is-Or!53 (ite lt!14290 (rhs!947 (lhs!948 f!3853)) (ite (is-Or!53 (lhs!948 f!3853)) (rhs!949 (lhs!948 f!3853)) (rhs!948 (lhs!948 f!3853))))))))

(declare-fun b!69148 () Bool)

(assert (=> b!69148 (= e!37422 (Or!53 lt!14304 lt!14309))))

(declare-fun b!69149 () Bool)

(declare-fun res!33601 () Formula!48)

(assert (=> b!69149 (= e!37423 res!33601)))

(assert (=> b!69149 true))

(declare-fun b!69150 () Bool)

(declare-fun res!33603 () Formula!48)

(assert (=> b!69150 (= e!37421 res!33603)))

(assert (=> b!69150 true))

(declare-fun b!69151 () Bool)

(assert (=> b!69151 (= e!37424 lt!14301)))

(declare-fun b!69152 () Bool)

(declare-fun res!33600 () Formula!48)

(assert (=> b!69152 (= e!37420 res!33600)))

(assert (=> b!69152 true))

(declare-fun b!69153 () Bool)

(assert (=> b!69153 (= e!37423 lt!14307)))

(declare-fun b!69154 () Bool)

(declare-fun res!33602 () Formula!48)

(assert (=> b!69154 (= e!37424 res!33602)))

(assert (=> b!69154 true))

(declare-fun b!69155 () Bool)

(assert (=> b!69155 (= e!37421 (simplify!1 (ite lt!14308 (lhs!947 (ite lt!14290 (rhs!947 (lhs!948 f!3853)) (ite (is-Or!53 (lhs!948 f!3853)) (rhs!949 (lhs!948 f!3853)) (rhs!948 (lhs!948 f!3853))))) (ite (is-Or!53 (ite lt!14290 (rhs!947 (lhs!948 f!3853)) (ite (is-Or!53 (lhs!948 f!3853)) (rhs!949 (lhs!948 f!3853)) (rhs!948 (lhs!948 f!3853))))) (lhs!949 (ite lt!14290 (rhs!947 (lhs!948 f!3853)) (ite (is-Or!53 (lhs!948 f!3853)) (rhs!949 (lhs!948 f!3853)) (rhs!948 (lhs!948 f!3853))))) (ite (is-Implies!53 (ite lt!14290 (rhs!947 (lhs!948 f!3853)) (ite (is-Or!53 (lhs!948 f!3853)) (rhs!949 (lhs!948 f!3853)) (rhs!948 (lhs!948 f!3853))))) (lhs!948 (ite lt!14290 (rhs!947 (lhs!948 f!3853)) (ite (is-Or!53 (lhs!948 f!3853)) (rhs!949 (lhs!948 f!3853)) (rhs!948 (lhs!948 f!3853))))) (f!4203 (ite lt!14290 (rhs!947 (lhs!948 f!3853)) (ite (is-Or!53 (lhs!948 f!3853)) (rhs!949 (lhs!948 f!3853)) (rhs!948 (lhs!948 f!3853))))))))))))

(assert (= (and d!53604 c!16223) b!69155))

(assert (= (and d!53604 (not c!16223)) b!69150))

(assert (= (and d!53604 c!16220) b!69145))

(assert (= (and d!53604 (not c!16220)) b!69152))

(assert (= (and b!69147 c!16224) b!69151))

(assert (= (and b!69147 (not c!16224)) b!69154))

(assert (= (and b!69147 c!16218) b!69153))

(assert (= (and b!69147 (not c!16218)) b!69149))

(assert (= (and b!69146 c!16221) b!69144))

(assert (= (and b!69146 (not c!16221)) b!69143))

(assert (= (and b!69147 c!16222) b!69148))

(assert (= (and b!69147 (not c!16222)) b!69146))

(assert (= (and d!53604 c!16219) b!69142))

(assert (= (and d!53604 (not c!16219)) b!69147))

(declare-fun m!70395 () Bool)

(assert (=> b!69145 m!70395))

(declare-fun m!70397 () Bool)

(assert (=> d!53604 m!70397))

(declare-fun m!70399 () Bool)

(assert (=> b!69155 m!70399))

(assert (=> b!69117 d!53604))

(declare-fun b!69156 () Bool)

(declare-fun e!37432 () Formula!48)

(declare-fun lt!14310 () Formula!48)

(declare-fun lt!14316 () Formula!48)

(assert (=> b!69156 (= e!37432 (And!53 lt!14310 lt!14316))))

(declare-fun b!69157 () Bool)

(declare-fun e!37426 () Formula!48)

(declare-fun res!33604 () Formula!48)

(assert (=> b!69157 (= e!37426 res!33604)))

(assert (=> b!69157 true))

(assert (=> b!69157 true))

(declare-fun b!69158 () Bool)

(declare-fun lt!14313 () Formula!48)

(assert (=> b!69158 (= e!37426 lt!14313)))

(declare-fun b!69159 () Bool)

(declare-fun lt!14317 () Bool)

(declare-fun e!37427 () Formula!48)

(assert (=> b!69159 (= e!37427 (simplify!1 (ite lt!14317 (rhs!947 (ite lt!14299 (lhs!947 (rhs!948 f!3853)) (ite (is-Or!53 (rhs!948 f!3853)) (lhs!949 (rhs!948 f!3853)) (ite (is-Implies!53 (rhs!948 f!3853)) (lhs!948 (rhs!948 f!3853)) (f!4203 (rhs!948 f!3853)))))) (ite (is-Or!53 (ite lt!14299 (lhs!947 (rhs!948 f!3853)) (ite (is-Or!53 (rhs!948 f!3853)) (lhs!949 (rhs!948 f!3853)) (ite (is-Implies!53 (rhs!948 f!3853)) (lhs!948 (rhs!948 f!3853)) (f!4203 (rhs!948 f!3853)))))) (rhs!949 (ite lt!14299 (lhs!947 (rhs!948 f!3853)) (ite (is-Or!53 (rhs!948 f!3853)) (lhs!949 (rhs!948 f!3853)) (ite (is-Implies!53 (rhs!948 f!3853)) (lhs!948 (rhs!948 f!3853)) (f!4203 (rhs!948 f!3853)))))) (rhs!948 (ite lt!14299 (lhs!947 (rhs!948 f!3853)) (ite (is-Or!53 (rhs!948 f!3853)) (lhs!949 (rhs!948 f!3853)) (ite (is-Implies!53 (rhs!948 f!3853)) (lhs!948 (rhs!948 f!3853)) (f!4203 (rhs!948 f!3853))))))))))))

(declare-fun lt!14314 () Bool)

(declare-fun lt!14315 () Formula!48)

(declare-fun e!37429 () Formula!48)

(declare-fun lt!14318 () Formula!48)

(declare-fun b!69160 () Bool)

(assert (=> b!69160 (= e!37429 (ite lt!14314 (Or!53 (Not!53 lt!14315) lt!14318) (ite (is-Not!53 (ite lt!14299 (lhs!947 (rhs!948 f!3853)) (ite (is-Or!53 (rhs!948 f!3853)) (lhs!949 (rhs!948 f!3853)) (ite (is-Implies!53 (rhs!948 f!3853)) (lhs!948 (rhs!948 f!3853)) (f!4203 (rhs!948 f!3853)))))) (Not!53 lt!14315) (ite lt!14299 (lhs!947 (rhs!948 f!3853)) (ite (is-Or!53 (rhs!948 f!3853)) (lhs!949 (rhs!948 f!3853)) (ite (is-Implies!53 (rhs!948 f!3853)) (lhs!948 (rhs!948 f!3853)) (f!4203 (rhs!948 f!3853))))))))))

(assert (=> b!69160 (= lt!14315 e!37426)))

(declare-fun c!16228 () Bool)

(assert (=> b!69160 (= c!16228 (or lt!14314 (is-Not!53 (ite lt!14299 (lhs!947 (rhs!948 f!3853)) (ite (is-Or!53 (rhs!948 f!3853)) (lhs!949 (rhs!948 f!3853)) (ite (is-Implies!53 (rhs!948 f!3853)) (lhs!948 (rhs!948 f!3853)) (f!4203 (rhs!948 f!3853))))))))))

(assert (=> b!69160 (= lt!14314 (is-Implies!53 (ite lt!14299 (lhs!947 (rhs!948 f!3853)) (ite (is-Or!53 (rhs!948 f!3853)) (lhs!949 (rhs!948 f!3853)) (ite (is-Implies!53 (rhs!948 f!3853)) (lhs!948 (rhs!948 f!3853)) (f!4203 (rhs!948 f!3853)))))))))

(declare-fun d!53606 () Bool)

(declare-fun lt!14312 () Formula!48)

(assert (=> d!53606 (isSimplified!1 lt!14312)))

(assert (=> d!53606 (= lt!14312 e!37432)))

(declare-fun c!16226 () Bool)

(assert (=> d!53606 (= c!16226 lt!14317)))

(assert (=> d!53606 (= lt!14316 e!37427)))

(declare-fun c!16227 () Bool)

(assert (=> d!53606 (= c!16227 (or lt!14317 (is-Or!53 (ite lt!14299 (lhs!947 (rhs!948 f!3853)) (ite (is-Or!53 (rhs!948 f!3853)) (lhs!949 (rhs!948 f!3853)) (ite (is-Implies!53 (rhs!948 f!3853)) (lhs!948 (rhs!948 f!3853)) (f!4203 (rhs!948 f!3853)))))) (is-Implies!53 (ite lt!14299 (lhs!947 (rhs!948 f!3853)) (ite (is-Or!53 (rhs!948 f!3853)) (lhs!949 (rhs!948 f!3853)) (ite (is-Implies!53 (rhs!948 f!3853)) (lhs!948 (rhs!948 f!3853)) (f!4203 (rhs!948 f!3853))))))))))

(declare-fun e!37428 () Formula!48)

(assert (=> d!53606 (= lt!14310 e!37428)))

(declare-fun c!16230 () Bool)

(assert (=> d!53606 (= c!16230 (or lt!14317 (is-Or!53 (ite lt!14299 (lhs!947 (rhs!948 f!3853)) (ite (is-Or!53 (rhs!948 f!3853)) (lhs!949 (rhs!948 f!3853)) (ite (is-Implies!53 (rhs!948 f!3853)) (lhs!948 (rhs!948 f!3853)) (f!4203 (rhs!948 f!3853)))))) (is-Implies!53 (ite lt!14299 (lhs!947 (rhs!948 f!3853)) (ite (is-Or!53 (rhs!948 f!3853)) (lhs!949 (rhs!948 f!3853)) (ite (is-Implies!53 (rhs!948 f!3853)) (lhs!948 (rhs!948 f!3853)) (f!4203 (rhs!948 f!3853)))))) (is-Not!53 (ite lt!14299 (lhs!947 (rhs!948 f!3853)) (ite (is-Or!53 (rhs!948 f!3853)) (lhs!949 (rhs!948 f!3853)) (ite (is-Implies!53 (rhs!948 f!3853)) (lhs!948 (rhs!948 f!3853)) (f!4203 (rhs!948 f!3853))))))))))

(assert (=> d!53606 (= lt!14317 (is-And!53 (ite lt!14299 (lhs!947 (rhs!948 f!3853)) (ite (is-Or!53 (rhs!948 f!3853)) (lhs!949 (rhs!948 f!3853)) (ite (is-Implies!53 (rhs!948 f!3853)) (lhs!948 (rhs!948 f!3853)) (f!4203 (rhs!948 f!3853)))))))))

(assert (=> d!53606 (= (simplify!1 (ite lt!14299 (lhs!947 (rhs!948 f!3853)) (ite (is-Or!53 (rhs!948 f!3853)) (lhs!949 (rhs!948 f!3853)) (ite (is-Implies!53 (rhs!948 f!3853)) (lhs!948 (rhs!948 f!3853)) (f!4203 (rhs!948 f!3853)))))) lt!14312)))

(declare-fun b!69161 () Bool)

(assert (=> b!69161 (= e!37432 e!37429)))

(declare-fun c!16229 () Bool)

(declare-fun lt!14311 () Bool)

(assert (=> b!69161 (= c!16229 lt!14311)))

(declare-fun e!37430 () Formula!48)

(assert (=> b!69161 (= lt!14318 e!37430)))

(declare-fun c!16225 () Bool)

(assert (=> b!69161 (= c!16225 (or lt!14311 (is-Implies!53 (ite lt!14299 (lhs!947 (rhs!948 f!3853)) (ite (is-Or!53 (rhs!948 f!3853)) (lhs!949 (rhs!948 f!3853)) (ite (is-Implies!53 (rhs!948 f!3853)) (lhs!948 (rhs!948 f!3853)) (f!4203 (rhs!948 f!3853))))))))))

(declare-fun e!37431 () Formula!48)

(assert (=> b!69161 (= lt!14313 e!37431)))

(declare-fun c!16231 () Bool)

(assert (=> b!69161 (= c!16231 (or lt!14311 (is-Implies!53 (ite lt!14299 (lhs!947 (rhs!948 f!3853)) (ite (is-Or!53 (rhs!948 f!3853)) (lhs!949 (rhs!948 f!3853)) (ite (is-Implies!53 (rhs!948 f!3853)) (lhs!948 (rhs!948 f!3853)) (f!4203 (rhs!948 f!3853)))))) (is-Not!53 (ite lt!14299 (lhs!947 (rhs!948 f!3853)) (ite (is-Or!53 (rhs!948 f!3853)) (lhs!949 (rhs!948 f!3853)) (ite (is-Implies!53 (rhs!948 f!3853)) (lhs!948 (rhs!948 f!3853)) (f!4203 (rhs!948 f!3853))))))))))

(assert (=> b!69161 (= lt!14311 (is-Or!53 (ite lt!14299 (lhs!947 (rhs!948 f!3853)) (ite (is-Or!53 (rhs!948 f!3853)) (lhs!949 (rhs!948 f!3853)) (ite (is-Implies!53 (rhs!948 f!3853)) (lhs!948 (rhs!948 f!3853)) (f!4203 (rhs!948 f!3853)))))))))

(declare-fun b!69162 () Bool)

(assert (=> b!69162 (= e!37429 (Or!53 lt!14313 lt!14318))))

(declare-fun b!69163 () Bool)

(declare-fun res!33606 () Formula!48)

(assert (=> b!69163 (= e!37430 res!33606)))

(assert (=> b!69163 true))

(declare-fun b!69164 () Bool)

(declare-fun res!33608 () Formula!48)

(assert (=> b!69164 (= e!37428 res!33608)))

(assert (=> b!69164 true))

(declare-fun b!69165 () Bool)

(assert (=> b!69165 (= e!37431 lt!14310)))

(declare-fun b!69166 () Bool)

(declare-fun res!33605 () Formula!48)

(assert (=> b!69166 (= e!37427 res!33605)))

(assert (=> b!69166 true))

(declare-fun b!69167 () Bool)

(assert (=> b!69167 (= e!37430 lt!14316)))

(declare-fun b!69168 () Bool)

(declare-fun res!33607 () Formula!48)

(assert (=> b!69168 (= e!37431 res!33607)))

(assert (=> b!69168 true))

(declare-fun b!69169 () Bool)

(assert (=> b!69169 (= e!37428 (simplify!1 (ite lt!14317 (lhs!947 (ite lt!14299 (lhs!947 (rhs!948 f!3853)) (ite (is-Or!53 (rhs!948 f!3853)) (lhs!949 (rhs!948 f!3853)) (ite (is-Implies!53 (rhs!948 f!3853)) (lhs!948 (rhs!948 f!3853)) (f!4203 (rhs!948 f!3853)))))) (ite (is-Or!53 (ite lt!14299 (lhs!947 (rhs!948 f!3853)) (ite (is-Or!53 (rhs!948 f!3853)) (lhs!949 (rhs!948 f!3853)) (ite (is-Implies!53 (rhs!948 f!3853)) (lhs!948 (rhs!948 f!3853)) (f!4203 (rhs!948 f!3853)))))) (lhs!949 (ite lt!14299 (lhs!947 (rhs!948 f!3853)) (ite (is-Or!53 (rhs!948 f!3853)) (lhs!949 (rhs!948 f!3853)) (ite (is-Implies!53 (rhs!948 f!3853)) (lhs!948 (rhs!948 f!3853)) (f!4203 (rhs!948 f!3853)))))) (ite (is-Implies!53 (ite lt!14299 (lhs!947 (rhs!948 f!3853)) (ite (is-Or!53 (rhs!948 f!3853)) (lhs!949 (rhs!948 f!3853)) (ite (is-Implies!53 (rhs!948 f!3853)) (lhs!948 (rhs!948 f!3853)) (f!4203 (rhs!948 f!3853)))))) (lhs!948 (ite lt!14299 (lhs!947 (rhs!948 f!3853)) (ite (is-Or!53 (rhs!948 f!3853)) (lhs!949 (rhs!948 f!3853)) (ite (is-Implies!53 (rhs!948 f!3853)) (lhs!948 (rhs!948 f!3853)) (f!4203 (rhs!948 f!3853)))))) (f!4203 (ite lt!14299 (lhs!947 (rhs!948 f!3853)) (ite (is-Or!53 (rhs!948 f!3853)) (lhs!949 (rhs!948 f!3853)) (ite (is-Implies!53 (rhs!948 f!3853)) (lhs!948 (rhs!948 f!3853)) (f!4203 (rhs!948 f!3853)))))))))))))

(assert (= (and d!53606 c!16230) b!69169))

(assert (= (and d!53606 (not c!16230)) b!69164))

(assert (= (and d!53606 c!16227) b!69159))

(assert (= (and d!53606 (not c!16227)) b!69166))

(assert (= (and b!69161 c!16231) b!69165))

(assert (= (and b!69161 (not c!16231)) b!69168))

(assert (= (and b!69161 c!16225) b!69167))

(assert (= (and b!69161 (not c!16225)) b!69163))

(assert (= (and b!69160 c!16228) b!69158))

(assert (= (and b!69160 (not c!16228)) b!69157))

(assert (= (and b!69161 c!16229) b!69162))

(assert (= (and b!69161 (not c!16229)) b!69160))

(assert (= (and d!53606 c!16226) b!69156))

(assert (= (and d!53606 (not c!16226)) b!69161))

(declare-fun m!70401 () Bool)

(assert (=> b!69159 m!70401))

(declare-fun m!70403 () Bool)

(assert (=> d!53606 m!70403))

(declare-fun m!70405 () Bool)

(assert (=> b!69169 m!70405))

(assert (=> b!69141 d!53606))

(declare-fun b!69170 () Bool)

(declare-fun e!37439 () Bool)

(declare-fun res!33609 () Bool)

(assert (=> b!69170 (= e!37439 res!33609)))

(assert (=> b!69170 true))

(assert (=> b!69170 true))

(declare-fun b!69171 () Bool)

(declare-fun e!37435 () Bool)

(declare-fun res!33611 () Bool)

(assert (=> b!69171 (= e!37435 res!33611)))

(assert (=> b!69171 true))

(declare-fun b!69172 () Bool)

(declare-fun lt!14321 () Bool)

(assert (=> b!69172 (= e!37435 lt!14321)))

(declare-fun lt!14320 () Bool)

(declare-fun b!69173 () Bool)

(declare-fun e!37440 () Bool)

(declare-fun lt!14324 () Bool)

(declare-fun lt!14323 () Bool)

(assert (=> b!69173 (= e!37440 (ite lt!14320 (and lt!14324 lt!14323) (and (not (is-Implies!53 lt!14294)) (or (not (is-Not!53 lt!14294)) lt!14324))))))

(assert (=> b!69173 (= lt!14324 e!37439)))

(declare-fun c!16234 () Bool)

(assert (=> b!69173 (= c!16234 (or lt!14320 (and (not (is-Implies!53 lt!14294)) (is-Not!53 lt!14294))))))

(assert (=> b!69173 (= lt!14320 (is-Or!53 lt!14294))))

(declare-fun b!69174 () Bool)

(declare-fun e!37438 () Bool)

(declare-fun e!37437 () Bool)

(assert (=> b!69174 (= e!37438 e!37437)))

(declare-fun res!33610 () Bool)

(assert (=> b!69174 (=> (not res!33610) (not e!37437))))

(declare-fun lt!14322 () Bool)

(assert (=> b!69174 (= res!33610 (not lt!14322))))

(declare-fun d!53608 () Bool)

(declare-fun c!16235 () Bool)

(assert (=> d!53608 (= c!16235 lt!14322)))

(declare-fun e!37433 () Bool)

(assert (=> d!53608 (= lt!14323 e!37433)))

(declare-fun c!16232 () Bool)

(assert (=> d!53608 (= c!16232 e!37438)))

(declare-fun res!33612 () Bool)

(assert (=> d!53608 (=> res!33612 e!37438)))

(declare-fun lt!14319 () Bool)

(assert (=> d!53608 (= res!33612 lt!14319)))

(assert (=> d!53608 (= lt!14319 (and lt!14322 lt!14321))))

(declare-fun e!37436 () Bool)

(assert (=> d!53608 (= lt!14321 e!37436)))

(declare-fun c!16236 () Bool)

(assert (=> d!53608 (= c!16236 (or lt!14322 (is-Or!53 lt!14294) (and (not (is-Implies!53 lt!14294)) (is-Not!53 lt!14294))))))

(assert (=> d!53608 (= lt!14322 (is-And!53 lt!14294))))

(assert (=> d!53608 (= (isSimplified!1 lt!14294) e!37440)))

(declare-fun b!69175 () Bool)

(declare-fun res!33615 () Bool)

(assert (=> b!69175 (= e!37436 res!33615)))

(assert (=> b!69175 true))

(declare-fun b!69176 () Bool)

(assert (=> b!69176 (= e!37440 (and lt!14321 lt!14323))))

(declare-fun b!69177 () Bool)

(assert (=> b!69177 (= e!37433 (isSimplified!1 (ite lt!14319 (rhs!947 lt!14294) (rhs!949 lt!14294))))))

(declare-fun b!69178 () Bool)

(assert (=> b!69178 (= e!37439 lt!14321)))

(declare-fun b!69179 () Bool)

(declare-fun res!33614 () Bool)

(assert (=> b!69179 (= e!37433 res!33614)))

(assert (=> b!69179 true))

(declare-fun b!69180 () Bool)

(declare-fun e!37434 () Bool)

(assert (=> b!69180 (= e!37434 e!37435)))

(declare-fun c!16233 () Bool)

(declare-fun lt!14325 () Bool)

(assert (=> b!69180 (= c!16233 (or lt!14325 (and (not (is-Implies!53 lt!14294)) (is-Not!53 lt!14294))))))

(declare-fun b!69181 () Bool)

(assert (=> b!69181 (= e!37436 (isSimplified!1 (ite lt!14322 (lhs!947 lt!14294) (ite (is-Or!53 lt!14294) (lhs!949 lt!14294) (f!4203 lt!14294)))))))

(declare-fun b!69182 () Bool)

(assert (=> b!69182 (= e!37437 e!37434)))

(declare-fun res!33613 () Bool)

(assert (=> b!69182 (=> (not res!33613) (not e!37434))))

(assert (=> b!69182 (= res!33613 lt!14325)))

(assert (=> b!69182 (= lt!14325 (is-Or!53 lt!14294))))

(assert (= (and d!53608 c!16236) b!69181))

(assert (= (and d!53608 (not c!16236)) b!69175))

(assert (= (and d!53608 (not res!33612)) b!69174))

(assert (= (and b!69174 res!33610) b!69182))

(assert (= (and b!69182 res!33613) b!69180))

(assert (= (and b!69180 c!16233) b!69172))

(assert (= (and b!69180 (not c!16233)) b!69171))

(assert (= (and d!53608 c!16232) b!69177))

(assert (= (and d!53608 (not c!16232)) b!69179))

(assert (= (and b!69173 c!16234) b!69178))

(assert (= (and b!69173 (not c!16234)) b!69170))

(assert (= (and d!53608 c!16235) b!69176))

(assert (= (and d!53608 (not c!16235)) b!69173))

(declare-fun m!70407 () Bool)

(assert (=> b!69177 m!70407))

(declare-fun m!70409 () Bool)

(assert (=> b!69181 m!70409))

(assert (=> d!53602 d!53608))

(declare-fun b!69183 () Bool)

(declare-fun e!37447 () Formula!48)

(declare-fun lt!14326 () Formula!48)

(declare-fun lt!14332 () Formula!48)

(assert (=> b!69183 (= e!37447 (And!53 lt!14326 lt!14332))))

(declare-fun b!69184 () Bool)

(declare-fun e!37441 () Formula!48)

(declare-fun res!33616 () Formula!48)

(assert (=> b!69184 (= e!37441 res!33616)))

(assert (=> b!69184 true))

(assert (=> b!69184 true))

(declare-fun b!69185 () Bool)

(declare-fun lt!14329 () Formula!48)

(assert (=> b!69185 (= e!37441 lt!14329)))

(declare-fun lt!14333 () Bool)

(declare-fun b!69186 () Bool)

(declare-fun e!37442 () Formula!48)

(assert (=> b!69186 (= e!37442 (simplify!1 (ite lt!14333 (rhs!947 (ite lt!14299 (rhs!947 (rhs!948 f!3853)) (ite (is-Or!53 (rhs!948 f!3853)) (rhs!949 (rhs!948 f!3853)) (rhs!948 (rhs!948 f!3853))))) (ite (is-Or!53 (ite lt!14299 (rhs!947 (rhs!948 f!3853)) (ite (is-Or!53 (rhs!948 f!3853)) (rhs!949 (rhs!948 f!3853)) (rhs!948 (rhs!948 f!3853))))) (rhs!949 (ite lt!14299 (rhs!947 (rhs!948 f!3853)) (ite (is-Or!53 (rhs!948 f!3853)) (rhs!949 (rhs!948 f!3853)) (rhs!948 (rhs!948 f!3853))))) (rhs!948 (ite lt!14299 (rhs!947 (rhs!948 f!3853)) (ite (is-Or!53 (rhs!948 f!3853)) (rhs!949 (rhs!948 f!3853)) (rhs!948 (rhs!948 f!3853)))))))))))

(declare-fun b!69187 () Bool)

(declare-fun e!37444 () Formula!48)

(declare-fun lt!14331 () Formula!48)

(declare-fun lt!14334 () Formula!48)

(declare-fun lt!14330 () Bool)

(assert (=> b!69187 (= e!37444 (ite lt!14330 (Or!53 (Not!53 lt!14331) lt!14334) (ite (is-Not!53 (ite lt!14299 (rhs!947 (rhs!948 f!3853)) (ite (is-Or!53 (rhs!948 f!3853)) (rhs!949 (rhs!948 f!3853)) (rhs!948 (rhs!948 f!3853))))) (Not!53 lt!14331) (ite lt!14299 (rhs!947 (rhs!948 f!3853)) (ite (is-Or!53 (rhs!948 f!3853)) (rhs!949 (rhs!948 f!3853)) (rhs!948 (rhs!948 f!3853)))))))))

(assert (=> b!69187 (= lt!14331 e!37441)))

(declare-fun c!16240 () Bool)

(assert (=> b!69187 (= c!16240 (or lt!14330 (is-Not!53 (ite lt!14299 (rhs!947 (rhs!948 f!3853)) (ite (is-Or!53 (rhs!948 f!3853)) (rhs!949 (rhs!948 f!3853)) (rhs!948 (rhs!948 f!3853)))))))))

(assert (=> b!69187 (= lt!14330 (is-Implies!53 (ite lt!14299 (rhs!947 (rhs!948 f!3853)) (ite (is-Or!53 (rhs!948 f!3853)) (rhs!949 (rhs!948 f!3853)) (rhs!948 (rhs!948 f!3853))))))))

(declare-fun d!53610 () Bool)

(declare-fun lt!14328 () Formula!48)

(assert (=> d!53610 (isSimplified!1 lt!14328)))

(assert (=> d!53610 (= lt!14328 e!37447)))

(declare-fun c!16238 () Bool)

(assert (=> d!53610 (= c!16238 lt!14333)))

(assert (=> d!53610 (= lt!14332 e!37442)))

(declare-fun c!16239 () Bool)

(assert (=> d!53610 (= c!16239 (or lt!14333 (is-Or!53 (ite lt!14299 (rhs!947 (rhs!948 f!3853)) (ite (is-Or!53 (rhs!948 f!3853)) (rhs!949 (rhs!948 f!3853)) (rhs!948 (rhs!948 f!3853))))) (is-Implies!53 (ite lt!14299 (rhs!947 (rhs!948 f!3853)) (ite (is-Or!53 (rhs!948 f!3853)) (rhs!949 (rhs!948 f!3853)) (rhs!948 (rhs!948 f!3853)))))))))

(declare-fun e!37443 () Formula!48)

(assert (=> d!53610 (= lt!14326 e!37443)))

(declare-fun c!16242 () Bool)

(assert (=> d!53610 (= c!16242 (or lt!14333 (is-Or!53 (ite lt!14299 (rhs!947 (rhs!948 f!3853)) (ite (is-Or!53 (rhs!948 f!3853)) (rhs!949 (rhs!948 f!3853)) (rhs!948 (rhs!948 f!3853))))) (is-Implies!53 (ite lt!14299 (rhs!947 (rhs!948 f!3853)) (ite (is-Or!53 (rhs!948 f!3853)) (rhs!949 (rhs!948 f!3853)) (rhs!948 (rhs!948 f!3853))))) (is-Not!53 (ite lt!14299 (rhs!947 (rhs!948 f!3853)) (ite (is-Or!53 (rhs!948 f!3853)) (rhs!949 (rhs!948 f!3853)) (rhs!948 (rhs!948 f!3853)))))))))

(assert (=> d!53610 (= lt!14333 (is-And!53 (ite lt!14299 (rhs!947 (rhs!948 f!3853)) (ite (is-Or!53 (rhs!948 f!3853)) (rhs!949 (rhs!948 f!3853)) (rhs!948 (rhs!948 f!3853))))))))

(assert (=> d!53610 (= (simplify!1 (ite lt!14299 (rhs!947 (rhs!948 f!3853)) (ite (is-Or!53 (rhs!948 f!3853)) (rhs!949 (rhs!948 f!3853)) (rhs!948 (rhs!948 f!3853))))) lt!14328)))

(declare-fun b!69188 () Bool)

(assert (=> b!69188 (= e!37447 e!37444)))

(declare-fun c!16241 () Bool)

(declare-fun lt!14327 () Bool)

(assert (=> b!69188 (= c!16241 lt!14327)))

(declare-fun e!37445 () Formula!48)

(assert (=> b!69188 (= lt!14334 e!37445)))

(declare-fun c!16237 () Bool)

(assert (=> b!69188 (= c!16237 (or lt!14327 (is-Implies!53 (ite lt!14299 (rhs!947 (rhs!948 f!3853)) (ite (is-Or!53 (rhs!948 f!3853)) (rhs!949 (rhs!948 f!3853)) (rhs!948 (rhs!948 f!3853)))))))))

(declare-fun e!37446 () Formula!48)

(assert (=> b!69188 (= lt!14329 e!37446)))

(declare-fun c!16243 () Bool)

(assert (=> b!69188 (= c!16243 (or lt!14327 (is-Implies!53 (ite lt!14299 (rhs!947 (rhs!948 f!3853)) (ite (is-Or!53 (rhs!948 f!3853)) (rhs!949 (rhs!948 f!3853)) (rhs!948 (rhs!948 f!3853))))) (is-Not!53 (ite lt!14299 (rhs!947 (rhs!948 f!3853)) (ite (is-Or!53 (rhs!948 f!3853)) (rhs!949 (rhs!948 f!3853)) (rhs!948 (rhs!948 f!3853)))))))))

(assert (=> b!69188 (= lt!14327 (is-Or!53 (ite lt!14299 (rhs!947 (rhs!948 f!3853)) (ite (is-Or!53 (rhs!948 f!3853)) (rhs!949 (rhs!948 f!3853)) (rhs!948 (rhs!948 f!3853))))))))

(declare-fun b!69189 () Bool)

(assert (=> b!69189 (= e!37444 (Or!53 lt!14329 lt!14334))))

(declare-fun b!69190 () Bool)

(declare-fun res!33618 () Formula!48)

(assert (=> b!69190 (= e!37445 res!33618)))

(assert (=> b!69190 true))

(declare-fun b!69191 () Bool)

(declare-fun res!33620 () Formula!48)

(assert (=> b!69191 (= e!37443 res!33620)))

(assert (=> b!69191 true))

(declare-fun b!69192 () Bool)

(assert (=> b!69192 (= e!37446 lt!14326)))

(declare-fun b!69193 () Bool)

(declare-fun res!33617 () Formula!48)

(assert (=> b!69193 (= e!37442 res!33617)))

(assert (=> b!69193 true))

(declare-fun b!69194 () Bool)

(assert (=> b!69194 (= e!37445 lt!14332)))

(declare-fun b!69195 () Bool)

(declare-fun res!33619 () Formula!48)

(assert (=> b!69195 (= e!37446 res!33619)))

(assert (=> b!69195 true))

(declare-fun b!69196 () Bool)

(assert (=> b!69196 (= e!37443 (simplify!1 (ite lt!14333 (lhs!947 (ite lt!14299 (rhs!947 (rhs!948 f!3853)) (ite (is-Or!53 (rhs!948 f!3853)) (rhs!949 (rhs!948 f!3853)) (rhs!948 (rhs!948 f!3853))))) (ite (is-Or!53 (ite lt!14299 (rhs!947 (rhs!948 f!3853)) (ite (is-Or!53 (rhs!948 f!3853)) (rhs!949 (rhs!948 f!3853)) (rhs!948 (rhs!948 f!3853))))) (lhs!949 (ite lt!14299 (rhs!947 (rhs!948 f!3853)) (ite (is-Or!53 (rhs!948 f!3853)) (rhs!949 (rhs!948 f!3853)) (rhs!948 (rhs!948 f!3853))))) (ite (is-Implies!53 (ite lt!14299 (rhs!947 (rhs!948 f!3853)) (ite (is-Or!53 (rhs!948 f!3853)) (rhs!949 (rhs!948 f!3853)) (rhs!948 (rhs!948 f!3853))))) (lhs!948 (ite lt!14299 (rhs!947 (rhs!948 f!3853)) (ite (is-Or!53 (rhs!948 f!3853)) (rhs!949 (rhs!948 f!3853)) (rhs!948 (rhs!948 f!3853))))) (f!4203 (ite lt!14299 (rhs!947 (rhs!948 f!3853)) (ite (is-Or!53 (rhs!948 f!3853)) (rhs!949 (rhs!948 f!3853)) (rhs!948 (rhs!948 f!3853))))))))))))

(assert (= (and d!53610 c!16242) b!69196))

(assert (= (and d!53610 (not c!16242)) b!69191))

(assert (= (and d!53610 c!16239) b!69186))

(assert (= (and d!53610 (not c!16239)) b!69193))

(assert (= (and b!69188 c!16243) b!69192))

(assert (= (and b!69188 (not c!16243)) b!69195))

(assert (= (and b!69188 c!16237) b!69194))

(assert (= (and b!69188 (not c!16237)) b!69190))

(assert (= (and b!69187 c!16240) b!69185))

(assert (= (and b!69187 (not c!16240)) b!69184))

(assert (= (and b!69188 c!16241) b!69189))

(assert (= (and b!69188 (not c!16241)) b!69187))

(assert (= (and d!53610 c!16238) b!69183))

(assert (= (and d!53610 (not c!16238)) b!69188))

(declare-fun m!70411 () Bool)

(assert (=> b!69186 m!70411))

(declare-fun m!70413 () Bool)

(assert (=> d!53610 m!70413))

(declare-fun m!70415 () Bool)

(assert (=> b!69196 m!70415))

(assert (=> b!69131 d!53610))

(declare-fun b!69197 () Bool)

(declare-fun e!37454 () Formula!48)

(declare-fun lt!14335 () Formula!48)

(declare-fun lt!14341 () Formula!48)

(assert (=> b!69197 (= e!37454 (And!53 lt!14335 lt!14341))))

(declare-fun b!69198 () Bool)

(declare-fun e!37448 () Formula!48)

(declare-fun res!33621 () Formula!48)

(assert (=> b!69198 (= e!37448 res!33621)))

(assert (=> b!69198 true))

(assert (=> b!69198 true))

(declare-fun b!69199 () Bool)

(declare-fun lt!14338 () Formula!48)

(assert (=> b!69199 (= e!37448 lt!14338)))

(declare-fun lt!14342 () Bool)

(declare-fun e!37449 () Formula!48)

(declare-fun b!69200 () Bool)

(assert (=> b!69200 (= e!37449 (simplify!1 (ite lt!14342 (rhs!947 (ite lt!14290 (lhs!947 (lhs!948 f!3853)) (ite (is-Or!53 (lhs!948 f!3853)) (lhs!949 (lhs!948 f!3853)) (ite (is-Implies!53 (lhs!948 f!3853)) (lhs!948 (lhs!948 f!3853)) (f!4203 (lhs!948 f!3853)))))) (ite (is-Or!53 (ite lt!14290 (lhs!947 (lhs!948 f!3853)) (ite (is-Or!53 (lhs!948 f!3853)) (lhs!949 (lhs!948 f!3853)) (ite (is-Implies!53 (lhs!948 f!3853)) (lhs!948 (lhs!948 f!3853)) (f!4203 (lhs!948 f!3853)))))) (rhs!949 (ite lt!14290 (lhs!947 (lhs!948 f!3853)) (ite (is-Or!53 (lhs!948 f!3853)) (lhs!949 (lhs!948 f!3853)) (ite (is-Implies!53 (lhs!948 f!3853)) (lhs!948 (lhs!948 f!3853)) (f!4203 (lhs!948 f!3853)))))) (rhs!948 (ite lt!14290 (lhs!947 (lhs!948 f!3853)) (ite (is-Or!53 (lhs!948 f!3853)) (lhs!949 (lhs!948 f!3853)) (ite (is-Implies!53 (lhs!948 f!3853)) (lhs!948 (lhs!948 f!3853)) (f!4203 (lhs!948 f!3853))))))))))))

(declare-fun lt!14339 () Bool)

(declare-fun b!69201 () Bool)

(declare-fun e!37451 () Formula!48)

(declare-fun lt!14340 () Formula!48)

(declare-fun lt!14343 () Formula!48)

(assert (=> b!69201 (= e!37451 (ite lt!14339 (Or!53 (Not!53 lt!14340) lt!14343) (ite (is-Not!53 (ite lt!14290 (lhs!947 (lhs!948 f!3853)) (ite (is-Or!53 (lhs!948 f!3853)) (lhs!949 (lhs!948 f!3853)) (ite (is-Implies!53 (lhs!948 f!3853)) (lhs!948 (lhs!948 f!3853)) (f!4203 (lhs!948 f!3853)))))) (Not!53 lt!14340) (ite lt!14290 (lhs!947 (lhs!948 f!3853)) (ite (is-Or!53 (lhs!948 f!3853)) (lhs!949 (lhs!948 f!3853)) (ite (is-Implies!53 (lhs!948 f!3853)) (lhs!948 (lhs!948 f!3853)) (f!4203 (lhs!948 f!3853))))))))))

(assert (=> b!69201 (= lt!14340 e!37448)))

(declare-fun c!16247 () Bool)

(assert (=> b!69201 (= c!16247 (or lt!14339 (is-Not!53 (ite lt!14290 (lhs!947 (lhs!948 f!3853)) (ite (is-Or!53 (lhs!948 f!3853)) (lhs!949 (lhs!948 f!3853)) (ite (is-Implies!53 (lhs!948 f!3853)) (lhs!948 (lhs!948 f!3853)) (f!4203 (lhs!948 f!3853))))))))))

(assert (=> b!69201 (= lt!14339 (is-Implies!53 (ite lt!14290 (lhs!947 (lhs!948 f!3853)) (ite (is-Or!53 (lhs!948 f!3853)) (lhs!949 (lhs!948 f!3853)) (ite (is-Implies!53 (lhs!948 f!3853)) (lhs!948 (lhs!948 f!3853)) (f!4203 (lhs!948 f!3853)))))))))

(declare-fun d!53612 () Bool)

(declare-fun lt!14337 () Formula!48)

(assert (=> d!53612 (isSimplified!1 lt!14337)))

(assert (=> d!53612 (= lt!14337 e!37454)))

(declare-fun c!16245 () Bool)

(assert (=> d!53612 (= c!16245 lt!14342)))

(assert (=> d!53612 (= lt!14341 e!37449)))

(declare-fun c!16246 () Bool)

(assert (=> d!53612 (= c!16246 (or lt!14342 (is-Or!53 (ite lt!14290 (lhs!947 (lhs!948 f!3853)) (ite (is-Or!53 (lhs!948 f!3853)) (lhs!949 (lhs!948 f!3853)) (ite (is-Implies!53 (lhs!948 f!3853)) (lhs!948 (lhs!948 f!3853)) (f!4203 (lhs!948 f!3853)))))) (is-Implies!53 (ite lt!14290 (lhs!947 (lhs!948 f!3853)) (ite (is-Or!53 (lhs!948 f!3853)) (lhs!949 (lhs!948 f!3853)) (ite (is-Implies!53 (lhs!948 f!3853)) (lhs!948 (lhs!948 f!3853)) (f!4203 (lhs!948 f!3853))))))))))

(declare-fun e!37450 () Formula!48)

(assert (=> d!53612 (= lt!14335 e!37450)))

(declare-fun c!16249 () Bool)

(assert (=> d!53612 (= c!16249 (or lt!14342 (is-Or!53 (ite lt!14290 (lhs!947 (lhs!948 f!3853)) (ite (is-Or!53 (lhs!948 f!3853)) (lhs!949 (lhs!948 f!3853)) (ite (is-Implies!53 (lhs!948 f!3853)) (lhs!948 (lhs!948 f!3853)) (f!4203 (lhs!948 f!3853)))))) (is-Implies!53 (ite lt!14290 (lhs!947 (lhs!948 f!3853)) (ite (is-Or!53 (lhs!948 f!3853)) (lhs!949 (lhs!948 f!3853)) (ite (is-Implies!53 (lhs!948 f!3853)) (lhs!948 (lhs!948 f!3853)) (f!4203 (lhs!948 f!3853)))))) (is-Not!53 (ite lt!14290 (lhs!947 (lhs!948 f!3853)) (ite (is-Or!53 (lhs!948 f!3853)) (lhs!949 (lhs!948 f!3853)) (ite (is-Implies!53 (lhs!948 f!3853)) (lhs!948 (lhs!948 f!3853)) (f!4203 (lhs!948 f!3853))))))))))

(assert (=> d!53612 (= lt!14342 (is-And!53 (ite lt!14290 (lhs!947 (lhs!948 f!3853)) (ite (is-Or!53 (lhs!948 f!3853)) (lhs!949 (lhs!948 f!3853)) (ite (is-Implies!53 (lhs!948 f!3853)) (lhs!948 (lhs!948 f!3853)) (f!4203 (lhs!948 f!3853)))))))))

(assert (=> d!53612 (= (simplify!1 (ite lt!14290 (lhs!947 (lhs!948 f!3853)) (ite (is-Or!53 (lhs!948 f!3853)) (lhs!949 (lhs!948 f!3853)) (ite (is-Implies!53 (lhs!948 f!3853)) (lhs!948 (lhs!948 f!3853)) (f!4203 (lhs!948 f!3853)))))) lt!14337)))

(declare-fun b!69202 () Bool)

(assert (=> b!69202 (= e!37454 e!37451)))

(declare-fun c!16248 () Bool)

(declare-fun lt!14336 () Bool)

(assert (=> b!69202 (= c!16248 lt!14336)))

(declare-fun e!37452 () Formula!48)

(assert (=> b!69202 (= lt!14343 e!37452)))

(declare-fun c!16244 () Bool)

(assert (=> b!69202 (= c!16244 (or lt!14336 (is-Implies!53 (ite lt!14290 (lhs!947 (lhs!948 f!3853)) (ite (is-Or!53 (lhs!948 f!3853)) (lhs!949 (lhs!948 f!3853)) (ite (is-Implies!53 (lhs!948 f!3853)) (lhs!948 (lhs!948 f!3853)) (f!4203 (lhs!948 f!3853))))))))))

(declare-fun e!37453 () Formula!48)

(assert (=> b!69202 (= lt!14338 e!37453)))

(declare-fun c!16250 () Bool)

(assert (=> b!69202 (= c!16250 (or lt!14336 (is-Implies!53 (ite lt!14290 (lhs!947 (lhs!948 f!3853)) (ite (is-Or!53 (lhs!948 f!3853)) (lhs!949 (lhs!948 f!3853)) (ite (is-Implies!53 (lhs!948 f!3853)) (lhs!948 (lhs!948 f!3853)) (f!4203 (lhs!948 f!3853)))))) (is-Not!53 (ite lt!14290 (lhs!947 (lhs!948 f!3853)) (ite (is-Or!53 (lhs!948 f!3853)) (lhs!949 (lhs!948 f!3853)) (ite (is-Implies!53 (lhs!948 f!3853)) (lhs!948 (lhs!948 f!3853)) (f!4203 (lhs!948 f!3853))))))))))

(assert (=> b!69202 (= lt!14336 (is-Or!53 (ite lt!14290 (lhs!947 (lhs!948 f!3853)) (ite (is-Or!53 (lhs!948 f!3853)) (lhs!949 (lhs!948 f!3853)) (ite (is-Implies!53 (lhs!948 f!3853)) (lhs!948 (lhs!948 f!3853)) (f!4203 (lhs!948 f!3853)))))))))

(declare-fun b!69203 () Bool)

(assert (=> b!69203 (= e!37451 (Or!53 lt!14338 lt!14343))))

(declare-fun b!69204 () Bool)

(declare-fun res!33623 () Formula!48)

(assert (=> b!69204 (= e!37452 res!33623)))

(assert (=> b!69204 true))

(declare-fun b!69205 () Bool)

(declare-fun res!33625 () Formula!48)

(assert (=> b!69205 (= e!37450 res!33625)))

(assert (=> b!69205 true))

(declare-fun b!69206 () Bool)

(assert (=> b!69206 (= e!37453 lt!14335)))

(declare-fun b!69207 () Bool)

(declare-fun res!33622 () Formula!48)

(assert (=> b!69207 (= e!37449 res!33622)))

(assert (=> b!69207 true))

(declare-fun b!69208 () Bool)

(assert (=> b!69208 (= e!37452 lt!14341)))

(declare-fun b!69209 () Bool)

(declare-fun res!33624 () Formula!48)

(assert (=> b!69209 (= e!37453 res!33624)))

(assert (=> b!69209 true))

(declare-fun b!69210 () Bool)

(assert (=> b!69210 (= e!37450 (simplify!1 (ite lt!14342 (lhs!947 (ite lt!14290 (lhs!947 (lhs!948 f!3853)) (ite (is-Or!53 (lhs!948 f!3853)) (lhs!949 (lhs!948 f!3853)) (ite (is-Implies!53 (lhs!948 f!3853)) (lhs!948 (lhs!948 f!3853)) (f!4203 (lhs!948 f!3853)))))) (ite (is-Or!53 (ite lt!14290 (lhs!947 (lhs!948 f!3853)) (ite (is-Or!53 (lhs!948 f!3853)) (lhs!949 (lhs!948 f!3853)) (ite (is-Implies!53 (lhs!948 f!3853)) (lhs!948 (lhs!948 f!3853)) (f!4203 (lhs!948 f!3853)))))) (lhs!949 (ite lt!14290 (lhs!947 (lhs!948 f!3853)) (ite (is-Or!53 (lhs!948 f!3853)) (lhs!949 (lhs!948 f!3853)) (ite (is-Implies!53 (lhs!948 f!3853)) (lhs!948 (lhs!948 f!3853)) (f!4203 (lhs!948 f!3853)))))) (ite (is-Implies!53 (ite lt!14290 (lhs!947 (lhs!948 f!3853)) (ite (is-Or!53 (lhs!948 f!3853)) (lhs!949 (lhs!948 f!3853)) (ite (is-Implies!53 (lhs!948 f!3853)) (lhs!948 (lhs!948 f!3853)) (f!4203 (lhs!948 f!3853)))))) (lhs!948 (ite lt!14290 (lhs!947 (lhs!948 f!3853)) (ite (is-Or!53 (lhs!948 f!3853)) (lhs!949 (lhs!948 f!3853)) (ite (is-Implies!53 (lhs!948 f!3853)) (lhs!948 (lhs!948 f!3853)) (f!4203 (lhs!948 f!3853)))))) (f!4203 (ite lt!14290 (lhs!947 (lhs!948 f!3853)) (ite (is-Or!53 (lhs!948 f!3853)) (lhs!949 (lhs!948 f!3853)) (ite (is-Implies!53 (lhs!948 f!3853)) (lhs!948 (lhs!948 f!3853)) (f!4203 (lhs!948 f!3853)))))))))))))

(assert (= (and d!53612 c!16249) b!69210))

(assert (= (and d!53612 (not c!16249)) b!69205))

(assert (= (and d!53612 c!16246) b!69200))

(assert (= (and d!53612 (not c!16246)) b!69207))

(assert (= (and b!69202 c!16250) b!69206))

(assert (= (and b!69202 (not c!16250)) b!69209))

(assert (= (and b!69202 c!16244) b!69208))

(assert (= (and b!69202 (not c!16244)) b!69204))

(assert (= (and b!69201 c!16247) b!69199))

(assert (= (and b!69201 (not c!16247)) b!69198))

(assert (= (and b!69202 c!16248) b!69203))

(assert (= (and b!69202 (not c!16248)) b!69201))

(assert (= (and d!53612 c!16245) b!69197))

(assert (= (and d!53612 (not c!16245)) b!69202))

(declare-fun m!70417 () Bool)

(assert (=> b!69200 m!70417))

(declare-fun m!70419 () Bool)

(assert (=> d!53612 m!70419))

(declare-fun m!70421 () Bool)

(assert (=> b!69210 m!70421))

(assert (=> b!69127 d!53612))

(declare-fun b!69211 () Bool)

(declare-fun e!37461 () Bool)

(declare-fun res!33626 () Bool)

(assert (=> b!69211 (= e!37461 res!33626)))

(assert (=> b!69211 true))

(assert (=> b!69211 true))

(declare-fun b!69212 () Bool)

(declare-fun e!37457 () Bool)

(declare-fun res!33628 () Bool)

(assert (=> b!69212 (= e!37457 res!33628)))

(assert (=> b!69212 true))

(declare-fun b!69213 () Bool)

(declare-fun lt!14346 () Bool)

(assert (=> b!69213 (= e!37457 lt!14346)))

(declare-fun e!37462 () Bool)

(declare-fun b!69214 () Bool)

(declare-fun lt!14348 () Bool)

(declare-fun lt!14345 () Bool)

(declare-fun lt!14349 () Bool)

(assert (=> b!69214 (= e!37462 (ite lt!14345 (and lt!14349 lt!14348) (and (not (is-Implies!53 lt!14285)) (or (not (is-Not!53 lt!14285)) lt!14349))))))

(assert (=> b!69214 (= lt!14349 e!37461)))

(declare-fun c!16253 () Bool)

(assert (=> b!69214 (= c!16253 (or lt!14345 (and (not (is-Implies!53 lt!14285)) (is-Not!53 lt!14285))))))

(assert (=> b!69214 (= lt!14345 (is-Or!53 lt!14285))))

(declare-fun b!69215 () Bool)

(declare-fun e!37460 () Bool)

(declare-fun e!37459 () Bool)

(assert (=> b!69215 (= e!37460 e!37459)))

(declare-fun res!33627 () Bool)

(assert (=> b!69215 (=> (not res!33627) (not e!37459))))

(declare-fun lt!14347 () Bool)

(assert (=> b!69215 (= res!33627 (not lt!14347))))

(declare-fun d!53614 () Bool)

(declare-fun c!16254 () Bool)

(assert (=> d!53614 (= c!16254 lt!14347)))

(declare-fun e!37455 () Bool)

(assert (=> d!53614 (= lt!14348 e!37455)))

(declare-fun c!16251 () Bool)

(assert (=> d!53614 (= c!16251 e!37460)))

(declare-fun res!33629 () Bool)

(assert (=> d!53614 (=> res!33629 e!37460)))

(declare-fun lt!14344 () Bool)

(assert (=> d!53614 (= res!33629 lt!14344)))

(assert (=> d!53614 (= lt!14344 (and lt!14347 lt!14346))))

(declare-fun e!37458 () Bool)

(assert (=> d!53614 (= lt!14346 e!37458)))

(declare-fun c!16255 () Bool)

(assert (=> d!53614 (= c!16255 (or lt!14347 (is-Or!53 lt!14285) (and (not (is-Implies!53 lt!14285)) (is-Not!53 lt!14285))))))

(assert (=> d!53614 (= lt!14347 (is-And!53 lt!14285))))

(assert (=> d!53614 (= (isSimplified!1 lt!14285) e!37462)))

(declare-fun b!69216 () Bool)

(declare-fun res!33632 () Bool)

(assert (=> b!69216 (= e!37458 res!33632)))

(assert (=> b!69216 true))

(declare-fun b!69217 () Bool)

(assert (=> b!69217 (= e!37462 (and lt!14346 lt!14348))))

(declare-fun b!69218 () Bool)

(assert (=> b!69218 (= e!37455 (isSimplified!1 (ite lt!14344 (rhs!947 lt!14285) (rhs!949 lt!14285))))))

(declare-fun b!69219 () Bool)

(assert (=> b!69219 (= e!37461 lt!14346)))

(declare-fun b!69220 () Bool)

(declare-fun res!33631 () Bool)

(assert (=> b!69220 (= e!37455 res!33631)))

(assert (=> b!69220 true))

(declare-fun b!69221 () Bool)

(declare-fun e!37456 () Bool)

(assert (=> b!69221 (= e!37456 e!37457)))

(declare-fun c!16252 () Bool)

(declare-fun lt!14350 () Bool)

(assert (=> b!69221 (= c!16252 (or lt!14350 (and (not (is-Implies!53 lt!14285)) (is-Not!53 lt!14285))))))

(declare-fun b!69222 () Bool)

(assert (=> b!69222 (= e!37458 (isSimplified!1 (ite lt!14347 (lhs!947 lt!14285) (ite (is-Or!53 lt!14285) (lhs!949 lt!14285) (f!4203 lt!14285)))))))

(declare-fun b!69223 () Bool)

(assert (=> b!69223 (= e!37459 e!37456)))

(declare-fun res!33630 () Bool)

(assert (=> b!69223 (=> (not res!33630) (not e!37456))))

(assert (=> b!69223 (= res!33630 lt!14350)))

(assert (=> b!69223 (= lt!14350 (is-Or!53 lt!14285))))

(assert (= (and d!53614 c!16255) b!69222))

(assert (= (and d!53614 (not c!16255)) b!69216))

(assert (= (and d!53614 (not res!33629)) b!69215))

(assert (= (and b!69215 res!33627) b!69223))

(assert (= (and b!69223 res!33630) b!69221))

(assert (= (and b!69221 c!16252) b!69213))

(assert (= (and b!69221 (not c!16252)) b!69212))

(assert (= (and d!53614 c!16251) b!69218))

(assert (= (and d!53614 (not c!16251)) b!69220))

(assert (= (and b!69214 c!16253) b!69219))

(assert (= (and b!69214 (not c!16253)) b!69211))

(assert (= (and d!53614 c!16254) b!69217))

(assert (= (and d!53614 (not c!16254)) b!69214))

(declare-fun m!70423 () Bool)

(assert (=> b!69218 m!70423))

(declare-fun m!70425 () Bool)

(assert (=> b!69222 m!70425))

(assert (=> d!53600 d!53614))

(declare-fun b!69224 () Bool)

(declare-fun e!37469 () Bool)

(declare-fun res!33633 () Bool)

(assert (=> b!69224 (= e!37469 res!33633)))

(assert (=> b!69224 true))

(assert (=> b!69224 true))

(declare-fun b!69225 () Bool)

(declare-fun e!37465 () Bool)

(declare-fun res!33635 () Bool)

(assert (=> b!69225 (= e!37465 res!33635)))

(assert (=> b!69225 true))

(declare-fun b!69226 () Bool)

(declare-fun lt!14353 () Bool)

(assert (=> b!69226 (= e!37465 lt!14353)))

(declare-fun lt!14352 () Bool)

(declare-fun e!37470 () Bool)

(declare-fun b!69227 () Bool)

(declare-fun lt!14356 () Bool)

(declare-fun lt!14355 () Bool)

(assert (=> b!69227 (= e!37470 (ite lt!14352 (and lt!14356 lt!14355) (and (not (is-Implies!53 (ite lt!14261 (lhs!947 x$1!891) (ite (is-Or!53 x$1!891) (lhs!949 x$1!891) (f!4203 x$1!891))))) (or (not (is-Not!53 (ite lt!14261 (lhs!947 x$1!891) (ite (is-Or!53 x$1!891) (lhs!949 x$1!891) (f!4203 x$1!891))))) lt!14356))))))

(assert (=> b!69227 (= lt!14356 e!37469)))

(declare-fun c!16258 () Bool)

(assert (=> b!69227 (= c!16258 (or lt!14352 (and (not (is-Implies!53 (ite lt!14261 (lhs!947 x$1!891) (ite (is-Or!53 x$1!891) (lhs!949 x$1!891) (f!4203 x$1!891))))) (is-Not!53 (ite lt!14261 (lhs!947 x$1!891) (ite (is-Or!53 x$1!891) (lhs!949 x$1!891) (f!4203 x$1!891)))))))))

(assert (=> b!69227 (= lt!14352 (is-Or!53 (ite lt!14261 (lhs!947 x$1!891) (ite (is-Or!53 x$1!891) (lhs!949 x$1!891) (f!4203 x$1!891)))))))

(declare-fun b!69228 () Bool)

(declare-fun e!37468 () Bool)

(declare-fun e!37467 () Bool)

(assert (=> b!69228 (= e!37468 e!37467)))

(declare-fun res!33634 () Bool)

(assert (=> b!69228 (=> (not res!33634) (not e!37467))))

(declare-fun lt!14354 () Bool)

(assert (=> b!69228 (= res!33634 (not lt!14354))))

(declare-fun d!53616 () Bool)

(declare-fun c!16259 () Bool)

(assert (=> d!53616 (= c!16259 lt!14354)))

(declare-fun e!37463 () Bool)

(assert (=> d!53616 (= lt!14355 e!37463)))

(declare-fun c!16256 () Bool)

(assert (=> d!53616 (= c!16256 e!37468)))

(declare-fun res!33636 () Bool)

(assert (=> d!53616 (=> res!33636 e!37468)))

(declare-fun lt!14351 () Bool)

(assert (=> d!53616 (= res!33636 lt!14351)))

(assert (=> d!53616 (= lt!14351 (and lt!14354 lt!14353))))

(declare-fun e!37466 () Bool)

(assert (=> d!53616 (= lt!14353 e!37466)))

(declare-fun c!16260 () Bool)

(assert (=> d!53616 (= c!16260 (or lt!14354 (is-Or!53 (ite lt!14261 (lhs!947 x$1!891) (ite (is-Or!53 x$1!891) (lhs!949 x$1!891) (f!4203 x$1!891)))) (and (not (is-Implies!53 (ite lt!14261 (lhs!947 x$1!891) (ite (is-Or!53 x$1!891) (lhs!949 x$1!891) (f!4203 x$1!891))))) (is-Not!53 (ite lt!14261 (lhs!947 x$1!891) (ite (is-Or!53 x$1!891) (lhs!949 x$1!891) (f!4203 x$1!891)))))))))

(assert (=> d!53616 (= lt!14354 (is-And!53 (ite lt!14261 (lhs!947 x$1!891) (ite (is-Or!53 x$1!891) (lhs!949 x$1!891) (f!4203 x$1!891)))))))

(assert (=> d!53616 (= (isSimplified!1 (ite lt!14261 (lhs!947 x$1!891) (ite (is-Or!53 x$1!891) (lhs!949 x$1!891) (f!4203 x$1!891)))) e!37470)))

(declare-fun b!69229 () Bool)

(declare-fun res!33639 () Bool)

(assert (=> b!69229 (= e!37466 res!33639)))

(assert (=> b!69229 true))

(declare-fun b!69230 () Bool)

(assert (=> b!69230 (= e!37470 (and lt!14353 lt!14355))))

(declare-fun b!69231 () Bool)

(assert (=> b!69231 (= e!37463 (isSimplified!1 (ite lt!14351 (rhs!947 (ite lt!14261 (lhs!947 x$1!891) (ite (is-Or!53 x$1!891) (lhs!949 x$1!891) (f!4203 x$1!891)))) (rhs!949 (ite lt!14261 (lhs!947 x$1!891) (ite (is-Or!53 x$1!891) (lhs!949 x$1!891) (f!4203 x$1!891)))))))))

(declare-fun b!69232 () Bool)

(assert (=> b!69232 (= e!37469 lt!14353)))

(declare-fun b!69233 () Bool)

(declare-fun res!33638 () Bool)

(assert (=> b!69233 (= e!37463 res!33638)))

(assert (=> b!69233 true))

(declare-fun b!69234 () Bool)

(declare-fun e!37464 () Bool)

(assert (=> b!69234 (= e!37464 e!37465)))

(declare-fun c!16257 () Bool)

(declare-fun lt!14357 () Bool)

(assert (=> b!69234 (= c!16257 (or lt!14357 (and (not (is-Implies!53 (ite lt!14261 (lhs!947 x$1!891) (ite (is-Or!53 x$1!891) (lhs!949 x$1!891) (f!4203 x$1!891))))) (is-Not!53 (ite lt!14261 (lhs!947 x$1!891) (ite (is-Or!53 x$1!891) (lhs!949 x$1!891) (f!4203 x$1!891)))))))))

(declare-fun b!69235 () Bool)

(assert (=> b!69235 (= e!37466 (isSimplified!1 (ite lt!14354 (lhs!947 (ite lt!14261 (lhs!947 x$1!891) (ite (is-Or!53 x$1!891) (lhs!949 x$1!891) (f!4203 x$1!891)))) (ite (is-Or!53 (ite lt!14261 (lhs!947 x$1!891) (ite (is-Or!53 x$1!891) (lhs!949 x$1!891) (f!4203 x$1!891)))) (lhs!949 (ite lt!14261 (lhs!947 x$1!891) (ite (is-Or!53 x$1!891) (lhs!949 x$1!891) (f!4203 x$1!891)))) (f!4203 (ite lt!14261 (lhs!947 x$1!891) (ite (is-Or!53 x$1!891) (lhs!949 x$1!891) (f!4203 x$1!891))))))))))

(declare-fun b!69236 () Bool)

(assert (=> b!69236 (= e!37467 e!37464)))

(declare-fun res!33637 () Bool)

(assert (=> b!69236 (=> (not res!33637) (not e!37464))))

(assert (=> b!69236 (= res!33637 lt!14357)))

(assert (=> b!69236 (= lt!14357 (is-Or!53 (ite lt!14261 (lhs!947 x$1!891) (ite (is-Or!53 x$1!891) (lhs!949 x$1!891) (f!4203 x$1!891)))))))

(assert (= (and d!53616 c!16260) b!69235))

(assert (= (and d!53616 (not c!16260)) b!69229))

(assert (= (and d!53616 (not res!33636)) b!69228))

(assert (= (and b!69228 res!33634) b!69236))

(assert (= (and b!69236 res!33637) b!69234))

(assert (= (and b!69234 c!16257) b!69226))

(assert (= (and b!69234 (not c!16257)) b!69225))

(assert (= (and d!53616 c!16256) b!69231))

(assert (= (and d!53616 (not c!16256)) b!69233))

(assert (= (and b!69227 c!16258) b!69232))

(assert (= (and b!69227 (not c!16258)) b!69224))

(assert (= (and d!53616 c!16259) b!69230))

(assert (= (and d!53616 (not c!16259)) b!69227))

(declare-fun m!70427 () Bool)

(assert (=> b!69231 m!70427))

(declare-fun m!70429 () Bool)

(assert (=> b!69235 m!70429))

(assert (=> b!69084 d!53616))

(declare-fun b!69237 () Bool)

(declare-fun e!37477 () Bool)

(declare-fun res!33640 () Bool)

(assert (=> b!69237 (= e!37477 res!33640)))

(assert (=> b!69237 true))

(assert (=> b!69237 true))

(declare-fun b!69238 () Bool)

(declare-fun e!37473 () Bool)

(declare-fun res!33642 () Bool)

(assert (=> b!69238 (= e!37473 res!33642)))

(assert (=> b!69238 true))

(declare-fun b!69239 () Bool)

(declare-fun lt!14360 () Bool)

(assert (=> b!69239 (= e!37473 lt!14360)))

(declare-fun lt!14362 () Bool)

(declare-fun lt!14359 () Bool)

(declare-fun e!37478 () Bool)

(declare-fun b!69240 () Bool)

(declare-fun lt!14363 () Bool)

(assert (=> b!69240 (= e!37478 (ite lt!14359 (and lt!14363 lt!14362) (and (not (is-Implies!53 (ite lt!14258 (rhs!947 x$1!891) (rhs!949 x$1!891)))) (or (not (is-Not!53 (ite lt!14258 (rhs!947 x$1!891) (rhs!949 x$1!891)))) lt!14363))))))

(assert (=> b!69240 (= lt!14363 e!37477)))

(declare-fun c!16263 () Bool)

(assert (=> b!69240 (= c!16263 (or lt!14359 (and (not (is-Implies!53 (ite lt!14258 (rhs!947 x$1!891) (rhs!949 x$1!891)))) (is-Not!53 (ite lt!14258 (rhs!947 x$1!891) (rhs!949 x$1!891))))))))

(assert (=> b!69240 (= lt!14359 (is-Or!53 (ite lt!14258 (rhs!947 x$1!891) (rhs!949 x$1!891))))))

(declare-fun b!69241 () Bool)

(declare-fun e!37476 () Bool)

(declare-fun e!37475 () Bool)

(assert (=> b!69241 (= e!37476 e!37475)))

(declare-fun res!33641 () Bool)

(assert (=> b!69241 (=> (not res!33641) (not e!37475))))

(declare-fun lt!14361 () Bool)

(assert (=> b!69241 (= res!33641 (not lt!14361))))

(declare-fun d!53618 () Bool)

(declare-fun c!16264 () Bool)

(assert (=> d!53618 (= c!16264 lt!14361)))

(declare-fun e!37471 () Bool)

(assert (=> d!53618 (= lt!14362 e!37471)))

(declare-fun c!16261 () Bool)

(assert (=> d!53618 (= c!16261 e!37476)))

(declare-fun res!33643 () Bool)

(assert (=> d!53618 (=> res!33643 e!37476)))

(declare-fun lt!14358 () Bool)

(assert (=> d!53618 (= res!33643 lt!14358)))

(assert (=> d!53618 (= lt!14358 (and lt!14361 lt!14360))))

(declare-fun e!37474 () Bool)

(assert (=> d!53618 (= lt!14360 e!37474)))

(declare-fun c!16265 () Bool)

(assert (=> d!53618 (= c!16265 (or lt!14361 (is-Or!53 (ite lt!14258 (rhs!947 x$1!891) (rhs!949 x$1!891))) (and (not (is-Implies!53 (ite lt!14258 (rhs!947 x$1!891) (rhs!949 x$1!891)))) (is-Not!53 (ite lt!14258 (rhs!947 x$1!891) (rhs!949 x$1!891))))))))

(assert (=> d!53618 (= lt!14361 (is-And!53 (ite lt!14258 (rhs!947 x$1!891) (rhs!949 x$1!891))))))

(assert (=> d!53618 (= (isSimplified!1 (ite lt!14258 (rhs!947 x$1!891) (rhs!949 x$1!891))) e!37478)))

(declare-fun b!69242 () Bool)

(declare-fun res!33646 () Bool)

(assert (=> b!69242 (= e!37474 res!33646)))

(assert (=> b!69242 true))

(declare-fun b!69243 () Bool)

(assert (=> b!69243 (= e!37478 (and lt!14360 lt!14362))))

(declare-fun b!69244 () Bool)

(assert (=> b!69244 (= e!37471 (isSimplified!1 (ite lt!14358 (rhs!947 (ite lt!14258 (rhs!947 x$1!891) (rhs!949 x$1!891))) (rhs!949 (ite lt!14258 (rhs!947 x$1!891) (rhs!949 x$1!891))))))))

(declare-fun b!69245 () Bool)

(assert (=> b!69245 (= e!37477 lt!14360)))

(declare-fun b!69246 () Bool)

(declare-fun res!33645 () Bool)

(assert (=> b!69246 (= e!37471 res!33645)))

(assert (=> b!69246 true))

(declare-fun b!69247 () Bool)

(declare-fun e!37472 () Bool)

(assert (=> b!69247 (= e!37472 e!37473)))

(declare-fun c!16262 () Bool)

(declare-fun lt!14364 () Bool)

(assert (=> b!69247 (= c!16262 (or lt!14364 (and (not (is-Implies!53 (ite lt!14258 (rhs!947 x$1!891) (rhs!949 x$1!891)))) (is-Not!53 (ite lt!14258 (rhs!947 x$1!891) (rhs!949 x$1!891))))))))

(declare-fun b!69248 () Bool)

(assert (=> b!69248 (= e!37474 (isSimplified!1 (ite lt!14361 (lhs!947 (ite lt!14258 (rhs!947 x$1!891) (rhs!949 x$1!891))) (ite (is-Or!53 (ite lt!14258 (rhs!947 x$1!891) (rhs!949 x$1!891))) (lhs!949 (ite lt!14258 (rhs!947 x$1!891) (rhs!949 x$1!891))) (f!4203 (ite lt!14258 (rhs!947 x$1!891) (rhs!949 x$1!891)))))))))

(declare-fun b!69249 () Bool)

(assert (=> b!69249 (= e!37475 e!37472)))

(declare-fun res!33644 () Bool)

(assert (=> b!69249 (=> (not res!33644) (not e!37472))))

(assert (=> b!69249 (= res!33644 lt!14364)))

(assert (=> b!69249 (= lt!14364 (is-Or!53 (ite lt!14258 (rhs!947 x$1!891) (rhs!949 x$1!891))))))

(assert (= (and d!53618 c!16265) b!69248))

(assert (= (and d!53618 (not c!16265)) b!69242))

(assert (= (and d!53618 (not res!33643)) b!69241))

(assert (= (and b!69241 res!33641) b!69249))

(assert (= (and b!69249 res!33644) b!69247))

(assert (= (and b!69247 c!16262) b!69239))

(assert (= (and b!69247 (not c!16262)) b!69238))

(assert (= (and d!53618 c!16261) b!69244))

(assert (= (and d!53618 (not c!16261)) b!69246))

(assert (= (and b!69240 c!16263) b!69245))

(assert (= (and b!69240 (not c!16263)) b!69237))

(assert (= (and d!53618 c!16264) b!69243))

(assert (= (and d!53618 (not c!16264)) b!69240))

(declare-fun m!70431 () Bool)

(assert (=> b!69244 m!70431))

(declare-fun m!70433 () Bool)

(assert (=> b!69248 m!70433))

(assert (=> b!69080 d!53618))

(push 1)

(assert (not b!69244))

(assert (not b!69155))

(assert (not b!69218))

(assert (not b!69177))

(assert (not d!53610))

(assert (not b!69159))

(assert (not b!69186))

(assert (not b!69196))

(assert (not b!69210))

(assert (not b!69222))

(assert (not b!69181))

(assert (not b!69145))

(assert (not b!69169))

(assert (not d!53604))

(assert (not b!69248))

(assert (not b!69231))

(assert (not b!69200))

(assert (not d!53612))

(assert (not d!53606))

(assert (not b!69235))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

