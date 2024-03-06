; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4786 () Bool)

(assert start!4786)

(declare-fun b!37565 () Bool)

(declare-fun b_free!2325 () Bool)

(declare-fun b_next!5529 () Bool)

(assert (=> b!37565 (= b_free!2325 (not b_next!5529))))

(declare-fun tp!7564 () Bool)

(declare-fun b_and!8263 () Bool)

(assert (=> b!37565 (= tp!7564 b_and!8263)))

(declare-fun b_free!2327 () Bool)

(declare-fun b_next!5531 () Bool)

(assert (=> b!37565 (= b_free!2327 (not b_next!5531))))

(declare-fun tp!7567 () Bool)

(declare-fun b_and!8265 () Bool)

(assert (=> b!37565 (= tp!7567 b_and!8265)))

(declare-fun b_free!2329 () Bool)

(declare-fun b_next!5533 () Bool)

(assert (=> b!37565 (= b_free!2329 (not b_next!5533))))

(declare-fun tp!7560 () Bool)

(declare-fun b_and!8267 () Bool)

(assert (=> b!37565 (= tp!7560 b_and!8267)))

(declare-fun b!37560 () Bool)

(declare-fun b_free!2331 () Bool)

(declare-fun b_next!5535 () Bool)

(assert (=> b!37560 (= b_free!2331 (not b_next!5535))))

(declare-fun tp!7559 () Bool)

(declare-fun b_and!8269 () Bool)

(assert (=> b!37560 (= tp!7559 b_and!8269)))

(declare-fun b_free!2333 () Bool)

(declare-fun b_next!5537 () Bool)

(assert (=> b!37560 (= b_free!2333 (not b_next!5537))))

(declare-fun tp!7562 () Bool)

(declare-fun b_and!8271 () Bool)

(assert (=> b!37560 (= tp!7562 b_and!8271)))

(declare-fun b_free!2335 () Bool)

(declare-fun b_next!5539 () Bool)

(assert (=> b!37560 (= b_free!2335 (not b_next!5539))))

(declare-fun tp!7566 () Bool)

(declare-fun b_and!8273 () Bool)

(assert (=> b!37560 (= tp!7566 b_and!8273)))

(declare-fun b!37564 () Bool)

(declare-fun b_free!2337 () Bool)

(declare-fun b_next!5541 () Bool)

(assert (=> b!37564 (= b_free!2337 (not b_next!5541))))

(declare-fun tp!7561 () Bool)

(declare-fun b_and!8275 () Bool)

(assert (=> b!37564 (= tp!7561 b_and!8275)))

(declare-fun b_free!2339 () Bool)

(declare-fun b_next!5543 () Bool)

(assert (=> b!37564 (= b_free!2339 (not b_next!5543))))

(declare-fun tp!7563 () Bool)

(declare-fun b_and!8277 () Bool)

(assert (=> b!37564 (= tp!7563 b_and!8277)))

(declare-fun b_free!2341 () Bool)

(declare-fun b_next!5545 () Bool)

(assert (=> b!37564 (= b_free!2341 (not b_next!5545))))

(declare-fun tp!7565 () Bool)

(declare-fun b_and!8279 () Bool)

(assert (=> b!37564 (= tp!7565 b_and!8279)))

(declare-fun b!37566 () Bool)

(declare-fun lambda!4316 () Int)

(declare-datatypes () ((RAEqEvidence!34 (RAEqEvidence!35 (x!13093 Int) (y!1356 Int) (evidence!469 Int)))))

(declare-fun x$107!1 () RAEqEvidence!34)

(declare-fun dynLambda!676 (Int) Bool)

(assert (=> (and b!37564 b!37566 (= (dynLambda!676 lambda!4316) (dynLambda!676 (y!1356 x$107!1)))) (= lambda!4316 (y!1356 x$107!1))))

(assert (=> (and b!37564 b!37566 (= (dynLambda!676 lambda!4316) (dynLambda!676 (x!13093 x$107!1)))) (= lambda!4316 (x!13093 x$107!1))))

(declare-fun prev!781 () RAEqEvidence!34)

(assert (=> (and b!37565 b!37566 (= (dynLambda!676 lambda!4316) (dynLambda!676 (evidence!469 prev!781)))) (= lambda!4316 (evidence!469 prev!781))))

(declare-datatypes () ((Unit!291 (Unit!292))))

(declare-datatypes () ((RAEqEvidence!36 (RAEqEvidence!37 (x!13094 Int) (y!1357 Int) (evidence!470 Int)))))

(declare-fun thiss!6493 () RAEqEvidence!36)

(assert (=> (and b!37560 b!37566 (= (dynLambda!676 lambda!4316) (dynLambda!676 (y!1357 thiss!6493)))) (= lambda!4316 (y!1357 thiss!6493))))

(assert (=> (and b!37560 b!37566 (= (dynLambda!676 lambda!4316) (dynLambda!676 (x!13094 thiss!6493)))) (= lambda!4316 (x!13094 thiss!6493))))

(assert (=> (and b!37564 b!37566 (= (dynLambda!676 lambda!4316) (dynLambda!676 (evidence!469 x$107!1)))) (= lambda!4316 (evidence!469 x$107!1))))

(assert (=> (and b!37565 b!37566 (= (dynLambda!676 lambda!4316) (dynLambda!676 (y!1356 prev!781)))) (= lambda!4316 (y!1356 prev!781))))

(assert (=> (and b!37565 b!37566 (= (dynLambda!676 lambda!4316) (dynLambda!676 (x!13093 prev!781)))) (= lambda!4316 (x!13093 prev!781))))

(declare-fun b_next!5547 () Bool)

(assert (=> b!37564 (= b_next!5543 (or (and b!37566 (= lambda!4316 (y!1356 x$107!1))) b_next!5547))))

(declare-fun b_next!5549 () Bool)

(assert (=> b!37564 (= b_next!5541 (or (and b!37566 (= lambda!4316 (x!13093 x$107!1))) b_next!5549))))

(declare-fun b_next!5551 () Bool)

(assert (=> b!37565 (= b_next!5533 (or (and b!37566 (= lambda!4316 (evidence!469 prev!781))) b_next!5551))))

(declare-fun b_next!5553 () Bool)

(assert (=> b!37560 (= b_next!5537 (or (and b!37566 (= lambda!4316 (y!1357 thiss!6493))) b_next!5553))))

(declare-fun b_next!5555 () Bool)

(assert (=> b!37560 (= b_next!5535 (or (and b!37566 (= lambda!4316 (x!13094 thiss!6493))) b_next!5555))))

(declare-fun b_next!5557 () Bool)

(assert (=> b!37564 (= b_next!5545 (or (and b!37566 (= lambda!4316 (evidence!469 x$107!1))) b_next!5557))))

(declare-fun b_next!5559 () Bool)

(assert (=> b!37565 (= b_next!5531 (or (and b!37566 (= lambda!4316 (y!1356 prev!781))) b_next!5559))))

(declare-fun b_next!5561 () Bool)

(assert (=> b!37565 (= b_next!5529 (or (and b!37566 (= lambda!4316 (x!13093 prev!781))) b_next!5561))))

(declare-fun m!38847 () Bool)

(assert (=> b!37566 m!38847))

(declare-fun lambda!4317 () Int)

(declare-fun trivial!1 () Bool)

(assert (=> b!37566 (= (= trivial!1 false) (= lambda!4317 lambda!4316))))

(assert (=> (and b!37564 b!37566 (= (dynLambda!676 lambda!4317) (dynLambda!676 (y!1356 x$107!1)))) (= lambda!4317 (y!1356 x$107!1))))

(assert (=> (and b!37564 b!37566 (= (dynLambda!676 lambda!4317) (dynLambda!676 (x!13093 x$107!1)))) (= lambda!4317 (x!13093 x$107!1))))

(assert (=> (and b!37565 b!37566 (= (dynLambda!676 lambda!4317) (dynLambda!676 (evidence!469 prev!781)))) (= lambda!4317 (evidence!469 prev!781))))

(assert (=> (and b!37560 b!37566 (= (dynLambda!676 lambda!4317) (dynLambda!676 (y!1357 thiss!6493)))) (= lambda!4317 (y!1357 thiss!6493))))

(assert (=> (and b!37560 b!37566 (= (dynLambda!676 lambda!4317) (dynLambda!676 (x!13094 thiss!6493)))) (= lambda!4317 (x!13094 thiss!6493))))

(assert (=> (and b!37564 b!37566 (= (dynLambda!676 lambda!4317) (dynLambda!676 (evidence!469 x$107!1)))) (= lambda!4317 (evidence!469 x$107!1))))

(assert (=> (and b!37565 b!37566 (= (dynLambda!676 lambda!4317) (dynLambda!676 (y!1356 prev!781)))) (= lambda!4317 (y!1356 prev!781))))

(assert (=> (and b!37565 b!37566 (= (dynLambda!676 lambda!4317) (dynLambda!676 (x!13093 prev!781)))) (= lambda!4317 (x!13093 prev!781))))

(declare-fun b_next!5563 () Bool)

(assert (=> b!37564 (= b_next!5547 (or (and b!37566 (= lambda!4317 (y!1356 x$107!1))) b_next!5563))))

(declare-fun b_next!5565 () Bool)

(assert (=> b!37564 (= b_next!5549 (or (and b!37566 (= lambda!4317 (x!13093 x$107!1))) b_next!5565))))

(declare-fun b_next!5567 () Bool)

(assert (=> b!37565 (= b_next!5551 (or (and b!37566 (= lambda!4317 (evidence!469 prev!781))) b_next!5567))))

(declare-fun b_next!5569 () Bool)

(assert (=> b!37560 (= b_next!5553 (or (and b!37566 (= lambda!4317 (y!1357 thiss!6493))) b_next!5569))))

(declare-fun b_next!5571 () Bool)

(assert (=> b!37560 (= b_next!5555 (or (and b!37566 (= lambda!4317 (x!13094 thiss!6493))) b_next!5571))))

(declare-fun b_next!5573 () Bool)

(assert (=> b!37564 (= b_next!5557 (or (and b!37566 (= lambda!4317 (evidence!469 x$107!1))) b_next!5573))))

(declare-fun b_next!5575 () Bool)

(assert (=> b!37565 (= b_next!5559 (or (and b!37566 (= lambda!4317 (y!1356 prev!781))) b_next!5575))))

(declare-fun b_next!5577 () Bool)

(assert (=> b!37565 (= b_next!5561 (or (and b!37566 (= lambda!4317 (x!13093 prev!781))) b_next!5577))))

(declare-fun b!37559 () Bool)

(declare-fun lambda!4318 () Int)

(declare-fun dynLambda!677 (Int) Unit!291)

(assert (=> (and b!37560 b!37559 (= (dynLambda!677 lambda!4318) (dynLambda!677 (evidence!470 thiss!6493)))) (= lambda!4318 (evidence!470 thiss!6493))))

(declare-fun b_next!5579 () Bool)

(assert (=> b!37560 (= b_next!5539 (or (and b!37559 (= lambda!4318 (evidence!470 thiss!6493))) b_next!5579))))

(declare-fun res!17868 () Bool)

(declare-fun e!19315 () Bool)

(assert (=> b!37559 (=> (not res!17868) (not e!19315))))

(assert (=> b!37559 (= res!17868 (= thiss!6493 (RAEqEvidence!37 lambda!4316 lambda!4316 lambda!4318)))))

(declare-fun e!19317 () Bool)

(assert (=> b!37560 (= e!19317 (and tp!7559 tp!7562 tp!7566))))

(declare-fun b!37561 () Bool)

(declare-fun res!17865 () Bool)

(assert (=> b!37561 (=> (not res!17865) (not e!19315))))

(declare-fun keepEvidence!6 (Bool) Bool)

(assert (=> b!37561 (= res!17865 (keepEvidence!6 (dynLambda!676 (evidence!469 prev!781))))))

(declare-fun b!37562 () Bool)

(declare-fun res!17869 () Bool)

(assert (=> b!37562 (=> (not res!17869) (not e!19315))))

(assert (=> b!37562 (= res!17869 (= prev!781 x$107!1))))

(declare-fun b!37563 () Bool)

(declare-fun res!17867 () Bool)

(assert (=> b!37563 (=> (not res!17867) (not e!19315))))

(declare-datatypes () ((Nat!37 (Zero!21) (Succ!18 (n!1100 Nat!37)))))

(declare-fun n2!375 () Nat!37)

(declare-fun n3!64 () Nat!37)

(declare-fun n1!359 () Nat!37)

(declare-fun n4!2 () Nat!37)

(declare-datatypes () ((tuple2!164 (tuple2!165 (_1!108 Nat!37) (_2!108 Nat!37)))))

(assert (=> b!37563 (= res!17867 (not (= (tuple2!165 n1!359 n2!375) (tuple2!165 n3!64 n4!2))))))

(declare-fun res!17864 () Bool)

(assert (=> start!4786 (=> (not res!17864) (not e!19315))))

(declare-fun pair!0 (Nat!37 Nat!37) Nat!37)

(assert (=> start!4786 (= res!17864 (not (= (pair!0 n1!359 n2!375) (pair!0 n3!64 n4!2))))))

(assert (=> start!4786 e!19315))

(assert (=> start!4786 true))

(declare-fun e!19314 () Bool)

(declare-fun inv!666 (RAEqEvidence!34) Bool)

(assert (=> start!4786 (and (inv!666 prev!781) e!19314)))

(declare-fun inv!667 (RAEqEvidence!36) Bool)

(assert (=> start!4786 (and (inv!667 thiss!6493) e!19317)))

(declare-fun e!19316 () Bool)

(assert (=> start!4786 (and (inv!666 x$107!1) e!19316)))

(assert (=> b!37564 (= e!19316 (and tp!7561 tp!7563 tp!7565))))

(assert (=> b!37565 (= e!19314 (and tp!7564 tp!7567 tp!7560))))

(declare-fun res!17866 () Bool)

(assert (=> b!37566 (=> (not res!17866) (not e!19315))))

(assert (=> b!37566 (= res!17866 (= x$107!1 (RAEqEvidence!35 lambda!4316 lambda!4316 lambda!4317)))))

(declare-fun b!37567 () Bool)

(assert (=> b!37567 (= e!19315 (not (= (dynLambda!676 (y!1356 prev!781)) (dynLambda!676 (x!13094 thiss!6493)))))))

(assert (= (and start!4786 res!17864) b!37563))

(assert (= (and b!37563 res!17867) b!37566))

(assert (= (and b!37566 res!17866) b!37559))

(assert (= (and b!37559 res!17868) b!37562))

(assert (= (and b!37562 res!17869) b!37561))

(assert (= (and b!37561 res!17865) b!37567))

(assert (= start!4786 b!37565))

(assert (= start!4786 b!37560))

(assert (= start!4786 b!37564))

(declare-fun b_lambda!9985 () Bool)

(assert (=> (not b_lambda!9985) (not b!37561)))

(declare-fun t!5234 () Bool)

(declare-fun tb!4413 () Bool)

(assert (=> (and b!37565 (= (y!1356 prev!781) (evidence!469 prev!781)) t!5234) tb!4413))

(declare-fun result!4689 () Bool)

(assert (=> tb!4413 (= result!4689 true)))

(assert (=> b!37561 t!5234))

(declare-fun b_and!8281 () Bool)

(assert (= b_and!8265 (and (=> t!5234 result!4689) b_and!8281)))

(declare-fun t!5236 () Bool)

(declare-fun tb!4415 () Bool)

(assert (=> (and b!37565 (= (evidence!469 prev!781) (evidence!469 prev!781)) t!5236) tb!4415))

(declare-fun result!4691 () Bool)

(assert (=> tb!4415 (= result!4691 true)))

(assert (=> b!37561 t!5236))

(declare-fun b_and!8283 () Bool)

(assert (= b_and!8267 (and (=> t!5236 result!4691) b_and!8283)))

(declare-fun t!5238 () Bool)

(declare-fun tb!4417 () Bool)

(assert (=> (and b!37560 (= (x!13094 thiss!6493) (evidence!469 prev!781)) t!5238) tb!4417))

(declare-fun result!4693 () Bool)

(assert (=> tb!4417 (= result!4693 true)))

(assert (=> b!37561 t!5238))

(declare-fun b_and!8285 () Bool)

(assert (= b_and!8269 (and (=> t!5238 result!4693) b_and!8285)))

(declare-fun tb!4419 () Bool)

(declare-fun t!5240 () Bool)

(assert (=> (and b!37564 (= (x!13093 x$107!1) (evidence!469 prev!781)) t!5240) tb!4419))

(declare-fun result!4695 () Bool)

(assert (=> tb!4419 (= result!4695 true)))

(assert (=> b!37561 t!5240))

(declare-fun b_and!8287 () Bool)

(assert (= b_and!8275 (and (=> t!5240 result!4695) b_and!8287)))

(declare-fun t!5242 () Bool)

(declare-fun tb!4421 () Bool)

(assert (=> (and b!37565 (= (x!13093 prev!781) (evidence!469 prev!781)) t!5242) tb!4421))

(declare-fun result!4697 () Bool)

(assert (=> tb!4421 (= result!4697 true)))

(assert (=> b!37561 t!5242))

(declare-fun b_and!8289 () Bool)

(assert (= b_and!8263 (and (=> t!5242 result!4697) b_and!8289)))

(declare-fun tb!4423 () Bool)

(declare-fun t!5244 () Bool)

(assert (=> (and b!37560 (= (y!1357 thiss!6493) (evidence!469 prev!781)) t!5244) tb!4423))

(declare-fun result!4699 () Bool)

(assert (=> tb!4423 (= result!4699 true)))

(assert (=> b!37561 t!5244))

(declare-fun b_and!8291 () Bool)

(assert (= b_and!8271 (and (=> t!5244 result!4699) b_and!8291)))

(declare-fun t!5246 () Bool)

(declare-fun tb!4425 () Bool)

(assert (=> (and b!37564 (= (y!1356 x$107!1) (evidence!469 prev!781)) t!5246) tb!4425))

(declare-fun result!4701 () Bool)

(assert (=> tb!4425 (= result!4701 true)))

(assert (=> b!37561 t!5246))

(declare-fun b_and!8293 () Bool)

(assert (= b_and!8277 (and (=> t!5246 result!4701) b_and!8293)))

(declare-fun tb!4427 () Bool)

(declare-fun t!5248 () Bool)

(assert (=> (and b!37564 (= (evidence!469 x$107!1) (evidence!469 prev!781)) t!5248) tb!4427))

(declare-fun result!4703 () Bool)

(assert (=> tb!4427 (= result!4703 true)))

(assert (=> b!37561 t!5248))

(declare-fun b_and!8295 () Bool)

(assert (= b_and!8279 (and (=> t!5248 result!4703) b_and!8295)))

(declare-fun b_lambda!9987 () Bool)

(assert (=> (not b_lambda!9987) (not b!37567)))

(declare-fun t!5250 () Bool)

(declare-fun tb!4429 () Bool)

(assert (=> (and b!37564 (= (y!1356 x$107!1) (y!1356 prev!781)) t!5250) tb!4429))

(declare-fun result!4705 () Bool)

(assert (=> tb!4429 (= result!4705 true)))

(assert (=> b!37567 t!5250))

(declare-fun b_and!8297 () Bool)

(assert (= b_and!8293 (and (=> t!5250 result!4705) b_and!8297)))

(declare-fun t!5252 () Bool)

(declare-fun tb!4431 () Bool)

(assert (=> (and b!37564 (= (evidence!469 x$107!1) (y!1356 prev!781)) t!5252) tb!4431))

(declare-fun result!4707 () Bool)

(assert (=> tb!4431 (= result!4707 true)))

(assert (=> b!37567 t!5252))

(declare-fun b_and!8299 () Bool)

(assert (= b_and!8295 (and (=> t!5252 result!4707) b_and!8299)))

(declare-fun t!5254 () Bool)

(declare-fun tb!4433 () Bool)

(assert (=> (and b!37565 (= (y!1356 prev!781) (y!1356 prev!781)) t!5254) tb!4433))

(declare-fun result!4709 () Bool)

(assert (=> tb!4433 (= result!4709 true)))

(assert (=> b!37567 t!5254))

(declare-fun b_and!8301 () Bool)

(assert (= b_and!8281 (and (=> t!5254 result!4709) b_and!8301)))

(declare-fun t!5256 () Bool)

(declare-fun tb!4435 () Bool)

(assert (=> (and b!37560 (= (x!13094 thiss!6493) (y!1356 prev!781)) t!5256) tb!4435))

(declare-fun result!4711 () Bool)

(assert (=> tb!4435 (= result!4711 true)))

(assert (=> b!37567 t!5256))

(declare-fun b_and!8303 () Bool)

(assert (= b_and!8285 (and (=> t!5256 result!4711) b_and!8303)))

(declare-fun tb!4437 () Bool)

(declare-fun t!5258 () Bool)

(assert (=> (and b!37560 (= (y!1357 thiss!6493) (y!1356 prev!781)) t!5258) tb!4437))

(declare-fun result!4713 () Bool)

(assert (=> tb!4437 (= result!4713 true)))

(assert (=> b!37567 t!5258))

(declare-fun b_and!8305 () Bool)

(assert (= b_and!8291 (and (=> t!5258 result!4713) b_and!8305)))

(declare-fun t!5260 () Bool)

(declare-fun tb!4439 () Bool)

(assert (=> (and b!37565 (= (x!13093 prev!781) (y!1356 prev!781)) t!5260) tb!4439))

(declare-fun result!4715 () Bool)

(assert (=> tb!4439 (= result!4715 true)))

(assert (=> b!37567 t!5260))

(declare-fun b_and!8307 () Bool)

(assert (= b_and!8289 (and (=> t!5260 result!4715) b_and!8307)))

(declare-fun tb!4441 () Bool)

(declare-fun t!5262 () Bool)

(assert (=> (and b!37564 (= (x!13093 x$107!1) (y!1356 prev!781)) t!5262) tb!4441))

(declare-fun result!4717 () Bool)

(assert (=> tb!4441 (= result!4717 true)))

(assert (=> b!37567 t!5262))

(declare-fun b_and!8309 () Bool)

(assert (= b_and!8287 (and (=> t!5262 result!4717) b_and!8309)))

(declare-fun t!5264 () Bool)

(declare-fun tb!4443 () Bool)

(assert (=> (and b!37565 (= (evidence!469 prev!781) (y!1356 prev!781)) t!5264) tb!4443))

(declare-fun result!4719 () Bool)

(assert (=> tb!4443 (= result!4719 true)))

(assert (=> b!37567 t!5264))

(declare-fun b_and!8311 () Bool)

(assert (= b_and!8283 (and (=> t!5264 result!4719) b_and!8311)))

(declare-fun b_lambda!9989 () Bool)

(assert (=> (not b_lambda!9989) (not b!37567)))

(declare-fun t!5266 () Bool)

(declare-fun tb!4445 () Bool)

(assert (=> (and b!37565 (= (x!13093 prev!781) (x!13094 thiss!6493)) t!5266) tb!4445))

(declare-fun result!4721 () Bool)

(assert (=> tb!4445 (= result!4721 true)))

(assert (=> b!37567 t!5266))

(declare-fun b_and!8313 () Bool)

(assert (= b_and!8307 (and (=> t!5266 result!4721) b_and!8313)))

(declare-fun t!5268 () Bool)

(declare-fun tb!4447 () Bool)

(assert (=> (and b!37560 (= (x!13094 thiss!6493) (x!13094 thiss!6493)) t!5268) tb!4447))

(declare-fun result!4723 () Bool)

(assert (=> tb!4447 (= result!4723 true)))

(assert (=> b!37567 t!5268))

(declare-fun b_and!8315 () Bool)

(assert (= b_and!8303 (and (=> t!5268 result!4723) b_and!8315)))

(declare-fun t!5270 () Bool)

(declare-fun tb!4449 () Bool)

(assert (=> (and b!37564 (= (evidence!469 x$107!1) (x!13094 thiss!6493)) t!5270) tb!4449))

(declare-fun result!4725 () Bool)

(assert (=> tb!4449 (= result!4725 true)))

(assert (=> b!37567 t!5270))

(declare-fun b_and!8317 () Bool)

(assert (= b_and!8299 (and (=> t!5270 result!4725) b_and!8317)))

(declare-fun t!5272 () Bool)

(declare-fun tb!4451 () Bool)

(assert (=> (and b!37560 (= (y!1357 thiss!6493) (x!13094 thiss!6493)) t!5272) tb!4451))

(declare-fun result!4727 () Bool)

(assert (=> tb!4451 (= result!4727 true)))

(assert (=> b!37567 t!5272))

(declare-fun b_and!8319 () Bool)

(assert (= b_and!8305 (and (=> t!5272 result!4727) b_and!8319)))

(declare-fun tb!4453 () Bool)

(declare-fun t!5274 () Bool)

(assert (=> (and b!37564 (= (y!1356 x$107!1) (x!13094 thiss!6493)) t!5274) tb!4453))

(declare-fun result!4729 () Bool)

(assert (=> tb!4453 (= result!4729 true)))

(assert (=> b!37567 t!5274))

(declare-fun b_and!8321 () Bool)

(assert (= b_and!8297 (and (=> t!5274 result!4729) b_and!8321)))

(declare-fun tb!4455 () Bool)

(declare-fun t!5276 () Bool)

(assert (=> (and b!37564 (= (x!13093 x$107!1) (x!13094 thiss!6493)) t!5276) tb!4455))

(declare-fun result!4731 () Bool)

(assert (=> tb!4455 (= result!4731 true)))

(assert (=> b!37567 t!5276))

(declare-fun b_and!8323 () Bool)

(assert (= b_and!8309 (and (=> t!5276 result!4731) b_and!8323)))

(declare-fun tb!4457 () Bool)

(declare-fun t!5278 () Bool)

(assert (=> (and b!37565 (= (y!1356 prev!781) (x!13094 thiss!6493)) t!5278) tb!4457))

(declare-fun result!4733 () Bool)

(assert (=> tb!4457 (= result!4733 true)))

(assert (=> b!37567 t!5278))

(declare-fun b_and!8325 () Bool)

(assert (= b_and!8301 (and (=> t!5278 result!4733) b_and!8325)))

(declare-fun tb!4459 () Bool)

(declare-fun t!5280 () Bool)

(assert (=> (and b!37565 (= (evidence!469 prev!781) (x!13094 thiss!6493)) t!5280) tb!4459))

(declare-fun result!4735 () Bool)

(assert (=> tb!4459 (= result!4735 true)))

(assert (=> b!37567 t!5280))

(declare-fun b_and!8327 () Bool)

(assert (= b_and!8311 (and (=> t!5280 result!4735) b_and!8327)))

(declare-fun m!38849 () Bool)

(assert (=> b!37561 m!38849))

(assert (=> b!37561 m!38849))

(declare-fun m!38851 () Bool)

(assert (=> b!37561 m!38851))

(declare-fun m!38853 () Bool)

(assert (=> start!4786 m!38853))

(declare-fun m!38855 () Bool)

(assert (=> start!4786 m!38855))

(declare-fun m!38857 () Bool)

(assert (=> start!4786 m!38857))

(declare-fun m!38859 () Bool)

(assert (=> start!4786 m!38859))

(declare-fun m!38861 () Bool)

(assert (=> start!4786 m!38861))

(declare-fun m!38863 () Bool)

(assert (=> b!37567 m!38863))

(declare-fun m!38865 () Bool)

(assert (=> b!37567 m!38865))

(push 1)

(assert (not b_lambda!9987))

(assert (not b_next!5563))

(assert (not b!37566))

(assert b_and!8273)

(assert b_and!8325)

(assert (not b_next!5575))

(assert b_and!8327)

(assert (not b_next!5577))

(assert (not start!4786))

(assert (not b_lambda!9985))

(assert b_and!8321)

(assert b_and!8315)

(assert b_and!8313)

(assert (not b_next!5579))

(assert b_and!8323)

(assert (not b_next!5565))

(assert (not b_next!5573))

(assert (not b_lambda!9989))

(assert (not b_next!5569))

(assert b_and!8317)

(assert (not b_next!5567))

(assert (not b!37561))

(assert b_and!8319)

(assert (not b_next!5571))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!5563))

(assert b_and!8273)

(assert b_and!8325)

(assert (not b_next!5575))

(assert b_and!8327)

(assert (not b_next!5577))

(assert b_and!8321)

(assert b_and!8315)

(assert b_and!8313)

(assert (not b_next!5579))

(assert b_and!8323)

(assert (not b_next!5565))

(assert (not b_next!5573))

(assert (not b_next!5569))

(assert b_and!8317)

(assert (not b_next!5567))

(assert b_and!8319)

(assert (not b_next!5571))

(check-sat)

(pop 1)

