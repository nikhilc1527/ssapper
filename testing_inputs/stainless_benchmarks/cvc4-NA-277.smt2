; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2142 () Bool)

(assert start!2142)

(declare-fun b_free!1391 () Bool)

(declare-fun b_next!3385 () Bool)

(assert (=> start!2142 (= b_free!1391 (not b_next!3385))))

(declare-fun tp!2231 () Bool)

(declare-fun b_and!4889 () Bool)

(assert (=> start!2142 (= tp!2231 b_and!4889)))

(declare-fun res!3731 () Bool)

(declare-fun e!6175 () Bool)

(assert (=> start!2142 (=> (not res!3731) (not e!6175))))

(declare-datatypes () ((A!930 (A!931 (val!16 Int)))))

(declare-datatypes () ((List!251 (Nil!249) (Cons!248 (head!466 A!930) (tail!478 List!251)))))

(declare-fun xs!433 () List!251)

(assert (=> start!2142 (= res!3731 (is-Nil!249 xs!433))))

(assert (=> start!2142 e!6175))

(declare-fun e!6176 () Bool)

(assert (=> start!2142 e!6176))

(declare-fun tp_is_empty!31 () Bool)

(assert (=> start!2142 tp_is_empty!31))

(assert (=> start!2142 tp!2231))

(declare-fun z!121 () A!930)

(declare-fun b!10607 () Bool)

(declare-fun f!759 () Int)

(declare-fun foldRight!68 (List!251 A!930 Int) A!930)

(declare-fun foldRight1!84 (List!251 Int) A!930)

(declare-fun append!102 (List!251 List!251) List!251)

(assert (=> b!10607 (= e!6175 (not (= (foldRight!68 xs!433 z!121 f!759) (foldRight1!84 (append!102 xs!433 (Cons!248 z!121 Nil!249)) f!759))))))

(declare-fun b!10608 () Bool)

(declare-fun tp!2232 () Bool)

(assert (=> b!10608 (= e!6176 (and tp_is_empty!31 tp!2232))))

(assert (= (and start!2142 res!3731) b!10607))

(assert (= (and start!2142 (is-Cons!248 xs!433)) b!10608))

(declare-fun m!13657 () Bool)

(assert (=> b!10607 m!13657))

(declare-fun m!13659 () Bool)

(assert (=> b!10607 m!13659))

(assert (=> b!10607 m!13659))

(declare-fun m!13661 () Bool)

(assert (=> b!10607 m!13661))

(push 1)

(assert b_and!4889)

(assert (not b!10608))

(assert (not b!10607))

(assert tp_is_empty!31)

(assert (not b_next!3385))

(check-sat)

(pop 1)

(push 1)

(assert b_and!4889)

(assert (not b_next!3385))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!8483 () Bool)

(declare-fun c!3288 () Bool)

(assert (=> d!8483 (= c!3288 (is-Nil!249 xs!433))))

(declare-fun e!6179 () A!930)

(assert (=> d!8483 (= (foldRight!68 xs!433 z!121 f!759) e!6179)))

(declare-fun b!10613 () Bool)

(assert (=> b!10613 (= e!6179 z!121)))

(declare-fun b!10614 () Bool)

(declare-fun dynLambda!351 (Int A!930 A!930) A!930)

(assert (=> b!10614 (= e!6179 (dynLambda!351 f!759 (head!466 xs!433) (foldRight!68 (tail!478 xs!433) z!121 f!759)))))

(assert (= (and d!8483 c!3288) b!10613))

(assert (= (and d!8483 (not c!3288)) b!10614))

(declare-fun b_lambda!5551 () Bool)

(assert (=> (not b_lambda!5551) (not b!10614)))

(declare-fun t!2931 () Bool)

(declare-fun tb!2591 () Bool)

(assert (=> (and start!2142 (= f!759 f!759) t!2931) tb!2591))

(declare-fun result!2635 () Bool)

(assert (=> tb!2591 (= result!2635 tp_is_empty!31)))

(assert (=> b!10614 t!2931))

(declare-fun b_and!4891 () Bool)

(assert (= b_and!4889 (and (=> t!2931 result!2635) b_and!4891)))

(declare-fun m!13663 () Bool)

(assert (=> b!10614 m!13663))

(assert (=> b!10614 m!13663))

(declare-fun m!13665 () Bool)

(assert (=> b!10614 m!13665))

(assert (=> b!10607 d!8483))

(declare-fun d!8485 () Bool)

(declare-fun c!3291 () Bool)

(assert (=> d!8485 (= c!3291 (and (is-Cons!248 (append!102 xs!433 (Cons!248 z!121 Nil!249))) (is-Nil!249 (tail!478 (append!102 xs!433 (Cons!248 z!121 Nil!249))))))))

(declare-fun e!6182 () A!930)

(assert (=> d!8485 (= (foldRight1!84 (append!102 xs!433 (Cons!248 z!121 Nil!249)) f!759) e!6182)))

(declare-fun b!10621 () Bool)

(assert (=> b!10621 (= e!6182 (head!466 (append!102 xs!433 (Cons!248 z!121 Nil!249))))))

(declare-fun b!10622 () Bool)

(assert (=> b!10622 (= e!6182 (dynLambda!351 f!759 (head!466 (append!102 xs!433 (Cons!248 z!121 Nil!249))) (foldRight1!84 (tail!478 (append!102 xs!433 (Cons!248 z!121 Nil!249))) f!759)))))

(assert (= (and d!8485 c!3291) b!10621))

(assert (= (and d!8485 (not c!3291)) b!10622))

(declare-fun b_lambda!5553 () Bool)

(assert (=> (not b_lambda!5553) (not b!10622)))

(declare-fun t!2933 () Bool)

(declare-fun tb!2593 () Bool)

(assert (=> (and start!2142 (= f!759 f!759) t!2933) tb!2593))

(declare-fun result!2639 () Bool)

(assert (=> tb!2593 (= result!2639 tp_is_empty!31)))

(assert (=> b!10622 t!2933))

(declare-fun b_and!4893 () Bool)

(assert (= b_and!4891 (and (=> t!2933 result!2639) b_and!4893)))

(declare-fun m!13667 () Bool)

(assert (=> b!10622 m!13667))

(assert (=> b!10622 m!13667))

(declare-fun m!13669 () Bool)

(assert (=> b!10622 m!13669))

(assert (=> b!10607 d!8485))

(declare-fun d!8487 () Bool)

(declare-fun c!3294 () Bool)

(assert (=> d!8487 (= c!3294 (is-Nil!249 xs!433))))

(declare-fun e!6185 () List!251)

(assert (=> d!8487 (= (append!102 xs!433 (Cons!248 z!121 Nil!249)) e!6185)))

(declare-fun b!10627 () Bool)

(assert (=> b!10627 (= e!6185 (Cons!248 z!121 Nil!249))))

(declare-fun b!10628 () Bool)

(assert (=> b!10628 (= e!6185 (Cons!248 (head!466 xs!433) (append!102 (tail!478 xs!433) (Cons!248 z!121 Nil!249))))))

(assert (= (and d!8487 c!3294) b!10627))

(assert (= (and d!8487 (not c!3294)) b!10628))

(declare-fun m!13671 () Bool)

(assert (=> b!10628 m!13671))

(assert (=> b!10607 d!8487))

(declare-fun b!10633 () Bool)

(declare-fun e!6188 () Bool)

(declare-fun tp!2235 () Bool)

(assert (=> b!10633 (= e!6188 (and tp_is_empty!31 tp!2235))))

(assert (=> b!10608 (= tp!2232 e!6188)))

(assert (= (and b!10608 (is-Cons!248 (tail!478 xs!433))) b!10633))

(declare-fun b_lambda!5555 () Bool)

(assert (= b_lambda!5551 (or (and start!2142 b_free!1391) b_lambda!5555)))

(declare-fun b_lambda!5557 () Bool)

(assert (= b_lambda!5553 (or (and start!2142 b_free!1391) b_lambda!5557)))

(push 1)

(assert (not b!10622))

(assert (not b_lambda!5555))

(assert (not b!10614))

(assert (not b_lambda!5557))

(assert (not b!10628))

(assert (not b!10633))

(assert b_and!4893)

(assert tp_is_empty!31)

(assert (not b_next!3385))

(check-sat)

(pop 1)

(push 1)

(assert b_and!4893)

(assert (not b_next!3385))

(check-sat)

(pop 1)

