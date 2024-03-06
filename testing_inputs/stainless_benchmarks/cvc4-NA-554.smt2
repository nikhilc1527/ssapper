; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4148 () Bool)

(assert start!4148)

(declare-fun res!15291 () Bool)

(declare-fun e!16758 () Bool)

(assert (=> start!4148 (=> (not res!15291) (not e!16758))))

(declare-datatypes () ((T!1863 (T!1864 (val!104 Int)))))

(declare-datatypes () ((Conc!81 (CC!80 (left!725 Conc!81) (right!728 Conc!81)) (Single!80 (x!9006 T!1863)) (Empty!91))))

(declare-fun xs!586 () Conc!81)

(declare-fun concInv!73 (Conc!81) Bool)

(assert (=> start!4148 (= res!15291 (concInv!73 xs!586))))

(assert (=> start!4148 e!16758))

(declare-fun e!16760 () Bool)

(assert (=> start!4148 e!16760))

(assert (=> start!4148 true))

(declare-fun e!16759 () Bool)

(assert (=> start!4148 e!16759))

(declare-fun tp_is_empty!207 () Bool)

(assert (=> start!4148 tp_is_empty!207))

(declare-fun b!33105 () Bool)

(declare-fun tp!6868 () Bool)

(declare-fun tp!6869 () Bool)

(assert (=> b!33105 (= e!16760 (and tp!6868 tp!6869))))

(declare-fun b!33106 () Bool)

(declare-fun tp!6867 () Bool)

(declare-fun tp!6866 () Bool)

(assert (=> b!33106 (= e!16759 (and tp!6867 tp!6866))))

(declare-fun b!33107 () Bool)

(declare-fun e!16761 () Bool)

(assert (=> b!33107 (= e!16758 e!16761)))

(declare-fun res!15285 () Bool)

(assert (=> b!33107 (=> res!15285 e!16761)))

(declare-fun y!785 () T!1863)

(declare-fun i!263 () Int)

(declare-fun instAppendUpdateAxiom!7 (Conc!81 Int T!1863) Bool)

(assert (=> b!33107 (= res!15285 (not (instAppendUpdateAxiom!7 xs!586 i!263 y!785)))))

(declare-fun res!5578 () Conc!81)

(declare-fun b!33108 () Bool)

(declare-datatypes () ((List!371 (Cons!365 (h!282 T!1863) (t!4385 List!371)) (Nil!366))))

(declare-fun toList!126 (Conc!81) List!371)

(declare-fun updated!9 (List!371 Int T!1863) List!371)

(assert (=> b!33108 (= e!16761 (not (= (toList!126 res!5578) (updated!9 (toList!126 xs!586) i!263 y!785))))))

(declare-fun b!33109 () Bool)

(declare-fun res!15282 () Bool)

(assert (=> b!33109 (=> (not res!15282) (not e!16758))))

(declare-fun balanced!74 (Conc!81) Bool)

(assert (=> b!33109 (= res!15282 (balanced!74 xs!586))))

(declare-fun b!33110 () Bool)

(declare-fun res!15286 () Bool)

(assert (=> b!33110 (=> (not res!15286) (not e!16758))))

(assert (=> b!33110 (= res!15286 (>= i!263 0))))

(declare-fun b!33111 () Bool)

(declare-fun res!15290 () Bool)

(assert (=> b!33111 (=> res!15290 e!16761)))

(assert (=> b!33111 (= res!15290 (not (balanced!74 res!5578)))))

(declare-fun b!33112 () Bool)

(declare-fun res!15288 () Bool)

(assert (=> b!33112 (=> (not res!15288) (not e!16758))))

(declare-fun size!294 (Conc!81) Int)

(assert (=> b!33112 (= res!15288 (< i!263 (size!294 (left!725 xs!586))))))

(declare-fun b!33113 () Bool)

(declare-fun res!15289 () Bool)

(assert (=> b!33113 (=> res!15289 e!16761)))

(declare-fun level!64 (Conc!81) Int)

(assert (=> b!33113 (= res!15289 (not (= (level!64 res!5578) (level!64 xs!586))))))

(declare-fun b!33114 () Bool)

(declare-fun res!15292 () Bool)

(assert (=> b!33114 (=> (not res!15292) (not e!16758))))

(declare-fun isEmpty!335 (Conc!81) Bool)

(assert (=> b!33114 (= res!15292 (not (isEmpty!335 xs!586)))))

(declare-fun b!33115 () Bool)

(declare-fun res!15283 () Bool)

(assert (=> b!33115 (=> res!15283 e!16761)))

(assert (=> b!33115 (= res!15283 (not (concInv!73 res!5578)))))

(declare-fun b!33116 () Bool)

(assert (=> b!33116 (= e!16760 tp_is_empty!207)))

(declare-fun b!33117 () Bool)

(declare-fun res!15287 () Bool)

(assert (=> b!33117 (=> (not res!15287) (not e!16758))))

(assert (=> b!33117 (= res!15287 (< i!263 (size!294 xs!586)))))

(declare-fun b!33118 () Bool)

(assert (=> b!33118 (= e!16759 tp_is_empty!207)))

(declare-fun b!33119 () Bool)

(declare-fun res!15281 () Bool)

(assert (=> b!33119 (=> (not res!15281) (not e!16758))))

(assert (=> b!33119 (= res!15281 (not (is-Single!80 xs!586)))))

(declare-fun b!33120 () Bool)

(declare-fun res!15284 () Bool)

(assert (=> b!33120 (=> (not res!15284) (not e!16758))))

(declare-fun update!11 (Conc!81 Int T!1863) Conc!81)

(assert (=> b!33120 (= res!15284 (= res!5578 (CC!80 (update!11 (left!725 xs!586) i!263 y!785) (right!728 xs!586))))))

(assert (= (and start!4148 res!15291) b!33109))

(assert (= (and b!33109 res!15282) b!33114))

(assert (= (and b!33114 res!15292) b!33110))

(assert (= (and b!33110 res!15286) b!33117))

(assert (= (and b!33117 res!15287) b!33119))

(assert (= (and b!33119 res!15281) b!33112))

(assert (= (and b!33112 res!15288) b!33120))

(assert (= (and b!33120 res!15284) b!33107))

(assert (= (and b!33107 (not res!15285)) b!33113))

(assert (= (and b!33113 (not res!15289)) b!33115))

(assert (= (and b!33115 (not res!15283)) b!33111))

(assert (= (and b!33111 (not res!15290)) b!33108))

(assert (= (and start!4148 (is-CC!80 xs!586)) b!33105))

(assert (= (and start!4148 (is-Single!80 xs!586)) b!33116))

(assert (= (and start!4148 (is-CC!80 res!5578)) b!33106))

(assert (= (and start!4148 (is-Single!80 res!5578)) b!33118))

(declare-fun m!35391 () Bool)

(assert (=> b!33115 m!35391))

(declare-fun m!35393 () Bool)

(assert (=> b!33114 m!35393))

(declare-fun m!35395 () Bool)

(assert (=> b!33109 m!35395))

(declare-fun m!35397 () Bool)

(assert (=> b!33108 m!35397))

(declare-fun m!35399 () Bool)

(assert (=> b!33108 m!35399))

(assert (=> b!33108 m!35399))

(declare-fun m!35401 () Bool)

(assert (=> b!33108 m!35401))

(declare-fun m!35403 () Bool)

(assert (=> b!33112 m!35403))

(declare-fun m!35405 () Bool)

(assert (=> b!33117 m!35405))

(declare-fun m!35407 () Bool)

(assert (=> b!33111 m!35407))

(declare-fun m!35409 () Bool)

(assert (=> b!33120 m!35409))

(declare-fun m!35411 () Bool)

(assert (=> b!33113 m!35411))

(declare-fun m!35413 () Bool)

(assert (=> b!33113 m!35413))

(declare-fun m!35415 () Bool)

(assert (=> start!4148 m!35415))

(declare-fun m!35417 () Bool)

(assert (=> b!33107 m!35417))

(push 1)

(assert (not b!33107))

(assert (not b!33115))

(assert (not b!33117))

(assert (not b!33113))

(assert (not b!33111))

(assert (not b!33112))

(assert (not b!33105))

(assert (not b!33109))

(assert (not b!33108))

(assert (not b!33106))

(assert tp_is_empty!207)

(assert (not b!33114))

(assert (not start!4148))

(assert (not b!33120))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!33130 () Bool)

(declare-fun res!15303 () Bool)

(declare-fun e!16766 () Bool)

(assert (=> b!33130 (=> (not res!15303) (not e!16766))))

(assert (=> b!33130 (= res!15303 (<= (- (level!64 (left!725 res!5578)) (level!64 (right!728 res!5578))) 1))))

(declare-fun b!33131 () Bool)

(declare-fun res!15301 () Bool)

(assert (=> b!33131 (=> (not res!15301) (not e!16766))))

(assert (=> b!33131 (= res!15301 (balanced!74 (left!725 res!5578)))))

(declare-fun b!33132 () Bool)

(assert (=> b!33132 (= e!16766 (balanced!74 (right!728 res!5578)))))

(declare-fun d!16705 () Bool)

(declare-fun res!15304 () Bool)

(declare-fun e!16767 () Bool)

(assert (=> d!16705 (=> res!15304 e!16767)))

(assert (=> d!16705 (= res!15304 (not (is-CC!80 res!5578)))))

(assert (=> d!16705 (= (balanced!74 res!5578) e!16767)))

(declare-fun b!33129 () Bool)

(assert (=> b!33129 (= e!16767 e!16766)))

(declare-fun res!15302 () Bool)

(assert (=> b!33129 (=> (not res!15302) (not e!16766))))

(assert (=> b!33129 (= res!15302 (>= (- (level!64 (left!725 res!5578)) (level!64 (right!728 res!5578))) (- 1)))))

(assert (= (and d!16705 (not res!15304)) b!33129))

(assert (= (and b!33129 res!15302) b!33130))

(assert (= (and b!33130 res!15303) b!33131))

(assert (= (and b!33131 res!15301) b!33132))

(declare-fun m!35419 () Bool)

(assert (=> b!33130 m!35419))

(declare-fun m!35421 () Bool)

(assert (=> b!33130 m!35421))

(declare-fun m!35423 () Bool)

(assert (=> b!33131 m!35423))

(declare-fun m!35425 () Bool)

(assert (=> b!33132 m!35425))

(assert (=> b!33129 m!35419))

(assert (=> b!33129 m!35421))

(assert (=> b!33111 d!16705))

(declare-fun b!33141 () Bool)

(declare-fun e!16773 () Bool)

(declare-fun e!16772 () Bool)

(assert (=> b!33141 (= e!16773 e!16772)))

(declare-fun res!15315 () Bool)

(assert (=> b!33141 (=> (not res!15315) (not e!16772))))

(assert (=> b!33141 (= res!15315 (not (isEmpty!335 (left!725 xs!586))))))

(declare-fun b!33144 () Bool)

(assert (=> b!33144 (= e!16772 (concInv!73 (right!728 xs!586)))))

(declare-fun d!16707 () Bool)

(declare-fun res!15313 () Bool)

(assert (=> d!16707 (=> res!15313 e!16773)))

(assert (=> d!16707 (= res!15313 (not (is-CC!80 xs!586)))))

(assert (=> d!16707 (= (concInv!73 xs!586) e!16773)))

(declare-fun b!33143 () Bool)

(declare-fun res!15316 () Bool)

(assert (=> b!33143 (=> (not res!15316) (not e!16772))))

(assert (=> b!33143 (= res!15316 (concInv!73 (left!725 xs!586)))))

(declare-fun b!33142 () Bool)

(declare-fun res!15314 () Bool)

(assert (=> b!33142 (=> (not res!15314) (not e!16772))))

(assert (=> b!33142 (= res!15314 (not (isEmpty!335 (right!728 xs!586))))))

(assert (= (and d!16707 (not res!15313)) b!33141))

(assert (= (and b!33141 res!15315) b!33142))

(assert (= (and b!33142 res!15314) b!33143))

(assert (= (and b!33143 res!15316) b!33144))

(declare-fun m!35427 () Bool)

(assert (=> b!33141 m!35427))

(declare-fun m!35429 () Bool)

(assert (=> b!33144 m!35429))

(declare-fun m!35431 () Bool)

(assert (=> b!33143 m!35431))

(declare-fun m!35433 () Bool)

(assert (=> b!33142 m!35433))

(assert (=> start!4148 d!16707))

(declare-fun b!33156 () Bool)

(declare-fun e!16778 () Int)

(assert (=> b!33156 (= e!16778 (+ (size!294 (left!725 (left!725 xs!586))) (size!294 (right!728 (left!725 xs!586)))))))

(declare-fun d!16709 () Bool)

(declare-fun lt!6239 () Int)

(assert (=> d!16709 (>= lt!6239 0)))

(declare-fun e!16779 () Int)

(assert (=> d!16709 (= lt!6239 e!16779)))

(declare-fun c!7119 () Bool)

(assert (=> d!16709 (= c!7119 (is-Empty!91 (left!725 xs!586)))))

(assert (=> d!16709 (= (size!294 (left!725 xs!586)) lt!6239)))

(declare-fun b!33153 () Bool)

(assert (=> b!33153 (= e!16779 0)))

(declare-fun b!33155 () Bool)

(assert (=> b!33155 (= e!16778 1)))

(declare-fun b!33154 () Bool)

(assert (=> b!33154 (= e!16779 e!16778)))

(declare-fun c!7118 () Bool)

(assert (=> b!33154 (= c!7118 (is-Single!80 (left!725 xs!586)))))

(assert (= (and b!33154 c!7118) b!33155))

(assert (= (and b!33154 (not c!7118)) b!33156))

(assert (= (and d!16709 c!7119) b!33153))

(assert (= (and d!16709 (not c!7119)) b!33154))

(declare-fun m!35435 () Bool)

(assert (=> b!33156 m!35435))

(declare-fun m!35437 () Bool)

(assert (=> b!33156 m!35437))

(assert (=> b!33112 d!16709))

(declare-fun b!33162 () Bool)

(declare-fun e!16782 () Int)

(declare-fun lt!6246 () Int)

(declare-fun lt!6248 () Int)

(assert (=> b!33162 (= e!16782 (+ 1 (ite (>= lt!6246 lt!6248) lt!6246 lt!6248)))))

(assert (=> b!33162 (= lt!6248 (level!64 (right!728 res!5578)))))

(assert (=> b!33162 (= lt!6246 (level!64 (left!725 res!5578)))))

(declare-fun d!16711 () Bool)

(declare-fun lt!6247 () Int)

(assert (=> d!16711 (>= lt!6247 0)))

(assert (=> d!16711 (= lt!6247 e!16782)))

(declare-fun c!7122 () Bool)

(assert (=> d!16711 (= c!7122 (or (is-Empty!91 res!5578) (is-Single!80 res!5578)))))

(assert (=> d!16711 (= (level!64 res!5578) lt!6247)))

(declare-fun b!33161 () Bool)

(assert (=> b!33161 (= e!16782 0)))

(assert (= (and d!16711 c!7122) b!33161))

(assert (= (and d!16711 (not c!7122)) b!33162))

(assert (=> b!33162 m!35421))

(assert (=> b!33162 m!35419))

(assert (=> b!33113 d!16711))

(declare-fun b!33164 () Bool)

(declare-fun e!16783 () Int)

(declare-fun lt!6249 () Int)

(declare-fun lt!6251 () Int)

(assert (=> b!33164 (= e!16783 (+ 1 (ite (>= lt!6249 lt!6251) lt!6249 lt!6251)))))

(assert (=> b!33164 (= lt!6251 (level!64 (right!728 xs!586)))))

(assert (=> b!33164 (= lt!6249 (level!64 (left!725 xs!586)))))

(declare-fun d!16713 () Bool)

(declare-fun lt!6250 () Int)

(assert (=> d!16713 (>= lt!6250 0)))

(assert (=> d!16713 (= lt!6250 e!16783)))

(declare-fun c!7123 () Bool)

(assert (=> d!16713 (= c!7123 (or (is-Empty!91 xs!586) (is-Single!80 xs!586)))))

(assert (=> d!16713 (= (level!64 xs!586) lt!6250)))

(declare-fun b!33163 () Bool)

(assert (=> b!33163 (= e!16783 0)))

(assert (= (and d!16713 c!7123) b!33163))

(assert (= (and d!16713 (not c!7123)) b!33164))

(declare-fun m!35439 () Bool)

(assert (=> b!33164 m!35439))

(declare-fun m!35441 () Bool)

(assert (=> b!33164 m!35441))

(assert (=> b!33113 d!16713))

(declare-fun b!33189 () Bool)

(declare-fun e!16798 () Conc!81)

(declare-fun e!16794 () Conc!81)

(assert (=> b!33189 (= e!16798 e!16794)))

(declare-fun c!7129 () Bool)

(assert (=> b!33189 (= c!7129 (< i!263 (size!294 (left!725 (left!725 xs!586)))))))

(declare-fun b!33190 () Bool)

(declare-fun e!16795 () Bool)

(assert (=> b!33190 (= e!16795 (< i!263 (size!294 (left!725 xs!586))))))

(declare-fun d!16715 () Bool)

(declare-fun e!16797 () Bool)

(assert (=> d!16715 e!16797))

(declare-fun res!15337 () Bool)

(assert (=> d!16715 (=> (not res!15337) (not e!16797))))

(assert (=> d!16715 (= res!15337 (instAppendUpdateAxiom!7 (left!725 xs!586) i!263 y!785))))

(declare-fun lt!6254 () Conc!81)

(assert (=> d!16715 (= lt!6254 e!16798)))

(declare-fun c!7128 () Bool)

(assert (=> d!16715 (= c!7128 (is-Single!80 (left!725 xs!586)))))

(assert (=> d!16715 e!16795))

(declare-fun res!15341 () Bool)

(assert (=> d!16715 (=> (not res!15341) (not e!16795))))

(declare-fun e!16796 () Bool)

(assert (=> d!16715 (= res!15341 e!16796)))

(declare-fun res!15336 () Bool)

(assert (=> d!16715 (=> (not res!15336) (not e!16796))))

(assert (=> d!16715 (= res!15336 (concInv!73 (left!725 xs!586)))))

(assert (=> d!16715 (= (update!11 (left!725 xs!586) i!263 y!785) lt!6254)))

(declare-fun b!33191 () Bool)

(declare-fun res!15334 () Bool)

(assert (=> b!33191 (=> (not res!15334) (not e!16797))))

(assert (=> b!33191 (= res!15334 (concInv!73 lt!6254))))

(declare-fun b!33192 () Bool)

(assert (=> b!33192 (= e!16798 (Single!80 y!785))))

(declare-fun b!33193 () Bool)

(assert (=> b!33193 (= e!16796 (balanced!74 (left!725 xs!586)))))

(declare-fun b!33194 () Bool)

(assert (=> b!33194 (= e!16794 (CC!80 (left!725 (left!725 xs!586)) (update!11 (right!728 (left!725 xs!586)) (- i!263 (size!294 (left!725 (left!725 xs!586)))) y!785)))))

(declare-fun b!33195 () Bool)

(assert (=> b!33195 (= e!16797 (= (toList!126 lt!6254) (updated!9 (toList!126 (left!725 xs!586)) i!263 y!785)))))

(declare-fun b!33196 () Bool)

(declare-fun res!15335 () Bool)

(assert (=> b!33196 (=> (not res!15335) (not e!16797))))

(assert (=> b!33196 (= res!15335 (= (level!64 lt!6254) (level!64 (left!725 xs!586))))))

(declare-fun b!33197 () Bool)

(declare-fun res!15340 () Bool)

(assert (=> b!33197 (=> (not res!15340) (not e!16797))))

(assert (=> b!33197 (= res!15340 (balanced!74 lt!6254))))

(declare-fun b!33198 () Bool)

(declare-fun res!15339 () Bool)

(assert (=> b!33198 (=> (not res!15339) (not e!16795))))

(assert (=> b!33198 (= res!15339 (not (isEmpty!335 (left!725 xs!586))))))

(declare-fun b!33199 () Bool)

(assert (=> b!33199 (= e!16794 (CC!80 (update!11 (left!725 (left!725 xs!586)) i!263 y!785) (right!728 (left!725 xs!586))))))

(declare-fun b!33200 () Bool)

(declare-fun res!15338 () Bool)

(assert (=> b!33200 (=> (not res!15338) (not e!16795))))

(assert (=> b!33200 (= res!15338 (>= i!263 0))))

(assert (= (and d!16715 res!15336) b!33193))

(assert (= (and d!16715 res!15341) b!33198))

(assert (= (and b!33198 res!15339) b!33200))

(assert (= (and b!33200 res!15338) b!33190))

(assert (= (and b!33189 c!7129) b!33199))

(assert (= (and b!33189 (not c!7129)) b!33194))

(assert (= (and d!16715 c!7128) b!33192))

(assert (= (and d!16715 (not c!7128)) b!33189))

(assert (= (and d!16715 res!15337) b!33196))

(assert (= (and b!33196 res!15335) b!33191))

(assert (= (and b!33191 res!15334) b!33197))

(assert (= (and b!33197 res!15340) b!33195))

(assert (=> b!33190 m!35403))

(declare-fun m!35443 () Bool)

(assert (=> b!33199 m!35443))

(declare-fun m!35445 () Bool)

(assert (=> b!33191 m!35445))

(declare-fun m!35447 () Bool)

(assert (=> d!16715 m!35447))

(assert (=> d!16715 m!35431))

(declare-fun m!35449 () Bool)

(assert (=> b!33195 m!35449))

(declare-fun m!35451 () Bool)

(assert (=> b!33195 m!35451))

(assert (=> b!33195 m!35451))

(declare-fun m!35453 () Bool)

(assert (=> b!33195 m!35453))

(declare-fun m!35455 () Bool)

(assert (=> b!33193 m!35455))

(assert (=> b!33194 m!35435))

(declare-fun m!35457 () Bool)

(assert (=> b!33194 m!35457))

(declare-fun m!35459 () Bool)

(assert (=> b!33197 m!35459))

(assert (=> b!33189 m!35435))

(declare-fun m!35461 () Bool)

(assert (=> b!33196 m!35461))

(assert (=> b!33196 m!35441))

(assert (=> b!33198 m!35427))

(assert (=> b!33120 d!16715))

(declare-fun b!33201 () Bool)

(declare-fun e!16800 () Bool)

(declare-fun e!16799 () Bool)

(assert (=> b!33201 (= e!16800 e!16799)))

(declare-fun res!15344 () Bool)

(assert (=> b!33201 (=> (not res!15344) (not e!16799))))

(assert (=> b!33201 (= res!15344 (not (isEmpty!335 (left!725 res!5578))))))

(declare-fun b!33204 () Bool)

(assert (=> b!33204 (= e!16799 (concInv!73 (right!728 res!5578)))))

(declare-fun d!16717 () Bool)

(declare-fun res!15342 () Bool)

(assert (=> d!16717 (=> res!15342 e!16800)))

(assert (=> d!16717 (= res!15342 (not (is-CC!80 res!5578)))))

(assert (=> d!16717 (= (concInv!73 res!5578) e!16800)))

(declare-fun b!33203 () Bool)

(declare-fun res!15345 () Bool)

(assert (=> b!33203 (=> (not res!15345) (not e!16799))))

(assert (=> b!33203 (= res!15345 (concInv!73 (left!725 res!5578)))))

(declare-fun b!33202 () Bool)

(declare-fun res!15343 () Bool)

(assert (=> b!33202 (=> (not res!15343) (not e!16799))))

(assert (=> b!33202 (= res!15343 (not (isEmpty!335 (right!728 res!5578))))))

(assert (= (and d!16717 (not res!15342)) b!33201))

(assert (= (and b!33201 res!15344) b!33202))

(assert (= (and b!33202 res!15343) b!33203))

(assert (= (and b!33203 res!15345) b!33204))

(declare-fun m!35463 () Bool)

(assert (=> b!33201 m!35463))

(declare-fun m!35465 () Bool)

(assert (=> b!33204 m!35465))

(declare-fun m!35467 () Bool)

(assert (=> b!33203 m!35467))

(declare-fun m!35469 () Bool)

(assert (=> b!33202 m!35469))

(assert (=> b!33115 d!16717))

(declare-fun b!33208 () Bool)

(declare-fun e!16801 () Int)

(assert (=> b!33208 (= e!16801 (+ (size!294 (left!725 xs!586)) (size!294 (right!728 xs!586))))))

(declare-fun d!16719 () Bool)

(declare-fun lt!6255 () Int)

(assert (=> d!16719 (>= lt!6255 0)))

(declare-fun e!16802 () Int)

(assert (=> d!16719 (= lt!6255 e!16802)))

(declare-fun c!7131 () Bool)

(assert (=> d!16719 (= c!7131 (is-Empty!91 xs!586))))

(assert (=> d!16719 (= (size!294 xs!586) lt!6255)))

(declare-fun b!33205 () Bool)

(assert (=> b!33205 (= e!16802 0)))

(declare-fun b!33207 () Bool)

(assert (=> b!33207 (= e!16801 1)))

(declare-fun b!33206 () Bool)

(assert (=> b!33206 (= e!16802 e!16801)))

(declare-fun c!7130 () Bool)

(assert (=> b!33206 (= c!7130 (is-Single!80 xs!586))))

(assert (= (and b!33206 c!7130) b!33207))

(assert (= (and b!33206 (not c!7130)) b!33208))

(assert (= (and d!16719 c!7131) b!33205))

(assert (= (and d!16719 (not c!7131)) b!33206))

(assert (=> b!33208 m!35403))

(declare-fun m!35471 () Bool)

(assert (=> b!33208 m!35471))

(assert (=> b!33117 d!16719))

(declare-fun b!33217 () Bool)

(declare-fun e!16807 () List!371)

(assert (=> b!33217 (= e!16807 Nil!366)))

(declare-fun b!33220 () Bool)

(declare-fun e!16808 () List!371)

(declare-fun ++!51 (List!371 List!371) List!371)

(assert (=> b!33220 (= e!16808 (++!51 (toList!126 (left!725 res!5578)) (toList!126 (right!728 res!5578))))))

(declare-fun d!16721 () Bool)

(declare-fun lt!6258 () List!371)

(declare-fun size!295 (List!371) Int)

(assert (=> d!16721 (= (size!295 lt!6258) (size!294 res!5578))))

(assert (=> d!16721 (= lt!6258 e!16807)))

(declare-fun c!7136 () Bool)

(assert (=> d!16721 (= c!7136 (is-Empty!91 res!5578))))

(assert (=> d!16721 (= (toList!126 res!5578) lt!6258)))

(declare-fun b!33218 () Bool)

(assert (=> b!33218 (= e!16807 e!16808)))

(declare-fun c!7137 () Bool)

(assert (=> b!33218 (= c!7137 (is-Single!80 res!5578))))

(declare-fun b!33219 () Bool)

(assert (=> b!33219 (= e!16808 (Cons!365 (x!9006 res!5578) Nil!366))))

(assert (= (and b!33218 c!7137) b!33219))

(assert (= (and b!33218 (not c!7137)) b!33220))

(assert (= (and d!16721 c!7136) b!33217))

(assert (= (and d!16721 (not c!7136)) b!33218))

(declare-fun m!35473 () Bool)

(assert (=> b!33220 m!35473))

(declare-fun m!35475 () Bool)

(assert (=> b!33220 m!35475))

(assert (=> b!33220 m!35473))

(assert (=> b!33220 m!35475))

(declare-fun m!35477 () Bool)

(assert (=> b!33220 m!35477))

(declare-fun m!35479 () Bool)

(assert (=> d!16721 m!35479))

(declare-fun m!35481 () Bool)

(assert (=> d!16721 m!35481))

(assert (=> b!33108 d!16721))

(declare-fun d!16723 () Bool)

(declare-fun c!7140 () Bool)

(assert (=> d!16723 (= c!7140 (and (is-Cons!365 (toList!126 xs!586)) (= i!263 0)))))

(declare-fun e!16811 () List!371)

(assert (=> d!16723 (= (updated!9 (toList!126 xs!586) i!263 y!785) e!16811)))

(declare-fun b!33225 () Bool)

(assert (=> b!33225 (= e!16811 (Cons!365 y!785 (t!4385 (toList!126 xs!586))))))

(declare-fun b!33226 () Bool)

(assert (=> b!33226 (= e!16811 (Cons!365 (h!282 (toList!126 xs!586)) (updated!9 (t!4385 (toList!126 xs!586)) (- i!263 1) y!785)))))

(assert (= (and d!16723 c!7140) b!33225))

(assert (= (and d!16723 (not c!7140)) b!33226))

(declare-fun m!35483 () Bool)

(assert (=> b!33226 m!35483))

(assert (=> b!33108 d!16723))

(declare-fun b!33227 () Bool)

(declare-fun e!16812 () List!371)

(assert (=> b!33227 (= e!16812 Nil!366)))

(declare-fun b!33230 () Bool)

(declare-fun e!16813 () List!371)

(assert (=> b!33230 (= e!16813 (++!51 (toList!126 (left!725 xs!586)) (toList!126 (right!728 xs!586))))))

(declare-fun d!16725 () Bool)

(declare-fun lt!6259 () List!371)

(assert (=> d!16725 (= (size!295 lt!6259) (size!294 xs!586))))

(assert (=> d!16725 (= lt!6259 e!16812)))

(declare-fun c!7141 () Bool)

(assert (=> d!16725 (= c!7141 (is-Empty!91 xs!586))))

(assert (=> d!16725 (= (toList!126 xs!586) lt!6259)))

(declare-fun b!33228 () Bool)

(assert (=> b!33228 (= e!16812 e!16813)))

(declare-fun c!7142 () Bool)

(assert (=> b!33228 (= c!7142 (is-Single!80 xs!586))))

(declare-fun b!33229 () Bool)

(assert (=> b!33229 (= e!16813 (Cons!365 (x!9006 xs!586) Nil!366))))

(assert (= (and b!33228 c!7142) b!33229))

(assert (= (and b!33228 (not c!7142)) b!33230))

(assert (= (and d!16725 c!7141) b!33227))

(assert (= (and d!16725 (not c!7141)) b!33228))

(assert (=> b!33230 m!35451))

(declare-fun m!35485 () Bool)

(assert (=> b!33230 m!35485))

(assert (=> b!33230 m!35451))

(assert (=> b!33230 m!35485))

(declare-fun m!35487 () Bool)

(assert (=> b!33230 m!35487))

(declare-fun m!35489 () Bool)

(assert (=> d!16725 m!35489))

(assert (=> d!16725 m!35405))

(assert (=> b!33108 d!16725))

(declare-fun d!16727 () Bool)

(declare-fun e!16819 () Bool)

(assert (=> d!16727 e!16819))

(declare-fun res!15352 () Bool)

(assert (=> d!16727 (=> res!15352 e!16819)))

(assert (=> d!16727 (= res!15352 (not (is-CC!80 xs!586)))))

(declare-fun e!16818 () Bool)

(assert (=> d!16727 e!16818))

(declare-fun res!15351 () Bool)

(assert (=> d!16727 (=> (not res!15351) (not e!16818))))

(assert (=> d!16727 (= res!15351 (>= i!263 0))))

(assert (=> d!16727 (= (instAppendUpdateAxiom!7 xs!586 i!263 y!785) true)))

(declare-fun b!33235 () Bool)

(assert (=> b!33235 (= e!16818 (< i!263 (size!294 xs!586)))))

(declare-fun b!33236 () Bool)

(declare-fun appendUpdate!6 (List!371 List!371 Int T!1863) Bool)

(assert (=> b!33236 (= e!16819 (appendUpdate!6 (toList!126 (left!725 xs!586)) (toList!126 (right!728 xs!586)) i!263 y!785))))

(assert (= (and d!16727 res!15351) b!33235))

(assert (= (and d!16727 (not res!15352)) b!33236))

(assert (=> b!33235 m!35405))

(assert (=> b!33236 m!35451))

(assert (=> b!33236 m!35485))

(assert (=> b!33236 m!35451))

(assert (=> b!33236 m!35485))

(declare-fun m!35491 () Bool)

(assert (=> b!33236 m!35491))

(assert (=> b!33107 d!16727))

(declare-fun b!33238 () Bool)

(declare-fun res!15355 () Bool)

(declare-fun e!16820 () Bool)

(assert (=> b!33238 (=> (not res!15355) (not e!16820))))

(assert (=> b!33238 (= res!15355 (<= (- (level!64 (left!725 xs!586)) (level!64 (right!728 xs!586))) 1))))

(declare-fun b!33239 () Bool)

(declare-fun res!15353 () Bool)

(assert (=> b!33239 (=> (not res!15353) (not e!16820))))

(assert (=> b!33239 (= res!15353 (balanced!74 (left!725 xs!586)))))

(declare-fun b!33240 () Bool)

(assert (=> b!33240 (= e!16820 (balanced!74 (right!728 xs!586)))))

(declare-fun d!16729 () Bool)

(declare-fun res!15356 () Bool)

(declare-fun e!16821 () Bool)

(assert (=> d!16729 (=> res!15356 e!16821)))

(assert (=> d!16729 (= res!15356 (not (is-CC!80 xs!586)))))

(assert (=> d!16729 (= (balanced!74 xs!586) e!16821)))

(declare-fun b!33237 () Bool)

(assert (=> b!33237 (= e!16821 e!16820)))

(declare-fun res!15354 () Bool)

(assert (=> b!33237 (=> (not res!15354) (not e!16820))))

(assert (=> b!33237 (= res!15354 (>= (- (level!64 (left!725 xs!586)) (level!64 (right!728 xs!586))) (- 1)))))

(assert (= (and d!16729 (not res!15356)) b!33237))

(assert (= (and b!33237 res!15354) b!33238))

(assert (= (and b!33238 res!15355) b!33239))

(assert (= (and b!33239 res!15353) b!33240))

(assert (=> b!33238 m!35441))

(assert (=> b!33238 m!35439))

(assert (=> b!33239 m!35455))

(declare-fun m!35493 () Bool)

(assert (=> b!33240 m!35493))

(assert (=> b!33237 m!35441))

(assert (=> b!33237 m!35439))

(assert (=> b!33109 d!16729))

(declare-fun d!16731 () Bool)

(assert (=> d!16731 (= (isEmpty!335 xs!586) (= xs!586 Empty!91))))

(assert (=> b!33114 d!16731))

(declare-fun b!33247 () Bool)

(declare-fun e!16824 () Bool)

(declare-fun tp!6874 () Bool)

(declare-fun tp!6875 () Bool)

(assert (=> b!33247 (= e!16824 (and tp!6874 tp!6875))))

(declare-fun b!33248 () Bool)

(assert (=> b!33248 (= e!16824 tp_is_empty!207)))

(assert (=> b!33105 (= tp!6868 e!16824)))

(assert (= (and b!33105 (is-CC!80 (left!725 xs!586))) b!33247))

(assert (= (and b!33105 (is-Single!80 (left!725 xs!586))) b!33248))

(declare-fun b!33249 () Bool)

(declare-fun e!16825 () Bool)

(declare-fun tp!6876 () Bool)

(declare-fun tp!6877 () Bool)

(assert (=> b!33249 (= e!16825 (and tp!6876 tp!6877))))

(declare-fun b!33250 () Bool)

(assert (=> b!33250 (= e!16825 tp_is_empty!207)))

(assert (=> b!33105 (= tp!6869 e!16825)))

(assert (= (and b!33105 (is-CC!80 (right!728 xs!586))) b!33249))

(assert (= (and b!33105 (is-Single!80 (right!728 xs!586))) b!33250))

(declare-fun b!33251 () Bool)

(declare-fun e!16826 () Bool)

(declare-fun tp!6878 () Bool)

(declare-fun tp!6879 () Bool)

(assert (=> b!33251 (= e!16826 (and tp!6878 tp!6879))))

(declare-fun b!33252 () Bool)

(assert (=> b!33252 (= e!16826 tp_is_empty!207)))

(assert (=> b!33106 (= tp!6867 e!16826)))

(assert (= (and b!33106 (is-CC!80 (left!725 res!5578))) b!33251))

(assert (= (and b!33106 (is-Single!80 (left!725 res!5578))) b!33252))

(declare-fun b!33253 () Bool)

(declare-fun e!16827 () Bool)

(declare-fun tp!6880 () Bool)

(declare-fun tp!6881 () Bool)

(assert (=> b!33253 (= e!16827 (and tp!6880 tp!6881))))

(declare-fun b!33254 () Bool)

(assert (=> b!33254 (= e!16827 tp_is_empty!207)))

(assert (=> b!33106 (= tp!6866 e!16827)))

(assert (= (and b!33106 (is-CC!80 (right!728 res!5578))) b!33253))

(assert (= (and b!33106 (is-Single!80 (right!728 res!5578))) b!33254))

(push 1)

(assert (not b!33240))

(assert (not b!33195))

(assert (not d!16725))

(assert (not b!33220))

(assert (not b!33191))

(assert (not b!33239))

(assert (not b!33204))

(assert (not b!33143))

(assert (not b!33203))

(assert (not b!33196))

(assert (not b!33132))

(assert (not b!33131))

(assert (not b!33199))

(assert (not b!33141))

(assert (not b!33251))

(assert (not b!33144))

(assert (not b!33189))

(assert (not d!16721))

(assert (not b!33226))

(assert (not b!33156))

(assert (not b!33249))

(assert (not d!16715))

(assert (not b!33230))

(assert (not b!33235))

(assert (not b!33190))

(assert (not b!33129))

(assert (not b!33238))

(assert (not b!33162))

(assert (not b!33130))

(assert (not b!33142))

(assert (not b!33208))

(assert (not b!33198))

(assert (not b!33247))

(assert (not b!33197))

(assert (not b!33202))

(assert (not b!33193))

(assert tp_is_empty!207)

(assert (not b!33236))

(assert (not b!33164))

(assert (not b!33253))

(assert (not b!33201))

(assert (not b!33194))

(assert (not b!33237))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!16733 () Bool)

(assert (=> d!16733 (= (isEmpty!335 (right!728 res!5578)) (= (right!728 res!5578) Empty!91))))

(assert (=> b!33202 d!16733))

(declare-fun d!16735 () Bool)

(declare-fun c!7143 () Bool)

(assert (=> d!16735 (= c!7143 (and (is-Cons!365 (t!4385 (toList!126 xs!586))) (= (- i!263 1) 0)))))

(declare-fun e!16828 () List!371)

(assert (=> d!16735 (= (updated!9 (t!4385 (toList!126 xs!586)) (- i!263 1) y!785) e!16828)))

(declare-fun b!33255 () Bool)

(assert (=> b!33255 (= e!16828 (Cons!365 y!785 (t!4385 (t!4385 (toList!126 xs!586)))))))

(declare-fun b!33256 () Bool)

(assert (=> b!33256 (= e!16828 (Cons!365 (h!282 (t!4385 (toList!126 xs!586))) (updated!9 (t!4385 (t!4385 (toList!126 xs!586))) (- (- i!263 1) 1) y!785)))))

(assert (= (and d!16735 c!7143) b!33255))

(assert (= (and d!16735 (not c!7143)) b!33256))

(declare-fun m!35495 () Bool)

(assert (=> b!33256 m!35495))

(assert (=> b!33226 d!16735))

(declare-fun b!33258 () Bool)

(declare-fun res!15359 () Bool)

(declare-fun e!16829 () Bool)

(assert (=> b!33258 (=> (not res!15359) (not e!16829))))

(assert (=> b!33258 (= res!15359 (<= (- (level!64 (left!725 lt!6254)) (level!64 (right!728 lt!6254))) 1))))

(declare-fun b!33259 () Bool)

(declare-fun res!15357 () Bool)

(assert (=> b!33259 (=> (not res!15357) (not e!16829))))

(assert (=> b!33259 (= res!15357 (balanced!74 (left!725 lt!6254)))))

(declare-fun b!33260 () Bool)

(assert (=> b!33260 (= e!16829 (balanced!74 (right!728 lt!6254)))))

(declare-fun d!16737 () Bool)

(declare-fun res!15360 () Bool)

(declare-fun e!16830 () Bool)

(assert (=> d!16737 (=> res!15360 e!16830)))

(assert (=> d!16737 (= res!15360 (not (is-CC!80 lt!6254)))))

(assert (=> d!16737 (= (balanced!74 lt!6254) e!16830)))

(declare-fun b!33257 () Bool)

(assert (=> b!33257 (= e!16830 e!16829)))

(declare-fun res!15358 () Bool)

(assert (=> b!33257 (=> (not res!15358) (not e!16829))))

(assert (=> b!33257 (= res!15358 (>= (- (level!64 (left!725 lt!6254)) (level!64 (right!728 lt!6254))) (- 1)))))

(assert (= (and d!16737 (not res!15360)) b!33257))

(assert (= (and b!33257 res!15358) b!33258))

(assert (= (and b!33258 res!15359) b!33259))

(assert (= (and b!33259 res!15357) b!33260))

(declare-fun m!35497 () Bool)

(assert (=> b!33258 m!35497))

(declare-fun m!35499 () Bool)

(assert (=> b!33258 m!35499))

(declare-fun m!35501 () Bool)

(assert (=> b!33259 m!35501))

(declare-fun m!35503 () Bool)

(assert (=> b!33260 m!35503))

(assert (=> b!33257 m!35497))

(assert (=> b!33257 m!35499))

(assert (=> b!33197 d!16737))

(declare-fun b!33262 () Bool)

(declare-fun e!16831 () Int)

(declare-fun lt!6260 () Int)

(declare-fun lt!6262 () Int)

(assert (=> b!33262 (= e!16831 (+ 1 (ite (>= lt!6260 lt!6262) lt!6260 lt!6262)))))

(assert (=> b!33262 (= lt!6262 (level!64 (right!728 lt!6254)))))

(assert (=> b!33262 (= lt!6260 (level!64 (left!725 lt!6254)))))

(declare-fun d!16739 () Bool)

(declare-fun lt!6261 () Int)

(assert (=> d!16739 (>= lt!6261 0)))

(assert (=> d!16739 (= lt!6261 e!16831)))

(declare-fun c!7144 () Bool)

(assert (=> d!16739 (= c!7144 (or (is-Empty!91 lt!6254) (is-Single!80 lt!6254)))))

(assert (=> d!16739 (= (level!64 lt!6254) lt!6261)))

(declare-fun b!33261 () Bool)

(assert (=> b!33261 (= e!16831 0)))

(assert (= (and d!16739 c!7144) b!33261))

(assert (= (and d!16739 (not c!7144)) b!33262))

(assert (=> b!33262 m!35499))

(assert (=> b!33262 m!35497))

(assert (=> b!33196 d!16739))

(declare-fun b!33264 () Bool)

(declare-fun e!16832 () Int)

(declare-fun lt!6263 () Int)

(declare-fun lt!6265 () Int)

(assert (=> b!33264 (= e!16832 (+ 1 (ite (>= lt!6263 lt!6265) lt!6263 lt!6265)))))

(assert (=> b!33264 (= lt!6265 (level!64 (right!728 (left!725 xs!586))))))

(assert (=> b!33264 (= lt!6263 (level!64 (left!725 (left!725 xs!586))))))

(declare-fun d!16741 () Bool)

(declare-fun lt!6264 () Int)

(assert (=> d!16741 (>= lt!6264 0)))

(assert (=> d!16741 (= lt!6264 e!16832)))

(declare-fun c!7145 () Bool)

(assert (=> d!16741 (= c!7145 (or (is-Empty!91 (left!725 xs!586)) (is-Single!80 (left!725 xs!586))))))

(assert (=> d!16741 (= (level!64 (left!725 xs!586)) lt!6264)))

(declare-fun b!33263 () Bool)

(assert (=> b!33263 (= e!16832 0)))

(assert (= (and d!16741 c!7145) b!33263))

(assert (= (and d!16741 (not c!7145)) b!33264))

(declare-fun m!35505 () Bool)

(assert (=> b!33264 m!35505))

(declare-fun m!35507 () Bool)

(assert (=> b!33264 m!35507))

(assert (=> b!33196 d!16741))

(declare-fun b!33265 () Bool)

(declare-fun e!16834 () Bool)

(declare-fun e!16833 () Bool)

(assert (=> b!33265 (= e!16834 e!16833)))

(declare-fun res!15363 () Bool)

(assert (=> b!33265 (=> (not res!15363) (not e!16833))))

(assert (=> b!33265 (= res!15363 (not (isEmpty!335 (left!725 (left!725 res!5578)))))))

(declare-fun b!33268 () Bool)

(assert (=> b!33268 (= e!16833 (concInv!73 (right!728 (left!725 res!5578))))))

(declare-fun d!16743 () Bool)

(declare-fun res!15361 () Bool)

(assert (=> d!16743 (=> res!15361 e!16834)))

(assert (=> d!16743 (= res!15361 (not (is-CC!80 (left!725 res!5578))))))

(assert (=> d!16743 (= (concInv!73 (left!725 res!5578)) e!16834)))

(declare-fun b!33267 () Bool)

(declare-fun res!15364 () Bool)

(assert (=> b!33267 (=> (not res!15364) (not e!16833))))

(assert (=> b!33267 (= res!15364 (concInv!73 (left!725 (left!725 res!5578))))))

(declare-fun b!33266 () Bool)

(declare-fun res!15362 () Bool)

(assert (=> b!33266 (=> (not res!15362) (not e!16833))))

(assert (=> b!33266 (= res!15362 (not (isEmpty!335 (right!728 (left!725 res!5578)))))))

(assert (= (and d!16743 (not res!15361)) b!33265))

(assert (= (and b!33265 res!15363) b!33266))

(assert (= (and b!33266 res!15362) b!33267))

(assert (= (and b!33267 res!15364) b!33268))

(declare-fun m!35509 () Bool)

(assert (=> b!33265 m!35509))

(declare-fun m!35511 () Bool)

(assert (=> b!33268 m!35511))

(declare-fun m!35513 () Bool)

(assert (=> b!33267 m!35513))

(declare-fun m!35515 () Bool)

(assert (=> b!33266 m!35515))

(assert (=> b!33203 d!16743))

(declare-fun b!33270 () Bool)

(declare-fun res!15367 () Bool)

(declare-fun e!16835 () Bool)

(assert (=> b!33270 (=> (not res!15367) (not e!16835))))

(assert (=> b!33270 (= res!15367 (<= (- (level!64 (left!725 (left!725 xs!586))) (level!64 (right!728 (left!725 xs!586)))) 1))))

(declare-fun b!33271 () Bool)

(declare-fun res!15365 () Bool)

(assert (=> b!33271 (=> (not res!15365) (not e!16835))))

(assert (=> b!33271 (= res!15365 (balanced!74 (left!725 (left!725 xs!586))))))

(declare-fun b!33272 () Bool)

(assert (=> b!33272 (= e!16835 (balanced!74 (right!728 (left!725 xs!586))))))

(declare-fun d!16745 () Bool)

(declare-fun res!15368 () Bool)

(declare-fun e!16836 () Bool)

(assert (=> d!16745 (=> res!15368 e!16836)))

(assert (=> d!16745 (= res!15368 (not (is-CC!80 (left!725 xs!586))))))

(assert (=> d!16745 (= (balanced!74 (left!725 xs!586)) e!16836)))

(declare-fun b!33269 () Bool)

(assert (=> b!33269 (= e!16836 e!16835)))

(declare-fun res!15366 () Bool)

(assert (=> b!33269 (=> (not res!15366) (not e!16835))))

(assert (=> b!33269 (= res!15366 (>= (- (level!64 (left!725 (left!725 xs!586))) (level!64 (right!728 (left!725 xs!586)))) (- 1)))))

(assert (= (and d!16745 (not res!15368)) b!33269))

(assert (= (and b!33269 res!15366) b!33270))

(assert (= (and b!33270 res!15367) b!33271))

(assert (= (and b!33271 res!15365) b!33272))

(assert (=> b!33270 m!35507))

(assert (=> b!33270 m!35505))

(declare-fun m!35517 () Bool)

(assert (=> b!33271 m!35517))

(declare-fun m!35519 () Bool)

(assert (=> b!33272 m!35519))

(assert (=> b!33269 m!35507))

(assert (=> b!33269 m!35505))

(assert (=> b!33193 d!16745))

(assert (=> b!33237 d!16741))

(declare-fun b!33274 () Bool)

(declare-fun e!16837 () Int)

(declare-fun lt!6266 () Int)

(declare-fun lt!6268 () Int)

(assert (=> b!33274 (= e!16837 (+ 1 (ite (>= lt!6266 lt!6268) lt!6266 lt!6268)))))

(assert (=> b!33274 (= lt!6268 (level!64 (right!728 (right!728 xs!586))))))

(assert (=> b!33274 (= lt!6266 (level!64 (left!725 (right!728 xs!586))))))

(declare-fun d!16747 () Bool)

(declare-fun lt!6267 () Int)

(assert (=> d!16747 (>= lt!6267 0)))

(assert (=> d!16747 (= lt!6267 e!16837)))

(declare-fun c!7146 () Bool)

(assert (=> d!16747 (= c!7146 (or (is-Empty!91 (right!728 xs!586)) (is-Single!80 (right!728 xs!586))))))

(assert (=> d!16747 (= (level!64 (right!728 xs!586)) lt!6267)))

(declare-fun b!33273 () Bool)

(assert (=> b!33273 (= e!16837 0)))

(assert (= (and d!16747 c!7146) b!33273))

(assert (= (and d!16747 (not c!7146)) b!33274))

(declare-fun m!35521 () Bool)

(assert (=> b!33274 m!35521))

(declare-fun m!35523 () Bool)

(assert (=> b!33274 m!35523))

(assert (=> b!33237 d!16747))

(declare-fun d!16749 () Bool)

(assert (=> d!16749 (= (isEmpty!335 (left!725 xs!586)) (= (left!725 xs!586) Empty!91))))

(assert (=> b!33141 d!16749))

(declare-fun b!33275 () Bool)

(declare-fun e!16838 () List!371)

(assert (=> b!33275 (= e!16838 Nil!366)))

(declare-fun b!33278 () Bool)

(declare-fun e!16839 () List!371)

(assert (=> b!33278 (= e!16839 (++!51 (toList!126 (left!725 lt!6254)) (toList!126 (right!728 lt!6254))))))

(declare-fun d!16751 () Bool)

(declare-fun lt!6269 () List!371)

(assert (=> d!16751 (= (size!295 lt!6269) (size!294 lt!6254))))

(assert (=> d!16751 (= lt!6269 e!16838)))

(declare-fun c!7147 () Bool)

(assert (=> d!16751 (= c!7147 (is-Empty!91 lt!6254))))

(assert (=> d!16751 (= (toList!126 lt!6254) lt!6269)))

(declare-fun b!33276 () Bool)

(assert (=> b!33276 (= e!16838 e!16839)))

(declare-fun c!7148 () Bool)

(assert (=> b!33276 (= c!7148 (is-Single!80 lt!6254))))

(declare-fun b!33277 () Bool)

(assert (=> b!33277 (= e!16839 (Cons!365 (x!9006 lt!6254) Nil!366))))

(assert (= (and b!33276 c!7148) b!33277))

(assert (= (and b!33276 (not c!7148)) b!33278))

(assert (= (and d!16751 c!7147) b!33275))

(assert (= (and d!16751 (not c!7147)) b!33276))

(declare-fun m!35525 () Bool)

(assert (=> b!33278 m!35525))

(declare-fun m!35527 () Bool)

(assert (=> b!33278 m!35527))

(assert (=> b!33278 m!35525))

(assert (=> b!33278 m!35527))

(declare-fun m!35529 () Bool)

(assert (=> b!33278 m!35529))

(declare-fun m!35531 () Bool)

(assert (=> d!16751 m!35531))

(declare-fun m!35533 () Bool)

(assert (=> d!16751 m!35533))

(assert (=> b!33195 d!16751))

(declare-fun d!16753 () Bool)

(declare-fun c!7149 () Bool)

(assert (=> d!16753 (= c!7149 (and (is-Cons!365 (toList!126 (left!725 xs!586))) (= i!263 0)))))

(declare-fun e!16840 () List!371)

(assert (=> d!16753 (= (updated!9 (toList!126 (left!725 xs!586)) i!263 y!785) e!16840)))

(declare-fun b!33279 () Bool)

(assert (=> b!33279 (= e!16840 (Cons!365 y!785 (t!4385 (toList!126 (left!725 xs!586)))))))

(declare-fun b!33280 () Bool)

(assert (=> b!33280 (= e!16840 (Cons!365 (h!282 (toList!126 (left!725 xs!586))) (updated!9 (t!4385 (toList!126 (left!725 xs!586))) (- i!263 1) y!785)))))

(assert (= (and d!16753 c!7149) b!33279))

(assert (= (and d!16753 (not c!7149)) b!33280))

(declare-fun m!35535 () Bool)

(assert (=> b!33280 m!35535))

(assert (=> b!33195 d!16753))

(declare-fun b!33281 () Bool)

(declare-fun e!16841 () List!371)

(assert (=> b!33281 (= e!16841 Nil!366)))

(declare-fun b!33284 () Bool)

(declare-fun e!16842 () List!371)

(assert (=> b!33284 (= e!16842 (++!51 (toList!126 (left!725 (left!725 xs!586))) (toList!126 (right!728 (left!725 xs!586)))))))

(declare-fun d!16755 () Bool)

(declare-fun lt!6270 () List!371)

(assert (=> d!16755 (= (size!295 lt!6270) (size!294 (left!725 xs!586)))))

(assert (=> d!16755 (= lt!6270 e!16841)))

(declare-fun c!7150 () Bool)

(assert (=> d!16755 (= c!7150 (is-Empty!91 (left!725 xs!586)))))

(assert (=> d!16755 (= (toList!126 (left!725 xs!586)) lt!6270)))

(declare-fun b!33282 () Bool)

(assert (=> b!33282 (= e!16841 e!16842)))

(declare-fun c!7151 () Bool)

(assert (=> b!33282 (= c!7151 (is-Single!80 (left!725 xs!586)))))

(declare-fun b!33283 () Bool)

(assert (=> b!33283 (= e!16842 (Cons!365 (x!9006 (left!725 xs!586)) Nil!366))))

(assert (= (and b!33282 c!7151) b!33283))

(assert (= (and b!33282 (not c!7151)) b!33284))

(assert (= (and d!16755 c!7150) b!33281))

(assert (= (and d!16755 (not c!7150)) b!33282))

(declare-fun m!35537 () Bool)

(assert (=> b!33284 m!35537))

(declare-fun m!35539 () Bool)

(assert (=> b!33284 m!35539))

(assert (=> b!33284 m!35537))

(assert (=> b!33284 m!35539))

(declare-fun m!35541 () Bool)

(assert (=> b!33284 m!35541))

(declare-fun m!35543 () Bool)

(assert (=> d!16755 m!35543))

(assert (=> d!16755 m!35403))

(assert (=> b!33195 d!16755))

(declare-fun b!33286 () Bool)

(declare-fun e!16843 () Int)

(declare-fun lt!6271 () Int)

(declare-fun lt!6273 () Int)

(assert (=> b!33286 (= e!16843 (+ 1 (ite (>= lt!6271 lt!6273) lt!6271 lt!6273)))))

(assert (=> b!33286 (= lt!6273 (level!64 (right!728 (left!725 res!5578))))))

(assert (=> b!33286 (= lt!6271 (level!64 (left!725 (left!725 res!5578))))))

(declare-fun d!16757 () Bool)

(declare-fun lt!6272 () Int)

(assert (=> d!16757 (>= lt!6272 0)))

(assert (=> d!16757 (= lt!6272 e!16843)))

(declare-fun c!7152 () Bool)

(assert (=> d!16757 (= c!7152 (or (is-Empty!91 (left!725 res!5578)) (is-Single!80 (left!725 res!5578))))))

(assert (=> d!16757 (= (level!64 (left!725 res!5578)) lt!6272)))

(declare-fun b!33285 () Bool)

(assert (=> b!33285 (= e!16843 0)))

(assert (= (and d!16757 c!7152) b!33285))

(assert (= (and d!16757 (not c!7152)) b!33286))

(declare-fun m!35545 () Bool)

(assert (=> b!33286 m!35545))

(declare-fun m!35547 () Bool)

(assert (=> b!33286 m!35547))

(assert (=> b!33130 d!16757))

(declare-fun b!33288 () Bool)

(declare-fun e!16844 () Int)

(declare-fun lt!6274 () Int)

(declare-fun lt!6276 () Int)

(assert (=> b!33288 (= e!16844 (+ 1 (ite (>= lt!6274 lt!6276) lt!6274 lt!6276)))))

(assert (=> b!33288 (= lt!6276 (level!64 (right!728 (right!728 res!5578))))))

(assert (=> b!33288 (= lt!6274 (level!64 (left!725 (right!728 res!5578))))))

(declare-fun d!16759 () Bool)

(declare-fun lt!6275 () Int)

(assert (=> d!16759 (>= lt!6275 0)))

(assert (=> d!16759 (= lt!6275 e!16844)))

(declare-fun c!7153 () Bool)

(assert (=> d!16759 (= c!7153 (or (is-Empty!91 (right!728 res!5578)) (is-Single!80 (right!728 res!5578))))))

(assert (=> d!16759 (= (level!64 (right!728 res!5578)) lt!6275)))

(declare-fun b!33287 () Bool)

(assert (=> b!33287 (= e!16844 0)))

(assert (= (and d!16759 c!7153) b!33287))

(assert (= (and d!16759 (not c!7153)) b!33288))

(declare-fun m!35549 () Bool)

(assert (=> b!33288 m!35549))

(declare-fun m!35551 () Bool)

(assert (=> b!33288 m!35551))

(assert (=> b!33130 d!16759))

(declare-fun b!33290 () Bool)

(declare-fun res!15371 () Bool)

(declare-fun e!16845 () Bool)

(assert (=> b!33290 (=> (not res!15371) (not e!16845))))

(assert (=> b!33290 (= res!15371 (<= (- (level!64 (left!725 (right!728 xs!586))) (level!64 (right!728 (right!728 xs!586)))) 1))))

(declare-fun b!33291 () Bool)

(declare-fun res!15369 () Bool)

(assert (=> b!33291 (=> (not res!15369) (not e!16845))))

(assert (=> b!33291 (= res!15369 (balanced!74 (left!725 (right!728 xs!586))))))

(declare-fun b!33292 () Bool)

(assert (=> b!33292 (= e!16845 (balanced!74 (right!728 (right!728 xs!586))))))

(declare-fun d!16761 () Bool)

(declare-fun res!15372 () Bool)

(declare-fun e!16846 () Bool)

(assert (=> d!16761 (=> res!15372 e!16846)))

(assert (=> d!16761 (= res!15372 (not (is-CC!80 (right!728 xs!586))))))

(assert (=> d!16761 (= (balanced!74 (right!728 xs!586)) e!16846)))

(declare-fun b!33289 () Bool)

(assert (=> b!33289 (= e!16846 e!16845)))

(declare-fun res!15370 () Bool)

(assert (=> b!33289 (=> (not res!15370) (not e!16845))))

(assert (=> b!33289 (= res!15370 (>= (- (level!64 (left!725 (right!728 xs!586))) (level!64 (right!728 (right!728 xs!586)))) (- 1)))))

(assert (= (and d!16761 (not res!15372)) b!33289))

(assert (= (and b!33289 res!15370) b!33290))

(assert (= (and b!33290 res!15371) b!33291))

(assert (= (and b!33291 res!15369) b!33292))

(assert (=> b!33290 m!35523))

(assert (=> b!33290 m!35521))

(declare-fun m!35553 () Bool)

(assert (=> b!33291 m!35553))

(declare-fun m!35555 () Bool)

(assert (=> b!33292 m!35555))

(assert (=> b!33289 m!35523))

(assert (=> b!33289 m!35521))

(assert (=> b!33240 d!16761))

(assert (=> b!33190 d!16709))

(declare-fun b!33293 () Bool)

(declare-fun e!16848 () Bool)

(declare-fun e!16847 () Bool)

(assert (=> b!33293 (= e!16848 e!16847)))

(declare-fun res!15375 () Bool)

(assert (=> b!33293 (=> (not res!15375) (not e!16847))))

(assert (=> b!33293 (= res!15375 (not (isEmpty!335 (left!725 (left!725 xs!586)))))))

(declare-fun b!33296 () Bool)

(assert (=> b!33296 (= e!16847 (concInv!73 (right!728 (left!725 xs!586))))))

(declare-fun d!16763 () Bool)

(declare-fun res!15373 () Bool)

(assert (=> d!16763 (=> res!15373 e!16848)))

(assert (=> d!16763 (= res!15373 (not (is-CC!80 (left!725 xs!586))))))

(assert (=> d!16763 (= (concInv!73 (left!725 xs!586)) e!16848)))

(declare-fun b!33295 () Bool)

(declare-fun res!15376 () Bool)

(assert (=> b!33295 (=> (not res!15376) (not e!16847))))

(assert (=> b!33295 (= res!15376 (concInv!73 (left!725 (left!725 xs!586))))))

(declare-fun b!33294 () Bool)

(declare-fun res!15374 () Bool)

(assert (=> b!33294 (=> (not res!15374) (not e!16847))))

(assert (=> b!33294 (= res!15374 (not (isEmpty!335 (right!728 (left!725 xs!586)))))))

(assert (= (and d!16763 (not res!15373)) b!33293))

(assert (= (and b!33293 res!15375) b!33294))

(assert (= (and b!33294 res!15374) b!33295))

(assert (= (and b!33295 res!15376) b!33296))

(declare-fun m!35557 () Bool)

(assert (=> b!33293 m!35557))

(declare-fun m!35559 () Bool)

(assert (=> b!33296 m!35559))

(declare-fun m!35561 () Bool)

(assert (=> b!33295 m!35561))

(declare-fun m!35563 () Bool)

(assert (=> b!33294 m!35563))

(assert (=> b!33143 d!16763))

(assert (=> b!33238 d!16741))

(assert (=> b!33238 d!16747))

(declare-fun b!33297 () Bool)

(declare-fun e!16853 () Conc!81)

(declare-fun e!16849 () Conc!81)

(assert (=> b!33297 (= e!16853 e!16849)))

(declare-fun c!7155 () Bool)

(assert (=> b!33297 (= c!7155 (< (- i!263 (size!294 (left!725 (left!725 xs!586)))) (size!294 (left!725 (right!728 (left!725 xs!586))))))))

(declare-fun b!33298 () Bool)

(declare-fun e!16850 () Bool)

(assert (=> b!33298 (= e!16850 (< (- i!263 (size!294 (left!725 (left!725 xs!586)))) (size!294 (right!728 (left!725 xs!586)))))))

(declare-fun d!16765 () Bool)

(declare-fun e!16852 () Bool)

(assert (=> d!16765 e!16852))

(declare-fun res!15380 () Bool)

(assert (=> d!16765 (=> (not res!15380) (not e!16852))))

(assert (=> d!16765 (= res!15380 (instAppendUpdateAxiom!7 (right!728 (left!725 xs!586)) (- i!263 (size!294 (left!725 (left!725 xs!586)))) y!785))))

(declare-fun lt!6277 () Conc!81)

(assert (=> d!16765 (= lt!6277 e!16853)))

(declare-fun c!7154 () Bool)

(assert (=> d!16765 (= c!7154 (is-Single!80 (right!728 (left!725 xs!586))))))

(assert (=> d!16765 e!16850))

(declare-fun res!15384 () Bool)

(assert (=> d!16765 (=> (not res!15384) (not e!16850))))

(declare-fun e!16851 () Bool)

(assert (=> d!16765 (= res!15384 e!16851)))

(declare-fun res!15379 () Bool)

(assert (=> d!16765 (=> (not res!15379) (not e!16851))))

(assert (=> d!16765 (= res!15379 (concInv!73 (right!728 (left!725 xs!586))))))

(assert (=> d!16765 (= (update!11 (right!728 (left!725 xs!586)) (- i!263 (size!294 (left!725 (left!725 xs!586)))) y!785) lt!6277)))

(declare-fun b!33299 () Bool)

(declare-fun res!15377 () Bool)

(assert (=> b!33299 (=> (not res!15377) (not e!16852))))

(assert (=> b!33299 (= res!15377 (concInv!73 lt!6277))))

(declare-fun b!33300 () Bool)

(assert (=> b!33300 (= e!16853 (Single!80 y!785))))

(declare-fun b!33301 () Bool)

(assert (=> b!33301 (= e!16851 (balanced!74 (right!728 (left!725 xs!586))))))

(declare-fun b!33302 () Bool)

(assert (=> b!33302 (= e!16849 (CC!80 (left!725 (right!728 (left!725 xs!586))) (update!11 (right!728 (right!728 (left!725 xs!586))) (- (- i!263 (size!294 (left!725 (left!725 xs!586)))) (size!294 (left!725 (right!728 (left!725 xs!586))))) y!785)))))

(declare-fun b!33303 () Bool)

(assert (=> b!33303 (= e!16852 (= (toList!126 lt!6277) (updated!9 (toList!126 (right!728 (left!725 xs!586))) (- i!263 (size!294 (left!725 (left!725 xs!586)))) y!785)))))

(declare-fun b!33304 () Bool)

(declare-fun res!15378 () Bool)

(assert (=> b!33304 (=> (not res!15378) (not e!16852))))

(assert (=> b!33304 (= res!15378 (= (level!64 lt!6277) (level!64 (right!728 (left!725 xs!586)))))))

(declare-fun b!33305 () Bool)

(declare-fun res!15383 () Bool)

(assert (=> b!33305 (=> (not res!15383) (not e!16852))))

(assert (=> b!33305 (= res!15383 (balanced!74 lt!6277))))

(declare-fun b!33306 () Bool)

(declare-fun res!15382 () Bool)

(assert (=> b!33306 (=> (not res!15382) (not e!16850))))

(assert (=> b!33306 (= res!15382 (not (isEmpty!335 (right!728 (left!725 xs!586)))))))

(declare-fun b!33307 () Bool)

(assert (=> b!33307 (= e!16849 (CC!80 (update!11 (left!725 (right!728 (left!725 xs!586))) (- i!263 (size!294 (left!725 (left!725 xs!586)))) y!785) (right!728 (right!728 (left!725 xs!586)))))))

(declare-fun b!33308 () Bool)

(declare-fun res!15381 () Bool)

(assert (=> b!33308 (=> (not res!15381) (not e!16850))))

(assert (=> b!33308 (= res!15381 (>= (- i!263 (size!294 (left!725 (left!725 xs!586)))) 0))))

(assert (= (and d!16765 res!15379) b!33301))

(assert (= (and d!16765 res!15384) b!33306))

(assert (= (and b!33306 res!15382) b!33308))

(assert (= (and b!33308 res!15381) b!33298))

(assert (= (and b!33297 c!7155) b!33307))

(assert (= (and b!33297 (not c!7155)) b!33302))

(assert (= (and d!16765 c!7154) b!33300))

(assert (= (and d!16765 (not c!7154)) b!33297))

(assert (= (and d!16765 res!15380) b!33304))

(assert (= (and b!33304 res!15378) b!33299))

(assert (= (and b!33299 res!15377) b!33305))

(assert (= (and b!33305 res!15383) b!33303))

(assert (=> b!33298 m!35437))

(declare-fun m!35565 () Bool)

(assert (=> b!33307 m!35565))

(declare-fun m!35567 () Bool)

(assert (=> b!33299 m!35567))

(declare-fun m!35569 () Bool)

(assert (=> d!16765 m!35569))

(assert (=> d!16765 m!35559))

(declare-fun m!35571 () Bool)

(assert (=> b!33303 m!35571))

(assert (=> b!33303 m!35539))

(assert (=> b!33303 m!35539))

(declare-fun m!35573 () Bool)

(assert (=> b!33303 m!35573))

(assert (=> b!33301 m!35519))

(declare-fun m!35575 () Bool)

(assert (=> b!33302 m!35575))

(declare-fun m!35577 () Bool)

(assert (=> b!33302 m!35577))

(declare-fun m!35579 () Bool)

(assert (=> b!33305 m!35579))

(assert (=> b!33297 m!35575))

(declare-fun m!35581 () Bool)

(assert (=> b!33304 m!35581))

(assert (=> b!33304 m!35505))

(assert (=> b!33306 m!35563))

(assert (=> b!33194 d!16765))

(declare-fun b!33312 () Bool)

(declare-fun e!16854 () Int)

(assert (=> b!33312 (= e!16854 (+ (size!294 (left!725 (left!725 (left!725 xs!586)))) (size!294 (right!728 (left!725 (left!725 xs!586))))))))

(declare-fun d!16767 () Bool)

(declare-fun lt!6278 () Int)

(assert (=> d!16767 (>= lt!6278 0)))

(declare-fun e!16855 () Int)

(assert (=> d!16767 (= lt!6278 e!16855)))

(declare-fun c!7157 () Bool)

(assert (=> d!16767 (= c!7157 (is-Empty!91 (left!725 (left!725 xs!586))))))

(assert (=> d!16767 (= (size!294 (left!725 (left!725 xs!586))) lt!6278)))

(declare-fun b!33309 () Bool)

(assert (=> b!33309 (= e!16855 0)))

(declare-fun b!33311 () Bool)

(assert (=> b!33311 (= e!16854 1)))

(declare-fun b!33310 () Bool)

(assert (=> b!33310 (= e!16855 e!16854)))

(declare-fun c!7156 () Bool)

(assert (=> b!33310 (= c!7156 (is-Single!80 (left!725 (left!725 xs!586))))))

(assert (= (and b!33310 c!7156) b!33311))

(assert (= (and b!33310 (not c!7156)) b!33312))

(assert (= (and d!16767 c!7157) b!33309))

(assert (= (and d!16767 (not c!7157)) b!33310))

(declare-fun m!35583 () Bool)

(assert (=> b!33312 m!35583))

(declare-fun m!35585 () Bool)

(assert (=> b!33312 m!35585))

(assert (=> b!33194 d!16767))

(declare-fun b!33313 () Bool)

(declare-fun e!16857 () Bool)

(declare-fun e!16856 () Bool)

(assert (=> b!33313 (= e!16857 e!16856)))

(declare-fun res!15387 () Bool)

(assert (=> b!33313 (=> (not res!15387) (not e!16856))))

(assert (=> b!33313 (= res!15387 (not (isEmpty!335 (left!725 (right!728 res!5578)))))))

(declare-fun b!33316 () Bool)

(assert (=> b!33316 (= e!16856 (concInv!73 (right!728 (right!728 res!5578))))))

(declare-fun d!16769 () Bool)

(declare-fun res!15385 () Bool)

(assert (=> d!16769 (=> res!15385 e!16857)))

(assert (=> d!16769 (= res!15385 (not (is-CC!80 (right!728 res!5578))))))

(assert (=> d!16769 (= (concInv!73 (right!728 res!5578)) e!16857)))

(declare-fun b!33315 () Bool)

(declare-fun res!15388 () Bool)

(assert (=> b!33315 (=> (not res!15388) (not e!16856))))

(assert (=> b!33315 (= res!15388 (concInv!73 (left!725 (right!728 res!5578))))))

(declare-fun b!33314 () Bool)

(declare-fun res!15386 () Bool)

(assert (=> b!33314 (=> (not res!15386) (not e!16856))))

(assert (=> b!33314 (= res!15386 (not (isEmpty!335 (right!728 (right!728 res!5578)))))))

(assert (= (and d!16769 (not res!15385)) b!33313))

(assert (= (and b!33313 res!15387) b!33314))

(assert (= (and b!33314 res!15386) b!33315))

(assert (= (and b!33315 res!15388) b!33316))

(declare-fun m!35587 () Bool)

(assert (=> b!33313 m!35587))

(declare-fun m!35589 () Bool)

(assert (=> b!33316 m!35589))

(declare-fun m!35591 () Bool)

(assert (=> b!33315 m!35591))

(declare-fun m!35593 () Bool)

(assert (=> b!33314 m!35593))

(assert (=> b!33204 d!16769))

(declare-fun d!16771 () Bool)

(assert (=> d!16771 (= (isEmpty!335 (right!728 xs!586)) (= (right!728 xs!586) Empty!91))))

(assert (=> b!33142 d!16771))

(assert (=> b!33129 d!16757))

(assert (=> b!33129 d!16759))

(assert (=> b!33239 d!16745))

(assert (=> b!33162 d!16759))

(assert (=> b!33162 d!16757))

(declare-fun d!16773 () Bool)

(declare-fun lt!6281 () Int)

(assert (=> d!16773 (>= lt!6281 0)))

(declare-fun e!16860 () Int)

(assert (=> d!16773 (= lt!6281 e!16860)))

(declare-fun c!7160 () Bool)

(assert (=> d!16773 (= c!7160 (is-Nil!366 lt!6258))))

(assert (=> d!16773 (= (size!295 lt!6258) lt!6281)))

(declare-fun b!33321 () Bool)

(assert (=> b!33321 (= e!16860 0)))

(declare-fun b!33322 () Bool)

(assert (=> b!33322 (= e!16860 (+ 1 (size!295 (t!4385 lt!6258))))))

(assert (= (and d!16773 c!7160) b!33321))

(assert (= (and d!16773 (not c!7160)) b!33322))

(declare-fun m!35595 () Bool)

(assert (=> b!33322 m!35595))

(assert (=> d!16721 d!16773))

(declare-fun b!33326 () Bool)

(declare-fun e!16861 () Int)

(assert (=> b!33326 (= e!16861 (+ (size!294 (left!725 res!5578)) (size!294 (right!728 res!5578))))))

(declare-fun d!16775 () Bool)

(declare-fun lt!6282 () Int)

(assert (=> d!16775 (>= lt!6282 0)))

(declare-fun e!16862 () Int)

(assert (=> d!16775 (= lt!6282 e!16862)))

(declare-fun c!7162 () Bool)

(assert (=> d!16775 (= c!7162 (is-Empty!91 res!5578))))

(assert (=> d!16775 (= (size!294 res!5578) lt!6282)))

(declare-fun b!33323 () Bool)

(assert (=> b!33323 (= e!16862 0)))

(declare-fun b!33325 () Bool)

(assert (=> b!33325 (= e!16861 1)))

(declare-fun b!33324 () Bool)

(assert (=> b!33324 (= e!16862 e!16861)))

(declare-fun c!7161 () Bool)

(assert (=> b!33324 (= c!7161 (is-Single!80 res!5578))))

(assert (= (and b!33324 c!7161) b!33325))

(assert (= (and b!33324 (not c!7161)) b!33326))

(assert (= (and d!16775 c!7162) b!33323))

(assert (= (and d!16775 (not c!7162)) b!33324))

(declare-fun m!35597 () Bool)

(assert (=> b!33326 m!35597))

(declare-fun m!35599 () Bool)

(assert (=> b!33326 m!35599))

(assert (=> d!16721 d!16775))

(declare-fun b!33338 () Bool)

(declare-fun e!16871 () List!371)

(assert (=> b!33338 (= e!16871 (++!51 (toList!126 (left!725 xs!586)) (updated!9 (toList!126 (right!728 xs!586)) (- i!263 (size!295 (toList!126 (left!725 xs!586)))) y!785)))))

(declare-fun b!33335 () Bool)

(declare-fun e!16870 () Bool)

(assert (=> b!33335 (= e!16870 (< i!263 (+ (size!295 (toList!126 (left!725 xs!586))) (size!295 (toList!126 (right!728 xs!586))))))))

(declare-fun b!33337 () Bool)

(assert (=> b!33337 (= e!16871 (++!51 (updated!9 (toList!126 (left!725 xs!586)) i!263 y!785) (toList!126 (right!728 xs!586))))))

(declare-fun d!16777 () Bool)

(assert (=> d!16777 (= (updated!9 (++!51 (toList!126 (left!725 xs!586)) (toList!126 (right!728 xs!586))) i!263 y!785) e!16871)))

(declare-fun c!7165 () Bool)

(assert (=> d!16777 (= c!7165 (< i!263 (size!295 (toList!126 (left!725 xs!586)))))))

(declare-fun lt!6285 () Bool)

(declare-fun e!16869 () Bool)

(assert (=> d!16777 (= lt!6285 e!16869)))

(declare-fun res!15398 () Bool)

(assert (=> d!16777 (=> res!15398 e!16869)))

(assert (=> d!16777 (= res!15398 (or (is-Nil!366 (toList!126 (left!725 xs!586))) (= i!263 0)))))

(assert (=> d!16777 e!16870))

(declare-fun res!15397 () Bool)

(assert (=> d!16777 (=> (not res!15397) (not e!16870))))

(assert (=> d!16777 (= res!15397 (<= 0 i!263))))

(assert (=> d!16777 (= (appendUpdate!6 (toList!126 (left!725 xs!586)) (toList!126 (right!728 xs!586)) i!263 y!785) true)))

(declare-fun b!33336 () Bool)

(assert (=> b!33336 (= e!16869 (appendUpdate!6 (t!4385 (toList!126 (left!725 xs!586))) (toList!126 (right!728 xs!586)) (- i!263 1) y!785))))

(assert (= (and d!16777 res!15397) b!33335))

(assert (= (and d!16777 (not res!15398)) b!33336))

(assert (= (and d!16777 c!7165) b!33337))

(assert (= (and d!16777 (not c!7165)) b!33338))

(assert (=> b!33338 m!35451))

(declare-fun m!35601 () Bool)

(assert (=> b!33338 m!35601))

(assert (=> b!33338 m!35485))

(declare-fun m!35603 () Bool)

(assert (=> b!33338 m!35603))

(assert (=> b!33338 m!35451))

(assert (=> b!33338 m!35603))

(declare-fun m!35605 () Bool)

(assert (=> b!33338 m!35605))

(assert (=> b!33336 m!35485))

(declare-fun m!35607 () Bool)

(assert (=> b!33336 m!35607))

(assert (=> b!33337 m!35451))

(assert (=> b!33337 m!35453))

(assert (=> b!33337 m!35453))

(assert (=> b!33337 m!35485))

(declare-fun m!35609 () Bool)

(assert (=> b!33337 m!35609))

(assert (=> b!33335 m!35451))

(assert (=> b!33335 m!35601))

(assert (=> b!33335 m!35485))

(declare-fun m!35611 () Bool)

(assert (=> b!33335 m!35611))

(assert (=> d!16777 m!35451))

(assert (=> d!16777 m!35485))

(assert (=> d!16777 m!35487))

(assert (=> d!16777 m!35487))

(declare-fun m!35613 () Bool)

(assert (=> d!16777 m!35613))

(assert (=> d!16777 m!35451))

(assert (=> d!16777 m!35601))

(assert (=> b!33236 d!16777))

(assert (=> b!33236 d!16755))

(declare-fun b!33339 () Bool)

(declare-fun e!16872 () List!371)

(assert (=> b!33339 (= e!16872 Nil!366)))

(declare-fun b!33342 () Bool)

(declare-fun e!16873 () List!371)

(assert (=> b!33342 (= e!16873 (++!51 (toList!126 (left!725 (right!728 xs!586))) (toList!126 (right!728 (right!728 xs!586)))))))

(declare-fun d!16779 () Bool)

(declare-fun lt!6286 () List!371)

(assert (=> d!16779 (= (size!295 lt!6286) (size!294 (right!728 xs!586)))))

(assert (=> d!16779 (= lt!6286 e!16872)))

(declare-fun c!7166 () Bool)

(assert (=> d!16779 (= c!7166 (is-Empty!91 (right!728 xs!586)))))

(assert (=> d!16779 (= (toList!126 (right!728 xs!586)) lt!6286)))

(declare-fun b!33340 () Bool)

(assert (=> b!33340 (= e!16872 e!16873)))

(declare-fun c!7167 () Bool)

(assert (=> b!33340 (= c!7167 (is-Single!80 (right!728 xs!586)))))

(declare-fun b!33341 () Bool)

(assert (=> b!33341 (= e!16873 (Cons!365 (x!9006 (right!728 xs!586)) Nil!366))))

(assert (= (and b!33340 c!7167) b!33341))

(assert (= (and b!33340 (not c!7167)) b!33342))

(assert (= (and d!16779 c!7166) b!33339))

(assert (= (and d!16779 (not c!7166)) b!33340))

(declare-fun m!35615 () Bool)

(assert (=> b!33342 m!35615))

(declare-fun m!35617 () Bool)

(assert (=> b!33342 m!35617))

(assert (=> b!33342 m!35615))

(assert (=> b!33342 m!35617))

(declare-fun m!35619 () Bool)

(assert (=> b!33342 m!35619))

(declare-fun m!35621 () Bool)

(assert (=> d!16779 m!35621))

(assert (=> d!16779 m!35471))

(assert (=> b!33236 d!16779))

(assert (=> b!33164 d!16747))

(assert (=> b!33164 d!16741))

(declare-fun b!33343 () Bool)

(declare-fun e!16875 () Bool)

(declare-fun e!16874 () Bool)

(assert (=> b!33343 (= e!16875 e!16874)))

(declare-fun res!15401 () Bool)

(assert (=> b!33343 (=> (not res!15401) (not e!16874))))

(assert (=> b!33343 (= res!15401 (not (isEmpty!335 (left!725 lt!6254))))))

(declare-fun b!33346 () Bool)

(assert (=> b!33346 (= e!16874 (concInv!73 (right!728 lt!6254)))))

(declare-fun d!16781 () Bool)

(declare-fun res!15399 () Bool)

(assert (=> d!16781 (=> res!15399 e!16875)))

(assert (=> d!16781 (= res!15399 (not (is-CC!80 lt!6254)))))

(assert (=> d!16781 (= (concInv!73 lt!6254) e!16875)))

(declare-fun b!33345 () Bool)

(declare-fun res!15402 () Bool)

(assert (=> b!33345 (=> (not res!15402) (not e!16874))))

(assert (=> b!33345 (= res!15402 (concInv!73 (left!725 lt!6254)))))

(declare-fun b!33344 () Bool)

(declare-fun res!15400 () Bool)

(assert (=> b!33344 (=> (not res!15400) (not e!16874))))

(assert (=> b!33344 (= res!15400 (not (isEmpty!335 (right!728 lt!6254))))))

(assert (= (and d!16781 (not res!15399)) b!33343))

(assert (= (and b!33343 res!15401) b!33344))

(assert (= (and b!33344 res!15400) b!33345))

(assert (= (and b!33345 res!15402) b!33346))

(declare-fun m!35623 () Bool)

(assert (=> b!33343 m!35623))

(declare-fun m!35625 () Bool)

(assert (=> b!33346 m!35625))

(declare-fun m!35627 () Bool)

(assert (=> b!33345 m!35627))

(declare-fun m!35629 () Bool)

(assert (=> b!33344 m!35629))

(assert (=> b!33191 d!16781))

(declare-fun b!33348 () Bool)

(declare-fun res!15405 () Bool)

(declare-fun e!16876 () Bool)

(assert (=> b!33348 (=> (not res!15405) (not e!16876))))

(assert (=> b!33348 (= res!15405 (<= (- (level!64 (left!725 (right!728 res!5578))) (level!64 (right!728 (right!728 res!5578)))) 1))))

(declare-fun b!33349 () Bool)

(declare-fun res!15403 () Bool)

(assert (=> b!33349 (=> (not res!15403) (not e!16876))))

(assert (=> b!33349 (= res!15403 (balanced!74 (left!725 (right!728 res!5578))))))

(declare-fun b!33350 () Bool)

(assert (=> b!33350 (= e!16876 (balanced!74 (right!728 (right!728 res!5578))))))

(declare-fun d!16783 () Bool)

(declare-fun res!15406 () Bool)

(declare-fun e!16877 () Bool)

(assert (=> d!16783 (=> res!15406 e!16877)))

(assert (=> d!16783 (= res!15406 (not (is-CC!80 (right!728 res!5578))))))

(assert (=> d!16783 (= (balanced!74 (right!728 res!5578)) e!16877)))

(declare-fun b!33347 () Bool)

(assert (=> b!33347 (= e!16877 e!16876)))

(declare-fun res!15404 () Bool)

(assert (=> b!33347 (=> (not res!15404) (not e!16876))))

(assert (=> b!33347 (= res!15404 (>= (- (level!64 (left!725 (right!728 res!5578))) (level!64 (right!728 (right!728 res!5578)))) (- 1)))))

(assert (= (and d!16783 (not res!15406)) b!33347))

(assert (= (and b!33347 res!15404) b!33348))

(assert (= (and b!33348 res!15405) b!33349))

(assert (= (and b!33349 res!15403) b!33350))

(assert (=> b!33348 m!35551))

(assert (=> b!33348 m!35549))

(declare-fun m!35631 () Bool)

(assert (=> b!33349 m!35631))

(declare-fun m!35633 () Bool)

(assert (=> b!33350 m!35633))

(assert (=> b!33347 m!35551))

(assert (=> b!33347 m!35549))

(assert (=> b!33132 d!16783))

(declare-fun b!33359 () Bool)

(declare-fun e!16882 () List!371)

(assert (=> b!33359 (= e!16882 (toList!126 (right!728 res!5578)))))

(declare-fun b!33360 () Bool)

(assert (=> b!33360 (= e!16882 (Cons!365 (h!282 (toList!126 (left!725 res!5578))) (++!51 (t!4385 (toList!126 (left!725 res!5578))) (toList!126 (right!728 res!5578)))))))

(declare-fun d!16785 () Bool)

(declare-fun e!16883 () Bool)

(assert (=> d!16785 e!16883))

(declare-fun res!15412 () Bool)

(assert (=> d!16785 (=> (not res!15412) (not e!16883))))

(declare-fun lt!6289 () List!371)

(declare-fun content!76 (List!371) (Set T!1863))

(assert (=> d!16785 (= res!15412 (= (content!76 lt!6289) (union (content!76 (toList!126 (left!725 res!5578))) (content!76 (toList!126 (right!728 res!5578))))))))

(assert (=> d!16785 (= lt!6289 e!16882)))

(declare-fun c!7170 () Bool)

(assert (=> d!16785 (= c!7170 (is-Nil!366 (toList!126 (left!725 res!5578))))))

(assert (=> d!16785 (= (++!51 (toList!126 (left!725 res!5578)) (toList!126 (right!728 res!5578))) lt!6289)))

(declare-fun b!33362 () Bool)

(assert (=> b!33362 (= e!16883 (or (not (= (toList!126 (right!728 res!5578)) Nil!366)) (= lt!6289 (toList!126 (left!725 res!5578)))))))

(declare-fun b!33361 () Bool)

(declare-fun res!15413 () Bool)

(assert (=> b!33361 (=> (not res!15413) (not e!16883))))

(assert (=> b!33361 (= res!15413 (= (size!295 lt!6289) (+ (size!295 (toList!126 (left!725 res!5578))) (size!295 (toList!126 (right!728 res!5578))))))))

(assert (= (and d!16785 c!7170) b!33359))

(assert (= (and d!16785 (not c!7170)) b!33360))

(assert (= (and d!16785 res!15412) b!33361))

(assert (= (and b!33361 res!15413) b!33362))

(assert (=> b!33360 m!35475))

(declare-fun m!35635 () Bool)

(assert (=> b!33360 m!35635))

(declare-fun m!35637 () Bool)

(assert (=> d!16785 m!35637))

(assert (=> d!16785 m!35473))

(declare-fun m!35639 () Bool)

(assert (=> d!16785 m!35639))

(assert (=> d!16785 m!35475))

(declare-fun m!35641 () Bool)

(assert (=> d!16785 m!35641))

(declare-fun m!35643 () Bool)

(assert (=> b!33361 m!35643))

(assert (=> b!33361 m!35473))

(declare-fun m!35645 () Bool)

(assert (=> b!33361 m!35645))

(assert (=> b!33361 m!35475))

(declare-fun m!35647 () Bool)

(assert (=> b!33361 m!35647))

(assert (=> b!33220 d!16785))

(declare-fun b!33363 () Bool)

(declare-fun e!16884 () List!371)

(assert (=> b!33363 (= e!16884 Nil!366)))

(declare-fun b!33366 () Bool)

(declare-fun e!16885 () List!371)

(assert (=> b!33366 (= e!16885 (++!51 (toList!126 (left!725 (left!725 res!5578))) (toList!126 (right!728 (left!725 res!5578)))))))

(declare-fun d!16787 () Bool)

(declare-fun lt!6290 () List!371)

(assert (=> d!16787 (= (size!295 lt!6290) (size!294 (left!725 res!5578)))))

(assert (=> d!16787 (= lt!6290 e!16884)))

(declare-fun c!7171 () Bool)

(assert (=> d!16787 (= c!7171 (is-Empty!91 (left!725 res!5578)))))

(assert (=> d!16787 (= (toList!126 (left!725 res!5578)) lt!6290)))

(declare-fun b!33364 () Bool)

(assert (=> b!33364 (= e!16884 e!16885)))

(declare-fun c!7172 () Bool)

(assert (=> b!33364 (= c!7172 (is-Single!80 (left!725 res!5578)))))

(declare-fun b!33365 () Bool)

(assert (=> b!33365 (= e!16885 (Cons!365 (x!9006 (left!725 res!5578)) Nil!366))))

(assert (= (and b!33364 c!7172) b!33365))

(assert (= (and b!33364 (not c!7172)) b!33366))

(assert (= (and d!16787 c!7171) b!33363))

(assert (= (and d!16787 (not c!7171)) b!33364))

(declare-fun m!35649 () Bool)

(assert (=> b!33366 m!35649))

(declare-fun m!35651 () Bool)

(assert (=> b!33366 m!35651))

(assert (=> b!33366 m!35649))

(assert (=> b!33366 m!35651))

(declare-fun m!35653 () Bool)

(assert (=> b!33366 m!35653))

(declare-fun m!35655 () Bool)

(assert (=> d!16787 m!35655))

(assert (=> d!16787 m!35597))

(assert (=> b!33220 d!16787))

(declare-fun b!33367 () Bool)

(declare-fun e!16886 () List!371)

(assert (=> b!33367 (= e!16886 Nil!366)))

(declare-fun b!33370 () Bool)

(declare-fun e!16887 () List!371)

(assert (=> b!33370 (= e!16887 (++!51 (toList!126 (left!725 (right!728 res!5578))) (toList!126 (right!728 (right!728 res!5578)))))))

(declare-fun d!16789 () Bool)

(declare-fun lt!6291 () List!371)

(assert (=> d!16789 (= (size!295 lt!6291) (size!294 (right!728 res!5578)))))

(assert (=> d!16789 (= lt!6291 e!16886)))

(declare-fun c!7173 () Bool)

(assert (=> d!16789 (= c!7173 (is-Empty!91 (right!728 res!5578)))))

(assert (=> d!16789 (= (toList!126 (right!728 res!5578)) lt!6291)))

(declare-fun b!33368 () Bool)

(assert (=> b!33368 (= e!16886 e!16887)))

(declare-fun c!7174 () Bool)

(assert (=> b!33368 (= c!7174 (is-Single!80 (right!728 res!5578)))))

(declare-fun b!33369 () Bool)

(assert (=> b!33369 (= e!16887 (Cons!365 (x!9006 (right!728 res!5578)) Nil!366))))

(assert (= (and b!33368 c!7174) b!33369))

(assert (= (and b!33368 (not c!7174)) b!33370))

(assert (= (and d!16789 c!7173) b!33367))

(assert (= (and d!16789 (not c!7173)) b!33368))

(declare-fun m!35657 () Bool)

(assert (=> b!33370 m!35657))

(declare-fun m!35659 () Bool)

(assert (=> b!33370 m!35659))

(assert (=> b!33370 m!35657))

(assert (=> b!33370 m!35659))

(declare-fun m!35661 () Bool)

(assert (=> b!33370 m!35661))

(declare-fun m!35663 () Bool)

(assert (=> d!16789 m!35663))

(assert (=> d!16789 m!35599))

(assert (=> b!33220 d!16789))

(declare-fun b!33371 () Bool)

(declare-fun e!16892 () Conc!81)

(declare-fun e!16888 () Conc!81)

(assert (=> b!33371 (= e!16892 e!16888)))

(declare-fun c!7176 () Bool)

(assert (=> b!33371 (= c!7176 (< i!263 (size!294 (left!725 (left!725 (left!725 xs!586))))))))

(declare-fun b!33372 () Bool)

(declare-fun e!16889 () Bool)

(assert (=> b!33372 (= e!16889 (< i!263 (size!294 (left!725 (left!725 xs!586)))))))

(declare-fun d!16791 () Bool)

(declare-fun e!16891 () Bool)

(assert (=> d!16791 e!16891))

(declare-fun res!15417 () Bool)

(assert (=> d!16791 (=> (not res!15417) (not e!16891))))

(assert (=> d!16791 (= res!15417 (instAppendUpdateAxiom!7 (left!725 (left!725 xs!586)) i!263 y!785))))

(declare-fun lt!6292 () Conc!81)

(assert (=> d!16791 (= lt!6292 e!16892)))

(declare-fun c!7175 () Bool)

(assert (=> d!16791 (= c!7175 (is-Single!80 (left!725 (left!725 xs!586))))))

(assert (=> d!16791 e!16889))

(declare-fun res!15421 () Bool)

(assert (=> d!16791 (=> (not res!15421) (not e!16889))))

(declare-fun e!16890 () Bool)

(assert (=> d!16791 (= res!15421 e!16890)))

(declare-fun res!15416 () Bool)

(assert (=> d!16791 (=> (not res!15416) (not e!16890))))

(assert (=> d!16791 (= res!15416 (concInv!73 (left!725 (left!725 xs!586))))))

(assert (=> d!16791 (= (update!11 (left!725 (left!725 xs!586)) i!263 y!785) lt!6292)))

(declare-fun b!33373 () Bool)

(declare-fun res!15414 () Bool)

(assert (=> b!33373 (=> (not res!15414) (not e!16891))))

(assert (=> b!33373 (= res!15414 (concInv!73 lt!6292))))

(declare-fun b!33374 () Bool)

(assert (=> b!33374 (= e!16892 (Single!80 y!785))))

(declare-fun b!33375 () Bool)

(assert (=> b!33375 (= e!16890 (balanced!74 (left!725 (left!725 xs!586))))))

(declare-fun b!33376 () Bool)

(assert (=> b!33376 (= e!16888 (CC!80 (left!725 (left!725 (left!725 xs!586))) (update!11 (right!728 (left!725 (left!725 xs!586))) (- i!263 (size!294 (left!725 (left!725 (left!725 xs!586))))) y!785)))))

(declare-fun b!33377 () Bool)

(assert (=> b!33377 (= e!16891 (= (toList!126 lt!6292) (updated!9 (toList!126 (left!725 (left!725 xs!586))) i!263 y!785)))))

(declare-fun b!33378 () Bool)

(declare-fun res!15415 () Bool)

(assert (=> b!33378 (=> (not res!15415) (not e!16891))))

(assert (=> b!33378 (= res!15415 (= (level!64 lt!6292) (level!64 (left!725 (left!725 xs!586)))))))

(declare-fun b!33379 () Bool)

(declare-fun res!15420 () Bool)

(assert (=> b!33379 (=> (not res!15420) (not e!16891))))

(assert (=> b!33379 (= res!15420 (balanced!74 lt!6292))))

(declare-fun b!33380 () Bool)

(declare-fun res!15419 () Bool)

(assert (=> b!33380 (=> (not res!15419) (not e!16889))))

(assert (=> b!33380 (= res!15419 (not (isEmpty!335 (left!725 (left!725 xs!586)))))))

(declare-fun b!33381 () Bool)

(assert (=> b!33381 (= e!16888 (CC!80 (update!11 (left!725 (left!725 (left!725 xs!586))) i!263 y!785) (right!728 (left!725 (left!725 xs!586)))))))

(declare-fun b!33382 () Bool)

(declare-fun res!15418 () Bool)

(assert (=> b!33382 (=> (not res!15418) (not e!16889))))

(assert (=> b!33382 (= res!15418 (>= i!263 0))))

(assert (= (and d!16791 res!15416) b!33375))

(assert (= (and d!16791 res!15421) b!33380))

(assert (= (and b!33380 res!15419) b!33382))

(assert (= (and b!33382 res!15418) b!33372))

(assert (= (and b!33371 c!7176) b!33381))

(assert (= (and b!33371 (not c!7176)) b!33376))

(assert (= (and d!16791 c!7175) b!33374))

(assert (= (and d!16791 (not c!7175)) b!33371))

(assert (= (and d!16791 res!15417) b!33378))

(assert (= (and b!33378 res!15415) b!33373))

(assert (= (and b!33373 res!15414) b!33379))

(assert (= (and b!33379 res!15420) b!33377))

(assert (=> b!33372 m!35435))

(declare-fun m!35665 () Bool)

(assert (=> b!33381 m!35665))

(declare-fun m!35667 () Bool)

(assert (=> b!33373 m!35667))

(declare-fun m!35669 () Bool)

(assert (=> d!16791 m!35669))

(assert (=> d!16791 m!35561))

(declare-fun m!35671 () Bool)

(assert (=> b!33377 m!35671))

(assert (=> b!33377 m!35537))

(assert (=> b!33377 m!35537))

(declare-fun m!35673 () Bool)

(assert (=> b!33377 m!35673))

(assert (=> b!33375 m!35517))

(assert (=> b!33376 m!35583))

(declare-fun m!35675 () Bool)

(assert (=> b!33376 m!35675))

(declare-fun m!35677 () Bool)

(assert (=> b!33379 m!35677))

(assert (=> b!33371 m!35583))

(declare-fun m!35679 () Bool)

(assert (=> b!33378 m!35679))

(assert (=> b!33378 m!35507))

(assert (=> b!33380 m!35557))

(assert (=> b!33199 d!16791))

(assert (=> b!33198 d!16749))

(assert (=> b!33189 d!16767))

(assert (=> b!33235 d!16719))

(declare-fun d!16793 () Bool)

(declare-fun lt!6293 () Int)

(assert (=> d!16793 (>= lt!6293 0)))

(declare-fun e!16893 () Int)

(assert (=> d!16793 (= lt!6293 e!16893)))

(declare-fun c!7177 () Bool)

(assert (=> d!16793 (= c!7177 (is-Nil!366 lt!6259))))

(assert (=> d!16793 (= (size!295 lt!6259) lt!6293)))

(declare-fun b!33383 () Bool)

(assert (=> b!33383 (= e!16893 0)))

(declare-fun b!33384 () Bool)

(assert (=> b!33384 (= e!16893 (+ 1 (size!295 (t!4385 lt!6259))))))

(assert (= (and d!16793 c!7177) b!33383))

(assert (= (and d!16793 (not c!7177)) b!33384))

(declare-fun m!35681 () Bool)

(assert (=> b!33384 m!35681))

(assert (=> d!16725 d!16793))

(assert (=> d!16725 d!16719))

(assert (=> b!33156 d!16767))

(declare-fun b!33388 () Bool)

(declare-fun e!16894 () Int)

(assert (=> b!33388 (= e!16894 (+ (size!294 (left!725 (right!728 (left!725 xs!586)))) (size!294 (right!728 (right!728 (left!725 xs!586))))))))

(declare-fun d!16795 () Bool)

(declare-fun lt!6294 () Int)

(assert (=> d!16795 (>= lt!6294 0)))

(declare-fun e!16895 () Int)

(assert (=> d!16795 (= lt!6294 e!16895)))

(declare-fun c!7179 () Bool)

(assert (=> d!16795 (= c!7179 (is-Empty!91 (right!728 (left!725 xs!586))))))

(assert (=> d!16795 (= (size!294 (right!728 (left!725 xs!586))) lt!6294)))

(declare-fun b!33385 () Bool)

(assert (=> b!33385 (= e!16895 0)))

(declare-fun b!33387 () Bool)

(assert (=> b!33387 (= e!16894 1)))

(declare-fun b!33386 () Bool)

(assert (=> b!33386 (= e!16895 e!16894)))

(declare-fun c!7178 () Bool)

(assert (=> b!33386 (= c!7178 (is-Single!80 (right!728 (left!725 xs!586))))))

(assert (= (and b!33386 c!7178) b!33387))

(assert (= (and b!33386 (not c!7178)) b!33388))

(assert (= (and d!16795 c!7179) b!33385))

(assert (= (and d!16795 (not c!7179)) b!33386))

(assert (=> b!33388 m!35575))

(declare-fun m!35683 () Bool)

(assert (=> b!33388 m!35683))

(assert (=> b!33156 d!16795))

(declare-fun b!33389 () Bool)

(declare-fun e!16896 () List!371)

(assert (=> b!33389 (= e!16896 (toList!126 (right!728 xs!586)))))

(declare-fun b!33390 () Bool)

(assert (=> b!33390 (= e!16896 (Cons!365 (h!282 (toList!126 (left!725 xs!586))) (++!51 (t!4385 (toList!126 (left!725 xs!586))) (toList!126 (right!728 xs!586)))))))

(declare-fun d!16797 () Bool)

(declare-fun e!16897 () Bool)

(assert (=> d!16797 e!16897))

(declare-fun res!15422 () Bool)

(assert (=> d!16797 (=> (not res!15422) (not e!16897))))

(declare-fun lt!6295 () List!371)

(assert (=> d!16797 (= res!15422 (= (content!76 lt!6295) (union (content!76 (toList!126 (left!725 xs!586))) (content!76 (toList!126 (right!728 xs!586))))))))

(assert (=> d!16797 (= lt!6295 e!16896)))

(declare-fun c!7180 () Bool)

(assert (=> d!16797 (= c!7180 (is-Nil!366 (toList!126 (left!725 xs!586))))))

(assert (=> d!16797 (= (++!51 (toList!126 (left!725 xs!586)) (toList!126 (right!728 xs!586))) lt!6295)))

(declare-fun b!33392 () Bool)

(assert (=> b!33392 (= e!16897 (or (not (= (toList!126 (right!728 xs!586)) Nil!366)) (= lt!6295 (toList!126 (left!725 xs!586)))))))

(declare-fun b!33391 () Bool)

(declare-fun res!15423 () Bool)

(assert (=> b!33391 (=> (not res!15423) (not e!16897))))

(assert (=> b!33391 (= res!15423 (= (size!295 lt!6295) (+ (size!295 (toList!126 (left!725 xs!586))) (size!295 (toList!126 (right!728 xs!586))))))))

(assert (= (and d!16797 c!7180) b!33389))

(assert (= (and d!16797 (not c!7180)) b!33390))

(assert (= (and d!16797 res!15422) b!33391))

(assert (= (and b!33391 res!15423) b!33392))

(assert (=> b!33390 m!35485))

(declare-fun m!35685 () Bool)

(assert (=> b!33390 m!35685))

(declare-fun m!35687 () Bool)

(assert (=> d!16797 m!35687))

(assert (=> d!16797 m!35451))

(declare-fun m!35689 () Bool)

(assert (=> d!16797 m!35689))

(assert (=> d!16797 m!35485))

(declare-fun m!35691 () Bool)

(assert (=> d!16797 m!35691))

(declare-fun m!35693 () Bool)

(assert (=> b!33391 m!35693))

(assert (=> b!33391 m!35451))

(assert (=> b!33391 m!35601))

(assert (=> b!33391 m!35485))

(assert (=> b!33391 m!35611))

(assert (=> b!33230 d!16797))

(assert (=> b!33230 d!16755))

(assert (=> b!33230 d!16779))

(declare-fun d!16799 () Bool)

(declare-fun e!16899 () Bool)

(assert (=> d!16799 e!16899))

(declare-fun res!15425 () Bool)

(assert (=> d!16799 (=> res!15425 e!16899)))

(assert (=> d!16799 (= res!15425 (not (is-CC!80 (left!725 xs!586))))))

(declare-fun e!16898 () Bool)

(assert (=> d!16799 e!16898))

(declare-fun res!15424 () Bool)

(assert (=> d!16799 (=> (not res!15424) (not e!16898))))

(assert (=> d!16799 (= res!15424 (>= i!263 0))))

(assert (=> d!16799 (= (instAppendUpdateAxiom!7 (left!725 xs!586) i!263 y!785) true)))

(declare-fun b!33393 () Bool)

(assert (=> b!33393 (= e!16898 (< i!263 (size!294 (left!725 xs!586))))))

(declare-fun b!33394 () Bool)

(assert (=> b!33394 (= e!16899 (appendUpdate!6 (toList!126 (left!725 (left!725 xs!586))) (toList!126 (right!728 (left!725 xs!586))) i!263 y!785))))

(assert (= (and d!16799 res!15424) b!33393))

(assert (= (and d!16799 (not res!15425)) b!33394))

(assert (=> b!33393 m!35403))

(assert (=> b!33394 m!35537))

(assert (=> b!33394 m!35539))

(assert (=> b!33394 m!35537))

(assert (=> b!33394 m!35539))

(declare-fun m!35695 () Bool)

(assert (=> b!33394 m!35695))

(assert (=> d!16715 d!16799))

(assert (=> d!16715 d!16763))

(declare-fun d!16801 () Bool)

(assert (=> d!16801 (= (isEmpty!335 (left!725 res!5578)) (= (left!725 res!5578) Empty!91))))

(assert (=> b!33201 d!16801))

(declare-fun b!33396 () Bool)

(declare-fun res!15428 () Bool)

(declare-fun e!16900 () Bool)

(assert (=> b!33396 (=> (not res!15428) (not e!16900))))

(assert (=> b!33396 (= res!15428 (<= (- (level!64 (left!725 (left!725 res!5578))) (level!64 (right!728 (left!725 res!5578)))) 1))))

(declare-fun b!33397 () Bool)

(declare-fun res!15426 () Bool)

(assert (=> b!33397 (=> (not res!15426) (not e!16900))))

(assert (=> b!33397 (= res!15426 (balanced!74 (left!725 (left!725 res!5578))))))

(declare-fun b!33398 () Bool)

(assert (=> b!33398 (= e!16900 (balanced!74 (right!728 (left!725 res!5578))))))

(declare-fun d!16803 () Bool)

(declare-fun res!15429 () Bool)

(declare-fun e!16901 () Bool)

(assert (=> d!16803 (=> res!15429 e!16901)))

(assert (=> d!16803 (= res!15429 (not (is-CC!80 (left!725 res!5578))))))

(assert (=> d!16803 (= (balanced!74 (left!725 res!5578)) e!16901)))

(declare-fun b!33395 () Bool)

(assert (=> b!33395 (= e!16901 e!16900)))

(declare-fun res!15427 () Bool)

(assert (=> b!33395 (=> (not res!15427) (not e!16900))))

(assert (=> b!33395 (= res!15427 (>= (- (level!64 (left!725 (left!725 res!5578))) (level!64 (right!728 (left!725 res!5578)))) (- 1)))))

(assert (= (and d!16803 (not res!15429)) b!33395))

(assert (= (and b!33395 res!15427) b!33396))

(assert (= (and b!33396 res!15428) b!33397))

(assert (= (and b!33397 res!15426) b!33398))

(assert (=> b!33396 m!35547))

(assert (=> b!33396 m!35545))

(declare-fun m!35697 () Bool)

(assert (=> b!33397 m!35697))

(declare-fun m!35699 () Bool)

(assert (=> b!33398 m!35699))

(assert (=> b!33395 m!35547))

(assert (=> b!33395 m!35545))

(assert (=> b!33131 d!16803))

(assert (=> b!33208 d!16709))

(declare-fun b!33402 () Bool)

(declare-fun e!16902 () Int)

(assert (=> b!33402 (= e!16902 (+ (size!294 (left!725 (right!728 xs!586))) (size!294 (right!728 (right!728 xs!586)))))))

(declare-fun d!16805 () Bool)

(declare-fun lt!6296 () Int)

(assert (=> d!16805 (>= lt!6296 0)))

(declare-fun e!16903 () Int)

(assert (=> d!16805 (= lt!6296 e!16903)))

(declare-fun c!7182 () Bool)

(assert (=> d!16805 (= c!7182 (is-Empty!91 (right!728 xs!586)))))

(assert (=> d!16805 (= (size!294 (right!728 xs!586)) lt!6296)))

(declare-fun b!33399 () Bool)

(assert (=> b!33399 (= e!16903 0)))

(declare-fun b!33401 () Bool)

(assert (=> b!33401 (= e!16902 1)))

(declare-fun b!33400 () Bool)

(assert (=> b!33400 (= e!16903 e!16902)))

(declare-fun c!7181 () Bool)

(assert (=> b!33400 (= c!7181 (is-Single!80 (right!728 xs!586)))))

(assert (= (and b!33400 c!7181) b!33401))

(assert (= (and b!33400 (not c!7181)) b!33402))

(assert (= (and d!16805 c!7182) b!33399))

(assert (= (and d!16805 (not c!7182)) b!33400))

(declare-fun m!35701 () Bool)

(assert (=> b!33402 m!35701))

(declare-fun m!35703 () Bool)

(assert (=> b!33402 m!35703))

(assert (=> b!33208 d!16805))

(declare-fun b!33403 () Bool)

(declare-fun e!16905 () Bool)

(declare-fun e!16904 () Bool)

(assert (=> b!33403 (= e!16905 e!16904)))

(declare-fun res!15432 () Bool)

(assert (=> b!33403 (=> (not res!15432) (not e!16904))))

(assert (=> b!33403 (= res!15432 (not (isEmpty!335 (left!725 (right!728 xs!586)))))))

(declare-fun b!33406 () Bool)

(assert (=> b!33406 (= e!16904 (concInv!73 (right!728 (right!728 xs!586))))))

(declare-fun d!16807 () Bool)

(declare-fun res!15430 () Bool)

(assert (=> d!16807 (=> res!15430 e!16905)))

(assert (=> d!16807 (= res!15430 (not (is-CC!80 (right!728 xs!586))))))

(assert (=> d!16807 (= (concInv!73 (right!728 xs!586)) e!16905)))

(declare-fun b!33405 () Bool)

(declare-fun res!15433 () Bool)

(assert (=> b!33405 (=> (not res!15433) (not e!16904))))

(assert (=> b!33405 (= res!15433 (concInv!73 (left!725 (right!728 xs!586))))))

(declare-fun b!33404 () Bool)

(declare-fun res!15431 () Bool)

(assert (=> b!33404 (=> (not res!15431) (not e!16904))))

(assert (=> b!33404 (= res!15431 (not (isEmpty!335 (right!728 (right!728 xs!586)))))))

(assert (= (and d!16807 (not res!15430)) b!33403))

(assert (= (and b!33403 res!15432) b!33404))

(assert (= (and b!33404 res!15431) b!33405))

(assert (= (and b!33405 res!15433) b!33406))

(declare-fun m!35705 () Bool)

(assert (=> b!33403 m!35705))

(declare-fun m!35707 () Bool)

(assert (=> b!33406 m!35707))

(declare-fun m!35709 () Bool)

(assert (=> b!33405 m!35709))

(declare-fun m!35711 () Bool)

(assert (=> b!33404 m!35711))

(assert (=> b!33144 d!16807))

(declare-fun b!33407 () Bool)

(declare-fun e!16906 () Bool)

(declare-fun tp!6882 () Bool)

(declare-fun tp!6883 () Bool)

(assert (=> b!33407 (= e!16906 (and tp!6882 tp!6883))))

(declare-fun b!33408 () Bool)

(assert (=> b!33408 (= e!16906 tp_is_empty!207)))

(assert (=> b!33253 (= tp!6880 e!16906)))

(assert (= (and b!33253 (is-CC!80 (left!725 (right!728 res!5578)))) b!33407))

(assert (= (and b!33253 (is-Single!80 (left!725 (right!728 res!5578)))) b!33408))

(declare-fun b!33409 () Bool)

(declare-fun e!16907 () Bool)

(declare-fun tp!6884 () Bool)

(declare-fun tp!6885 () Bool)

(assert (=> b!33409 (= e!16907 (and tp!6884 tp!6885))))

(declare-fun b!33410 () Bool)

(assert (=> b!33410 (= e!16907 tp_is_empty!207)))

(assert (=> b!33253 (= tp!6881 e!16907)))

(assert (= (and b!33253 (is-CC!80 (right!728 (right!728 res!5578)))) b!33409))

(assert (= (and b!33253 (is-Single!80 (right!728 (right!728 res!5578)))) b!33410))

(declare-fun b!33411 () Bool)

(declare-fun e!16908 () Bool)

(declare-fun tp!6886 () Bool)

(declare-fun tp!6887 () Bool)

(assert (=> b!33411 (= e!16908 (and tp!6886 tp!6887))))

(declare-fun b!33412 () Bool)

(assert (=> b!33412 (= e!16908 tp_is_empty!207)))

(assert (=> b!33251 (= tp!6878 e!16908)))

(assert (= (and b!33251 (is-CC!80 (left!725 (left!725 res!5578)))) b!33411))

(assert (= (and b!33251 (is-Single!80 (left!725 (left!725 res!5578)))) b!33412))

(declare-fun b!33413 () Bool)

(declare-fun e!16909 () Bool)

(declare-fun tp!6888 () Bool)

(declare-fun tp!6889 () Bool)

(assert (=> b!33413 (= e!16909 (and tp!6888 tp!6889))))

(declare-fun b!33414 () Bool)

(assert (=> b!33414 (= e!16909 tp_is_empty!207)))

(assert (=> b!33251 (= tp!6879 e!16909)))

(assert (= (and b!33251 (is-CC!80 (right!728 (left!725 res!5578)))) b!33413))

(assert (= (and b!33251 (is-Single!80 (right!728 (left!725 res!5578)))) b!33414))

(declare-fun b!33415 () Bool)

(declare-fun e!16910 () Bool)

(declare-fun tp!6890 () Bool)

(declare-fun tp!6891 () Bool)

(assert (=> b!33415 (= e!16910 (and tp!6890 tp!6891))))

(declare-fun b!33416 () Bool)

(assert (=> b!33416 (= e!16910 tp_is_empty!207)))

(assert (=> b!33249 (= tp!6876 e!16910)))

(assert (= (and b!33249 (is-CC!80 (left!725 (right!728 xs!586)))) b!33415))

(assert (= (and b!33249 (is-Single!80 (left!725 (right!728 xs!586)))) b!33416))

(declare-fun b!33417 () Bool)

(declare-fun e!16911 () Bool)

(declare-fun tp!6892 () Bool)

(declare-fun tp!6893 () Bool)

(assert (=> b!33417 (= e!16911 (and tp!6892 tp!6893))))

(declare-fun b!33418 () Bool)

(assert (=> b!33418 (= e!16911 tp_is_empty!207)))

(assert (=> b!33249 (= tp!6877 e!16911)))

(assert (= (and b!33249 (is-CC!80 (right!728 (right!728 xs!586)))) b!33417))

(assert (= (and b!33249 (is-Single!80 (right!728 (right!728 xs!586)))) b!33418))

(declare-fun b!33419 () Bool)

(declare-fun e!16912 () Bool)

(declare-fun tp!6894 () Bool)

(declare-fun tp!6895 () Bool)

(assert (=> b!33419 (= e!16912 (and tp!6894 tp!6895))))

(declare-fun b!33420 () Bool)

(assert (=> b!33420 (= e!16912 tp_is_empty!207)))

(assert (=> b!33247 (= tp!6874 e!16912)))

(assert (= (and b!33247 (is-CC!80 (left!725 (left!725 xs!586)))) b!33419))

(assert (= (and b!33247 (is-Single!80 (left!725 (left!725 xs!586)))) b!33420))

(declare-fun b!33421 () Bool)

(declare-fun e!16913 () Bool)

(declare-fun tp!6896 () Bool)

(declare-fun tp!6897 () Bool)

(assert (=> b!33421 (= e!16913 (and tp!6896 tp!6897))))

(declare-fun b!33422 () Bool)

(assert (=> b!33422 (= e!16913 tp_is_empty!207)))

(assert (=> b!33247 (= tp!6875 e!16913)))

(assert (= (and b!33247 (is-CC!80 (right!728 (left!725 xs!586)))) b!33421))

(assert (= (and b!33247 (is-Single!80 (right!728 (left!725 xs!586)))) b!33422))

(push 1)

(assert (not b!33268))

(assert (not b!33291))

(assert (not b!33380))

(assert (not b!33366))

(assert (not b!33269))

(assert (not b!33299))

(assert (not b!33360))

(assert (not b!33342))

(assert (not d!16789))

(assert (not b!33274))

(assert (not b!33284))

(assert (not b!33335))

(assert (not b!33256))

(assert (not b!33280))

(assert (not b!33407))

(assert (not b!33257))

(assert (not b!33293))

(assert (not b!33395))

(assert (not b!33266))

(assert (not b!33307))

(assert (not b!33349))

(assert (not b!33315))

(assert (not d!16791))

(assert (not b!33361))

(assert (not b!33381))

(assert (not b!33322))

(assert (not b!33406))

(assert (not b!33295))

(assert (not b!33270))

(assert (not b!33289))

(assert (not b!33292))

(assert (not b!33371))

(assert (not b!33271))

(assert (not b!33417))

(assert (not b!33336))

(assert (not b!33326))

(assert (not b!33375))

(assert (not b!33303))

(assert (not b!33345))

(assert (not b!33312))

(assert (not b!33373))

(assert (not b!33346))

(assert (not b!33288))

(assert (not b!33370))

(assert (not b!33397))

(assert (not b!33347))

(assert (not b!33304))

(assert (not b!33402))

(assert (not b!33337))

(assert (not b!33316))

(assert (not b!33305))

(assert (not b!33379))

(assert (not b!33294))

(assert (not b!33403))

(assert (not b!33377))

(assert (not b!33264))

(assert (not b!33393))

(assert (not b!33302))

(assert (not b!33259))

(assert (not b!33314))

(assert (not d!16765))

(assert (not b!33404))

(assert (not b!33344))

(assert (not d!16755))

(assert (not b!33350))

(assert (not b!33262))

(assert (not b!33398))

(assert (not b!33384))

(assert (not b!33278))

(assert (not d!16779))

(assert (not b!33338))

(assert (not b!33272))

(assert (not b!33296))

(assert (not b!33286))

(assert (not b!33290))

(assert (not d!16797))

(assert (not b!33265))

(assert (not b!33378))

(assert (not b!33306))

(assert (not b!33298))

(assert (not b!33258))

(assert (not b!33313))

(assert tp_is_empty!207)

(assert (not b!33297))

(assert (not b!33376))

(assert (not b!33419))

(assert (not b!33301))

(assert (not b!33388))

(assert (not b!33390))

(assert (not b!33348))

(assert (not b!33396))

(assert (not b!33343))

(assert (not d!16777))

(assert (not b!33411))

(assert (not b!33421))

(assert (not b!33394))

(assert (not d!16785))

(assert (not b!33260))

(assert (not b!33409))

(assert (not b!33372))

(assert (not b!33267))

(assert (not b!33413))

(assert (not b!33415))

(assert (not d!16787))

(assert (not b!33405))

(assert (not b!33391))

(assert (not d!16751))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

