; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7386 () Bool)

(assert start!7386)

(declare-fun b!53171 () Bool)

(declare-fun res!24191 () Bool)

(declare-fun e!27695 () Bool)

(assert (=> b!53171 (=> (not res!24191) (not e!27695))))

(declare-datatypes () ((T!3219 (T!3220 (val!144 Int)))))

(declare-datatypes () ((List!433 (Cons!413 (h!632 T!3219) (t!46825 List!433)) (Nil!414))))

(declare-fun l2!268 () List!433)

(declare-fun l!1072 () List!433)

(declare-fun l1!274 () List!433)

(declare-fun ++!56 (List!433 List!433) List!433)

(assert (=> b!53171 (= res!24191 (= l!1072 (++!56 l1!274 l2!268)))))

(declare-fun b!53172 () Bool)

(declare-fun e!27693 () Bool)

(declare-fun tp_is_empty!287 () Bool)

(declare-fun tp!15103 () Bool)

(assert (=> b!53172 (= e!27693 (and tp_is_empty!287 tp!15103))))

(declare-fun b!53173 () Bool)

(declare-fun e!27694 () Bool)

(assert (=> b!53173 (= e!27695 e!27694)))

(declare-fun res!24193 () Bool)

(assert (=> b!53173 (=> res!24193 e!27694)))

(declare-fun i!424 () Int)

(assert (=> b!53173 (= res!24193 (> 0 i!424))))

(declare-fun res!24192 () Bool)

(assert (=> start!7386 (=> (not res!24192) (not e!27695))))

(declare-fun i!421 () Int)

(assert (=> start!7386 (= res!24192 (<= 0 i!421))))

(assert (=> start!7386 e!27695))

(assert (=> start!7386 tp_is_empty!287))

(assert (=> start!7386 e!27693))

(declare-fun e!27692 () Bool)

(assert (=> start!7386 e!27692))

(assert (=> start!7386 true))

(declare-fun e!27696 () Bool)

(assert (=> start!7386 e!27696))

(declare-fun b!53174 () Bool)

(declare-fun res!24195 () Bool)

(assert (=> b!53174 (=> (not res!24195) (not e!27695))))

(declare-fun e!27691 () Bool)

(assert (=> b!53174 (= res!24195 e!27691)))

(declare-fun res!24194 () Bool)

(assert (=> b!53174 (=> res!24194 e!27691)))

(assert (=> b!53174 (= res!24194 (or (is-Nil!414 l1!274) (= i!421 0)))))

(declare-fun b!53175 () Bool)

(declare-fun y!1616 () T!3219)

(declare-fun appendInsertIndex!19 (List!433 List!433 Int T!3219) Bool)

(assert (=> b!53175 (= e!27691 (appendInsertIndex!19 (t!46825 l1!274) l2!268 (- i!421 1) y!1616))))

(declare-fun b!53176 () Bool)

(declare-fun tp!15102 () Bool)

(assert (=> b!53176 (= e!27696 (and tp_is_empty!287 tp!15102))))

(declare-fun b!53177 () Bool)

(declare-fun size!433 (List!433) Int)

(assert (=> b!53177 (= e!27694 (> i!424 (size!433 l!1072)))))

(declare-fun b!53178 () Bool)

(declare-fun res!24196 () Bool)

(assert (=> b!53178 (=> (not res!24196) (not e!27695))))

(assert (=> b!53178 (= res!24196 (<= i!421 (+ (size!433 l1!274) (size!433 l2!268))))))

(declare-fun b!53179 () Bool)

(declare-fun tp!15104 () Bool)

(assert (=> b!53179 (= e!27692 (and tp_is_empty!287 tp!15104))))

(declare-fun b!53180 () Bool)

(declare-fun res!24197 () Bool)

(assert (=> b!53180 (=> (not res!24197) (not e!27695))))

(declare-fun y!1619 () T!3219)

(assert (=> b!53180 (= res!24197 (and (= i!424 i!421) (= y!1619 y!1616)))))

(assert (= (and start!7386 res!24192) b!53178))

(assert (= (and b!53178 res!24196) b!53174))

(assert (= (and b!53174 (not res!24194)) b!53175))

(assert (= (and b!53174 res!24195) b!53171))

(assert (= (and b!53171 res!24191) b!53180))

(assert (= (and b!53180 res!24197) b!53173))

(assert (= (and b!53173 (not res!24193)) b!53177))

(assert (= (and start!7386 (is-Cons!413 l2!268)) b!53172))

(assert (= (and start!7386 (is-Cons!413 l!1072)) b!53179))

(assert (= (and start!7386 (is-Cons!413 l1!274)) b!53176))

(declare-fun m!57160 () Bool)

(assert (=> b!53171 m!57160))

(declare-fun m!57162 () Bool)

(assert (=> b!53175 m!57162))

(declare-fun m!57164 () Bool)

(assert (=> b!53177 m!57164))

(declare-fun m!57166 () Bool)

(assert (=> b!53178 m!57166))

(declare-fun m!57168 () Bool)

(assert (=> b!53178 m!57168))

(push 1)

(assert (not b!53171))

(assert (not b!53179))

(assert (not b!53178))

(assert tp_is_empty!287)

(assert (not b!53172))

(assert (not b!53175))

(assert (not b!53177))

(assert (not b!53176))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!53192 () Bool)

(declare-fun e!27701 () Bool)

(declare-fun lt!9294 () List!433)

(assert (=> b!53192 (= e!27701 (or (not (= l2!268 Nil!414)) (= lt!9294 l1!274)))))

(declare-fun b!53190 () Bool)

(declare-fun e!27702 () List!433)

(assert (=> b!53190 (= e!27702 (Cons!413 (h!632 l1!274) (++!56 (t!46825 l1!274) l2!268)))))

(declare-fun b!53191 () Bool)

(declare-fun res!24204 () Bool)

(assert (=> b!53191 (=> (not res!24204) (not e!27701))))

(assert (=> b!53191 (= res!24204 (= (size!433 lt!9294) (+ (size!433 l1!274) (size!433 l2!268))))))

(declare-fun b!53189 () Bool)

(assert (=> b!53189 (= e!27702 l2!268)))

(declare-fun d!44603 () Bool)

(assert (=> d!44603 e!27701))

(declare-fun res!24203 () Bool)

(assert (=> d!44603 (=> (not res!24203) (not e!27701))))

(declare-fun content!96 (List!433) (Set T!3219))

(assert (=> d!44603 (= res!24203 (= (content!96 lt!9294) (union (content!96 l1!274) (content!96 l2!268))))))

(assert (=> d!44603 (= lt!9294 e!27702)))

(declare-fun c!11535 () Bool)

(assert (=> d!44603 (= c!11535 (is-Nil!414 l1!274))))

(assert (=> d!44603 (= (++!56 l1!274 l2!268) lt!9294)))

(assert (= (and d!44603 c!11535) b!53189))

(assert (= (and d!44603 (not c!11535)) b!53190))

(assert (= (and d!44603 res!24203) b!53191))

(assert (= (and b!53191 res!24204) b!53192))

(declare-fun m!57170 () Bool)

(assert (=> b!53190 m!57170))

(declare-fun m!57172 () Bool)

(assert (=> b!53191 m!57172))

(assert (=> b!53191 m!57166))

(assert (=> b!53191 m!57168))

(declare-fun m!57174 () Bool)

(assert (=> d!44603 m!57174))

(declare-fun m!57176 () Bool)

(assert (=> d!44603 m!57176))

(declare-fun m!57178 () Bool)

(assert (=> d!44603 m!57178))

(assert (=> b!53171 d!44603))

(declare-fun d!44605 () Bool)

(declare-fun lt!9297 () Int)

(assert (=> d!44605 (>= lt!9297 0)))

(declare-fun e!27705 () Int)

(assert (=> d!44605 (= lt!9297 e!27705)))

(declare-fun c!11538 () Bool)

(assert (=> d!44605 (= c!11538 (is-Nil!414 l1!274))))

(assert (=> d!44605 (= (size!433 l1!274) lt!9297)))

(declare-fun b!53197 () Bool)

(assert (=> b!53197 (= e!27705 0)))

(declare-fun b!53198 () Bool)

(assert (=> b!53198 (= e!27705 (+ 1 (size!433 (t!46825 l1!274))))))

(assert (= (and d!44605 c!11538) b!53197))

(assert (= (and d!44605 (not c!11538)) b!53198))

(declare-fun m!57180 () Bool)

(assert (=> b!53198 m!57180))

(assert (=> b!53178 d!44605))

(declare-fun d!44607 () Bool)

(declare-fun lt!9298 () Int)

(assert (=> d!44607 (>= lt!9298 0)))

(declare-fun e!27706 () Int)

(assert (=> d!44607 (= lt!9298 e!27706)))

(declare-fun c!11539 () Bool)

(assert (=> d!44607 (= c!11539 (is-Nil!414 l2!268))))

(assert (=> d!44607 (= (size!433 l2!268) lt!9298)))

(declare-fun b!53199 () Bool)

(assert (=> b!53199 (= e!27706 0)))

(declare-fun b!53200 () Bool)

(assert (=> b!53200 (= e!27706 (+ 1 (size!433 (t!46825 l2!268))))))

(assert (= (and d!44607 c!11539) b!53199))

(assert (= (and d!44607 (not c!11539)) b!53200))

(declare-fun m!57182 () Bool)

(assert (=> b!53200 m!57182))

(assert (=> b!53178 d!44607))

(declare-fun b!53211 () Bool)

(declare-fun e!27715 () Bool)

(assert (=> b!53211 (= e!27715 (<= (- i!421 1) (+ (size!433 (t!46825 l1!274)) (size!433 l2!268))))))

(declare-fun b!53212 () Bool)

(declare-fun e!27717 () List!433)

(declare-fun insertAtIndex!16 (List!433 Int T!3219) List!433)

(assert (=> b!53212 (= e!27717 (++!56 (t!46825 l1!274) (insertAtIndex!16 l2!268 (- (- i!421 1) (size!433 (t!46825 l1!274))) y!1616)))))

(declare-fun e!27716 () Bool)

(declare-fun b!53213 () Bool)

(assert (=> b!53213 (= e!27716 (= (insertAtIndex!16 (++!56 (t!46825 l1!274) l2!268) (- i!421 1) y!1616) e!27717))))

(declare-fun c!11542 () Bool)

(assert (=> b!53213 (= c!11542 (< (- i!421 1) (size!433 (t!46825 l1!274))))))

(declare-fun b!53214 () Bool)

(assert (=> b!53214 (= e!27717 (++!56 (insertAtIndex!16 (t!46825 l1!274) (- i!421 1) y!1616) l2!268))))

(declare-fun b!53215 () Bool)

(declare-fun e!27718 () Bool)

(assert (=> b!53215 (= e!27718 (appendInsertIndex!19 (t!46825 (t!46825 l1!274)) l2!268 (- (- i!421 1) 1) y!1616))))

(declare-fun d!44609 () Bool)

(assert (=> d!44609 e!27716))

(declare-fun res!24213 () Bool)

(assert (=> d!44609 (=> (not res!24213) (not e!27716))))

(assert (=> d!44609 (= res!24213 e!27718)))

(declare-fun res!24211 () Bool)

(assert (=> d!44609 (=> res!24211 e!27718)))

(assert (=> d!44609 (= res!24211 (or (is-Nil!414 (t!46825 l1!274)) (= (- i!421 1) 0)))))

(assert (=> d!44609 e!27715))

(declare-fun res!24212 () Bool)

(assert (=> d!44609 (=> (not res!24212) (not e!27715))))

(assert (=> d!44609 (= res!24212 (<= 0 (- i!421 1)))))

(assert (=> d!44609 (= (appendInsertIndex!19 (t!46825 l1!274) l2!268 (- i!421 1) y!1616) true)))

(assert (= (and d!44609 res!24212) b!53211))

(assert (= (and d!44609 (not res!24211)) b!53215))

(assert (= (and d!44609 res!24213) b!53213))

(assert (= (and b!53213 c!11542) b!53214))

(assert (= (and b!53213 (not c!11542)) b!53212))

(assert (=> b!53212 m!57180))

(declare-fun m!57184 () Bool)

(assert (=> b!53212 m!57184))

(assert (=> b!53212 m!57184))

(declare-fun m!57186 () Bool)

(assert (=> b!53212 m!57186))

(declare-fun m!57188 () Bool)

(assert (=> b!53215 m!57188))

(assert (=> b!53211 m!57180))

(assert (=> b!53211 m!57168))

(assert (=> b!53213 m!57170))

(assert (=> b!53213 m!57170))

(declare-fun m!57190 () Bool)

(assert (=> b!53213 m!57190))

(assert (=> b!53213 m!57180))

(declare-fun m!57192 () Bool)

(assert (=> b!53214 m!57192))

(assert (=> b!53214 m!57192))

(declare-fun m!57194 () Bool)

(assert (=> b!53214 m!57194))

(assert (=> b!53175 d!44609))

(declare-fun d!44611 () Bool)

(declare-fun lt!9299 () Int)

(assert (=> d!44611 (>= lt!9299 0)))

(declare-fun e!27719 () Int)

(assert (=> d!44611 (= lt!9299 e!27719)))

(declare-fun c!11543 () Bool)

(assert (=> d!44611 (= c!11543 (is-Nil!414 l!1072))))

(assert (=> d!44611 (= (size!433 l!1072) lt!9299)))

(declare-fun b!53216 () Bool)

(assert (=> b!53216 (= e!27719 0)))

(declare-fun b!53217 () Bool)

(assert (=> b!53217 (= e!27719 (+ 1 (size!433 (t!46825 l!1072))))))

(assert (= (and d!44611 c!11543) b!53216))

(assert (= (and d!44611 (not c!11543)) b!53217))

(declare-fun m!57196 () Bool)

(assert (=> b!53217 m!57196))

(assert (=> b!53177 d!44611))

(declare-fun b!53222 () Bool)

(declare-fun e!27722 () Bool)

(declare-fun tp!15107 () Bool)

(assert (=> b!53222 (= e!27722 (and tp_is_empty!287 tp!15107))))

(assert (=> b!53179 (= tp!15104 e!27722)))

(assert (= (and b!53179 (is-Cons!413 (t!46825 l!1072))) b!53222))

(declare-fun b!53223 () Bool)

(declare-fun e!27723 () Bool)

(declare-fun tp!15108 () Bool)

(assert (=> b!53223 (= e!27723 (and tp_is_empty!287 tp!15108))))

(assert (=> b!53176 (= tp!15102 e!27723)))

(assert (= (and b!53176 (is-Cons!413 (t!46825 l1!274))) b!53223))

(declare-fun b!53224 () Bool)

(declare-fun e!27724 () Bool)

(declare-fun tp!15109 () Bool)

(assert (=> b!53224 (= e!27724 (and tp_is_empty!287 tp!15109))))

(assert (=> b!53172 (= tp!15103 e!27724)))

(assert (= (and b!53172 (is-Cons!413 (t!46825 l2!268))) b!53224))

(push 1)

(assert (not b!53214))

(assert (not b!53224))

(assert tp_is_empty!287)

(assert (not b!53190))

(assert (not b!53222))

(assert (not b!53191))

(assert (not d!44603))

(assert (not b!53200))

(assert (not b!53215))

(assert (not b!53217))

(assert (not b!53211))

(assert (not b!53212))

(assert (not b!53223))

(assert (not b!53213))

(assert (not b!53198))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

