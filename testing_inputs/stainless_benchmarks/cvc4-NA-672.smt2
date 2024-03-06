; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4778 () Bool)

(assert start!4778)

(declare-fun b!37493 () Bool)

(declare-fun b_free!2259 () Bool)

(declare-fun b_next!5429 () Bool)

(assert (=> b!37493 (= b_free!2259 (not b_next!5429))))

(declare-fun tp!7461 () Bool)

(declare-fun b_and!8149 () Bool)

(assert (=> b!37493 (= tp!7461 b_and!8149)))

(declare-fun b_free!2261 () Bool)

(declare-fun b_next!5431 () Bool)

(assert (=> b!37493 (= b_free!2261 (not b_next!5431))))

(declare-fun tp!7462 () Bool)

(declare-fun b_and!8151 () Bool)

(assert (=> b!37493 (= tp!7462 b_and!8151)))

(declare-fun b_free!2263 () Bool)

(declare-fun b_next!5433 () Bool)

(assert (=> b!37493 (= b_free!2263 (not b_next!5433))))

(declare-fun tp!7465 () Bool)

(declare-fun b_and!8153 () Bool)

(assert (=> b!37493 (= tp!7465 b_and!8153)))

(declare-fun b!37498 () Bool)

(declare-fun b_free!2265 () Bool)

(declare-fun b_next!5435 () Bool)

(assert (=> b!37498 (= b_free!2265 (not b_next!5435))))

(declare-fun tp!7468 () Bool)

(declare-fun b_and!8155 () Bool)

(assert (=> b!37498 (= tp!7468 b_and!8155)))

(declare-fun b_free!2267 () Bool)

(declare-fun b_next!5437 () Bool)

(assert (=> b!37498 (= b_free!2267 (not b_next!5437))))

(declare-fun tp!7460 () Bool)

(declare-fun b_and!8157 () Bool)

(assert (=> b!37498 (= tp!7460 b_and!8157)))

(declare-fun b_free!2269 () Bool)

(declare-fun b_next!5439 () Bool)

(assert (=> b!37498 (= b_free!2269 (not b_next!5439))))

(declare-fun tp!7466 () Bool)

(declare-fun b_and!8159 () Bool)

(assert (=> b!37498 (= tp!7466 b_and!8159)))

(declare-fun b!37500 () Bool)

(declare-fun b_free!2271 () Bool)

(declare-fun b_next!5441 () Bool)

(assert (=> b!37500 (= b_free!2271 (not b_next!5441))))

(declare-fun tp!7463 () Bool)

(declare-fun b_and!8161 () Bool)

(assert (=> b!37500 (= tp!7463 b_and!8161)))

(declare-fun b_free!2273 () Bool)

(declare-fun b_next!5443 () Bool)

(assert (=> b!37500 (= b_free!2273 (not b_next!5443))))

(declare-fun tp!7467 () Bool)

(declare-fun b_and!8163 () Bool)

(assert (=> b!37500 (= tp!7467 b_and!8163)))

(declare-fun b_free!2275 () Bool)

(declare-fun b_next!5445 () Bool)

(assert (=> b!37500 (= b_free!2275 (not b_next!5445))))

(declare-fun tp!7464 () Bool)

(declare-fun b_and!8165 () Bool)

(assert (=> b!37500 (= tp!7464 b_and!8165)))

(declare-fun b!37495 () Bool)

(declare-fun lambda!4301 () Int)

(declare-datatypes () ((RAEqEvidence!20 (RAEqEvidence!21 (x!13080 Int) (y!1349 Int) (evidence!462 Int)))))

(declare-fun prev!780 () RAEqEvidence!20)

(declare-fun dynLambda!674 (Int) Bool)

(assert (=> (and b!37493 b!37495 (= (dynLambda!674 lambda!4301) (dynLambda!674 (evidence!462 prev!780)))) (= lambda!4301 (evidence!462 prev!780))))

(declare-fun x$106!1 () RAEqEvidence!20)

(assert (=> (and b!37498 b!37495 (= (dynLambda!674 lambda!4301) (dynLambda!674 (evidence!462 x$106!1)))) (= lambda!4301 (evidence!462 x$106!1))))

(declare-datatypes () ((Unit!283 (Unit!284))))

(declare-datatypes () ((RAEqEvidence!22 (RAEqEvidence!23 (x!13081 Int) (y!1350 Int) (evidence!463 Int)))))

(declare-fun thiss!6490 () RAEqEvidence!22)

(assert (=> (and b!37500 b!37495 (= (dynLambda!674 lambda!4301) (dynLambda!674 (y!1350 thiss!6490)))) (= lambda!4301 (y!1350 thiss!6490))))

(assert (=> (and b!37493 b!37495 (= (dynLambda!674 lambda!4301) (dynLambda!674 (x!13080 prev!780)))) (= lambda!4301 (x!13080 prev!780))))

(assert (=> (and b!37498 b!37495 (= (dynLambda!674 lambda!4301) (dynLambda!674 (y!1349 x$106!1)))) (= lambda!4301 (y!1349 x$106!1))))

(assert (=> (and b!37498 b!37495 (= (dynLambda!674 lambda!4301) (dynLambda!674 (x!13080 x$106!1)))) (= lambda!4301 (x!13080 x$106!1))))

(assert (=> (and b!37493 b!37495 (= (dynLambda!674 lambda!4301) (dynLambda!674 (y!1349 prev!780)))) (= lambda!4301 (y!1349 prev!780))))

(assert (=> (and b!37500 b!37495 (= (dynLambda!674 lambda!4301) (dynLambda!674 (x!13081 thiss!6490)))) (= lambda!4301 (x!13081 thiss!6490))))

(declare-fun b_next!5447 () Bool)

(assert (=> b!37493 (= b_next!5433 (or (and b!37495 (= lambda!4301 (evidence!462 prev!780))) b_next!5447))))

(declare-fun b_next!5449 () Bool)

(assert (=> b!37498 (= b_next!5439 (or (and b!37495 (= lambda!4301 (evidence!462 x$106!1))) b_next!5449))))

(declare-fun b_next!5451 () Bool)

(assert (=> b!37500 (= b_next!5443 (or (and b!37495 (= lambda!4301 (y!1350 thiss!6490))) b_next!5451))))

(declare-fun b_next!5453 () Bool)

(assert (=> b!37493 (= b_next!5429 (or (and b!37495 (= lambda!4301 (x!13080 prev!780))) b_next!5453))))

(declare-fun b_next!5455 () Bool)

(assert (=> b!37498 (= b_next!5437 (or (and b!37495 (= lambda!4301 (y!1349 x$106!1))) b_next!5455))))

(declare-fun b_next!5457 () Bool)

(assert (=> b!37498 (= b_next!5435 (or (and b!37495 (= lambda!4301 (x!13080 x$106!1))) b_next!5457))))

(declare-fun b_next!5459 () Bool)

(assert (=> b!37493 (= b_next!5431 (or (and b!37495 (= lambda!4301 (y!1349 prev!780))) b_next!5459))))

(declare-fun b_next!5461 () Bool)

(assert (=> b!37500 (= b_next!5441 (or (and b!37495 (= lambda!4301 (x!13081 thiss!6490))) b_next!5461))))

(declare-fun m!38783 () Bool)

(assert (=> b!37495 m!38783))

(declare-fun lambda!4302 () Int)

(declare-fun trivial!1 () Bool)

(assert (=> b!37495 (= (= trivial!1 true) (= lambda!4302 lambda!4301))))

(assert (=> (and b!37493 b!37495 (= (dynLambda!674 lambda!4302) (dynLambda!674 (evidence!462 prev!780)))) (= lambda!4302 (evidence!462 prev!780))))

(assert (=> (and b!37498 b!37495 (= (dynLambda!674 lambda!4302) (dynLambda!674 (evidence!462 x$106!1)))) (= lambda!4302 (evidence!462 x$106!1))))

(assert (=> (and b!37500 b!37495 (= (dynLambda!674 lambda!4302) (dynLambda!674 (y!1350 thiss!6490)))) (= lambda!4302 (y!1350 thiss!6490))))

(assert (=> (and b!37493 b!37495 (= (dynLambda!674 lambda!4302) (dynLambda!674 (x!13080 prev!780)))) (= lambda!4302 (x!13080 prev!780))))

(assert (=> (and b!37498 b!37495 (= (dynLambda!674 lambda!4302) (dynLambda!674 (y!1349 x$106!1)))) (= lambda!4302 (y!1349 x$106!1))))

(assert (=> (and b!37498 b!37495 (= (dynLambda!674 lambda!4302) (dynLambda!674 (x!13080 x$106!1)))) (= lambda!4302 (x!13080 x$106!1))))

(assert (=> (and b!37493 b!37495 (= (dynLambda!674 lambda!4302) (dynLambda!674 (y!1349 prev!780)))) (= lambda!4302 (y!1349 prev!780))))

(assert (=> (and b!37500 b!37495 (= (dynLambda!674 lambda!4302) (dynLambda!674 (x!13081 thiss!6490)))) (= lambda!4302 (x!13081 thiss!6490))))

(declare-fun b_next!5463 () Bool)

(assert (=> b!37493 (= b_next!5447 (or (and b!37495 (= lambda!4302 (evidence!462 prev!780))) b_next!5463))))

(declare-fun b_next!5465 () Bool)

(assert (=> b!37498 (= b_next!5449 (or (and b!37495 (= lambda!4302 (evidence!462 x$106!1))) b_next!5465))))

(declare-fun b_next!5467 () Bool)

(assert (=> b!37500 (= b_next!5451 (or (and b!37495 (= lambda!4302 (y!1350 thiss!6490))) b_next!5467))))

(declare-fun b_next!5469 () Bool)

(assert (=> b!37493 (= b_next!5453 (or (and b!37495 (= lambda!4302 (x!13080 prev!780))) b_next!5469))))

(declare-fun b_next!5471 () Bool)

(assert (=> b!37498 (= b_next!5455 (or (and b!37495 (= lambda!4302 (y!1349 x$106!1))) b_next!5471))))

(declare-fun b_next!5473 () Bool)

(assert (=> b!37498 (= b_next!5457 (or (and b!37495 (= lambda!4302 (x!13080 x$106!1))) b_next!5473))))

(declare-fun b_next!5475 () Bool)

(assert (=> b!37493 (= b_next!5459 (or (and b!37495 (= lambda!4302 (y!1349 prev!780))) b_next!5475))))

(declare-fun b_next!5477 () Bool)

(assert (=> b!37500 (= b_next!5461 (or (and b!37495 (= lambda!4302 (x!13081 thiss!6490))) b_next!5477))))

(declare-fun b!37503 () Bool)

(declare-fun lambda!4303 () Int)

(declare-fun dynLambda!675 (Int) Unit!283)

(assert (=> (and b!37500 b!37503 (= (dynLambda!675 lambda!4303) (dynLambda!675 (evidence!463 thiss!6490)))) (= lambda!4303 (evidence!463 thiss!6490))))

(declare-fun b_next!5479 () Bool)

(assert (=> b!37500 (= b_next!5445 (or (and b!37503 (= lambda!4303 (evidence!463 thiss!6490))) b_next!5479))))

(declare-fun e!19277 () Bool)

(assert (=> b!37493 (= e!19277 (and tp!7461 tp!7462 tp!7465))))

(declare-fun b!37494 () Bool)

(declare-fun res!17834 () Bool)

(declare-fun e!19276 () Bool)

(assert (=> b!37494 (=> (not res!17834) (not e!19276))))

(declare-datatypes () ((Nat!33 (Zero!17) (Succ!14 (n!1096 Nat!33)))))

(declare-fun n2!375 () Nat!33)

(declare-fun n3!64 () Nat!33)

(declare-fun n1!359 () Nat!33)

(declare-fun n4!2 () Nat!33)

(declare-datatypes () ((tuple2!160 (tuple2!161 (_1!106 Nat!33) (_2!106 Nat!33)))))

(assert (=> b!37494 (= res!17834 (= (tuple2!161 n1!359 n2!375) (tuple2!161 n3!64 n4!2)))))

(declare-fun res!17836 () Bool)

(assert (=> b!37495 (=> (not res!17836) (not e!19276))))

(assert (=> b!37495 (= res!17836 (= x$106!1 (RAEqEvidence!21 lambda!4301 lambda!4301 lambda!4302)))))

(declare-fun b!37496 () Bool)

(declare-fun res!17835 () Bool)

(assert (=> b!37496 (=> (not res!17835) (not e!19276))))

(declare-fun tmp!238 () Unit!283)

(declare-fun inverse_lemma!0 (Nat!33 Nat!33) Unit!283)

(assert (=> b!37496 (= res!17835 (= tmp!238 (inverse_lemma!0 n1!359 n2!375)))))

(declare-fun res!17832 () Bool)

(assert (=> start!4778 (=> (not res!17832) (not e!19276))))

(declare-fun pair!0 (Nat!33 Nat!33) Nat!33)

(assert (=> start!4778 (= res!17832 (= (pair!0 n1!359 n2!375) (pair!0 n3!64 n4!2)))))

(assert (=> start!4778 e!19276))

(declare-fun inv!659 (RAEqEvidence!20) Bool)

(assert (=> start!4778 (and (inv!659 prev!780) e!19277)))

(assert (=> start!4778 true))

(declare-fun e!19278 () Bool)

(assert (=> start!4778 (and (inv!659 x$106!1) e!19278)))

(declare-fun e!19275 () Bool)

(declare-fun inv!660 (RAEqEvidence!22) Bool)

(assert (=> start!4778 (and (inv!660 thiss!6490) e!19275)))

(declare-fun b!37497 () Bool)

(declare-fun res!17838 () Bool)

(assert (=> b!37497 (=> (not res!17838) (not e!19276))))

(assert (=> b!37497 (= res!17838 (= prev!780 x$106!1))))

(assert (=> b!37498 (= e!19278 (and tp!7468 tp!7460 tp!7466))))

(declare-fun b!37499 () Bool)

(declare-fun res!17837 () Bool)

(assert (=> b!37499 (=> (not res!17837) (not e!19276))))

(declare-fun tmp!239 () Unit!283)

(assert (=> b!37499 (= res!17837 (= tmp!239 (inverse_lemma!0 n3!64 n4!2)))))

(assert (=> b!37500 (= e!19275 (and tp!7463 tp!7467 tp!7464))))

(declare-fun b!37501 () Bool)

(assert (=> b!37501 (= e!19276 (not (= (dynLambda!674 (y!1349 prev!780)) (dynLambda!674 (x!13081 thiss!6490)))))))

(declare-fun b!37502 () Bool)

(declare-fun res!17831 () Bool)

(assert (=> b!37502 (=> (not res!17831) (not e!19276))))

(declare-fun project!0 (Nat!33) tuple2!160)

(assert (=> b!37502 (= res!17831 (= (project!0 (pair!0 n1!359 n2!375)) (project!0 (pair!0 n3!64 n4!2))))))

(declare-fun res!17839 () Bool)

(assert (=> b!37503 (=> (not res!17839) (not e!19276))))

(assert (=> b!37503 (= res!17839 (= thiss!6490 (RAEqEvidence!23 lambda!4301 lambda!4301 lambda!4303)))))

(declare-fun b!37504 () Bool)

(declare-fun res!17833 () Bool)

(assert (=> b!37504 (=> (not res!17833) (not e!19276))))

(declare-fun keepEvidence!5 (Bool) Bool)

(assert (=> b!37504 (= res!17833 (keepEvidence!5 (dynLambda!674 (evidence!462 prev!780))))))

(assert (= (and start!4778 res!17832) b!37502))

(assert (= (and b!37502 res!17831) b!37496))

(assert (= (and b!37496 res!17835) b!37499))

(assert (= (and b!37499 res!17837) b!37494))

(assert (= (and b!37494 res!17834) b!37495))

(assert (= (and b!37495 res!17836) b!37503))

(assert (= (and b!37503 res!17839) b!37497))

(assert (= (and b!37497 res!17838) b!37504))

(assert (= (and b!37504 res!17833) b!37501))

(assert (= start!4778 b!37493))

(assert (= start!4778 b!37498))

(assert (= start!4778 b!37500))

(declare-fun b_lambda!9979 () Bool)

(assert (=> (not b_lambda!9979) (not b!37501)))

(declare-fun t!5186 () Bool)

(declare-fun tb!4365 () Bool)

(assert (=> (and b!37493 (= (y!1349 prev!780) (y!1349 prev!780)) t!5186) tb!4365))

(declare-fun result!4641 () Bool)

(assert (=> tb!4365 (= result!4641 true)))

(assert (=> b!37501 t!5186))

(declare-fun b_and!8167 () Bool)

(assert (= b_and!8151 (and (=> t!5186 result!4641) b_and!8167)))

(declare-fun tb!4367 () Bool)

(declare-fun t!5188 () Bool)

(assert (=> (and b!37500 (= (y!1350 thiss!6490) (y!1349 prev!780)) t!5188) tb!4367))

(declare-fun result!4643 () Bool)

(assert (=> tb!4367 (= result!4643 true)))

(assert (=> b!37501 t!5188))

(declare-fun b_and!8169 () Bool)

(assert (= b_and!8163 (and (=> t!5188 result!4643) b_and!8169)))

(declare-fun t!5190 () Bool)

(declare-fun tb!4369 () Bool)

(assert (=> (and b!37493 (= (evidence!462 prev!780) (y!1349 prev!780)) t!5190) tb!4369))

(declare-fun result!4645 () Bool)

(assert (=> tb!4369 (= result!4645 true)))

(assert (=> b!37501 t!5190))

(declare-fun b_and!8171 () Bool)

(assert (= b_and!8153 (and (=> t!5190 result!4645) b_and!8171)))

(declare-fun tb!4371 () Bool)

(declare-fun t!5192 () Bool)

(assert (=> (and b!37500 (= (x!13081 thiss!6490) (y!1349 prev!780)) t!5192) tb!4371))

(declare-fun result!4647 () Bool)

(assert (=> tb!4371 (= result!4647 true)))

(assert (=> b!37501 t!5192))

(declare-fun b_and!8173 () Bool)

(assert (= b_and!8161 (and (=> t!5192 result!4647) b_and!8173)))

(declare-fun tb!4373 () Bool)

(declare-fun t!5194 () Bool)

(assert (=> (and b!37498 (= (y!1349 x$106!1) (y!1349 prev!780)) t!5194) tb!4373))

(declare-fun result!4649 () Bool)

(assert (=> tb!4373 (= result!4649 true)))

(assert (=> b!37501 t!5194))

(declare-fun b_and!8175 () Bool)

(assert (= b_and!8157 (and (=> t!5194 result!4649) b_and!8175)))

(declare-fun t!5196 () Bool)

(declare-fun tb!4375 () Bool)

(assert (=> (and b!37498 (= (x!13080 x$106!1) (y!1349 prev!780)) t!5196) tb!4375))

(declare-fun result!4651 () Bool)

(assert (=> tb!4375 (= result!4651 true)))

(assert (=> b!37501 t!5196))

(declare-fun b_and!8177 () Bool)

(assert (= b_and!8155 (and (=> t!5196 result!4651) b_and!8177)))

(declare-fun t!5198 () Bool)

(declare-fun tb!4377 () Bool)

(assert (=> (and b!37493 (= (x!13080 prev!780) (y!1349 prev!780)) t!5198) tb!4377))

(declare-fun result!4653 () Bool)

(assert (=> tb!4377 (= result!4653 true)))

(assert (=> b!37501 t!5198))

(declare-fun b_and!8179 () Bool)

(assert (= b_and!8149 (and (=> t!5198 result!4653) b_and!8179)))

(declare-fun tb!4379 () Bool)

(declare-fun t!5200 () Bool)

(assert (=> (and b!37498 (= (evidence!462 x$106!1) (y!1349 prev!780)) t!5200) tb!4379))

(declare-fun result!4655 () Bool)

(assert (=> tb!4379 (= result!4655 true)))

(assert (=> b!37501 t!5200))

(declare-fun b_and!8181 () Bool)

(assert (= b_and!8159 (and (=> t!5200 result!4655) b_and!8181)))

(declare-fun b_lambda!9981 () Bool)

(assert (=> (not b_lambda!9981) (not b!37501)))

(declare-fun t!5202 () Bool)

(declare-fun tb!4381 () Bool)

(assert (=> (and b!37493 (= (x!13080 prev!780) (x!13081 thiss!6490)) t!5202) tb!4381))

(declare-fun result!4657 () Bool)

(assert (=> tb!4381 (= result!4657 true)))

(assert (=> b!37501 t!5202))

(declare-fun b_and!8183 () Bool)

(assert (= b_and!8179 (and (=> t!5202 result!4657) b_and!8183)))

(declare-fun t!5204 () Bool)

(declare-fun tb!4383 () Bool)

(assert (=> (and b!37500 (= (y!1350 thiss!6490) (x!13081 thiss!6490)) t!5204) tb!4383))

(declare-fun result!4659 () Bool)

(assert (=> tb!4383 (= result!4659 true)))

(assert (=> b!37501 t!5204))

(declare-fun b_and!8185 () Bool)

(assert (= b_and!8169 (and (=> t!5204 result!4659) b_and!8185)))

(declare-fun tb!4385 () Bool)

(declare-fun t!5206 () Bool)

(assert (=> (and b!37498 (= (y!1349 x$106!1) (x!13081 thiss!6490)) t!5206) tb!4385))

(declare-fun result!4661 () Bool)

(assert (=> tb!4385 (= result!4661 true)))

(assert (=> b!37501 t!5206))

(declare-fun b_and!8187 () Bool)

(assert (= b_and!8175 (and (=> t!5206 result!4661) b_and!8187)))

(declare-fun t!5208 () Bool)

(declare-fun tb!4387 () Bool)

(assert (=> (and b!37500 (= (x!13081 thiss!6490) (x!13081 thiss!6490)) t!5208) tb!4387))

(declare-fun result!4663 () Bool)

(assert (=> tb!4387 (= result!4663 true)))

(assert (=> b!37501 t!5208))

(declare-fun b_and!8189 () Bool)

(assert (= b_and!8173 (and (=> t!5208 result!4663) b_and!8189)))

(declare-fun t!5210 () Bool)

(declare-fun tb!4389 () Bool)

(assert (=> (and b!37493 (= (evidence!462 prev!780) (x!13081 thiss!6490)) t!5210) tb!4389))

(declare-fun result!4665 () Bool)

(assert (=> tb!4389 (= result!4665 true)))

(assert (=> b!37501 t!5210))

(declare-fun b_and!8191 () Bool)

(assert (= b_and!8171 (and (=> t!5210 result!4665) b_and!8191)))

(declare-fun t!5212 () Bool)

(declare-fun tb!4391 () Bool)

(assert (=> (and b!37493 (= (y!1349 prev!780) (x!13081 thiss!6490)) t!5212) tb!4391))

(declare-fun result!4667 () Bool)

(assert (=> tb!4391 (= result!4667 true)))

(assert (=> b!37501 t!5212))

(declare-fun b_and!8193 () Bool)

(assert (= b_and!8167 (and (=> t!5212 result!4667) b_and!8193)))

(declare-fun tb!4393 () Bool)

(declare-fun t!5214 () Bool)

(assert (=> (and b!37498 (= (x!13080 x$106!1) (x!13081 thiss!6490)) t!5214) tb!4393))

(declare-fun result!4669 () Bool)

(assert (=> tb!4393 (= result!4669 true)))

(assert (=> b!37501 t!5214))

(declare-fun b_and!8195 () Bool)

(assert (= b_and!8177 (and (=> t!5214 result!4669) b_and!8195)))

(declare-fun tb!4395 () Bool)

(declare-fun t!5216 () Bool)

(assert (=> (and b!37498 (= (evidence!462 x$106!1) (x!13081 thiss!6490)) t!5216) tb!4395))

(declare-fun result!4671 () Bool)

(assert (=> tb!4395 (= result!4671 true)))

(assert (=> b!37501 t!5216))

(declare-fun b_and!8197 () Bool)

(assert (= b_and!8181 (and (=> t!5216 result!4671) b_and!8197)))

(declare-fun b_lambda!9983 () Bool)

(assert (=> (not b_lambda!9983) (not b!37504)))

(declare-fun tb!4397 () Bool)

(declare-fun t!5218 () Bool)

(assert (=> (and b!37498 (= (x!13080 x$106!1) (evidence!462 prev!780)) t!5218) tb!4397))

(declare-fun result!4673 () Bool)

(assert (=> tb!4397 (= result!4673 true)))

(assert (=> b!37504 t!5218))

(declare-fun b_and!8199 () Bool)

(assert (= b_and!8195 (and (=> t!5218 result!4673) b_and!8199)))

(declare-fun t!5220 () Bool)

(declare-fun tb!4399 () Bool)

(assert (=> (and b!37493 (= (y!1349 prev!780) (evidence!462 prev!780)) t!5220) tb!4399))

(declare-fun result!4675 () Bool)

(assert (=> tb!4399 (= result!4675 true)))

(assert (=> b!37504 t!5220))

(declare-fun b_and!8201 () Bool)

(assert (= b_and!8193 (and (=> t!5220 result!4675) b_and!8201)))

(declare-fun t!5222 () Bool)

(declare-fun tb!4401 () Bool)

(assert (=> (and b!37493 (= (x!13080 prev!780) (evidence!462 prev!780)) t!5222) tb!4401))

(declare-fun result!4677 () Bool)

(assert (=> tb!4401 (= result!4677 true)))

(assert (=> b!37504 t!5222))

(declare-fun b_and!8203 () Bool)

(assert (= b_and!8183 (and (=> t!5222 result!4677) b_and!8203)))

(declare-fun t!5224 () Bool)

(declare-fun tb!4403 () Bool)

(assert (=> (and b!37500 (= (x!13081 thiss!6490) (evidence!462 prev!780)) t!5224) tb!4403))

(declare-fun result!4679 () Bool)

(assert (=> tb!4403 (= result!4679 true)))

(assert (=> b!37504 t!5224))

(declare-fun b_and!8205 () Bool)

(assert (= b_and!8189 (and (=> t!5224 result!4679) b_and!8205)))

(declare-fun t!5226 () Bool)

(declare-fun tb!4405 () Bool)

(assert (=> (and b!37498 (= (evidence!462 x$106!1) (evidence!462 prev!780)) t!5226) tb!4405))

(declare-fun result!4681 () Bool)

(assert (=> tb!4405 (= result!4681 true)))

(assert (=> b!37504 t!5226))

(declare-fun b_and!8207 () Bool)

(assert (= b_and!8197 (and (=> t!5226 result!4681) b_and!8207)))

(declare-fun t!5228 () Bool)

(declare-fun tb!4407 () Bool)

(assert (=> (and b!37498 (= (y!1349 x$106!1) (evidence!462 prev!780)) t!5228) tb!4407))

(declare-fun result!4683 () Bool)

(assert (=> tb!4407 (= result!4683 true)))

(assert (=> b!37504 t!5228))

(declare-fun b_and!8209 () Bool)

(assert (= b_and!8187 (and (=> t!5228 result!4683) b_and!8209)))

(declare-fun tb!4409 () Bool)

(declare-fun t!5230 () Bool)

(assert (=> (and b!37500 (= (y!1350 thiss!6490) (evidence!462 prev!780)) t!5230) tb!4409))

(declare-fun result!4685 () Bool)

(assert (=> tb!4409 (= result!4685 true)))

(assert (=> b!37504 t!5230))

(declare-fun b_and!8211 () Bool)

(assert (= b_and!8185 (and (=> t!5230 result!4685) b_and!8211)))

(declare-fun t!5232 () Bool)

(declare-fun tb!4411 () Bool)

(assert (=> (and b!37493 (= (evidence!462 prev!780) (evidence!462 prev!780)) t!5232) tb!4411))

(declare-fun result!4687 () Bool)

(assert (=> tb!4411 (= result!4687 true)))

(assert (=> b!37504 t!5232))

(declare-fun b_and!8213 () Bool)

(assert (= b_and!8191 (and (=> t!5232 result!4687) b_and!8213)))

(declare-fun m!38785 () Bool)

(assert (=> b!37496 m!38785))

(declare-fun m!38787 () Bool)

(assert (=> start!4778 m!38787))

(declare-fun m!38789 () Bool)

(assert (=> start!4778 m!38789))

(declare-fun m!38791 () Bool)

(assert (=> start!4778 m!38791))

(declare-fun m!38793 () Bool)

(assert (=> start!4778 m!38793))

(declare-fun m!38795 () Bool)

(assert (=> start!4778 m!38795))

(declare-fun m!38797 () Bool)

(assert (=> b!37499 m!38797))

(declare-fun m!38799 () Bool)

(assert (=> b!37501 m!38799))

(declare-fun m!38801 () Bool)

(assert (=> b!37501 m!38801))

(assert (=> b!37502 m!38787))

(assert (=> b!37502 m!38787))

(declare-fun m!38803 () Bool)

(assert (=> b!37502 m!38803))

(assert (=> b!37502 m!38795))

(assert (=> b!37502 m!38795))

(declare-fun m!38805 () Bool)

(assert (=> b!37502 m!38805))

(declare-fun m!38807 () Bool)

(assert (=> b!37504 m!38807))

(assert (=> b!37504 m!38807))

(declare-fun m!38809 () Bool)

(assert (=> b!37504 m!38809))

(push 1)

(assert (not b_next!5467))

(assert b_and!8165)

(assert (not b_lambda!9981))

(assert b_and!8211)

(assert (not b!37499))

(assert b_and!8203)

(assert (not b_next!5463))

(assert b_and!8199)

(assert b_and!8213)

(assert (not b!37504))

(assert (not b_next!5477))

(assert (not b_next!5473))

(assert b_and!8201)

(assert (not b_lambda!9983))

(assert b_and!8205)

(assert (not b_next!5465))

(assert (not b_lambda!9979))

(assert (not b!37502))

(assert (not b!37496))

(assert (not b_next!5475))

(assert b_and!8207)

(assert (not b_next!5471))

(assert (not b_next!5479))

(assert (not b!37495))

(assert b_and!8209)

(assert (not b_next!5469))

(assert (not start!4778))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!5467))

(assert b_and!8165)

(assert b_and!8211)

(assert b_and!8203)

(assert (not b_next!5463))

(assert b_and!8199)

(assert b_and!8213)

(assert (not b_next!5477))

(assert (not b_next!5473))

(assert b_and!8201)

(assert b_and!8205)

(assert (not b_next!5465))

(assert (not b_next!5475))

(assert b_and!8207)

(assert (not b_next!5471))

(assert (not b_next!5479))

(assert b_and!8209)

(assert (not b_next!5469))

(check-sat)

(pop 1)

