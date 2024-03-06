; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1226 () Bool)

(assert start!1226)

(declare-fun b_free!369 () Bool)

(declare-fun b_next!785 () Bool)

(assert (=> start!1226 (= b_free!369 (not b_next!785))))

(declare-fun tp!676 () Bool)

(declare-fun b_and!1813 () Bool)

(assert (=> start!1226 (= tp!676 b_and!1813)))

(declare-fun b!6911 () Bool)

(declare-fun f!686 () Int)

(declare-fun b_next!787 () Bool)

(declare-fun lambda!1067 () Int)

(assert (=> start!1226 (= b_next!785 (or (and b!6911 (= lambda!1067 f!686)) b_next!787))))

(declare-fun res!1950 () Bool)

(declare-fun e!4057 () Bool)

(assert (=> b!6911 (=> (not res!1950) (not e!4057))))

(declare-datatypes () ((Parenthesis!31 (CloseParenthesis!30) (OpenParenthesis!30))))

(declare-datatypes () ((List!145 (Nil!143) (Cons!142 (head!360 Parenthesis!31) (tail!372 List!145)))))

(declare-fun xs!372 () List!145)

(declare-fun lambda!1066 () Int)

(declare-datatypes () ((ProofOps!48 (ProofOps!49 (prop!134 Bool)))))

(declare-fun thiss!1106 () ProofOps!48)

(declare-datatypes () ((Balance!73 (Balance!74 (extraOpen!77 Int) (extraClose!77 Int)))))

(declare-datatypes () ((List!146 (Nil!144) (Cons!143 (head!361 Balance!73) (tail!373 List!146)))))

(declare-fun foldRight1!20 (List!146 Int) Balance!73)

(declare-fun append!53 (List!146 List!146) List!146)

(declare-fun map!141 (List!145 Int) List!146)

(assert (=> b!6911 (= res!1950 (= thiss!1106 (ProofOps!49 (= (foldRight1!20 (append!53 (map!141 xs!372 lambda!1066) (Cons!143 (Balance!74 0 0) Nil!144)) lambda!1067) (foldRight1!20 (map!141 xs!372 lambda!1066) lambda!1067)))))))

(declare-fun b!6912 () Bool)

(declare-fun res!1952 () Bool)

(assert (=> b!6912 (=> (not res!1952) (not e!4057))))

(declare-fun thiss!1126 () List!146)

(assert (=> b!6912 (= res!1952 (= thiss!1126 (append!53 (map!141 xs!372 lambda!1066) (Cons!143 (Balance!74 0 0) Nil!144))))))

(declare-fun b!6913 () Bool)

(declare-fun res!1948 () Bool)

(assert (=> b!6913 (=> (not res!1948) (not e!4057))))

(assert (=> b!6913 (= res!1948 (= f!686 lambda!1067))))

(declare-fun b!6914 () Bool)

(declare-fun res!1951 () Bool)

(assert (=> b!6914 (=> (not res!1951) (not e!4057))))

(assert (=> b!6914 (= res!1951 (and (is-Cons!142 xs!372) (is-Nil!143 (tail!372 xs!372))))))

(declare-fun res!1949 () Bool)

(assert (=> start!1226 (=> (not res!1949) (not e!4057))))

(declare-fun isEmpty!126 (List!145) Bool)

(assert (=> start!1226 (= res!1949 (not (isEmpty!126 xs!372)))))

(assert (=> start!1226 e!4057))

(assert (=> start!1226 true))

(assert (=> start!1226 tp!676))

(declare-fun b!6915 () Bool)

(declare-fun isEmpty!127 (List!146) Bool)

(assert (=> b!6915 (= e!4057 (isEmpty!127 thiss!1126))))

(assert (= (and start!1226 res!1949) b!6911))

(assert (= (and b!6911 res!1950) b!6914))

(assert (= (and b!6914 res!1951) b!6912))

(assert (= (and b!6912 res!1952) b!6913))

(assert (= (and b!6913 res!1948) b!6915))

(declare-fun m!9759 () Bool)

(assert (=> b!6911 m!9759))

(assert (=> b!6911 m!9759))

(assert (=> b!6911 m!9759))

(declare-fun m!9761 () Bool)

(assert (=> b!6911 m!9761))

(assert (=> b!6911 m!9761))

(declare-fun m!9763 () Bool)

(assert (=> b!6911 m!9763))

(assert (=> b!6911 m!9759))

(declare-fun m!9765 () Bool)

(assert (=> b!6911 m!9765))

(assert (=> b!6912 m!9759))

(assert (=> b!6912 m!9759))

(assert (=> b!6912 m!9761))

(declare-fun m!9767 () Bool)

(assert (=> start!1226 m!9767))

(declare-fun m!9769 () Bool)

(assert (=> b!6915 m!9769))

(push 1)

(assert b_and!1813)

(assert (not b!6912))

(assert (not start!1226))

(assert (not b_next!787))

(assert (not b!6915))

(assert (not b!6911))

(check-sat)

(pop 1)

(push 1)

(assert b_and!1813)

(assert (not b_next!787))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!5461 () Bool)

(declare-fun c!2514 () Bool)

(assert (=> d!5461 (= c!2514 (is-Nil!144 (map!141 xs!372 lambda!1066)))))

(declare-fun e!4060 () List!146)

(assert (=> d!5461 (= (append!53 (map!141 xs!372 lambda!1066) (Cons!143 (Balance!74 0 0) Nil!144)) e!4060)))

(declare-fun b!6920 () Bool)

(assert (=> b!6920 (= e!4060 (Cons!143 (Balance!74 0 0) Nil!144))))

(declare-fun b!6921 () Bool)

(assert (=> b!6921 (= e!4060 (Cons!143 (head!361 (map!141 xs!372 lambda!1066)) (append!53 (tail!373 (map!141 xs!372 lambda!1066)) (Cons!143 (Balance!74 0 0) Nil!144))))))

(assert (= (and d!5461 c!2514) b!6920))

(assert (= (and d!5461 (not c!2514)) b!6921))

(declare-fun m!9771 () Bool)

(assert (=> b!6921 m!9771))

(assert (=> b!6911 d!5461))

(declare-fun d!5463 () Bool)

(declare-fun c!2517 () Bool)

(assert (=> d!5463 (= c!2517 (and (is-Cons!143 (append!53 (map!141 xs!372 lambda!1066) (Cons!143 (Balance!74 0 0) Nil!144))) (is-Nil!144 (tail!373 (append!53 (map!141 xs!372 lambda!1066) (Cons!143 (Balance!74 0 0) Nil!144))))))))

(declare-fun e!4063 () Balance!73)

(assert (=> d!5463 (= (foldRight1!20 (append!53 (map!141 xs!372 lambda!1066) (Cons!143 (Balance!74 0 0) Nil!144)) lambda!1067) e!4063)))

(declare-fun b!6926 () Bool)

(assert (=> b!6926 (= e!4063 (head!361 (append!53 (map!141 xs!372 lambda!1066) (Cons!143 (Balance!74 0 0) Nil!144))))))

(declare-fun b!6927 () Bool)

(declare-fun dynLambda!115 (Int Balance!73 Balance!73) Balance!73)

(assert (=> b!6927 (= e!4063 (dynLambda!115 lambda!1067 (head!361 (append!53 (map!141 xs!372 lambda!1066) (Cons!143 (Balance!74 0 0) Nil!144))) (foldRight1!20 (tail!373 (append!53 (map!141 xs!372 lambda!1066) (Cons!143 (Balance!74 0 0) Nil!144))) lambda!1067)))))

(assert (= (and d!5463 c!2517) b!6926))

(assert (= (and d!5463 (not c!2517)) b!6927))

(declare-fun b_lambda!3295 () Bool)

(assert (=> (not b_lambda!3295) (not b!6927)))

(declare-fun m!9773 () Bool)

(assert (=> b!6927 m!9773))

(assert (=> b!6927 m!9773))

(declare-fun m!9775 () Bool)

(assert (=> b!6927 m!9775))

(assert (=> b!6911 d!5463))

(declare-fun d!5465 () Bool)

(declare-fun c!2520 () Bool)

(assert (=> d!5465 (= c!2520 (is-Nil!143 xs!372))))

(declare-fun e!4066 () List!146)

(assert (=> d!5465 (= (map!141 xs!372 lambda!1066) e!4066)))

(declare-fun b!6932 () Bool)

(assert (=> b!6932 (= e!4066 Nil!144)))

(declare-fun b!6933 () Bool)

(declare-fun dynLambda!116 (Int Parenthesis!31) Balance!73)

(assert (=> b!6933 (= e!4066 (Cons!143 (dynLambda!116 lambda!1066 (head!360 xs!372)) (map!141 (tail!372 xs!372) lambda!1066)))))

(assert (= (and d!5465 c!2520) b!6932))

(assert (= (and d!5465 (not c!2520)) b!6933))

(declare-fun b_lambda!3297 () Bool)

(assert (=> (not b_lambda!3297) (not b!6933)))

(declare-fun m!9777 () Bool)

(assert (=> b!6933 m!9777))

(declare-fun m!9779 () Bool)

(assert (=> b!6933 m!9779))

(assert (=> b!6911 d!5465))

(declare-fun d!5467 () Bool)

(declare-fun c!2521 () Bool)

(assert (=> d!5467 (= c!2521 (and (is-Cons!143 (map!141 xs!372 lambda!1066)) (is-Nil!144 (tail!373 (map!141 xs!372 lambda!1066)))))))

(declare-fun e!4067 () Balance!73)

(assert (=> d!5467 (= (foldRight1!20 (map!141 xs!372 lambda!1066) lambda!1067) e!4067)))

(declare-fun b!6934 () Bool)

(assert (=> b!6934 (= e!4067 (head!361 (map!141 xs!372 lambda!1066)))))

(declare-fun b!6935 () Bool)

(assert (=> b!6935 (= e!4067 (dynLambda!115 lambda!1067 (head!361 (map!141 xs!372 lambda!1066)) (foldRight1!20 (tail!373 (map!141 xs!372 lambda!1066)) lambda!1067)))))

(assert (= (and d!5467 c!2521) b!6934))

(assert (= (and d!5467 (not c!2521)) b!6935))

(declare-fun b_lambda!3299 () Bool)

(assert (=> (not b_lambda!3299) (not b!6935)))

(declare-fun m!9781 () Bool)

(assert (=> b!6935 m!9781))

(assert (=> b!6935 m!9781))

(declare-fun m!9783 () Bool)

(assert (=> b!6935 m!9783))

(assert (=> b!6911 d!5467))

(declare-fun d!5469 () Bool)

(assert (=> d!5469 (= (isEmpty!126 xs!372) (is-Nil!143 xs!372))))

(assert (=> start!1226 d!5469))

(declare-fun d!5471 () Bool)

(assert (=> d!5471 (= (isEmpty!127 thiss!1126) (is-Nil!144 thiss!1126))))

(assert (=> b!6915 d!5471))

(assert (=> b!6912 d!5461))

(assert (=> b!6912 d!5465))

(declare-fun b_lambda!3301 () Bool)

(assert (= b_lambda!3297 (or b!6911 b_lambda!3301)))

(declare-fun bs!1567 () Bool)

(declare-fun d!5473 () Bool)

(assert (= bs!1567 (and d!5473 b!6911)))

(declare-fun fromParenthesis!0 (Parenthesis!31) Balance!73)

(assert (=> bs!1567 (= (dynLambda!116 lambda!1066 (head!360 xs!372)) (fromParenthesis!0 (head!360 xs!372)))))

(declare-fun m!9785 () Bool)

(assert (=> bs!1567 m!9785))

(assert (=> b!6933 d!5473))

(declare-fun b_lambda!3303 () Bool)

(assert (= b_lambda!3299 (or b!6911 b_lambda!3303)))

(declare-fun bs!1568 () Bool)

(declare-fun d!5475 () Bool)

(assert (= bs!1568 (and d!5475 b!6911)))

(declare-fun ++!3 (Balance!73 Balance!73) Balance!73)

(assert (=> bs!1568 (= (dynLambda!115 lambda!1067 (head!361 (map!141 xs!372 lambda!1066)) (foldRight1!20 (tail!373 (map!141 xs!372 lambda!1066)) lambda!1067)) (++!3 (head!361 (map!141 xs!372 lambda!1066)) (foldRight1!20 (tail!373 (map!141 xs!372 lambda!1066)) lambda!1067)))))

(assert (=> bs!1568 m!9781))

(declare-fun m!9787 () Bool)

(assert (=> bs!1568 m!9787))

(assert (=> b!6935 d!5475))

(declare-fun b_lambda!3305 () Bool)

(assert (= b_lambda!3295 (or b!6911 b_lambda!3305)))

(declare-fun bs!1569 () Bool)

(declare-fun d!5477 () Bool)

(assert (= bs!1569 (and d!5477 b!6911)))

(assert (=> bs!1569 (= (dynLambda!115 lambda!1067 (head!361 (append!53 (map!141 xs!372 lambda!1066) (Cons!143 (Balance!74 0 0) Nil!144))) (foldRight1!20 (tail!373 (append!53 (map!141 xs!372 lambda!1066) (Cons!143 (Balance!74 0 0) Nil!144))) lambda!1067)) (++!3 (head!361 (append!53 (map!141 xs!372 lambda!1066) (Cons!143 (Balance!74 0 0) Nil!144))) (foldRight1!20 (tail!373 (append!53 (map!141 xs!372 lambda!1066) (Cons!143 (Balance!74 0 0) Nil!144))) lambda!1067)))))

(assert (=> bs!1569 m!9773))

(declare-fun m!9789 () Bool)

(assert (=> bs!1569 m!9789))

(assert (=> b!6927 d!5477))

(push 1)

(assert (not bs!1568))

(assert b_and!1813)

(assert (not b_lambda!3301))

(assert (not b!6927))

(assert (not bs!1567))

(assert (not bs!1569))

(assert (not b_lambda!3305))

(assert (not b!6921))

(assert (not b!6935))

(assert (not b_next!787))

(assert (not b!6933))

(assert (not b_lambda!3303))

(check-sat)

(pop 1)

(push 1)

(assert b_and!1813)

(assert (not b_next!787))

(check-sat)

(pop 1)

