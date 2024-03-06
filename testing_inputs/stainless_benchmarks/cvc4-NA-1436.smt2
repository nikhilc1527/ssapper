; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9850 () Bool)

(assert start!9850)

(declare-fun res!34952 () Bool)

(declare-fun e!38610 () Bool)

(assert (=> start!9850 (=> res!34952 e!38610)))

(declare-datatypes () ((List!595 (Nil!553) (Cons!552 (head!962 Int) (tail!983 List!595)))))

(declare-fun l1!390 () List!595)

(declare-fun l2!383 () List!595)

(assert (=> start!9850 (= res!34952 (not (and (is-Cons!552 l1!390) (is-Cons!552 l2!383))))))

(declare-datatypes () ((ProofOps!366 (ProofOps!367 (prop!491 Bool)))))

(declare-fun because!1 (ProofOps!366 Bool) Bool)

(declare-fun reverse!1 (List!595) List!595)

(assert (=> start!9850 (not (because!1 (ProofOps!367 (= (= l1!390 l2!383) (= (reverse!1 l1!390) (reverse!1 l2!383)))) e!38610))))

(assert (=> start!9850 true))

(declare-fun b!71352 () Bool)

(declare-fun reverse_equality_equivalence!0 (List!595 List!595) Bool)

(assert (=> b!71352 (= e!38610 (reverse_equality_equivalence!0 (tail!983 l1!390) (tail!983 l2!383)))))

(assert (= (and start!9850 (not res!34952)) b!71352))

(declare-fun m!71150 () Bool)

(assert (=> start!9850 m!71150))

(declare-fun m!71152 () Bool)

(assert (=> start!9850 m!71152))

(declare-fun m!71154 () Bool)

(assert (=> start!9850 m!71154))

(declare-fun m!71156 () Bool)

(assert (=> b!71352 m!71156))

(push 1)

(assert (not start!9850))

(assert (not b!71352))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!54057 () Bool)

(assert (=> d!54057 (= (because!1 (ProofOps!367 (= (= l1!390 l2!383) (= (reverse!1 l1!390) (reverse!1 l2!383)))) e!38610) (and e!38610 (prop!491 (ProofOps!367 (= (= l1!390 l2!383) (= (reverse!1 l1!390) (reverse!1 l2!383)))))))))

(assert (=> start!9850 d!54057))

(declare-fun b!71364 () Bool)

(declare-fun e!38615 () Bool)

(declare-fun lt!15179 () List!595)

(declare-fun size!4 (List!595) Int)

(assert (=> b!71364 (= e!38615 (= (size!4 lt!15179) (size!4 l1!390)))))

(declare-fun b!71362 () Bool)

(declare-fun e!38616 () List!595)

(assert (=> b!71362 (= e!38616 Nil!553)))

(declare-fun b!71363 () Bool)

(declare-fun res!34958 () Bool)

(assert (=> b!71363 (=> (not res!34958) (not e!38615))))

(declare-datatypes () ((Option!504 (Some!480 (x!28610 Int)) (None!481))))

(declare-fun lastOption!1 (List!595) Option!504)

(declare-fun headOption!1 (List!595) Option!504)

(assert (=> b!71363 (= res!34958 (= (lastOption!1 l1!390) (headOption!1 lt!15179)))))

(declare-fun d!54059 () Bool)

(assert (=> d!54059 e!38615))

(declare-fun res!34959 () Bool)

(assert (=> d!54059 (=> (not res!34959) (not e!38615))))

(assert (=> d!54059 (= res!34959 (= (lastOption!1 lt!15179) (headOption!1 l1!390)))))

(assert (=> d!54059 (= lt!15179 e!38616)))

(declare-fun c!17089 () Bool)

(assert (=> d!54059 (= c!17089 (is-Cons!552 l1!390))))

(assert (=> d!54059 (= (reverse!1 l1!390) lt!15179)))

(declare-fun b!71361 () Bool)

(declare-fun addLast!0 (List!595 Int) List!595)

(assert (=> b!71361 (= e!38616 (addLast!0 (reverse!1 (tail!983 l1!390)) (head!962 l1!390)))))

(assert (= (and d!54059 c!17089) b!71361))

(assert (= (and d!54059 (not c!17089)) b!71362))

(assert (= (and d!54059 res!34959) b!71363))

(assert (= (and b!71363 res!34958) b!71364))

(declare-fun m!71158 () Bool)

(assert (=> b!71364 m!71158))

(declare-fun m!71160 () Bool)

(assert (=> b!71364 m!71160))

(declare-fun m!71162 () Bool)

(assert (=> b!71363 m!71162))

(declare-fun m!71164 () Bool)

(assert (=> b!71363 m!71164))

(declare-fun m!71166 () Bool)

(assert (=> d!54059 m!71166))

(declare-fun m!71168 () Bool)

(assert (=> d!54059 m!71168))

(declare-fun m!71170 () Bool)

(assert (=> b!71361 m!71170))

(assert (=> b!71361 m!71170))

(declare-fun m!71172 () Bool)

(assert (=> b!71361 m!71172))

(assert (=> start!9850 d!54059))

(declare-fun b!71368 () Bool)

(declare-fun e!38617 () Bool)

(declare-fun lt!15180 () List!595)

(assert (=> b!71368 (= e!38617 (= (size!4 lt!15180) (size!4 l2!383)))))

(declare-fun b!71366 () Bool)

(declare-fun e!38618 () List!595)

(assert (=> b!71366 (= e!38618 Nil!553)))

(declare-fun b!71367 () Bool)

(declare-fun res!34960 () Bool)

(assert (=> b!71367 (=> (not res!34960) (not e!38617))))

(assert (=> b!71367 (= res!34960 (= (lastOption!1 l2!383) (headOption!1 lt!15180)))))

(declare-fun d!54061 () Bool)

(assert (=> d!54061 e!38617))

(declare-fun res!34961 () Bool)

(assert (=> d!54061 (=> (not res!34961) (not e!38617))))

(assert (=> d!54061 (= res!34961 (= (lastOption!1 lt!15180) (headOption!1 l2!383)))))

(assert (=> d!54061 (= lt!15180 e!38618)))

(declare-fun c!17090 () Bool)

(assert (=> d!54061 (= c!17090 (is-Cons!552 l2!383))))

(assert (=> d!54061 (= (reverse!1 l2!383) lt!15180)))

(declare-fun b!71365 () Bool)

(assert (=> b!71365 (= e!38618 (addLast!0 (reverse!1 (tail!983 l2!383)) (head!962 l2!383)))))

(assert (= (and d!54061 c!17090) b!71365))

(assert (= (and d!54061 (not c!17090)) b!71366))

(assert (= (and d!54061 res!34961) b!71367))

(assert (= (and b!71367 res!34960) b!71368))

(declare-fun m!71174 () Bool)

(assert (=> b!71368 m!71174))

(declare-fun m!71176 () Bool)

(assert (=> b!71368 m!71176))

(declare-fun m!71178 () Bool)

(assert (=> b!71367 m!71178))

(declare-fun m!71180 () Bool)

(assert (=> b!71367 m!71180))

(declare-fun m!71182 () Bool)

(assert (=> d!54061 m!71182))

(declare-fun m!71184 () Bool)

(assert (=> d!54061 m!71184))

(declare-fun m!71186 () Bool)

(assert (=> b!71365 m!71186))

(assert (=> b!71365 m!71186))

(declare-fun m!71188 () Bool)

(assert (=> b!71365 m!71188))

(assert (=> start!9850 d!54061))

(declare-fun d!54063 () Bool)

(declare-fun e!38621 () Bool)

(assert (=> d!54063 (because!1 (ProofOps!367 (= (= (tail!983 l1!390) (tail!983 l2!383)) (= (reverse!1 (tail!983 l1!390)) (reverse!1 (tail!983 l2!383))))) e!38621)))

(declare-fun res!34964 () Bool)

(assert (=> d!54063 (=> res!34964 e!38621)))

(assert (=> d!54063 (= res!34964 (not (and (is-Cons!552 (tail!983 l1!390)) (is-Cons!552 (tail!983 l2!383)))))))

(assert (=> d!54063 (= (reverse_equality_equivalence!0 (tail!983 l1!390) (tail!983 l2!383)) true)))

(declare-fun b!71371 () Bool)

(assert (=> b!71371 (= e!38621 (reverse_equality_equivalence!0 (tail!983 (tail!983 l1!390)) (tail!983 (tail!983 l2!383))))))

(assert (= (and d!54063 (not res!34964)) b!71371))

(assert (=> d!54063 m!71170))

(assert (=> d!54063 m!71186))

(declare-fun m!71190 () Bool)

(assert (=> d!54063 m!71190))

(declare-fun m!71192 () Bool)

(assert (=> b!71371 m!71192))

(assert (=> b!71352 d!54063))

(push 1)

(assert (not b!71365))

(assert (not b!71371))

(assert (not d!54059))

(assert (not d!54061))

(assert (not b!71368))

(assert (not b!71361))

(assert (not b!71364))

(assert (not d!54063))

(assert (not b!71363))

(assert (not b!71367))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!71380 () Bool)

(declare-fun e!38626 () Option!504)

(assert (=> b!71380 (= e!38626 (Some!480 (head!962 lt!15180)))))

(declare-fun b!71381 () Bool)

(declare-fun e!38627 () Option!504)

(assert (=> b!71381 (= e!38626 e!38627)))

(declare-fun c!17096 () Bool)

(assert (=> b!71381 (= c!17096 (is-Cons!552 lt!15180))))

(declare-fun b!71383 () Bool)

(assert (=> b!71383 (= e!38627 None!481)))

(declare-fun d!54065 () Bool)

(declare-fun c!17095 () Bool)

(assert (=> d!54065 (= c!17095 (and (is-Cons!552 lt!15180) (is-Nil!553 (tail!983 lt!15180))))))

(assert (=> d!54065 (= (lastOption!1 lt!15180) e!38626)))

(declare-fun b!71382 () Bool)

(assert (=> b!71382 (= e!38627 (lastOption!1 (tail!983 lt!15180)))))

(assert (= (and b!71381 c!17096) b!71382))

(assert (= (and b!71381 (not c!17096)) b!71383))

(assert (= (and d!54065 c!17095) b!71380))

(assert (= (and d!54065 (not c!17095)) b!71381))

(declare-fun m!71194 () Bool)

(assert (=> b!71382 m!71194))

(assert (=> d!54061 d!54065))

(declare-fun d!54067 () Bool)

(assert (=> d!54067 (= (headOption!1 l2!383) (ite (is-Cons!552 l2!383) (Some!480 (head!962 l2!383)) None!481))))

(assert (=> d!54061 d!54067))

(declare-fun d!54069 () Bool)

(assert (=> d!54069 (= (because!1 (ProofOps!367 (= (= (tail!983 l1!390) (tail!983 l2!383)) (= (reverse!1 (tail!983 l1!390)) (reverse!1 (tail!983 l2!383))))) e!38621) (and e!38621 (prop!491 (ProofOps!367 (= (= (tail!983 l1!390) (tail!983 l2!383)) (= (reverse!1 (tail!983 l1!390)) (reverse!1 (tail!983 l2!383))))))))))

(assert (=> d!54063 d!54069))

(declare-fun b!71387 () Bool)

(declare-fun e!38628 () Bool)

(declare-fun lt!15181 () List!595)

(assert (=> b!71387 (= e!38628 (= (size!4 lt!15181) (size!4 (tail!983 l1!390))))))

(declare-fun b!71385 () Bool)

(declare-fun e!38629 () List!595)

(assert (=> b!71385 (= e!38629 Nil!553)))

(declare-fun b!71386 () Bool)

(declare-fun res!34965 () Bool)

(assert (=> b!71386 (=> (not res!34965) (not e!38628))))

(assert (=> b!71386 (= res!34965 (= (lastOption!1 (tail!983 l1!390)) (headOption!1 lt!15181)))))

(declare-fun d!54071 () Bool)

(assert (=> d!54071 e!38628))

(declare-fun res!34966 () Bool)

(assert (=> d!54071 (=> (not res!34966) (not e!38628))))

(assert (=> d!54071 (= res!34966 (= (lastOption!1 lt!15181) (headOption!1 (tail!983 l1!390))))))

(assert (=> d!54071 (= lt!15181 e!38629)))

(declare-fun c!17097 () Bool)

(assert (=> d!54071 (= c!17097 (is-Cons!552 (tail!983 l1!390)))))

(assert (=> d!54071 (= (reverse!1 (tail!983 l1!390)) lt!15181)))

(declare-fun b!71384 () Bool)

(assert (=> b!71384 (= e!38629 (addLast!0 (reverse!1 (tail!983 (tail!983 l1!390))) (head!962 (tail!983 l1!390))))))

(assert (= (and d!54071 c!17097) b!71384))

(assert (= (and d!54071 (not c!17097)) b!71385))

(assert (= (and d!54071 res!34966) b!71386))

(assert (= (and b!71386 res!34965) b!71387))

(declare-fun m!71196 () Bool)

(assert (=> b!71387 m!71196))

(declare-fun m!71198 () Bool)

(assert (=> b!71387 m!71198))

(declare-fun m!71200 () Bool)

(assert (=> b!71386 m!71200))

(declare-fun m!71202 () Bool)

(assert (=> b!71386 m!71202))

(declare-fun m!71204 () Bool)

(assert (=> d!54071 m!71204))

(declare-fun m!71206 () Bool)

(assert (=> d!54071 m!71206))

(declare-fun m!71208 () Bool)

(assert (=> b!71384 m!71208))

(assert (=> b!71384 m!71208))

(declare-fun m!71210 () Bool)

(assert (=> b!71384 m!71210))

(assert (=> d!54063 d!54071))

(declare-fun b!71391 () Bool)

(declare-fun e!38630 () Bool)

(declare-fun lt!15182 () List!595)

(assert (=> b!71391 (= e!38630 (= (size!4 lt!15182) (size!4 (tail!983 l2!383))))))

(declare-fun b!71389 () Bool)

(declare-fun e!38631 () List!595)

(assert (=> b!71389 (= e!38631 Nil!553)))

(declare-fun b!71390 () Bool)

(declare-fun res!34967 () Bool)

(assert (=> b!71390 (=> (not res!34967) (not e!38630))))

(assert (=> b!71390 (= res!34967 (= (lastOption!1 (tail!983 l2!383)) (headOption!1 lt!15182)))))

(declare-fun d!54073 () Bool)

(assert (=> d!54073 e!38630))

(declare-fun res!34968 () Bool)

(assert (=> d!54073 (=> (not res!34968) (not e!38630))))

(assert (=> d!54073 (= res!34968 (= (lastOption!1 lt!15182) (headOption!1 (tail!983 l2!383))))))

(assert (=> d!54073 (= lt!15182 e!38631)))

(declare-fun c!17098 () Bool)

(assert (=> d!54073 (= c!17098 (is-Cons!552 (tail!983 l2!383)))))

(assert (=> d!54073 (= (reverse!1 (tail!983 l2!383)) lt!15182)))

(declare-fun b!71388 () Bool)

(assert (=> b!71388 (= e!38631 (addLast!0 (reverse!1 (tail!983 (tail!983 l2!383))) (head!962 (tail!983 l2!383))))))

(assert (= (and d!54073 c!17098) b!71388))

(assert (= (and d!54073 (not c!17098)) b!71389))

(assert (= (and d!54073 res!34968) b!71390))

(assert (= (and b!71390 res!34967) b!71391))

(declare-fun m!71212 () Bool)

(assert (=> b!71391 m!71212))

(declare-fun m!71214 () Bool)

(assert (=> b!71391 m!71214))

(declare-fun m!71216 () Bool)

(assert (=> b!71390 m!71216))

(declare-fun m!71218 () Bool)

(assert (=> b!71390 m!71218))

(declare-fun m!71220 () Bool)

(assert (=> d!54073 m!71220))

(declare-fun m!71222 () Bool)

(assert (=> d!54073 m!71222))

(declare-fun m!71224 () Bool)

(assert (=> b!71388 m!71224))

(assert (=> b!71388 m!71224))

(declare-fun m!71226 () Bool)

(assert (=> b!71388 m!71226))

(assert (=> d!54063 d!54073))

(declare-fun b!71392 () Bool)

(declare-fun e!38632 () Option!504)

(assert (=> b!71392 (= e!38632 (Some!480 (head!962 l2!383)))))

(declare-fun b!71393 () Bool)

(declare-fun e!38633 () Option!504)

(assert (=> b!71393 (= e!38632 e!38633)))

(declare-fun c!17100 () Bool)

(assert (=> b!71393 (= c!17100 (is-Cons!552 l2!383))))

(declare-fun b!71395 () Bool)

(assert (=> b!71395 (= e!38633 None!481)))

(declare-fun d!54075 () Bool)

(declare-fun c!17099 () Bool)

(assert (=> d!54075 (= c!17099 (and (is-Cons!552 l2!383) (is-Nil!553 (tail!983 l2!383))))))

(assert (=> d!54075 (= (lastOption!1 l2!383) e!38632)))

(declare-fun b!71394 () Bool)

(assert (=> b!71394 (= e!38633 (lastOption!1 (tail!983 l2!383)))))

(assert (= (and b!71393 c!17100) b!71394))

(assert (= (and b!71393 (not c!17100)) b!71395))

(assert (= (and d!54075 c!17099) b!71392))

(assert (= (and d!54075 (not c!17099)) b!71393))

(assert (=> b!71394 m!71216))

(assert (=> b!71367 d!54075))

(declare-fun d!54077 () Bool)

(assert (=> d!54077 (= (headOption!1 lt!15180) (ite (is-Cons!552 lt!15180) (Some!480 (head!962 lt!15180)) None!481))))

(assert (=> b!71367 d!54077))

(declare-fun d!54079 () Bool)

(declare-fun lt!15185 () Int)

(assert (=> d!54079 (>= lt!15185 0)))

(declare-fun e!38636 () Int)

(assert (=> d!54079 (= lt!15185 e!38636)))

(declare-fun c!17103 () Bool)

(assert (=> d!54079 (= c!17103 (is-Nil!553 lt!15179))))

(assert (=> d!54079 (= (size!4 lt!15179) lt!15185)))

(declare-fun b!71400 () Bool)

(assert (=> b!71400 (= e!38636 0)))

(declare-fun b!71401 () Bool)

(assert (=> b!71401 (= e!38636 (+ 1 (size!4 (tail!983 lt!15179))))))

(assert (= (and d!54079 c!17103) b!71400))

(assert (= (and d!54079 (not c!17103)) b!71401))

(declare-fun m!71228 () Bool)

(assert (=> b!71401 m!71228))

(assert (=> b!71364 d!54079))

(declare-fun d!54081 () Bool)

(declare-fun lt!15186 () Int)

(assert (=> d!54081 (>= lt!15186 0)))

(declare-fun e!38637 () Int)

(assert (=> d!54081 (= lt!15186 e!38637)))

(declare-fun c!17104 () Bool)

(assert (=> d!54081 (= c!17104 (is-Nil!553 l1!390))))

(assert (=> d!54081 (= (size!4 l1!390) lt!15186)))

(declare-fun b!71402 () Bool)

(assert (=> b!71402 (= e!38637 0)))

(declare-fun b!71403 () Bool)

(assert (=> b!71403 (= e!38637 (+ 1 (size!4 (tail!983 l1!390))))))

(assert (= (and d!54081 c!17104) b!71402))

(assert (= (and d!54081 (not c!17104)) b!71403))

(assert (=> b!71403 m!71198))

(assert (=> b!71364 d!54081))

(declare-fun d!54083 () Bool)

(declare-fun lt!15187 () Int)

(assert (=> d!54083 (>= lt!15187 0)))

(declare-fun e!38638 () Int)

(assert (=> d!54083 (= lt!15187 e!38638)))

(declare-fun c!17105 () Bool)

(assert (=> d!54083 (= c!17105 (is-Nil!553 lt!15180))))

(assert (=> d!54083 (= (size!4 lt!15180) lt!15187)))

(declare-fun b!71404 () Bool)

(assert (=> b!71404 (= e!38638 0)))

(declare-fun b!71405 () Bool)

(assert (=> b!71405 (= e!38638 (+ 1 (size!4 (tail!983 lt!15180))))))

(assert (= (and d!54083 c!17105) b!71404))

(assert (= (and d!54083 (not c!17105)) b!71405))

(declare-fun m!71230 () Bool)

(assert (=> b!71405 m!71230))

(assert (=> b!71368 d!54083))

(declare-fun d!54085 () Bool)

(declare-fun lt!15188 () Int)

(assert (=> d!54085 (>= lt!15188 0)))

(declare-fun e!38639 () Int)

(assert (=> d!54085 (= lt!15188 e!38639)))

(declare-fun c!17106 () Bool)

(assert (=> d!54085 (= c!17106 (is-Nil!553 l2!383))))

(assert (=> d!54085 (= (size!4 l2!383) lt!15188)))

(declare-fun b!71406 () Bool)

(assert (=> b!71406 (= e!38639 0)))

(declare-fun b!71407 () Bool)

(assert (=> b!71407 (= e!38639 (+ 1 (size!4 (tail!983 l2!383))))))

(assert (= (and d!54085 c!17106) b!71406))

(assert (= (and d!54085 (not c!17106)) b!71407))

(assert (=> b!71407 m!71214))

(assert (=> b!71368 d!54085))

(declare-fun b!71418 () Bool)

(declare-fun res!34977 () Bool)

(declare-fun e!38644 () Bool)

(assert (=> b!71418 (=> (not res!34977) (not e!38644))))

(declare-fun lt!15191 () List!595)

(declare-fun init!2 (List!595) List!595)

(assert (=> b!71418 (= res!34977 (= (init!2 lt!15191) (reverse!1 (tail!983 l1!390))))))

(declare-fun b!71419 () Bool)

(declare-fun e!38645 () List!595)

(assert (=> b!71419 (= e!38645 (Cons!552 (head!962 (reverse!1 (tail!983 l1!390))) (addLast!0 (tail!983 (reverse!1 (tail!983 l1!390))) (head!962 l1!390))))))

(declare-fun d!54087 () Bool)

(assert (=> d!54087 e!38644))

(declare-fun res!34978 () Bool)

(assert (=> d!54087 (=> (not res!34978) (not e!38644))))

(assert (=> d!54087 (= res!34978 (is-Cons!552 lt!15191))))

(assert (=> d!54087 (= lt!15191 e!38645)))

(declare-fun c!17109 () Bool)

(assert (=> d!54087 (= c!17109 (is-Cons!552 (reverse!1 (tail!983 l1!390))))))

(assert (=> d!54087 (= (addLast!0 (reverse!1 (tail!983 l1!390)) (head!962 l1!390)) lt!15191)))

(declare-fun b!71420 () Bool)

(declare-fun res!34976 () Bool)

(assert (=> b!71420 (=> (not res!34976) (not e!38644))))

(assert (=> b!71420 (= res!34976 (= (lastOption!1 lt!15191) (Some!480 (head!962 l1!390))))))

(declare-fun b!71421 () Bool)

(assert (=> b!71421 (= e!38645 (Cons!552 (head!962 l1!390) Nil!553))))

(declare-fun b!71422 () Bool)

(assert (=> b!71422 (= e!38644 (= (+ (size!4 (reverse!1 (tail!983 l1!390))) 1) (size!4 lt!15191)))))

(assert (= (and d!54087 c!17109) b!71419))

(assert (= (and d!54087 (not c!17109)) b!71421))

(assert (= (and d!54087 res!34978) b!71420))

(assert (= (and b!71420 res!34976) b!71418))

(assert (= (and b!71418 res!34977) b!71422))

(declare-fun m!71232 () Bool)

(assert (=> b!71418 m!71232))

(declare-fun m!71234 () Bool)

(assert (=> b!71419 m!71234))

(declare-fun m!71236 () Bool)

(assert (=> b!71420 m!71236))

(assert (=> b!71422 m!71170))

(declare-fun m!71238 () Bool)

(assert (=> b!71422 m!71238))

(declare-fun m!71240 () Bool)

(assert (=> b!71422 m!71240))

(assert (=> b!71361 d!54087))

(assert (=> b!71361 d!54071))

(declare-fun d!54089 () Bool)

(declare-fun e!38646 () Bool)

(assert (=> d!54089 (because!1 (ProofOps!367 (= (= (tail!983 (tail!983 l1!390)) (tail!983 (tail!983 l2!383))) (= (reverse!1 (tail!983 (tail!983 l1!390))) (reverse!1 (tail!983 (tail!983 l2!383)))))) e!38646)))

(declare-fun res!34979 () Bool)

(assert (=> d!54089 (=> res!34979 e!38646)))

(assert (=> d!54089 (= res!34979 (not (and (is-Cons!552 (tail!983 (tail!983 l1!390))) (is-Cons!552 (tail!983 (tail!983 l2!383))))))))

(assert (=> d!54089 (= (reverse_equality_equivalence!0 (tail!983 (tail!983 l1!390)) (tail!983 (tail!983 l2!383))) true)))

(declare-fun b!71423 () Bool)

(assert (=> b!71423 (= e!38646 (reverse_equality_equivalence!0 (tail!983 (tail!983 (tail!983 l1!390))) (tail!983 (tail!983 (tail!983 l2!383)))))))

(assert (= (and d!54089 (not res!34979)) b!71423))

(assert (=> d!54089 m!71208))

(assert (=> d!54089 m!71224))

(declare-fun m!71242 () Bool)

(assert (=> d!54089 m!71242))

(declare-fun m!71244 () Bool)

(assert (=> b!71423 m!71244))

(assert (=> b!71371 d!54089))

(declare-fun b!71424 () Bool)

(declare-fun res!34981 () Bool)

(declare-fun e!38647 () Bool)

(assert (=> b!71424 (=> (not res!34981) (not e!38647))))

(declare-fun lt!15192 () List!595)

(assert (=> b!71424 (= res!34981 (= (init!2 lt!15192) (reverse!1 (tail!983 l2!383))))))

(declare-fun b!71425 () Bool)

(declare-fun e!38648 () List!595)

(assert (=> b!71425 (= e!38648 (Cons!552 (head!962 (reverse!1 (tail!983 l2!383))) (addLast!0 (tail!983 (reverse!1 (tail!983 l2!383))) (head!962 l2!383))))))

(declare-fun d!54091 () Bool)

(assert (=> d!54091 e!38647))

(declare-fun res!34982 () Bool)

(assert (=> d!54091 (=> (not res!34982) (not e!38647))))

(assert (=> d!54091 (= res!34982 (is-Cons!552 lt!15192))))

(assert (=> d!54091 (= lt!15192 e!38648)))

(declare-fun c!17110 () Bool)

(assert (=> d!54091 (= c!17110 (is-Cons!552 (reverse!1 (tail!983 l2!383))))))

(assert (=> d!54091 (= (addLast!0 (reverse!1 (tail!983 l2!383)) (head!962 l2!383)) lt!15192)))

(declare-fun b!71426 () Bool)

(declare-fun res!34980 () Bool)

(assert (=> b!71426 (=> (not res!34980) (not e!38647))))

(assert (=> b!71426 (= res!34980 (= (lastOption!1 lt!15192) (Some!480 (head!962 l2!383))))))

(declare-fun b!71427 () Bool)

(assert (=> b!71427 (= e!38648 (Cons!552 (head!962 l2!383) Nil!553))))

(declare-fun b!71428 () Bool)

(assert (=> b!71428 (= e!38647 (= (+ (size!4 (reverse!1 (tail!983 l2!383))) 1) (size!4 lt!15192)))))

(assert (= (and d!54091 c!17110) b!71425))

(assert (= (and d!54091 (not c!17110)) b!71427))

(assert (= (and d!54091 res!34982) b!71426))

(assert (= (and b!71426 res!34980) b!71424))

(assert (= (and b!71424 res!34981) b!71428))

(declare-fun m!71246 () Bool)

(assert (=> b!71424 m!71246))

(declare-fun m!71248 () Bool)

(assert (=> b!71425 m!71248))

(declare-fun m!71250 () Bool)

(assert (=> b!71426 m!71250))

(assert (=> b!71428 m!71186))

(declare-fun m!71252 () Bool)

(assert (=> b!71428 m!71252))

(declare-fun m!71254 () Bool)

(assert (=> b!71428 m!71254))

(assert (=> b!71365 d!54091))

(assert (=> b!71365 d!54073))

(declare-fun b!71429 () Bool)

(declare-fun e!38649 () Option!504)

(assert (=> b!71429 (= e!38649 (Some!480 (head!962 lt!15179)))))

(declare-fun b!71430 () Bool)

(declare-fun e!38650 () Option!504)

(assert (=> b!71430 (= e!38649 e!38650)))

(declare-fun c!17112 () Bool)

(assert (=> b!71430 (= c!17112 (is-Cons!552 lt!15179))))

(declare-fun b!71432 () Bool)

(assert (=> b!71432 (= e!38650 None!481)))

(declare-fun d!54093 () Bool)

(declare-fun c!17111 () Bool)

(assert (=> d!54093 (= c!17111 (and (is-Cons!552 lt!15179) (is-Nil!553 (tail!983 lt!15179))))))

(assert (=> d!54093 (= (lastOption!1 lt!15179) e!38649)))

(declare-fun b!71431 () Bool)

(assert (=> b!71431 (= e!38650 (lastOption!1 (tail!983 lt!15179)))))

(assert (= (and b!71430 c!17112) b!71431))

(assert (= (and b!71430 (not c!17112)) b!71432))

(assert (= (and d!54093 c!17111) b!71429))

(assert (= (and d!54093 (not c!17111)) b!71430))

(declare-fun m!71256 () Bool)

(assert (=> b!71431 m!71256))

(assert (=> d!54059 d!54093))

(declare-fun d!54095 () Bool)

(assert (=> d!54095 (= (headOption!1 l1!390) (ite (is-Cons!552 l1!390) (Some!480 (head!962 l1!390)) None!481))))

(assert (=> d!54059 d!54095))

(declare-fun b!71433 () Bool)

(declare-fun e!38651 () Option!504)

(assert (=> b!71433 (= e!38651 (Some!480 (head!962 l1!390)))))

(declare-fun b!71434 () Bool)

(declare-fun e!38652 () Option!504)

(assert (=> b!71434 (= e!38651 e!38652)))

(declare-fun c!17114 () Bool)

(assert (=> b!71434 (= c!17114 (is-Cons!552 l1!390))))

(declare-fun b!71436 () Bool)

(assert (=> b!71436 (= e!38652 None!481)))

(declare-fun d!54097 () Bool)

(declare-fun c!17113 () Bool)

(assert (=> d!54097 (= c!17113 (and (is-Cons!552 l1!390) (is-Nil!553 (tail!983 l1!390))))))

(assert (=> d!54097 (= (lastOption!1 l1!390) e!38651)))

(declare-fun b!71435 () Bool)

(assert (=> b!71435 (= e!38652 (lastOption!1 (tail!983 l1!390)))))

(assert (= (and b!71434 c!17114) b!71435))

(assert (= (and b!71434 (not c!17114)) b!71436))

(assert (= (and d!54097 c!17113) b!71433))

(assert (= (and d!54097 (not c!17113)) b!71434))

(assert (=> b!71435 m!71200))

(assert (=> b!71363 d!54097))

(declare-fun d!54099 () Bool)

(assert (=> d!54099 (= (headOption!1 lt!15179) (ite (is-Cons!552 lt!15179) (Some!480 (head!962 lt!15179)) None!481))))

(assert (=> b!71363 d!54099))

(push 1)

(assert (not d!54073))

(assert (not b!71405))

(assert (not b!71431))

(assert (not b!71425))

(assert (not d!54089))

(assert (not b!71391))

(assert (not b!71435))

(assert (not b!71394))

(assert (not b!71388))

(assert (not d!54071))

(assert (not b!71423))

(assert (not b!71419))

(assert (not b!71387))

(assert (not b!71418))

(assert (not b!71382))

(assert (not b!71424))

(assert (not b!71384))

(assert (not b!71407))

(assert (not b!71386))

(assert (not b!71420))

(assert (not b!71403))

(assert (not b!71428))

(assert (not b!71426))

(assert (not b!71401))

(assert (not b!71422))

(assert (not b!71390))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

