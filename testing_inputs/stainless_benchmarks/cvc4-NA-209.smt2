; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1564 () Bool)

(assert start!1564)

(declare-fun b!8075 () Bool)

(declare-fun e!4612 () Int)

(declare-fun lambda!1802 () Int)

(assert (=> b!8075 (= e!4612 lambda!1802)))

(declare-fun b!8076 () Bool)

(declare-fun e!4614 () Int)

(declare-fun lambda!1803 () Int)

(assert (=> b!8076 (= e!4614 lambda!1803)))

(declare-fun b!8077 () Bool)

(declare-datatypes () ((Balance!137 (Balance!138 (extraOpen!109 Int) (extraClose!109 Int)))))

(declare-datatypes () ((List!185 (Nil!183) (Cons!182 (head!400 Balance!137) (tail!412 List!185)))))

(declare-fun e!4615 () List!185)

(declare-fun res!2439 () List!185)

(assert (=> b!8077 (= e!4615 res!2439)))

(assert (=> b!8077 true))

(declare-fun b!8078 () Bool)

(declare-fun e!4618 () Int)

(assert (=> b!8078 (= e!4618 lambda!1803)))

(declare-fun b!8079 () Bool)

(assert (=> b!8079 (= e!4618 lambda!1803)))

(declare-fun res!2437 () Bool)

(declare-fun e!4617 () Bool)

(assert (=> start!1564 (=> (not res!2437) (not e!4617))))

(declare-datatypes () ((Parenthesis!51 (CloseParenthesis!50) (OpenParenthesis!50))))

(declare-datatypes () ((List!186 (Nil!184) (Cons!183 (head!401 Parenthesis!51) (tail!413 List!186)))))

(declare-fun xs!372 () List!186)

(declare-fun isEmpty!152 (List!186) Bool)

(assert (=> start!1564 (= res!2437 (not (isEmpty!152 xs!372)))))

(assert (=> start!1564 e!4617))

(assert (=> start!1564 true))

(declare-fun b!8080 () Bool)

(declare-fun e!4613 () Balance!137)

(declare-fun foldRight1!40 (List!185 Int) Balance!137)

(assert (=> b!8080 (= e!4613 (foldRight1!40 e!4615 e!4618))))

(declare-fun c!2808 () Bool)

(declare-fun lt!1489 () Bool)

(assert (=> b!8080 (= c!2808 lt!1489)))

(declare-fun c!2803 () Bool)

(declare-fun lt!1488 () Bool)

(assert (=> b!8080 (= c!2803 (or lt!1488 (not lt!1488)))))

(declare-fun b!8081 () Bool)

(declare-fun e!4619 () Int)

(assert (=> b!8081 (= e!4619 lambda!1802)))

(declare-fun b!8082 () Bool)

(declare-fun res!2438 () Balance!137)

(assert (=> b!8082 (= e!4613 res!2438)))

(assert (=> b!8082 true))

(declare-fun b!8083 () Bool)

(declare-datatypes () ((ProofOps!88 (ProofOps!89 (prop!158 Bool)))))

(declare-fun because!2 (ProofOps!88 Bool) Bool)

(declare-fun append!73 (List!185 List!185) List!185)

(declare-fun map!161 (List!186 Int) List!185)

(assert (=> b!8083 (= e!4617 (not (because!2 (ProofOps!89 (= (foldRight1!40 (append!73 (map!161 xs!372 lambda!1802) (Cons!182 (Balance!138 0 0) Nil!183)) lambda!1803) (foldRight1!40 (map!161 xs!372 lambda!1802) lambda!1803))) true)))))

(declare-fun e!4616 () Balance!137)

(assert (=> b!8083 (= e!4613 e!4616)))

(declare-fun c!2806 () Bool)

(declare-fun lt!1487 () Bool)

(assert (=> b!8083 (= c!2806 (or lt!1487 (not lt!1488)))))

(declare-fun c!2802 () Bool)

(assert (=> b!8083 (= c!2802 (or lt!1489 (not lt!1488)))))

(assert (=> b!8083 (= lt!1487 lt!1488)))

(assert (=> b!8083 (= lt!1489 lt!1488)))

(assert (=> b!8083 (= lt!1488 (and (is-Cons!183 xs!372) (is-Nil!184 (tail!413 xs!372))))))

(declare-fun b!8084 () Bool)

(assert (=> b!8084 (= e!4614 lambda!1803)))

(declare-fun b!8085 () Bool)

(assert (=> b!8085 (= e!4616 (foldRight1!40 (map!161 xs!372 e!4619) e!4614))))

(declare-fun c!2807 () Bool)

(assert (=> b!8085 (= c!2807 lt!1487)))

(declare-fun c!2805 () Bool)

(assert (=> b!8085 (= c!2805 lt!1488)))

(declare-fun b!8086 () Bool)

(assert (=> b!8086 (= e!4612 lambda!1802)))

(declare-fun b!8087 () Bool)

(assert (=> b!8087 (= e!4615 (append!73 (map!161 xs!372 e!4612) (Cons!182 (Balance!138 0 0) Nil!183)))))

(declare-fun c!2804 () Bool)

(assert (=> b!8087 (= c!2804 lt!1488)))

(declare-fun b!8088 () Bool)

(assert (=> b!8088 (= e!4619 lambda!1802)))

(declare-fun b!8089 () Bool)

(declare-fun res!2436 () Balance!137)

(assert (=> b!8089 (= e!4616 res!2436)))

(assert (=> b!8089 true))

(assert (= (and start!1564 res!2437) b!8083))

(assert (= (and b!8087 c!2804) b!8086))

(assert (= (and b!8087 (not c!2804)) b!8075))

(assert (= (and b!8080 c!2803) b!8087))

(assert (= (and b!8080 (not c!2803)) b!8077))

(assert (= (and b!8080 c!2808) b!8079))

(assert (= (and b!8080 (not c!2808)) b!8078))

(assert (= (and b!8083 c!2802) b!8080))

(assert (= (and b!8083 (not c!2802)) b!8082))

(assert (= (and b!8085 c!2805) b!8081))

(assert (= (and b!8085 (not c!2805)) b!8088))

(assert (= (and b!8085 c!2807) b!8084))

(assert (= (and b!8085 (not c!2807)) b!8076))

(assert (= (and b!8083 c!2806) b!8085))

(assert (= (and b!8083 (not c!2806)) b!8089))

(declare-fun m!10915 () Bool)

(assert (=> start!1564 m!10915))

(declare-fun m!10917 () Bool)

(assert (=> b!8085 m!10917))

(assert (=> b!8085 m!10917))

(declare-fun m!10919 () Bool)

(assert (=> b!8085 m!10919))

(declare-fun m!10921 () Bool)

(assert (=> b!8083 m!10921))

(declare-fun m!10923 () Bool)

(assert (=> b!8083 m!10923))

(assert (=> b!8083 m!10921))

(declare-fun m!10925 () Bool)

(assert (=> b!8083 m!10925))

(assert (=> b!8083 m!10921))

(declare-fun m!10927 () Bool)

(assert (=> b!8083 m!10927))

(assert (=> b!8083 m!10921))

(assert (=> b!8083 m!10927))

(declare-fun m!10929 () Bool)

(assert (=> b!8083 m!10929))

(declare-fun m!10931 () Bool)

(assert (=> b!8087 m!10931))

(assert (=> b!8087 m!10931))

(declare-fun m!10933 () Bool)

(assert (=> b!8087 m!10933))

(declare-fun m!10935 () Bool)

(assert (=> b!8080 m!10935))

(push 1)

(assert (not start!1564))

(assert (not b!8080))

(assert (not b!8083))

(assert (not b!8085))

(assert (not b!8087))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6325 () Bool)

(declare-fun c!2811 () Bool)

(assert (=> d!6325 (= c!2811 (and (is-Cons!182 (map!161 xs!372 lambda!1802)) (is-Nil!183 (tail!412 (map!161 xs!372 lambda!1802)))))))

(declare-fun e!4622 () Balance!137)

(assert (=> d!6325 (= (foldRight1!40 (map!161 xs!372 lambda!1802) lambda!1803) e!4622)))

(declare-fun b!8094 () Bool)

(assert (=> b!8094 (= e!4622 (head!400 (map!161 xs!372 lambda!1802)))))

(declare-fun b!8095 () Bool)

(declare-fun dynLambda!189 (Int Balance!137 Balance!137) Balance!137)

(assert (=> b!8095 (= e!4622 (dynLambda!189 lambda!1803 (head!400 (map!161 xs!372 lambda!1802)) (foldRight1!40 (tail!412 (map!161 xs!372 lambda!1802)) lambda!1803)))))

(assert (= (and d!6325 c!2811) b!8094))

(assert (= (and d!6325 (not c!2811)) b!8095))

(declare-fun b_lambda!3979 () Bool)

(assert (=> (not b_lambda!3979) (not b!8095)))

(declare-fun m!10937 () Bool)

(assert (=> b!8095 m!10937))

(assert (=> b!8095 m!10937))

(declare-fun m!10939 () Bool)

(assert (=> b!8095 m!10939))

(assert (=> b!8083 d!6325))

(declare-fun d!6327 () Bool)

(declare-fun c!2814 () Bool)

(assert (=> d!6327 (= c!2814 (is-Nil!183 (map!161 xs!372 lambda!1802)))))

(declare-fun e!4625 () List!185)

(assert (=> d!6327 (= (append!73 (map!161 xs!372 lambda!1802) (Cons!182 (Balance!138 0 0) Nil!183)) e!4625)))

(declare-fun b!8100 () Bool)

(assert (=> b!8100 (= e!4625 (Cons!182 (Balance!138 0 0) Nil!183))))

(declare-fun b!8101 () Bool)

(assert (=> b!8101 (= e!4625 (Cons!182 (head!400 (map!161 xs!372 lambda!1802)) (append!73 (tail!412 (map!161 xs!372 lambda!1802)) (Cons!182 (Balance!138 0 0) Nil!183))))))

(assert (= (and d!6327 c!2814) b!8100))

(assert (= (and d!6327 (not c!2814)) b!8101))

(declare-fun m!10941 () Bool)

(assert (=> b!8101 m!10941))

(assert (=> b!8083 d!6327))

(declare-fun d!6329 () Bool)

(declare-fun c!2817 () Bool)

(assert (=> d!6329 (= c!2817 (is-Nil!184 xs!372))))

(declare-fun e!4628 () List!185)

(assert (=> d!6329 (= (map!161 xs!372 lambda!1802) e!4628)))

(declare-fun b!8106 () Bool)

(assert (=> b!8106 (= e!4628 Nil!183)))

(declare-fun b!8107 () Bool)

(declare-fun dynLambda!190 (Int Parenthesis!51) Balance!137)

(assert (=> b!8107 (= e!4628 (Cons!182 (dynLambda!190 lambda!1802 (head!401 xs!372)) (map!161 (tail!413 xs!372) lambda!1802)))))

(assert (= (and d!6329 c!2817) b!8106))

(assert (= (and d!6329 (not c!2817)) b!8107))

(declare-fun b_lambda!3981 () Bool)

(assert (=> (not b_lambda!3981) (not b!8107)))

(declare-fun m!10943 () Bool)

(assert (=> b!8107 m!10943))

(declare-fun m!10945 () Bool)

(assert (=> b!8107 m!10945))

(assert (=> b!8083 d!6329))

(declare-fun d!6331 () Bool)

(declare-fun c!2818 () Bool)

(assert (=> d!6331 (= c!2818 (and (is-Cons!182 (append!73 (map!161 xs!372 lambda!1802) (Cons!182 (Balance!138 0 0) Nil!183))) (is-Nil!183 (tail!412 (append!73 (map!161 xs!372 lambda!1802) (Cons!182 (Balance!138 0 0) Nil!183))))))))

(declare-fun e!4629 () Balance!137)

(assert (=> d!6331 (= (foldRight1!40 (append!73 (map!161 xs!372 lambda!1802) (Cons!182 (Balance!138 0 0) Nil!183)) lambda!1803) e!4629)))

(declare-fun b!8108 () Bool)

(assert (=> b!8108 (= e!4629 (head!400 (append!73 (map!161 xs!372 lambda!1802) (Cons!182 (Balance!138 0 0) Nil!183))))))

(declare-fun b!8109 () Bool)

(assert (=> b!8109 (= e!4629 (dynLambda!189 lambda!1803 (head!400 (append!73 (map!161 xs!372 lambda!1802) (Cons!182 (Balance!138 0 0) Nil!183))) (foldRight1!40 (tail!412 (append!73 (map!161 xs!372 lambda!1802) (Cons!182 (Balance!138 0 0) Nil!183))) lambda!1803)))))

(assert (= (and d!6331 c!2818) b!8108))

(assert (= (and d!6331 (not c!2818)) b!8109))

(declare-fun b_lambda!3983 () Bool)

(assert (=> (not b_lambda!3983) (not b!8109)))

(declare-fun m!10947 () Bool)

(assert (=> b!8109 m!10947))

(assert (=> b!8109 m!10947))

(declare-fun m!10949 () Bool)

(assert (=> b!8109 m!10949))

(assert (=> b!8083 d!6331))

(declare-fun d!6333 () Bool)

(assert (=> d!6333 (= (because!2 (ProofOps!89 (= (foldRight1!40 (append!73 (map!161 xs!372 lambda!1802) (Cons!182 (Balance!138 0 0) Nil!183)) lambda!1803) (foldRight1!40 (map!161 xs!372 lambda!1802) lambda!1803))) true) (prop!158 (ProofOps!89 (= (foldRight1!40 (append!73 (map!161 xs!372 lambda!1802) (Cons!182 (Balance!138 0 0) Nil!183)) lambda!1803) (foldRight1!40 (map!161 xs!372 lambda!1802) lambda!1803)))))))

(assert (=> b!8083 d!6333))

(declare-fun d!6335 () Bool)

(declare-fun c!2819 () Bool)

(assert (=> d!6335 (= c!2819 (and (is-Cons!182 e!4615) (is-Nil!183 (tail!412 e!4615))))))

(declare-fun e!4630 () Balance!137)

(assert (=> d!6335 (= (foldRight1!40 e!4615 e!4618) e!4630)))

(declare-fun b!8110 () Bool)

(assert (=> b!8110 (= e!4630 (head!400 e!4615))))

(declare-fun b!8111 () Bool)

(assert (=> b!8111 (= e!4630 (dynLambda!189 e!4618 (head!400 e!4615) (foldRight1!40 (tail!412 e!4615) e!4618)))))

(assert (= (and d!6335 c!2819) b!8110))

(assert (= (and d!6335 (not c!2819)) b!8111))

(declare-fun b_lambda!3985 () Bool)

(assert (=> (not b_lambda!3985) (not b!8111)))

(declare-fun m!10951 () Bool)

(assert (=> b!8111 m!10951))

(assert (=> b!8111 m!10951))

(declare-fun m!10953 () Bool)

(assert (=> b!8111 m!10953))

(assert (=> b!8080 d!6335))

(declare-fun d!6337 () Bool)

(declare-fun c!2820 () Bool)

(assert (=> d!6337 (= c!2820 (and (is-Cons!182 (map!161 xs!372 e!4619)) (is-Nil!183 (tail!412 (map!161 xs!372 e!4619)))))))

(declare-fun e!4631 () Balance!137)

(assert (=> d!6337 (= (foldRight1!40 (map!161 xs!372 e!4619) e!4614) e!4631)))

(declare-fun b!8112 () Bool)

(assert (=> b!8112 (= e!4631 (head!400 (map!161 xs!372 e!4619)))))

(declare-fun b!8113 () Bool)

(assert (=> b!8113 (= e!4631 (dynLambda!189 e!4614 (head!400 (map!161 xs!372 e!4619)) (foldRight1!40 (tail!412 (map!161 xs!372 e!4619)) e!4614)))))

(assert (= (and d!6337 c!2820) b!8112))

(assert (= (and d!6337 (not c!2820)) b!8113))

(declare-fun b_lambda!3987 () Bool)

(assert (=> (not b_lambda!3987) (not b!8113)))

(declare-fun m!10955 () Bool)

(assert (=> b!8113 m!10955))

(assert (=> b!8113 m!10955))

(declare-fun m!10957 () Bool)

(assert (=> b!8113 m!10957))

(assert (=> b!8085 d!6337))

(declare-fun d!6339 () Bool)

(declare-fun c!2821 () Bool)

(assert (=> d!6339 (= c!2821 (is-Nil!184 xs!372))))

(declare-fun e!4632 () List!185)

(assert (=> d!6339 (= (map!161 xs!372 e!4619) e!4632)))

(declare-fun b!8114 () Bool)

(assert (=> b!8114 (= e!4632 Nil!183)))

(declare-fun b!8115 () Bool)

(assert (=> b!8115 (= e!4632 (Cons!182 (dynLambda!190 e!4619 (head!401 xs!372)) (map!161 (tail!413 xs!372) e!4619)))))

(assert (= (and d!6339 c!2821) b!8114))

(assert (= (and d!6339 (not c!2821)) b!8115))

(declare-fun b_lambda!3989 () Bool)

(assert (=> (not b_lambda!3989) (not b!8115)))

(declare-fun m!10959 () Bool)

(assert (=> b!8115 m!10959))

(declare-fun m!10961 () Bool)

(assert (=> b!8115 m!10961))

(assert (=> b!8085 d!6339))

(declare-fun d!6341 () Bool)

(declare-fun c!2822 () Bool)

(assert (=> d!6341 (= c!2822 (is-Nil!183 (map!161 xs!372 e!4612)))))

(declare-fun e!4633 () List!185)

(assert (=> d!6341 (= (append!73 (map!161 xs!372 e!4612) (Cons!182 (Balance!138 0 0) Nil!183)) e!4633)))

(declare-fun b!8116 () Bool)

(assert (=> b!8116 (= e!4633 (Cons!182 (Balance!138 0 0) Nil!183))))

(declare-fun b!8117 () Bool)

(assert (=> b!8117 (= e!4633 (Cons!182 (head!400 (map!161 xs!372 e!4612)) (append!73 (tail!412 (map!161 xs!372 e!4612)) (Cons!182 (Balance!138 0 0) Nil!183))))))

(assert (= (and d!6341 c!2822) b!8116))

(assert (= (and d!6341 (not c!2822)) b!8117))

(declare-fun m!10963 () Bool)

(assert (=> b!8117 m!10963))

(assert (=> b!8087 d!6341))

(declare-fun d!6343 () Bool)

(declare-fun c!2823 () Bool)

(assert (=> d!6343 (= c!2823 (is-Nil!184 xs!372))))

(declare-fun e!4634 () List!185)

(assert (=> d!6343 (= (map!161 xs!372 e!4612) e!4634)))

(declare-fun b!8118 () Bool)

(assert (=> b!8118 (= e!4634 Nil!183)))

(declare-fun b!8119 () Bool)

(assert (=> b!8119 (= e!4634 (Cons!182 (dynLambda!190 e!4612 (head!401 xs!372)) (map!161 (tail!413 xs!372) e!4612)))))

(assert (= (and d!6343 c!2823) b!8118))

(assert (= (and d!6343 (not c!2823)) b!8119))

(declare-fun b_lambda!3991 () Bool)

(assert (=> (not b_lambda!3991) (not b!8119)))

(declare-fun m!10965 () Bool)

(assert (=> b!8119 m!10965))

(declare-fun m!10967 () Bool)

(assert (=> b!8119 m!10967))

(assert (=> b!8087 d!6343))

(declare-fun d!6345 () Bool)

(assert (=> d!6345 (= (isEmpty!152 xs!372) (is-Nil!184 xs!372))))

(assert (=> start!1564 d!6345))

(declare-fun b_lambda!3993 () Bool)

(assert (= b_lambda!3979 (or b!8083 b_lambda!3993)))

(declare-fun bs!1861 () Bool)

(declare-fun d!6347 () Bool)

(assert (= bs!1861 (and d!6347 b!8083)))

(declare-fun ++!3 (Balance!137 Balance!137) Balance!137)

(assert (=> bs!1861 (= (dynLambda!189 lambda!1803 (head!400 (map!161 xs!372 lambda!1802)) (foldRight1!40 (tail!412 (map!161 xs!372 lambda!1802)) lambda!1803)) (++!3 (head!400 (map!161 xs!372 lambda!1802)) (foldRight1!40 (tail!412 (map!161 xs!372 lambda!1802)) lambda!1803)))))

(assert (=> bs!1861 m!10937))

(declare-fun m!10969 () Bool)

(assert (=> bs!1861 m!10969))

(assert (=> b!8095 d!6347))

(declare-fun b_lambda!3995 () Bool)

(assert (= b_lambda!3981 (or b!8083 b_lambda!3995)))

(declare-fun bs!1862 () Bool)

(declare-fun d!6349 () Bool)

(assert (= bs!1862 (and d!6349 b!8083)))

(declare-fun fromParenthesis!0 (Parenthesis!51) Balance!137)

(assert (=> bs!1862 (= (dynLambda!190 lambda!1802 (head!401 xs!372)) (fromParenthesis!0 (head!401 xs!372)))))

(declare-fun m!10971 () Bool)

(assert (=> bs!1862 m!10971))

(assert (=> b!8107 d!6349))

(declare-fun b_lambda!3997 () Bool)

(assert (= b_lambda!3983 (or b!8083 b_lambda!3997)))

(declare-fun bs!1863 () Bool)

(declare-fun d!6351 () Bool)

(assert (= bs!1863 (and d!6351 b!8083)))

(assert (=> bs!1863 (= (dynLambda!189 lambda!1803 (head!400 (append!73 (map!161 xs!372 lambda!1802) (Cons!182 (Balance!138 0 0) Nil!183))) (foldRight1!40 (tail!412 (append!73 (map!161 xs!372 lambda!1802) (Cons!182 (Balance!138 0 0) Nil!183))) lambda!1803)) (++!3 (head!400 (append!73 (map!161 xs!372 lambda!1802) (Cons!182 (Balance!138 0 0) Nil!183))) (foldRight1!40 (tail!412 (append!73 (map!161 xs!372 lambda!1802) (Cons!182 (Balance!138 0 0) Nil!183))) lambda!1803)))))

(assert (=> bs!1863 m!10947))

(declare-fun m!10973 () Bool)

(assert (=> bs!1863 m!10973))

(assert (=> b!8109 d!6351))

(push 1)

(assert (not b_lambda!3989))

(assert (not bs!1862))

(assert (not b_lambda!3997))

(assert (not b_lambda!3987))

(assert (not b!8101))

(assert (not b!8107))

(assert (not bs!1861))

(assert (not b!8117))

(assert (not b!8115))

(assert (not b!8113))

(assert (not b!8111))

(assert (not b_lambda!3991))

(assert (not b_lambda!3985))

(assert (not b_lambda!3993))

(assert (not b!8109))

(assert (not b!8095))

(assert (not bs!1863))

(assert (not b_lambda!3995))

(assert (not b!8119))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

