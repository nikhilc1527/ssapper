; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10178 () Bool)

(assert start!10178)

(declare-fun res!35835 () Bool)

(declare-fun e!39535 () Bool)

(assert (=> start!10178 (=> (not res!35835) (not e!39535))))

(declare-datatypes () ((Formula!67 (Implies!71 (lhs!1314 Formula!67) (rhs!1314 Formula!67)) (And!71 (lhs!1315 Formula!67) (rhs!1315 Formula!67)) (Or!71 (lhs!1316 Formula!67) (rhs!1316 Formula!67)) (Literal!65 (id!4928 (_ BitVec 32))) (Not!71 (f!4656 Formula!67)))))

(declare-fun f!4611 () Formula!67)

(declare-fun isNNF!0 (Formula!67) Bool)

(assert (=> start!10178 (= res!35835 (isNNF!0 f!4611))))

(assert (=> start!10178 e!39535))

(assert (=> start!10178 true))

(declare-fun b!73158 () Bool)

(declare-fun res!35836 () Bool)

(assert (=> b!73158 (=> (not res!35836) (not e!39535))))

(declare-fun f!4615 () Formula!67)

(assert (=> b!73158 (= res!35836 (and (is-Implies!71 f!4611) (= f!4615 (rhs!1314 f!4611))))))

(declare-fun b!73159 () Bool)

(assert (=> b!73159 (= e!39535 (not (isNNF!0 f!4615)))))

(assert (= (and start!10178 res!35835) b!73158))

(assert (= (and b!73158 res!35836) b!73159))

(declare-fun m!72770 () Bool)

(assert (=> start!10178 m!72770))

(declare-fun m!72772 () Bool)

(assert (=> b!73159 m!72772))

(push 1)

(assert (not b!73159))

(assert (not start!10178))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!73208 () Bool)

(declare-fun e!39573 () Formula!67)

(assert (=> b!73208 (= e!39573 (rhs!1315 f!4615))))

(declare-fun b!73209 () Bool)

(declare-fun e!39574 () Formula!67)

(assert (=> b!73209 (= e!39573 e!39574)))

(declare-fun c!17623 () Bool)

(declare-fun e!39577 () Bool)

(assert (=> b!73209 (= c!17623 e!39577)))

(declare-fun res!35875 () Bool)

(assert (=> b!73209 (=> (not res!35875) (not e!39577))))

(declare-fun lt!15528 () Bool)

(assert (=> b!73209 (= res!35875 lt!15528)))

(assert (=> b!73209 (= lt!15528 (is-Or!71 f!4615))))

(declare-fun b!73210 () Bool)

(declare-fun e!39572 () Bool)

(declare-fun e!39571 () Bool)

(assert (=> b!73210 (= e!39572 e!39571)))

(declare-fun c!17620 () Bool)

(declare-fun lt!15529 () Bool)

(assert (=> b!73210 (= c!17620 (or lt!15529 (is-Implies!71 f!4615)))))

(declare-fun lt!15526 () Bool)

(declare-fun e!39575 () Bool)

(assert (=> b!73210 (= lt!15526 e!39575)))

(declare-fun c!17624 () Bool)

(assert (=> b!73210 (= c!17624 (or lt!15529 (is-Implies!71 f!4615)))))

(assert (=> b!73210 (= lt!15529 (is-Or!71 f!4615))))

(declare-fun b!73211 () Bool)

(declare-fun e!39569 () Bool)

(declare-fun e!39564 () Bool)

(assert (=> b!73211 (= e!39569 e!39564)))

(declare-fun res!35872 () Bool)

(assert (=> b!73211 (=> (not res!35872) (not e!39564))))

(declare-fun lt!15527 () Bool)

(assert (=> b!73211 (= res!35872 (not lt!15527))))

(declare-fun b!73212 () Bool)

(declare-fun e!39570 () Bool)

(declare-fun lt!15533 () Bool)

(assert (=> b!73212 (= e!39570 lt!15533)))

(declare-fun b!73213 () Bool)

(declare-fun lt!15531 () Bool)

(assert (=> b!73213 (= e!39572 (and lt!15533 lt!15531))))

(declare-fun b!73214 () Bool)

(declare-fun e!39565 () Bool)

(assert (=> b!73214 (= e!39565 (isNNF!0 (ite lt!15527 (lhs!1315 f!4615) (ite (is-Or!71 f!4615) (lhs!1316 f!4615) (lhs!1314 f!4615)))))))

(declare-fun b!73215 () Bool)

(assert (=> b!73215 (= e!39577 e!39570)))

(declare-fun c!17621 () Bool)

(assert (=> b!73215 (= c!17621 (or lt!15528 (is-Implies!71 f!4615)))))

(declare-fun b!73216 () Bool)

(declare-fun e!39576 () Bool)

(assert (=> b!73216 (= e!39576 lt!15533)))

(declare-fun b!73217 () Bool)

(assert (=> b!73217 (= e!39575 lt!15533)))

(declare-fun b!73218 () Bool)

(declare-fun res!35874 () Bool)

(assert (=> b!73218 (= e!39576 res!35874)))

(assert (=> b!73218 true))

(declare-fun b!73219 () Bool)

(declare-fun e!39567 () Bool)

(declare-fun e!39568 () Bool)

(assert (=> b!73219 (= e!39567 e!39568)))

(declare-fun c!17626 () Bool)

(assert (=> b!73219 (= c!17626 (or (and lt!15529 lt!15526) (and (not lt!15529) (is-Implies!71 f!4615) lt!15526)))))

(declare-fun b!73220 () Bool)

(declare-fun res!35880 () Bool)

(assert (=> b!73220 (= e!39570 res!35880)))

(assert (=> b!73220 true))

(declare-fun lt!15534 () Bool)

(declare-fun b!73221 () Bool)

(declare-fun lt!15530 () Bool)

(assert (=> b!73221 (= e!39564 (or (and lt!15530 lt!15534) (and (not lt!15530) (is-Implies!71 f!4615) lt!15534)))))

(assert (=> b!73221 (= lt!15534 e!39576)))

(declare-fun c!17622 () Bool)

(assert (=> b!73221 (= c!17622 (or lt!15530 (is-Implies!71 f!4615)))))

(assert (=> b!73221 (= lt!15530 (is-Or!71 f!4615))))

(declare-fun b!73222 () Bool)

(assert (=> b!73222 (= e!39574 (rhs!1316 f!4615))))

(declare-fun b!73223 () Bool)

(assert (=> b!73223 (= e!39574 (rhs!1314 f!4615))))

(declare-fun b!73224 () Bool)

(declare-fun res!35878 () Bool)

(assert (=> b!73224 (= e!39568 res!35878)))

(assert (=> b!73224 true))

(assert (=> b!73224 true))

(declare-fun b!73225 () Bool)

(declare-fun res!35879 () Bool)

(assert (=> b!73225 (= e!39565 res!35879)))

(assert (=> b!73225 true))

(declare-fun b!73226 () Bool)

(assert (=> b!73226 (= e!39568 lt!15531)))

(declare-fun d!54757 () Bool)

(declare-fun c!17625 () Bool)

(assert (=> d!54757 (= c!17625 lt!15527)))

(declare-fun e!39566 () Bool)

(assert (=> d!54757 (= lt!15531 e!39566)))

(declare-fun c!17628 () Bool)

(assert (=> d!54757 (= c!17628 e!39569)))

(declare-fun res!35876 () Bool)

(assert (=> d!54757 (=> res!35876 e!39569)))

(declare-fun lt!15532 () Bool)

(assert (=> d!54757 (= res!35876 lt!15532)))

(assert (=> d!54757 (= lt!15532 (and lt!15527 lt!15533))))

(assert (=> d!54757 (= lt!15533 e!39565)))

(declare-fun c!17627 () Bool)

(assert (=> d!54757 (= c!17627 (or lt!15527 (is-Or!71 f!4615) (is-Implies!71 f!4615)))))

(assert (=> d!54757 (= lt!15527 (is-And!71 f!4615))))

(assert (=> d!54757 (= (isNNF!0 f!4615) e!39572)))

(declare-fun b!73227 () Bool)

(declare-fun res!35877 () Bool)

(assert (=> b!73227 (= e!39566 res!35877)))

(assert (=> b!73227 true))

(declare-fun b!73228 () Bool)

(assert (=> b!73228 (= e!39571 (or (and (is-Not!71 f!4615) (is-Literal!65 (f!4656 f!4615))) (not (is-Not!71 f!4615))))))

(declare-fun b!73229 () Bool)

(declare-fun res!35871 () Bool)

(assert (=> b!73229 (= e!39575 res!35871)))

(assert (=> b!73229 true))

(declare-fun b!73230 () Bool)

(assert (=> b!73230 (= e!39571 e!39567)))

(declare-fun res!35873 () Bool)

(assert (=> b!73230 (=> (not res!35873) (not e!39567))))

(assert (=> b!73230 (= res!35873 lt!15526)))

(declare-fun b!73231 () Bool)

(assert (=> b!73231 (= e!39566 (isNNF!0 e!39573))))

(declare-fun c!17629 () Bool)

(assert (=> b!73231 (= c!17629 lt!15532)))

(assert (= (and d!54757 c!17627) b!73214))

(assert (= (and d!54757 (not c!17627)) b!73225))

(assert (= (and d!54757 (not res!35876)) b!73211))

(assert (= (and b!73211 res!35872) b!73221))

(assert (= (and b!73221 c!17622) b!73216))

(assert (= (and b!73221 (not c!17622)) b!73218))

(assert (= (and b!73209 res!35875) b!73215))

(assert (= (and b!73215 c!17621) b!73212))

(assert (= (and b!73215 (not c!17621)) b!73220))

(assert (= (and b!73209 c!17623) b!73222))

(assert (= (and b!73209 (not c!17623)) b!73223))

(assert (= (and b!73231 c!17629) b!73208))

(assert (= (and b!73231 (not c!17629)) b!73209))

(assert (= (and d!54757 c!17628) b!73231))

(assert (= (and d!54757 (not c!17628)) b!73227))

(assert (= (and b!73210 c!17624) b!73217))

(assert (= (and b!73210 (not c!17624)) b!73229))

(assert (= (and b!73230 res!35873) b!73219))

(assert (= (and b!73219 c!17626) b!73226))

(assert (= (and b!73219 (not c!17626)) b!73224))

(assert (= (and b!73210 c!17620) b!73230))

(assert (= (and b!73210 (not c!17620)) b!73228))

(assert (= (and d!54757 c!17625) b!73213))

(assert (= (and d!54757 (not c!17625)) b!73210))

(declare-fun m!72774 () Bool)

(assert (=> b!73214 m!72774))

(declare-fun m!72776 () Bool)

(assert (=> b!73231 m!72776))

(assert (=> b!73159 d!54757))

(declare-fun b!73232 () Bool)

(declare-fun e!39587 () Formula!67)

(assert (=> b!73232 (= e!39587 (rhs!1315 f!4611))))

(declare-fun b!73233 () Bool)

(declare-fun e!39588 () Formula!67)

(assert (=> b!73233 (= e!39587 e!39588)))

(declare-fun c!17633 () Bool)

(declare-fun e!39591 () Bool)

(assert (=> b!73233 (= c!17633 e!39591)))

(declare-fun res!35885 () Bool)

(assert (=> b!73233 (=> (not res!35885) (not e!39591))))

(declare-fun lt!15537 () Bool)

(assert (=> b!73233 (= res!35885 lt!15537)))

(assert (=> b!73233 (= lt!15537 (is-Or!71 f!4611))))

(declare-fun b!73234 () Bool)

(declare-fun e!39586 () Bool)

(declare-fun e!39585 () Bool)

(assert (=> b!73234 (= e!39586 e!39585)))

(declare-fun c!17630 () Bool)

(declare-fun lt!15538 () Bool)

(assert (=> b!73234 (= c!17630 (or lt!15538 (is-Implies!71 f!4611)))))

(declare-fun lt!15535 () Bool)

(declare-fun e!39589 () Bool)

(assert (=> b!73234 (= lt!15535 e!39589)))

(declare-fun c!17634 () Bool)

(assert (=> b!73234 (= c!17634 (or lt!15538 (is-Implies!71 f!4611)))))

(assert (=> b!73234 (= lt!15538 (is-Or!71 f!4611))))

(declare-fun b!73235 () Bool)

(declare-fun e!39583 () Bool)

(declare-fun e!39578 () Bool)

(assert (=> b!73235 (= e!39583 e!39578)))

(declare-fun res!35882 () Bool)

(assert (=> b!73235 (=> (not res!35882) (not e!39578))))

(declare-fun lt!15536 () Bool)

(assert (=> b!73235 (= res!35882 (not lt!15536))))

(declare-fun b!73236 () Bool)

(declare-fun e!39584 () Bool)

(declare-fun lt!15542 () Bool)

(assert (=> b!73236 (= e!39584 lt!15542)))

(declare-fun b!73237 () Bool)

(declare-fun lt!15540 () Bool)

(assert (=> b!73237 (= e!39586 (and lt!15542 lt!15540))))

(declare-fun b!73238 () Bool)

(declare-fun e!39579 () Bool)

(assert (=> b!73238 (= e!39579 (isNNF!0 (ite lt!15536 (lhs!1315 f!4611) (ite (is-Or!71 f!4611) (lhs!1316 f!4611) (lhs!1314 f!4611)))))))

(declare-fun b!73239 () Bool)

(assert (=> b!73239 (= e!39591 e!39584)))

(declare-fun c!17631 () Bool)

(assert (=> b!73239 (= c!17631 (or lt!15537 (is-Implies!71 f!4611)))))

(declare-fun b!73240 () Bool)

(declare-fun e!39590 () Bool)

(assert (=> b!73240 (= e!39590 lt!15542)))

(declare-fun b!73241 () Bool)

(assert (=> b!73241 (= e!39589 lt!15542)))

(declare-fun b!73242 () Bool)

(declare-fun res!35884 () Bool)

(assert (=> b!73242 (= e!39590 res!35884)))

(assert (=> b!73242 true))

(declare-fun b!73243 () Bool)

(declare-fun e!39581 () Bool)

(declare-fun e!39582 () Bool)

(assert (=> b!73243 (= e!39581 e!39582)))

(declare-fun c!17636 () Bool)

(assert (=> b!73243 (= c!17636 (or (and lt!15538 lt!15535) (and (not lt!15538) (is-Implies!71 f!4611) lt!15535)))))

(declare-fun b!73244 () Bool)

(declare-fun res!35890 () Bool)

(assert (=> b!73244 (= e!39584 res!35890)))

(assert (=> b!73244 true))

(declare-fun lt!15539 () Bool)

(declare-fun lt!15543 () Bool)

(declare-fun b!73245 () Bool)

(assert (=> b!73245 (= e!39578 (or (and lt!15539 lt!15543) (and (not lt!15539) (is-Implies!71 f!4611) lt!15543)))))

(assert (=> b!73245 (= lt!15543 e!39590)))

(declare-fun c!17632 () Bool)

(assert (=> b!73245 (= c!17632 (or lt!15539 (is-Implies!71 f!4611)))))

(assert (=> b!73245 (= lt!15539 (is-Or!71 f!4611))))

(declare-fun b!73246 () Bool)

(assert (=> b!73246 (= e!39588 (rhs!1316 f!4611))))

(declare-fun b!73247 () Bool)

(assert (=> b!73247 (= e!39588 (rhs!1314 f!4611))))

(declare-fun b!73248 () Bool)

(declare-fun res!35888 () Bool)

(assert (=> b!73248 (= e!39582 res!35888)))

(assert (=> b!73248 true))

(assert (=> b!73248 true))

(declare-fun b!73249 () Bool)

(declare-fun res!35889 () Bool)

(assert (=> b!73249 (= e!39579 res!35889)))

(assert (=> b!73249 true))

(declare-fun b!73250 () Bool)

(assert (=> b!73250 (= e!39582 lt!15540)))

(declare-fun d!54759 () Bool)

(declare-fun c!17635 () Bool)

(assert (=> d!54759 (= c!17635 lt!15536)))

(declare-fun e!39580 () Bool)

(assert (=> d!54759 (= lt!15540 e!39580)))

(declare-fun c!17638 () Bool)

(assert (=> d!54759 (= c!17638 e!39583)))

(declare-fun res!35886 () Bool)

(assert (=> d!54759 (=> res!35886 e!39583)))

(declare-fun lt!15541 () Bool)

(assert (=> d!54759 (= res!35886 lt!15541)))

(assert (=> d!54759 (= lt!15541 (and lt!15536 lt!15542))))

(assert (=> d!54759 (= lt!15542 e!39579)))

(declare-fun c!17637 () Bool)

(assert (=> d!54759 (= c!17637 (or lt!15536 (is-Or!71 f!4611) (is-Implies!71 f!4611)))))

(assert (=> d!54759 (= lt!15536 (is-And!71 f!4611))))

(assert (=> d!54759 (= (isNNF!0 f!4611) e!39586)))

(declare-fun b!73251 () Bool)

(declare-fun res!35887 () Bool)

(assert (=> b!73251 (= e!39580 res!35887)))

(assert (=> b!73251 true))

(declare-fun b!73252 () Bool)

(assert (=> b!73252 (= e!39585 (or (and (is-Not!71 f!4611) (is-Literal!65 (f!4656 f!4611))) (not (is-Not!71 f!4611))))))

(declare-fun b!73253 () Bool)

(declare-fun res!35881 () Bool)

(assert (=> b!73253 (= e!39589 res!35881)))

(assert (=> b!73253 true))

(declare-fun b!73254 () Bool)

(assert (=> b!73254 (= e!39585 e!39581)))

(declare-fun res!35883 () Bool)

(assert (=> b!73254 (=> (not res!35883) (not e!39581))))

(assert (=> b!73254 (= res!35883 lt!15535)))

(declare-fun b!73255 () Bool)

(assert (=> b!73255 (= e!39580 (isNNF!0 e!39587))))

(declare-fun c!17639 () Bool)

(assert (=> b!73255 (= c!17639 lt!15541)))

(assert (= (and d!54759 c!17637) b!73238))

(assert (= (and d!54759 (not c!17637)) b!73249))

(assert (= (and d!54759 (not res!35886)) b!73235))

(assert (= (and b!73235 res!35882) b!73245))

(assert (= (and b!73245 c!17632) b!73240))

(assert (= (and b!73245 (not c!17632)) b!73242))

(assert (= (and b!73233 res!35885) b!73239))

(assert (= (and b!73239 c!17631) b!73236))

(assert (= (and b!73239 (not c!17631)) b!73244))

(assert (= (and b!73233 c!17633) b!73246))

(assert (= (and b!73233 (not c!17633)) b!73247))

(assert (= (and b!73255 c!17639) b!73232))

(assert (= (and b!73255 (not c!17639)) b!73233))

(assert (= (and d!54759 c!17638) b!73255))

(assert (= (and d!54759 (not c!17638)) b!73251))

(assert (= (and b!73234 c!17634) b!73241))

(assert (= (and b!73234 (not c!17634)) b!73253))

(assert (= (and b!73254 res!35883) b!73243))

(assert (= (and b!73243 c!17636) b!73250))

(assert (= (and b!73243 (not c!17636)) b!73248))

(assert (= (and b!73234 c!17630) b!73254))

(assert (= (and b!73234 (not c!17630)) b!73252))

(assert (= (and d!54759 c!17635) b!73237))

(assert (= (and d!54759 (not c!17635)) b!73234))

(declare-fun m!72778 () Bool)

(assert (=> b!73238 m!72778))

(declare-fun m!72780 () Bool)

(assert (=> b!73255 m!72780))

(assert (=> start!10178 d!54759))

(push 1)

(assert (not b!73214))

(assert (not b!73238))

(assert (not b!73255))

(assert (not b!73231))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

