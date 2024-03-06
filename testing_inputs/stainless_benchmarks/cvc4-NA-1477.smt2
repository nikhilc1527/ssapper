; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10106 () Bool)

(assert start!10106)

(declare-fun res!35611 () Bool)

(declare-fun e!39408 () Bool)

(assert (=> start!10106 (=> (not res!35611) (not e!39408))))

(declare-datatypes () ((A!3276 (A!3277 (val!186 Int)))))

(declare-datatypes () ((List!629 (Cons!591 (h!844 A!3276) (t!47532 List!629)) (Nil!593))))

(declare-fun list!948 () List!629)

(assert (=> start!10106 (= res!35611 (not (is-Nil!593 list!948)))))

(assert (=> start!10106 e!39408))

(declare-fun e!39409 () Bool)

(assert (=> start!10106 e!39409))

(assert (=> start!10106 true))

(declare-fun b!72921 () Bool)

(declare-fun res!35612 () Bool)

(assert (=> b!72921 (=> (not res!35612) (not e!39408))))

(declare-fun res!35599 () Int)

(declare-fun sizeOf!3 (List!629) Int)

(assert (=> b!72921 (= res!35612 (= res!35599 (+ 1 (sizeOf!3 (t!47532 list!948)))))))

(declare-fun b!72922 () Bool)

(assert (=> b!72922 (= e!39408 (or (< res!35599 0) (not (= res!35599 (ite (and (is-Cons!591 (t!47532 list!948)) (is-Nil!593 (t!47532 (t!47532 list!948)))) 2 (ite (is-Nil!593 (t!47532 list!948)) 1 (ite false 0 res!35599)))))))))

(declare-fun b!72923 () Bool)

(declare-fun tp_is_empty!367 () Bool)

(declare-fun tp!16888 () Bool)

(assert (=> b!72923 (= e!39409 (and tp_is_empty!367 tp!16888))))

(assert (= (and start!10106 res!35611) b!72921))

(assert (= (and b!72921 res!35612) b!72922))

(assert (= (and start!10106 (is-Cons!591 list!948)) b!72923))

(declare-fun m!72670 () Bool)

(assert (=> b!72921 m!72670))

(push 1)

(assert (not b!72921))

(assert (not b!72923))

(assert tp_is_empty!367)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!54709 () Bool)

(declare-fun lt!15489 () Int)

(assert (=> d!54709 (and (>= lt!15489 0) (= lt!15489 (ite (and (is-Cons!591 (t!47532 list!948)) (is-Cons!591 (t!47532 (t!47532 list!948))) (is-Nil!593 (t!47532 (t!47532 (t!47532 list!948))))) 2 (ite (and (is-Cons!591 (t!47532 list!948)) (is-Nil!593 (t!47532 (t!47532 list!948)))) 1 (ite (is-Nil!593 (t!47532 list!948)) 0 lt!15489)))))))

(declare-fun e!39412 () Int)

(assert (=> d!54709 (= lt!15489 e!39412)))

(declare-fun c!17587 () Bool)

(assert (=> d!54709 (= c!17587 (is-Nil!593 (t!47532 list!948)))))

(assert (=> d!54709 (= (sizeOf!3 (t!47532 list!948)) lt!15489)))

(declare-fun b!72928 () Bool)

(assert (=> b!72928 (= e!39412 0)))

(declare-fun b!72929 () Bool)

(assert (=> b!72929 (= e!39412 (+ 1 (sizeOf!3 (t!47532 (t!47532 list!948)))))))

(assert (= (and d!54709 c!17587) b!72928))

(assert (= (and d!54709 (not c!17587)) b!72929))

(declare-fun m!72672 () Bool)

(assert (=> b!72929 m!72672))

(assert (=> b!72921 d!54709))

(declare-fun b!72934 () Bool)

(declare-fun e!39415 () Bool)

(declare-fun tp!16891 () Bool)

(assert (=> b!72934 (= e!39415 (and tp_is_empty!367 tp!16891))))

(assert (=> b!72923 (= tp!16888 e!39415)))

(assert (= (and b!72923 (is-Cons!591 (t!47532 list!948))) b!72934))

(push 1)

(assert (not b!72929))

(assert (not b!72934))

(assert tp_is_empty!367)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

