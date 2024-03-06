; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4502 () Bool)

(assert start!4502)

(declare-fun b_free!2171 () Bool)

(declare-fun b_next!5281 () Bool)

(assert (=> start!4502 (= b_free!2171 (not b_next!5281))))

(declare-fun tp!7280 () Bool)

(declare-fun b_and!7907 () Bool)

(assert (=> start!4502 (= tp!7280 b_and!7907)))

(declare-fun b_free!2173 () Bool)

(declare-fun b_next!5283 () Bool)

(assert (=> start!4502 (= b_free!2173 (not b_next!5283))))

(declare-fun tp!7279 () Bool)

(declare-fun b_and!7909 () Bool)

(assert (=> start!4502 (= tp!7279 b_and!7909)))

(declare-fun b!34986 () Bool)

(declare-fun res!16151 () Bool)

(declare-fun e!17673 () Bool)

(assert (=> b!34986 (=> (not res!16151) (not e!17673))))

(declare-datatypes () ((List!390 (Cons!382 (h!331 Int) (t!4992 List!390)) (Nil!383))))

(declare-fun l!950 () List!390)

(declare-fun isEmpty!385 (List!390) Bool)

(assert (=> b!34986 (= res!16151 (not (isEmpty!385 l!950)))))

(declare-fun p!501 () Int)

(declare-fun p!499 () Int)

(declare-fun thiss!4030 () List!390)

(declare-fun b!34989 () Bool)

(assert (=> b!34989 (= e!17673 (and (= p!501 p!499) (= thiss!4030 l!950) (= thiss!4030 Nil!383)))))

(declare-fun res!16152 () Bool)

(assert (=> start!4502 (=> (not res!16152) (not e!17673))))

(declare-fun n!429 () Int)

(declare-fun size!365 (List!390) Int)

(assert (=> start!4502 (= res!16152 (<= (size!365 l!950) n!429))))

(assert (=> start!4502 e!17673))

(assert (=> start!4502 true))

(assert (=> start!4502 tp!7280))

(assert (=> start!4502 tp!7279))

(declare-fun b!34988 () Bool)

(declare-fun res!16153 () Bool)

(assert (=> b!34988 (=> (not res!16153) (not e!17673))))

(declare-fun x$1!542 () Int)

(declare-fun head!543 (List!390) Int)

(assert (=> b!34988 (= res!16153 (= x$1!542 (head!543 l!950)))))

(declare-fun b!34987 () Bool)

(declare-fun res!16154 () Bool)

(assert (=> b!34987 (=> (not res!16154) (not e!17673))))

(declare-fun dynLambda!638 (Int Int) Bool)

(assert (=> b!34987 (= res!16154 (dynLambda!638 p!499 (head!543 l!950)))))

(assert (= (and start!4502 res!16152) b!34986))

(assert (= (and b!34986 res!16151) b!34987))

(assert (= (and b!34987 res!16154) b!34988))

(assert (= (and b!34988 res!16153) b!34989))

(declare-fun b_lambda!9531 () Bool)

(assert (=> (not b_lambda!9531) (not b!34987)))

(declare-fun tb!4285 () Bool)

(declare-fun t!4989 () Bool)

(assert (=> (and start!4502 (= p!501 p!499) t!4989) tb!4285))

(declare-fun result!4541 () Bool)

(assert (=> tb!4285 (= result!4541 true)))

(assert (=> b!34987 t!4989))

(declare-fun b_and!7911 () Bool)

(assert (= b_and!7907 (and (=> t!4989 result!4541) b_and!7911)))

(declare-fun t!4991 () Bool)

(declare-fun tb!4287 () Bool)

(assert (=> (and start!4502 (= p!499 p!499) t!4991) tb!4287))

(declare-fun result!4543 () Bool)

(assert (=> tb!4287 (= result!4543 true)))

(assert (=> b!34987 t!4991))

(declare-fun b_and!7913 () Bool)

(assert (= b_and!7909 (and (=> t!4991 result!4543) b_and!7913)))

(declare-fun m!37521 () Bool)

(assert (=> b!34986 m!37521))

(declare-fun m!37523 () Bool)

(assert (=> start!4502 m!37523))

(declare-fun m!37525 () Bool)

(assert (=> b!34988 m!37525))

(assert (=> b!34987 m!37525))

(assert (=> b!34987 m!37525))

(declare-fun m!37527 () Bool)

(assert (=> b!34987 m!37527))

(push 1)

(assert b_and!7911)

(assert (not b!34987))

(assert (not start!4502))

(assert (not b!34988))

(assert (not b_lambda!9531))

(assert (not b_next!5283))

(assert b_and!7913)

(assert (not b_next!5281))

(assert (not b!34986))

(check-sat)

(pop 1)

(push 1)

(assert b_and!7911)

(assert b_and!7913)

(assert (not b_next!5283))

(assert (not b_next!5281))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!9533 () Bool)

(assert (= b_lambda!9531 (or (and start!4502 b_free!2171 (= p!501 p!499)) (and start!4502 b_free!2173) b_lambda!9533)))

(push 1)

(assert b_and!7911)

(assert (not b!34987))

(assert (not start!4502))

(assert (not b!34988))

(assert (not b_next!5283))

(assert (not b_lambda!9533))

(assert b_and!7913)

(assert (not b_next!5281))

(assert (not b!34986))

(check-sat)

(pop 1)

(push 1)

(assert b_and!7911)

(assert b_and!7913)

(assert (not b_next!5283))

(assert (not b_next!5281))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!18330 () Bool)

(assert (=> d!18330 (= (isEmpty!385 l!950) (is-Nil!383 l!950))))

(assert (=> b!34986 d!18330))

(declare-fun d!18332 () Bool)

(assert (=> d!18332 (= (head!543 l!950) (h!331 l!950))))

(assert (=> b!34988 d!18332))

(declare-fun d!18334 () Bool)

(declare-fun lt!6525 () Int)

(assert (=> d!18334 (>= lt!6525 0)))

(declare-fun e!17676 () Int)

(assert (=> d!18334 (= lt!6525 e!17676)))

(declare-fun c!7436 () Bool)

(assert (=> d!18334 (= c!7436 (is-Nil!383 l!950))))

(assert (=> d!18334 (= (size!365 l!950) lt!6525)))

(declare-fun b!34994 () Bool)

(assert (=> b!34994 (= e!17676 0)))

(declare-fun b!34995 () Bool)

(assert (=> b!34995 (= e!17676 (+ 1 (size!365 (t!4992 l!950))))))

(assert (= (and d!18334 c!7436) b!34994))

(assert (= (and d!18334 (not c!7436)) b!34995))

(declare-fun m!37529 () Bool)

(assert (=> b!34995 m!37529))

(assert (=> start!4502 d!18334))

(assert (=> b!34987 d!18332))

(push 1)

(assert b_and!7911)

(assert (not b_next!5283))

(assert (not b_lambda!9533))

(assert b_and!7913)

(assert (not b_next!5281))

(assert (not b!34995))

(check-sat)

(pop 1)

(push 1)

(assert b_and!7911)

(assert b_and!7913)

(assert (not b_next!5283))

(assert (not b_next!5281))

(check-sat)

(pop 1)

