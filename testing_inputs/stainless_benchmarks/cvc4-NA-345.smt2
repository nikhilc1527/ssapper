; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2628 () Bool)

(assert start!2628)

(declare-fun b_free!2023 () Bool)

(declare-fun b_next!4721 () Bool)

(assert (=> start!2628 (= b_free!2023 (not b_next!4721))))

(declare-fun tp!3246 () Bool)

(declare-fun b_and!7085 () Bool)

(assert (=> start!2628 (= tp!3246 b_and!7085)))

(declare-fun res!4771 () Bool)

(declare-fun e!7080 () Bool)

(assert (=> start!2628 (=> (not res!4771) (not e!7080))))

(declare-datatypes () ((Parenthesis!77 (CloseParenthesis!76) (OpenParenthesis!76))))

(declare-datatypes () ((List!304 (Nil!302) (Cons!301 (head!519 Parenthesis!77) (tail!531 List!304)))))

(declare-fun xs!341 () List!304)

(assert (=> start!2628 (= res!4771 (is-Nil!302 xs!341))))

(assert (=> start!2628 e!7080))

(assert (=> start!2628 true))

(assert (=> start!2628 tp!3246))

(declare-fun ys!59 () List!304)

(declare-fun f!617 () Int)

(declare-fun b!12911 () Bool)

(declare-datatypes () ((Balance!391 (Balance!392 (extraOpen!236 Int) (extraClose!236 Int)))))

(declare-datatypes () ((List!305 (Nil!303) (Cons!302 (head!520 Balance!391) (tail!532 List!305)))))

(declare-fun append!146 (List!305 List!305) List!305)

(declare-fun map!165 (List!304 Int) List!305)

(declare-fun append!147 (List!304 List!304) List!304)

(assert (=> b!12911 (= e!7080 (not (= (append!146 (map!165 xs!341 f!617) (map!165 ys!59 f!617)) (map!165 (append!147 xs!341 ys!59) f!617))))))

(assert (= (and start!2628 res!4771) b!12911))

(declare-fun m!16243 () Bool)

(assert (=> b!12911 m!16243))

(declare-fun m!16245 () Bool)

(assert (=> b!12911 m!16245))

(declare-fun m!16247 () Bool)

(assert (=> b!12911 m!16247))

(assert (=> b!12911 m!16245))

(declare-fun m!16249 () Bool)

(assert (=> b!12911 m!16249))

(declare-fun m!16251 () Bool)

(assert (=> b!12911 m!16251))

(assert (=> b!12911 m!16243))

(assert (=> b!12911 m!16249))

(push 1)

(assert (not b!12911))

(assert b_and!7085)

(assert (not b_next!4721))

(check-sat)

(pop 1)

(push 1)

(assert b_and!7085)

(assert (not b_next!4721))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!10143 () Bool)

(declare-fun c!3647 () Bool)

(assert (=> d!10143 (= c!3647 (is-Nil!302 xs!341))))

(declare-fun e!7083 () List!304)

(assert (=> d!10143 (= (append!147 xs!341 ys!59) e!7083)))

(declare-fun b!12916 () Bool)

(assert (=> b!12916 (= e!7083 ys!59)))

(declare-fun b!12917 () Bool)

(assert (=> b!12917 (= e!7083 (Cons!301 (head!519 xs!341) (append!147 (tail!531 xs!341) ys!59)))))

(assert (= (and d!10143 c!3647) b!12916))

(assert (= (and d!10143 (not c!3647)) b!12917))

(declare-fun m!16253 () Bool)

(assert (=> b!12917 m!16253))

(assert (=> b!12911 d!10143))

(declare-fun d!10145 () Bool)

(declare-fun c!3650 () Bool)

(assert (=> d!10145 (= c!3650 (is-Nil!302 ys!59))))

(declare-fun e!7086 () List!305)

(assert (=> d!10145 (= (map!165 ys!59 f!617) e!7086)))

(declare-fun b!12922 () Bool)

(assert (=> b!12922 (= e!7086 Nil!303)))

(declare-fun b!12923 () Bool)

(declare-fun dynLambda!549 (Int Parenthesis!77) Balance!391)

(assert (=> b!12923 (= e!7086 (Cons!302 (dynLambda!549 f!617 (head!519 ys!59)) (map!165 (tail!531 ys!59) f!617)))))

(assert (= (and d!10145 c!3650) b!12922))

(assert (= (and d!10145 (not c!3650)) b!12923))

(declare-fun b_lambda!7321 () Bool)

(assert (=> (not b_lambda!7321) (not b!12923)))

(declare-fun t!4033 () Bool)

(declare-fun tb!3693 () Bool)

(assert (=> (and start!2628 (= f!617 f!617) t!4033) tb!3693))

(declare-fun result!3757 () Bool)

(assert (=> tb!3693 (= result!3757 true)))

(assert (=> b!12923 t!4033))

(declare-fun b_and!7087 () Bool)

(assert (= b_and!7085 (and (=> t!4033 result!3757) b_and!7087)))

(declare-fun m!16255 () Bool)

(assert (=> b!12923 m!16255))

(declare-fun m!16257 () Bool)

(assert (=> b!12923 m!16257))

(assert (=> b!12911 d!10145))

(declare-fun d!10147 () Bool)

(declare-fun c!3651 () Bool)

(assert (=> d!10147 (= c!3651 (is-Nil!302 xs!341))))

(declare-fun e!7087 () List!305)

(assert (=> d!10147 (= (map!165 xs!341 f!617) e!7087)))

(declare-fun b!12924 () Bool)

(assert (=> b!12924 (= e!7087 Nil!303)))

(declare-fun b!12925 () Bool)

(assert (=> b!12925 (= e!7087 (Cons!302 (dynLambda!549 f!617 (head!519 xs!341)) (map!165 (tail!531 xs!341) f!617)))))

(assert (= (and d!10147 c!3651) b!12924))

(assert (= (and d!10147 (not c!3651)) b!12925))

(declare-fun b_lambda!7323 () Bool)

(assert (=> (not b_lambda!7323) (not b!12925)))

(declare-fun t!4035 () Bool)

(declare-fun tb!3695 () Bool)

(assert (=> (and start!2628 (= f!617 f!617) t!4035) tb!3695))

(declare-fun result!3759 () Bool)

(assert (=> tb!3695 (= result!3759 true)))

(assert (=> b!12925 t!4035))

(declare-fun b_and!7089 () Bool)

(assert (= b_and!7087 (and (=> t!4035 result!3759) b_and!7089)))

(declare-fun m!16259 () Bool)

(assert (=> b!12925 m!16259))

(declare-fun m!16261 () Bool)

(assert (=> b!12925 m!16261))

(assert (=> b!12911 d!10147))

(declare-fun d!10149 () Bool)

(declare-fun c!3654 () Bool)

(assert (=> d!10149 (= c!3654 (is-Nil!303 (map!165 xs!341 f!617)))))

(declare-fun e!7090 () List!305)

(assert (=> d!10149 (= (append!146 (map!165 xs!341 f!617) (map!165 ys!59 f!617)) e!7090)))

(declare-fun b!12930 () Bool)

(assert (=> b!12930 (= e!7090 (map!165 ys!59 f!617))))

(declare-fun b!12931 () Bool)

(assert (=> b!12931 (= e!7090 (Cons!302 (head!520 (map!165 xs!341 f!617)) (append!146 (tail!532 (map!165 xs!341 f!617)) (map!165 ys!59 f!617))))))

(assert (= (and d!10149 c!3654) b!12930))

(assert (= (and d!10149 (not c!3654)) b!12931))

(assert (=> b!12931 m!16245))

(declare-fun m!16263 () Bool)

(assert (=> b!12931 m!16263))

(assert (=> b!12911 d!10149))

(declare-fun d!10151 () Bool)

(declare-fun c!3655 () Bool)

(assert (=> d!10151 (= c!3655 (is-Nil!302 (append!147 xs!341 ys!59)))))

(declare-fun e!7091 () List!305)

(assert (=> d!10151 (= (map!165 (append!147 xs!341 ys!59) f!617) e!7091)))

(declare-fun b!12932 () Bool)

(assert (=> b!12932 (= e!7091 Nil!303)))

(declare-fun b!12933 () Bool)

(assert (=> b!12933 (= e!7091 (Cons!302 (dynLambda!549 f!617 (head!519 (append!147 xs!341 ys!59))) (map!165 (tail!531 (append!147 xs!341 ys!59)) f!617)))))

(assert (= (and d!10151 c!3655) b!12932))

(assert (= (and d!10151 (not c!3655)) b!12933))

(declare-fun b_lambda!7325 () Bool)

(assert (=> (not b_lambda!7325) (not b!12933)))

(declare-fun t!4037 () Bool)

(declare-fun tb!3697 () Bool)

(assert (=> (and start!2628 (= f!617 f!617) t!4037) tb!3697))

(declare-fun result!3761 () Bool)

(assert (=> tb!3697 (= result!3761 true)))

(assert (=> b!12933 t!4037))

(declare-fun b_and!7091 () Bool)

(assert (= b_and!7089 (and (=> t!4037 result!3761) b_and!7091)))

(declare-fun m!16265 () Bool)

(assert (=> b!12933 m!16265))

(declare-fun m!16267 () Bool)

(assert (=> b!12933 m!16267))

(assert (=> b!12911 d!10151))

(declare-fun b_lambda!7327 () Bool)

(assert (= b_lambda!7323 (or (and start!2628 b_free!2023) b_lambda!7327)))

(declare-fun b_lambda!7329 () Bool)

(assert (= b_lambda!7325 (or (and start!2628 b_free!2023) b_lambda!7329)))

(declare-fun b_lambda!7331 () Bool)

(assert (= b_lambda!7321 (or (and start!2628 b_free!2023) b_lambda!7331)))

(push 1)

(assert (not b_lambda!7329))

(assert (not b!12923))

(assert (not b_next!4721))

(assert (not b!12917))

(assert b_and!7091)

(assert (not b!12931))

(assert (not b!12933))

(assert (not b_lambda!7331))

(assert (not b_lambda!7327))

(assert (not b!12925))

(check-sat)

(pop 1)

(push 1)

(assert b_and!7091)

(assert (not b_next!4721))

(check-sat)

(pop 1)

