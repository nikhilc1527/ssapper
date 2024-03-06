; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10068 () Bool)

(assert start!10068)

(declare-fun b_free!7311 () Bool)

(declare-fun b_next!39087 () Bool)

(assert (=> start!10068 (= b_free!7311 (not b_next!39087))))

(declare-fun tp!16867 () Bool)

(declare-fun b_and!58731 () Bool)

(assert (=> start!10068 (= tp!16867 b_and!58731)))

(declare-fun b!72690 () Bool)

(declare-fun res!35500 () Bool)

(declare-fun e!39288 () Bool)

(assert (=> b!72690 (=> (not res!35500) (not e!39288))))

(declare-datatypes () ((IList!5 (Cons!584 (head!1005 Int) (tail!1026 IList!5)) (Nil!586))))

(declare-datatypes () ((tuple2!386 (tuple2!387 (_1!228 IList!5) (_2!228 IList!5)))))

(declare-fun x$2!409 () tuple2!386)

(declare-fun l!1364 () IList!5)

(declare-fun p!691 () Int)

(declare-fun partition!1 (IList!5 Int) tuple2!386)

(assert (=> b!72690 (= res!35500 (= x$2!409 (partition!1 l!1364 p!691)))))

(declare-fun res!35501 () Bool)

(assert (=> start!10068 (=> (not res!35501) (not e!39288))))

(assert (=> start!10068 (= res!35501 (is-Cons!584 l!1364))))

(assert (=> start!10068 e!39288))

(assert (=> start!10068 true))

(assert (=> start!10068 tp!16867))

(declare-fun b!72691 () Bool)

(declare-fun res!35498 () Bool)

(assert (=> b!72691 (=> (not res!35498) (not e!39288))))

(declare-fun l2!395 () IList!5)

(declare-fun l1!402 () IList!5)

(assert (=> b!72691 (= res!35498 (and (= l1!402 (_1!228 x$2!409)) (= l2!395 (_2!228 x$2!409))))))

(declare-fun b!72692 () Bool)

(declare-fun x!28674 () Int)

(declare-fun count!1 (IList!5 Int) Int)

(assert (=> b!72692 (= e!39288 (not (= (count!1 l!1364 x!28674) (+ (count!1 l1!402 x!28674) (count!1 l2!395 x!28674)))))))

(declare-fun b!72689 () Bool)

(declare-fun res!35499 () Bool)

(assert (=> b!72689 (=> (not res!35499) (not e!39288))))

(declare-fun inductVal!664 () Bool)

(declare-fun partitionMultiplicity!0 (IList!5 Int Int) Bool)

(assert (=> b!72689 (= res!35499 (= inductVal!664 (partitionMultiplicity!0 (tail!1026 l!1364) p!691 x!28674)))))

(assert (= (and start!10068 res!35501) b!72689))

(assert (= (and b!72689 res!35499) b!72690))

(assert (= (and b!72690 res!35500) b!72691))

(assert (= (and b!72691 res!35498) b!72692))

(declare-fun m!72564 () Bool)

(assert (=> b!72690 m!72564))

(declare-fun m!72566 () Bool)

(assert (=> b!72692 m!72566))

(declare-fun m!72568 () Bool)

(assert (=> b!72692 m!72568))

(declare-fun m!72570 () Bool)

(assert (=> b!72692 m!72570))

(declare-fun m!72572 () Bool)

(assert (=> b!72689 m!72572))

(push 1)

(assert (not b!72692))

(assert (not b_next!39087))

(assert (not b!72689))

(assert (not b!72690))

(assert b_and!58731)

(check-sat)

(pop 1)

(push 1)

(assert b_and!58731)

(assert (not b_next!39087))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!72697 () Bool)

(declare-fun e!39291 () Bool)

(assert (=> b!72697 (= e!39291 (= (count!1 (tail!1026 l!1364) x!28674) (+ (count!1 (_1!228 (partition!1 (tail!1026 l!1364) p!691)) x!28674) (count!1 (_2!228 (partition!1 (tail!1026 l!1364) p!691)) x!28674))))))

(declare-fun lt!15408 () Bool)

(assert (=> b!72697 (= lt!15408 (partitionMultiplicity!0 (tail!1026 (tail!1026 l!1364)) p!691 x!28674))))

(declare-fun d!54663 () Bool)

(assert (=> d!54663 e!39291))

(declare-fun c!17526 () Bool)

(assert (=> d!54663 (= c!17526 (is-Cons!584 (tail!1026 l!1364)))))

(assert (=> d!54663 (= (partitionMultiplicity!0 (tail!1026 l!1364) p!691 x!28674) true)))

(declare-fun b!72698 () Bool)

(assert (=> b!72698 (= e!39291 (= (count!1 (tail!1026 l!1364) x!28674) (+ (count!1 (_1!228 (partition!1 (tail!1026 l!1364) p!691)) x!28674) (count!1 (_2!228 (partition!1 (tail!1026 l!1364) p!691)) x!28674))))))

(assert (= (and d!54663 c!17526) b!72697))

(assert (= (and d!54663 (not c!17526)) b!72698))

(declare-fun m!72574 () Bool)

(assert (=> b!72697 m!72574))

(declare-fun m!72576 () Bool)

(assert (=> b!72697 m!72576))

(declare-fun m!72578 () Bool)

(assert (=> b!72697 m!72578))

(declare-fun m!72580 () Bool)

(assert (=> b!72697 m!72580))

(declare-fun m!72582 () Bool)

(assert (=> b!72697 m!72582))

(assert (=> b!72698 m!72578))

(assert (=> b!72698 m!72580))

(assert (=> b!72698 m!72576))

(assert (=> b!72698 m!72574))

(assert (=> b!72689 d!54663))

(declare-fun b!72713 () Bool)

(assert (=> b!72713 true))

(declare-fun order!463 () Int)

(declare-fun lambda!9181 () Int)

(declare-fun dynLambda!955 (Int Int) Int)

(assert (=> b!72713 (< (dynLambda!955 order!463 p!691) (dynLambda!955 order!463 lambda!9181))))

(declare-fun b!72709 () Bool)

(declare-fun e!39299 () tuple2!386)

(assert (=> b!72709 (= e!39299 (tuple2!387 Nil!586 Nil!586))))

(declare-fun lt!15421 () IList!5)

(declare-fun lt!15420 () IList!5)

(declare-fun e!39300 () tuple2!386)

(declare-fun b!72710 () Bool)

(assert (=> b!72710 (= e!39300 (tuple2!387 lt!15421 (Cons!584 (head!1005 l!1364) lt!15420)))))

(declare-fun b!72711 () Bool)

(assert (=> b!72711 (= e!39300 (tuple2!387 (Cons!584 (head!1005 l!1364) lt!15421) lt!15420))))

(declare-fun b!72712 () Bool)

(assert (=> b!72712 (= e!39299 e!39300)))

(declare-fun c!17532 () Bool)

(declare-fun dynLambda!956 (Int Int) Bool)

(assert (=> b!72712 (= c!17532 (dynLambda!956 p!691 (head!1005 l!1364)))))

(declare-fun lt!15423 () tuple2!386)

(assert (=> b!72712 (= lt!15420 (_2!228 lt!15423))))

(declare-fun lt!15419 () tuple2!386)

(assert (=> b!72712 (= lt!15421 (_1!228 lt!15419))))

(assert (=> b!72712 (= lt!15423 (partition!1 (tail!1026 l!1364) p!691))))

(assert (=> b!72712 (= lt!15419 (partition!1 (tail!1026 l!1364) p!691))))

(declare-fun e!39298 () Bool)

(declare-fun lt!15422 () tuple2!386)

(declare-fun filter!4 (IList!5 Int) IList!5)

(assert (=> b!72713 (= e!39298 (= (_2!228 lt!15422) (filter!4 l!1364 lambda!9181)))))

(declare-fun d!54665 () Bool)

(assert (=> d!54665 e!39298))

(declare-fun res!35505 () Bool)

(assert (=> d!54665 (=> (not res!35505) (not e!39298))))

(assert (=> d!54665 (= res!35505 (= (_1!228 lt!15422) (filter!4 l!1364 p!691)))))

(assert (=> d!54665 (= lt!15422 e!39299)))

(declare-fun c!17531 () Bool)

(assert (=> d!54665 (= c!17531 (is-Nil!586 l!1364))))

(assert (=> d!54665 (= (partition!1 l!1364 p!691) lt!15422)))

(assert (= (and b!72712 c!17532) b!72711))

(assert (= (and b!72712 (not c!17532)) b!72710))

(assert (= (and d!54665 c!17531) b!72709))

(assert (= (and d!54665 (not c!17531)) b!72712))

(assert (= (and d!54665 res!35505) b!72713))

(declare-fun b_lambda!15757 () Bool)

(assert (=> (not b_lambda!15757) (not b!72712)))

(declare-fun t!47513 () Bool)

(declare-fun tb!46139 () Bool)

(assert (=> (and start!10068 (= p!691 p!691) t!47513) tb!46139))

(declare-fun result!46567 () Bool)

(assert (=> tb!46139 (= result!46567 true)))

(assert (=> b!72712 t!47513))

(declare-fun b_and!58733 () Bool)

(assert (= b_and!58731 (and (=> t!47513 result!46567) b_and!58733)))

(declare-fun m!72584 () Bool)

(assert (=> b!72712 m!72584))

(assert (=> b!72712 m!72580))

(declare-fun m!72586 () Bool)

(assert (=> b!72713 m!72586))

(declare-fun m!72588 () Bool)

(assert (=> d!54665 m!72588))

(assert (=> b!72690 d!54665))

(declare-fun d!54667 () Bool)

(declare-fun c!17535 () Bool)

(assert (=> d!54667 (= c!17535 (is-Nil!586 l!1364))))

(declare-fun e!39303 () Int)

(assert (=> d!54667 (= (count!1 l!1364 x!28674) e!39303)))

(declare-fun b!72720 () Bool)

(assert (=> b!72720 (= e!39303 0)))

(declare-fun b!72721 () Bool)

(assert (=> b!72721 (= e!39303 (+ (ite (= (head!1005 l!1364) x!28674) 1 0) (count!1 (tail!1026 l!1364) x!28674)))))

(assert (= (and d!54667 c!17535) b!72720))

(assert (= (and d!54667 (not c!17535)) b!72721))

(assert (=> b!72721 m!72578))

(assert (=> b!72692 d!54667))

(declare-fun d!54669 () Bool)

(declare-fun c!17536 () Bool)

(assert (=> d!54669 (= c!17536 (is-Nil!586 l1!402))))

(declare-fun e!39304 () Int)

(assert (=> d!54669 (= (count!1 l1!402 x!28674) e!39304)))

(declare-fun b!72722 () Bool)

(assert (=> b!72722 (= e!39304 0)))

(declare-fun b!72723 () Bool)

(assert (=> b!72723 (= e!39304 (+ (ite (= (head!1005 l1!402) x!28674) 1 0) (count!1 (tail!1026 l1!402) x!28674)))))

(assert (= (and d!54669 c!17536) b!72722))

(assert (= (and d!54669 (not c!17536)) b!72723))

(declare-fun m!72590 () Bool)

(assert (=> b!72723 m!72590))

(assert (=> b!72692 d!54669))

(declare-fun d!54671 () Bool)

(declare-fun c!17537 () Bool)

(assert (=> d!54671 (= c!17537 (is-Nil!586 l2!395))))

(declare-fun e!39305 () Int)

(assert (=> d!54671 (= (count!1 l2!395 x!28674) e!39305)))

(declare-fun b!72724 () Bool)

(assert (=> b!72724 (= e!39305 0)))

(declare-fun b!72725 () Bool)

(assert (=> b!72725 (= e!39305 (+ (ite (= (head!1005 l2!395) x!28674) 1 0) (count!1 (tail!1026 l2!395) x!28674)))))

(assert (= (and d!54671 c!17537) b!72724))

(assert (= (and d!54671 (not c!17537)) b!72725))

(declare-fun m!72592 () Bool)

(assert (=> b!72725 m!72592))

(assert (=> b!72692 d!54671))

(declare-fun b_lambda!15759 () Bool)

(assert (= b_lambda!15757 (or (and start!10068 b_free!7311) b_lambda!15759)))

(push 1)

(assert (not b!72725))

(assert (not b_lambda!15759))

(assert (not b!72721))

(assert (not b_next!39087))

(assert (not b!72697))

(assert (not b!72713))

(assert (not b!72698))

(assert (not b!72712))

(assert (not d!54665))

(assert (not b!72723))

(assert b_and!58733)

(check-sat)

(pop 1)

(push 1)

(assert b_and!58733)

(assert (not b_next!39087))

(check-sat)

(pop 1)

