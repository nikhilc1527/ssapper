; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1330 () Bool)

(assert start!1330)

(declare-fun b!7232 () Bool)

(declare-fun b_free!415 () Bool)

(declare-fun b_next!897 () Bool)

(assert (=> b!7232 (= b_free!415 (not b_next!897))))

(declare-fun tp!749 () Bool)

(declare-fun b_and!1933 () Bool)

(assert (=> b!7232 (= tp!749 b_and!1933)))

(declare-fun b_free!417 () Bool)

(declare-fun b_next!899 () Bool)

(assert (=> b!7232 (= b_free!417 (not b_next!899))))

(declare-fun tp!751 () Bool)

(declare-fun b_and!1935 () Bool)

(assert (=> b!7232 (= tp!751 b_and!1935)))

(declare-fun b_free!419 () Bool)

(declare-fun b_next!901 () Bool)

(assert (=> start!1330 (= b_free!419 (not b_next!901))))

(declare-fun tp!750 () Bool)

(declare-fun b_and!1937 () Bool)

(assert (=> start!1330 (= tp!750 b_and!1937)))

(declare-fun b!7231 () Bool)

(assert (=> b!7231 true))

(declare-fun lambda!1264 () Int)

(declare-datatypes () ((Balance!87 (Balance!88 (extraOpen!84 Int) (extraClose!84 Int)))))

(declare-datatypes () ((EqProof!32 (EqProof!33 (x!3928 Int) (y!458 Int)))))

(declare-fun thiss!1125 () EqProof!32)

(declare-fun b_next!903 () Bool)

(assert (=> b!7232 (= b_next!897 (or (and b!7231 (= lambda!1264 (x!3928 thiss!1125))) b_next!903))))

(declare-fun b_next!905 () Bool)

(assert (=> b!7232 (= b_next!899 (or (and b!7231 (= lambda!1264 (y!458 thiss!1125))) b_next!905))))

(declare-fun b!7230 () Bool)

(declare-fun m!10071 () Bool)

(assert (=> b!7230 m!10071))

(declare-fun lambda!1265 () Int)

(declare-fun proof!284 () Int)

(declare-fun dynLambda!139 (Int) Bool)

(assert (=> (and start!1330 b!7230 (= (dynLambda!139 lambda!1265) (dynLambda!139 proof!284))) (= lambda!1265 proof!284)))

(declare-fun b_next!907 () Bool)

(assert (=> start!1330 (= b_next!901 (or (and b!7230 (= lambda!1265 proof!284)) b_next!907))))

(declare-fun res!2092 () Bool)

(declare-fun e!4186 () Bool)

(assert (=> b!7230 (=> (not res!2092) (not e!4186))))

(assert (=> b!7230 (= res!2092 (= proof!284 lambda!1265))))

(declare-fun res!2090 () Bool)

(assert (=> b!7231 (=> (not res!2090) (not e!4186))))

(assert (=> b!7231 (= res!2090 (= thiss!1125 (EqProof!33 lambda!1264 lambda!1264)))))

(declare-fun res!2091 () Bool)

(assert (=> start!1330 (=> (not res!2091) (not e!4186))))

(declare-datatypes () ((Parenthesis!38 (CloseParenthesis!37) (OpenParenthesis!37))))

(declare-datatypes () ((List!159 (Nil!157) (Cons!156 (head!374 Parenthesis!38) (tail!386 List!159)))))

(declare-fun xs!372 () List!159)

(declare-fun isEmpty!139 (List!159) Bool)

(assert (=> start!1330 (= res!2091 (not (isEmpty!139 xs!372)))))

(assert (=> start!1330 e!4186))

(assert (=> start!1330 true))

(declare-fun e!4187 () Bool)

(declare-fun inv!253 (EqProof!32) Bool)

(assert (=> start!1330 (and (inv!253 thiss!1125) e!4187)))

(assert (=> start!1330 tp!750))

(assert (=> b!7232 (= e!4187 (and tp!749 tp!751))))

(declare-fun b!7233 () Bool)

(declare-fun res!2093 () Bool)

(assert (=> b!7233 (=> (not res!2093) (not e!4186))))

(assert (=> b!7233 (= res!2093 (and (is-Cons!156 xs!372) (is-Nil!157 (tail!386 xs!372))))))

(declare-fun b!7234 () Bool)

(assert (=> b!7234 (= e!4186 (not (dynLambda!139 proof!284)))))

(declare-fun b!7235 () Bool)

(declare-fun res!2089 () Bool)

(assert (=> b!7235 (=> (not res!2089) (not e!4186))))

(declare-datatypes () ((ProofOps!62 (ProofOps!63 (prop!141 Bool)))))

(declare-fun thiss!1106 () ProofOps!62)

(declare-fun lambda!1262 () Int)

(declare-fun lambda!1263 () Int)

(declare-datatypes () ((List!160 (Nil!158) (Cons!157 (head!375 Balance!87) (tail!387 List!160)))))

(declare-fun foldRight1!27 (List!160 Int) Balance!87)

(declare-fun append!60 (List!160 List!160) List!160)

(declare-fun map!148 (List!159 Int) List!160)

(assert (=> b!7235 (= res!2089 (= thiss!1106 (ProofOps!63 (= (foldRight1!27 (append!60 (map!148 xs!372 lambda!1262) (Cons!157 (Balance!88 0 0) Nil!158)) lambda!1263) (foldRight1!27 (map!148 xs!372 lambda!1262) lambda!1263)))))))

(assert (= (and start!1330 res!2091) b!7235))

(assert (= (and b!7235 res!2089) b!7233))

(assert (= (and b!7233 res!2093) b!7231))

(assert (= (and b!7231 res!2090) b!7230))

(assert (= (and b!7230 res!2092) b!7234))

(assert (= start!1330 b!7232))

(declare-fun b_lambda!3455 () Bool)

(assert (=> (not b_lambda!3455) (not b!7234)))

(declare-fun t!1401 () Bool)

(declare-fun tb!1061 () Bool)

(assert (=> (and start!1330 (= proof!284 proof!284) t!1401) tb!1061))

(declare-fun result!1101 () Bool)

(assert (=> tb!1061 (= result!1101 true)))

(assert (=> b!7234 t!1401))

(declare-fun b_and!1939 () Bool)

(assert (= b_and!1937 (and (=> t!1401 result!1101) b_and!1939)))

(declare-fun m!10073 () Bool)

(assert (=> start!1330 m!10073))

(declare-fun m!10075 () Bool)

(assert (=> start!1330 m!10075))

(declare-fun m!10077 () Bool)

(assert (=> b!7234 m!10077))

(declare-fun m!10079 () Bool)

(assert (=> b!7235 m!10079))

(assert (=> b!7235 m!10079))

(declare-fun m!10081 () Bool)

(assert (=> b!7235 m!10081))

(assert (=> b!7235 m!10081))

(declare-fun m!10083 () Bool)

(assert (=> b!7235 m!10083))

(assert (=> b!7235 m!10079))

(assert (=> b!7235 m!10079))

(declare-fun m!10085 () Bool)

(assert (=> b!7235 m!10085))

(push 1)

(assert (not b_next!905))

(assert b_and!1935)

(assert (not start!1330))

(assert (not b_lambda!3455))

(assert (not b!7230))

(assert b_and!1933)

(assert b_and!1939)

(assert (not b_next!907))

(assert (not b_next!903))

(assert (not b!7235))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!905))

(assert b_and!1935)

(assert b_and!1933)

(assert b_and!1939)

(assert (not b_next!907))

(assert (not b_next!903))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!3457 () Bool)

(assert (= b_lambda!3455 (or (and b!7230 (= lambda!1265 proof!284)) (and start!1330 b_free!419) b_lambda!3457)))

(declare-fun bs!1625 () Bool)

(declare-fun d!5681 () Bool)

(assert (= bs!1625 (and d!5681 b!7230)))

(declare-fun trivial!1 () Bool)

(assert (=> bs!1625 (= (dynLambda!139 lambda!1265) trivial!1)))

(assert (=> (and b!7230 (= lambda!1265 proof!284) b!7234) d!5681))

(push 1)

(assert (not b_next!905))

(assert b_and!1935)

(assert (not start!1330))

(assert (not b!7230))

(assert b_and!1933)

(assert b_and!1939)

(assert (not b_next!907))

(assert (not b_next!903))

(assert (not b!7235))

(assert (not b_lambda!3457))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!905))

(assert b_and!1935)

(assert b_and!1933)

(assert b_and!1939)

(assert (not b_next!907))

(assert (not b_next!903))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!5683 () Bool)

(declare-fun c!2587 () Bool)

(assert (=> d!5683 (= c!2587 (is-Nil!157 xs!372))))

(declare-fun e!4190 () List!160)

(assert (=> d!5683 (= (map!148 xs!372 lambda!1262) e!4190)))

(declare-fun b!7242 () Bool)

(assert (=> b!7242 (= e!4190 Nil!158)))

(declare-fun b!7243 () Bool)

(declare-fun dynLambda!140 (Int Parenthesis!38) Balance!87)

(assert (=> b!7243 (= e!4190 (Cons!157 (dynLambda!140 lambda!1262 (head!374 xs!372)) (map!148 (tail!386 xs!372) lambda!1262)))))

(assert (= (and d!5683 c!2587) b!7242))

(assert (= (and d!5683 (not c!2587)) b!7243))

(declare-fun b_lambda!3459 () Bool)

(assert (=> (not b_lambda!3459) (not b!7243)))

(declare-fun m!10087 () Bool)

(assert (=> b!7243 m!10087))

(declare-fun m!10089 () Bool)

(assert (=> b!7243 m!10089))

(assert (=> b!7235 d!5683))

(declare-fun d!5685 () Bool)

(declare-fun c!2590 () Bool)

(assert (=> d!5685 (= c!2590 (is-Nil!158 (map!148 xs!372 lambda!1262)))))

(declare-fun e!4193 () List!160)

(assert (=> d!5685 (= (append!60 (map!148 xs!372 lambda!1262) (Cons!157 (Balance!88 0 0) Nil!158)) e!4193)))

(declare-fun b!7248 () Bool)

(assert (=> b!7248 (= e!4193 (Cons!157 (Balance!88 0 0) Nil!158))))

(declare-fun b!7249 () Bool)

(assert (=> b!7249 (= e!4193 (Cons!157 (head!375 (map!148 xs!372 lambda!1262)) (append!60 (tail!387 (map!148 xs!372 lambda!1262)) (Cons!157 (Balance!88 0 0) Nil!158))))))

(assert (= (and d!5685 c!2590) b!7248))

(assert (= (and d!5685 (not c!2590)) b!7249))

(declare-fun m!10091 () Bool)

(assert (=> b!7249 m!10091))

(assert (=> b!7235 d!5685))

(declare-fun d!5687 () Bool)

(declare-fun c!2593 () Bool)

(assert (=> d!5687 (= c!2593 (and (is-Cons!157 (append!60 (map!148 xs!372 lambda!1262) (Cons!157 (Balance!88 0 0) Nil!158))) (is-Nil!158 (tail!387 (append!60 (map!148 xs!372 lambda!1262) (Cons!157 (Balance!88 0 0) Nil!158))))))))

(declare-fun e!4196 () Balance!87)

(assert (=> d!5687 (= (foldRight1!27 (append!60 (map!148 xs!372 lambda!1262) (Cons!157 (Balance!88 0 0) Nil!158)) lambda!1263) e!4196)))

(declare-fun b!7254 () Bool)

(assert (=> b!7254 (= e!4196 (head!375 (append!60 (map!148 xs!372 lambda!1262) (Cons!157 (Balance!88 0 0) Nil!158))))))

(declare-fun b!7255 () Bool)

(declare-fun dynLambda!141 (Int Balance!87 Balance!87) Balance!87)

(assert (=> b!7255 (= e!4196 (dynLambda!141 lambda!1263 (head!375 (append!60 (map!148 xs!372 lambda!1262) (Cons!157 (Balance!88 0 0) Nil!158))) (foldRight1!27 (tail!387 (append!60 (map!148 xs!372 lambda!1262) (Cons!157 (Balance!88 0 0) Nil!158))) lambda!1263)))))

(assert (= (and d!5687 c!2593) b!7254))

(assert (= (and d!5687 (not c!2593)) b!7255))

(declare-fun b_lambda!3461 () Bool)

(assert (=> (not b_lambda!3461) (not b!7255)))

(declare-fun m!10093 () Bool)

(assert (=> b!7255 m!10093))

(assert (=> b!7255 m!10093))

(declare-fun m!10095 () Bool)

(assert (=> b!7255 m!10095))

(assert (=> b!7235 d!5687))

(declare-fun d!5689 () Bool)

(declare-fun c!2594 () Bool)

(assert (=> d!5689 (= c!2594 (and (is-Cons!157 (map!148 xs!372 lambda!1262)) (is-Nil!158 (tail!387 (map!148 xs!372 lambda!1262)))))))

(declare-fun e!4197 () Balance!87)

(assert (=> d!5689 (= (foldRight1!27 (map!148 xs!372 lambda!1262) lambda!1263) e!4197)))

(declare-fun b!7256 () Bool)

(assert (=> b!7256 (= e!4197 (head!375 (map!148 xs!372 lambda!1262)))))

(declare-fun b!7257 () Bool)

(assert (=> b!7257 (= e!4197 (dynLambda!141 lambda!1263 (head!375 (map!148 xs!372 lambda!1262)) (foldRight1!27 (tail!387 (map!148 xs!372 lambda!1262)) lambda!1263)))))

(assert (= (and d!5689 c!2594) b!7256))

(assert (= (and d!5689 (not c!2594)) b!7257))

(declare-fun b_lambda!3463 () Bool)

(assert (=> (not b_lambda!3463) (not b!7257)))

(declare-fun m!10097 () Bool)

(assert (=> b!7257 m!10097))

(assert (=> b!7257 m!10097))

(declare-fun m!10099 () Bool)

(assert (=> b!7257 m!10099))

(assert (=> b!7235 d!5689))

(declare-fun d!5691 () Bool)

(assert (=> d!5691 (= trivial!1 true)))

(assert (=> b!7230 d!5691))

(declare-fun d!5693 () Bool)

(assert (=> d!5693 (= (isEmpty!139 xs!372) (is-Nil!157 xs!372))))

(assert (=> start!1330 d!5693))

(declare-fun d!5695 () Bool)

(declare-fun dynLambda!142 (Int) Balance!87)

(assert (=> d!5695 (= (inv!253 thiss!1125) (= (dynLambda!142 (x!3928 thiss!1125)) (dynLambda!142 (y!458 thiss!1125))))))

(declare-fun b_lambda!3465 () Bool)

(assert (=> (not b_lambda!3465) (not d!5695)))

(declare-fun t!1403 () Bool)

(declare-fun tb!1063 () Bool)

(assert (=> (and b!7232 (= (x!3928 thiss!1125) (x!3928 thiss!1125)) t!1403) tb!1063))

(declare-fun result!1103 () Bool)

(assert (=> tb!1063 (= result!1103 true)))

(assert (=> d!5695 t!1403))

(declare-fun b_and!1941 () Bool)

(assert (= b_and!1933 (and (=> t!1403 result!1103) b_and!1941)))

(declare-fun t!1405 () Bool)

(declare-fun tb!1065 () Bool)

(assert (=> (and b!7232 (= (y!458 thiss!1125) (x!3928 thiss!1125)) t!1405) tb!1065))

(declare-fun result!1105 () Bool)

(assert (=> tb!1065 (= result!1105 true)))

(assert (=> d!5695 t!1405))

(declare-fun b_and!1943 () Bool)

(assert (= b_and!1935 (and (=> t!1405 result!1105) b_and!1943)))

(declare-fun b_lambda!3467 () Bool)

(assert (=> (not b_lambda!3467) (not d!5695)))

(declare-fun t!1407 () Bool)

(declare-fun tb!1067 () Bool)

(assert (=> (and b!7232 (= (x!3928 thiss!1125) (y!458 thiss!1125)) t!1407) tb!1067))

(declare-fun result!1107 () Bool)

(assert (=> tb!1067 (= result!1107 true)))

(assert (=> d!5695 t!1407))

(declare-fun b_and!1945 () Bool)

(assert (= b_and!1941 (and (=> t!1407 result!1107) b_and!1945)))

(declare-fun t!1409 () Bool)

(declare-fun tb!1069 () Bool)

(assert (=> (and b!7232 (= (y!458 thiss!1125) (y!458 thiss!1125)) t!1409) tb!1069))

(declare-fun result!1109 () Bool)

(assert (=> tb!1069 (= result!1109 true)))

(assert (=> d!5695 t!1409))

(declare-fun b_and!1947 () Bool)

(assert (= b_and!1943 (and (=> t!1409 result!1109) b_and!1947)))

(declare-fun m!10101 () Bool)

(assert (=> d!5695 m!10101))

(declare-fun m!10103 () Bool)

(assert (=> d!5695 m!10103))

(assert (=> start!1330 d!5695))

(declare-fun b_lambda!3469 () Bool)

(assert (= b_lambda!3459 (or b!7235 b_lambda!3469)))

(declare-fun bs!1626 () Bool)

(declare-fun d!5697 () Bool)

(assert (= bs!1626 (and d!5697 b!7235)))

(declare-fun fromParenthesis!0 (Parenthesis!38) Balance!87)

(assert (=> bs!1626 (= (dynLambda!140 lambda!1262 (head!374 xs!372)) (fromParenthesis!0 (head!374 xs!372)))))

(declare-fun m!10105 () Bool)

(assert (=> bs!1626 m!10105))

(assert (=> b!7243 d!5697))

(declare-fun b_lambda!3471 () Bool)

(assert (= b_lambda!3463 (or b!7235 b_lambda!3471)))

(declare-fun bs!1627 () Bool)

(declare-fun d!5699 () Bool)

(assert (= bs!1627 (and d!5699 b!7235)))

(declare-fun ++!3 (Balance!87 Balance!87) Balance!87)

(assert (=> bs!1627 (= (dynLambda!141 lambda!1263 (head!375 (map!148 xs!372 lambda!1262)) (foldRight1!27 (tail!387 (map!148 xs!372 lambda!1262)) lambda!1263)) (++!3 (head!375 (map!148 xs!372 lambda!1262)) (foldRight1!27 (tail!387 (map!148 xs!372 lambda!1262)) lambda!1263)))))

(assert (=> bs!1627 m!10097))

(declare-fun m!10107 () Bool)

(assert (=> bs!1627 m!10107))

(assert (=> b!7257 d!5699))

(declare-fun b_lambda!3473 () Bool)

(assert (= b_lambda!3465 (or (and b!7231 (= lambda!1264 (x!3928 thiss!1125))) (and b!7232 b_free!415) (and b!7232 b_free!417 (= (y!458 thiss!1125) (x!3928 thiss!1125))) b_lambda!3473)))

(declare-fun bs!1628 () Bool)

(declare-fun d!5701 () Bool)

(assert (= bs!1628 (and d!5701 b!7231)))

(assert (=> bs!1628 (= (dynLambda!142 lambda!1264) (foldRight1!27 (append!60 (map!148 xs!372 lambda!1262) (Cons!157 (Balance!88 0 0) Nil!158)) lambda!1263))))

(assert (=> bs!1628 m!10079))

(assert (=> bs!1628 m!10079))

(assert (=> bs!1628 m!10081))

(assert (=> bs!1628 m!10081))

(assert (=> bs!1628 m!10083))

(assert (=> (and b!7231 (= lambda!1264 (x!3928 thiss!1125)) d!5695) d!5701))

(declare-fun b_lambda!3475 () Bool)

(assert (= b_lambda!3461 (or b!7235 b_lambda!3475)))

(declare-fun bs!1629 () Bool)

(declare-fun d!5703 () Bool)

(assert (= bs!1629 (and d!5703 b!7235)))

(assert (=> bs!1629 (= (dynLambda!141 lambda!1263 (head!375 (append!60 (map!148 xs!372 lambda!1262) (Cons!157 (Balance!88 0 0) Nil!158))) (foldRight1!27 (tail!387 (append!60 (map!148 xs!372 lambda!1262) (Cons!157 (Balance!88 0 0) Nil!158))) lambda!1263)) (++!3 (head!375 (append!60 (map!148 xs!372 lambda!1262) (Cons!157 (Balance!88 0 0) Nil!158))) (foldRight1!27 (tail!387 (append!60 (map!148 xs!372 lambda!1262) (Cons!157 (Balance!88 0 0) Nil!158))) lambda!1263)))))

(assert (=> bs!1629 m!10093))

(declare-fun m!10109 () Bool)

(assert (=> bs!1629 m!10109))

(assert (=> b!7255 d!5703))

(declare-fun b_lambda!3477 () Bool)

(assert (= b_lambda!3467 (or (and b!7231 (= lambda!1264 (y!458 thiss!1125))) (and b!7232 b_free!415 (= (x!3928 thiss!1125) (y!458 thiss!1125))) (and b!7232 b_free!417) b_lambda!3477)))

(declare-fun bs!1630 () Bool)

(declare-fun d!5705 () Bool)

(assert (= bs!1630 (and d!5705 b!7231)))

(assert (=> bs!1630 (= (dynLambda!142 lambda!1264) (foldRight1!27 (append!60 (map!148 xs!372 lambda!1262) (Cons!157 (Balance!88 0 0) Nil!158)) lambda!1263))))

(assert (=> bs!1630 m!10079))

(assert (=> bs!1630 m!10079))

(assert (=> bs!1630 m!10081))

(assert (=> bs!1630 m!10081))

(assert (=> bs!1630 m!10083))

(assert (=> (and b!7231 (= lambda!1264 (y!458 thiss!1125)) d!5695) d!5705))

(push 1)

(assert (not bs!1626))

(assert (not b_lambda!3469))

(assert (not bs!1627))

(assert (not b_next!905))

(assert (not b_lambda!3475))

(assert (not bs!1630))

(assert (not b!7257))

(assert b_and!1947)

(assert (not b!7243))

(assert b_and!1939)

(assert (not b_lambda!3473))

(assert (not b!7249))

(assert (not b_next!907))

(assert (not b_next!903))

(assert (not b_lambda!3471))

(assert (not b_lambda!3457))

(assert (not bs!1629))

(assert b_and!1945)

(assert (not b_lambda!3477))

(assert (not b!7255))

(assert (not bs!1628))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!905))

(assert b_and!1947)

(assert b_and!1939)

(assert (not b_next!907))

(assert (not b_next!903))

(assert b_and!1945)

(check-sat)

(pop 1)

