; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4510 () Bool)

(assert start!4510)

(declare-fun b_free!2175 () Bool)

(declare-fun b_next!5285 () Bool)

(assert (=> start!4510 (= b_free!2175 (not b_next!5285))))

(declare-fun tp!7286 () Bool)

(declare-fun b_and!7915 () Bool)

(assert (=> start!4510 (= tp!7286 b_and!7915)))

(declare-fun b_free!2177 () Bool)

(declare-fun b_next!5287 () Bool)

(assert (=> start!4510 (= b_free!2177 (not b_next!5287))))

(declare-fun tp!7285 () Bool)

(declare-fun b_and!7917 () Bool)

(assert (=> start!4510 (= tp!7285 b_and!7917)))

(declare-fun b!35010 () Bool)

(declare-fun res!16172 () Bool)

(declare-fun e!17679 () Bool)

(assert (=> b!35010 (=> (not res!16172) (not e!17679))))

(declare-fun p!499 () Int)

(declare-datatypes () ((List!391 (Cons!383 (h!333 Int) (t!4997 List!391)) (Nil!384))))

(declare-fun l!950 () List!391)

(declare-fun dynLambda!639 (Int Int) Bool)

(declare-fun head!544 (List!391) Int)

(assert (=> b!35010 (= res!16172 (dynLambda!639 p!499 (head!544 l!950)))))

(declare-fun b!35011 () Bool)

(declare-fun l!951 () List!391)

(declare-fun n!430 () Int)

(declare-fun size!366 (List!391) Int)

(assert (=> b!35011 (= e!17679 (> (size!366 l!951) n!430))))

(declare-fun b!35012 () Bool)

(declare-fun res!16175 () Bool)

(assert (=> b!35012 (=> (not res!16175) (not e!17679))))

(declare-fun p!500 () Int)

(assert (=> b!35012 (= res!16175 (= p!500 p!499))))

(declare-fun b!35013 () Bool)

(declare-fun res!16173 () Bool)

(assert (=> b!35013 (=> (not res!16173) (not e!17679))))

(declare-fun n!429 () Int)

(assert (=> b!35013 (= res!16173 (= n!430 n!429))))

(declare-fun b!35014 () Bool)

(declare-fun res!16169 () Bool)

(assert (=> b!35014 (=> (not res!16169) (not e!17679))))

(declare-fun x$1!542 () Int)

(assert (=> b!35014 (= res!16169 (= x$1!542 (head!544 l!950)))))

(declare-fun res!16171 () Bool)

(assert (=> start!4510 (=> (not res!16171) (not e!17679))))

(assert (=> start!4510 (= res!16171 (<= (size!366 l!950) n!429))))

(assert (=> start!4510 e!17679))

(assert (=> start!4510 true))

(assert (=> start!4510 tp!7286))

(assert (=> start!4510 tp!7285))

(declare-fun b!35015 () Bool)

(declare-fun res!16170 () Bool)

(assert (=> b!35015 (=> (not res!16170) (not e!17679))))

(declare-fun isEmpty!386 (List!391) Bool)

(assert (=> b!35015 (= res!16170 (not (isEmpty!386 l!950)))))

(declare-fun b!35016 () Bool)

(declare-fun res!16174 () Bool)

(assert (=> b!35016 (=> (not res!16174) (not e!17679))))

(declare-fun tail!569 (List!391) List!391)

(assert (=> b!35016 (= res!16174 (= l!951 (tail!569 l!950)))))

(assert (= (and start!4510 res!16171) b!35015))

(assert (= (and b!35015 res!16170) b!35010))

(assert (= (and b!35010 res!16172) b!35014))

(assert (= (and b!35014 res!16169) b!35012))

(assert (= (and b!35012 res!16175) b!35016))

(assert (= (and b!35016 res!16174) b!35013))

(assert (= (and b!35013 res!16173) b!35011))

(declare-fun b_lambda!9535 () Bool)

(assert (=> (not b_lambda!9535) (not b!35010)))

(declare-fun t!4994 () Bool)

(declare-fun tb!4289 () Bool)

(assert (=> (and start!4510 (= p!499 p!499) t!4994) tb!4289))

(declare-fun result!4545 () Bool)

(assert (=> tb!4289 (= result!4545 true)))

(assert (=> b!35010 t!4994))

(declare-fun b_and!7919 () Bool)

(assert (= b_and!7915 (and (=> t!4994 result!4545) b_and!7919)))

(declare-fun t!4996 () Bool)

(declare-fun tb!4291 () Bool)

(assert (=> (and start!4510 (= p!500 p!499) t!4996) tb!4291))

(declare-fun result!4547 () Bool)

(assert (=> tb!4291 (= result!4547 true)))

(assert (=> b!35010 t!4996))

(declare-fun b_and!7921 () Bool)

(assert (= b_and!7917 (and (=> t!4996 result!4547) b_and!7921)))

(declare-fun m!37531 () Bool)

(assert (=> b!35014 m!37531))

(declare-fun m!37533 () Bool)

(assert (=> b!35011 m!37533))

(declare-fun m!37535 () Bool)

(assert (=> start!4510 m!37535))

(assert (=> b!35010 m!37531))

(assert (=> b!35010 m!37531))

(declare-fun m!37537 () Bool)

(assert (=> b!35010 m!37537))

(declare-fun m!37539 () Bool)

(assert (=> b!35015 m!37539))

(declare-fun m!37541 () Bool)

(assert (=> b!35016 m!37541))

(push 1)

(assert b_and!7919)

(assert (not b!35010))

(assert (not b_next!5287))

(assert (not b!35011))

(assert (not b!35016))

(assert (not b!35015))

(assert b_and!7921)

(assert (not start!4510))

(assert (not b!35014))

(assert (not b_lambda!9535))

(assert (not b_next!5285))

(check-sat)

(pop 1)

(push 1)

(assert b_and!7919)

(assert b_and!7921)

(assert (not b_next!5285))

(assert (not b_next!5287))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!9537 () Bool)

(assert (= b_lambda!9535 (or (and start!4510 b_free!2175) (and start!4510 b_free!2177 (= p!500 p!499)) b_lambda!9537)))

(push 1)

(assert b_and!7919)

(assert (not b!35010))

(assert (not b_next!5287))

(assert (not b!35011))

(assert (not b!35016))

(assert (not b!35015))

(assert b_and!7921)

(assert (not b_lambda!9537))

(assert (not start!4510))

(assert (not b!35014))

(assert (not b_next!5285))

(check-sat)

(pop 1)

(push 1)

(assert b_and!7919)

(assert b_and!7921)

(assert (not b_next!5285))

(assert (not b_next!5287))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!18336 () Bool)

(assert (=> d!18336 (= (head!544 l!950) (h!333 l!950))))

(assert (=> b!35010 d!18336))

(declare-fun d!18338 () Bool)

(assert (=> d!18338 (= (tail!569 l!950) (t!4997 l!950))))

(assert (=> b!35016 d!18338))

(assert (=> b!35014 d!18336))

(declare-fun d!18340 () Bool)

(declare-fun lt!6528 () Int)

(assert (=> d!18340 (>= lt!6528 0)))

(declare-fun e!17682 () Int)

(assert (=> d!18340 (= lt!6528 e!17682)))

(declare-fun c!7439 () Bool)

(assert (=> d!18340 (= c!7439 (is-Nil!384 l!950))))

(assert (=> d!18340 (= (size!366 l!950) lt!6528)))

(declare-fun b!35021 () Bool)

(assert (=> b!35021 (= e!17682 0)))

(declare-fun b!35022 () Bool)

(assert (=> b!35022 (= e!17682 (+ 1 (size!366 (t!4997 l!950))))))

(assert (= (and d!18340 c!7439) b!35021))

(assert (= (and d!18340 (not c!7439)) b!35022))

(declare-fun m!37543 () Bool)

(assert (=> b!35022 m!37543))

(assert (=> start!4510 d!18340))

(declare-fun d!18342 () Bool)

(assert (=> d!18342 (= (isEmpty!386 l!950) (is-Nil!384 l!950))))

(assert (=> b!35015 d!18342))

(declare-fun d!18344 () Bool)

(declare-fun lt!6529 () Int)

(assert (=> d!18344 (>= lt!6529 0)))

(declare-fun e!17683 () Int)

(assert (=> d!18344 (= lt!6529 e!17683)))

(declare-fun c!7440 () Bool)

(assert (=> d!18344 (= c!7440 (is-Nil!384 l!951))))

(assert (=> d!18344 (= (size!366 l!951) lt!6529)))

(declare-fun b!35023 () Bool)

(assert (=> b!35023 (= e!17683 0)))

(declare-fun b!35024 () Bool)

(assert (=> b!35024 (= e!17683 (+ 1 (size!366 (t!4997 l!951))))))

(assert (= (and d!18344 c!7440) b!35023))

(assert (= (and d!18344 (not c!7440)) b!35024))

(declare-fun m!37545 () Bool)

(assert (=> b!35024 m!37545))

(assert (=> b!35011 d!18344))

(push 1)

(assert b_and!7919)

(assert (not b_next!5287))

(assert (not b!35024))

(assert b_and!7921)

(assert (not b_lambda!9537))

(assert (not b!35022))

(assert (not b_next!5285))

(check-sat)

(pop 1)

(push 1)

(assert b_and!7919)

(assert b_and!7921)

(assert (not b_next!5285))

(assert (not b_next!5287))

(check-sat)

(pop 1)

