; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2636 () Bool)

(assert start!2636)

(declare-fun b_free!2025 () Bool)

(declare-fun b_next!4723 () Bool)

(assert (=> start!2636 (= b_free!2025 (not b_next!4723))))

(declare-fun tp!3249 () Bool)

(declare-fun b_and!7093 () Bool)

(assert (=> start!2636 (= tp!3249 b_and!7093)))

(declare-fun res!4776 () Bool)

(declare-fun e!7094 () Bool)

(assert (=> start!2636 (=> (not res!4776) (not e!7094))))

(declare-datatypes () ((Parenthesis!78 (CloseParenthesis!77) (OpenParenthesis!77))))

(declare-datatypes () ((List!306 (Nil!304) (Cons!303 (head!521 Parenthesis!78) (tail!533 List!306)))))

(declare-fun xs!341 () List!306)

(assert (=> start!2636 (= res!4776 (not (is-Nil!304 xs!341)))))

(assert (=> start!2636 e!7094))

(assert (=> start!2636 true))

(assert (=> start!2636 tp!3249))

(declare-fun b!12938 () Bool)

(declare-fun res!4777 () Bool)

(assert (=> b!12938 (=> (not res!4777) (not e!7094))))

(declare-fun ys!59 () List!306)

(declare-fun inductVal!27 () Bool)

(declare-fun f!617 () Int)

(declare-fun map_append!0 (List!306 List!306 Int) Bool)

(assert (=> b!12938 (= res!4777 (= inductVal!27 (map_append!0 (tail!533 xs!341) ys!59 f!617)))))

(declare-fun b!12939 () Bool)

(declare-datatypes () ((Balance!393 (Balance!394 (extraOpen!237 Int) (extraClose!237 Int)))))

(declare-datatypes () ((List!307 (Nil!305) (Cons!304 (head!522 Balance!393) (tail!534 List!307)))))

(declare-fun append!148 (List!307 List!307) List!307)

(declare-fun map!166 (List!306 Int) List!307)

(declare-fun append!149 (List!306 List!306) List!306)

(assert (=> b!12939 (= e!7094 (not (= (append!148 (map!166 xs!341 f!617) (map!166 ys!59 f!617)) (map!166 (append!149 xs!341 ys!59) f!617))))))

(assert (= (and start!2636 res!4776) b!12938))

(assert (= (and b!12938 res!4777) b!12939))

(declare-fun m!16269 () Bool)

(assert (=> b!12938 m!16269))

(declare-fun m!16271 () Bool)

(assert (=> b!12939 m!16271))

(declare-fun m!16273 () Bool)

(assert (=> b!12939 m!16273))

(declare-fun m!16275 () Bool)

(assert (=> b!12939 m!16275))

(assert (=> b!12939 m!16273))

(declare-fun m!16277 () Bool)

(assert (=> b!12939 m!16277))

(declare-fun m!16279 () Bool)

(assert (=> b!12939 m!16279))

(assert (=> b!12939 m!16271))

(assert (=> b!12939 m!16277))

(push 1)

(assert (not b!12939))

(assert (not b!12938))

(assert b_and!7093)

(assert (not b_next!4723))

(check-sat)

(pop 1)

(push 1)

(assert b_and!7093)

(assert (not b_next!4723))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!10153 () Bool)

(declare-fun c!3658 () Bool)

(assert (=> d!10153 (= c!3658 (is-Nil!304 xs!341))))

(declare-fun e!7097 () List!306)

(assert (=> d!10153 (= (append!149 xs!341 ys!59) e!7097)))

(declare-fun b!12944 () Bool)

(assert (=> b!12944 (= e!7097 ys!59)))

(declare-fun b!12945 () Bool)

(assert (=> b!12945 (= e!7097 (Cons!303 (head!521 xs!341) (append!149 (tail!533 xs!341) ys!59)))))

(assert (= (and d!10153 c!3658) b!12944))

(assert (= (and d!10153 (not c!3658)) b!12945))

(declare-fun m!16281 () Bool)

(assert (=> b!12945 m!16281))

(assert (=> b!12939 d!10153))

(declare-fun d!10155 () Bool)

(declare-fun c!3661 () Bool)

(assert (=> d!10155 (= c!3661 (is-Nil!304 ys!59))))

(declare-fun e!7100 () List!307)

(assert (=> d!10155 (= (map!166 ys!59 f!617) e!7100)))

(declare-fun b!12950 () Bool)

(assert (=> b!12950 (= e!7100 Nil!305)))

(declare-fun b!12951 () Bool)

(declare-fun dynLambda!550 (Int Parenthesis!78) Balance!393)

(assert (=> b!12951 (= e!7100 (Cons!304 (dynLambda!550 f!617 (head!521 ys!59)) (map!166 (tail!533 ys!59) f!617)))))

(assert (= (and d!10155 c!3661) b!12950))

(assert (= (and d!10155 (not c!3661)) b!12951))

(declare-fun b_lambda!7333 () Bool)

(assert (=> (not b_lambda!7333) (not b!12951)))

(declare-fun t!4039 () Bool)

(declare-fun tb!3699 () Bool)

(assert (=> (and start!2636 (= f!617 f!617) t!4039) tb!3699))

(declare-fun result!3763 () Bool)

(assert (=> tb!3699 (= result!3763 true)))

(assert (=> b!12951 t!4039))

(declare-fun b_and!7095 () Bool)

(assert (= b_and!7093 (and (=> t!4039 result!3763) b_and!7095)))

(declare-fun m!16283 () Bool)

(assert (=> b!12951 m!16283))

(declare-fun m!16285 () Bool)

(assert (=> b!12951 m!16285))

(assert (=> b!12939 d!10155))

(declare-fun d!10157 () Bool)

(declare-fun c!3662 () Bool)

(assert (=> d!10157 (= c!3662 (is-Nil!304 xs!341))))

(declare-fun e!7101 () List!307)

(assert (=> d!10157 (= (map!166 xs!341 f!617) e!7101)))

(declare-fun b!12952 () Bool)

(assert (=> b!12952 (= e!7101 Nil!305)))

(declare-fun b!12953 () Bool)

(assert (=> b!12953 (= e!7101 (Cons!304 (dynLambda!550 f!617 (head!521 xs!341)) (map!166 (tail!533 xs!341) f!617)))))

(assert (= (and d!10157 c!3662) b!12952))

(assert (= (and d!10157 (not c!3662)) b!12953))

(declare-fun b_lambda!7335 () Bool)

(assert (=> (not b_lambda!7335) (not b!12953)))

(declare-fun t!4041 () Bool)

(declare-fun tb!3701 () Bool)

(assert (=> (and start!2636 (= f!617 f!617) t!4041) tb!3701))

(declare-fun result!3765 () Bool)

(assert (=> tb!3701 (= result!3765 true)))

(assert (=> b!12953 t!4041))

(declare-fun b_and!7097 () Bool)

(assert (= b_and!7095 (and (=> t!4041 result!3765) b_and!7097)))

(declare-fun m!16287 () Bool)

(assert (=> b!12953 m!16287))

(declare-fun m!16289 () Bool)

(assert (=> b!12953 m!16289))

(assert (=> b!12939 d!10157))

(declare-fun d!10159 () Bool)

(declare-fun c!3665 () Bool)

(assert (=> d!10159 (= c!3665 (is-Nil!305 (map!166 xs!341 f!617)))))

(declare-fun e!7104 () List!307)

(assert (=> d!10159 (= (append!148 (map!166 xs!341 f!617) (map!166 ys!59 f!617)) e!7104)))

(declare-fun b!12958 () Bool)

(assert (=> b!12958 (= e!7104 (map!166 ys!59 f!617))))

(declare-fun b!12959 () Bool)

(assert (=> b!12959 (= e!7104 (Cons!304 (head!522 (map!166 xs!341 f!617)) (append!148 (tail!534 (map!166 xs!341 f!617)) (map!166 ys!59 f!617))))))

(assert (= (and d!10159 c!3665) b!12958))

(assert (= (and d!10159 (not c!3665)) b!12959))

(assert (=> b!12959 m!16273))

(declare-fun m!16291 () Bool)

(assert (=> b!12959 m!16291))

(assert (=> b!12939 d!10159))

(declare-fun d!10161 () Bool)

(declare-fun c!3666 () Bool)

(assert (=> d!10161 (= c!3666 (is-Nil!304 (append!149 xs!341 ys!59)))))

(declare-fun e!7105 () List!307)

(assert (=> d!10161 (= (map!166 (append!149 xs!341 ys!59) f!617) e!7105)))

(declare-fun b!12960 () Bool)

(assert (=> b!12960 (= e!7105 Nil!305)))

(declare-fun b!12961 () Bool)

(assert (=> b!12961 (= e!7105 (Cons!304 (dynLambda!550 f!617 (head!521 (append!149 xs!341 ys!59))) (map!166 (tail!533 (append!149 xs!341 ys!59)) f!617)))))

(assert (= (and d!10161 c!3666) b!12960))

(assert (= (and d!10161 (not c!3666)) b!12961))

(declare-fun b_lambda!7337 () Bool)

(assert (=> (not b_lambda!7337) (not b!12961)))

(declare-fun t!4043 () Bool)

(declare-fun tb!3703 () Bool)

(assert (=> (and start!2636 (= f!617 f!617) t!4043) tb!3703))

(declare-fun result!3767 () Bool)

(assert (=> tb!3703 (= result!3767 true)))

(assert (=> b!12961 t!4043))

(declare-fun b_and!7099 () Bool)

(assert (= b_and!7097 (and (=> t!4043 result!3767) b_and!7099)))

(declare-fun m!16293 () Bool)

(assert (=> b!12961 m!16293))

(declare-fun m!16295 () Bool)

(assert (=> b!12961 m!16295))

(assert (=> b!12939 d!10161))

(declare-fun b!12967 () Bool)

(declare-fun e!7108 () Bool)

(assert (=> b!12967 (= e!7108 (= (append!148 (map!166 (tail!533 xs!341) f!617) (map!166 ys!59 f!617)) (map!166 (append!149 (tail!533 xs!341) ys!59) f!617)))))

(declare-fun lt!1881 () Bool)

(assert (=> b!12967 (= lt!1881 (map_append!0 (tail!533 (tail!533 xs!341)) ys!59 f!617))))

(declare-fun d!10163 () Bool)

(assert (=> d!10163 e!7108))

(declare-fun c!3669 () Bool)

(assert (=> d!10163 (= c!3669 (is-Nil!304 (tail!533 xs!341)))))

(assert (=> d!10163 (= (map_append!0 (tail!533 xs!341) ys!59 f!617) true)))

(declare-fun b!12966 () Bool)

(assert (=> b!12966 (= e!7108 (= (append!148 (map!166 (tail!533 xs!341) f!617) (map!166 ys!59 f!617)) (map!166 (append!149 (tail!533 xs!341) ys!59) f!617)))))

(assert (= (and d!10163 c!3669) b!12966))

(assert (= (and d!10163 (not c!3669)) b!12967))

(assert (=> b!12967 m!16289))

(assert (=> b!12967 m!16273))

(declare-fun m!16297 () Bool)

(assert (=> b!12967 m!16297))

(assert (=> b!12967 m!16281))

(declare-fun m!16299 () Bool)

(assert (=> b!12967 m!16299))

(assert (=> b!12967 m!16273))

(assert (=> b!12967 m!16281))

(assert (=> b!12967 m!16289))

(declare-fun m!16301 () Bool)

(assert (=> b!12967 m!16301))

(assert (=> b!12966 m!16289))

(assert (=> b!12966 m!16273))

(assert (=> b!12966 m!16297))

(assert (=> b!12966 m!16281))

(assert (=> b!12966 m!16299))

(assert (=> b!12966 m!16273))

(assert (=> b!12966 m!16281))

(assert (=> b!12966 m!16289))

(assert (=> b!12938 d!10163))

(declare-fun b_lambda!7339 () Bool)

(assert (= b_lambda!7335 (or (and start!2636 b_free!2025) b_lambda!7339)))

(declare-fun b_lambda!7341 () Bool)

(assert (= b_lambda!7337 (or (and start!2636 b_free!2025) b_lambda!7341)))

(declare-fun b_lambda!7343 () Bool)

(assert (= b_lambda!7333 (or (and start!2636 b_free!2025) b_lambda!7343)))

(push 1)

(assert (not b!12966))

(assert (not b_lambda!7339))

(assert (not b!12967))

(assert (not b!12945))

(assert (not b_lambda!7343))

(assert (not b!12959))

(assert (not b_next!4723))

(assert (not b!12953))

(assert b_and!7099)

(assert (not b!12951))

(assert (not b!12961))

(assert (not b_lambda!7341))

(check-sat)

(pop 1)

(push 1)

(assert b_and!7099)

(assert (not b_next!4723))

(check-sat)

(pop 1)

