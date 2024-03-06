; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7180 () Bool)

(assert start!7180)

(declare-fun b!52760 () Bool)

(declare-fun res!23938 () Bool)

(declare-fun e!27386 () Bool)

(assert (=> b!52760 (=> (not res!23938) (not e!27386))))

(declare-datatypes () ((T!2992 (T!2993 (val!142 Int)))))

(declare-fun x1!42 () T!2992)

(declare-fun x2!44 () T!2992)

(declare-datatypes () ((List!419 (Cons!406 (h!607 T!2992) (t!46682 List!419)) (Nil!407))))

(declare-fun l!1016 () List!419)

(declare-datatypes () ((Unit!865 (Unit!866))))

(declare-fun x$1!744 () Unit!865)

(declare-fun indexOfInjective!1 (List!419 T!2992 T!2992) Unit!865)

(declare-fun tail!691 (List!419) List!419)

(assert (=> b!52760 (= res!23938 (= x$1!744 (indexOfInjective!1 (tail!691 l!1016) x1!42 x2!44)))))

(declare-fun res!23943 () Bool)

(assert (=> start!7180 (=> (not res!23943) (not e!27386))))

(declare-fun contains!43 (List!419 T!2992) Bool)

(assert (=> start!7180 (= res!23943 (contains!43 l!1016 x1!42))))

(assert (=> start!7180 e!27386))

(declare-fun e!27387 () Bool)

(assert (=> start!7180 e!27387))

(declare-fun tp_is_empty!283 () Bool)

(assert (=> start!7180 tp_is_empty!283))

(assert (=> start!7180 true))

(declare-fun b!52761 () Bool)

(declare-fun indexOf!3 (List!419 T!2992) Int)

(assert (=> b!52761 (= e!27386 (= (indexOf!3 l!1016 x1!42) (indexOf!3 l!1016 x2!44)))))

(declare-fun b!52762 () Bool)

(declare-fun res!23940 () Bool)

(assert (=> b!52762 (=> (not res!23940) (not e!27386))))

(declare-fun isEmpty!436 (List!419) Bool)

(assert (=> b!52762 (= res!23940 (not (isEmpty!436 l!1016)))))

(declare-fun b!52763 () Bool)

(declare-fun res!23939 () Bool)

(assert (=> b!52763 (=> (not res!23939) (not e!27386))))

(declare-fun head!669 (List!419) T!2992)

(assert (=> b!52763 (= res!23939 (not (= (head!669 l!1016) x2!44)))))

(declare-fun b!52764 () Bool)

(declare-fun res!23942 () Bool)

(assert (=> b!52764 (=> (not res!23942) (not e!27386))))

(assert (=> b!52764 (= res!23942 (not (= (head!669 l!1016) x1!42)))))

(declare-fun b!52765 () Bool)

(declare-fun tp!14942 () Bool)

(assert (=> b!52765 (= e!27387 (and tp_is_empty!283 tp!14942))))

(declare-fun b!52766 () Bool)

(declare-fun res!23937 () Bool)

(assert (=> b!52766 (=> (not res!23937) (not e!27386))))

(assert (=> b!52766 (= res!23937 (not (= x1!42 x2!44)))))

(declare-fun b!52767 () Bool)

(declare-fun res!23941 () Bool)

(assert (=> b!52767 (=> (not res!23941) (not e!27386))))

(assert (=> b!52767 (= res!23941 (contains!43 l!1016 x2!44))))

(assert (= (and start!7180 res!23943) b!52767))

(assert (= (and b!52767 res!23941) b!52766))

(assert (= (and b!52766 res!23937) b!52762))

(assert (= (and b!52762 res!23940) b!52764))

(assert (= (and b!52764 res!23942) b!52763))

(assert (= (and b!52763 res!23939) b!52760))

(assert (= (and b!52760 res!23938) b!52761))

(assert (= (and start!7180 (is-Cons!406 l!1016)) b!52765))

(declare-fun m!56821 () Bool)

(assert (=> start!7180 m!56821))

(declare-fun m!56823 () Bool)

(assert (=> b!52763 m!56823))

(assert (=> b!52764 m!56823))

(declare-fun m!56825 () Bool)

(assert (=> b!52760 m!56825))

(assert (=> b!52760 m!56825))

(declare-fun m!56827 () Bool)

(assert (=> b!52760 m!56827))

(declare-fun m!56829 () Bool)

(assert (=> b!52762 m!56829))

(declare-fun m!56831 () Bool)

(assert (=> b!52761 m!56831))

(declare-fun m!56833 () Bool)

(assert (=> b!52761 m!56833))

(declare-fun m!56835 () Bool)

(assert (=> b!52767 m!56835))

(push 1)

(assert (not start!7180))

(assert (not b!52761))

(assert (not b!52760))

(assert (not b!52765))

(assert (not b!52767))

(assert tp_is_empty!283)

(assert (not b!52762))

(assert (not b!52763))

(assert (not b!52764))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!44434 () Bool)

(declare-fun lt!9219 () Bool)

(declare-fun content!94 (List!419) (Set T!2992))

(assert (=> d!44434 (= lt!9219 (member x1!42 (content!94 l!1016)))))

(declare-fun e!27392 () Bool)

(assert (=> d!44434 (= lt!9219 e!27392)))

(declare-fun res!23949 () Bool)

(assert (=> d!44434 (=> (not res!23949) (not e!27392))))

(assert (=> d!44434 (= res!23949 (is-Cons!406 l!1016))))

(assert (=> d!44434 (= (contains!43 l!1016 x1!42) lt!9219)))

(declare-fun b!52772 () Bool)

(declare-fun e!27393 () Bool)

(assert (=> b!52772 (= e!27392 e!27393)))

(declare-fun res!23948 () Bool)

(assert (=> b!52772 (=> res!23948 e!27393)))

(assert (=> b!52772 (= res!23948 (= (h!607 l!1016) x1!42))))

(declare-fun b!52773 () Bool)

(assert (=> b!52773 (= e!27393 (contains!43 (t!46682 l!1016) x1!42))))

(assert (= (and d!44434 res!23949) b!52772))

(assert (= (and b!52772 (not res!23948)) b!52773))

(declare-fun m!56837 () Bool)

(assert (=> d!44434 m!56837))

(declare-fun m!56839 () Bool)

(assert (=> d!44434 m!56839))

(declare-fun m!56841 () Bool)

(assert (=> b!52773 m!56841))

(assert (=> start!7180 d!44434))

(declare-fun d!44436 () Bool)

(assert (=> d!44436 (= (head!669 l!1016) (h!607 l!1016))))

(assert (=> b!52763 d!44436))

(assert (=> b!52764 d!44436))

(declare-fun d!44438 () Bool)

(assert (=> d!44438 (not (= (indexOf!3 (tail!691 l!1016) x1!42) (indexOf!3 (tail!691 l!1016) x2!44)))))

(assert (=> d!44438 true))

(declare-fun x$1!749 () Unit!865)

(assert (=> d!44438 (= (indexOfInjective!1 (tail!691 l!1016) x1!42 x2!44) x$1!749)))

(declare-fun bs!23856 () Bool)

(assert (= bs!23856 d!44438))

(assert (=> bs!23856 m!56825))

(declare-fun m!56843 () Bool)

(assert (=> bs!23856 m!56843))

(assert (=> bs!23856 m!56825))

(declare-fun m!56845 () Bool)

(assert (=> bs!23856 m!56845))

(assert (=> b!52760 d!44438))

(declare-fun d!44440 () Bool)

(assert (=> d!44440 (= (tail!691 l!1016) (t!46682 l!1016))))

(assert (=> b!52760 d!44440))

(declare-fun d!44442 () Bool)

(declare-fun lt!9220 () Bool)

(assert (=> d!44442 (= lt!9220 (member x2!44 (content!94 l!1016)))))

(declare-fun e!27394 () Bool)

(assert (=> d!44442 (= lt!9220 e!27394)))

(declare-fun res!23951 () Bool)

(assert (=> d!44442 (=> (not res!23951) (not e!27394))))

(assert (=> d!44442 (= res!23951 (is-Cons!406 l!1016))))

(assert (=> d!44442 (= (contains!43 l!1016 x2!44) lt!9220)))

(declare-fun b!52774 () Bool)

(declare-fun e!27395 () Bool)

(assert (=> b!52774 (= e!27394 e!27395)))

(declare-fun res!23950 () Bool)

(assert (=> b!52774 (=> res!23950 e!27395)))

(assert (=> b!52774 (= res!23950 (= (h!607 l!1016) x2!44))))

(declare-fun b!52775 () Bool)

(assert (=> b!52775 (= e!27395 (contains!43 (t!46682 l!1016) x2!44))))

(assert (= (and d!44442 res!23951) b!52774))

(assert (= (and b!52774 (not res!23950)) b!52775))

(assert (=> d!44442 m!56837))

(declare-fun m!56847 () Bool)

(assert (=> d!44442 m!56847))

(declare-fun m!56849 () Bool)

(assert (=> b!52775 m!56849))

(assert (=> b!52767 d!44442))

(declare-fun d!44444 () Bool)

(declare-fun lt!9225 () Int)

(assert (=> d!44444 (= (>= lt!9225 0) (member x1!42 (content!94 l!1016)))))

(declare-fun e!27401 () Int)

(assert (=> d!44444 (= lt!9225 e!27401)))

(declare-fun c!11463 () Bool)

(assert (=> d!44444 (= c!11463 (is-Nil!407 l!1016))))

(assert (=> d!44444 (= (indexOf!3 l!1016 x1!42) lt!9225)))

(declare-fun b!52784 () Bool)

(assert (=> b!52784 (= e!27401 (- 1))))

(declare-fun b!52786 () Bool)

(declare-fun e!27400 () Int)

(assert (=> b!52786 (= e!27400 0)))

(declare-fun b!52785 () Bool)

(assert (=> b!52785 (= e!27401 e!27400)))

(declare-fun c!11464 () Bool)

(assert (=> b!52785 (= c!11464 (and (is-Cons!406 l!1016) (= (h!607 l!1016) x1!42)))))

(declare-fun b!52787 () Bool)

(declare-fun lt!9226 () Int)

(assert (=> b!52787 (= e!27400 (ite (= lt!9226 (- 1)) (- 1) (+ lt!9226 1)))))

(assert (=> b!52787 (= lt!9226 (indexOf!3 (t!46682 l!1016) x1!42))))

(assert (= (and b!52785 c!11464) b!52786))

(assert (= (and b!52785 (not c!11464)) b!52787))

(assert (= (and d!44444 c!11463) b!52784))

(assert (= (and d!44444 (not c!11463)) b!52785))

(assert (=> d!44444 m!56837))

(assert (=> d!44444 m!56839))

(declare-fun m!56851 () Bool)

(assert (=> b!52787 m!56851))

(assert (=> b!52761 d!44444))

(declare-fun d!44446 () Bool)

(declare-fun lt!9227 () Int)

(assert (=> d!44446 (= (>= lt!9227 0) (member x2!44 (content!94 l!1016)))))

(declare-fun e!27403 () Int)

(assert (=> d!44446 (= lt!9227 e!27403)))

(declare-fun c!11465 () Bool)

(assert (=> d!44446 (= c!11465 (is-Nil!407 l!1016))))

(assert (=> d!44446 (= (indexOf!3 l!1016 x2!44) lt!9227)))

(declare-fun b!52788 () Bool)

(assert (=> b!52788 (= e!27403 (- 1))))

(declare-fun b!52790 () Bool)

(declare-fun e!27402 () Int)

(assert (=> b!52790 (= e!27402 0)))

(declare-fun b!52789 () Bool)

(assert (=> b!52789 (= e!27403 e!27402)))

(declare-fun c!11466 () Bool)

(assert (=> b!52789 (= c!11466 (and (is-Cons!406 l!1016) (= (h!607 l!1016) x2!44)))))

(declare-fun b!52791 () Bool)

(declare-fun lt!9228 () Int)

(assert (=> b!52791 (= e!27402 (ite (= lt!9228 (- 1)) (- 1) (+ lt!9228 1)))))

(assert (=> b!52791 (= lt!9228 (indexOf!3 (t!46682 l!1016) x2!44))))

(assert (= (and b!52789 c!11466) b!52790))

(assert (= (and b!52789 (not c!11466)) b!52791))

(assert (= (and d!44446 c!11465) b!52788))

(assert (= (and d!44446 (not c!11465)) b!52789))

(assert (=> d!44446 m!56837))

(assert (=> d!44446 m!56847))

(declare-fun m!56853 () Bool)

(assert (=> b!52791 m!56853))

(assert (=> b!52761 d!44446))

(declare-fun d!44448 () Bool)

(assert (=> d!44448 (= (isEmpty!436 l!1016) (is-Nil!407 l!1016))))

(assert (=> b!52762 d!44448))

(declare-fun b!52796 () Bool)

(declare-fun e!27406 () Bool)

(declare-fun tp!14945 () Bool)

(assert (=> b!52796 (= e!27406 (and tp_is_empty!283 tp!14945))))

(assert (=> b!52765 (= tp!14942 e!27406)))

(assert (= (and b!52765 (is-Cons!406 (t!46682 l!1016))) b!52796))

(push 1)

(assert (not b!52775))

(assert (not b!52787))

(assert (not d!44438))

(assert (not d!44446))

(assert (not b!52773))

(assert tp_is_empty!283)

(assert (not d!44442))

(assert (not b!52791))

(assert (not d!44444))

(assert (not d!44434))

(assert (not b!52796))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

