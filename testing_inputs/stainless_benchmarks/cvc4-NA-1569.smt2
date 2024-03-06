; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10772 () Bool)

(assert start!10772)

(declare-fun b!82209 () Bool)

(assert (=> b!82209 true))

(declare-fun bs!39920 () Bool)

(declare-fun b!82210 () Bool)

(assert (= bs!39920 (and b!82210 b!82209)))

(declare-fun lambda!9796 () Int)

(declare-fun lambda!9795 () Int)

(assert (=> bs!39920 (not (= lambda!9796 lambda!9795))))

(assert (=> b!82210 true))

(declare-fun bs!39921 () Bool)

(declare-fun b!82211 () Bool)

(assert (= bs!39921 (and b!82211 b!82209)))

(declare-fun lambda!9797 () Int)

(assert (=> bs!39921 (not (= lambda!9797 lambda!9795))))

(declare-fun bs!39922 () Bool)

(assert (= bs!39922 (and b!82211 b!82210)))

(assert (=> bs!39922 (not (= lambda!9797 lambda!9796))))

(assert (=> b!82211 true))

(declare-fun res!42058 () Bool)

(declare-fun e!44604 () Bool)

(assert (=> b!82209 (=> (not res!42058) (not e!44604))))

(declare-datatypes () ((List!667 (Cons!624 (h!994 Int) (t!47849 List!667)) (Nil!626))))

(declare-fun ls!96 () List!667)

(declare-fun less!5 () List!667)

(declare-fun filter!20 (List!667 Int) List!667)

(assert (=> b!82209 (= res!42058 (= less!5 (filter!20 (t!47849 ls!96) lambda!9795)))))

(declare-fun res!42059 () Bool)

(assert (=> b!82210 (=> (not res!42059) (not e!44604))))

(declare-fun equal!10 () List!667)

(assert (=> b!82210 (= res!42059 (= equal!10 (Cons!624 (h!994 ls!96) (filter!20 (t!47849 ls!96) lambda!9796))))))

(declare-fun res!42055 () Bool)

(assert (=> b!82211 (=> (not res!42055) (not e!44604))))

(declare-fun more!5 () List!667)

(assert (=> b!82211 (= res!42055 (= more!5 (filter!20 (t!47849 ls!96) lambda!9797)))))

(declare-fun b!82212 () Bool)

(declare-fun res!42056 () Bool)

(assert (=> b!82212 (=> (not res!42056) (not e!44604))))

(declare-fun sorted_lemma!0 (List!667) Bool)

(assert (=> b!82212 (= res!42056 (sorted_lemma!0 less!5))))

(declare-fun b!82213 () Bool)

(declare-fun sort_preserves_forall!0 (List!667 Int) Bool)

(assert (=> b!82213 (= e!44604 (not (sort_preserves_forall!0 less!5 lambda!9795)))))

(declare-fun res!42057 () Bool)

(assert (=> start!10772 (=> (not res!42057) (not e!44604))))

(assert (=> start!10772 (= res!42057 (and (not (is-Nil!626 ls!96)) (not (is-Nil!626 (t!47849 ls!96)))))))

(assert (=> start!10772 e!44604))

(assert (=> start!10772 true))

(assert (= (and start!10772 res!42057) b!82209))

(assert (= (and b!82209 res!42058) b!82210))

(assert (= (and b!82210 res!42059) b!82211))

(assert (= (and b!82211 res!42055) b!82212))

(assert (= (and b!82212 res!42056) b!82213))

(declare-fun m!77770 () Bool)

(assert (=> b!82212 m!77770))

(declare-fun m!77772 () Bool)

(assert (=> b!82213 m!77772))

(declare-fun m!77774 () Bool)

(assert (=> b!82210 m!77774))

(declare-fun m!77776 () Bool)

(assert (=> b!82209 m!77776))

(declare-fun m!77778 () Bool)

(assert (=> b!82211 m!77778))

(push 1)

(assert (not b!82213))

(assert (not b!82210))

(assert (not b!82209))

(assert (not b!82212))

(assert (not b!82211))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!82230 () Bool)

(declare-fun e!44615 () List!667)

(declare-fun lt!18955 () List!667)

(assert (=> b!82230 (= e!44615 (Cons!624 (h!994 (t!47849 ls!96)) lt!18955))))

(declare-fun b!82231 () Bool)

(declare-fun e!44614 () List!667)

(assert (=> b!82231 (= e!44614 Nil!626)))

(declare-fun b!82232 () Bool)

(declare-fun res!42070 () Bool)

(declare-fun e!44613 () Bool)

(assert (=> b!82232 (=> (not res!42070) (not e!44613))))

(declare-fun lt!18956 () List!667)

(declare-fun content!126 (List!667) (Set Int))

(assert (=> b!82232 (= res!42070 (subset (content!126 lt!18956) (content!126 (t!47849 ls!96))))))

(declare-fun b!82233 () Bool)

(declare-fun e!44616 () Bool)

(declare-fun dynLambda!986 (Int Int) Bool)

(assert (=> b!82233 (= e!44616 (dynLambda!986 lambda!9797 (h!994 (t!47849 ls!96))))))

(declare-fun b!82234 () Bool)

(assert (=> b!82234 (= e!44615 lt!18955)))

(declare-fun b!82235 () Bool)

(declare-fun forall!22 (List!667 Int) Bool)

(assert (=> b!82235 (= e!44613 (forall!22 lt!18956 lambda!9797))))

(declare-fun b!82236 () Bool)

(assert (=> b!82236 (= e!44614 e!44615)))

(declare-fun c!20693 () Bool)

(assert (=> b!82236 (= c!20693 e!44616)))

(declare-fun res!42071 () Bool)

(assert (=> b!82236 (=> (not res!42071) (not e!44616))))

(assert (=> b!82236 (= res!42071 (is-Cons!624 (t!47849 ls!96)))))

(assert (=> b!82236 (= lt!18955 (filter!20 (t!47849 (t!47849 ls!96)) lambda!9797))))

(declare-fun d!56271 () Bool)

(assert (=> d!56271 e!44613))

(declare-fun res!42072 () Bool)

(assert (=> d!56271 (=> (not res!42072) (not e!44613))))

(declare-fun size!655 (List!667) Int)

(assert (=> d!56271 (= res!42072 (<= (size!655 lt!18956) (size!655 (t!47849 ls!96))))))

(assert (=> d!56271 (= lt!18956 e!44614)))

(declare-fun c!20694 () Bool)

(assert (=> d!56271 (= c!20694 (is-Nil!626 (t!47849 ls!96)))))

(assert (=> d!56271 (= (filter!20 (t!47849 ls!96) lambda!9797) lt!18956)))

(assert (= (and b!82236 res!42071) b!82233))

(assert (= (and b!82236 c!20693) b!82230))

(assert (= (and b!82236 (not c!20693)) b!82234))

(assert (= (and d!56271 c!20694) b!82231))

(assert (= (and d!56271 (not c!20694)) b!82236))

(assert (= (and d!56271 res!42072) b!82232))

(assert (= (and b!82232 res!42070) b!82235))

(declare-fun b_lambda!16299 () Bool)

(assert (=> (not b_lambda!16299) (not b!82233)))

(declare-fun m!77780 () Bool)

(assert (=> b!82235 m!77780))

(declare-fun m!77782 () Bool)

(assert (=> b!82236 m!77782))

(declare-fun m!77784 () Bool)

(assert (=> b!82233 m!77784))

(declare-fun m!77786 () Bool)

(assert (=> b!82232 m!77786))

(declare-fun m!77788 () Bool)

(assert (=> b!82232 m!77788))

(declare-fun m!77790 () Bool)

(assert (=> d!56271 m!77790))

(declare-fun m!77792 () Bool)

(assert (=> d!56271 m!77792))

(assert (=> b!82211 d!56271))

(declare-fun b!82237 () Bool)

(declare-fun e!44619 () List!667)

(declare-fun lt!18957 () List!667)

(assert (=> b!82237 (= e!44619 (Cons!624 (h!994 (t!47849 ls!96)) lt!18957))))

(declare-fun b!82238 () Bool)

(declare-fun e!44618 () List!667)

(assert (=> b!82238 (= e!44618 Nil!626)))

(declare-fun b!82239 () Bool)

(declare-fun res!42073 () Bool)

(declare-fun e!44617 () Bool)

(assert (=> b!82239 (=> (not res!42073) (not e!44617))))

(declare-fun lt!18958 () List!667)

(assert (=> b!82239 (= res!42073 (subset (content!126 lt!18958) (content!126 (t!47849 ls!96))))))

(declare-fun b!82240 () Bool)

(declare-fun e!44620 () Bool)

(assert (=> b!82240 (= e!44620 (dynLambda!986 lambda!9795 (h!994 (t!47849 ls!96))))))

(declare-fun b!82241 () Bool)

(assert (=> b!82241 (= e!44619 lt!18957)))

(declare-fun b!82242 () Bool)

(assert (=> b!82242 (= e!44617 (forall!22 lt!18958 lambda!9795))))

(declare-fun b!82243 () Bool)

(assert (=> b!82243 (= e!44618 e!44619)))

(declare-fun c!20695 () Bool)

(assert (=> b!82243 (= c!20695 e!44620)))

(declare-fun res!42074 () Bool)

(assert (=> b!82243 (=> (not res!42074) (not e!44620))))

(assert (=> b!82243 (= res!42074 (is-Cons!624 (t!47849 ls!96)))))

(assert (=> b!82243 (= lt!18957 (filter!20 (t!47849 (t!47849 ls!96)) lambda!9795))))

(declare-fun d!56273 () Bool)

(assert (=> d!56273 e!44617))

(declare-fun res!42075 () Bool)

(assert (=> d!56273 (=> (not res!42075) (not e!44617))))

(assert (=> d!56273 (= res!42075 (<= (size!655 lt!18958) (size!655 (t!47849 ls!96))))))

(assert (=> d!56273 (= lt!18958 e!44618)))

(declare-fun c!20696 () Bool)

(assert (=> d!56273 (= c!20696 (is-Nil!626 (t!47849 ls!96)))))

(assert (=> d!56273 (= (filter!20 (t!47849 ls!96) lambda!9795) lt!18958)))

(assert (= (and b!82243 res!42074) b!82240))

(assert (= (and b!82243 c!20695) b!82237))

(assert (= (and b!82243 (not c!20695)) b!82241))

(assert (= (and d!56273 c!20696) b!82238))

(assert (= (and d!56273 (not c!20696)) b!82243))

(assert (= (and d!56273 res!42075) b!82239))

(assert (= (and b!82239 res!42073) b!82242))

(declare-fun b_lambda!16301 () Bool)

(assert (=> (not b_lambda!16301) (not b!82240)))

(declare-fun m!77794 () Bool)

(assert (=> b!82242 m!77794))

(declare-fun m!77796 () Bool)

(assert (=> b!82243 m!77796))

(declare-fun m!77798 () Bool)

(assert (=> b!82240 m!77798))

(declare-fun m!77800 () Bool)

(assert (=> b!82239 m!77800))

(assert (=> b!82239 m!77788))

(declare-fun m!77802 () Bool)

(assert (=> d!56273 m!77802))

(assert (=> d!56273 m!77792))

(assert (=> b!82209 d!56273))

(declare-fun b!82244 () Bool)

(declare-fun e!44623 () List!667)

(declare-fun lt!18959 () List!667)

(assert (=> b!82244 (= e!44623 (Cons!624 (h!994 (t!47849 ls!96)) lt!18959))))

(declare-fun b!82245 () Bool)

(declare-fun e!44622 () List!667)

(assert (=> b!82245 (= e!44622 Nil!626)))

(declare-fun b!82246 () Bool)

(declare-fun res!42076 () Bool)

(declare-fun e!44621 () Bool)

(assert (=> b!82246 (=> (not res!42076) (not e!44621))))

(declare-fun lt!18960 () List!667)

(assert (=> b!82246 (= res!42076 (subset (content!126 lt!18960) (content!126 (t!47849 ls!96))))))

(declare-fun b!82247 () Bool)

(declare-fun e!44624 () Bool)

(assert (=> b!82247 (= e!44624 (dynLambda!986 lambda!9796 (h!994 (t!47849 ls!96))))))

(declare-fun b!82248 () Bool)

(assert (=> b!82248 (= e!44623 lt!18959)))

(declare-fun b!82249 () Bool)

(assert (=> b!82249 (= e!44621 (forall!22 lt!18960 lambda!9796))))

(declare-fun b!82250 () Bool)

(assert (=> b!82250 (= e!44622 e!44623)))

(declare-fun c!20697 () Bool)

(assert (=> b!82250 (= c!20697 e!44624)))

(declare-fun res!42077 () Bool)

(assert (=> b!82250 (=> (not res!42077) (not e!44624))))

(assert (=> b!82250 (= res!42077 (is-Cons!624 (t!47849 ls!96)))))

(assert (=> b!82250 (= lt!18959 (filter!20 (t!47849 (t!47849 ls!96)) lambda!9796))))

(declare-fun d!56275 () Bool)

(assert (=> d!56275 e!44621))

(declare-fun res!42078 () Bool)

(assert (=> d!56275 (=> (not res!42078) (not e!44621))))

(assert (=> d!56275 (= res!42078 (<= (size!655 lt!18960) (size!655 (t!47849 ls!96))))))

(assert (=> d!56275 (= lt!18960 e!44622)))

(declare-fun c!20698 () Bool)

(assert (=> d!56275 (= c!20698 (is-Nil!626 (t!47849 ls!96)))))

(assert (=> d!56275 (= (filter!20 (t!47849 ls!96) lambda!9796) lt!18960)))

(assert (= (and b!82250 res!42077) b!82247))

(assert (= (and b!82250 c!20697) b!82244))

(assert (= (and b!82250 (not c!20697)) b!82248))

(assert (= (and d!56275 c!20698) b!82245))

(assert (= (and d!56275 (not c!20698)) b!82250))

(assert (= (and d!56275 res!42078) b!82246))

(assert (= (and b!82246 res!42076) b!82249))

(declare-fun b_lambda!16303 () Bool)

(assert (=> (not b_lambda!16303) (not b!82247)))

(declare-fun m!77804 () Bool)

(assert (=> b!82249 m!77804))

(declare-fun m!77806 () Bool)

(assert (=> b!82250 m!77806))

(declare-fun m!77808 () Bool)

(assert (=> b!82247 m!77808))

(declare-fun m!77810 () Bool)

(assert (=> b!82246 m!77810))

(assert (=> b!82246 m!77788))

(declare-fun m!77812 () Bool)

(assert (=> d!56275 m!77812))

(assert (=> d!56275 m!77792))

(assert (=> b!82210 d!56275))

(declare-fun bs!39923 () Bool)

(declare-fun b!82255 () Bool)

(assert (= bs!39923 (and b!82255 b!82209)))

(declare-fun lambda!9804 () Int)

(assert (=> bs!39923 (= (= (h!994 less!5) (h!994 ls!96)) (= lambda!9804 lambda!9795))))

(declare-fun bs!39924 () Bool)

(assert (= bs!39924 (and b!82255 b!82210)))

(assert (=> bs!39924 (not (= lambda!9804 lambda!9796))))

(declare-fun bs!39925 () Bool)

(assert (= bs!39925 (and b!82255 b!82211)))

(assert (=> bs!39925 (not (= lambda!9804 lambda!9797))))

(assert (=> b!82255 true))

(declare-fun lambda!9805 () Int)

(assert (=> bs!39923 (not (= lambda!9805 lambda!9795))))

(assert (=> bs!39924 (= (= (h!994 less!5) (h!994 ls!96)) (= lambda!9805 lambda!9796))))

(assert (=> bs!39925 (not (= lambda!9805 lambda!9797))))

(assert (=> b!82255 (not (= lambda!9805 lambda!9804))))

(assert (=> b!82255 true))

(declare-fun lambda!9806 () Int)

(assert (=> bs!39925 (= (= (h!994 less!5) (h!994 ls!96)) (= lambda!9806 lambda!9797))))

(assert (=> b!82255 (not (= lambda!9806 lambda!9805))))

(assert (=> b!82255 (not (= lambda!9806 lambda!9804))))

(assert (=> bs!39924 (not (= lambda!9806 lambda!9796))))

(assert (=> bs!39923 (not (= lambda!9806 lambda!9795))))

(assert (=> b!82255 true))

(declare-fun d!56277 () Bool)

(declare-fun isSorted!1 (List!667) Bool)

(declare-fun quickSort!0 (List!667) List!667)

(assert (=> d!56277 (isSorted!1 (quickSort!0 less!5))))

(declare-fun lt!18972 () Bool)

(declare-fun e!44629 () Bool)

(assert (=> d!56277 (= lt!18972 e!44629)))

(declare-fun res!42086 () Bool)

(assert (=> d!56277 (=> res!42086 e!44629)))

(assert (=> d!56277 (= res!42086 (or (is-Nil!626 less!5) (and (is-Cons!624 less!5) (is-Nil!626 (t!47849 less!5)))))))

(assert (=> d!56277 (= (sorted_lemma!0 less!5) true)))

(declare-fun e!44630 () Bool)

(assert (=> b!82255 (= e!44629 e!44630)))

(declare-fun res!42085 () Bool)

(assert (=> b!82255 (=> (not res!42085) (not e!44630))))

(declare-fun lt!18970 () List!667)

(declare-fun lt!18969 () List!667)

(declare-fun append_sorted!0 (List!667 List!667) Bool)

(assert (=> b!82255 (= res!42085 (append_sorted!0 (quickSort!0 lt!18970) lt!18969))))

(declare-fun lt!18971 () List!667)

(assert (=> b!82255 (= lt!18971 (filter!20 (t!47849 less!5) lambda!9806))))

(assert (=> b!82255 (= lt!18969 (Cons!624 (h!994 less!5) (filter!20 (t!47849 less!5) lambda!9805)))))

(assert (=> b!82255 (= lt!18970 (filter!20 (t!47849 less!5) lambda!9804))))

(declare-fun b!82256 () Bool)

(declare-fun ++!75 (List!667 List!667) List!667)

(assert (=> b!82256 (= e!44630 (append_sorted!0 (++!75 (quickSort!0 lt!18970) lt!18969) (quickSort!0 lt!18971)))))

(assert (= (and d!56277 (not res!42086)) b!82255))

(assert (= (and b!82255 res!42085) b!82256))

(declare-fun m!77814 () Bool)

(assert (=> d!56277 m!77814))

(assert (=> d!56277 m!77814))

(declare-fun m!77816 () Bool)

(assert (=> d!56277 m!77816))

(declare-fun m!77818 () Bool)

(assert (=> b!82255 m!77818))

(declare-fun m!77820 () Bool)

(assert (=> b!82255 m!77820))

(declare-fun m!77822 () Bool)

(assert (=> b!82255 m!77822))

(declare-fun m!77824 () Bool)

(assert (=> b!82255 m!77824))

(declare-fun m!77826 () Bool)

(assert (=> b!82255 m!77826))

(assert (=> b!82255 m!77820))

(assert (=> b!82256 m!77820))

(assert (=> b!82256 m!77820))

(declare-fun m!77828 () Bool)

(assert (=> b!82256 m!77828))

(declare-fun m!77830 () Bool)

(assert (=> b!82256 m!77830))

(assert (=> b!82256 m!77828))

(assert (=> b!82256 m!77830))

(declare-fun m!77832 () Bool)

(assert (=> b!82256 m!77832))

(assert (=> b!82212 d!56277))

(declare-fun bs!39926 () Bool)

(declare-fun b!82269 () Bool)

(assert (= bs!39926 (and b!82269 b!82211)))

(declare-fun lambda!9819 () Int)

(assert (=> bs!39926 (not (= lambda!9819 lambda!9797))))

(declare-fun bs!39927 () Bool)

(assert (= bs!39927 (and b!82269 b!82255)))

(assert (=> bs!39927 (not (= lambda!9819 lambda!9806))))

(assert (=> bs!39927 (not (= lambda!9819 lambda!9805))))

(assert (=> bs!39927 (= lambda!9819 lambda!9804)))

(declare-fun bs!39928 () Bool)

(assert (= bs!39928 (and b!82269 b!82210)))

(assert (=> bs!39928 (not (= lambda!9819 lambda!9796))))

(declare-fun bs!39929 () Bool)

(assert (= bs!39929 (and b!82269 b!82209)))

(assert (=> bs!39929 (= (= (h!994 less!5) (h!994 ls!96)) (= lambda!9819 lambda!9795))))

(assert (=> b!82269 true))

(declare-fun lambda!9820 () Int)

(assert (=> b!82269 (not (= lambda!9820 lambda!9819))))

(assert (=> bs!39926 (not (= lambda!9820 lambda!9797))))

(assert (=> bs!39927 (not (= lambda!9820 lambda!9806))))

(assert (=> bs!39927 (= lambda!9820 lambda!9805)))

(assert (=> bs!39927 (not (= lambda!9820 lambda!9804))))

(assert (=> bs!39928 (= (= (h!994 less!5) (h!994 ls!96)) (= lambda!9820 lambda!9796))))

(assert (=> bs!39929 (not (= lambda!9820 lambda!9795))))

(assert (=> b!82269 true))

(declare-fun lambda!9821 () Int)

(assert (=> b!82269 (not (= lambda!9821 lambda!9820))))

(assert (=> b!82269 (not (= lambda!9821 lambda!9819))))

(assert (=> bs!39926 (= (= (h!994 less!5) (h!994 ls!96)) (= lambda!9821 lambda!9797))))

(assert (=> bs!39927 (= lambda!9821 lambda!9806)))

(assert (=> bs!39927 (not (= lambda!9821 lambda!9805))))

(assert (=> bs!39927 (not (= lambda!9821 lambda!9804))))

(assert (=> bs!39928 (not (= lambda!9821 lambda!9796))))

(assert (=> bs!39929 (not (= lambda!9821 lambda!9795))))

(assert (=> b!82269 true))

(declare-fun b!82267 () Bool)

(declare-fun e!44641 () Bool)

(declare-fun filter_preserves_forall!0 (List!667 Int Int) Bool)

(assert (=> b!82267 (= e!44641 (filter_preserves_forall!0 (t!47849 less!5) lambda!9821 lambda!9795))))

(declare-fun b!82268 () Bool)

(declare-fun e!44644 () Bool)

(declare-fun lt!18990 () List!667)

(assert (=> b!82268 (= e!44644 (sort_preserves_forall!0 lt!18990 lambda!9795))))

(declare-fun e!44643 () Bool)

(declare-fun e!44645 () Bool)

(assert (=> b!82269 (= e!44643 e!44645)))

(declare-fun res!42102 () Bool)

(assert (=> b!82269 (=> (not res!42102) (not e!44645))))

(declare-fun lt!18986 () List!667)

(declare-fun lt!18987 () List!667)

(declare-fun append_preserves_forall!0 (List!667 List!667 Int) Bool)

(assert (=> b!82269 (= res!42102 (append_preserves_forall!0 (quickSort!0 lt!18986) lt!18987 lambda!9795))))

(declare-fun lt!18985 () Bool)

(assert (=> b!82269 (= lt!18985 e!44644)))

(declare-fun res!42104 () Bool)

(assert (=> b!82269 (=> (not res!42104) (not e!44644))))

(assert (=> b!82269 (= res!42104 (sort_preserves_forall!0 lt!18986 lambda!9795))))

(declare-fun lt!18989 () Bool)

(assert (=> b!82269 (= lt!18989 e!44641)))

(declare-fun res!42105 () Bool)

(assert (=> b!82269 (=> (not res!42105) (not e!44641))))

(declare-fun e!44642 () Bool)

(assert (=> b!82269 (= res!42105 e!44642)))

(declare-fun res!42106 () Bool)

(assert (=> b!82269 (=> (not res!42106) (not e!44642))))

(assert (=> b!82269 (= res!42106 (filter_preserves_forall!0 (t!47849 less!5) lambda!9819 lambda!9795))))

(assert (=> b!82269 (= lt!18990 (filter!20 (t!47849 less!5) lambda!9821))))

(assert (=> b!82269 (= lt!18987 (Cons!624 (h!994 less!5) (filter!20 (t!47849 less!5) lambda!9820)))))

(assert (=> b!82269 (= lt!18986 (filter!20 (t!47849 less!5) lambda!9819))))

(declare-fun b!82270 () Bool)

(assert (=> b!82270 (= e!44645 (append_preserves_forall!0 (++!75 (quickSort!0 lt!18986) lt!18987) (quickSort!0 lt!18990) lambda!9795))))

(declare-fun d!56279 () Bool)

(assert (=> d!56279 (forall!22 (quickSort!0 less!5) lambda!9795)))

(declare-fun lt!18988 () Bool)

(assert (=> d!56279 (= lt!18988 e!44643)))

(declare-fun res!42103 () Bool)

(assert (=> d!56279 (=> res!42103 e!44643)))

(assert (=> d!56279 (= res!42103 (or (is-Nil!626 less!5) (and (is-Cons!624 less!5) (is-Nil!626 (t!47849 less!5)))))))

(assert (=> d!56279 (forall!22 less!5 lambda!9795)))

(assert (=> d!56279 (= (sort_preserves_forall!0 less!5 lambda!9795) true)))

(declare-fun b!82271 () Bool)

(assert (=> b!82271 (= e!44642 (filter_preserves_forall!0 (t!47849 less!5) lambda!9820 lambda!9795))))

(assert (= (and d!56279 (not res!42103)) b!82269))

(assert (= (and b!82269 res!42106) b!82271))

(assert (= (and b!82269 res!42105) b!82267))

(assert (= (and b!82269 res!42104) b!82268))

(assert (= (and b!82269 res!42102) b!82270))

(declare-fun m!77834 () Bool)

(assert (=> b!82267 m!77834))

(declare-fun m!77836 () Bool)

(assert (=> b!82271 m!77836))

(declare-fun m!77838 () Bool)

(assert (=> b!82270 m!77838))

(assert (=> b!82270 m!77838))

(declare-fun m!77840 () Bool)

(assert (=> b!82270 m!77840))

(declare-fun m!77842 () Bool)

(assert (=> b!82270 m!77842))

(assert (=> b!82270 m!77840))

(assert (=> b!82270 m!77842))

(declare-fun m!77844 () Bool)

(assert (=> b!82270 m!77844))

(declare-fun m!77846 () Bool)

(assert (=> b!82269 m!77846))

(declare-fun m!77848 () Bool)

(assert (=> b!82269 m!77848))

(declare-fun m!77850 () Bool)

(assert (=> b!82269 m!77850))

(declare-fun m!77852 () Bool)

(assert (=> b!82269 m!77852))

(declare-fun m!77854 () Bool)

(assert (=> b!82269 m!77854))

(assert (=> b!82269 m!77838))

(declare-fun m!77856 () Bool)

(assert (=> b!82269 m!77856))

(assert (=> b!82269 m!77838))

(assert (=> d!56279 m!77814))

(assert (=> d!56279 m!77814))

(declare-fun m!77858 () Bool)

(assert (=> d!56279 m!77858))

(declare-fun m!77860 () Bool)

(assert (=> d!56279 m!77860))

(declare-fun m!77862 () Bool)

(assert (=> b!82268 m!77862))

(assert (=> b!82213 d!56279))

(declare-fun b_lambda!16305 () Bool)

(assert (= b_lambda!16299 (or b!82211 b_lambda!16305)))

(declare-fun bs!39930 () Bool)

(declare-fun d!56281 () Bool)

(assert (= bs!39930 (and d!56281 b!82211)))

(assert (=> bs!39930 (= (dynLambda!986 lambda!9797 (h!994 (t!47849 ls!96))) (> (h!994 (t!47849 ls!96)) (h!994 ls!96)))))

(assert (=> b!82233 d!56281))

(declare-fun b_lambda!16307 () Bool)

(assert (= b_lambda!16303 (or b!82210 b_lambda!16307)))

(declare-fun bs!39931 () Bool)

(declare-fun d!56283 () Bool)

(assert (= bs!39931 (and d!56283 b!82210)))

(assert (=> bs!39931 (= (dynLambda!986 lambda!9796 (h!994 (t!47849 ls!96))) (= (h!994 (t!47849 ls!96)) (h!994 ls!96)))))

(assert (=> b!82247 d!56283))

(declare-fun b_lambda!16309 () Bool)

(assert (= b_lambda!16301 (or b!82209 b_lambda!16309)))

(declare-fun bs!39932 () Bool)

(declare-fun d!56285 () Bool)

(assert (= bs!39932 (and d!56285 b!82209)))

(assert (=> bs!39932 (= (dynLambda!986 lambda!9795 (h!994 (t!47849 ls!96))) (< (h!994 (t!47849 ls!96)) (h!994 ls!96)))))

(assert (=> b!82240 d!56285))

(push 1)

(assert (not b!82256))

(assert (not b!82250))

(assert (not b!82249))

(assert (not b!82235))

(assert (not b_lambda!16309))

(assert (not b_lambda!16307))

(assert (not d!56279))

(assert (not b!82255))

(assert (not b!82268))

(assert (not b_lambda!16305))

(assert (not b!82271))

(assert (not b!82236))

(assert (not b!82269))

(assert (not b!82267))

(assert (not b!82242))

(assert (not b!82270))

(assert (not b!82232))

(assert (not d!56271))

(assert (not d!56273))

(assert (not b!82243))

(assert (not b!82239))

(assert (not d!56275))

(assert (not d!56277))

(assert (not b!82246))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

