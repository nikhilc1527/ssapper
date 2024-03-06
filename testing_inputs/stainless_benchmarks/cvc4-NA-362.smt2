; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2708 () Bool)

(assert start!2708)

(declare-fun value!1445 () Int)

(declare-datatypes () ((Tree!87 (Leaf!167) (Node!19 (left!577 Tree!87) (value!1461 Int) (right!580 Tree!87)))))

(declare-fun res!4803 () Tree!87)

(declare-fun tree!73 () Tree!87)

(declare-fun b!13235 () Bool)

(declare-fun e!7256 () Bool)

(declare-fun content!21 (Tree!87) (Set Int))

(assert (=> b!13235 (= e!7256 (= (content!21 res!4803) (union (content!21 tree!73) (insert value!1445 (as emptyset (Set Int))))))))

(declare-fun b!13232 () Bool)

(declare-fun res!4964 () Bool)

(declare-fun e!7255 () Bool)

(assert (=> b!13232 (=> (not res!4964) (not e!7255))))

(assert (=> b!13232 (= res!4964 (and (not (is-Leaf!167 tree!73)) (>= (value!1461 tree!73) value!1445) (> (value!1461 tree!73) value!1445)))))

(declare-fun b!13233 () Bool)

(declare-fun res!4966 () Bool)

(assert (=> b!13233 (=> (not res!4966) (not e!7255))))

(declare-fun insert!10 (Tree!87 Int) Tree!87)

(assert (=> b!13233 (= res!4966 (= res!4803 (Node!19 (insert!10 (left!577 tree!73) value!1445) (value!1461 tree!73) (right!580 tree!73))))))

(declare-fun res!4963 () Bool)

(assert (=> start!2708 (=> (not res!4963) (not e!7255))))

(declare-fun isBST!0 (Tree!87) Bool)

(assert (=> start!2708 (= res!4963 (isBST!0 tree!73))))

(assert (=> start!2708 e!7255))

(assert (=> start!2708 true))

(declare-fun b!13234 () Bool)

(assert (=> b!13234 (= e!7255 (not e!7256))))

(declare-fun res!4965 () Bool)

(assert (=> b!13234 (=> (not res!4965) (not e!7256))))

(assert (=> b!13234 (= res!4965 (isBST!0 res!4803))))

(assert (=> b!13234 (is-Node!19 res!4803)))

(assert (= (and start!2708 res!4963) b!13232))

(assert (= (and b!13232 res!4964) b!13233))

(assert (= (and b!13233 res!4966) b!13234))

(assert (= (and b!13234 res!4965) b!13235))

(declare-fun m!16711 () Bool)

(assert (=> b!13235 m!16711))

(declare-fun m!16713 () Bool)

(assert (=> b!13235 m!16713))

(declare-fun m!16715 () Bool)

(assert (=> b!13235 m!16715))

(declare-fun m!16717 () Bool)

(assert (=> b!13233 m!16717))

(declare-fun m!16719 () Bool)

(assert (=> start!2708 m!16719))

(declare-fun m!16721 () Bool)

(assert (=> b!13234 m!16721))

(push 1)

(assert (not start!2708))

(assert (not b!13235))

(assert (not b!13234))

(assert (not b!13233))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!13246 () Bool)

(declare-fun m!16723 () Bool)

(assert (=> b!13246 m!16723))

(declare-fun inst!80 () Bool)

(declare-fun x!7512 () Int)

(assert (=> b!13246 (= inst!80 (=> true (or (not (member x!7512 (content!21 (left!577 tree!73)))) (< x!7512 (value!1461 tree!73)))))))

(declare-fun m!16725 () Bool)

(assert (=> b!13246 m!16725))

(declare-fun b!13247 () Bool)

(declare-fun m!16727 () Bool)

(assert (=> b!13247 m!16727))

(declare-fun inst!81 () Bool)

(declare-fun x!7513 () Int)

(assert (=> b!13247 (= inst!81 (=> true (or (not (member x!7513 (content!21 (right!580 tree!73)))) (< (value!1461 tree!73) x!7513))))))

(declare-fun m!16729 () Bool)

(assert (=> b!13247 m!16729))

(declare-fun bs!3882 () Bool)

(declare-fun neg-inst!69 () Bool)

(assert (= bs!3882 neg-inst!69))

(assert (=> bs!3882 m!16723))

(declare-fun bs!3883 () Bool)

(declare-fun s!500 () Bool)

(assert (= bs!3883 (and neg-inst!69 s!500)))

(assert (=> bs!3883 (=> true (or (not (member x!7512 (content!21 (left!577 tree!73)))) (< x!7512 (value!1461 tree!73))))))

(assert (=> m!16725 s!500))

(declare-fun bs!3884 () Bool)

(assert (= bs!3884 (and neg-inst!69 b!13246)))

(assert (=> bs!3884 (= true inst!80)))

(declare-fun bs!3885 () Bool)

(declare-fun neg-inst!68 () Bool)

(assert (= bs!3885 neg-inst!68))

(assert (=> bs!3885 m!16727))

(declare-fun bs!3886 () Bool)

(declare-fun s!502 () Bool)

(assert (= bs!3886 (and neg-inst!68 s!502)))

(assert (=> bs!3886 (=> true (or (not (member x!7513 (content!21 (right!580 tree!73)))) (< (value!1461 tree!73) x!7513)))))

(assert (=> m!16729 s!502))

(declare-fun bs!3887 () Bool)

(assert (= bs!3887 (and neg-inst!68 b!13247)))

(assert (=> bs!3887 (= true inst!81)))

(declare-fun res!4978 () Bool)

(declare-fun e!7261 () Bool)

(assert (=> b!13246 (=> (not res!4978) (not e!7261))))

(assert (=> b!13246 (= res!4978 inst!80)))

(assert (=> b!13247 (= e!7261 inst!81)))

(declare-fun b!13244 () Bool)

(declare-fun e!7262 () Bool)

(assert (=> b!13244 (= e!7262 e!7261)))

(declare-fun res!4976 () Bool)

(assert (=> b!13244 (=> (not res!4976) (not e!7261))))

(assert (=> b!13244 (= res!4976 (isBST!0 (left!577 tree!73)))))

(declare-fun b!13245 () Bool)

(declare-fun res!4977 () Bool)

(assert (=> b!13245 (=> (not res!4977) (not e!7261))))

(assert (=> b!13245 (= res!4977 (isBST!0 (right!580 tree!73)))))

(declare-fun d!10271 () Bool)

(declare-fun res!4975 () Bool)

(assert (=> d!10271 (=> res!4975 e!7262)))

(assert (=> d!10271 (= res!4975 (is-Leaf!167 tree!73))))

(assert (=> d!10271 (= (isBST!0 tree!73) e!7262)))

(assert (= (and d!10271 (not res!4975)) b!13244))

(assert (= (and b!13244 res!4976) b!13245))

(assert (= (and b!13245 res!4977) b!13246))

(assert (= neg-inst!69 inst!80))

(assert (= (and b!13246 res!4978) b!13247))

(assert (= neg-inst!68 inst!81))

(declare-fun m!16731 () Bool)

(assert (=> b!13244 m!16731))

(declare-fun m!16733 () Bool)

(assert (=> b!13245 m!16733))

(assert (=> start!2708 d!10271))

(declare-fun d!10273 () Bool)

(declare-fun c!3718 () Bool)

(assert (=> d!10273 (= c!3718 (is-Leaf!167 res!4803))))

(declare-fun e!7265 () (Set Int))

(assert (=> d!10273 (= (content!21 res!4803) e!7265)))

(declare-fun b!13252 () Bool)

(assert (=> b!13252 (= e!7265 (as emptyset (Set Int)))))

(declare-fun b!13253 () Bool)

(assert (=> b!13253 (= e!7265 (union (union (content!21 (left!577 res!4803)) (insert (value!1461 res!4803) (as emptyset (Set Int)))) (content!21 (right!580 res!4803))))))

(assert (= (and d!10273 c!3718) b!13252))

(assert (= (and d!10273 (not c!3718)) b!13253))

(declare-fun m!16735 () Bool)

(assert (=> b!13253 m!16735))

(declare-fun m!16737 () Bool)

(assert (=> b!13253 m!16737))

(declare-fun m!16739 () Bool)

(assert (=> b!13253 m!16739))

(assert (=> b!13235 d!10273))

(declare-fun d!10275 () Bool)

(declare-fun c!3719 () Bool)

(assert (=> d!10275 (= c!3719 (is-Leaf!167 tree!73))))

(declare-fun e!7266 () (Set Int))

(assert (=> d!10275 (= (content!21 tree!73) e!7266)))

(declare-fun b!13254 () Bool)

(assert (=> b!13254 (= e!7266 (as emptyset (Set Int)))))

(declare-fun b!13255 () Bool)

(assert (=> b!13255 (= e!7266 (union (union (content!21 (left!577 tree!73)) (insert (value!1461 tree!73) (as emptyset (Set Int)))) (content!21 (right!580 tree!73))))))

(assert (= (and d!10275 c!3719) b!13254))

(assert (= (and d!10275 (not c!3719)) b!13255))

(assert (=> b!13255 m!16723))

(declare-fun m!16741 () Bool)

(assert (=> b!13255 m!16741))

(assert (=> b!13255 m!16727))

(assert (=> b!13235 d!10275))

(declare-fun b!13258 () Bool)

(assert (=> b!13258 m!16735))

(declare-fun inst!82 () Bool)

(declare-fun x!7514 () Int)

(assert (=> b!13258 (= inst!82 (=> true (or (not (member x!7514 (content!21 (left!577 res!4803)))) (< x!7514 (value!1461 res!4803)))))))

(declare-fun m!16743 () Bool)

(assert (=> b!13258 m!16743))

(declare-fun bs!3888 () Bool)

(assert (= bs!3888 (and b!13258 b!13246)))

(assert (=> (and bs!3888 (= (content!21 (left!577 res!4803)) (content!21 (left!577 tree!73))) (= (value!1461 res!4803) (value!1461 tree!73))) (= inst!82 inst!80)))

(declare-fun bs!3889 () Bool)

(assert (= bs!3889 (and b!13258 neg-inst!69)))

(assert (=> (and bs!3889 (= (content!21 (left!577 res!4803)) (content!21 (left!577 tree!73))) (= (value!1461 res!4803) (value!1461 tree!73))) (= inst!82 true)))

(declare-fun b!13259 () Bool)

(assert (=> b!13259 m!16739))

(declare-fun inst!83 () Bool)

(declare-fun x!7515 () Int)

(assert (=> b!13259 (= inst!83 (=> true (or (not (member x!7515 (content!21 (right!580 res!4803)))) (< (value!1461 res!4803) x!7515))))))

(declare-fun m!16745 () Bool)

(assert (=> b!13259 m!16745))

(declare-fun bs!3890 () Bool)

(assert (= bs!3890 (and b!13259 b!13247)))

(assert (=> (and bs!3890 (= (content!21 (right!580 res!4803)) (content!21 (right!580 tree!73))) (= (value!1461 res!4803) (value!1461 tree!73))) (= inst!83 inst!81)))

(declare-fun bs!3891 () Bool)

(assert (= bs!3891 (and b!13259 neg-inst!68)))

(assert (=> (and bs!3891 (= (content!21 (right!580 res!4803)) (content!21 (right!580 tree!73))) (= (value!1461 res!4803) (value!1461 tree!73))) (= inst!83 true)))

(declare-fun bs!3892 () Bool)

(declare-fun neg-inst!71 () Bool)

(assert (= bs!3892 neg-inst!71))

(assert (=> bs!3892 m!16735))

(declare-fun bs!3893 () Bool)

(declare-fun s!504 () Bool)

(assert (= bs!3893 (and neg-inst!71 s!504)))

(assert (=> bs!3893 (=> true (or (not (member x!7514 (content!21 (left!577 res!4803)))) (< x!7514 (value!1461 res!4803))))))

(assert (=> m!16743 s!504))

(declare-fun bs!3894 () Bool)

(assert (= bs!3894 (and neg-inst!71 b!13246)))

(assert (=> (and bs!3894 (= (content!21 (left!577 res!4803)) (content!21 (left!577 tree!73))) (= (value!1461 res!4803) (value!1461 tree!73))) (= true inst!80)))

(declare-fun bs!3895 () Bool)

(assert (= bs!3895 (and neg-inst!71 b!13258)))

(assert (=> bs!3895 (= true inst!82)))

(declare-fun bs!3896 () Bool)

(assert (= bs!3896 (and neg-inst!71 neg-inst!69)))

(assert (=> (and bs!3896 (= (content!21 (left!577 res!4803)) (content!21 (left!577 tree!73))) (= (value!1461 res!4803) (value!1461 tree!73))) (= true true)))

(declare-fun bs!3897 () Bool)

(declare-fun neg-inst!70 () Bool)

(assert (= bs!3897 neg-inst!70))

(assert (=> bs!3897 m!16739))

(declare-fun bs!3898 () Bool)

(declare-fun s!506 () Bool)

(assert (= bs!3898 (and neg-inst!70 s!506)))

(assert (=> bs!3898 (=> true (or (not (member x!7515 (content!21 (right!580 res!4803)))) (< (value!1461 res!4803) x!7515)))))

(assert (=> m!16745 s!506))

(declare-fun bs!3899 () Bool)

(assert (= bs!3899 (and neg-inst!70 b!13247)))

(assert (=> (and bs!3899 (= (content!21 (right!580 res!4803)) (content!21 (right!580 tree!73))) (= (value!1461 res!4803) (value!1461 tree!73))) (= true inst!81)))

(declare-fun bs!3900 () Bool)

(assert (= bs!3900 (and neg-inst!70 neg-inst!68)))

(assert (=> (and bs!3900 (= (content!21 (right!580 res!4803)) (content!21 (right!580 tree!73))) (= (value!1461 res!4803) (value!1461 tree!73))) (= true true)))

(declare-fun bs!3901 () Bool)

(assert (= bs!3901 (and neg-inst!70 b!13259)))

(assert (=> bs!3901 (= true inst!83)))

(declare-fun res!4982 () Bool)

(declare-fun e!7267 () Bool)

(assert (=> b!13258 (=> (not res!4982) (not e!7267))))

(assert (=> b!13258 (= res!4982 inst!82)))

(assert (=> b!13259 (= e!7267 inst!83)))

(declare-fun b!13256 () Bool)

(declare-fun e!7268 () Bool)

(assert (=> b!13256 (= e!7268 e!7267)))

(declare-fun res!4980 () Bool)

(assert (=> b!13256 (=> (not res!4980) (not e!7267))))

(assert (=> b!13256 (= res!4980 (isBST!0 (left!577 res!4803)))))

(declare-fun b!13257 () Bool)

(declare-fun res!4981 () Bool)

(assert (=> b!13257 (=> (not res!4981) (not e!7267))))

(assert (=> b!13257 (= res!4981 (isBST!0 (right!580 res!4803)))))

(declare-fun d!10277 () Bool)

(declare-fun res!4979 () Bool)

(assert (=> d!10277 (=> res!4979 e!7268)))

(assert (=> d!10277 (= res!4979 (is-Leaf!167 res!4803))))

(assert (=> d!10277 (= (isBST!0 res!4803) e!7268)))

(assert (= (and d!10277 (not res!4979)) b!13256))

(assert (= (and b!13256 res!4980) b!13257))

(assert (= (and b!13257 res!4981) b!13258))

(assert (= neg-inst!71 inst!82))

(assert (= (and b!13258 res!4982) b!13259))

(assert (= neg-inst!70 inst!83))

(declare-fun m!16747 () Bool)

(assert (=> b!13256 m!16747))

(declare-fun m!16749 () Bool)

(assert (=> b!13257 m!16749))

(assert (=> b!13234 d!10277))

(declare-fun e!7276 () Bool)

(declare-fun lt!1903 () Tree!87)

(declare-fun b!13272 () Bool)

(assert (=> b!13272 (= e!7276 (= (content!21 lt!1903) (union (content!21 (left!577 tree!73)) (insert value!1445 (as emptyset (Set Int))))))))

(declare-fun b!13273 () Bool)

(declare-fun res!4995 () Bool)

(assert (=> b!13273 (=> (not res!4995) (not e!7276))))

(assert (=> b!13273 (= res!4995 (isBST!0 lt!1903))))

(declare-fun lt!1904 () Bool)

(declare-fun b!13274 () Bool)

(declare-fun lt!1905 () Tree!87)

(declare-fun e!7277 () Tree!87)

(assert (=> b!13274 (= e!7277 (ite lt!1904 (Node!19 (left!577 (left!577 tree!73)) (value!1461 (left!577 tree!73)) lt!1905) (ite (> (value!1461 (left!577 tree!73)) value!1445) (Node!19 lt!1905 (value!1461 (left!577 tree!73)) (right!580 (left!577 tree!73))) (Node!19 (left!577 (left!577 tree!73)) (value!1461 (left!577 tree!73)) (right!580 (left!577 tree!73))))))))

(declare-fun e!7275 () Tree!87)

(assert (=> b!13274 (= lt!1905 e!7275)))

(declare-fun c!3724 () Bool)

(assert (=> b!13274 (= c!3724 (or lt!1904 (> (value!1461 (left!577 tree!73)) value!1445)))))

(assert (=> b!13274 (= lt!1904 (< (value!1461 (left!577 tree!73)) value!1445))))

(declare-fun d!10279 () Bool)

(assert (=> d!10279 e!7276))

(declare-fun res!4993 () Bool)

(assert (=> d!10279 (=> (not res!4993) (not e!7276))))

(assert (=> d!10279 (= res!4993 (is-Node!19 lt!1903))))

(assert (=> d!10279 (= lt!1903 e!7277)))

(declare-fun c!3725 () Bool)

(assert (=> d!10279 (= c!3725 (is-Leaf!167 (left!577 tree!73)))))

(assert (=> d!10279 (isBST!0 (left!577 tree!73))))

(assert (=> d!10279 (= (insert!10 (left!577 tree!73) value!1445) lt!1903)))

(declare-fun b!13275 () Bool)

(assert (=> b!13275 (= e!7277 (Node!19 Leaf!167 value!1445 Leaf!167))))

(declare-fun b!13276 () Bool)

(assert (=> b!13276 (= e!7275 (insert!10 (ite lt!1904 (right!580 (left!577 tree!73)) (left!577 (left!577 tree!73))) value!1445))))

(declare-fun b!13277 () Bool)

(declare-fun res!4994 () Tree!87)

(assert (=> b!13277 (= e!7275 res!4994)))

(assert (=> b!13277 true))

(assert (=> b!13277 true))

(assert (= (and b!13274 c!3724) b!13276))

(assert (= (and b!13274 (not c!3724)) b!13277))

(assert (= (and d!10279 c!3725) b!13275))

(assert (= (and d!10279 (not c!3725)) b!13274))

(assert (= (and d!10279 res!4993) b!13273))

(assert (= (and b!13273 res!4995) b!13272))

(declare-fun m!16751 () Bool)

(assert (=> b!13272 m!16751))

(assert (=> b!13272 m!16723))

(assert (=> b!13272 m!16715))

(declare-fun m!16753 () Bool)

(assert (=> b!13273 m!16753))

(assert (=> d!10279 m!16731))

(declare-fun m!16755 () Bool)

(assert (=> b!13276 m!16755))

(assert (=> b!13233 d!10279))

(push 1)

(assert (not b!13244))

(assert (not b!13276))

(assert (not neg-inst!68))

(assert (not b!13256))

(assert (not b!13259))

(assert (not b!13247))

(assert (not b!13246))

(assert (not neg-inst!70))

(assert (not b!13273))

(assert (not b!13257))

(assert (not b!13258))

(assert (not neg-inst!71))

(assert (not b!13272))

(assert (not neg-inst!69))

(assert (not d!10279))

(assert (not b!13245))

(assert (not b!13255))

(assert (not b!13253))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!10281 () Bool)

(declare-fun c!3726 () Bool)

(assert (=> d!10281 (= c!3726 (is-Leaf!167 (left!577 tree!73)))))

(declare-fun e!7278 () (Set Int))

(assert (=> d!10281 (= (content!21 (left!577 tree!73)) e!7278)))

(declare-fun b!13278 () Bool)

(assert (=> b!13278 (= e!7278 (as emptyset (Set Int)))))

(declare-fun b!13279 () Bool)

(assert (=> b!13279 (= e!7278 (union (union (content!21 (left!577 (left!577 tree!73))) (insert (value!1461 (left!577 tree!73)) (as emptyset (Set Int)))) (content!21 (right!580 (left!577 tree!73)))))))

(assert (= (and d!10281 c!3726) b!13278))

(assert (= (and d!10281 (not c!3726)) b!13279))

(declare-fun m!16757 () Bool)

(assert (=> b!13279 m!16757))

(declare-fun m!16759 () Bool)

(assert (=> b!13279 m!16759))

(declare-fun m!16761 () Bool)

(assert (=> b!13279 m!16761))

(assert (=> neg-inst!69 d!10281))

(declare-fun b!13282 () Bool)

(declare-fun m!16763 () Bool)

(assert (=> b!13282 m!16763))

(declare-fun inst!84 () Bool)

(declare-fun x!7516 () Int)

(assert (=> b!13282 (= inst!84 (=> true (or (not (member x!7516 (content!21 (left!577 (right!580 res!4803))))) (< x!7516 (value!1461 (right!580 res!4803))))))))

(declare-fun m!16765 () Bool)

(assert (=> b!13282 m!16765))

(declare-fun bs!3902 () Bool)

(assert (= bs!3902 (and b!13282 b!13246)))

(assert (=> (and bs!3902 (= (content!21 (left!577 (right!580 res!4803))) (content!21 (left!577 tree!73))) (= (value!1461 (right!580 res!4803)) (value!1461 tree!73))) (= inst!84 inst!80)))

(declare-fun bs!3903 () Bool)

(assert (= bs!3903 (and b!13282 b!13258)))

(assert (=> (and bs!3903 (= (content!21 (left!577 (right!580 res!4803))) (content!21 (left!577 res!4803))) (= (value!1461 (right!580 res!4803)) (value!1461 res!4803))) (= inst!84 inst!82)))

(declare-fun bs!3904 () Bool)

(assert (= bs!3904 (and b!13282 neg-inst!71)))

(assert (=> (and bs!3904 (= (content!21 (left!577 (right!580 res!4803))) (content!21 (left!577 res!4803))) (= (value!1461 (right!580 res!4803)) (value!1461 res!4803))) (= inst!84 true)))

(declare-fun bs!3905 () Bool)

(assert (= bs!3905 (and b!13282 neg-inst!69)))

(assert (=> (and bs!3905 (= (content!21 (left!577 (right!580 res!4803))) (content!21 (left!577 tree!73))) (= (value!1461 (right!580 res!4803)) (value!1461 tree!73))) (= inst!84 true)))

(declare-fun b!13283 () Bool)

(declare-fun m!16767 () Bool)

(assert (=> b!13283 m!16767))

(declare-fun inst!85 () Bool)

(declare-fun x!7517 () Int)

(assert (=> b!13283 (= inst!85 (=> true (or (not (member x!7517 (content!21 (right!580 (right!580 res!4803))))) (< (value!1461 (right!580 res!4803)) x!7517))))))

(declare-fun m!16769 () Bool)

(assert (=> b!13283 m!16769))

(declare-fun bs!3906 () Bool)

(assert (= bs!3906 (and b!13283 b!13247)))

(assert (=> (and bs!3906 (= (content!21 (right!580 (right!580 res!4803))) (content!21 (right!580 tree!73))) (= (value!1461 (right!580 res!4803)) (value!1461 tree!73))) (= inst!85 inst!81)))

(declare-fun bs!3907 () Bool)

(assert (= bs!3907 (and b!13283 neg-inst!68)))

(assert (=> (and bs!3907 (= (content!21 (right!580 (right!580 res!4803))) (content!21 (right!580 tree!73))) (= (value!1461 (right!580 res!4803)) (value!1461 tree!73))) (= inst!85 true)))

(declare-fun bs!3908 () Bool)

(assert (= bs!3908 (and b!13283 b!13259)))

(assert (=> (and bs!3908 (= (content!21 (right!580 (right!580 res!4803))) (content!21 (right!580 res!4803))) (= (value!1461 (right!580 res!4803)) (value!1461 res!4803))) (= inst!85 inst!83)))

(declare-fun bs!3909 () Bool)

(assert (= bs!3909 (and b!13283 neg-inst!70)))

(assert (=> (and bs!3909 (= (content!21 (right!580 (right!580 res!4803))) (content!21 (right!580 res!4803))) (= (value!1461 (right!580 res!4803)) (value!1461 res!4803))) (= inst!85 true)))

(declare-fun bs!3910 () Bool)

(declare-fun neg-inst!73 () Bool)

(assert (= bs!3910 neg-inst!73))

(assert (=> bs!3910 m!16763))

(declare-fun bs!3911 () Bool)

(declare-fun s!508 () Bool)

(assert (= bs!3911 (and neg-inst!73 s!508)))

(assert (=> bs!3911 (=> true (or (not (member x!7516 (content!21 (left!577 (right!580 res!4803))))) (< x!7516 (value!1461 (right!580 res!4803)))))))

(assert (=> m!16765 s!508))

(declare-fun bs!3912 () Bool)

(assert (= bs!3912 (and neg-inst!73 b!13246)))

(assert (=> (and bs!3912 (= (content!21 (left!577 (right!580 res!4803))) (content!21 (left!577 tree!73))) (= (value!1461 (right!580 res!4803)) (value!1461 tree!73))) (= true inst!80)))

(declare-fun bs!3913 () Bool)

(assert (= bs!3913 (and neg-inst!73 b!13282)))

(assert (=> bs!3913 (= true inst!84)))

(declare-fun bs!3914 () Bool)

(assert (= bs!3914 (and neg-inst!73 b!13258)))

(assert (=> (and bs!3914 (= (content!21 (left!577 (right!580 res!4803))) (content!21 (left!577 res!4803))) (= (value!1461 (right!580 res!4803)) (value!1461 res!4803))) (= true inst!82)))

(declare-fun bs!3915 () Bool)

(assert (= bs!3915 (and neg-inst!73 neg-inst!71)))

(assert (=> (and bs!3915 (= (content!21 (left!577 (right!580 res!4803))) (content!21 (left!577 res!4803))) (= (value!1461 (right!580 res!4803)) (value!1461 res!4803))) (= true true)))

(declare-fun bs!3916 () Bool)

(assert (= bs!3916 (and neg-inst!73 neg-inst!69)))

(assert (=> (and bs!3916 (= (content!21 (left!577 (right!580 res!4803))) (content!21 (left!577 tree!73))) (= (value!1461 (right!580 res!4803)) (value!1461 tree!73))) (= true true)))

(declare-fun bs!3917 () Bool)

(declare-fun neg-inst!72 () Bool)

(assert (= bs!3917 neg-inst!72))

(assert (=> bs!3917 m!16767))

(declare-fun bs!3918 () Bool)

(declare-fun s!510 () Bool)

(assert (= bs!3918 (and neg-inst!72 s!510)))

(assert (=> bs!3918 (=> true (or (not (member x!7517 (content!21 (right!580 (right!580 res!4803))))) (< (value!1461 (right!580 res!4803)) x!7517)))))

(assert (=> m!16769 s!510))

(declare-fun bs!3919 () Bool)

(assert (= bs!3919 (and neg-inst!72 b!13247)))

(assert (=> (and bs!3919 (= (content!21 (right!580 (right!580 res!4803))) (content!21 (right!580 tree!73))) (= (value!1461 (right!580 res!4803)) (value!1461 tree!73))) (= true inst!81)))

(declare-fun bs!3920 () Bool)

(assert (= bs!3920 (and neg-inst!72 neg-inst!68)))

(assert (=> (and bs!3920 (= (content!21 (right!580 (right!580 res!4803))) (content!21 (right!580 tree!73))) (= (value!1461 (right!580 res!4803)) (value!1461 tree!73))) (= true true)))

(declare-fun bs!3921 () Bool)

(assert (= bs!3921 (and neg-inst!72 b!13259)))

(assert (=> (and bs!3921 (= (content!21 (right!580 (right!580 res!4803))) (content!21 (right!580 res!4803))) (= (value!1461 (right!580 res!4803)) (value!1461 res!4803))) (= true inst!83)))

(declare-fun bs!3922 () Bool)

(assert (= bs!3922 (and neg-inst!72 b!13283)))

(assert (=> bs!3922 (= true inst!85)))

(declare-fun bs!3923 () Bool)

(assert (= bs!3923 (and neg-inst!72 neg-inst!70)))

(assert (=> (and bs!3923 (= (content!21 (right!580 (right!580 res!4803))) (content!21 (right!580 res!4803))) (= (value!1461 (right!580 res!4803)) (value!1461 res!4803))) (= true true)))

(declare-fun res!4999 () Bool)

(declare-fun e!7279 () Bool)

(assert (=> b!13282 (=> (not res!4999) (not e!7279))))

(assert (=> b!13282 (= res!4999 inst!84)))

(assert (=> b!13283 (= e!7279 inst!85)))

(declare-fun b!13280 () Bool)

(declare-fun e!7280 () Bool)

(assert (=> b!13280 (= e!7280 e!7279)))

(declare-fun res!4997 () Bool)

(assert (=> b!13280 (=> (not res!4997) (not e!7279))))

(assert (=> b!13280 (= res!4997 (isBST!0 (left!577 (right!580 res!4803))))))

(declare-fun b!13281 () Bool)

(declare-fun res!4998 () Bool)

(assert (=> b!13281 (=> (not res!4998) (not e!7279))))

(assert (=> b!13281 (= res!4998 (isBST!0 (right!580 (right!580 res!4803))))))

(declare-fun d!10283 () Bool)

(declare-fun res!4996 () Bool)

(assert (=> d!10283 (=> res!4996 e!7280)))

(assert (=> d!10283 (= res!4996 (is-Leaf!167 (right!580 res!4803)))))

(assert (=> d!10283 (= (isBST!0 (right!580 res!4803)) e!7280)))

(assert (= (and d!10283 (not res!4996)) b!13280))

(assert (= (and b!13280 res!4997) b!13281))

(assert (= (and b!13281 res!4998) b!13282))

(assert (= neg-inst!73 inst!84))

(assert (= (and b!13282 res!4999) b!13283))

(assert (= neg-inst!72 inst!85))

(declare-fun m!16771 () Bool)

(assert (=> b!13280 m!16771))

(declare-fun m!16773 () Bool)

(assert (=> b!13281 m!16773))

(assert (=> b!13257 d!10283))

(declare-fun b!13286 () Bool)

(assert (=> b!13286 m!16757))

(declare-fun inst!86 () Bool)

(declare-fun x!7518 () Int)

(assert (=> b!13286 (= inst!86 (=> true (or (not (member x!7518 (content!21 (left!577 (left!577 tree!73))))) (< x!7518 (value!1461 (left!577 tree!73))))))))

(declare-fun m!16775 () Bool)

(assert (=> b!13286 m!16775))

(declare-fun bs!3924 () Bool)

(assert (= bs!3924 (and b!13286 b!13246)))

(assert (=> (and bs!3924 (= (content!21 (left!577 (left!577 tree!73))) (content!21 (left!577 tree!73))) (= (value!1461 (left!577 tree!73)) (value!1461 tree!73))) (= inst!86 inst!80)))

(declare-fun bs!3925 () Bool)

(assert (= bs!3925 (and b!13286 neg-inst!73)))

(assert (=> (and bs!3925 (= (content!21 (left!577 (left!577 tree!73))) (content!21 (left!577 (right!580 res!4803)))) (= (value!1461 (left!577 tree!73)) (value!1461 (right!580 res!4803)))) (= inst!86 true)))

(declare-fun bs!3926 () Bool)

(assert (= bs!3926 (and b!13286 b!13282)))

(assert (=> (and bs!3926 (= (content!21 (left!577 (left!577 tree!73))) (content!21 (left!577 (right!580 res!4803)))) (= (value!1461 (left!577 tree!73)) (value!1461 (right!580 res!4803)))) (= inst!86 inst!84)))

(declare-fun bs!3927 () Bool)

(assert (= bs!3927 (and b!13286 b!13258)))

(assert (=> (and bs!3927 (= (content!21 (left!577 (left!577 tree!73))) (content!21 (left!577 res!4803))) (= (value!1461 (left!577 tree!73)) (value!1461 res!4803))) (= inst!86 inst!82)))

(declare-fun bs!3928 () Bool)

(assert (= bs!3928 (and b!13286 neg-inst!71)))

(assert (=> (and bs!3928 (= (content!21 (left!577 (left!577 tree!73))) (content!21 (left!577 res!4803))) (= (value!1461 (left!577 tree!73)) (value!1461 res!4803))) (= inst!86 true)))

(declare-fun bs!3929 () Bool)

(assert (= bs!3929 (and b!13286 neg-inst!69)))

(assert (=> (and bs!3929 (= (content!21 (left!577 (left!577 tree!73))) (content!21 (left!577 tree!73))) (= (value!1461 (left!577 tree!73)) (value!1461 tree!73))) (= inst!86 true)))

(declare-fun b!13287 () Bool)

(assert (=> b!13287 m!16761))

(declare-fun inst!87 () Bool)

(declare-fun x!7519 () Int)

(assert (=> b!13287 (= inst!87 (=> true (or (not (member x!7519 (content!21 (right!580 (left!577 tree!73))))) (< (value!1461 (left!577 tree!73)) x!7519))))))

(declare-fun m!16777 () Bool)

(assert (=> b!13287 m!16777))

(declare-fun bs!3930 () Bool)

(assert (= bs!3930 (and b!13287 b!13247)))

(assert (=> (and bs!3930 (= (content!21 (right!580 (left!577 tree!73))) (content!21 (right!580 tree!73))) (= (value!1461 (left!577 tree!73)) (value!1461 tree!73))) (= inst!87 inst!81)))

(declare-fun bs!3931 () Bool)

(assert (= bs!3931 (and b!13287 neg-inst!68)))

(assert (=> (and bs!3931 (= (content!21 (right!580 (left!577 tree!73))) (content!21 (right!580 tree!73))) (= (value!1461 (left!577 tree!73)) (value!1461 tree!73))) (= inst!87 true)))

(declare-fun bs!3932 () Bool)

(assert (= bs!3932 (and b!13287 b!13259)))

(assert (=> (and bs!3932 (= (content!21 (right!580 (left!577 tree!73))) (content!21 (right!580 res!4803))) (= (value!1461 (left!577 tree!73)) (value!1461 res!4803))) (= inst!87 inst!83)))

(declare-fun bs!3933 () Bool)

(assert (= bs!3933 (and b!13287 b!13283)))

(assert (=> (and bs!3933 (= (content!21 (right!580 (left!577 tree!73))) (content!21 (right!580 (right!580 res!4803)))) (= (value!1461 (left!577 tree!73)) (value!1461 (right!580 res!4803)))) (= inst!87 inst!85)))

(declare-fun bs!3934 () Bool)

(assert (= bs!3934 (and b!13287 neg-inst!72)))

(assert (=> (and bs!3934 (= (content!21 (right!580 (left!577 tree!73))) (content!21 (right!580 (right!580 res!4803)))) (= (value!1461 (left!577 tree!73)) (value!1461 (right!580 res!4803)))) (= inst!87 true)))

(declare-fun bs!3935 () Bool)

(assert (= bs!3935 (and b!13287 neg-inst!70)))

(assert (=> (and bs!3935 (= (content!21 (right!580 (left!577 tree!73))) (content!21 (right!580 res!4803))) (= (value!1461 (left!577 tree!73)) (value!1461 res!4803))) (= inst!87 true)))

(declare-fun bs!3936 () Bool)

(declare-fun neg-inst!75 () Bool)

(assert (= bs!3936 neg-inst!75))

(assert (=> bs!3936 m!16757))

(declare-fun bs!3937 () Bool)

(declare-fun s!512 () Bool)

(assert (= bs!3937 (and neg-inst!75 s!512)))

(assert (=> bs!3937 (=> true (or (not (member x!7518 (content!21 (left!577 (left!577 tree!73))))) (< x!7518 (value!1461 (left!577 tree!73)))))))

(assert (=> m!16775 s!512))

(declare-fun bs!3938 () Bool)

(assert (= bs!3938 (and neg-inst!75 b!13246)))

(assert (=> (and bs!3938 (= (content!21 (left!577 (left!577 tree!73))) (content!21 (left!577 tree!73))) (= (value!1461 (left!577 tree!73)) (value!1461 tree!73))) (= true inst!80)))

(declare-fun bs!3939 () Bool)

(assert (= bs!3939 (and neg-inst!75 b!13282)))

(assert (=> (and bs!3939 (= (content!21 (left!577 (left!577 tree!73))) (content!21 (left!577 (right!580 res!4803)))) (= (value!1461 (left!577 tree!73)) (value!1461 (right!580 res!4803)))) (= true inst!84)))

(declare-fun bs!3940 () Bool)

(assert (= bs!3940 (and neg-inst!75 neg-inst!73)))

(assert (=> (and bs!3940 (= (content!21 (left!577 (left!577 tree!73))) (content!21 (left!577 (right!580 res!4803)))) (= (value!1461 (left!577 tree!73)) (value!1461 (right!580 res!4803)))) (= true true)))

(declare-fun bs!3941 () Bool)

(assert (= bs!3941 (and neg-inst!75 b!13258)))

(assert (=> (and bs!3941 (= (content!21 (left!577 (left!577 tree!73))) (content!21 (left!577 res!4803))) (= (value!1461 (left!577 tree!73)) (value!1461 res!4803))) (= true inst!82)))

(declare-fun bs!3942 () Bool)

(assert (= bs!3942 (and neg-inst!75 neg-inst!71)))

(assert (=> (and bs!3942 (= (content!21 (left!577 (left!577 tree!73))) (content!21 (left!577 res!4803))) (= (value!1461 (left!577 tree!73)) (value!1461 res!4803))) (= true true)))

(declare-fun bs!3943 () Bool)

(assert (= bs!3943 (and neg-inst!75 neg-inst!69)))

(assert (=> (and bs!3943 (= (content!21 (left!577 (left!577 tree!73))) (content!21 (left!577 tree!73))) (= (value!1461 (left!577 tree!73)) (value!1461 tree!73))) (= true true)))

(declare-fun bs!3944 () Bool)

(assert (= bs!3944 (and neg-inst!75 b!13286)))

(assert (=> bs!3944 (= true inst!86)))

(declare-fun bs!3945 () Bool)

(declare-fun neg-inst!74 () Bool)

(assert (= bs!3945 neg-inst!74))

(assert (=> bs!3945 m!16761))

(declare-fun bs!3946 () Bool)

(declare-fun s!514 () Bool)

(assert (= bs!3946 (and neg-inst!74 s!514)))

(assert (=> bs!3946 (=> true (or (not (member x!7519 (content!21 (right!580 (left!577 tree!73))))) (< (value!1461 (left!577 tree!73)) x!7519)))))

(assert (=> m!16777 s!514))

(declare-fun bs!3947 () Bool)

(assert (= bs!3947 (and neg-inst!74 b!13247)))

(assert (=> (and bs!3947 (= (content!21 (right!580 (left!577 tree!73))) (content!21 (right!580 tree!73))) (= (value!1461 (left!577 tree!73)) (value!1461 tree!73))) (= true inst!81)))

(declare-fun bs!3948 () Bool)

(assert (= bs!3948 (and neg-inst!74 neg-inst!68)))

(assert (=> (and bs!3948 (= (content!21 (right!580 (left!577 tree!73))) (content!21 (right!580 tree!73))) (= (value!1461 (left!577 tree!73)) (value!1461 tree!73))) (= true true)))

(declare-fun bs!3949 () Bool)

(assert (= bs!3949 (and neg-inst!74 b!13259)))

(assert (=> (and bs!3949 (= (content!21 (right!580 (left!577 tree!73))) (content!21 (right!580 res!4803))) (= (value!1461 (left!577 tree!73)) (value!1461 res!4803))) (= true inst!83)))

(declare-fun bs!3950 () Bool)

(assert (= bs!3950 (and neg-inst!74 b!13283)))

(assert (=> (and bs!3950 (= (content!21 (right!580 (left!577 tree!73))) (content!21 (right!580 (right!580 res!4803)))) (= (value!1461 (left!577 tree!73)) (value!1461 (right!580 res!4803)))) (= true inst!85)))

(declare-fun bs!3951 () Bool)

(assert (= bs!3951 (and neg-inst!74 neg-inst!72)))

(assert (=> (and bs!3951 (= (content!21 (right!580 (left!577 tree!73))) (content!21 (right!580 (right!580 res!4803)))) (= (value!1461 (left!577 tree!73)) (value!1461 (right!580 res!4803)))) (= true true)))

(declare-fun bs!3952 () Bool)

(assert (= bs!3952 (and neg-inst!74 b!13287)))

(assert (=> bs!3952 (= true inst!87)))

(declare-fun bs!3953 () Bool)

(assert (= bs!3953 (and neg-inst!74 neg-inst!70)))

(assert (=> (and bs!3953 (= (content!21 (right!580 (left!577 tree!73))) (content!21 (right!580 res!4803))) (= (value!1461 (left!577 tree!73)) (value!1461 res!4803))) (= true true)))

(declare-fun res!5003 () Bool)

(declare-fun e!7281 () Bool)

(assert (=> b!13286 (=> (not res!5003) (not e!7281))))

(assert (=> b!13286 (= res!5003 inst!86)))

(assert (=> b!13287 (= e!7281 inst!87)))

(declare-fun b!13284 () Bool)

(declare-fun e!7282 () Bool)

(assert (=> b!13284 (= e!7282 e!7281)))

(declare-fun res!5001 () Bool)

(assert (=> b!13284 (=> (not res!5001) (not e!7281))))

(assert (=> b!13284 (= res!5001 (isBST!0 (left!577 (left!577 tree!73))))))

(declare-fun b!13285 () Bool)

(declare-fun res!5002 () Bool)

(assert (=> b!13285 (=> (not res!5002) (not e!7281))))

(assert (=> b!13285 (= res!5002 (isBST!0 (right!580 (left!577 tree!73))))))

(declare-fun d!10285 () Bool)

(declare-fun res!5000 () Bool)

(assert (=> d!10285 (=> res!5000 e!7282)))

(assert (=> d!10285 (= res!5000 (is-Leaf!167 (left!577 tree!73)))))

(assert (=> d!10285 (= (isBST!0 (left!577 tree!73)) e!7282)))

(assert (= (and d!10285 (not res!5000)) b!13284))

(assert (= (and b!13284 res!5001) b!13285))

(assert (= (and b!13285 res!5002) b!13286))

(assert (= neg-inst!75 inst!86))

(assert (= (and b!13286 res!5003) b!13287))

(assert (= neg-inst!74 inst!87))

(declare-fun m!16779 () Bool)

(assert (=> b!13284 m!16779))

(declare-fun m!16781 () Bool)

(assert (=> b!13285 m!16781))

(assert (=> d!10279 d!10285))

(declare-fun lt!1906 () Tree!87)

(declare-fun e!7284 () Bool)

(declare-fun b!13288 () Bool)

(assert (=> b!13288 (= e!7284 (= (content!21 lt!1906) (union (content!21 (ite lt!1904 (right!580 (left!577 tree!73)) (left!577 (left!577 tree!73)))) (insert value!1445 (as emptyset (Set Int))))))))

(declare-fun b!13289 () Bool)

(declare-fun res!5006 () Bool)

(assert (=> b!13289 (=> (not res!5006) (not e!7284))))

(assert (=> b!13289 (= res!5006 (isBST!0 lt!1906))))

(declare-fun lt!1908 () Tree!87)

(declare-fun e!7285 () Tree!87)

(declare-fun lt!1907 () Bool)

(declare-fun b!13290 () Bool)

(assert (=> b!13290 (= e!7285 (ite lt!1907 (Node!19 (left!577 (ite lt!1904 (right!580 (left!577 tree!73)) (left!577 (left!577 tree!73)))) (value!1461 (ite lt!1904 (right!580 (left!577 tree!73)) (left!577 (left!577 tree!73)))) lt!1908) (ite (> (value!1461 (ite lt!1904 (right!580 (left!577 tree!73)) (left!577 (left!577 tree!73)))) value!1445) (Node!19 lt!1908 (value!1461 (ite lt!1904 (right!580 (left!577 tree!73)) (left!577 (left!577 tree!73)))) (right!580 (ite lt!1904 (right!580 (left!577 tree!73)) (left!577 (left!577 tree!73))))) (Node!19 (left!577 (ite lt!1904 (right!580 (left!577 tree!73)) (left!577 (left!577 tree!73)))) (value!1461 (ite lt!1904 (right!580 (left!577 tree!73)) (left!577 (left!577 tree!73)))) (right!580 (ite lt!1904 (right!580 (left!577 tree!73)) (left!577 (left!577 tree!73))))))))))

(declare-fun e!7283 () Tree!87)

(assert (=> b!13290 (= lt!1908 e!7283)))

(declare-fun c!3727 () Bool)

(assert (=> b!13290 (= c!3727 (or lt!1907 (> (value!1461 (ite lt!1904 (right!580 (left!577 tree!73)) (left!577 (left!577 tree!73)))) value!1445)))))

(assert (=> b!13290 (= lt!1907 (< (value!1461 (ite lt!1904 (right!580 (left!577 tree!73)) (left!577 (left!577 tree!73)))) value!1445))))

(declare-fun d!10287 () Bool)

(assert (=> d!10287 e!7284))

(declare-fun res!5004 () Bool)

(assert (=> d!10287 (=> (not res!5004) (not e!7284))))

(assert (=> d!10287 (= res!5004 (is-Node!19 lt!1906))))

(assert (=> d!10287 (= lt!1906 e!7285)))

(declare-fun c!3728 () Bool)

(assert (=> d!10287 (= c!3728 (is-Leaf!167 (ite lt!1904 (right!580 (left!577 tree!73)) (left!577 (left!577 tree!73)))))))

(assert (=> d!10287 (isBST!0 (ite lt!1904 (right!580 (left!577 tree!73)) (left!577 (left!577 tree!73))))))

(assert (=> d!10287 (= (insert!10 (ite lt!1904 (right!580 (left!577 tree!73)) (left!577 (left!577 tree!73))) value!1445) lt!1906)))

(declare-fun b!13291 () Bool)

(assert (=> b!13291 (= e!7285 (Node!19 Leaf!167 value!1445 Leaf!167))))

(declare-fun b!13292 () Bool)

(assert (=> b!13292 (= e!7283 (insert!10 (ite lt!1907 (right!580 (ite lt!1904 (right!580 (left!577 tree!73)) (left!577 (left!577 tree!73)))) (left!577 (ite lt!1904 (right!580 (left!577 tree!73)) (left!577 (left!577 tree!73))))) value!1445))))

(declare-fun b!13293 () Bool)

(declare-fun res!5005 () Tree!87)

(assert (=> b!13293 (= e!7283 res!5005)))

(assert (=> b!13293 true))

(assert (=> b!13293 true))

(assert (= (and b!13290 c!3727) b!13292))

(assert (= (and b!13290 (not c!3727)) b!13293))

(assert (= (and d!10287 c!3728) b!13291))

(assert (= (and d!10287 (not c!3728)) b!13290))

(assert (= (and d!10287 res!5004) b!13289))

(assert (= (and b!13289 res!5006) b!13288))

(declare-fun m!16783 () Bool)

(assert (=> b!13288 m!16783))

(declare-fun m!16785 () Bool)

(assert (=> b!13288 m!16785))

(assert (=> b!13288 m!16715))

(declare-fun m!16787 () Bool)

(assert (=> b!13289 m!16787))

(declare-fun m!16789 () Bool)

(assert (=> d!10287 m!16789))

(declare-fun m!16791 () Bool)

(assert (=> b!13292 m!16791))

(assert (=> b!13276 d!10287))

(declare-fun d!10289 () Bool)

(declare-fun c!3729 () Bool)

(assert (=> d!10289 (= c!3729 (is-Leaf!167 (right!580 res!4803)))))

(declare-fun e!7286 () (Set Int))

(assert (=> d!10289 (= (content!21 (right!580 res!4803)) e!7286)))

(declare-fun b!13294 () Bool)

(assert (=> b!13294 (= e!7286 (as emptyset (Set Int)))))

(declare-fun b!13295 () Bool)

(assert (=> b!13295 (= e!7286 (union (union (content!21 (left!577 (right!580 res!4803))) (insert (value!1461 (right!580 res!4803)) (as emptyset (Set Int)))) (content!21 (right!580 (right!580 res!4803)))))))

(assert (= (and d!10289 c!3729) b!13294))

(assert (= (and d!10289 (not c!3729)) b!13295))

(assert (=> b!13295 m!16763))

(declare-fun m!16793 () Bool)

(assert (=> b!13295 m!16793))

(assert (=> b!13295 m!16767))

(assert (=> neg-inst!70 d!10289))

(assert (=> b!13255 d!10281))

(declare-fun d!10291 () Bool)

(declare-fun c!3730 () Bool)

(assert (=> d!10291 (= c!3730 (is-Leaf!167 (right!580 tree!73)))))

(declare-fun e!7287 () (Set Int))

(assert (=> d!10291 (= (content!21 (right!580 tree!73)) e!7287)))

(declare-fun b!13296 () Bool)

(assert (=> b!13296 (= e!7287 (as emptyset (Set Int)))))

(declare-fun b!13297 () Bool)

(assert (=> b!13297 (= e!7287 (union (union (content!21 (left!577 (right!580 tree!73))) (insert (value!1461 (right!580 tree!73)) (as emptyset (Set Int)))) (content!21 (right!580 (right!580 tree!73)))))))

(assert (= (and d!10291 c!3730) b!13296))

(assert (= (and d!10291 (not c!3730)) b!13297))

(declare-fun m!16795 () Bool)

(assert (=> b!13297 m!16795))

(declare-fun m!16797 () Bool)

(assert (=> b!13297 m!16797))

(declare-fun m!16799 () Bool)

(assert (=> b!13297 m!16799))

(assert (=> b!13255 d!10291))

(assert (=> b!13244 d!10285))

(declare-fun d!10293 () Bool)

(declare-fun c!3731 () Bool)

(assert (=> d!10293 (= c!3731 (is-Leaf!167 lt!1903))))

(declare-fun e!7288 () (Set Int))

(assert (=> d!10293 (= (content!21 lt!1903) e!7288)))

(declare-fun b!13298 () Bool)

(assert (=> b!13298 (= e!7288 (as emptyset (Set Int)))))

(declare-fun b!13299 () Bool)

(assert (=> b!13299 (= e!7288 (union (union (content!21 (left!577 lt!1903)) (insert (value!1461 lt!1903) (as emptyset (Set Int)))) (content!21 (right!580 lt!1903))))))

(assert (= (and d!10293 c!3731) b!13298))

(assert (= (and d!10293 (not c!3731)) b!13299))

(declare-fun m!16801 () Bool)

(assert (=> b!13299 m!16801))

(declare-fun m!16803 () Bool)

(assert (=> b!13299 m!16803))

(declare-fun m!16805 () Bool)

(assert (=> b!13299 m!16805))

(assert (=> b!13272 d!10293))

(assert (=> b!13272 d!10281))

(declare-fun d!10295 () Bool)

(declare-fun c!3732 () Bool)

(assert (=> d!10295 (= c!3732 (is-Leaf!167 (left!577 res!4803)))))

(declare-fun e!7289 () (Set Int))

(assert (=> d!10295 (= (content!21 (left!577 res!4803)) e!7289)))

(declare-fun b!13300 () Bool)

(assert (=> b!13300 (= e!7289 (as emptyset (Set Int)))))

(declare-fun b!13301 () Bool)

(assert (=> b!13301 (= e!7289 (union (union (content!21 (left!577 (left!577 res!4803))) (insert (value!1461 (left!577 res!4803)) (as emptyset (Set Int)))) (content!21 (right!580 (left!577 res!4803)))))))

(assert (= (and d!10295 c!3732) b!13300))

(assert (= (and d!10295 (not c!3732)) b!13301))

(declare-fun m!16807 () Bool)

(assert (=> b!13301 m!16807))

(declare-fun m!16809 () Bool)

(assert (=> b!13301 m!16809))

(declare-fun m!16811 () Bool)

(assert (=> b!13301 m!16811))

(assert (=> b!13253 d!10295))

(assert (=> b!13253 d!10289))

(assert (=> b!13259 d!10289))

(assert (=> neg-inst!71 d!10295))

(declare-fun b!13304 () Bool)

(assert (=> b!13304 m!16801))

(declare-fun inst!88 () Bool)

(declare-fun x!7520 () Int)

(assert (=> b!13304 (= inst!88 (=> true (or (not (member x!7520 (content!21 (left!577 lt!1903)))) (< x!7520 (value!1461 lt!1903)))))))

(declare-fun m!16813 () Bool)

(assert (=> b!13304 m!16813))

(declare-fun bs!3954 () Bool)

(assert (= bs!3954 (and b!13304 b!13246)))

(assert (=> (and bs!3954 (= (content!21 (left!577 lt!1903)) (content!21 (left!577 tree!73))) (= (value!1461 lt!1903) (value!1461 tree!73))) (= inst!88 inst!80)))

(declare-fun bs!3955 () Bool)

(assert (= bs!3955 (and b!13304 neg-inst!75)))

(assert (=> (and bs!3955 (= (content!21 (left!577 lt!1903)) (content!21 (left!577 (left!577 tree!73)))) (= (value!1461 lt!1903) (value!1461 (left!577 tree!73)))) (= inst!88 true)))

(declare-fun bs!3956 () Bool)

(assert (= bs!3956 (and b!13304 b!13282)))

(assert (=> (and bs!3956 (= (content!21 (left!577 lt!1903)) (content!21 (left!577 (right!580 res!4803)))) (= (value!1461 lt!1903) (value!1461 (right!580 res!4803)))) (= inst!88 inst!84)))

(declare-fun bs!3957 () Bool)

(assert (= bs!3957 (and b!13304 neg-inst!73)))

(assert (=> (and bs!3957 (= (content!21 (left!577 lt!1903)) (content!21 (left!577 (right!580 res!4803)))) (= (value!1461 lt!1903) (value!1461 (right!580 res!4803)))) (= inst!88 true)))

(declare-fun bs!3958 () Bool)

(assert (= bs!3958 (and b!13304 b!13258)))

(assert (=> (and bs!3958 (= (content!21 (left!577 lt!1903)) (content!21 (left!577 res!4803))) (= (value!1461 lt!1903) (value!1461 res!4803))) (= inst!88 inst!82)))

(declare-fun bs!3959 () Bool)

(assert (= bs!3959 (and b!13304 neg-inst!71)))

(assert (=> (and bs!3959 (= (content!21 (left!577 lt!1903)) (content!21 (left!577 res!4803))) (= (value!1461 lt!1903) (value!1461 res!4803))) (= inst!88 true)))

(declare-fun bs!3960 () Bool)

(assert (= bs!3960 (and b!13304 neg-inst!69)))

(assert (=> (and bs!3960 (= (content!21 (left!577 lt!1903)) (content!21 (left!577 tree!73))) (= (value!1461 lt!1903) (value!1461 tree!73))) (= inst!88 true)))

(declare-fun bs!3961 () Bool)

(assert (= bs!3961 (and b!13304 b!13286)))

(assert (=> (and bs!3961 (= (content!21 (left!577 lt!1903)) (content!21 (left!577 (left!577 tree!73)))) (= (value!1461 lt!1903) (value!1461 (left!577 tree!73)))) (= inst!88 inst!86)))

(declare-fun b!13305 () Bool)

(assert (=> b!13305 m!16805))

(declare-fun inst!89 () Bool)

(declare-fun x!7521 () Int)

(assert (=> b!13305 (= inst!89 (=> true (or (not (member x!7521 (content!21 (right!580 lt!1903)))) (< (value!1461 lt!1903) x!7521))))))

(declare-fun m!16815 () Bool)

(assert (=> b!13305 m!16815))

(declare-fun bs!3962 () Bool)

(assert (= bs!3962 (and b!13305 b!13247)))

(assert (=> (and bs!3962 (= (content!21 (right!580 lt!1903)) (content!21 (right!580 tree!73))) (= (value!1461 lt!1903) (value!1461 tree!73))) (= inst!89 inst!81)))

(declare-fun bs!3963 () Bool)

(assert (= bs!3963 (and b!13305 neg-inst!68)))

(assert (=> (and bs!3963 (= (content!21 (right!580 lt!1903)) (content!21 (right!580 tree!73))) (= (value!1461 lt!1903) (value!1461 tree!73))) (= inst!89 true)))

(declare-fun bs!3964 () Bool)

(assert (= bs!3964 (and b!13305 b!13259)))

(assert (=> (and bs!3964 (= (content!21 (right!580 lt!1903)) (content!21 (right!580 res!4803))) (= (value!1461 lt!1903) (value!1461 res!4803))) (= inst!89 inst!83)))

(declare-fun bs!3965 () Bool)

(assert (= bs!3965 (and b!13305 neg-inst!74)))

(assert (=> (and bs!3965 (= (content!21 (right!580 lt!1903)) (content!21 (right!580 (left!577 tree!73)))) (= (value!1461 lt!1903) (value!1461 (left!577 tree!73)))) (= inst!89 true)))

(declare-fun bs!3966 () Bool)

(assert (= bs!3966 (and b!13305 b!13283)))

(assert (=> (and bs!3966 (= (content!21 (right!580 lt!1903)) (content!21 (right!580 (right!580 res!4803)))) (= (value!1461 lt!1903) (value!1461 (right!580 res!4803)))) (= inst!89 inst!85)))

(declare-fun bs!3967 () Bool)

(assert (= bs!3967 (and b!13305 neg-inst!72)))

(assert (=> (and bs!3967 (= (content!21 (right!580 lt!1903)) (content!21 (right!580 (right!580 res!4803)))) (= (value!1461 lt!1903) (value!1461 (right!580 res!4803)))) (= inst!89 true)))

(declare-fun bs!3968 () Bool)

(assert (= bs!3968 (and b!13305 b!13287)))

(assert (=> (and bs!3968 (= (content!21 (right!580 lt!1903)) (content!21 (right!580 (left!577 tree!73)))) (= (value!1461 lt!1903) (value!1461 (left!577 tree!73)))) (= inst!89 inst!87)))

(declare-fun bs!3969 () Bool)

(assert (= bs!3969 (and b!13305 neg-inst!70)))

(assert (=> (and bs!3969 (= (content!21 (right!580 lt!1903)) (content!21 (right!580 res!4803))) (= (value!1461 lt!1903) (value!1461 res!4803))) (= inst!89 true)))

(declare-fun bs!3970 () Bool)

(declare-fun neg-inst!77 () Bool)

(assert (= bs!3970 neg-inst!77))

(assert (=> bs!3970 m!16801))

(declare-fun bs!3971 () Bool)

(declare-fun s!516 () Bool)

(assert (= bs!3971 (and neg-inst!77 s!516)))

(assert (=> bs!3971 (=> true (or (not (member x!7520 (content!21 (left!577 lt!1903)))) (< x!7520 (value!1461 lt!1903))))))

(assert (=> m!16813 s!516))

(declare-fun bs!3972 () Bool)

(assert (= bs!3972 (and neg-inst!77 b!13304)))

(assert (=> bs!3972 (= true inst!88)))

(declare-fun bs!3973 () Bool)

(assert (= bs!3973 (and neg-inst!77 b!13246)))

(assert (=> (and bs!3973 (= (content!21 (left!577 lt!1903)) (content!21 (left!577 tree!73))) (= (value!1461 lt!1903) (value!1461 tree!73))) (= true inst!80)))

(declare-fun bs!3974 () Bool)

(assert (= bs!3974 (and neg-inst!77 neg-inst!75)))

(assert (=> (and bs!3974 (= (content!21 (left!577 lt!1903)) (content!21 (left!577 (left!577 tree!73)))) (= (value!1461 lt!1903) (value!1461 (left!577 tree!73)))) (= true true)))

(declare-fun bs!3975 () Bool)

(assert (= bs!3975 (and neg-inst!77 b!13282)))

(assert (=> (and bs!3975 (= (content!21 (left!577 lt!1903)) (content!21 (left!577 (right!580 res!4803)))) (= (value!1461 lt!1903) (value!1461 (right!580 res!4803)))) (= true inst!84)))

(declare-fun bs!3976 () Bool)

(assert (= bs!3976 (and neg-inst!77 neg-inst!73)))

(assert (=> (and bs!3976 (= (content!21 (left!577 lt!1903)) (content!21 (left!577 (right!580 res!4803)))) (= (value!1461 lt!1903) (value!1461 (right!580 res!4803)))) (= true true)))

(declare-fun bs!3977 () Bool)

(assert (= bs!3977 (and neg-inst!77 b!13258)))

(assert (=> (and bs!3977 (= (content!21 (left!577 lt!1903)) (content!21 (left!577 res!4803))) (= (value!1461 lt!1903) (value!1461 res!4803))) (= true inst!82)))

(declare-fun bs!3978 () Bool)

(assert (= bs!3978 (and neg-inst!77 neg-inst!71)))

(assert (=> (and bs!3978 (= (content!21 (left!577 lt!1903)) (content!21 (left!577 res!4803))) (= (value!1461 lt!1903) (value!1461 res!4803))) (= true true)))

(declare-fun bs!3979 () Bool)

(assert (= bs!3979 (and neg-inst!77 neg-inst!69)))

(assert (=> (and bs!3979 (= (content!21 (left!577 lt!1903)) (content!21 (left!577 tree!73))) (= (value!1461 lt!1903) (value!1461 tree!73))) (= true true)))

(declare-fun bs!3980 () Bool)

(assert (= bs!3980 (and neg-inst!77 b!13286)))

(assert (=> (and bs!3980 (= (content!21 (left!577 lt!1903)) (content!21 (left!577 (left!577 tree!73)))) (= (value!1461 lt!1903) (value!1461 (left!577 tree!73)))) (= true inst!86)))

(declare-fun bs!3981 () Bool)

(declare-fun neg-inst!76 () Bool)

(assert (= bs!3981 neg-inst!76))

(assert (=> bs!3981 m!16805))

(declare-fun bs!3982 () Bool)

(declare-fun s!518 () Bool)

(assert (= bs!3982 (and neg-inst!76 s!518)))

(assert (=> bs!3982 (=> true (or (not (member x!7521 (content!21 (right!580 lt!1903)))) (< (value!1461 lt!1903) x!7521)))))

(assert (=> m!16815 s!518))

(declare-fun bs!3983 () Bool)

(assert (= bs!3983 (and neg-inst!76 b!13247)))

(assert (=> (and bs!3983 (= (content!21 (right!580 lt!1903)) (content!21 (right!580 tree!73))) (= (value!1461 lt!1903) (value!1461 tree!73))) (= true inst!81)))

(declare-fun bs!3984 () Bool)

(assert (= bs!3984 (and neg-inst!76 neg-inst!68)))

(assert (=> (and bs!3984 (= (content!21 (right!580 lt!1903)) (content!21 (right!580 tree!73))) (= (value!1461 lt!1903) (value!1461 tree!73))) (= true true)))

(declare-fun bs!3985 () Bool)

(assert (= bs!3985 (and neg-inst!76 b!13259)))

(assert (=> (and bs!3985 (= (content!21 (right!580 lt!1903)) (content!21 (right!580 res!4803))) (= (value!1461 lt!1903) (value!1461 res!4803))) (= true inst!83)))

(declare-fun bs!3986 () Bool)

(assert (= bs!3986 (and neg-inst!76 neg-inst!74)))

(assert (=> (and bs!3986 (= (content!21 (right!580 lt!1903)) (content!21 (right!580 (left!577 tree!73)))) (= (value!1461 lt!1903) (value!1461 (left!577 tree!73)))) (= true true)))

(declare-fun bs!3987 () Bool)

(assert (= bs!3987 (and neg-inst!76 b!13283)))

(assert (=> (and bs!3987 (= (content!21 (right!580 lt!1903)) (content!21 (right!580 (right!580 res!4803)))) (= (value!1461 lt!1903) (value!1461 (right!580 res!4803)))) (= true inst!85)))

(declare-fun bs!3988 () Bool)

(assert (= bs!3988 (and neg-inst!76 b!13305)))

(assert (=> bs!3988 (= true inst!89)))

(declare-fun bs!3989 () Bool)

(assert (= bs!3989 (and neg-inst!76 neg-inst!72)))

(assert (=> (and bs!3989 (= (content!21 (right!580 lt!1903)) (content!21 (right!580 (right!580 res!4803)))) (= (value!1461 lt!1903) (value!1461 (right!580 res!4803)))) (= true true)))

(declare-fun bs!3990 () Bool)

(assert (= bs!3990 (and neg-inst!76 b!13287)))

(assert (=> (and bs!3990 (= (content!21 (right!580 lt!1903)) (content!21 (right!580 (left!577 tree!73)))) (= (value!1461 lt!1903) (value!1461 (left!577 tree!73)))) (= true inst!87)))

(declare-fun bs!3991 () Bool)

(assert (= bs!3991 (and neg-inst!76 neg-inst!70)))

(assert (=> (and bs!3991 (= (content!21 (right!580 lt!1903)) (content!21 (right!580 res!4803))) (= (value!1461 lt!1903) (value!1461 res!4803))) (= true true)))

(declare-fun res!5010 () Bool)

(declare-fun e!7290 () Bool)

(assert (=> b!13304 (=> (not res!5010) (not e!7290))))

(assert (=> b!13304 (= res!5010 inst!88)))

(assert (=> b!13305 (= e!7290 inst!89)))

(declare-fun b!13302 () Bool)

(declare-fun e!7291 () Bool)

(assert (=> b!13302 (= e!7291 e!7290)))

(declare-fun res!5008 () Bool)

(assert (=> b!13302 (=> (not res!5008) (not e!7290))))

(assert (=> b!13302 (= res!5008 (isBST!0 (left!577 lt!1903)))))

(declare-fun b!13303 () Bool)

(declare-fun res!5009 () Bool)

(assert (=> b!13303 (=> (not res!5009) (not e!7290))))

(assert (=> b!13303 (= res!5009 (isBST!0 (right!580 lt!1903)))))

(declare-fun d!10297 () Bool)

(declare-fun res!5007 () Bool)

(assert (=> d!10297 (=> res!5007 e!7291)))

(assert (=> d!10297 (= res!5007 (is-Leaf!167 lt!1903))))

(assert (=> d!10297 (= (isBST!0 lt!1903) e!7291)))

(assert (= (and d!10297 (not res!5007)) b!13302))

(assert (= (and b!13302 res!5008) b!13303))

(assert (= (and b!13303 res!5009) b!13304))

(assert (= neg-inst!77 inst!88))

(assert (= (and b!13304 res!5010) b!13305))

(assert (= neg-inst!76 inst!89))

(declare-fun m!16817 () Bool)

(assert (=> b!13302 m!16817))

(declare-fun m!16819 () Bool)

(assert (=> b!13303 m!16819))

(assert (=> b!13273 d!10297))

(assert (=> b!13258 d!10295))

(assert (=> b!13246 d!10281))

(assert (=> b!13247 d!10291))

(assert (=> neg-inst!68 d!10291))

(declare-fun b!13308 () Bool)

(assert (=> b!13308 m!16807))

(declare-fun inst!90 () Bool)

(declare-fun x!7522 () Int)

(assert (=> b!13308 (= inst!90 (=> true (or (not (member x!7522 (content!21 (left!577 (left!577 res!4803))))) (< x!7522 (value!1461 (left!577 res!4803))))))))

(declare-fun m!16821 () Bool)

(assert (=> b!13308 m!16821))

(declare-fun bs!3992 () Bool)

(assert (= bs!3992 (and b!13308 b!13304)))

(assert (=> (and bs!3992 (= (content!21 (left!577 (left!577 res!4803))) (content!21 (left!577 lt!1903))) (= (value!1461 (left!577 res!4803)) (value!1461 lt!1903))) (= inst!90 inst!88)))

(declare-fun bs!3993 () Bool)

(assert (= bs!3993 (and b!13308 b!13246)))

(assert (=> (and bs!3993 (= (content!21 (left!577 (left!577 res!4803))) (content!21 (left!577 tree!73))) (= (value!1461 (left!577 res!4803)) (value!1461 tree!73))) (= inst!90 inst!80)))

(declare-fun bs!3994 () Bool)

(assert (= bs!3994 (and b!13308 neg-inst!75)))

(assert (=> (and bs!3994 (= (content!21 (left!577 (left!577 res!4803))) (content!21 (left!577 (left!577 tree!73)))) (= (value!1461 (left!577 res!4803)) (value!1461 (left!577 tree!73)))) (= inst!90 true)))

(declare-fun bs!3995 () Bool)

(assert (= bs!3995 (and b!13308 b!13282)))

(assert (=> (and bs!3995 (= (content!21 (left!577 (left!577 res!4803))) (content!21 (left!577 (right!580 res!4803)))) (= (value!1461 (left!577 res!4803)) (value!1461 (right!580 res!4803)))) (= inst!90 inst!84)))

(declare-fun bs!3996 () Bool)

(assert (= bs!3996 (and b!13308 neg-inst!73)))

(assert (=> (and bs!3996 (= (content!21 (left!577 (left!577 res!4803))) (content!21 (left!577 (right!580 res!4803)))) (= (value!1461 (left!577 res!4803)) (value!1461 (right!580 res!4803)))) (= inst!90 true)))

(declare-fun bs!3997 () Bool)

(assert (= bs!3997 (and b!13308 b!13258)))

(assert (=> (and bs!3997 (= (content!21 (left!577 (left!577 res!4803))) (content!21 (left!577 res!4803))) (= (value!1461 (left!577 res!4803)) (value!1461 res!4803))) (= inst!90 inst!82)))

(declare-fun bs!3998 () Bool)

(assert (= bs!3998 (and b!13308 neg-inst!77)))

(assert (=> (and bs!3998 (= (content!21 (left!577 (left!577 res!4803))) (content!21 (left!577 lt!1903))) (= (value!1461 (left!577 res!4803)) (value!1461 lt!1903))) (= inst!90 true)))

(declare-fun bs!3999 () Bool)

(assert (= bs!3999 (and b!13308 neg-inst!71)))

(assert (=> (and bs!3999 (= (content!21 (left!577 (left!577 res!4803))) (content!21 (left!577 res!4803))) (= (value!1461 (left!577 res!4803)) (value!1461 res!4803))) (= inst!90 true)))

(declare-fun bs!4000 () Bool)

(assert (= bs!4000 (and b!13308 neg-inst!69)))

(assert (=> (and bs!4000 (= (content!21 (left!577 (left!577 res!4803))) (content!21 (left!577 tree!73))) (= (value!1461 (left!577 res!4803)) (value!1461 tree!73))) (= inst!90 true)))

(declare-fun bs!4001 () Bool)

(assert (= bs!4001 (and b!13308 b!13286)))

(assert (=> (and bs!4001 (= (content!21 (left!577 (left!577 res!4803))) (content!21 (left!577 (left!577 tree!73)))) (= (value!1461 (left!577 res!4803)) (value!1461 (left!577 tree!73)))) (= inst!90 inst!86)))

(declare-fun b!13309 () Bool)

(assert (=> b!13309 m!16811))

(declare-fun inst!91 () Bool)

(declare-fun x!7523 () Int)

(assert (=> b!13309 (= inst!91 (=> true (or (not (member x!7523 (content!21 (right!580 (left!577 res!4803))))) (< (value!1461 (left!577 res!4803)) x!7523))))))

(declare-fun m!16823 () Bool)

(assert (=> b!13309 m!16823))

(declare-fun bs!4002 () Bool)

(assert (= bs!4002 (and b!13309 b!13247)))

(assert (=> (and bs!4002 (= (content!21 (right!580 (left!577 res!4803))) (content!21 (right!580 tree!73))) (= (value!1461 (left!577 res!4803)) (value!1461 tree!73))) (= inst!91 inst!81)))

(declare-fun bs!4003 () Bool)

(assert (= bs!4003 (and b!13309 neg-inst!68)))

(assert (=> (and bs!4003 (= (content!21 (right!580 (left!577 res!4803))) (content!21 (right!580 tree!73))) (= (value!1461 (left!577 res!4803)) (value!1461 tree!73))) (= inst!91 true)))

(declare-fun bs!4004 () Bool)

(assert (= bs!4004 (and b!13309 neg-inst!76)))

(assert (=> (and bs!4004 (= (content!21 (right!580 (left!577 res!4803))) (content!21 (right!580 lt!1903))) (= (value!1461 (left!577 res!4803)) (value!1461 lt!1903))) (= inst!91 true)))

(declare-fun bs!4005 () Bool)

(assert (= bs!4005 (and b!13309 b!13259)))

(assert (=> (and bs!4005 (= (content!21 (right!580 (left!577 res!4803))) (content!21 (right!580 res!4803))) (= (value!1461 (left!577 res!4803)) (value!1461 res!4803))) (= inst!91 inst!83)))

(declare-fun bs!4006 () Bool)

(assert (= bs!4006 (and b!13309 neg-inst!74)))

(assert (=> (and bs!4006 (= (content!21 (right!580 (left!577 res!4803))) (content!21 (right!580 (left!577 tree!73)))) (= (value!1461 (left!577 res!4803)) (value!1461 (left!577 tree!73)))) (= inst!91 true)))

(declare-fun bs!4007 () Bool)

(assert (= bs!4007 (and b!13309 b!13283)))

(assert (=> (and bs!4007 (= (content!21 (right!580 (left!577 res!4803))) (content!21 (right!580 (right!580 res!4803)))) (= (value!1461 (left!577 res!4803)) (value!1461 (right!580 res!4803)))) (= inst!91 inst!85)))

(declare-fun bs!4008 () Bool)

(assert (= bs!4008 (and b!13309 b!13305)))

(assert (=> (and bs!4008 (= (content!21 (right!580 (left!577 res!4803))) (content!21 (right!580 lt!1903))) (= (value!1461 (left!577 res!4803)) (value!1461 lt!1903))) (= inst!91 inst!89)))

(declare-fun bs!4009 () Bool)

(assert (= bs!4009 (and b!13309 neg-inst!72)))

(assert (=> (and bs!4009 (= (content!21 (right!580 (left!577 res!4803))) (content!21 (right!580 (right!580 res!4803)))) (= (value!1461 (left!577 res!4803)) (value!1461 (right!580 res!4803)))) (= inst!91 true)))

(declare-fun bs!4010 () Bool)

(assert (= bs!4010 (and b!13309 b!13287)))

(assert (=> (and bs!4010 (= (content!21 (right!580 (left!577 res!4803))) (content!21 (right!580 (left!577 tree!73)))) (= (value!1461 (left!577 res!4803)) (value!1461 (left!577 tree!73)))) (= inst!91 inst!87)))

(declare-fun bs!4011 () Bool)

(assert (= bs!4011 (and b!13309 neg-inst!70)))

(assert (=> (and bs!4011 (= (content!21 (right!580 (left!577 res!4803))) (content!21 (right!580 res!4803))) (= (value!1461 (left!577 res!4803)) (value!1461 res!4803))) (= inst!91 true)))

(declare-fun bs!4012 () Bool)

(declare-fun neg-inst!79 () Bool)

(assert (= bs!4012 neg-inst!79))

(assert (=> bs!4012 m!16807))

(declare-fun bs!4013 () Bool)

(declare-fun s!520 () Bool)

(assert (= bs!4013 (and neg-inst!79 s!520)))

(assert (=> bs!4013 (=> true (or (not (member x!7522 (content!21 (left!577 (left!577 res!4803))))) (< x!7522 (value!1461 (left!577 res!4803)))))))

(assert (=> m!16821 s!520))

(declare-fun bs!4014 () Bool)

(assert (= bs!4014 (and neg-inst!79 b!13304)))

(assert (=> (and bs!4014 (= (content!21 (left!577 (left!577 res!4803))) (content!21 (left!577 lt!1903))) (= (value!1461 (left!577 res!4803)) (value!1461 lt!1903))) (= true inst!88)))

(declare-fun bs!4015 () Bool)

(assert (= bs!4015 (and neg-inst!79 b!13246)))

(assert (=> (and bs!4015 (= (content!21 (left!577 (left!577 res!4803))) (content!21 (left!577 tree!73))) (= (value!1461 (left!577 res!4803)) (value!1461 tree!73))) (= true inst!80)))

(declare-fun bs!4016 () Bool)

(assert (= bs!4016 (and neg-inst!79 neg-inst!75)))

(assert (=> (and bs!4016 (= (content!21 (left!577 (left!577 res!4803))) (content!21 (left!577 (left!577 tree!73)))) (= (value!1461 (left!577 res!4803)) (value!1461 (left!577 tree!73)))) (= true true)))

(declare-fun bs!4017 () Bool)

(assert (= bs!4017 (and neg-inst!79 b!13282)))

(assert (=> (and bs!4017 (= (content!21 (left!577 (left!577 res!4803))) (content!21 (left!577 (right!580 res!4803)))) (= (value!1461 (left!577 res!4803)) (value!1461 (right!580 res!4803)))) (= true inst!84)))

(declare-fun bs!4018 () Bool)

(assert (= bs!4018 (and neg-inst!79 neg-inst!73)))

(assert (=> (and bs!4018 (= (content!21 (left!577 (left!577 res!4803))) (content!21 (left!577 (right!580 res!4803)))) (= (value!1461 (left!577 res!4803)) (value!1461 (right!580 res!4803)))) (= true true)))

(declare-fun bs!4019 () Bool)

(assert (= bs!4019 (and neg-inst!79 b!13308)))

(assert (=> bs!4019 (= true inst!90)))

(declare-fun bs!4020 () Bool)

(assert (= bs!4020 (and neg-inst!79 b!13258)))

(assert (=> (and bs!4020 (= (content!21 (left!577 (left!577 res!4803))) (content!21 (left!577 res!4803))) (= (value!1461 (left!577 res!4803)) (value!1461 res!4803))) (= true inst!82)))

(declare-fun bs!4021 () Bool)

(assert (= bs!4021 (and neg-inst!79 neg-inst!77)))

(assert (=> (and bs!4021 (= (content!21 (left!577 (left!577 res!4803))) (content!21 (left!577 lt!1903))) (= (value!1461 (left!577 res!4803)) (value!1461 lt!1903))) (= true true)))

(declare-fun bs!4022 () Bool)

(assert (= bs!4022 (and neg-inst!79 neg-inst!71)))

(assert (=> (and bs!4022 (= (content!21 (left!577 (left!577 res!4803))) (content!21 (left!577 res!4803))) (= (value!1461 (left!577 res!4803)) (value!1461 res!4803))) (= true true)))

(declare-fun bs!4023 () Bool)

(assert (= bs!4023 (and neg-inst!79 neg-inst!69)))

(assert (=> (and bs!4023 (= (content!21 (left!577 (left!577 res!4803))) (content!21 (left!577 tree!73))) (= (value!1461 (left!577 res!4803)) (value!1461 tree!73))) (= true true)))

(declare-fun bs!4024 () Bool)

(assert (= bs!4024 (and neg-inst!79 b!13286)))

(assert (=> (and bs!4024 (= (content!21 (left!577 (left!577 res!4803))) (content!21 (left!577 (left!577 tree!73)))) (= (value!1461 (left!577 res!4803)) (value!1461 (left!577 tree!73)))) (= true inst!86)))

(declare-fun bs!4025 () Bool)

(declare-fun neg-inst!78 () Bool)

(assert (= bs!4025 neg-inst!78))

(assert (=> bs!4025 m!16811))

(declare-fun bs!4026 () Bool)

(declare-fun s!522 () Bool)

(assert (= bs!4026 (and neg-inst!78 s!522)))

(assert (=> bs!4026 (=> true (or (not (member x!7523 (content!21 (right!580 (left!577 res!4803))))) (< (value!1461 (left!577 res!4803)) x!7523)))))

(assert (=> m!16823 s!522))

(declare-fun bs!4027 () Bool)

(assert (= bs!4027 (and neg-inst!78 b!13247)))

(assert (=> (and bs!4027 (= (content!21 (right!580 (left!577 res!4803))) (content!21 (right!580 tree!73))) (= (value!1461 (left!577 res!4803)) (value!1461 tree!73))) (= true inst!81)))

(declare-fun bs!4028 () Bool)

(assert (= bs!4028 (and neg-inst!78 neg-inst!68)))

(assert (=> (and bs!4028 (= (content!21 (right!580 (left!577 res!4803))) (content!21 (right!580 tree!73))) (= (value!1461 (left!577 res!4803)) (value!1461 tree!73))) (= true true)))

(declare-fun bs!4029 () Bool)

(assert (= bs!4029 (and neg-inst!78 neg-inst!76)))

(assert (=> (and bs!4029 (= (content!21 (right!580 (left!577 res!4803))) (content!21 (right!580 lt!1903))) (= (value!1461 (left!577 res!4803)) (value!1461 lt!1903))) (= true true)))

(declare-fun bs!4030 () Bool)

(assert (= bs!4030 (and neg-inst!78 b!13259)))

(assert (=> (and bs!4030 (= (content!21 (right!580 (left!577 res!4803))) (content!21 (right!580 res!4803))) (= (value!1461 (left!577 res!4803)) (value!1461 res!4803))) (= true inst!83)))

(declare-fun bs!4031 () Bool)

(assert (= bs!4031 (and neg-inst!78 neg-inst!74)))

(assert (=> (and bs!4031 (= (content!21 (right!580 (left!577 res!4803))) (content!21 (right!580 (left!577 tree!73)))) (= (value!1461 (left!577 res!4803)) (value!1461 (left!577 tree!73)))) (= true true)))

(declare-fun bs!4032 () Bool)

(assert (= bs!4032 (and neg-inst!78 b!13283)))

(assert (=> (and bs!4032 (= (content!21 (right!580 (left!577 res!4803))) (content!21 (right!580 (right!580 res!4803)))) (= (value!1461 (left!577 res!4803)) (value!1461 (right!580 res!4803)))) (= true inst!85)))

(declare-fun bs!4033 () Bool)

(assert (= bs!4033 (and neg-inst!78 b!13305)))

(assert (=> (and bs!4033 (= (content!21 (right!580 (left!577 res!4803))) (content!21 (right!580 lt!1903))) (= (value!1461 (left!577 res!4803)) (value!1461 lt!1903))) (= true inst!89)))

(declare-fun bs!4034 () Bool)

(assert (= bs!4034 (and neg-inst!78 neg-inst!72)))

(assert (=> (and bs!4034 (= (content!21 (right!580 (left!577 res!4803))) (content!21 (right!580 (right!580 res!4803)))) (= (value!1461 (left!577 res!4803)) (value!1461 (right!580 res!4803)))) (= true true)))

(declare-fun bs!4035 () Bool)

(assert (= bs!4035 (and neg-inst!78 b!13309)))

(assert (=> bs!4035 (= true inst!91)))

(declare-fun bs!4036 () Bool)

(assert (= bs!4036 (and neg-inst!78 b!13287)))

(assert (=> (and bs!4036 (= (content!21 (right!580 (left!577 res!4803))) (content!21 (right!580 (left!577 tree!73)))) (= (value!1461 (left!577 res!4803)) (value!1461 (left!577 tree!73)))) (= true inst!87)))

(declare-fun bs!4037 () Bool)

(assert (= bs!4037 (and neg-inst!78 neg-inst!70)))

(assert (=> (and bs!4037 (= (content!21 (right!580 (left!577 res!4803))) (content!21 (right!580 res!4803))) (= (value!1461 (left!577 res!4803)) (value!1461 res!4803))) (= true true)))

(declare-fun res!5014 () Bool)

(declare-fun e!7292 () Bool)

(assert (=> b!13308 (=> (not res!5014) (not e!7292))))

(assert (=> b!13308 (= res!5014 inst!90)))

(assert (=> b!13309 (= e!7292 inst!91)))

(declare-fun b!13306 () Bool)

(declare-fun e!7293 () Bool)

(assert (=> b!13306 (= e!7293 e!7292)))

(declare-fun res!5012 () Bool)

(assert (=> b!13306 (=> (not res!5012) (not e!7292))))

(assert (=> b!13306 (= res!5012 (isBST!0 (left!577 (left!577 res!4803))))))

(declare-fun b!13307 () Bool)

(declare-fun res!5013 () Bool)

(assert (=> b!13307 (=> (not res!5013) (not e!7292))))

(assert (=> b!13307 (= res!5013 (isBST!0 (right!580 (left!577 res!4803))))))

(declare-fun d!10299 () Bool)

(declare-fun res!5011 () Bool)

(assert (=> d!10299 (=> res!5011 e!7293)))

(assert (=> d!10299 (= res!5011 (is-Leaf!167 (left!577 res!4803)))))

(assert (=> d!10299 (= (isBST!0 (left!577 res!4803)) e!7293)))

(assert (= (and d!10299 (not res!5011)) b!13306))

(assert (= (and b!13306 res!5012) b!13307))

(assert (= (and b!13307 res!5013) b!13308))

(assert (= neg-inst!79 inst!90))

(assert (= (and b!13308 res!5014) b!13309))

(assert (= neg-inst!78 inst!91))

(declare-fun m!16825 () Bool)

(assert (=> b!13306 m!16825))

(declare-fun m!16827 () Bool)

(assert (=> b!13307 m!16827))

(assert (=> b!13256 d!10299))

(declare-fun b!13312 () Bool)

(assert (=> b!13312 m!16795))

(declare-fun inst!92 () Bool)

(declare-fun x!7524 () Int)

(assert (=> b!13312 (= inst!92 (=> true (or (not (member x!7524 (content!21 (left!577 (right!580 tree!73))))) (< x!7524 (value!1461 (right!580 tree!73))))))))

(declare-fun m!16829 () Bool)

(assert (=> b!13312 m!16829))

(declare-fun bs!4038 () Bool)

(assert (= bs!4038 (and b!13312 b!13304)))

(assert (=> (and bs!4038 (= (content!21 (left!577 (right!580 tree!73))) (content!21 (left!577 lt!1903))) (= (value!1461 (right!580 tree!73)) (value!1461 lt!1903))) (= inst!92 inst!88)))

(declare-fun bs!4039 () Bool)

(assert (= bs!4039 (and b!13312 b!13246)))

(assert (=> (and bs!4039 (= (content!21 (left!577 (right!580 tree!73))) (content!21 (left!577 tree!73))) (= (value!1461 (right!580 tree!73)) (value!1461 tree!73))) (= inst!92 inst!80)))

(declare-fun bs!4040 () Bool)

(assert (= bs!4040 (and b!13312 neg-inst!79)))

(assert (=> (and bs!4040 (= (content!21 (left!577 (right!580 tree!73))) (content!21 (left!577 (left!577 res!4803)))) (= (value!1461 (right!580 tree!73)) (value!1461 (left!577 res!4803)))) (= inst!92 true)))

(declare-fun bs!4041 () Bool)

(assert (= bs!4041 (and b!13312 neg-inst!75)))

(assert (=> (and bs!4041 (= (content!21 (left!577 (right!580 tree!73))) (content!21 (left!577 (left!577 tree!73)))) (= (value!1461 (right!580 tree!73)) (value!1461 (left!577 tree!73)))) (= inst!92 true)))

(declare-fun bs!4042 () Bool)

(assert (= bs!4042 (and b!13312 b!13282)))

(assert (=> (and bs!4042 (= (content!21 (left!577 (right!580 tree!73))) (content!21 (left!577 (right!580 res!4803)))) (= (value!1461 (right!580 tree!73)) (value!1461 (right!580 res!4803)))) (= inst!92 inst!84)))

(declare-fun bs!4043 () Bool)

(assert (= bs!4043 (and b!13312 neg-inst!73)))

(assert (=> (and bs!4043 (= (content!21 (left!577 (right!580 tree!73))) (content!21 (left!577 (right!580 res!4803)))) (= (value!1461 (right!580 tree!73)) (value!1461 (right!580 res!4803)))) (= inst!92 true)))

(declare-fun bs!4044 () Bool)

(assert (= bs!4044 (and b!13312 b!13308)))

(assert (=> (and bs!4044 (= (content!21 (left!577 (right!580 tree!73))) (content!21 (left!577 (left!577 res!4803)))) (= (value!1461 (right!580 tree!73)) (value!1461 (left!577 res!4803)))) (= inst!92 inst!90)))

(declare-fun bs!4045 () Bool)

(assert (= bs!4045 (and b!13312 b!13258)))

(assert (=> (and bs!4045 (= (content!21 (left!577 (right!580 tree!73))) (content!21 (left!577 res!4803))) (= (value!1461 (right!580 tree!73)) (value!1461 res!4803))) (= inst!92 inst!82)))

(declare-fun bs!4046 () Bool)

(assert (= bs!4046 (and b!13312 neg-inst!77)))

(assert (=> (and bs!4046 (= (content!21 (left!577 (right!580 tree!73))) (content!21 (left!577 lt!1903))) (= (value!1461 (right!580 tree!73)) (value!1461 lt!1903))) (= inst!92 true)))

(declare-fun bs!4047 () Bool)

(assert (= bs!4047 (and b!13312 neg-inst!71)))

(assert (=> (and bs!4047 (= (content!21 (left!577 (right!580 tree!73))) (content!21 (left!577 res!4803))) (= (value!1461 (right!580 tree!73)) (value!1461 res!4803))) (= inst!92 true)))

(declare-fun bs!4048 () Bool)

(assert (= bs!4048 (and b!13312 neg-inst!69)))

(assert (=> (and bs!4048 (= (content!21 (left!577 (right!580 tree!73))) (content!21 (left!577 tree!73))) (= (value!1461 (right!580 tree!73)) (value!1461 tree!73))) (= inst!92 true)))

(declare-fun bs!4049 () Bool)

(assert (= bs!4049 (and b!13312 b!13286)))

(assert (=> (and bs!4049 (= (content!21 (left!577 (right!580 tree!73))) (content!21 (left!577 (left!577 tree!73)))) (= (value!1461 (right!580 tree!73)) (value!1461 (left!577 tree!73)))) (= inst!92 inst!86)))

(declare-fun b!13313 () Bool)

(assert (=> b!13313 m!16799))

(declare-fun inst!93 () Bool)

(declare-fun x!7525 () Int)

(assert (=> b!13313 (= inst!93 (=> true (or (not (member x!7525 (content!21 (right!580 (right!580 tree!73))))) (< (value!1461 (right!580 tree!73)) x!7525))))))

(declare-fun m!16831 () Bool)

(assert (=> b!13313 m!16831))

(declare-fun bs!4050 () Bool)

(assert (= bs!4050 (and b!13313 neg-inst!78)))

(assert (=> (and bs!4050 (= (content!21 (right!580 (right!580 tree!73))) (content!21 (right!580 (left!577 res!4803)))) (= (value!1461 (right!580 tree!73)) (value!1461 (left!577 res!4803)))) (= inst!93 true)))

(declare-fun bs!4051 () Bool)

(assert (= bs!4051 (and b!13313 b!13247)))

(assert (=> (and bs!4051 (= (content!21 (right!580 (right!580 tree!73))) (content!21 (right!580 tree!73))) (= (value!1461 (right!580 tree!73)) (value!1461 tree!73))) (= inst!93 inst!81)))

(declare-fun bs!4052 () Bool)

(assert (= bs!4052 (and b!13313 neg-inst!68)))

(assert (=> (and bs!4052 (= (content!21 (right!580 (right!580 tree!73))) (content!21 (right!580 tree!73))) (= (value!1461 (right!580 tree!73)) (value!1461 tree!73))) (= inst!93 true)))

(declare-fun bs!4053 () Bool)

(assert (= bs!4053 (and b!13313 neg-inst!76)))

(assert (=> (and bs!4053 (= (content!21 (right!580 (right!580 tree!73))) (content!21 (right!580 lt!1903))) (= (value!1461 (right!580 tree!73)) (value!1461 lt!1903))) (= inst!93 true)))

(declare-fun bs!4054 () Bool)

(assert (= bs!4054 (and b!13313 b!13259)))

(assert (=> (and bs!4054 (= (content!21 (right!580 (right!580 tree!73))) (content!21 (right!580 res!4803))) (= (value!1461 (right!580 tree!73)) (value!1461 res!4803))) (= inst!93 inst!83)))

(declare-fun bs!4055 () Bool)

(assert (= bs!4055 (and b!13313 neg-inst!74)))

(assert (=> (and bs!4055 (= (content!21 (right!580 (right!580 tree!73))) (content!21 (right!580 (left!577 tree!73)))) (= (value!1461 (right!580 tree!73)) (value!1461 (left!577 tree!73)))) (= inst!93 true)))

(declare-fun bs!4056 () Bool)

(assert (= bs!4056 (and b!13313 b!13283)))

(assert (=> (and bs!4056 (= (content!21 (right!580 (right!580 tree!73))) (content!21 (right!580 (right!580 res!4803)))) (= (value!1461 (right!580 tree!73)) (value!1461 (right!580 res!4803)))) (= inst!93 inst!85)))

(declare-fun bs!4057 () Bool)

(assert (= bs!4057 (and b!13313 neg-inst!72)))

(assert (=> (and bs!4057 (= (content!21 (right!580 (right!580 tree!73))) (content!21 (right!580 (right!580 res!4803)))) (= (value!1461 (right!580 tree!73)) (value!1461 (right!580 res!4803)))) (= inst!93 true)))

(declare-fun bs!4058 () Bool)

(assert (= bs!4058 (and b!13313 b!13305)))

(assert (=> (and bs!4058 (= (content!21 (right!580 (right!580 tree!73))) (content!21 (right!580 lt!1903))) (= (value!1461 (right!580 tree!73)) (value!1461 lt!1903))) (= inst!93 inst!89)))

(declare-fun bs!4059 () Bool)

(assert (= bs!4059 (and b!13313 b!13309)))

(assert (=> (and bs!4059 (= (content!21 (right!580 (right!580 tree!73))) (content!21 (right!580 (left!577 res!4803)))) (= (value!1461 (right!580 tree!73)) (value!1461 (left!577 res!4803)))) (= inst!93 inst!91)))

(declare-fun bs!4060 () Bool)

(assert (= bs!4060 (and b!13313 neg-inst!70)))

(assert (=> (and bs!4060 (= (content!21 (right!580 (right!580 tree!73))) (content!21 (right!580 res!4803))) (= (value!1461 (right!580 tree!73)) (value!1461 res!4803))) (= inst!93 true)))

(declare-fun bs!4061 () Bool)

(assert (= bs!4061 (and b!13313 b!13287)))

(assert (=> (and bs!4061 (= (content!21 (right!580 (right!580 tree!73))) (content!21 (right!580 (left!577 tree!73)))) (= (value!1461 (right!580 tree!73)) (value!1461 (left!577 tree!73)))) (= inst!93 inst!87)))

(declare-fun bs!4062 () Bool)

(declare-fun neg-inst!81 () Bool)

(assert (= bs!4062 neg-inst!81))

(assert (=> bs!4062 m!16795))

(declare-fun bs!4063 () Bool)

(declare-fun s!524 () Bool)

(assert (= bs!4063 (and neg-inst!81 s!524)))

(assert (=> bs!4063 (=> true (or (not (member x!7524 (content!21 (left!577 (right!580 tree!73))))) (< x!7524 (value!1461 (right!580 tree!73)))))))

(assert (=> m!16829 s!524))

(declare-fun bs!4064 () Bool)

(assert (= bs!4064 (and neg-inst!81 b!13312)))

(assert (=> bs!4064 (= true inst!92)))

(declare-fun bs!4065 () Bool)

(assert (= bs!4065 (and neg-inst!81 b!13304)))

(assert (=> (and bs!4065 (= (content!21 (left!577 (right!580 tree!73))) (content!21 (left!577 lt!1903))) (= (value!1461 (right!580 tree!73)) (value!1461 lt!1903))) (= true inst!88)))

(declare-fun bs!4066 () Bool)

(assert (= bs!4066 (and neg-inst!81 b!13246)))

(assert (=> (and bs!4066 (= (content!21 (left!577 (right!580 tree!73))) (content!21 (left!577 tree!73))) (= (value!1461 (right!580 tree!73)) (value!1461 tree!73))) (= true inst!80)))

(declare-fun bs!4067 () Bool)

(assert (= bs!4067 (and neg-inst!81 neg-inst!79)))

(assert (=> (and bs!4067 (= (content!21 (left!577 (right!580 tree!73))) (content!21 (left!577 (left!577 res!4803)))) (= (value!1461 (right!580 tree!73)) (value!1461 (left!577 res!4803)))) (= true true)))

(declare-fun bs!4068 () Bool)

(assert (= bs!4068 (and neg-inst!81 neg-inst!75)))

(assert (=> (and bs!4068 (= (content!21 (left!577 (right!580 tree!73))) (content!21 (left!577 (left!577 tree!73)))) (= (value!1461 (right!580 tree!73)) (value!1461 (left!577 tree!73)))) (= true true)))

(declare-fun bs!4069 () Bool)

(assert (= bs!4069 (and neg-inst!81 b!13282)))

(assert (=> (and bs!4069 (= (content!21 (left!577 (right!580 tree!73))) (content!21 (left!577 (right!580 res!4803)))) (= (value!1461 (right!580 tree!73)) (value!1461 (right!580 res!4803)))) (= true inst!84)))

(declare-fun bs!4070 () Bool)

(assert (= bs!4070 (and neg-inst!81 neg-inst!73)))

(assert (=> (and bs!4070 (= (content!21 (left!577 (right!580 tree!73))) (content!21 (left!577 (right!580 res!4803)))) (= (value!1461 (right!580 tree!73)) (value!1461 (right!580 res!4803)))) (= true true)))

(declare-fun bs!4071 () Bool)

(assert (= bs!4071 (and neg-inst!81 b!13308)))

(assert (=> (and bs!4071 (= (content!21 (left!577 (right!580 tree!73))) (content!21 (left!577 (left!577 res!4803)))) (= (value!1461 (right!580 tree!73)) (value!1461 (left!577 res!4803)))) (= true inst!90)))

(declare-fun bs!4072 () Bool)

(assert (= bs!4072 (and neg-inst!81 b!13258)))

(assert (=> (and bs!4072 (= (content!21 (left!577 (right!580 tree!73))) (content!21 (left!577 res!4803))) (= (value!1461 (right!580 tree!73)) (value!1461 res!4803))) (= true inst!82)))

(declare-fun bs!4073 () Bool)

(assert (= bs!4073 (and neg-inst!81 neg-inst!77)))

(assert (=> (and bs!4073 (= (content!21 (left!577 (right!580 tree!73))) (content!21 (left!577 lt!1903))) (= (value!1461 (right!580 tree!73)) (value!1461 lt!1903))) (= true true)))

(declare-fun bs!4074 () Bool)

(assert (= bs!4074 (and neg-inst!81 neg-inst!71)))

(assert (=> (and bs!4074 (= (content!21 (left!577 (right!580 tree!73))) (content!21 (left!577 res!4803))) (= (value!1461 (right!580 tree!73)) (value!1461 res!4803))) (= true true)))

(declare-fun bs!4075 () Bool)

(assert (= bs!4075 (and neg-inst!81 b!13286)))

(assert (=> (and bs!4075 (= (content!21 (left!577 (right!580 tree!73))) (content!21 (left!577 (left!577 tree!73)))) (= (value!1461 (right!580 tree!73)) (value!1461 (left!577 tree!73)))) (= true inst!86)))

(declare-fun bs!4076 () Bool)

(assert (= bs!4076 (and neg-inst!81 neg-inst!69)))

(assert (=> (and bs!4076 (= (content!21 (left!577 (right!580 tree!73))) (content!21 (left!577 tree!73))) (= (value!1461 (right!580 tree!73)) (value!1461 tree!73))) (= true true)))

(declare-fun bs!4077 () Bool)

(declare-fun neg-inst!80 () Bool)

(assert (= bs!4077 neg-inst!80))

(assert (=> bs!4077 m!16799))

(declare-fun bs!4078 () Bool)

(declare-fun s!526 () Bool)

(assert (= bs!4078 (and neg-inst!80 s!526)))

(assert (=> bs!4078 (=> true (or (not (member x!7525 (content!21 (right!580 (right!580 tree!73))))) (< (value!1461 (right!580 tree!73)) x!7525)))))

(assert (=> m!16831 s!526))

(declare-fun bs!4079 () Bool)

(assert (= bs!4079 (and neg-inst!80 neg-inst!78)))

(assert (=> (and bs!4079 (= (content!21 (right!580 (right!580 tree!73))) (content!21 (right!580 (left!577 res!4803)))) (= (value!1461 (right!580 tree!73)) (value!1461 (left!577 res!4803)))) (= true true)))

(declare-fun bs!4080 () Bool)

(assert (= bs!4080 (and neg-inst!80 b!13247)))

(assert (=> (and bs!4080 (= (content!21 (right!580 (right!580 tree!73))) (content!21 (right!580 tree!73))) (= (value!1461 (right!580 tree!73)) (value!1461 tree!73))) (= true inst!81)))

(declare-fun bs!4081 () Bool)

(assert (= bs!4081 (and neg-inst!80 neg-inst!68)))

(assert (=> (and bs!4081 (= (content!21 (right!580 (right!580 tree!73))) (content!21 (right!580 tree!73))) (= (value!1461 (right!580 tree!73)) (value!1461 tree!73))) (= true true)))

(declare-fun bs!4082 () Bool)

(assert (= bs!4082 (and neg-inst!80 neg-inst!76)))

(assert (=> (and bs!4082 (= (content!21 (right!580 (right!580 tree!73))) (content!21 (right!580 lt!1903))) (= (value!1461 (right!580 tree!73)) (value!1461 lt!1903))) (= true true)))

(declare-fun bs!4083 () Bool)

(assert (= bs!4083 (and neg-inst!80 b!13259)))

(assert (=> (and bs!4083 (= (content!21 (right!580 (right!580 tree!73))) (content!21 (right!580 res!4803))) (= (value!1461 (right!580 tree!73)) (value!1461 res!4803))) (= true inst!83)))

(declare-fun bs!4084 () Bool)

(assert (= bs!4084 (and neg-inst!80 neg-inst!74)))

(assert (=> (and bs!4084 (= (content!21 (right!580 (right!580 tree!73))) (content!21 (right!580 (left!577 tree!73)))) (= (value!1461 (right!580 tree!73)) (value!1461 (left!577 tree!73)))) (= true true)))

(declare-fun bs!4085 () Bool)

(assert (= bs!4085 (and neg-inst!80 b!13283)))

(assert (=> (and bs!4085 (= (content!21 (right!580 (right!580 tree!73))) (content!21 (right!580 (right!580 res!4803)))) (= (value!1461 (right!580 tree!73)) (value!1461 (right!580 res!4803)))) (= true inst!85)))

(declare-fun bs!4086 () Bool)

(assert (= bs!4086 (and neg-inst!80 neg-inst!72)))

(assert (=> (and bs!4086 (= (content!21 (right!580 (right!580 tree!73))) (content!21 (right!580 (right!580 res!4803)))) (= (value!1461 (right!580 tree!73)) (value!1461 (right!580 res!4803)))) (= true true)))

(declare-fun bs!4087 () Bool)

(assert (= bs!4087 (and neg-inst!80 b!13305)))

(assert (=> (and bs!4087 (= (content!21 (right!580 (right!580 tree!73))) (content!21 (right!580 lt!1903))) (= (value!1461 (right!580 tree!73)) (value!1461 lt!1903))) (= true inst!89)))

(declare-fun bs!4088 () Bool)

(assert (= bs!4088 (and neg-inst!80 b!13309)))

(assert (=> (and bs!4088 (= (content!21 (right!580 (right!580 tree!73))) (content!21 (right!580 (left!577 res!4803)))) (= (value!1461 (right!580 tree!73)) (value!1461 (left!577 res!4803)))) (= true inst!91)))

(declare-fun bs!4089 () Bool)

(assert (= bs!4089 (and neg-inst!80 neg-inst!70)))

(assert (=> (and bs!4089 (= (content!21 (right!580 (right!580 tree!73))) (content!21 (right!580 res!4803))) (= (value!1461 (right!580 tree!73)) (value!1461 res!4803))) (= true true)))

(declare-fun bs!4090 () Bool)

(assert (= bs!4090 (and neg-inst!80 b!13287)))

(assert (=> (and bs!4090 (= (content!21 (right!580 (right!580 tree!73))) (content!21 (right!580 (left!577 tree!73)))) (= (value!1461 (right!580 tree!73)) (value!1461 (left!577 tree!73)))) (= true inst!87)))

(declare-fun bs!4091 () Bool)

(assert (= bs!4091 (and neg-inst!80 b!13313)))

(assert (=> bs!4091 (= true inst!93)))

(declare-fun res!5018 () Bool)

(declare-fun e!7294 () Bool)

(assert (=> b!13312 (=> (not res!5018) (not e!7294))))

(assert (=> b!13312 (= res!5018 inst!92)))

(assert (=> b!13313 (= e!7294 inst!93)))

(declare-fun b!13310 () Bool)

(declare-fun e!7295 () Bool)

(assert (=> b!13310 (= e!7295 e!7294)))

(declare-fun res!5016 () Bool)

(assert (=> b!13310 (=> (not res!5016) (not e!7294))))

(assert (=> b!13310 (= res!5016 (isBST!0 (left!577 (right!580 tree!73))))))

(declare-fun b!13311 () Bool)

(declare-fun res!5017 () Bool)

(assert (=> b!13311 (=> (not res!5017) (not e!7294))))

(assert (=> b!13311 (= res!5017 (isBST!0 (right!580 (right!580 tree!73))))))

(declare-fun d!10301 () Bool)

(declare-fun res!5015 () Bool)

(assert (=> d!10301 (=> res!5015 e!7295)))

(assert (=> d!10301 (= res!5015 (is-Leaf!167 (right!580 tree!73)))))

(assert (=> d!10301 (= (isBST!0 (right!580 tree!73)) e!7295)))

(assert (= (and d!10301 (not res!5015)) b!13310))

(assert (= (and b!13310 res!5016) b!13311))

(assert (= (and b!13311 res!5017) b!13312))

(assert (= neg-inst!81 inst!92))

(assert (= (and b!13312 res!5018) b!13313))

(assert (= neg-inst!80 inst!93))

(declare-fun m!16833 () Bool)

(assert (=> b!13310 m!16833))

(declare-fun m!16835 () Bool)

(assert (=> b!13311 m!16835))

(assert (=> b!13245 d!10301))

(push 1)

(assert (not neg-inst!76))

(assert (not neg-inst!75))

(assert (not b!13295))

(assert (not neg-inst!81))

(assert (not b!13312))

(assert (not b!13299))

(assert (not b!13284))

(assert (not b!13280))

(assert (not b!13281))

(assert (not b!13292))

(assert (not neg-inst!77))

(assert (not neg-inst!72))

(assert (not neg-inst!73))

(assert (not b!13313))

(assert (not b!13305))

(assert (not b!13304))

(assert (not neg-inst!78))

(assert (not b!13306))

(assert (not b!13302))

(assert (not b!13285))

(assert (not b!13309))

(assert (not b!13279))

(assert (not b!13289))

(assert (not b!13282))

(assert (not neg-inst!74))

(assert (not b!13301))

(assert (not b!13286))

(assert (not neg-inst!79))

(assert (not b!13303))

(assert (not neg-inst!80))

(assert (not b!13283))

(assert (not b!13307))

(assert (not d!10287))

(assert (not b!13310))

(assert (not b!13287))

(assert (not b!13297))

(assert (not b!13308))

(assert (not b!13311))

(assert (not b!13288))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!4092 () Bool)

(declare-fun s!528 () Bool)

(assert (= bs!4092 (and neg-inst!69 s!528)))

(assert (=> bs!4092 (=> true (or (not (member x!7515 (content!21 (left!577 tree!73)))) (< x!7515 (value!1461 tree!73))))))

(declare-fun m!16837 () Bool)

(assert (=> m!16745 m!16837))

(assert (=> m!16745 s!528))

(declare-fun bs!4093 () Bool)

(declare-fun s!530 () Bool)

(assert (= bs!4093 (and neg-inst!69 s!530)))

(assert (=> bs!4093 (=> true (or (not (member value!1445 (content!21 (left!577 tree!73)))) (< value!1445 (value!1461 tree!73))))))

(declare-fun m!16839 () Bool)

(assert (=> m!16715 m!16839))

(assert (=> m!16715 s!530))

(declare-fun bs!4094 () Bool)

(declare-fun s!532 () Bool)

(assert (= bs!4094 (and neg-inst!69 s!532)))

(assert (=> bs!4094 (=> true (or (not (member (value!1461 res!4803) (content!21 (left!577 tree!73)))) (< (value!1461 res!4803) (value!1461 tree!73))))))

(declare-fun m!16841 () Bool)

(assert (=> m!16737 m!16841))

(assert (=> m!16737 s!532))

(declare-fun bs!4095 () Bool)

(declare-fun s!534 () Bool)

(assert (= bs!4095 (and neg-inst!69 s!534)))

(assert (=> bs!4095 (=> true (or (not (member x!7514 (content!21 (left!577 tree!73)))) (< x!7514 (value!1461 tree!73))))))

(declare-fun m!16843 () Bool)

(assert (=> m!16743 m!16843))

(assert (=> m!16743 s!534))

(declare-fun bs!4096 () Bool)

(declare-fun s!536 () Bool)

(assert (= bs!4096 (and neg-inst!69 s!536)))

(assert (=> bs!4096 (=> true (or (not (member (value!1461 tree!73) (content!21 (left!577 tree!73)))) (< (value!1461 tree!73) (value!1461 tree!73))))))

(declare-fun m!16845 () Bool)

(assert (=> m!16741 m!16845))

(assert (=> m!16741 s!536))

(declare-fun bs!4097 () Bool)

(declare-fun s!538 () Bool)

(assert (= bs!4097 (and neg-inst!69 s!538)))

(assert (=> bs!4097 (=> true (or (not (member x!7513 (content!21 (left!577 tree!73)))) (< x!7513 (value!1461 tree!73))))))

(declare-fun m!16847 () Bool)

(assert (=> m!16729 m!16847))

(assert (=> m!16729 s!538))

(declare-fun bs!4098 () Bool)

(declare-fun s!540 () Bool)

(assert (= bs!4098 (and neg-inst!68 s!540)))

(assert (=> bs!4098 (=> true (or (not (member value!1445 (content!21 (right!580 tree!73)))) (< (value!1461 tree!73) value!1445)))))

(declare-fun m!16849 () Bool)

(assert (=> m!16715 m!16849))

(assert (=> m!16715 s!540))

(declare-fun bs!4099 () Bool)

(declare-fun s!542 () Bool)

(assert (= bs!4099 (and neg-inst!68 s!542)))

(assert (=> bs!4099 (=> true (or (not (member (value!1461 res!4803) (content!21 (right!580 tree!73)))) (< (value!1461 tree!73) (value!1461 res!4803))))))

(declare-fun m!16851 () Bool)

(assert (=> m!16737 m!16851))

(assert (=> m!16737 s!542))

(declare-fun bs!4100 () Bool)

(declare-fun s!544 () Bool)

(assert (= bs!4100 (and neg-inst!68 s!544)))

(assert (=> bs!4100 (=> true (or (not (member x!7512 (content!21 (right!580 tree!73)))) (< (value!1461 tree!73) x!7512)))))

(declare-fun m!16853 () Bool)

(assert (=> m!16725 m!16853))

(assert (=> m!16725 s!544))

(declare-fun bs!4101 () Bool)

(declare-fun s!546 () Bool)

(assert (= bs!4101 (and neg-inst!68 s!546)))

(assert (=> bs!4101 (=> true (or (not (member x!7515 (content!21 (right!580 tree!73)))) (< (value!1461 tree!73) x!7515)))))

(declare-fun m!16855 () Bool)

(assert (=> m!16745 m!16855))

(assert (=> m!16745 s!546))

(declare-fun bs!4102 () Bool)

(declare-fun s!548 () Bool)

(assert (= bs!4102 (and neg-inst!68 s!548)))

(assert (=> bs!4102 (=> true (or (not (member x!7514 (content!21 (right!580 tree!73)))) (< (value!1461 tree!73) x!7514)))))

(declare-fun m!16857 () Bool)

(assert (=> m!16743 m!16857))

(assert (=> m!16743 s!548))

(declare-fun bs!4103 () Bool)

(declare-fun s!550 () Bool)

(assert (= bs!4103 (and neg-inst!68 s!550)))

(assert (=> bs!4103 (=> true (or (not (member (value!1461 tree!73) (content!21 (right!580 tree!73)))) (< (value!1461 tree!73) (value!1461 tree!73))))))

(declare-fun m!16859 () Bool)

(assert (=> m!16741 m!16859))

(assert (=> m!16741 s!550))

(declare-fun bs!4104 () Bool)

(declare-fun s!552 () Bool)

(assert (= bs!4104 (and neg-inst!71 s!552)))

(assert (=> bs!4104 (=> true (or (not (member x!7512 (content!21 (left!577 res!4803)))) (< x!7512 (value!1461 res!4803))))))

(declare-fun m!16861 () Bool)

(assert (=> m!16725 m!16861))

(assert (=> m!16725 s!552))

(declare-fun bs!4105 () Bool)

(declare-fun s!554 () Bool)

(assert (= bs!4105 (and neg-inst!71 s!554)))

(assert (=> bs!4105 (=> true (or (not (member x!7515 (content!21 (left!577 res!4803)))) (< x!7515 (value!1461 res!4803))))))

(declare-fun m!16863 () Bool)

(assert (=> m!16745 m!16863))

(assert (=> m!16745 s!554))

(declare-fun bs!4106 () Bool)

(declare-fun s!556 () Bool)

(assert (= bs!4106 (and neg-inst!71 s!556)))

(assert (=> bs!4106 (=> true (or (not (member value!1445 (content!21 (left!577 res!4803)))) (< value!1445 (value!1461 res!4803))))))

(declare-fun m!16865 () Bool)

(assert (=> m!16715 m!16865))

(assert (=> m!16715 s!556))

(declare-fun bs!4107 () Bool)

(declare-fun s!558 () Bool)

(assert (= bs!4107 (and neg-inst!71 s!558)))

(assert (=> bs!4107 (=> true (or (not (member (value!1461 res!4803) (content!21 (left!577 res!4803)))) (< (value!1461 res!4803) (value!1461 res!4803))))))

(declare-fun m!16867 () Bool)

(assert (=> m!16737 m!16867))

(assert (=> m!16737 s!558))

(declare-fun bs!4108 () Bool)

(declare-fun s!560 () Bool)

(assert (= bs!4108 (and neg-inst!71 s!560)))

(assert (=> bs!4108 (=> true (or (not (member (value!1461 tree!73) (content!21 (left!577 res!4803)))) (< (value!1461 tree!73) (value!1461 res!4803))))))

(declare-fun m!16869 () Bool)

(assert (=> m!16741 m!16869))

(assert (=> m!16741 s!560))

(declare-fun bs!4109 () Bool)

(declare-fun s!562 () Bool)

(assert (= bs!4109 (and neg-inst!71 s!562)))

(assert (=> bs!4109 (=> true (or (not (member x!7513 (content!21 (left!577 res!4803)))) (< x!7513 (value!1461 res!4803))))))

(declare-fun m!16871 () Bool)

(assert (=> m!16729 m!16871))

(assert (=> m!16729 s!562))

(declare-fun bs!4110 () Bool)

(declare-fun s!564 () Bool)

(assert (= bs!4110 (and neg-inst!70 s!564)))

(assert (=> bs!4110 (=> true (or (not (member value!1445 (content!21 (right!580 res!4803)))) (< (value!1461 res!4803) value!1445)))))

(declare-fun m!16873 () Bool)

(assert (=> m!16715 m!16873))

(assert (=> m!16715 s!564))

(declare-fun bs!4111 () Bool)

(declare-fun s!566 () Bool)

(assert (= bs!4111 (and neg-inst!70 s!566)))

(assert (=> bs!4111 (=> true (or (not (member x!7513 (content!21 (right!580 res!4803)))) (< (value!1461 res!4803) x!7513)))))

(declare-fun m!16875 () Bool)

(assert (=> m!16729 m!16875))

(assert (=> m!16729 s!566))

(declare-fun bs!4112 () Bool)

(declare-fun s!568 () Bool)

(assert (= bs!4112 (and neg-inst!70 s!568)))

(assert (=> bs!4112 (=> true (or (not (member (value!1461 res!4803) (content!21 (right!580 res!4803)))) (< (value!1461 res!4803) (value!1461 res!4803))))))

(declare-fun m!16877 () Bool)

(assert (=> m!16737 m!16877))

(assert (=> m!16737 s!568))

(declare-fun bs!4113 () Bool)

(declare-fun s!570 () Bool)

(assert (= bs!4113 (and neg-inst!70 s!570)))

(assert (=> bs!4113 (=> true (or (not (member x!7512 (content!21 (right!580 res!4803)))) (< (value!1461 res!4803) x!7512)))))

(declare-fun m!16879 () Bool)

(assert (=> m!16725 m!16879))

(assert (=> m!16725 s!570))

(declare-fun bs!4114 () Bool)

(declare-fun s!572 () Bool)

(assert (= bs!4114 (and neg-inst!70 s!572)))

(assert (=> bs!4114 (=> true (or (not (member x!7514 (content!21 (right!580 res!4803)))) (< (value!1461 res!4803) x!7514)))))

(declare-fun m!16881 () Bool)

(assert (=> m!16743 m!16881))

(assert (=> m!16743 s!572))

(declare-fun bs!4115 () Bool)

(declare-fun s!574 () Bool)

(assert (= bs!4115 (and neg-inst!70 s!574)))

(assert (=> bs!4115 (=> true (or (not (member (value!1461 tree!73) (content!21 (right!580 res!4803)))) (< (value!1461 res!4803) (value!1461 tree!73))))))

(declare-fun m!16883 () Bool)

(assert (=> m!16741 m!16883))

(assert (=> m!16741 s!574))

(push 1)

(assert (not neg-inst!76))

(assert (not neg-inst!75))

(assert (not b!13295))

(assert (not neg-inst!81))

(assert (not b!13312))

(assert (not b!13299))

(assert (not b!13284))

(assert (not b!13280))

(assert (not b!13281))

(assert (not b!13292))

(assert (not neg-inst!77))

(assert (not neg-inst!72))

(assert (not neg-inst!73))

(assert (not b!13313))

(assert (not b!13305))

(assert (not b!13304))

(assert (not neg-inst!78))

(assert (not b!13306))

(assert (not b!13302))

(assert (not b!13285))

(assert (not b!13309))

(assert (not b!13279))

(assert (not b!13289))

(assert (not b!13282))

(assert (not neg-inst!74))

(assert (not b!13301))

(assert (not b!13286))

(assert (not neg-inst!79))

(assert (not b!13303))

(assert (not neg-inst!80))

(assert (not b!13283))

(assert (not b!13307))

(assert (not d!10287))

(assert (not b!13310))

(assert (not b!13287))

(assert (not b!13297))

(assert (not b!13308))

(assert (not b!13311))

(assert (not b!13288))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

