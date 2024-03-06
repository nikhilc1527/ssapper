; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10674 () Bool)

(assert start!10674)

(declare-fun b_free!7355 () Bool)

(declare-fun b_next!39179 () Bool)

(assert (=> start!10674 (= b_free!7355 (not b_next!39179))))

(declare-fun tp!16945 () Bool)

(declare-fun b_and!58879 () Bool)

(assert (=> start!10674 (= tp!16945 b_and!58879)))

(declare-fun b!81047 () Bool)

(assert (=> b!81047 true))

(declare-fun b_next!39181 () Bool)

(declare-fun p!852 () Int)

(declare-fun lambda!9466 () Int)

(assert (=> start!10674 (= b_next!39179 (or (and b!81047 (= lambda!9466 p!852)) b_next!39181))))

(declare-fun bs!38514 () Bool)

(declare-fun b!81057 () Bool)

(assert (= bs!38514 (and b!81057 b!81047)))

(declare-fun lambda!9467 () Int)

(assert (=> bs!38514 (not (= lambda!9467 lambda!9466))))

(assert (=> b!81057 true))

(declare-fun b_next!39183 () Bool)

(assert (=> start!10674 (= b_next!39181 (or (and b!81057 (= lambda!9467 p!852)) b_next!39183))))

(declare-fun bs!38515 () Bool)

(declare-fun b!81058 () Bool)

(assert (= bs!38515 (and b!81058 b!81047)))

(declare-fun lambda!9468 () Int)

(assert (=> bs!38515 (not (= lambda!9468 lambda!9466))))

(declare-fun bs!38516 () Bool)

(assert (= bs!38516 (and b!81058 b!81057)))

(assert (=> bs!38516 (not (= lambda!9468 lambda!9467))))

(assert (=> b!81058 true))

(declare-fun b_next!39185 () Bool)

(assert (=> start!10674 (= b_next!39183 (or (and b!81058 (= lambda!9468 p!852)) b_next!39185))))

(declare-fun bs!38517 () Bool)

(declare-fun b!81050 () Bool)

(assert (= bs!38517 (and b!81050 b!81047)))

(declare-fun lambda!9469 () Int)

(assert (=> bs!38517 (not (= lambda!9469 lambda!9466))))

(declare-fun bs!38518 () Bool)

(assert (= bs!38518 (and b!81050 b!81057)))

(assert (=> bs!38518 (not (= lambda!9469 lambda!9467))))

(declare-fun bs!38519 () Bool)

(assert (= bs!38519 (and b!81050 b!81058)))

(assert (=> bs!38519 (not (= lambda!9469 lambda!9468))))

(assert (=> b!81050 true))

(declare-fun b_next!39187 () Bool)

(assert (=> start!10674 (= b_next!39185 (or (and b!81050 (= lambda!9469 p!852)) b_next!39187))))

(declare-fun res!41379 () Bool)

(declare-fun e!43950 () Bool)

(assert (=> start!10674 (=> (not res!41379) (not e!43950))))

(declare-datatypes () ((List!663 (Cons!620 (h!989 Int) (t!47816 List!663)) (Nil!622))))

(declare-fun ls!96 () List!663)

(assert (=> start!10674 (= res!41379 (and (not (is-Nil!622 ls!96)) (not (is-Nil!622 (t!47816 ls!96)))))))

(assert (=> start!10674 e!43950))

(assert (=> start!10674 true))

(assert (=> start!10674 tp!16945))

(declare-fun b!81045 () Bool)

(declare-fun res!41372 () Bool)

(assert (=> b!81045 (=> (not res!41372) (not e!43950))))

(declare-fun l2!435 () List!663)

(declare-fun equal!10 () List!663)

(assert (=> b!81045 (= res!41372 (= l2!435 equal!10))))

(declare-fun b!81046 () Bool)

(declare-fun e!43949 () Bool)

(assert (=> b!81046 (= e!43950 e!43949)))

(declare-fun res!41382 () Bool)

(assert (=> b!81046 (=> res!41382 e!43949)))

(declare-fun l1!442 () List!663)

(declare-fun forall!18 (List!663 Int) Bool)

(assert (=> b!81046 (= res!41382 (not (forall!18 l1!442 p!852)))))

(declare-fun res!41377 () Bool)

(assert (=> b!81047 (=> (not res!41377) (not e!43950))))

(declare-fun less!5 () List!663)

(declare-fun filter!16 (List!663 Int) List!663)

(assert (=> b!81047 (= res!41377 (= less!5 (filter!16 (t!47816 ls!96) lambda!9466)))))

(declare-fun b!81048 () Bool)

(declare-fun res!41381 () Bool)

(assert (=> b!81048 (=> (not res!41381) (not e!43950))))

(declare-fun quickSort!0 (List!663) List!663)

(assert (=> b!81048 (= res!41381 (= l1!442 (quickSort!0 less!5)))))

(declare-fun b!81049 () Bool)

(declare-fun res!41375 () Bool)

(assert (=> b!81049 (=> (not res!41375) (not e!43950))))

(declare-fun forall_eq_implies_le!0 (List!663 Int) Bool)

(assert (=> b!81049 (= res!41375 (forall_eq_implies_le!0 equal!10 (h!989 ls!96)))))

(declare-fun res!41370 () Bool)

(assert (=> b!81050 (=> (not res!41370) (not e!43950))))

(declare-fun sort_preserves_forall!0 (List!663 Int) Bool)

(assert (=> b!81050 (= res!41370 (sort_preserves_forall!0 less!5 lambda!9469))))

(declare-fun b!81051 () Bool)

(declare-fun res!41383 () Bool)

(assert (=> b!81051 (=> (not res!41383) (not e!43950))))

(declare-fun cons_filter_equal_sorted!0 (List!663 Int) Bool)

(assert (=> b!81051 (= res!41383 (cons_filter_equal_sorted!0 (t!47816 ls!96) (h!989 ls!96)))))

(declare-fun b!81052 () Bool)

(declare-fun res!41380 () Bool)

(assert (=> b!81052 (=> (not res!41380) (not e!43950))))

(declare-fun forall_last!0 (List!663 Int) Bool)

(assert (=> b!81052 (= res!41380 (forall_last!0 (quickSort!0 less!5) lambda!9466))))

(declare-fun b!81053 () Bool)

(declare-fun res!41369 () Bool)

(assert (=> b!81053 (=> (not res!41369) (not e!43950))))

(declare-fun append_sorted!0 (List!663 List!663) Bool)

(assert (=> b!81053 (= res!41369 (append_sorted!0 (quickSort!0 less!5) equal!10))))

(declare-fun b!81054 () Bool)

(assert (=> b!81054 (= e!43949 (not (forall!18 l2!435 p!852)))))

(declare-fun b!81055 () Bool)

(declare-fun res!41378 () Bool)

(assert (=> b!81055 (=> (not res!41378) (not e!43950))))

(assert (=> b!81055 (= res!41378 (sort_preserves_forall!0 less!5 lambda!9466))))

(declare-fun b!81056 () Bool)

(declare-fun res!41373 () Bool)

(assert (=> b!81056 (=> (not res!41373) (not e!43950))))

(declare-fun sorted_lemma!0 (List!663) Bool)

(assert (=> b!81056 (= res!41373 (sorted_lemma!0 less!5))))

(declare-fun res!41368 () Bool)

(assert (=> b!81057 (=> (not res!41368) (not e!43950))))

(assert (=> b!81057 (= res!41368 (= equal!10 (Cons!620 (h!989 ls!96) (filter!16 (t!47816 ls!96) lambda!9467))))))

(declare-fun res!41371 () Bool)

(assert (=> b!81058 (=> (not res!41371) (not e!43950))))

(declare-fun more!5 () List!663)

(assert (=> b!81058 (= res!41371 (= more!5 (filter!16 (t!47816 ls!96) lambda!9468)))))

(declare-fun b!81059 () Bool)

(declare-fun res!41374 () Bool)

(assert (=> b!81059 (=> (not res!41374) (not e!43950))))

(assert (=> b!81059 (= res!41374 (= p!852 lambda!9469))))

(declare-fun b!81060 () Bool)

(declare-fun res!41376 () Bool)

(assert (=> b!81060 (=> (not res!41376) (not e!43950))))

(declare-fun forall_lt_implies_le!0 (List!663 Int) Bool)

(assert (=> b!81060 (= res!41376 (forall_lt_implies_le!0 less!5 (h!989 ls!96)))))

(assert (= (and start!10674 res!41379) b!81047))

(assert (= (and b!81047 res!41377) b!81057))

(assert (= (and b!81057 res!41368) b!81058))

(assert (= (and b!81058 res!41371) b!81056))

(assert (= (and b!81056 res!41373) b!81055))

(assert (= (and b!81055 res!41378) b!81052))

(assert (= (and b!81052 res!41380) b!81051))

(assert (= (and b!81051 res!41383) b!81053))

(assert (= (and b!81053 res!41369) b!81060))

(assert (= (and b!81060 res!41376) b!81050))

(assert (= (and b!81050 res!41370) b!81049))

(assert (= (and b!81049 res!41375) b!81048))

(assert (= (and b!81048 res!41381) b!81045))

(assert (= (and b!81045 res!41372) b!81059))

(assert (= (and b!81059 res!41374) b!81046))

(assert (= (and b!81046 (not res!41382)) b!81054))

(declare-fun m!75848 () Bool)

(assert (=> b!81048 m!75848))

(declare-fun m!75850 () Bool)

(assert (=> b!81051 m!75850))

(declare-fun m!75852 () Bool)

(assert (=> b!81060 m!75852))

(declare-fun m!75854 () Bool)

(assert (=> b!81056 m!75854))

(declare-fun m!75856 () Bool)

(assert (=> b!81047 m!75856))

(declare-fun m!75858 () Bool)

(assert (=> b!81057 m!75858))

(declare-fun m!75860 () Bool)

(assert (=> b!81049 m!75860))

(declare-fun m!75862 () Bool)

(assert (=> b!81046 m!75862))

(assert (=> b!81053 m!75848))

(assert (=> b!81053 m!75848))

(declare-fun m!75864 () Bool)

(assert (=> b!81053 m!75864))

(declare-fun m!75866 () Bool)

(assert (=> b!81058 m!75866))

(declare-fun m!75868 () Bool)

(assert (=> b!81054 m!75868))

(declare-fun m!75870 () Bool)

(assert (=> b!81055 m!75870))

(declare-fun m!75872 () Bool)

(assert (=> b!81050 m!75872))

(assert (=> b!81052 m!75848))

(assert (=> b!81052 m!75848))

(declare-fun m!75874 () Bool)

(assert (=> b!81052 m!75874))

(push 1)

(assert (not b!81054))

(assert (not b!81052))

(assert (not b_next!39187))

(assert (not b!81049))

(assert (not b!81056))

(assert (not b!81053))

(assert (not b!81058))

(assert (not b!81057))

(assert (not b!81055))

(assert (not b!81048))

(assert (not b!81046))

(assert (not b!81060))

(assert b_and!58879)

(assert (not b!81050))

(assert (not b!81047))

(assert (not b!81051))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58879)

(assert (not b_next!39187))

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!38520 () Bool)

(declare-fun b!81067 () Bool)

(assert (= bs!38520 (and b!81067 b!81047)))

(declare-fun lambda!9476 () Int)

(assert (=> bs!38520 (= (= (h!989 less!5) (h!989 ls!96)) (= lambda!9476 lambda!9466))))

(declare-fun bs!38521 () Bool)

(assert (= bs!38521 (and b!81067 b!81057)))

(assert (=> bs!38521 (not (= lambda!9476 lambda!9467))))

(declare-fun bs!38522 () Bool)

(assert (= bs!38522 (and b!81067 b!81058)))

(assert (=> bs!38522 (not (= lambda!9476 lambda!9468))))

(declare-fun bs!38523 () Bool)

(assert (= bs!38523 (and b!81067 b!81050)))

(assert (=> bs!38523 (not (= lambda!9476 lambda!9469))))

(assert (=> b!81067 true))

(declare-fun b_next!39189 () Bool)

(assert (=> start!10674 (= b_next!39187 (or (and b!81067 (= lambda!9476 p!852)) b_next!39189))))

(declare-fun lambda!9477 () Int)

(assert (=> bs!38520 (not (= lambda!9477 lambda!9466))))

(assert (=> b!81067 (not (= lambda!9477 lambda!9476))))

(assert (=> bs!38523 (not (= lambda!9477 lambda!9469))))

(assert (=> bs!38522 (not (= lambda!9477 lambda!9468))))

(assert (=> bs!38521 (= (= (h!989 less!5) (h!989 ls!96)) (= lambda!9477 lambda!9467))))

(assert (=> b!81067 true))

(declare-fun b_next!39191 () Bool)

(assert (=> start!10674 (= b_next!39189 (or (and b!81067 (= lambda!9477 p!852)) b_next!39191))))

(declare-fun lambda!9478 () Int)

(assert (=> bs!38520 (not (= lambda!9478 lambda!9466))))

(assert (=> b!81067 (not (= lambda!9478 lambda!9477))))

(assert (=> b!81067 (not (= lambda!9478 lambda!9476))))

(assert (=> bs!38523 (not (= lambda!9478 lambda!9469))))

(assert (=> bs!38522 (= (= (h!989 less!5) (h!989 ls!96)) (= lambda!9478 lambda!9468))))

(assert (=> bs!38521 (not (= lambda!9478 lambda!9467))))

(assert (=> b!81067 true))

(declare-fun b_next!39193 () Bool)

(assert (=> start!10674 (= b_next!39191 (or (and b!81067 (= lambda!9478 p!852)) b_next!39193))))

(declare-fun d!55633 () Bool)

(declare-fun isSorted!1 (List!663) Bool)

(assert (=> d!55633 (isSorted!1 (quickSort!0 less!5))))

(declare-fun lt!18585 () Bool)

(declare-fun e!43955 () Bool)

(assert (=> d!55633 (= lt!18585 e!43955)))

(declare-fun res!41390 () Bool)

(assert (=> d!55633 (=> res!41390 e!43955)))

(assert (=> d!55633 (= res!41390 (or (is-Nil!622 less!5) (and (is-Cons!620 less!5) (is-Nil!622 (t!47816 less!5)))))))

(assert (=> d!55633 (= (sorted_lemma!0 less!5) true)))

(declare-fun e!43956 () Bool)

(assert (=> b!81067 (= e!43955 e!43956)))

(declare-fun res!41391 () Bool)

(assert (=> b!81067 (=> (not res!41391) (not e!43956))))

(declare-fun lt!18582 () List!663)

(declare-fun lt!18584 () List!663)

(assert (=> b!81067 (= res!41391 (append_sorted!0 (quickSort!0 lt!18582) lt!18584))))

(declare-fun lt!18583 () List!663)

(assert (=> b!81067 (= lt!18583 (filter!16 (t!47816 less!5) lambda!9478))))

(assert (=> b!81067 (= lt!18584 (Cons!620 (h!989 less!5) (filter!16 (t!47816 less!5) lambda!9477)))))

(assert (=> b!81067 (= lt!18582 (filter!16 (t!47816 less!5) lambda!9476))))

(declare-fun b!81068 () Bool)

(declare-fun ++!71 (List!663 List!663) List!663)

(assert (=> b!81068 (= e!43956 (append_sorted!0 (++!71 (quickSort!0 lt!18582) lt!18584) (quickSort!0 lt!18583)))))

(assert (= (and d!55633 (not res!41390)) b!81067))

(assert (= (and b!81067 res!41391) b!81068))

(assert (=> d!55633 m!75848))

(assert (=> d!55633 m!75848))

(declare-fun m!75876 () Bool)

(assert (=> d!55633 m!75876))

(declare-fun m!75878 () Bool)

(assert (=> b!81067 m!75878))

(declare-fun m!75880 () Bool)

(assert (=> b!81067 m!75880))

(declare-fun m!75882 () Bool)

(assert (=> b!81067 m!75882))

(declare-fun m!75884 () Bool)

(assert (=> b!81067 m!75884))

(assert (=> b!81067 m!75882))

(declare-fun m!75886 () Bool)

(assert (=> b!81067 m!75886))

(assert (=> b!81068 m!75882))

(assert (=> b!81068 m!75882))

(declare-fun m!75888 () Bool)

(assert (=> b!81068 m!75888))

(declare-fun m!75890 () Bool)

(assert (=> b!81068 m!75890))

(assert (=> b!81068 m!75888))

(assert (=> b!81068 m!75890))

(declare-fun m!75892 () Bool)

(assert (=> b!81068 m!75892))

(assert (=> b!81056 d!55633))

(declare-fun b!81081 () Bool)

(declare-fun res!41403 () Bool)

(declare-fun e!43965 () Bool)

(assert (=> b!81081 (=> res!41403 e!43965)))

(declare-fun isEmpty!675 (List!663) Bool)

(assert (=> b!81081 (= res!41403 (isEmpty!675 (quickSort!0 less!5)))))

(declare-fun b!81082 () Bool)

(declare-fun e!43964 () Bool)

(declare-fun e!43963 () Bool)

(assert (=> b!81082 (= e!43964 e!43963)))

(declare-fun res!41400 () Bool)

(assert (=> b!81082 (=> res!41400 e!43963)))

(assert (=> b!81082 (= res!41400 (not (forall!18 (quickSort!0 less!5) lambda!9466)))))

(declare-fun d!55635 () Bool)

(assert (=> d!55635 e!43964))

(declare-fun c!20439 () Bool)

(assert (=> d!55635 (= c!20439 (is-Cons!620 (quickSort!0 less!5)))))

(assert (=> d!55635 (= (forall_last!0 (quickSort!0 less!5) lambda!9466) true)))

(declare-fun b!81083 () Bool)

(declare-fun dynLambda!982 (Int Int) Bool)

(declare-fun last!15 (List!663) Int)

(assert (=> b!81083 (= e!43965 (dynLambda!982 lambda!9466 (last!15 (quickSort!0 less!5))))))

(declare-fun b!81084 () Bool)

(assert (=> b!81084 (= e!43963 (dynLambda!982 lambda!9466 (last!15 (quickSort!0 less!5))))))

(declare-fun b!81085 () Bool)

(assert (=> b!81085 (= e!43964 e!43965)))

(declare-fun res!41401 () Bool)

(assert (=> b!81085 (=> res!41401 e!43965)))

(assert (=> b!81085 (= res!41401 (not (forall!18 (quickSort!0 less!5) lambda!9466)))))

(declare-fun lt!18588 () Bool)

(assert (=> b!81085 (= lt!18588 (forall_last!0 (t!47816 (quickSort!0 less!5)) lambda!9466))))

(declare-fun b!81086 () Bool)

(declare-fun res!41402 () Bool)

(assert (=> b!81086 (=> res!41402 e!43963)))

(assert (=> b!81086 (= res!41402 (isEmpty!675 (quickSort!0 less!5)))))

(assert (= (and b!81085 (not res!41401)) b!81081))

(assert (= (and b!81081 (not res!41403)) b!81083))

(assert (= (and b!81082 (not res!41400)) b!81086))

(assert (= (and b!81086 (not res!41402)) b!81084))

(assert (= (and d!55635 c!20439) b!81085))

(assert (= (and d!55635 (not c!20439)) b!81082))

(declare-fun b_lambda!16015 () Bool)

(assert (=> (not b_lambda!16015) (not b!81083)))

(declare-fun b_lambda!16017 () Bool)

(assert (=> (not b_lambda!16017) (not b!81084)))

(assert (=> b!81081 m!75848))

(declare-fun m!75894 () Bool)

(assert (=> b!81081 m!75894))

(assert (=> b!81083 m!75848))

(declare-fun m!75896 () Bool)

(assert (=> b!81083 m!75896))

(assert (=> b!81083 m!75896))

(declare-fun m!75898 () Bool)

(assert (=> b!81083 m!75898))

(assert (=> b!81082 m!75848))

(declare-fun m!75900 () Bool)

(assert (=> b!81082 m!75900))

(assert (=> b!81084 m!75848))

(assert (=> b!81084 m!75896))

(assert (=> b!81084 m!75896))

(assert (=> b!81084 m!75898))

(assert (=> b!81086 m!75848))

(assert (=> b!81086 m!75894))

(assert (=> b!81085 m!75848))

(assert (=> b!81085 m!75900))

(declare-fun m!75902 () Bool)

(assert (=> b!81085 m!75902))

(assert (=> b!81052 d!55635))

(declare-fun bs!38524 () Bool)

(declare-fun b!81098 () Bool)

(assert (= bs!38524 (and b!81098 b!81047)))

(declare-fun lambda!9485 () Int)

(assert (=> bs!38524 (= (= (h!989 less!5) (h!989 ls!96)) (= lambda!9485 lambda!9466))))

(declare-fun bs!38525 () Bool)

(assert (= bs!38525 (and b!81098 b!81067)))

(assert (=> bs!38525 (not (= lambda!9485 lambda!9478))))

(assert (=> bs!38525 (not (= lambda!9485 lambda!9477))))

(assert (=> bs!38525 (= lambda!9485 lambda!9476)))

(declare-fun bs!38526 () Bool)

(assert (= bs!38526 (and b!81098 b!81050)))

(assert (=> bs!38526 (not (= lambda!9485 lambda!9469))))

(declare-fun bs!38527 () Bool)

(assert (= bs!38527 (and b!81098 b!81058)))

(assert (=> bs!38527 (not (= lambda!9485 lambda!9468))))

(declare-fun bs!38528 () Bool)

(assert (= bs!38528 (and b!81098 b!81057)))

(assert (=> bs!38528 (not (= lambda!9485 lambda!9467))))

(assert (=> b!81098 true))

(declare-fun b_next!39195 () Bool)

(assert (=> start!10674 (= b_next!39193 (or (and b!81098 (= lambda!9485 p!852)) b_next!39195))))

(declare-fun lambda!9486 () Int)

(assert (=> bs!38524 (not (= lambda!9486 lambda!9466))))

(assert (=> bs!38525 (not (= lambda!9486 lambda!9478))))

(assert (=> bs!38525 (= lambda!9486 lambda!9477)))

(assert (=> bs!38525 (not (= lambda!9486 lambda!9476))))

(assert (=> bs!38526 (not (= lambda!9486 lambda!9469))))

(assert (=> bs!38527 (not (= lambda!9486 lambda!9468))))

(assert (=> b!81098 (not (= lambda!9486 lambda!9485))))

(assert (=> bs!38528 (= (= (h!989 less!5) (h!989 ls!96)) (= lambda!9486 lambda!9467))))

(assert (=> b!81098 true))

(declare-fun b_next!39197 () Bool)

(assert (=> start!10674 (= b_next!39195 (or (and b!81098 (= lambda!9486 p!852)) b_next!39197))))

(declare-fun lambda!9487 () Int)

(assert (=> bs!38524 (not (= lambda!9487 lambda!9466))))

(assert (=> bs!38525 (= lambda!9487 lambda!9478)))

(assert (=> bs!38525 (not (= lambda!9487 lambda!9477))))

(assert (=> bs!38525 (not (= lambda!9487 lambda!9476))))

(assert (=> bs!38526 (not (= lambda!9487 lambda!9469))))

(assert (=> bs!38527 (= (= (h!989 less!5) (h!989 ls!96)) (= lambda!9487 lambda!9468))))

(assert (=> b!81098 (not (= lambda!9487 lambda!9486))))

(assert (=> b!81098 (not (= lambda!9487 lambda!9485))))

(assert (=> bs!38528 (not (= lambda!9487 lambda!9467))))

(assert (=> b!81098 true))

(declare-fun b_next!39199 () Bool)

(assert (=> start!10674 (= b_next!39197 (or (and b!81098 (= lambda!9487 p!852)) b_next!39199))))

(declare-fun b!81097 () Bool)

(declare-fun e!43971 () List!663)

(assert (=> b!81097 (= e!43971 less!5)))

(declare-fun b!81095 () Bool)

(declare-fun e!43970 () List!663)

(assert (=> b!81095 (= e!43970 Nil!622)))

(assert (=> b!81098 (= e!43971 (++!71 (++!71 (quickSort!0 (filter!16 (t!47816 less!5) lambda!9485)) (Cons!620 (h!989 less!5) (filter!16 (t!47816 less!5) lambda!9486))) (quickSort!0 (filter!16 (t!47816 less!5) lambda!9487))))))

(declare-fun b!81096 () Bool)

(assert (=> b!81096 (= e!43970 e!43971)))

(declare-fun c!20445 () Bool)

(assert (=> b!81096 (= c!20445 (and (is-Cons!620 less!5) (is-Nil!622 (t!47816 less!5))))))

(declare-fun d!55637 () Bool)

(declare-fun c!20444 () Bool)

(assert (=> d!55637 (= c!20444 (is-Nil!622 less!5))))

(assert (=> d!55637 (= (quickSort!0 less!5) e!43970)))

(assert (= (and b!81096 c!20445) b!81097))

(assert (= (and b!81096 (not c!20445)) b!81098))

(assert (= (and d!55637 c!20444) b!81095))

(assert (= (and d!55637 (not c!20444)) b!81096))

(declare-fun m!75904 () Bool)

(assert (=> b!81098 m!75904))

(declare-fun m!75906 () Bool)

(assert (=> b!81098 m!75906))

(assert (=> b!81098 m!75904))

(declare-fun m!75908 () Bool)

(assert (=> b!81098 m!75908))

(declare-fun m!75910 () Bool)

(assert (=> b!81098 m!75910))

(declare-fun m!75912 () Bool)

(assert (=> b!81098 m!75912))

(assert (=> b!81098 m!75906))

(assert (=> b!81098 m!75908))

(declare-fun m!75914 () Bool)

(assert (=> b!81098 m!75914))

(assert (=> b!81098 m!75914))

(assert (=> b!81098 m!75910))

(declare-fun m!75916 () Bool)

(assert (=> b!81098 m!75916))

(assert (=> b!81052 d!55637))

(declare-fun bs!38529 () Bool)

(declare-fun d!55639 () Bool)

(assert (= bs!38529 (and d!55639 b!81047)))

(declare-fun lambda!9490 () Int)

(assert (=> bs!38529 (not (= lambda!9490 lambda!9466))))

(declare-fun bs!38530 () Bool)

(assert (= bs!38530 (and d!55639 b!81067)))

(assert (=> bs!38530 (not (= lambda!9490 lambda!9478))))

(assert (=> bs!38530 (= (= (h!989 ls!96) (h!989 less!5)) (= lambda!9490 lambda!9477))))

(assert (=> bs!38530 (not (= lambda!9490 lambda!9476))))

(declare-fun bs!38531 () Bool)

(assert (= bs!38531 (and d!55639 b!81050)))

(assert (=> bs!38531 (not (= lambda!9490 lambda!9469))))

(declare-fun bs!38532 () Bool)

(assert (= bs!38532 (and d!55639 b!81058)))

(assert (=> bs!38532 (not (= lambda!9490 lambda!9468))))

(declare-fun bs!38533 () Bool)

(assert (= bs!38533 (and d!55639 b!81098)))

(assert (=> bs!38533 (not (= lambda!9490 lambda!9487))))

(assert (=> bs!38533 (= (= (h!989 ls!96) (h!989 less!5)) (= lambda!9490 lambda!9486))))

(assert (=> bs!38533 (not (= lambda!9490 lambda!9485))))

(declare-fun bs!38534 () Bool)

(assert (= bs!38534 (and d!55639 b!81057)))

(assert (=> bs!38534 (= lambda!9490 lambda!9467)))

(assert (=> d!55639 true))

(declare-fun b_next!39201 () Bool)

(assert (=> start!10674 (= b_next!39199 (or (and d!55639 (= lambda!9490 p!852)) b_next!39201))))

(assert (=> d!55639 (isSorted!1 (Cons!620 (h!989 ls!96) (filter!16 (t!47816 ls!96) lambda!9490)))))

(declare-datatypes () ((Unit!1172 (Unit!1173))))

(declare-fun lt!18591 () Unit!1172)

(declare-fun Unit!1174 () Unit!1172)

(assert (=> d!55639 (= lt!18591 Unit!1174)))

(declare-fun filter_equal_sorted!0 (List!663 Int) Bool)

(assert (=> d!55639 (filter_equal_sorted!0 (t!47816 ls!96) (h!989 ls!96))))

(assert (=> d!55639 (= (cons_filter_equal_sorted!0 (t!47816 ls!96) (h!989 ls!96)) true)))

(declare-fun bs!38535 () Bool)

(assert (= bs!38535 d!55639))

(declare-fun m!75918 () Bool)

(assert (=> bs!38535 m!75918))

(declare-fun m!75920 () Bool)

(assert (=> bs!38535 m!75920))

(declare-fun m!75922 () Bool)

(assert (=> bs!38535 m!75922))

(assert (=> b!81051 d!55639))

(declare-fun b!81115 () Bool)

(declare-fun res!41416 () Bool)

(declare-fun e!43980 () Bool)

(assert (=> b!81115 (=> (not res!41416) (not e!43980))))

(declare-fun lt!18596 () List!663)

(declare-fun content!122 (List!663) (Set Int))

(assert (=> b!81115 (= res!41416 (subset (content!122 lt!18596) (content!122 (t!47816 ls!96))))))

(declare-fun b!81116 () Bool)

(declare-fun e!43981 () List!663)

(declare-fun lt!18597 () List!663)

(assert (=> b!81116 (= e!43981 lt!18597)))

(declare-fun b!81117 () Bool)

(declare-fun e!43982 () List!663)

(assert (=> b!81117 (= e!43982 Nil!622)))

(declare-fun b!81118 () Bool)

(assert (=> b!81118 (= e!43980 (forall!18 lt!18596 lambda!9468))))

(declare-fun d!55641 () Bool)

(assert (=> d!55641 e!43980))

(declare-fun res!41415 () Bool)

(assert (=> d!55641 (=> (not res!41415) (not e!43980))))

(declare-fun size!651 (List!663) Int)

(assert (=> d!55641 (= res!41415 (<= (size!651 lt!18596) (size!651 (t!47816 ls!96))))))

(assert (=> d!55641 (= lt!18596 e!43982)))

(declare-fun c!20450 () Bool)

(assert (=> d!55641 (= c!20450 (is-Nil!622 (t!47816 ls!96)))))

(assert (=> d!55641 (= (filter!16 (t!47816 ls!96) lambda!9468) lt!18596)))

(declare-fun b!81119 () Bool)

(assert (=> b!81119 (= e!43982 e!43981)))

(declare-fun c!20451 () Bool)

(declare-fun e!43983 () Bool)

(assert (=> b!81119 (= c!20451 e!43983)))

(declare-fun res!41414 () Bool)

(assert (=> b!81119 (=> (not res!41414) (not e!43983))))

(assert (=> b!81119 (= res!41414 (is-Cons!620 (t!47816 ls!96)))))

(assert (=> b!81119 (= lt!18597 (filter!16 (t!47816 (t!47816 ls!96)) lambda!9468))))

(declare-fun b!81120 () Bool)

(assert (=> b!81120 (= e!43983 (dynLambda!982 lambda!9468 (h!989 (t!47816 ls!96))))))

(declare-fun b!81121 () Bool)

(assert (=> b!81121 (= e!43981 (Cons!620 (h!989 (t!47816 ls!96)) lt!18597))))

(assert (= (and b!81119 res!41414) b!81120))

(assert (= (and b!81119 c!20451) b!81121))

(assert (= (and b!81119 (not c!20451)) b!81116))

(assert (= (and d!55641 c!20450) b!81117))

(assert (= (and d!55641 (not c!20450)) b!81119))

(assert (= (and d!55641 res!41415) b!81115))

(assert (= (and b!81115 res!41416) b!81118))

(declare-fun b_lambda!16019 () Bool)

(assert (=> (not b_lambda!16019) (not b!81120)))

(declare-fun m!75924 () Bool)

(assert (=> b!81115 m!75924))

(declare-fun m!75926 () Bool)

(assert (=> b!81115 m!75926))

(declare-fun m!75928 () Bool)

(assert (=> b!81120 m!75928))

(declare-fun m!75930 () Bool)

(assert (=> d!55641 m!75930))

(declare-fun m!75932 () Bool)

(assert (=> d!55641 m!75932))

(declare-fun m!75934 () Bool)

(assert (=> b!81118 m!75934))

(declare-fun m!75936 () Bool)

(assert (=> b!81119 m!75936))

(assert (=> b!81058 d!55641))

(declare-fun bs!38536 () Bool)

(declare-fun b!81135 () Bool)

(assert (= bs!38536 (and b!81135 b!81047)))

(declare-fun lambda!9503 () Int)

(assert (=> bs!38536 (= (= (h!989 less!5) (h!989 ls!96)) (= lambda!9503 lambda!9466))))

(declare-fun bs!38537 () Bool)

(assert (= bs!38537 (and b!81135 b!81067)))

(assert (=> bs!38537 (not (= lambda!9503 lambda!9478))))

(assert (=> bs!38537 (not (= lambda!9503 lambda!9477))))

(assert (=> bs!38537 (= lambda!9503 lambda!9476)))

(declare-fun bs!38538 () Bool)

(assert (= bs!38538 (and b!81135 b!81050)))

(assert (=> bs!38538 (not (= lambda!9503 lambda!9469))))

(declare-fun bs!38539 () Bool)

(assert (= bs!38539 (and b!81135 b!81058)))

(assert (=> bs!38539 (not (= lambda!9503 lambda!9468))))

(declare-fun bs!38540 () Bool)

(assert (= bs!38540 (and b!81135 d!55639)))

(assert (=> bs!38540 (not (= lambda!9503 lambda!9490))))

(declare-fun bs!38541 () Bool)

(assert (= bs!38541 (and b!81135 b!81098)))

(assert (=> bs!38541 (not (= lambda!9503 lambda!9487))))

(assert (=> bs!38541 (not (= lambda!9503 lambda!9486))))

(assert (=> bs!38541 (= lambda!9503 lambda!9485)))

(declare-fun bs!38542 () Bool)

(assert (= bs!38542 (and b!81135 b!81057)))

(assert (=> bs!38542 (not (= lambda!9503 lambda!9467))))

(assert (=> b!81135 true))

(declare-fun b_next!39203 () Bool)

(assert (=> start!10674 (= b_next!39201 (or (and b!81135 (= lambda!9503 p!852)) b_next!39203))))

(declare-fun lambda!9504 () Int)

(assert (=> bs!38536 (not (= lambda!9504 lambda!9466))))

(assert (=> bs!38537 (not (= lambda!9504 lambda!9478))))

(assert (=> bs!38537 (= lambda!9504 lambda!9477)))

(assert (=> bs!38537 (not (= lambda!9504 lambda!9476))))

(assert (=> b!81135 (not (= lambda!9504 lambda!9503))))

(assert (=> bs!38538 (not (= lambda!9504 lambda!9469))))

(assert (=> bs!38539 (not (= lambda!9504 lambda!9468))))

(assert (=> bs!38540 (= (= (h!989 less!5) (h!989 ls!96)) (= lambda!9504 lambda!9490))))

(assert (=> bs!38541 (not (= lambda!9504 lambda!9487))))

(assert (=> bs!38541 (= lambda!9504 lambda!9486)))

(assert (=> bs!38541 (not (= lambda!9504 lambda!9485))))

(assert (=> bs!38542 (= (= (h!989 less!5) (h!989 ls!96)) (= lambda!9504 lambda!9467))))

(assert (=> b!81135 true))

(declare-fun b_next!39205 () Bool)

(assert (=> start!10674 (= b_next!39203 (or (and b!81135 (= lambda!9504 p!852)) b_next!39205))))

(declare-fun lambda!9505 () Int)

(assert (=> bs!38536 (not (= lambda!9505 lambda!9466))))

(assert (=> bs!38537 (= lambda!9505 lambda!9478)))

(assert (=> bs!38537 (not (= lambda!9505 lambda!9477))))

(assert (=> bs!38537 (not (= lambda!9505 lambda!9476))))

(assert (=> b!81135 (not (= lambda!9505 lambda!9504))))

(assert (=> b!81135 (not (= lambda!9505 lambda!9503))))

(assert (=> bs!38538 (not (= lambda!9505 lambda!9469))))

(assert (=> bs!38539 (= (= (h!989 less!5) (h!989 ls!96)) (= lambda!9505 lambda!9468))))

(assert (=> bs!38540 (not (= lambda!9505 lambda!9490))))

(assert (=> bs!38541 (= lambda!9505 lambda!9487)))

(assert (=> bs!38541 (not (= lambda!9505 lambda!9486))))

(assert (=> bs!38541 (not (= lambda!9505 lambda!9485))))

(assert (=> bs!38542 (not (= lambda!9505 lambda!9467))))

(assert (=> b!81135 true))

(declare-fun b_next!39207 () Bool)

(assert (=> start!10674 (= b_next!39205 (or (and b!81135 (= lambda!9505 p!852)) b_next!39207))))

(declare-fun e!43997 () Bool)

(declare-fun b!81132 () Bool)

(declare-fun filter_preserves_forall!0 (List!663 Int Int) Bool)

(assert (=> b!81132 (= e!43997 (filter_preserves_forall!0 (t!47816 less!5) lambda!9504 lambda!9466))))

(declare-fun e!43998 () Bool)

(declare-fun b!81133 () Bool)

(assert (=> b!81133 (= e!43998 (filter_preserves_forall!0 (t!47816 less!5) lambda!9505 lambda!9466))))

(declare-fun lt!18612 () List!663)

(declare-fun lt!18611 () List!663)

(declare-fun e!43995 () Bool)

(declare-fun lt!18615 () List!663)

(declare-fun b!81134 () Bool)

(declare-fun append_preserves_forall!0 (List!663 List!663 Int) Bool)

(assert (=> b!81134 (= e!43995 (append_preserves_forall!0 (++!71 (quickSort!0 lt!18611) lt!18615) (quickSort!0 lt!18612) lambda!9466))))

(declare-fun d!55643 () Bool)

(assert (=> d!55643 (forall!18 (quickSort!0 less!5) lambda!9466)))

(declare-fun lt!18610 () Bool)

(declare-fun e!43994 () Bool)

(assert (=> d!55643 (= lt!18610 e!43994)))

(declare-fun res!41434 () Bool)

(assert (=> d!55643 (=> res!41434 e!43994)))

(assert (=> d!55643 (= res!41434 (or (is-Nil!622 less!5) (and (is-Cons!620 less!5) (is-Nil!622 (t!47816 less!5)))))))

(assert (=> d!55643 (forall!18 less!5 lambda!9466)))

(assert (=> d!55643 (= (sort_preserves_forall!0 less!5 lambda!9466) true)))

(assert (=> b!81135 (= e!43994 e!43995)))

(declare-fun res!41432 () Bool)

(assert (=> b!81135 (=> (not res!41432) (not e!43995))))

(assert (=> b!81135 (= res!41432 (append_preserves_forall!0 (quickSort!0 lt!18611) lt!18615 lambda!9466))))

(declare-fun lt!18613 () Bool)

(declare-fun e!43996 () Bool)

(assert (=> b!81135 (= lt!18613 e!43996)))

(declare-fun res!41436 () Bool)

(assert (=> b!81135 (=> (not res!41436) (not e!43996))))

(assert (=> b!81135 (= res!41436 (sort_preserves_forall!0 lt!18611 lambda!9466))))

(declare-fun lt!18614 () Bool)

(assert (=> b!81135 (= lt!18614 e!43998)))

(declare-fun res!41435 () Bool)

(assert (=> b!81135 (=> (not res!41435) (not e!43998))))

(assert (=> b!81135 (= res!41435 e!43997)))

(declare-fun res!41433 () Bool)

(assert (=> b!81135 (=> (not res!41433) (not e!43997))))

(assert (=> b!81135 (= res!41433 (filter_preserves_forall!0 (t!47816 less!5) lambda!9503 lambda!9466))))

(assert (=> b!81135 (= lt!18612 (filter!16 (t!47816 less!5) lambda!9505))))

(assert (=> b!81135 (= lt!18615 (Cons!620 (h!989 less!5) (filter!16 (t!47816 less!5) lambda!9504)))))

(assert (=> b!81135 (= lt!18611 (filter!16 (t!47816 less!5) lambda!9503))))

(declare-fun b!81136 () Bool)

(assert (=> b!81136 (= e!43996 (sort_preserves_forall!0 lt!18612 lambda!9466))))

(assert (= (and d!55643 (not res!41434)) b!81135))

(assert (= (and b!81135 res!41433) b!81132))

(assert (= (and b!81135 res!41435) b!81133))

(assert (= (and b!81135 res!41436) b!81136))

(assert (= (and b!81135 res!41432) b!81134))

(declare-fun m!75938 () Bool)

(assert (=> b!81132 m!75938))

(assert (=> d!55643 m!75848))

(assert (=> d!55643 m!75848))

(assert (=> d!55643 m!75900))

(declare-fun m!75940 () Bool)

(assert (=> d!55643 m!75940))

(declare-fun m!75942 () Bool)

(assert (=> b!81135 m!75942))

(declare-fun m!75944 () Bool)

(assert (=> b!81135 m!75944))

(declare-fun m!75946 () Bool)

(assert (=> b!81135 m!75946))

(declare-fun m!75948 () Bool)

(assert (=> b!81135 m!75948))

(declare-fun m!75950 () Bool)

(assert (=> b!81135 m!75950))

(declare-fun m!75952 () Bool)

(assert (=> b!81135 m!75952))

(assert (=> b!81135 m!75944))

(declare-fun m!75954 () Bool)

(assert (=> b!81135 m!75954))

(declare-fun m!75956 () Bool)

(assert (=> b!81136 m!75956))

(declare-fun m!75958 () Bool)

(assert (=> b!81133 m!75958))

(assert (=> b!81134 m!75944))

(assert (=> b!81134 m!75944))

(declare-fun m!75960 () Bool)

(assert (=> b!81134 m!75960))

(declare-fun m!75962 () Bool)

(assert (=> b!81134 m!75962))

(assert (=> b!81134 m!75960))

(assert (=> b!81134 m!75962))

(declare-fun m!75964 () Bool)

(assert (=> b!81134 m!75964))

(assert (=> b!81055 d!55643))

(declare-fun b!81137 () Bool)

(declare-fun res!41439 () Bool)

(declare-fun e!43999 () Bool)

(assert (=> b!81137 (=> (not res!41439) (not e!43999))))

(declare-fun lt!18616 () List!663)

(assert (=> b!81137 (= res!41439 (subset (content!122 lt!18616) (content!122 (t!47816 ls!96))))))

(declare-fun b!81138 () Bool)

(declare-fun e!44000 () List!663)

(declare-fun lt!18617 () List!663)

(assert (=> b!81138 (= e!44000 lt!18617)))

(declare-fun b!81139 () Bool)

(declare-fun e!44001 () List!663)

(assert (=> b!81139 (= e!44001 Nil!622)))

(declare-fun b!81140 () Bool)

(assert (=> b!81140 (= e!43999 (forall!18 lt!18616 lambda!9467))))

(declare-fun d!55645 () Bool)

(assert (=> d!55645 e!43999))

(declare-fun res!41438 () Bool)

(assert (=> d!55645 (=> (not res!41438) (not e!43999))))

(assert (=> d!55645 (= res!41438 (<= (size!651 lt!18616) (size!651 (t!47816 ls!96))))))

(assert (=> d!55645 (= lt!18616 e!44001)))

(declare-fun c!20452 () Bool)

(assert (=> d!55645 (= c!20452 (is-Nil!622 (t!47816 ls!96)))))

(assert (=> d!55645 (= (filter!16 (t!47816 ls!96) lambda!9467) lt!18616)))

(declare-fun b!81141 () Bool)

(assert (=> b!81141 (= e!44001 e!44000)))

(declare-fun c!20453 () Bool)

(declare-fun e!44002 () Bool)

(assert (=> b!81141 (= c!20453 e!44002)))

(declare-fun res!41437 () Bool)

(assert (=> b!81141 (=> (not res!41437) (not e!44002))))

(assert (=> b!81141 (= res!41437 (is-Cons!620 (t!47816 ls!96)))))

(assert (=> b!81141 (= lt!18617 (filter!16 (t!47816 (t!47816 ls!96)) lambda!9467))))

(declare-fun b!81142 () Bool)

(assert (=> b!81142 (= e!44002 (dynLambda!982 lambda!9467 (h!989 (t!47816 ls!96))))))

(declare-fun b!81143 () Bool)

(assert (=> b!81143 (= e!44000 (Cons!620 (h!989 (t!47816 ls!96)) lt!18617))))

(assert (= (and b!81141 res!41437) b!81142))

(assert (= (and b!81141 c!20453) b!81143))

(assert (= (and b!81141 (not c!20453)) b!81138))

(assert (= (and d!55645 c!20452) b!81139))

(assert (= (and d!55645 (not c!20452)) b!81141))

(assert (= (and d!55645 res!41438) b!81137))

(assert (= (and b!81137 res!41439) b!81140))

(declare-fun b_lambda!16021 () Bool)

(assert (=> (not b_lambda!16021) (not b!81142)))

(declare-fun m!75966 () Bool)

(assert (=> b!81137 m!75966))

(assert (=> b!81137 m!75926))

(declare-fun m!75968 () Bool)

(assert (=> b!81142 m!75968))

(declare-fun m!75970 () Bool)

(assert (=> d!55645 m!75970))

(assert (=> d!55645 m!75932))

(declare-fun m!75972 () Bool)

(assert (=> b!81140 m!75972))

(declare-fun m!75974 () Bool)

(assert (=> b!81141 m!75974))

(assert (=> b!81057 d!55645))

(declare-fun bs!38543 () Bool)

(declare-fun b!81147 () Bool)

(assert (= bs!38543 (and b!81147 b!81047)))

(declare-fun lambda!9506 () Int)

(assert (=> bs!38543 (= (= (h!989 less!5) (h!989 ls!96)) (= lambda!9506 lambda!9466))))

(declare-fun bs!38544 () Bool)

(assert (= bs!38544 (and b!81147 b!81067)))

(assert (=> bs!38544 (not (= lambda!9506 lambda!9478))))

(assert (=> bs!38544 (not (= lambda!9506 lambda!9477))))

(assert (=> bs!38544 (= lambda!9506 lambda!9476)))

(declare-fun bs!38545 () Bool)

(assert (= bs!38545 (and b!81147 b!81135)))

(assert (=> bs!38545 (not (= lambda!9506 lambda!9505))))

(assert (=> bs!38545 (not (= lambda!9506 lambda!9504))))

(assert (=> bs!38545 (= lambda!9506 lambda!9503)))

(declare-fun bs!38546 () Bool)

(assert (= bs!38546 (and b!81147 b!81050)))

(assert (=> bs!38546 (not (= lambda!9506 lambda!9469))))

(declare-fun bs!38547 () Bool)

(assert (= bs!38547 (and b!81147 b!81058)))

(assert (=> bs!38547 (not (= lambda!9506 lambda!9468))))

(declare-fun bs!38548 () Bool)

(assert (= bs!38548 (and b!81147 d!55639)))

(assert (=> bs!38548 (not (= lambda!9506 lambda!9490))))

(declare-fun bs!38549 () Bool)

(assert (= bs!38549 (and b!81147 b!81098)))

(assert (=> bs!38549 (not (= lambda!9506 lambda!9487))))

(assert (=> bs!38549 (not (= lambda!9506 lambda!9486))))

(assert (=> bs!38549 (= lambda!9506 lambda!9485)))

(declare-fun bs!38550 () Bool)

(assert (= bs!38550 (and b!81147 b!81057)))

(assert (=> bs!38550 (not (= lambda!9506 lambda!9467))))

(assert (=> b!81147 true))

(declare-fun b_next!39209 () Bool)

(assert (=> start!10674 (= b_next!39207 (or (and b!81147 (= lambda!9506 p!852)) b_next!39209))))

(declare-fun lambda!9507 () Int)

(assert (=> bs!38543 (not (= lambda!9507 lambda!9466))))

(assert (=> bs!38544 (not (= lambda!9507 lambda!9478))))

(assert (=> bs!38544 (= lambda!9507 lambda!9477)))

(assert (=> bs!38544 (not (= lambda!9507 lambda!9476))))

(assert (=> bs!38545 (not (= lambda!9507 lambda!9505))))

(assert (=> bs!38545 (= lambda!9507 lambda!9504)))

(assert (=> bs!38545 (not (= lambda!9507 lambda!9503))))

(assert (=> bs!38546 (not (= lambda!9507 lambda!9469))))

(assert (=> bs!38547 (not (= lambda!9507 lambda!9468))))

(assert (=> bs!38548 (= (= (h!989 less!5) (h!989 ls!96)) (= lambda!9507 lambda!9490))))

(assert (=> bs!38549 (not (= lambda!9507 lambda!9487))))

(assert (=> bs!38549 (= lambda!9507 lambda!9486)))

(assert (=> bs!38549 (not (= lambda!9507 lambda!9485))))

(assert (=> bs!38550 (= (= (h!989 less!5) (h!989 ls!96)) (= lambda!9507 lambda!9467))))

(assert (=> b!81147 (not (= lambda!9507 lambda!9506))))

(assert (=> b!81147 true))

(declare-fun b_next!39211 () Bool)

(assert (=> start!10674 (= b_next!39209 (or (and b!81147 (= lambda!9507 p!852)) b_next!39211))))

(declare-fun lambda!9508 () Int)

(assert (=> bs!38543 (not (= lambda!9508 lambda!9466))))

(assert (=> bs!38544 (= lambda!9508 lambda!9478)))

(assert (=> bs!38544 (not (= lambda!9508 lambda!9477))))

(assert (=> bs!38544 (not (= lambda!9508 lambda!9476))))

(assert (=> bs!38545 (= lambda!9508 lambda!9505)))

(assert (=> bs!38545 (not (= lambda!9508 lambda!9504))))

(assert (=> bs!38545 (not (= lambda!9508 lambda!9503))))

(assert (=> bs!38546 (not (= lambda!9508 lambda!9469))))

(assert (=> bs!38547 (= (= (h!989 less!5) (h!989 ls!96)) (= lambda!9508 lambda!9468))))

(assert (=> bs!38548 (not (= lambda!9508 lambda!9490))))

(assert (=> bs!38549 (= lambda!9508 lambda!9487)))

(assert (=> bs!38549 (not (= lambda!9508 lambda!9486))))

(assert (=> bs!38549 (not (= lambda!9508 lambda!9485))))

(assert (=> bs!38550 (not (= lambda!9508 lambda!9467))))

(assert (=> b!81147 (not (= lambda!9508 lambda!9507))))

(assert (=> b!81147 (not (= lambda!9508 lambda!9506))))

(assert (=> b!81147 true))

(declare-fun b_next!39213 () Bool)

(assert (=> start!10674 (= b_next!39211 (or (and b!81147 (= lambda!9508 p!852)) b_next!39213))))

(declare-fun b!81144 () Bool)

(declare-fun e!44006 () Bool)

(assert (=> b!81144 (= e!44006 (filter_preserves_forall!0 (t!47816 less!5) lambda!9507 lambda!9469))))

(declare-fun e!44007 () Bool)

(declare-fun b!81145 () Bool)

(assert (=> b!81145 (= e!44007 (filter_preserves_forall!0 (t!47816 less!5) lambda!9508 lambda!9469))))

(declare-fun lt!18620 () List!663)

(declare-fun e!44004 () Bool)

(declare-fun lt!18619 () List!663)

(declare-fun b!81146 () Bool)

(declare-fun lt!18623 () List!663)

(assert (=> b!81146 (= e!44004 (append_preserves_forall!0 (++!71 (quickSort!0 lt!18619) lt!18623) (quickSort!0 lt!18620) lambda!9469))))

(declare-fun d!55647 () Bool)

(assert (=> d!55647 (forall!18 (quickSort!0 less!5) lambda!9469)))

(declare-fun lt!18618 () Bool)

(declare-fun e!44003 () Bool)

(assert (=> d!55647 (= lt!18618 e!44003)))

(declare-fun res!41442 () Bool)

(assert (=> d!55647 (=> res!41442 e!44003)))

(assert (=> d!55647 (= res!41442 (or (is-Nil!622 less!5) (and (is-Cons!620 less!5) (is-Nil!622 (t!47816 less!5)))))))

(assert (=> d!55647 (forall!18 less!5 lambda!9469)))

(assert (=> d!55647 (= (sort_preserves_forall!0 less!5 lambda!9469) true)))

(assert (=> b!81147 (= e!44003 e!44004)))

(declare-fun res!41440 () Bool)

(assert (=> b!81147 (=> (not res!41440) (not e!44004))))

(assert (=> b!81147 (= res!41440 (append_preserves_forall!0 (quickSort!0 lt!18619) lt!18623 lambda!9469))))

(declare-fun lt!18621 () Bool)

(declare-fun e!44005 () Bool)

(assert (=> b!81147 (= lt!18621 e!44005)))

(declare-fun res!41444 () Bool)

(assert (=> b!81147 (=> (not res!41444) (not e!44005))))

(assert (=> b!81147 (= res!41444 (sort_preserves_forall!0 lt!18619 lambda!9469))))

(declare-fun lt!18622 () Bool)

(assert (=> b!81147 (= lt!18622 e!44007)))

(declare-fun res!41443 () Bool)

(assert (=> b!81147 (=> (not res!41443) (not e!44007))))

(assert (=> b!81147 (= res!41443 e!44006)))

(declare-fun res!41441 () Bool)

(assert (=> b!81147 (=> (not res!41441) (not e!44006))))

(assert (=> b!81147 (= res!41441 (filter_preserves_forall!0 (t!47816 less!5) lambda!9506 lambda!9469))))

(assert (=> b!81147 (= lt!18620 (filter!16 (t!47816 less!5) lambda!9508))))

(assert (=> b!81147 (= lt!18623 (Cons!620 (h!989 less!5) (filter!16 (t!47816 less!5) lambda!9507)))))

(assert (=> b!81147 (= lt!18619 (filter!16 (t!47816 less!5) lambda!9506))))

(declare-fun b!81148 () Bool)

(assert (=> b!81148 (= e!44005 (sort_preserves_forall!0 lt!18620 lambda!9469))))

(assert (= (and d!55647 (not res!41442)) b!81147))

(assert (= (and b!81147 res!41441) b!81144))

(assert (= (and b!81147 res!41443) b!81145))

(assert (= (and b!81147 res!41444) b!81148))

(assert (= (and b!81147 res!41440) b!81146))

(declare-fun m!75976 () Bool)

(assert (=> b!81144 m!75976))

(assert (=> d!55647 m!75848))

(assert (=> d!55647 m!75848))

(declare-fun m!75978 () Bool)

(assert (=> d!55647 m!75978))

(declare-fun m!75980 () Bool)

(assert (=> d!55647 m!75980))

(declare-fun m!75982 () Bool)

(assert (=> b!81147 m!75982))

(declare-fun m!75984 () Bool)

(assert (=> b!81147 m!75984))

(declare-fun m!75986 () Bool)

(assert (=> b!81147 m!75986))

(declare-fun m!75988 () Bool)

(assert (=> b!81147 m!75988))

(declare-fun m!75990 () Bool)

(assert (=> b!81147 m!75990))

(declare-fun m!75992 () Bool)

(assert (=> b!81147 m!75992))

(assert (=> b!81147 m!75984))

(declare-fun m!75994 () Bool)

(assert (=> b!81147 m!75994))

(declare-fun m!75996 () Bool)

(assert (=> b!81148 m!75996))

(declare-fun m!75998 () Bool)

(assert (=> b!81145 m!75998))

(assert (=> b!81146 m!75984))

(assert (=> b!81146 m!75984))

(declare-fun m!76000 () Bool)

(assert (=> b!81146 m!76000))

(declare-fun m!76002 () Bool)

(assert (=> b!81146 m!76002))

(assert (=> b!81146 m!76000))

(assert (=> b!81146 m!76002))

(declare-fun m!76004 () Bool)

(assert (=> b!81146 m!76004))

(assert (=> b!81050 d!55647))

(declare-fun b!81149 () Bool)

(declare-fun res!41447 () Bool)

(declare-fun e!44008 () Bool)

(assert (=> b!81149 (=> (not res!41447) (not e!44008))))

(declare-fun lt!18624 () List!663)

(assert (=> b!81149 (= res!41447 (subset (content!122 lt!18624) (content!122 (t!47816 ls!96))))))

(declare-fun b!81150 () Bool)

(declare-fun e!44009 () List!663)

(declare-fun lt!18625 () List!663)

(assert (=> b!81150 (= e!44009 lt!18625)))

(declare-fun b!81151 () Bool)

(declare-fun e!44010 () List!663)

(assert (=> b!81151 (= e!44010 Nil!622)))

(declare-fun b!81152 () Bool)

(assert (=> b!81152 (= e!44008 (forall!18 lt!18624 lambda!9466))))

(declare-fun d!55649 () Bool)

(assert (=> d!55649 e!44008))

(declare-fun res!41446 () Bool)

(assert (=> d!55649 (=> (not res!41446) (not e!44008))))

(assert (=> d!55649 (= res!41446 (<= (size!651 lt!18624) (size!651 (t!47816 ls!96))))))

(assert (=> d!55649 (= lt!18624 e!44010)))

(declare-fun c!20454 () Bool)

(assert (=> d!55649 (= c!20454 (is-Nil!622 (t!47816 ls!96)))))

(assert (=> d!55649 (= (filter!16 (t!47816 ls!96) lambda!9466) lt!18624)))

(declare-fun b!81153 () Bool)

(assert (=> b!81153 (= e!44010 e!44009)))

(declare-fun c!20455 () Bool)

(declare-fun e!44011 () Bool)

(assert (=> b!81153 (= c!20455 e!44011)))

(declare-fun res!41445 () Bool)

(assert (=> b!81153 (=> (not res!41445) (not e!44011))))

(assert (=> b!81153 (= res!41445 (is-Cons!620 (t!47816 ls!96)))))

(assert (=> b!81153 (= lt!18625 (filter!16 (t!47816 (t!47816 ls!96)) lambda!9466))))

(declare-fun b!81154 () Bool)

(assert (=> b!81154 (= e!44011 (dynLambda!982 lambda!9466 (h!989 (t!47816 ls!96))))))

(declare-fun b!81155 () Bool)

(assert (=> b!81155 (= e!44009 (Cons!620 (h!989 (t!47816 ls!96)) lt!18625))))

(assert (= (and b!81153 res!41445) b!81154))

(assert (= (and b!81153 c!20455) b!81155))

(assert (= (and b!81153 (not c!20455)) b!81150))

(assert (= (and d!55649 c!20454) b!81151))

(assert (= (and d!55649 (not c!20454)) b!81153))

(assert (= (and d!55649 res!41446) b!81149))

(assert (= (and b!81149 res!41447) b!81152))

(declare-fun b_lambda!16023 () Bool)

(assert (=> (not b_lambda!16023) (not b!81154)))

(declare-fun m!76006 () Bool)

(assert (=> b!81149 m!76006))

(assert (=> b!81149 m!75926))

(declare-fun m!76008 () Bool)

(assert (=> b!81154 m!76008))

(declare-fun m!76010 () Bool)

(assert (=> d!55649 m!76010))

(assert (=> d!55649 m!75932))

(declare-fun m!76012 () Bool)

(assert (=> b!81152 m!76012))

(declare-fun m!76014 () Bool)

(assert (=> b!81153 m!76014))

(assert (=> b!81047 d!55649))

(declare-fun bs!38551 () Bool)

(declare-fun d!55651 () Bool)

(assert (= bs!38551 (and d!55651 b!81047)))

(declare-fun lambda!9515 () Int)

(assert (=> bs!38551 (= lambda!9515 lambda!9466)))

(declare-fun bs!38552 () Bool)

(assert (= bs!38552 (and d!55651 b!81067)))

(assert (=> bs!38552 (not (= lambda!9515 lambda!9478))))

(assert (=> bs!38552 (not (= lambda!9515 lambda!9477))))

(assert (=> bs!38552 (= (= (h!989 ls!96) (h!989 less!5)) (= lambda!9515 lambda!9476))))

(declare-fun bs!38553 () Bool)

(assert (= bs!38553 (and d!55651 b!81135)))

(assert (=> bs!38553 (not (= lambda!9515 lambda!9505))))

(assert (=> bs!38553 (not (= lambda!9515 lambda!9504))))

(assert (=> bs!38553 (= (= (h!989 ls!96) (h!989 less!5)) (= lambda!9515 lambda!9503))))

(declare-fun bs!38554 () Bool)

(assert (= bs!38554 (and d!55651 b!81050)))

(assert (=> bs!38554 (not (= lambda!9515 lambda!9469))))

(declare-fun bs!38555 () Bool)

(assert (= bs!38555 (and d!55651 b!81058)))

(assert (=> bs!38555 (not (= lambda!9515 lambda!9468))))

(declare-fun bs!38556 () Bool)

(assert (= bs!38556 (and d!55651 d!55639)))

(assert (=> bs!38556 (not (= lambda!9515 lambda!9490))))

(declare-fun bs!38557 () Bool)

(assert (= bs!38557 (and d!55651 b!81098)))

(assert (=> bs!38557 (not (= lambda!9515 lambda!9487))))

(assert (=> bs!38557 (not (= lambda!9515 lambda!9486))))

(assert (=> bs!38557 (= (= (h!989 ls!96) (h!989 less!5)) (= lambda!9515 lambda!9485))))

(declare-fun bs!38558 () Bool)

(assert (= bs!38558 (and d!55651 b!81057)))

(assert (=> bs!38558 (not (= lambda!9515 lambda!9467))))

(declare-fun bs!38559 () Bool)

(assert (= bs!38559 (and d!55651 b!81147)))

(assert (=> bs!38559 (not (= lambda!9515 lambda!9508))))

(assert (=> bs!38559 (not (= lambda!9515 lambda!9507))))

(assert (=> bs!38559 (= (= (h!989 ls!96) (h!989 less!5)) (= lambda!9515 lambda!9506))))

(assert (=> d!55651 true))

(declare-fun b_next!39215 () Bool)

(assert (=> start!10674 (= b_next!39213 (or (and d!55651 (= lambda!9515 p!852)) b_next!39215))))

(declare-fun bs!38560 () Bool)

(declare-fun b!81160 () Bool)

(assert (= bs!38560 (and b!81160 b!81047)))

(declare-fun lambda!9516 () Int)

(assert (=> bs!38560 (not (= lambda!9516 lambda!9466))))

(declare-fun bs!38561 () Bool)

(assert (= bs!38561 (and b!81160 b!81067)))

(assert (=> bs!38561 (not (= lambda!9516 lambda!9478))))

(assert (=> bs!38561 (not (= lambda!9516 lambda!9477))))

(assert (=> bs!38561 (not (= lambda!9516 lambda!9476))))

(declare-fun bs!38562 () Bool)

(assert (= bs!38562 (and b!81160 b!81135)))

(assert (=> bs!38562 (not (= lambda!9516 lambda!9505))))

(assert (=> bs!38562 (not (= lambda!9516 lambda!9504))))

(assert (=> bs!38562 (not (= lambda!9516 lambda!9503))))

(declare-fun bs!38563 () Bool)

(assert (= bs!38563 (and b!81160 b!81050)))

(assert (=> bs!38563 (= lambda!9516 lambda!9469)))

(declare-fun bs!38564 () Bool)

(assert (= bs!38564 (and b!81160 b!81058)))

(assert (=> bs!38564 (not (= lambda!9516 lambda!9468))))

(declare-fun bs!38565 () Bool)

(assert (= bs!38565 (and b!81160 d!55639)))

(assert (=> bs!38565 (not (= lambda!9516 lambda!9490))))

(declare-fun bs!38566 () Bool)

(assert (= bs!38566 (and b!81160 d!55651)))

(assert (=> bs!38566 (not (= lambda!9516 lambda!9515))))

(declare-fun bs!38567 () Bool)

(assert (= bs!38567 (and b!81160 b!81098)))

(assert (=> bs!38567 (not (= lambda!9516 lambda!9487))))

(assert (=> bs!38567 (not (= lambda!9516 lambda!9486))))

(assert (=> bs!38567 (not (= lambda!9516 lambda!9485))))

(declare-fun bs!38568 () Bool)

(assert (= bs!38568 (and b!81160 b!81057)))

(assert (=> bs!38568 (not (= lambda!9516 lambda!9467))))

(declare-fun bs!38569 () Bool)

(assert (= bs!38569 (and b!81160 b!81147)))

(assert (=> bs!38569 (not (= lambda!9516 lambda!9508))))

(assert (=> bs!38569 (not (= lambda!9516 lambda!9507))))

(assert (=> bs!38569 (not (= lambda!9516 lambda!9506))))

(assert (=> b!81160 true))

(declare-fun b_next!39217 () Bool)

(assert (=> start!10674 (= b_next!39215 (or (and b!81160 (= lambda!9516 p!852)) b_next!39217))))

(declare-fun bs!38570 () Bool)

(declare-fun b!81161 () Bool)

(assert (= bs!38570 (and b!81161 b!81160)))

(declare-fun lambda!9517 () Int)

(assert (=> bs!38570 (= lambda!9517 lambda!9516)))

(declare-fun bs!38571 () Bool)

(assert (= bs!38571 (and b!81161 b!81047)))

(assert (=> bs!38571 (not (= lambda!9517 lambda!9466))))

(declare-fun bs!38572 () Bool)

(assert (= bs!38572 (and b!81161 b!81067)))

(assert (=> bs!38572 (not (= lambda!9517 lambda!9478))))

(assert (=> bs!38572 (not (= lambda!9517 lambda!9477))))

(assert (=> bs!38572 (not (= lambda!9517 lambda!9476))))

(declare-fun bs!38573 () Bool)

(assert (= bs!38573 (and b!81161 b!81135)))

(assert (=> bs!38573 (not (= lambda!9517 lambda!9505))))

(assert (=> bs!38573 (not (= lambda!9517 lambda!9504))))

(assert (=> bs!38573 (not (= lambda!9517 lambda!9503))))

(declare-fun bs!38574 () Bool)

(assert (= bs!38574 (and b!81161 b!81050)))

(assert (=> bs!38574 (= lambda!9517 lambda!9469)))

(declare-fun bs!38575 () Bool)

(assert (= bs!38575 (and b!81161 b!81058)))

(assert (=> bs!38575 (not (= lambda!9517 lambda!9468))))

(declare-fun bs!38576 () Bool)

(assert (= bs!38576 (and b!81161 d!55639)))

(assert (=> bs!38576 (not (= lambda!9517 lambda!9490))))

(declare-fun bs!38577 () Bool)

(assert (= bs!38577 (and b!81161 d!55651)))

(assert (=> bs!38577 (not (= lambda!9517 lambda!9515))))

(declare-fun bs!38578 () Bool)

(assert (= bs!38578 (and b!81161 b!81098)))

(assert (=> bs!38578 (not (= lambda!9517 lambda!9487))))

(assert (=> bs!38578 (not (= lambda!9517 lambda!9486))))

(assert (=> bs!38578 (not (= lambda!9517 lambda!9485))))

(declare-fun bs!38579 () Bool)

(assert (= bs!38579 (and b!81161 b!81057)))

(assert (=> bs!38579 (not (= lambda!9517 lambda!9467))))

(declare-fun bs!38580 () Bool)

(assert (= bs!38580 (and b!81161 b!81147)))

(assert (=> bs!38580 (not (= lambda!9517 lambda!9508))))

(assert (=> bs!38580 (not (= lambda!9517 lambda!9507))))

(assert (=> bs!38580 (not (= lambda!9517 lambda!9506))))

(assert (=> b!81161 true))

(declare-fun b_next!39219 () Bool)

(assert (=> start!10674 (= b_next!39217 (or (and b!81161 (= lambda!9517 p!852)) b_next!39219))))

(declare-fun e!44014 () Bool)

(assert (=> d!55651 e!44014))

(declare-fun c!20458 () Bool)

(assert (=> d!55651 (= c!20458 (is-Cons!620 less!5))))

(assert (=> d!55651 (forall!18 less!5 lambda!9515)))

(assert (=> d!55651 (= (forall_lt_implies_le!0 less!5 (h!989 ls!96)) true)))

(assert (=> b!81160 (= e!44014 (forall!18 less!5 lambda!9516))))

(declare-fun lt!18628 () Bool)

(assert (=> b!81160 (= lt!18628 (forall_lt_implies_le!0 (t!47816 less!5) (h!989 ls!96)))))

(assert (=> b!81161 (= e!44014 (forall!18 less!5 lambda!9517))))

(assert (= (and d!55651 c!20458) b!81160))

(assert (= (and d!55651 (not c!20458)) b!81161))

(declare-fun m!76016 () Bool)

(assert (=> d!55651 m!76016))

(declare-fun m!76018 () Bool)

(assert (=> b!81160 m!76018))

(declare-fun m!76020 () Bool)

(assert (=> b!81160 m!76020))

(declare-fun m!76022 () Bool)

(assert (=> b!81161 m!76022))

(assert (=> b!81060 d!55651))

(assert (=> b!81048 d!55637))

(declare-fun d!55653 () Bool)

(declare-fun res!41452 () Bool)

(declare-fun e!44019 () Bool)

(assert (=> d!55653 (=> res!41452 e!44019)))

(assert (=> d!55653 (= res!41452 (is-Nil!622 l2!435))))

(assert (=> d!55653 (= (forall!18 l2!435 p!852) e!44019)))

(declare-fun b!81166 () Bool)

(declare-fun e!44020 () Bool)

(assert (=> b!81166 (= e!44019 e!44020)))

(declare-fun res!41453 () Bool)

(assert (=> b!81166 (=> (not res!41453) (not e!44020))))

(assert (=> b!81166 (= res!41453 (dynLambda!982 p!852 (h!989 l2!435)))))

(declare-fun b!81167 () Bool)

(assert (=> b!81167 (= e!44020 (forall!18 (t!47816 l2!435) p!852))))

(assert (= (and d!55653 (not res!41452)) b!81166))

(assert (= (and b!81166 res!41453) b!81167))

(declare-fun b_lambda!16025 () Bool)

(assert (=> (not b_lambda!16025) (not b!81166)))

(declare-fun t!47825 () Bool)

(declare-fun tb!46203 () Bool)

(assert (=> (and start!10674 (= p!852 p!852) t!47825) tb!46203))

(declare-fun result!46633 () Bool)

(assert (=> tb!46203 (= result!46633 true)))

(assert (=> b!81166 t!47825))

(declare-fun b_and!58881 () Bool)

(assert (= b_and!58879 (and (=> t!47825 result!46633) b_and!58881)))

(declare-fun m!76024 () Bool)

(assert (=> b!81166 m!76024))

(declare-fun m!76026 () Bool)

(assert (=> b!81167 m!76026))

(assert (=> b!81054 d!55653))

(declare-fun bs!38581 () Bool)

(declare-fun d!55655 () Bool)

(assert (= bs!38581 (and d!55655 b!81161)))

(declare-fun lambda!9524 () Int)

(assert (=> bs!38581 (not (= lambda!9524 lambda!9517))))

(declare-fun bs!38582 () Bool)

(assert (= bs!38582 (and d!55655 b!81160)))

(assert (=> bs!38582 (not (= lambda!9524 lambda!9516))))

(declare-fun bs!38583 () Bool)

(assert (= bs!38583 (and d!55655 b!81047)))

(assert (=> bs!38583 (not (= lambda!9524 lambda!9466))))

(declare-fun bs!38584 () Bool)

(assert (= bs!38584 (and d!55655 b!81067)))

(assert (=> bs!38584 (not (= lambda!9524 lambda!9478))))

(assert (=> bs!38584 (= (= (h!989 ls!96) (h!989 less!5)) (= lambda!9524 lambda!9477))))

(assert (=> bs!38584 (not (= lambda!9524 lambda!9476))))

(declare-fun bs!38585 () Bool)

(assert (= bs!38585 (and d!55655 b!81135)))

(assert (=> bs!38585 (not (= lambda!9524 lambda!9505))))

(assert (=> bs!38585 (= (= (h!989 ls!96) (h!989 less!5)) (= lambda!9524 lambda!9504))))

(assert (=> bs!38585 (not (= lambda!9524 lambda!9503))))

(declare-fun bs!38586 () Bool)

(assert (= bs!38586 (and d!55655 b!81050)))

(assert (=> bs!38586 (not (= lambda!9524 lambda!9469))))

(declare-fun bs!38587 () Bool)

(assert (= bs!38587 (and d!55655 b!81058)))

(assert (=> bs!38587 (not (= lambda!9524 lambda!9468))))

(declare-fun bs!38588 () Bool)

(assert (= bs!38588 (and d!55655 d!55639)))

(assert (=> bs!38588 (= lambda!9524 lambda!9490)))

(declare-fun bs!38589 () Bool)

(assert (= bs!38589 (and d!55655 d!55651)))

(assert (=> bs!38589 (not (= lambda!9524 lambda!9515))))

(declare-fun bs!38590 () Bool)

(assert (= bs!38590 (and d!55655 b!81098)))

(assert (=> bs!38590 (not (= lambda!9524 lambda!9487))))

(assert (=> bs!38590 (= (= (h!989 ls!96) (h!989 less!5)) (= lambda!9524 lambda!9486))))

(assert (=> bs!38590 (not (= lambda!9524 lambda!9485))))

(declare-fun bs!38591 () Bool)

(assert (= bs!38591 (and d!55655 b!81057)))

(assert (=> bs!38591 (= lambda!9524 lambda!9467)))

(declare-fun bs!38592 () Bool)

(assert (= bs!38592 (and d!55655 b!81147)))

(assert (=> bs!38592 (not (= lambda!9524 lambda!9508))))

(assert (=> bs!38592 (= (= (h!989 ls!96) (h!989 less!5)) (= lambda!9524 lambda!9507))))

(assert (=> bs!38592 (not (= lambda!9524 lambda!9506))))

(assert (=> d!55655 true))

(declare-fun b_next!39221 () Bool)

(assert (=> start!10674 (= b_next!39219 (or (and d!55655 (= lambda!9524 p!852)) b_next!39221))))

(declare-fun bs!38593 () Bool)

(declare-fun b!81172 () Bool)

(assert (= bs!38593 (and b!81172 b!81161)))

(declare-fun lambda!9525 () Int)

(assert (=> bs!38593 (= lambda!9525 lambda!9517)))

(declare-fun bs!38594 () Bool)

(assert (= bs!38594 (and b!81172 b!81160)))

(assert (=> bs!38594 (= lambda!9525 lambda!9516)))

(declare-fun bs!38595 () Bool)

(assert (= bs!38595 (and b!81172 b!81047)))

(assert (=> bs!38595 (not (= lambda!9525 lambda!9466))))

(declare-fun bs!38596 () Bool)

(assert (= bs!38596 (and b!81172 b!81067)))

(assert (=> bs!38596 (not (= lambda!9525 lambda!9478))))

(assert (=> bs!38596 (not (= lambda!9525 lambda!9477))))

(assert (=> bs!38596 (not (= lambda!9525 lambda!9476))))

(declare-fun bs!38597 () Bool)

(assert (= bs!38597 (and b!81172 b!81135)))

(assert (=> bs!38597 (not (= lambda!9525 lambda!9505))))

(assert (=> bs!38597 (not (= lambda!9525 lambda!9504))))

(assert (=> bs!38597 (not (= lambda!9525 lambda!9503))))

(declare-fun bs!38598 () Bool)

(assert (= bs!38598 (and b!81172 b!81050)))

(assert (=> bs!38598 (= lambda!9525 lambda!9469)))

(declare-fun bs!38599 () Bool)

(assert (= bs!38599 (and b!81172 b!81058)))

(assert (=> bs!38599 (not (= lambda!9525 lambda!9468))))

(declare-fun bs!38600 () Bool)

(assert (= bs!38600 (and b!81172 d!55639)))

(assert (=> bs!38600 (not (= lambda!9525 lambda!9490))))

(declare-fun bs!38601 () Bool)

(assert (= bs!38601 (and b!81172 d!55651)))

(assert (=> bs!38601 (not (= lambda!9525 lambda!9515))))

(declare-fun bs!38602 () Bool)

(assert (= bs!38602 (and b!81172 b!81098)))

(assert (=> bs!38602 (not (= lambda!9525 lambda!9487))))

(assert (=> bs!38602 (not (= lambda!9525 lambda!9486))))

(assert (=> bs!38602 (not (= lambda!9525 lambda!9485))))

(declare-fun bs!38603 () Bool)

(assert (= bs!38603 (and b!81172 b!81057)))

(assert (=> bs!38603 (not (= lambda!9525 lambda!9467))))

(declare-fun bs!38604 () Bool)

(assert (= bs!38604 (and b!81172 d!55655)))

(assert (=> bs!38604 (not (= lambda!9525 lambda!9524))))

(declare-fun bs!38605 () Bool)

(assert (= bs!38605 (and b!81172 b!81147)))

(assert (=> bs!38605 (not (= lambda!9525 lambda!9508))))

(assert (=> bs!38605 (not (= lambda!9525 lambda!9507))))

(assert (=> bs!38605 (not (= lambda!9525 lambda!9506))))

(assert (=> b!81172 true))

(declare-fun b_next!39223 () Bool)

(assert (=> start!10674 (= b_next!39221 (or (and b!81172 (= lambda!9525 p!852)) b_next!39223))))

(declare-fun bs!38606 () Bool)

(declare-fun b!81173 () Bool)

(assert (= bs!38606 (and b!81173 b!81161)))

(declare-fun lambda!9526 () Int)

(assert (=> bs!38606 (= lambda!9526 lambda!9517)))

(declare-fun bs!38607 () Bool)

(assert (= bs!38607 (and b!81173 b!81160)))

(assert (=> bs!38607 (= lambda!9526 lambda!9516)))

(declare-fun bs!38608 () Bool)

(assert (= bs!38608 (and b!81173 b!81047)))

(assert (=> bs!38608 (not (= lambda!9526 lambda!9466))))

(declare-fun bs!38609 () Bool)

(assert (= bs!38609 (and b!81173 b!81067)))

(assert (=> bs!38609 (not (= lambda!9526 lambda!9478))))

(assert (=> bs!38609 (not (= lambda!9526 lambda!9477))))

(assert (=> bs!38609 (not (= lambda!9526 lambda!9476))))

(declare-fun bs!38610 () Bool)

(assert (= bs!38610 (and b!81173 b!81135)))

(assert (=> bs!38610 (not (= lambda!9526 lambda!9505))))

(assert (=> bs!38610 (not (= lambda!9526 lambda!9504))))

(assert (=> bs!38610 (not (= lambda!9526 lambda!9503))))

(declare-fun bs!38611 () Bool)

(assert (= bs!38611 (and b!81173 b!81050)))

(assert (=> bs!38611 (= lambda!9526 lambda!9469)))

(declare-fun bs!38612 () Bool)

(assert (= bs!38612 (and b!81173 b!81172)))

(assert (=> bs!38612 (= lambda!9526 lambda!9525)))

(declare-fun bs!38613 () Bool)

(assert (= bs!38613 (and b!81173 b!81058)))

(assert (=> bs!38613 (not (= lambda!9526 lambda!9468))))

(declare-fun bs!38614 () Bool)

(assert (= bs!38614 (and b!81173 d!55639)))

(assert (=> bs!38614 (not (= lambda!9526 lambda!9490))))

(declare-fun bs!38615 () Bool)

(assert (= bs!38615 (and b!81173 d!55651)))

(assert (=> bs!38615 (not (= lambda!9526 lambda!9515))))

(declare-fun bs!38616 () Bool)

(assert (= bs!38616 (and b!81173 b!81098)))

(assert (=> bs!38616 (not (= lambda!9526 lambda!9487))))

(assert (=> bs!38616 (not (= lambda!9526 lambda!9486))))

(assert (=> bs!38616 (not (= lambda!9526 lambda!9485))))

(declare-fun bs!38617 () Bool)

(assert (= bs!38617 (and b!81173 b!81057)))

(assert (=> bs!38617 (not (= lambda!9526 lambda!9467))))

(declare-fun bs!38618 () Bool)

(assert (= bs!38618 (and b!81173 d!55655)))

(assert (=> bs!38618 (not (= lambda!9526 lambda!9524))))

(declare-fun bs!38619 () Bool)

(assert (= bs!38619 (and b!81173 b!81147)))

(assert (=> bs!38619 (not (= lambda!9526 lambda!9508))))

(assert (=> bs!38619 (not (= lambda!9526 lambda!9507))))

(assert (=> bs!38619 (not (= lambda!9526 lambda!9506))))

(assert (=> b!81173 true))

(declare-fun b_next!39225 () Bool)

(assert (=> start!10674 (= b_next!39223 (or (and b!81173 (= lambda!9526 p!852)) b_next!39225))))

(declare-fun e!44023 () Bool)

(assert (=> d!55655 e!44023))

(declare-fun c!20461 () Bool)

(assert (=> d!55655 (= c!20461 (is-Cons!620 equal!10))))

(assert (=> d!55655 (forall!18 equal!10 lambda!9524)))

(assert (=> d!55655 (= (forall_eq_implies_le!0 equal!10 (h!989 ls!96)) true)))

(assert (=> b!81172 (= e!44023 (forall!18 equal!10 lambda!9525))))

(declare-fun lt!18631 () Bool)

(assert (=> b!81172 (= lt!18631 (forall_eq_implies_le!0 (t!47816 equal!10) (h!989 ls!96)))))

(assert (=> b!81173 (= e!44023 (forall!18 equal!10 lambda!9526))))

(assert (= (and d!55655 c!20461) b!81172))

(assert (= (and d!55655 (not c!20461)) b!81173))

(declare-fun m!76028 () Bool)

(assert (=> d!55655 m!76028))

(declare-fun m!76030 () Bool)

(assert (=> b!81172 m!76030))

(declare-fun m!76032 () Bool)

(assert (=> b!81172 m!76032))

(declare-fun m!76034 () Bool)

(assert (=> b!81173 m!76034))

(assert (=> b!81049 d!55655))

(declare-fun d!55657 () Bool)

(declare-fun res!41454 () Bool)

(declare-fun e!44024 () Bool)

(assert (=> d!55657 (=> res!41454 e!44024)))

(assert (=> d!55657 (= res!41454 (is-Nil!622 l1!442))))

(assert (=> d!55657 (= (forall!18 l1!442 p!852) e!44024)))

(declare-fun b!81174 () Bool)

(declare-fun e!44025 () Bool)

(assert (=> b!81174 (= e!44024 e!44025)))

(declare-fun res!41455 () Bool)

(assert (=> b!81174 (=> (not res!41455) (not e!44025))))

(assert (=> b!81174 (= res!41455 (dynLambda!982 p!852 (h!989 l1!442)))))

(declare-fun b!81175 () Bool)

(assert (=> b!81175 (= e!44025 (forall!18 (t!47816 l1!442) p!852))))

(assert (= (and d!55657 (not res!41454)) b!81174))

(assert (= (and b!81174 res!41455) b!81175))

(declare-fun b_lambda!16027 () Bool)

(assert (=> (not b_lambda!16027) (not b!81174)))

(declare-fun t!47827 () Bool)

(declare-fun tb!46205 () Bool)

(assert (=> (and start!10674 (= p!852 p!852) t!47827) tb!46205))

(declare-fun result!46635 () Bool)

(assert (=> tb!46205 (= result!46635 true)))

(assert (=> b!81174 t!47827))

(declare-fun b_and!58883 () Bool)

(assert (= b_and!58881 (and (=> t!47827 result!46635) b_and!58883)))

(declare-fun m!76036 () Bool)

(assert (=> b!81174 m!76036))

(declare-fun m!76038 () Bool)

(assert (=> b!81175 m!76038))

(assert (=> b!81046 d!55657))

(declare-fun d!55659 () Bool)

(declare-fun e!44033 () Bool)

(assert (=> d!55659 e!44033))

(declare-fun c!20464 () Bool)

(assert (=> d!55659 (= c!20464 (is-Cons!620 (quickSort!0 less!5)))))

(declare-fun e!44034 () Bool)

(assert (=> d!55659 e!44034))

(declare-fun res!41464 () Bool)

(assert (=> d!55659 (=> (not res!41464) (not e!44034))))

(assert (=> d!55659 (= res!41464 (isSorted!1 (quickSort!0 less!5)))))

(assert (=> d!55659 (= (append_sorted!0 (quickSort!0 less!5) equal!10) true)))

(declare-fun b!81188 () Bool)

(declare-fun res!41465 () Bool)

(declare-fun e!44032 () Bool)

(assert (=> b!81188 (=> res!41465 e!44032)))

(assert (=> b!81188 (= res!41465 (isEmpty!675 equal!10))))

(declare-fun b!81189 () Bool)

(declare-fun head!1053 (List!663) Int)

(assert (=> b!81189 (= e!44032 (<= (last!15 (quickSort!0 less!5)) (head!1053 equal!10)))))

(declare-fun b!81190 () Bool)

(assert (=> b!81190 (= e!44033 (isSorted!1 (++!71 (quickSort!0 less!5) equal!10)))))

(declare-fun lt!18634 () Bool)

(assert (=> b!81190 (= lt!18634 (append_sorted!0 (t!47816 (quickSort!0 less!5)) equal!10))))

(declare-fun b!81191 () Bool)

(assert (=> b!81191 (= e!44033 (isSorted!1 (++!71 (quickSort!0 less!5) equal!10)))))

(declare-fun b!81192 () Bool)

(declare-fun res!41467 () Bool)

(assert (=> b!81192 (=> (not res!41467) (not e!44034))))

(assert (=> b!81192 (= res!41467 (isSorted!1 equal!10))))

(declare-fun b!81193 () Bool)

(assert (=> b!81193 (= e!44034 e!44032)))

(declare-fun res!41466 () Bool)

(assert (=> b!81193 (=> res!41466 e!44032)))

(assert (=> b!81193 (= res!41466 (isEmpty!675 (quickSort!0 less!5)))))

(assert (= (and d!55659 res!41464) b!81192))

(assert (= (and b!81192 res!41467) b!81193))

(assert (= (and b!81193 (not res!41466)) b!81188))

(assert (= (and b!81188 (not res!41465)) b!81189))

(assert (= (and d!55659 c!20464) b!81190))

(assert (= (and d!55659 (not c!20464)) b!81191))

(assert (=> d!55659 m!75848))

(assert (=> d!55659 m!75876))

(assert (=> b!81189 m!75848))

(assert (=> b!81189 m!75896))

(declare-fun m!76040 () Bool)

(assert (=> b!81189 m!76040))

(declare-fun m!76042 () Bool)

(assert (=> b!81192 m!76042))

(declare-fun m!76044 () Bool)

(assert (=> b!81188 m!76044))

(assert (=> b!81191 m!75848))

(declare-fun m!76046 () Bool)

(assert (=> b!81191 m!76046))

(assert (=> b!81191 m!76046))

(declare-fun m!76048 () Bool)

(assert (=> b!81191 m!76048))

(assert (=> b!81193 m!75848))

(assert (=> b!81193 m!75894))

(assert (=> b!81190 m!75848))

(assert (=> b!81190 m!76046))

(assert (=> b!81190 m!76046))

(assert (=> b!81190 m!76048))

(declare-fun m!76050 () Bool)

(assert (=> b!81190 m!76050))

(assert (=> b!81053 d!55659))

(assert (=> b!81053 d!55637))

(declare-fun b_lambda!16029 () Bool)

(assert (= b_lambda!16017 (or b!81047 b_lambda!16029)))

(declare-fun bs!38620 () Bool)

(declare-fun d!55661 () Bool)

(assert (= bs!38620 (and d!55661 b!81047)))

(assert (=> bs!38620 (= (dynLambda!982 lambda!9466 (last!15 (quickSort!0 less!5))) (< (last!15 (quickSort!0 less!5)) (h!989 ls!96)))))

(assert (=> b!81084 d!55661))

(declare-fun b_lambda!16031 () Bool)

(assert (= b_lambda!16021 (or b!81057 b_lambda!16031)))

(declare-fun bs!38621 () Bool)

(declare-fun d!55663 () Bool)

(assert (= bs!38621 (and d!55663 b!81057)))

(assert (=> bs!38621 (= (dynLambda!982 lambda!9467 (h!989 (t!47816 ls!96))) (= (h!989 (t!47816 ls!96)) (h!989 ls!96)))))

(assert (=> b!81142 d!55663))

(declare-fun b_lambda!16033 () Bool)

(assert (= b_lambda!16019 (or b!81058 b_lambda!16033)))

(declare-fun bs!38622 () Bool)

(declare-fun d!55665 () Bool)

(assert (= bs!38622 (and d!55665 b!81058)))

(assert (=> bs!38622 (= (dynLambda!982 lambda!9468 (h!989 (t!47816 ls!96))) (> (h!989 (t!47816 ls!96)) (h!989 ls!96)))))

(assert (=> b!81120 d!55665))

(declare-fun b_lambda!16035 () Bool)

(assert (= b_lambda!16027 (or (and b!81160 (= lambda!9516 p!852)) (and b!81067 (= lambda!9476 p!852)) (and d!55655 (= lambda!9524 p!852)) (and b!81172 (= lambda!9525 p!852)) (and b!81147 (= lambda!9507 p!852)) (and b!81147 (= lambda!9508 p!852)) (and b!81098 (= lambda!9485 p!852)) (and b!81135 (= lambda!9505 p!852)) (and b!81058 (= lambda!9468 p!852)) (and b!81057 (= lambda!9467 p!852)) (and b!81047 (= lambda!9466 p!852)) (and b!81135 (= lambda!9503 p!852)) (and b!81135 (= lambda!9504 p!852)) (and b!81161 (= lambda!9517 p!852)) (and b!81098 (= lambda!9486 p!852)) (and d!55651 (= lambda!9515 p!852)) (and start!10674 b_free!7355) (and b!81173 (= lambda!9526 p!852)) (and b!81050 (= lambda!9469 p!852)) (and d!55639 (= lambda!9490 p!852)) (and b!81067 (= lambda!9477 p!852)) (and b!81067 (= lambda!9478 p!852)) (and b!81147 (= lambda!9506 p!852)) (and b!81098 (= lambda!9487 p!852)) b_lambda!16035)))

(declare-fun bs!38623 () Bool)

(declare-fun d!55667 () Bool)

(assert (= bs!38623 (and d!55667 b!81067)))

(assert (=> bs!38623 (= (dynLambda!982 lambda!9478 (h!989 l1!442)) (> (h!989 l1!442) (h!989 less!5)))))

(assert (=> (and b!81067 (= lambda!9478 p!852) b!81174) d!55667))

(declare-fun bs!38624 () Bool)

(declare-fun d!55669 () Bool)

(assert (= bs!38624 (and d!55669 b!81067)))

(assert (=> bs!38624 (= (dynLambda!982 lambda!9477 (h!989 l1!442)) (= (h!989 l1!442) (h!989 less!5)))))

(assert (=> (and b!81067 (= lambda!9477 p!852) b!81174) d!55669))

(declare-fun bs!38625 () Bool)

(declare-fun d!55671 () Bool)

(assert (= bs!38625 (and d!55671 b!81098)))

(assert (=> bs!38625 (= (dynLambda!982 lambda!9487 (h!989 l1!442)) (> (h!989 l1!442) (h!989 less!5)))))

(assert (=> (and b!81098 (= lambda!9487 p!852) b!81174) d!55671))

(declare-fun bs!38626 () Bool)

(declare-fun d!55673 () Bool)

(assert (= bs!38626 (and d!55673 d!55651)))

(assert (=> bs!38626 (= (dynLambda!982 lambda!9515 (h!989 l1!442)) (< (h!989 l1!442) (h!989 ls!96)))))

(assert (=> (and d!55651 (= lambda!9515 p!852) b!81174) d!55673))

(declare-fun bs!38627 () Bool)

(declare-fun d!55675 () Bool)

(assert (= bs!38627 (and d!55675 b!81098)))

(assert (=> bs!38627 (= (dynLambda!982 lambda!9485 (h!989 l1!442)) (< (h!989 l1!442) (h!989 less!5)))))

(assert (=> (and b!81098 (= lambda!9485 p!852) b!81174) d!55675))

(declare-fun bs!38628 () Bool)

(declare-fun d!55677 () Bool)

(assert (= bs!38628 (and d!55677 b!81135)))

(assert (=> bs!38628 (= (dynLambda!982 lambda!9504 (h!989 l1!442)) (= (h!989 l1!442) (h!989 less!5)))))

(assert (=> (and b!81135 (= lambda!9504 p!852) b!81174) d!55677))

(declare-fun bs!38629 () Bool)

(declare-fun d!55679 () Bool)

(assert (= bs!38629 (and d!55679 b!81047)))

(assert (=> bs!38629 (= (dynLambda!982 lambda!9466 (h!989 l1!442)) (< (h!989 l1!442) (h!989 ls!96)))))

(assert (=> (and b!81047 (= lambda!9466 p!852) b!81174) d!55679))

(declare-fun bs!38630 () Bool)

(declare-fun d!55681 () Bool)

(assert (= bs!38630 (and d!55681 b!81098)))

(assert (=> bs!38630 (= (dynLambda!982 lambda!9486 (h!989 l1!442)) (= (h!989 l1!442) (h!989 less!5)))))

(assert (=> (and b!81098 (= lambda!9486 p!852) b!81174) d!55681))

(declare-fun bs!38631 () Bool)

(declare-fun d!55683 () Bool)

(assert (= bs!38631 (and d!55683 b!81147)))

(assert (=> bs!38631 (= (dynLambda!982 lambda!9506 (h!989 l1!442)) (< (h!989 l1!442) (h!989 less!5)))))

(assert (=> (and b!81147 (= lambda!9506 p!852) b!81174) d!55683))

(declare-fun bs!38632 () Bool)

(declare-fun d!55685 () Bool)

(assert (= bs!38632 (and d!55685 b!81050)))

(assert (=> bs!38632 (= (dynLambda!982 lambda!9469 (h!989 l1!442)) (<= (h!989 l1!442) (h!989 ls!96)))))

(assert (=> (and b!81050 (= lambda!9469 p!852) b!81174) d!55685))

(declare-fun bs!38633 () Bool)

(declare-fun d!55687 () Bool)

(assert (= bs!38633 (and d!55687 b!81147)))

(assert (=> bs!38633 (= (dynLambda!982 lambda!9508 (h!989 l1!442)) (> (h!989 l1!442) (h!989 less!5)))))

(assert (=> (and b!81147 (= lambda!9508 p!852) b!81174) d!55687))

(declare-fun bs!38634 () Bool)

(declare-fun d!55689 () Bool)

(assert (= bs!38634 (and d!55689 b!81057)))

(assert (=> bs!38634 (= (dynLambda!982 lambda!9467 (h!989 l1!442)) (= (h!989 l1!442) (h!989 ls!96)))))

(assert (=> (and b!81057 (= lambda!9467 p!852) b!81174) d!55689))

(declare-fun bs!38635 () Bool)

(declare-fun d!55691 () Bool)

(assert (= bs!38635 (and d!55691 b!81172)))

(assert (=> bs!38635 (= (dynLambda!982 lambda!9525 (h!989 l1!442)) (<= (h!989 l1!442) (h!989 ls!96)))))

(assert (=> (and b!81172 (= lambda!9525 p!852) b!81174) d!55691))

(declare-fun bs!38636 () Bool)

(declare-fun d!55693 () Bool)

(assert (= bs!38636 (and d!55693 b!81173)))

(assert (=> bs!38636 (= (dynLambda!982 lambda!9526 (h!989 l1!442)) (<= (h!989 l1!442) (h!989 ls!96)))))

(assert (=> (and b!81173 (= lambda!9526 p!852) b!81174) d!55693))

(declare-fun bs!38637 () Bool)

(declare-fun d!55695 () Bool)

(assert (= bs!38637 (and d!55695 b!81160)))

(assert (=> bs!38637 (= (dynLambda!982 lambda!9516 (h!989 l1!442)) (<= (h!989 l1!442) (h!989 ls!96)))))

(assert (=> (and b!81160 (= lambda!9516 p!852) b!81174) d!55695))

(declare-fun bs!38638 () Bool)

(declare-fun d!55697 () Bool)

(assert (= bs!38638 (and d!55697 b!81135)))

(assert (=> bs!38638 (= (dynLambda!982 lambda!9505 (h!989 l1!442)) (> (h!989 l1!442) (h!989 less!5)))))

(assert (=> (and b!81135 (= lambda!9505 p!852) b!81174) d!55697))

(declare-fun bs!38639 () Bool)

(declare-fun d!55699 () Bool)

(assert (= bs!38639 (and d!55699 b!81147)))

(assert (=> bs!38639 (= (dynLambda!982 lambda!9507 (h!989 l1!442)) (= (h!989 l1!442) (h!989 less!5)))))

(assert (=> (and b!81147 (= lambda!9507 p!852) b!81174) d!55699))

(declare-fun bs!38640 () Bool)

(declare-fun d!55701 () Bool)

(assert (= bs!38640 (and d!55701 b!81058)))

(assert (=> bs!38640 (= (dynLambda!982 lambda!9468 (h!989 l1!442)) (> (h!989 l1!442) (h!989 ls!96)))))

(assert (=> (and b!81058 (= lambda!9468 p!852) b!81174) d!55701))

(declare-fun bs!38641 () Bool)

(declare-fun d!55703 () Bool)

(assert (= bs!38641 (and d!55703 d!55639)))

(assert (=> bs!38641 (= (dynLambda!982 lambda!9490 (h!989 l1!442)) (= (h!989 l1!442) (h!989 ls!96)))))

(assert (=> (and d!55639 (= lambda!9490 p!852) b!81174) d!55703))

(declare-fun bs!38642 () Bool)

(declare-fun d!55705 () Bool)

(assert (= bs!38642 (and d!55705 d!55655)))

(assert (=> bs!38642 (= (dynLambda!982 lambda!9524 (h!989 l1!442)) (= (h!989 l1!442) (h!989 ls!96)))))

(assert (=> (and d!55655 (= lambda!9524 p!852) b!81174) d!55705))

(declare-fun bs!38643 () Bool)

(declare-fun d!55707 () Bool)

(assert (= bs!38643 (and d!55707 b!81161)))

(assert (=> bs!38643 (= (dynLambda!982 lambda!9517 (h!989 l1!442)) (<= (h!989 l1!442) (h!989 ls!96)))))

(assert (=> (and b!81161 (= lambda!9517 p!852) b!81174) d!55707))

(declare-fun bs!38644 () Bool)

(declare-fun d!55709 () Bool)

(assert (= bs!38644 (and d!55709 b!81067)))

(assert (=> bs!38644 (= (dynLambda!982 lambda!9476 (h!989 l1!442)) (< (h!989 l1!442) (h!989 less!5)))))

(assert (=> (and b!81067 (= lambda!9476 p!852) b!81174) d!55709))

(declare-fun bs!38645 () Bool)

(declare-fun d!55711 () Bool)

(assert (= bs!38645 (and d!55711 b!81135)))

(assert (=> bs!38645 (= (dynLambda!982 lambda!9503 (h!989 l1!442)) (< (h!989 l1!442) (h!989 less!5)))))

(assert (=> (and b!81135 (= lambda!9503 p!852) b!81174) d!55711))

(declare-fun b_lambda!16037 () Bool)

(assert (= b_lambda!16015 (or b!81047 b_lambda!16037)))

(assert (=> b!81083 d!55661))

(declare-fun b_lambda!16039 () Bool)

(assert (= b_lambda!16023 (or b!81047 b_lambda!16039)))

(declare-fun bs!38646 () Bool)

(declare-fun d!55713 () Bool)

(assert (= bs!38646 (and d!55713 b!81047)))

(assert (=> bs!38646 (= (dynLambda!982 lambda!9466 (h!989 (t!47816 ls!96))) (< (h!989 (t!47816 ls!96)) (h!989 ls!96)))))

(assert (=> b!81154 d!55713))

(declare-fun b_lambda!16041 () Bool)

(assert (= b_lambda!16025 (or (and b!81160 (= lambda!9516 p!852)) (and b!81067 (= lambda!9476 p!852)) (and d!55655 (= lambda!9524 p!852)) (and b!81172 (= lambda!9525 p!852)) (and b!81147 (= lambda!9507 p!852)) (and b!81147 (= lambda!9508 p!852)) (and b!81098 (= lambda!9485 p!852)) (and b!81135 (= lambda!9505 p!852)) (and b!81058 (= lambda!9468 p!852)) (and b!81057 (= lambda!9467 p!852)) (and b!81047 (= lambda!9466 p!852)) (and b!81135 (= lambda!9503 p!852)) (and b!81135 (= lambda!9504 p!852)) (and b!81161 (= lambda!9517 p!852)) (and b!81098 (= lambda!9486 p!852)) (and d!55651 (= lambda!9515 p!852)) (and start!10674 b_free!7355) (and b!81173 (= lambda!9526 p!852)) (and b!81050 (= lambda!9469 p!852)) (and d!55639 (= lambda!9490 p!852)) (and b!81067 (= lambda!9477 p!852)) (and b!81067 (= lambda!9478 p!852)) (and b!81147 (= lambda!9506 p!852)) (and b!81098 (= lambda!9487 p!852)) b_lambda!16041)))

(declare-fun bs!38647 () Bool)

(declare-fun d!55715 () Bool)

(assert (= bs!38647 (and d!55715 b!81161)))

(assert (=> bs!38647 (= (dynLambda!982 lambda!9517 (h!989 l2!435)) (<= (h!989 l2!435) (h!989 ls!96)))))

(assert (=> (and b!81161 (= lambda!9517 p!852) b!81166) d!55715))

(declare-fun bs!38648 () Bool)

(declare-fun d!55717 () Bool)

(assert (= bs!38648 (and d!55717 b!81098)))

(assert (=> bs!38648 (= (dynLambda!982 lambda!9487 (h!989 l2!435)) (> (h!989 l2!435) (h!989 less!5)))))

(assert (=> (and b!81098 (= lambda!9487 p!852) b!81166) d!55717))

(declare-fun bs!38649 () Bool)

(declare-fun d!55719 () Bool)

(assert (= bs!38649 (and d!55719 b!81135)))

(assert (=> bs!38649 (= (dynLambda!982 lambda!9505 (h!989 l2!435)) (> (h!989 l2!435) (h!989 less!5)))))

(assert (=> (and b!81135 (= lambda!9505 p!852) b!81166) d!55719))

(declare-fun bs!38650 () Bool)

(declare-fun d!55721 () Bool)

(assert (= bs!38650 (and d!55721 b!81047)))

(assert (=> bs!38650 (= (dynLambda!982 lambda!9466 (h!989 l2!435)) (< (h!989 l2!435) (h!989 ls!96)))))

(assert (=> (and b!81047 (= lambda!9466 p!852) b!81166) d!55721))

(declare-fun bs!38651 () Bool)

(declare-fun d!55723 () Bool)

(assert (= bs!38651 (and d!55723 b!81067)))

(assert (=> bs!38651 (= (dynLambda!982 lambda!9476 (h!989 l2!435)) (< (h!989 l2!435) (h!989 less!5)))))

(assert (=> (and b!81067 (= lambda!9476 p!852) b!81166) d!55723))

(declare-fun bs!38652 () Bool)

(declare-fun d!55725 () Bool)

(assert (= bs!38652 (and d!55725 b!81172)))

(assert (=> bs!38652 (= (dynLambda!982 lambda!9525 (h!989 l2!435)) (<= (h!989 l2!435) (h!989 ls!96)))))

(assert (=> (and b!81172 (= lambda!9525 p!852) b!81166) d!55725))

(declare-fun bs!38653 () Bool)

(declare-fun d!55727 () Bool)

(assert (= bs!38653 (and d!55727 b!81098)))

(assert (=> bs!38653 (= (dynLambda!982 lambda!9486 (h!989 l2!435)) (= (h!989 l2!435) (h!989 less!5)))))

(assert (=> (and b!81098 (= lambda!9486 p!852) b!81166) d!55727))

(declare-fun bs!38654 () Bool)

(declare-fun d!55729 () Bool)

(assert (= bs!38654 (and d!55729 b!81058)))

(assert (=> bs!38654 (= (dynLambda!982 lambda!9468 (h!989 l2!435)) (> (h!989 l2!435) (h!989 ls!96)))))

(assert (=> (and b!81058 (= lambda!9468 p!852) b!81166) d!55729))

(declare-fun bs!38655 () Bool)

(declare-fun d!55731 () Bool)

(assert (= bs!38655 (and d!55731 b!81147)))

(assert (=> bs!38655 (= (dynLambda!982 lambda!9508 (h!989 l2!435)) (> (h!989 l2!435) (h!989 less!5)))))

(assert (=> (and b!81147 (= lambda!9508 p!852) b!81166) d!55731))

(declare-fun bs!38656 () Bool)

(declare-fun d!55733 () Bool)

(assert (= bs!38656 (and d!55733 b!81057)))

(assert (=> bs!38656 (= (dynLambda!982 lambda!9467 (h!989 l2!435)) (= (h!989 l2!435) (h!989 ls!96)))))

(assert (=> (and b!81057 (= lambda!9467 p!852) b!81166) d!55733))

(declare-fun bs!38657 () Bool)

(declare-fun d!55735 () Bool)

(assert (= bs!38657 (and d!55735 b!81173)))

(assert (=> bs!38657 (= (dynLambda!982 lambda!9526 (h!989 l2!435)) (<= (h!989 l2!435) (h!989 ls!96)))))

(assert (=> (and b!81173 (= lambda!9526 p!852) b!81166) d!55735))

(declare-fun bs!38658 () Bool)

(declare-fun d!55737 () Bool)

(assert (= bs!38658 (and d!55737 b!81135)))

(assert (=> bs!38658 (= (dynLambda!982 lambda!9503 (h!989 l2!435)) (< (h!989 l2!435) (h!989 less!5)))))

(assert (=> (and b!81135 (= lambda!9503 p!852) b!81166) d!55737))

(declare-fun bs!38659 () Bool)

(declare-fun d!55739 () Bool)

(assert (= bs!38659 (and d!55739 b!81098)))

(assert (=> bs!38659 (= (dynLambda!982 lambda!9485 (h!989 l2!435)) (< (h!989 l2!435) (h!989 less!5)))))

(assert (=> (and b!81098 (= lambda!9485 p!852) b!81166) d!55739))

(declare-fun bs!38660 () Bool)

(declare-fun d!55741 () Bool)

(assert (= bs!38660 (and d!55741 b!81160)))

(assert (=> bs!38660 (= (dynLambda!982 lambda!9516 (h!989 l2!435)) (<= (h!989 l2!435) (h!989 ls!96)))))

(assert (=> (and b!81160 (= lambda!9516 p!852) b!81166) d!55741))

(declare-fun bs!38661 () Bool)

(declare-fun d!55743 () Bool)

(assert (= bs!38661 (and d!55743 b!81147)))

(assert (=> bs!38661 (= (dynLambda!982 lambda!9506 (h!989 l2!435)) (< (h!989 l2!435) (h!989 less!5)))))

(assert (=> (and b!81147 (= lambda!9506 p!852) b!81166) d!55743))

(declare-fun bs!38662 () Bool)

(declare-fun d!55745 () Bool)

(assert (= bs!38662 (and d!55745 d!55651)))

(assert (=> bs!38662 (= (dynLambda!982 lambda!9515 (h!989 l2!435)) (< (h!989 l2!435) (h!989 ls!96)))))

(assert (=> (and d!55651 (= lambda!9515 p!852) b!81166) d!55745))

(declare-fun bs!38663 () Bool)

(declare-fun d!55747 () Bool)

(assert (= bs!38663 (and d!55747 d!55655)))

(assert (=> bs!38663 (= (dynLambda!982 lambda!9524 (h!989 l2!435)) (= (h!989 l2!435) (h!989 ls!96)))))

(assert (=> (and d!55655 (= lambda!9524 p!852) b!81166) d!55747))

(declare-fun bs!38664 () Bool)

(declare-fun d!55749 () Bool)

(assert (= bs!38664 (and d!55749 b!81135)))

(assert (=> bs!38664 (= (dynLambda!982 lambda!9504 (h!989 l2!435)) (= (h!989 l2!435) (h!989 less!5)))))

(assert (=> (and b!81135 (= lambda!9504 p!852) b!81166) d!55749))

(declare-fun bs!38665 () Bool)

(declare-fun d!55751 () Bool)

(assert (= bs!38665 (and d!55751 b!81147)))

(assert (=> bs!38665 (= (dynLambda!982 lambda!9507 (h!989 l2!435)) (= (h!989 l2!435) (h!989 less!5)))))

(assert (=> (and b!81147 (= lambda!9507 p!852) b!81166) d!55751))

(declare-fun bs!38666 () Bool)

(declare-fun d!55753 () Bool)

(assert (= bs!38666 (and d!55753 b!81050)))

(assert (=> bs!38666 (= (dynLambda!982 lambda!9469 (h!989 l2!435)) (<= (h!989 l2!435) (h!989 ls!96)))))

(assert (=> (and b!81050 (= lambda!9469 p!852) b!81166) d!55753))

(declare-fun bs!38667 () Bool)

(declare-fun d!55755 () Bool)

(assert (= bs!38667 (and d!55755 b!81067)))

(assert (=> bs!38667 (= (dynLambda!982 lambda!9478 (h!989 l2!435)) (> (h!989 l2!435) (h!989 less!5)))))

(assert (=> (and b!81067 (= lambda!9478 p!852) b!81166) d!55755))

(declare-fun bs!38668 () Bool)

(declare-fun d!55757 () Bool)

(assert (= bs!38668 (and d!55757 d!55639)))

(assert (=> bs!38668 (= (dynLambda!982 lambda!9490 (h!989 l2!435)) (= (h!989 l2!435) (h!989 ls!96)))))

(assert (=> (and d!55639 (= lambda!9490 p!852) b!81166) d!55757))

(declare-fun bs!38669 () Bool)

(declare-fun d!55759 () Bool)

(assert (= bs!38669 (and d!55759 b!81067)))

(assert (=> bs!38669 (= (dynLambda!982 lambda!9477 (h!989 l2!435)) (= (h!989 l2!435) (h!989 less!5)))))

(assert (=> (and b!81067 (= lambda!9477 p!852) b!81166) d!55759))

(push 1)

(assert (not b!81137))

(assert (not b!81068))

(assert (not b!81133))

(assert (not b!81136))

(assert (not b!81119))

(assert (not b!81147))

(assert (not b_lambda!16031))

(assert (not d!55647))

(assert (not b!81167))

(assert (not b!81098))

(assert (not b!81148))

(assert (not b_lambda!16029))

(assert (not b!81191))

(assert (not d!55655))

(assert (not d!55643))

(assert (not b!81140))

(assert (not d!55641))

(assert (not b!81175))

(assert (not b!81153))

(assert (not b!81193))

(assert (not d!55651))

(assert (not b!81135))

(assert (not b!81188))

(assert (not b!81132))

(assert (not b!81118))

(assert (not b!81152))

(assert (not b!81067))

(assert (not b!81085))

(assert (not b!81081))

(assert (not b!81146))

(assert (not b_next!39225))

(assert (not b!81145))

(assert (not b!81160))

(assert (not b!81083))

(assert b_and!58883)

(assert (not b!81115))

(assert (not b!81190))

(assert (not b!81141))

(assert (not b_lambda!16039))

(assert (not b!81084))

(assert (not d!55639))

(assert (not b_lambda!16037))

(assert (not b_lambda!16033))

(assert (not b!81173))

(assert (not b_lambda!16035))

(assert (not b!81086))

(assert (not b!81082))

(assert (not d!55633))

(assert (not d!55659))

(assert (not b!81189))

(assert (not d!55649))

(assert (not b!81149))

(assert (not b!81192))

(assert (not d!55645))

(assert (not b_lambda!16041))

(assert (not b!81144))

(assert (not b!81134))

(assert (not b!81161))

(assert (not b!81172))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58883)

(assert (not b_next!39225))

(check-sat)

(pop 1)

