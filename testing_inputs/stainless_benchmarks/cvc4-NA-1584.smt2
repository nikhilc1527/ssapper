; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10988 () Bool)

(assert start!10988)

(declare-fun b!83919 () Bool)

(declare-fun res!43263 () Bool)

(declare-fun e!45497 () Bool)

(assert (=> b!83919 (=> (not res!43263) (not e!45497))))

(declare-datatypes () ((List!682 (Cons!639 (h!1010 Int) (t!47934 List!682)) (Nil!641))))

(declare-fun l1!433 () List!682)

(assert (=> b!83919 (= res!43263 (is-Cons!639 l1!433))))

(declare-fun res!43261 () Bool)

(assert (=> start!10988 (=> (not res!43261) (not e!45497))))

(declare-fun isSorted!1 (List!682) Bool)

(assert (=> start!10988 (= res!43261 (isSorted!1 l1!433))))

(assert (=> start!10988 e!45497))

(assert (=> start!10988 true))

(declare-fun b!83920 () Bool)

(declare-fun res!43257 () Bool)

(assert (=> b!83920 (=> (not res!43257) (not e!45497))))

(declare-fun e!45496 () Bool)

(assert (=> b!83920 (= res!43257 e!45496)))

(declare-fun res!43260 () Bool)

(assert (=> b!83920 (=> res!43260 e!45496)))

(declare-fun isEmpty!691 (List!682) Bool)

(assert (=> b!83920 (= res!43260 (isEmpty!691 l1!433))))

(declare-fun b!83921 () Bool)

(declare-fun res!43258 () Bool)

(assert (=> b!83921 (=> (not res!43258) (not e!45497))))

(declare-fun l2!426 () List!682)

(assert (=> b!83921 (= res!43258 (isSorted!1 l2!426))))

(declare-fun b!83922 () Bool)

(declare-fun res!43259 () Bool)

(assert (=> b!83922 (=> (not res!43259) (not e!45497))))

(declare-fun inductVal!903 () Bool)

(declare-fun append_sorted!0 (List!682 List!682) Bool)

(assert (=> b!83922 (= res!43259 (= inductVal!903 (append_sorted!0 (t!47934 l1!433) l2!426)))))

(declare-fun b!83923 () Bool)

(declare-fun res!43262 () Bool)

(assert (=> b!83923 (=> res!43262 e!45496)))

(assert (=> b!83923 (= res!43262 (isEmpty!691 l2!426))))

(declare-fun b!83924 () Bool)

(declare-fun ++!86 (List!682 List!682) List!682)

(assert (=> b!83924 (= e!45497 (not (isSorted!1 (++!86 l1!433 l2!426))))))

(declare-fun b!83925 () Bool)

(declare-fun last!29 (List!682) Int)

(declare-fun head!1065 (List!682) Int)

(assert (=> b!83925 (= e!45496 (<= (last!29 l1!433) (head!1065 l2!426)))))

(assert (= (and start!10988 res!43261) b!83921))

(assert (= (and b!83921 res!43258) b!83920))

(assert (= (and b!83920 (not res!43260)) b!83923))

(assert (= (and b!83923 (not res!43262)) b!83925))

(assert (= (and b!83920 res!43257) b!83919))

(assert (= (and b!83919 res!43263) b!83922))

(assert (= (and b!83922 res!43259) b!83924))

(declare-fun m!79790 () Bool)

(assert (=> b!83923 m!79790))

(declare-fun m!79792 () Bool)

(assert (=> b!83925 m!79792))

(declare-fun m!79794 () Bool)

(assert (=> b!83925 m!79794))

(declare-fun m!79796 () Bool)

(assert (=> b!83922 m!79796))

(declare-fun m!79798 () Bool)

(assert (=> b!83924 m!79798))

(assert (=> b!83924 m!79798))

(declare-fun m!79800 () Bool)

(assert (=> b!83924 m!79800))

(declare-fun m!79802 () Bool)

(assert (=> b!83920 m!79802))

(declare-fun m!79804 () Bool)

(assert (=> start!10988 m!79804))

(declare-fun m!79806 () Bool)

(assert (=> b!83921 m!79806))

(push 1)

(assert (not b!83923))

(assert (not b!83922))

(assert (not b!83925))

(assert (not start!10988))

(assert (not b!83921))

(assert (not b!83924))

(assert (not b!83920))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!56641 () Bool)

(assert (=> d!56641 (= (isEmpty!691 l1!433) (is-Nil!641 l1!433))))

(assert (=> b!83920 d!56641))

(declare-fun d!56643 () Bool)

(declare-fun res!43268 () Bool)

(declare-fun e!45502 () Bool)

(assert (=> d!56643 (=> res!43268 e!45502)))

(assert (=> d!56643 (= res!43268 (not (and (is-Cons!639 l1!433) (is-Cons!639 (t!47934 l1!433)))))))

(assert (=> d!56643 (= (isSorted!1 l1!433) e!45502)))

(declare-fun b!83930 () Bool)

(declare-fun e!45503 () Bool)

(assert (=> b!83930 (= e!45502 e!45503)))

(declare-fun res!43269 () Bool)

(assert (=> b!83930 (=> (not res!43269) (not e!45503))))

(assert (=> b!83930 (= res!43269 (<= (h!1010 l1!433) (h!1010 (t!47934 l1!433))))))

(declare-fun b!83931 () Bool)

(assert (=> b!83931 (= e!45503 (isSorted!1 (t!47934 l1!433)))))

(assert (= (and d!56643 (not res!43268)) b!83930))

(assert (= (and b!83930 res!43269) b!83931))

(declare-fun m!79808 () Bool)

(assert (=> b!83931 m!79808))

(assert (=> start!10988 d!56643))

(declare-fun d!56645 () Bool)

(declare-fun res!43270 () Bool)

(declare-fun e!45504 () Bool)

(assert (=> d!56645 (=> res!43270 e!45504)))

(assert (=> d!56645 (= res!43270 (not (and (is-Cons!639 l2!426) (is-Cons!639 (t!47934 l2!426)))))))

(assert (=> d!56645 (= (isSorted!1 l2!426) e!45504)))

(declare-fun b!83932 () Bool)

(declare-fun e!45505 () Bool)

(assert (=> b!83932 (= e!45504 e!45505)))

(declare-fun res!43271 () Bool)

(assert (=> b!83932 (=> (not res!43271) (not e!45505))))

(assert (=> b!83932 (= res!43271 (<= (h!1010 l2!426) (h!1010 (t!47934 l2!426))))))

(declare-fun b!83933 () Bool)

(assert (=> b!83933 (= e!45505 (isSorted!1 (t!47934 l2!426)))))

(assert (= (and d!56645 (not res!43270)) b!83932))

(assert (= (and b!83932 res!43271) b!83933))

(declare-fun m!79810 () Bool)

(assert (=> b!83933 m!79810))

(assert (=> b!83921 d!56645))

(declare-fun d!56647 () Bool)

(assert (=> d!56647 (= (isEmpty!691 l2!426) (is-Nil!641 l2!426))))

(assert (=> b!83923 d!56647))

(declare-fun d!56649 () Bool)

(declare-fun lt!19565 () Int)

(declare-fun contains!59 (List!682 Int) Bool)

(assert (=> d!56649 (contains!59 l1!433 lt!19565)))

(declare-fun e!45508 () Int)

(assert (=> d!56649 (= lt!19565 e!45508)))

(declare-fun c!20984 () Bool)

(assert (=> d!56649 (= c!20984 (and (is-Cons!639 l1!433) (is-Nil!641 (t!47934 l1!433))))))

(assert (=> d!56649 (not (isEmpty!691 l1!433))))

(assert (=> d!56649 (= (last!29 l1!433) lt!19565)))

(declare-fun b!83938 () Bool)

(assert (=> b!83938 (= e!45508 (h!1010 l1!433))))

(declare-fun b!83939 () Bool)

(assert (=> b!83939 (= e!45508 (last!29 (t!47934 l1!433)))))

(assert (= (and d!56649 c!20984) b!83938))

(assert (= (and d!56649 (not c!20984)) b!83939))

(declare-fun m!79812 () Bool)

(assert (=> d!56649 m!79812))

(assert (=> d!56649 m!79802))

(declare-fun m!79814 () Bool)

(assert (=> b!83939 m!79814))

(assert (=> b!83925 d!56649))

(declare-fun d!56651 () Bool)

(assert (=> d!56651 (= (head!1065 l2!426) (h!1010 l2!426))))

(assert (=> b!83925 d!56651))

(declare-fun b!83952 () Bool)

(declare-fun res!43281 () Bool)

(declare-fun e!45516 () Bool)

(assert (=> b!83952 (=> res!43281 e!45516)))

(assert (=> b!83952 (= res!43281 (isEmpty!691 l2!426))))

(declare-fun b!83953 () Bool)

(declare-fun e!45515 () Bool)

(assert (=> b!83953 (= e!45515 (isSorted!1 (++!86 (t!47934 l1!433) l2!426)))))

(declare-fun lt!19568 () Bool)

(assert (=> b!83953 (= lt!19568 (append_sorted!0 (t!47934 (t!47934 l1!433)) l2!426))))

(declare-fun b!83954 () Bool)

(assert (=> b!83954 (= e!45515 (isSorted!1 (++!86 (t!47934 l1!433) l2!426)))))

(declare-fun d!56653 () Bool)

(assert (=> d!56653 e!45515))

(declare-fun c!20987 () Bool)

(assert (=> d!56653 (= c!20987 (is-Cons!639 (t!47934 l1!433)))))

(declare-fun e!45517 () Bool)

(assert (=> d!56653 e!45517))

(declare-fun res!43280 () Bool)

(assert (=> d!56653 (=> (not res!43280) (not e!45517))))

(assert (=> d!56653 (= res!43280 (isSorted!1 (t!47934 l1!433)))))

(assert (=> d!56653 (= (append_sorted!0 (t!47934 l1!433) l2!426) true)))

(declare-fun b!83955 () Bool)

(assert (=> b!83955 (= e!45517 e!45516)))

(declare-fun res!43282 () Bool)

(assert (=> b!83955 (=> res!43282 e!45516)))

(assert (=> b!83955 (= res!43282 (isEmpty!691 (t!47934 l1!433)))))

(declare-fun b!83956 () Bool)

(assert (=> b!83956 (= e!45516 (<= (last!29 (t!47934 l1!433)) (head!1065 l2!426)))))

(declare-fun b!83957 () Bool)

(declare-fun res!43283 () Bool)

(assert (=> b!83957 (=> (not res!43283) (not e!45517))))

(assert (=> b!83957 (= res!43283 (isSorted!1 l2!426))))

(assert (= (and d!56653 res!43280) b!83957))

(assert (= (and b!83957 res!43283) b!83955))

(assert (= (and b!83955 (not res!43282)) b!83952))

(assert (= (and b!83952 (not res!43281)) b!83956))

(assert (= (and d!56653 c!20987) b!83953))

(assert (= (and d!56653 (not c!20987)) b!83954))

(assert (=> b!83956 m!79814))

(assert (=> b!83956 m!79794))

(declare-fun m!79816 () Bool)

(assert (=> b!83955 m!79816))

(declare-fun m!79818 () Bool)

(assert (=> b!83953 m!79818))

(assert (=> b!83953 m!79818))

(declare-fun m!79820 () Bool)

(assert (=> b!83953 m!79820))

(declare-fun m!79822 () Bool)

(assert (=> b!83953 m!79822))

(assert (=> b!83957 m!79806))

(assert (=> d!56653 m!79808))

(assert (=> b!83954 m!79818))

(assert (=> b!83954 m!79818))

(assert (=> b!83954 m!79820))

(assert (=> b!83952 m!79790))

(assert (=> b!83922 d!56653))

(declare-fun d!56655 () Bool)

(declare-fun res!43284 () Bool)

(declare-fun e!45518 () Bool)

(assert (=> d!56655 (=> res!43284 e!45518)))

(assert (=> d!56655 (= res!43284 (not (and (is-Cons!639 (++!86 l1!433 l2!426)) (is-Cons!639 (t!47934 (++!86 l1!433 l2!426))))))))

(assert (=> d!56655 (= (isSorted!1 (++!86 l1!433 l2!426)) e!45518)))

(declare-fun b!83958 () Bool)

(declare-fun e!45519 () Bool)

(assert (=> b!83958 (= e!45518 e!45519)))

(declare-fun res!43285 () Bool)

(assert (=> b!83958 (=> (not res!43285) (not e!45519))))

(assert (=> b!83958 (= res!43285 (<= (h!1010 (++!86 l1!433 l2!426)) (h!1010 (t!47934 (++!86 l1!433 l2!426)))))))

(declare-fun b!83959 () Bool)

(assert (=> b!83959 (= e!45519 (isSorted!1 (t!47934 (++!86 l1!433 l2!426))))))

(assert (= (and d!56655 (not res!43284)) b!83958))

(assert (= (and b!83958 res!43285) b!83959))

(declare-fun m!79824 () Bool)

(assert (=> b!83959 m!79824))

(assert (=> b!83924 d!56655))

(declare-fun b!83968 () Bool)

(declare-fun e!45524 () List!682)

(assert (=> b!83968 (= e!45524 l2!426)))

(declare-fun b!83971 () Bool)

(declare-fun lt!19571 () List!682)

(declare-fun e!45525 () Bool)

(assert (=> b!83971 (= e!45525 (or (not (= l2!426 Nil!641)) (= lt!19571 l1!433)))))

(declare-fun d!56657 () Bool)

(assert (=> d!56657 e!45525))

(declare-fun res!43292 () Bool)

(assert (=> d!56657 (=> (not res!43292) (not e!45525))))

(declare-fun content!137 (List!682) (Set Int))

(assert (=> d!56657 (= res!43292 (= (content!137 lt!19571) (union (content!137 l1!433) (content!137 l2!426))))))

(assert (=> d!56657 (= lt!19571 e!45524)))

(declare-fun c!20990 () Bool)

(assert (=> d!56657 (= c!20990 (is-Nil!641 l1!433))))

(assert (=> d!56657 (= (++!86 l1!433 l2!426) lt!19571)))

(declare-fun b!83969 () Bool)

(assert (=> b!83969 (= e!45524 (Cons!639 (h!1010 l1!433) (++!86 (t!47934 l1!433) l2!426)))))

(declare-fun b!83970 () Bool)

(declare-fun res!43291 () Bool)

(assert (=> b!83970 (=> (not res!43291) (not e!45525))))

(declare-fun size!666 (List!682) Int)

(assert (=> b!83970 (= res!43291 (= (size!666 lt!19571) (+ (size!666 l1!433) (size!666 l2!426))))))

(assert (= (and d!56657 c!20990) b!83968))

(assert (= (and d!56657 (not c!20990)) b!83969))

(assert (= (and d!56657 res!43292) b!83970))

(assert (= (and b!83970 res!43291) b!83971))

(declare-fun m!79826 () Bool)

(assert (=> d!56657 m!79826))

(declare-fun m!79828 () Bool)

(assert (=> d!56657 m!79828))

(declare-fun m!79830 () Bool)

(assert (=> d!56657 m!79830))

(assert (=> b!83969 m!79818))

(declare-fun m!79832 () Bool)

(assert (=> b!83970 m!79832))

(declare-fun m!79834 () Bool)

(assert (=> b!83970 m!79834))

(declare-fun m!79836 () Bool)

(assert (=> b!83970 m!79836))

(assert (=> b!83924 d!56657))

(push 1)

(assert (not b!83939))

(assert (not d!56649))

(assert (not b!83969))

(assert (not b!83931))

(assert (not d!56653))

(assert (not d!56657))

(assert (not b!83933))

(assert (not b!83957))

(assert (not b!83959))

(assert (not b!83956))

(assert (not b!83953))

(assert (not b!83952))

(assert (not b!83970))

(assert (not b!83954))

(assert (not b!83955))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!56659 () Bool)

(declare-fun res!43293 () Bool)

(declare-fun e!45526 () Bool)

(assert (=> d!56659 (=> res!43293 e!45526)))

(assert (=> d!56659 (= res!43293 (not (and (is-Cons!639 (t!47934 l1!433)) (is-Cons!639 (t!47934 (t!47934 l1!433))))))))

(assert (=> d!56659 (= (isSorted!1 (t!47934 l1!433)) e!45526)))

(declare-fun b!83972 () Bool)

(declare-fun e!45527 () Bool)

(assert (=> b!83972 (= e!45526 e!45527)))

(declare-fun res!43294 () Bool)

(assert (=> b!83972 (=> (not res!43294) (not e!45527))))

(assert (=> b!83972 (= res!43294 (<= (h!1010 (t!47934 l1!433)) (h!1010 (t!47934 (t!47934 l1!433)))))))

(declare-fun b!83973 () Bool)

(assert (=> b!83973 (= e!45527 (isSorted!1 (t!47934 (t!47934 l1!433))))))

(assert (= (and d!56659 (not res!43293)) b!83972))

(assert (= (and b!83972 res!43294) b!83973))

(declare-fun m!79838 () Bool)

(assert (=> b!83973 m!79838))

(assert (=> d!56653 d!56659))

(assert (=> b!83952 d!56647))

(declare-fun d!56661 () Bool)

(assert (=> d!56661 (= (isEmpty!691 (t!47934 l1!433)) (is-Nil!641 (t!47934 l1!433)))))

(assert (=> b!83955 d!56661))

(declare-fun d!56663 () Bool)

(declare-fun lt!19572 () Int)

(assert (=> d!56663 (contains!59 (t!47934 l1!433) lt!19572)))

(declare-fun e!45528 () Int)

(assert (=> d!56663 (= lt!19572 e!45528)))

(declare-fun c!20991 () Bool)

(assert (=> d!56663 (= c!20991 (and (is-Cons!639 (t!47934 l1!433)) (is-Nil!641 (t!47934 (t!47934 l1!433)))))))

(assert (=> d!56663 (not (isEmpty!691 (t!47934 l1!433)))))

(assert (=> d!56663 (= (last!29 (t!47934 l1!433)) lt!19572)))

(declare-fun b!83974 () Bool)

(assert (=> b!83974 (= e!45528 (h!1010 (t!47934 l1!433)))))

(declare-fun b!83975 () Bool)

(assert (=> b!83975 (= e!45528 (last!29 (t!47934 (t!47934 l1!433))))))

(assert (= (and d!56663 c!20991) b!83974))

(assert (= (and d!56663 (not c!20991)) b!83975))

(declare-fun m!79840 () Bool)

(assert (=> d!56663 m!79840))

(assert (=> d!56663 m!79816))

(declare-fun m!79842 () Bool)

(assert (=> b!83975 m!79842))

(assert (=> b!83956 d!56663))

(assert (=> b!83956 d!56651))

(declare-fun d!56665 () Bool)

(declare-fun c!20994 () Bool)

(assert (=> d!56665 (= c!20994 (is-Nil!641 lt!19571))))

(declare-fun e!45531 () (Set Int))

(assert (=> d!56665 (= (content!137 lt!19571) e!45531)))

(declare-fun b!83980 () Bool)

(assert (=> b!83980 (= e!45531 (as emptyset (Set Int)))))

(declare-fun b!83981 () Bool)

(assert (=> b!83981 (= e!45531 (union (insert (h!1010 lt!19571) (as emptyset (Set Int))) (content!137 (t!47934 lt!19571))))))

(assert (= (and d!56665 c!20994) b!83980))

(assert (= (and d!56665 (not c!20994)) b!83981))

(declare-fun m!79844 () Bool)

(assert (=> b!83981 m!79844))

(declare-fun m!79846 () Bool)

(assert (=> b!83981 m!79846))

(assert (=> d!56657 d!56665))

(declare-fun d!56667 () Bool)

(declare-fun c!20995 () Bool)

(assert (=> d!56667 (= c!20995 (is-Nil!641 l1!433))))

(declare-fun e!45532 () (Set Int))

(assert (=> d!56667 (= (content!137 l1!433) e!45532)))

(declare-fun b!83982 () Bool)

(assert (=> b!83982 (= e!45532 (as emptyset (Set Int)))))

(declare-fun b!83983 () Bool)

(assert (=> b!83983 (= e!45532 (union (insert (h!1010 l1!433) (as emptyset (Set Int))) (content!137 (t!47934 l1!433))))))

(assert (= (and d!56667 c!20995) b!83982))

(assert (= (and d!56667 (not c!20995)) b!83983))

(declare-fun m!79848 () Bool)

(assert (=> b!83983 m!79848))

(declare-fun m!79850 () Bool)

(assert (=> b!83983 m!79850))

(assert (=> d!56657 d!56667))

(declare-fun d!56669 () Bool)

(declare-fun c!20996 () Bool)

(assert (=> d!56669 (= c!20996 (is-Nil!641 l2!426))))

(declare-fun e!45533 () (Set Int))

(assert (=> d!56669 (= (content!137 l2!426) e!45533)))

(declare-fun b!83984 () Bool)

(assert (=> b!83984 (= e!45533 (as emptyset (Set Int)))))

(declare-fun b!83985 () Bool)

(assert (=> b!83985 (= e!45533 (union (insert (h!1010 l2!426) (as emptyset (Set Int))) (content!137 (t!47934 l2!426))))))

(assert (= (and d!56669 c!20996) b!83984))

(assert (= (and d!56669 (not c!20996)) b!83985))

(declare-fun m!79852 () Bool)

(assert (=> b!83985 m!79852))

(declare-fun m!79854 () Bool)

(assert (=> b!83985 m!79854))

(assert (=> d!56657 d!56669))

(declare-fun d!56671 () Bool)

(declare-fun res!43295 () Bool)

(declare-fun e!45534 () Bool)

(assert (=> d!56671 (=> res!43295 e!45534)))

(assert (=> d!56671 (= res!43295 (not (and (is-Cons!639 (t!47934 (++!86 l1!433 l2!426))) (is-Cons!639 (t!47934 (t!47934 (++!86 l1!433 l2!426)))))))))

(assert (=> d!56671 (= (isSorted!1 (t!47934 (++!86 l1!433 l2!426))) e!45534)))

(declare-fun b!83986 () Bool)

(declare-fun e!45535 () Bool)

(assert (=> b!83986 (= e!45534 e!45535)))

(declare-fun res!43296 () Bool)

(assert (=> b!83986 (=> (not res!43296) (not e!45535))))

(assert (=> b!83986 (= res!43296 (<= (h!1010 (t!47934 (++!86 l1!433 l2!426))) (h!1010 (t!47934 (t!47934 (++!86 l1!433 l2!426))))))))

(declare-fun b!83987 () Bool)

(assert (=> b!83987 (= e!45535 (isSorted!1 (t!47934 (t!47934 (++!86 l1!433 l2!426)))))))

(assert (= (and d!56671 (not res!43295)) b!83986))

(assert (= (and b!83986 res!43296) b!83987))

(declare-fun m!79856 () Bool)

(assert (=> b!83987 m!79856))

(assert (=> b!83959 d!56671))

(declare-fun d!56673 () Bool)

(declare-fun res!43297 () Bool)

(declare-fun e!45536 () Bool)

(assert (=> d!56673 (=> res!43297 e!45536)))

(assert (=> d!56673 (= res!43297 (not (and (is-Cons!639 (t!47934 l2!426)) (is-Cons!639 (t!47934 (t!47934 l2!426))))))))

(assert (=> d!56673 (= (isSorted!1 (t!47934 l2!426)) e!45536)))

(declare-fun b!83988 () Bool)

(declare-fun e!45537 () Bool)

(assert (=> b!83988 (= e!45536 e!45537)))

(declare-fun res!43298 () Bool)

(assert (=> b!83988 (=> (not res!43298) (not e!45537))))

(assert (=> b!83988 (= res!43298 (<= (h!1010 (t!47934 l2!426)) (h!1010 (t!47934 (t!47934 l2!426)))))))

(declare-fun b!83989 () Bool)

(assert (=> b!83989 (= e!45537 (isSorted!1 (t!47934 (t!47934 l2!426))))))

(assert (= (and d!56673 (not res!43297)) b!83988))

(assert (= (and b!83988 res!43298) b!83989))

(declare-fun m!79858 () Bool)

(assert (=> b!83989 m!79858))

(assert (=> b!83933 d!56673))

(declare-fun d!56675 () Bool)

(declare-fun res!43299 () Bool)

(declare-fun e!45538 () Bool)

(assert (=> d!56675 (=> res!43299 e!45538)))

(assert (=> d!56675 (= res!43299 (not (and (is-Cons!639 (++!86 (t!47934 l1!433) l2!426)) (is-Cons!639 (t!47934 (++!86 (t!47934 l1!433) l2!426))))))))

(assert (=> d!56675 (= (isSorted!1 (++!86 (t!47934 l1!433) l2!426)) e!45538)))

(declare-fun b!83990 () Bool)

(declare-fun e!45539 () Bool)

(assert (=> b!83990 (= e!45538 e!45539)))

(declare-fun res!43300 () Bool)

(assert (=> b!83990 (=> (not res!43300) (not e!45539))))

(assert (=> b!83990 (= res!43300 (<= (h!1010 (++!86 (t!47934 l1!433) l2!426)) (h!1010 (t!47934 (++!86 (t!47934 l1!433) l2!426)))))))

(declare-fun b!83991 () Bool)

(assert (=> b!83991 (= e!45539 (isSorted!1 (t!47934 (++!86 (t!47934 l1!433) l2!426))))))

(assert (= (and d!56675 (not res!43299)) b!83990))

(assert (= (and b!83990 res!43300) b!83991))

(declare-fun m!79860 () Bool)

(assert (=> b!83991 m!79860))

(assert (=> b!83954 d!56675))

(declare-fun b!83992 () Bool)

(declare-fun e!45540 () List!682)

(assert (=> b!83992 (= e!45540 l2!426)))

(declare-fun lt!19573 () List!682)

(declare-fun b!83995 () Bool)

(declare-fun e!45541 () Bool)

(assert (=> b!83995 (= e!45541 (or (not (= l2!426 Nil!641)) (= lt!19573 (t!47934 l1!433))))))

(declare-fun d!56677 () Bool)

(assert (=> d!56677 e!45541))

(declare-fun res!43302 () Bool)

(assert (=> d!56677 (=> (not res!43302) (not e!45541))))

(assert (=> d!56677 (= res!43302 (= (content!137 lt!19573) (union (content!137 (t!47934 l1!433)) (content!137 l2!426))))))

(assert (=> d!56677 (= lt!19573 e!45540)))

(declare-fun c!20997 () Bool)

(assert (=> d!56677 (= c!20997 (is-Nil!641 (t!47934 l1!433)))))

(assert (=> d!56677 (= (++!86 (t!47934 l1!433) l2!426) lt!19573)))

(declare-fun b!83993 () Bool)

(assert (=> b!83993 (= e!45540 (Cons!639 (h!1010 (t!47934 l1!433)) (++!86 (t!47934 (t!47934 l1!433)) l2!426)))))

(declare-fun b!83994 () Bool)

(declare-fun res!43301 () Bool)

(assert (=> b!83994 (=> (not res!43301) (not e!45541))))

(assert (=> b!83994 (= res!43301 (= (size!666 lt!19573) (+ (size!666 (t!47934 l1!433)) (size!666 l2!426))))))

(assert (= (and d!56677 c!20997) b!83992))

(assert (= (and d!56677 (not c!20997)) b!83993))

(assert (= (and d!56677 res!43302) b!83994))

(assert (= (and b!83994 res!43301) b!83995))

(declare-fun m!79862 () Bool)

(assert (=> d!56677 m!79862))

(assert (=> d!56677 m!79850))

(assert (=> d!56677 m!79830))

(declare-fun m!79864 () Bool)

(assert (=> b!83993 m!79864))

(declare-fun m!79866 () Bool)

(assert (=> b!83994 m!79866))

(declare-fun m!79868 () Bool)

(assert (=> b!83994 m!79868))

(assert (=> b!83994 m!79836))

(assert (=> b!83954 d!56677))

(declare-fun d!56679 () Bool)

(declare-fun lt!19576 () Int)

(assert (=> d!56679 (>= lt!19576 0)))

(declare-fun e!45544 () Int)

(assert (=> d!56679 (= lt!19576 e!45544)))

(declare-fun c!21000 () Bool)

(assert (=> d!56679 (= c!21000 (is-Nil!641 lt!19571))))

(assert (=> d!56679 (= (size!666 lt!19571) lt!19576)))

(declare-fun b!84000 () Bool)

(assert (=> b!84000 (= e!45544 0)))

(declare-fun b!84001 () Bool)

(assert (=> b!84001 (= e!45544 (+ 1 (size!666 (t!47934 lt!19571))))))

(assert (= (and d!56679 c!21000) b!84000))

(assert (= (and d!56679 (not c!21000)) b!84001))

(declare-fun m!79870 () Bool)

(assert (=> b!84001 m!79870))

(assert (=> b!83970 d!56679))

(declare-fun d!56681 () Bool)

(declare-fun lt!19577 () Int)

(assert (=> d!56681 (>= lt!19577 0)))

(declare-fun e!45545 () Int)

(assert (=> d!56681 (= lt!19577 e!45545)))

(declare-fun c!21001 () Bool)

(assert (=> d!56681 (= c!21001 (is-Nil!641 l1!433))))

(assert (=> d!56681 (= (size!666 l1!433) lt!19577)))

(declare-fun b!84002 () Bool)

(assert (=> b!84002 (= e!45545 0)))

(declare-fun b!84003 () Bool)

(assert (=> b!84003 (= e!45545 (+ 1 (size!666 (t!47934 l1!433))))))

(assert (= (and d!56681 c!21001) b!84002))

(assert (= (and d!56681 (not c!21001)) b!84003))

(assert (=> b!84003 m!79868))

(assert (=> b!83970 d!56681))

(declare-fun d!56683 () Bool)

(declare-fun lt!19578 () Int)

(assert (=> d!56683 (>= lt!19578 0)))

(declare-fun e!45546 () Int)

(assert (=> d!56683 (= lt!19578 e!45546)))

(declare-fun c!21002 () Bool)

(assert (=> d!56683 (= c!21002 (is-Nil!641 l2!426))))

(assert (=> d!56683 (= (size!666 l2!426) lt!19578)))

(declare-fun b!84004 () Bool)

(assert (=> b!84004 (= e!45546 0)))

(declare-fun b!84005 () Bool)

(assert (=> b!84005 (= e!45546 (+ 1 (size!666 (t!47934 l2!426))))))

(assert (= (and d!56683 c!21002) b!84004))

(assert (= (and d!56683 (not c!21002)) b!84005))

(declare-fun m!79872 () Bool)

(assert (=> b!84005 m!79872))

(assert (=> b!83970 d!56683))

(assert (=> b!83939 d!56663))

(assert (=> b!83957 d!56645))

(assert (=> b!83953 d!56675))

(assert (=> b!83953 d!56677))

(declare-fun b!84006 () Bool)

(declare-fun res!43304 () Bool)

(declare-fun e!45548 () Bool)

(assert (=> b!84006 (=> res!43304 e!45548)))

(assert (=> b!84006 (= res!43304 (isEmpty!691 l2!426))))

(declare-fun b!84007 () Bool)

(declare-fun e!45547 () Bool)

(assert (=> b!84007 (= e!45547 (isSorted!1 (++!86 (t!47934 (t!47934 l1!433)) l2!426)))))

(declare-fun lt!19579 () Bool)

(assert (=> b!84007 (= lt!19579 (append_sorted!0 (t!47934 (t!47934 (t!47934 l1!433))) l2!426))))

(declare-fun b!84008 () Bool)

(assert (=> b!84008 (= e!45547 (isSorted!1 (++!86 (t!47934 (t!47934 l1!433)) l2!426)))))

(declare-fun d!56685 () Bool)

(assert (=> d!56685 e!45547))

(declare-fun c!21003 () Bool)

(assert (=> d!56685 (= c!21003 (is-Cons!639 (t!47934 (t!47934 l1!433))))))

(declare-fun e!45549 () Bool)

(assert (=> d!56685 e!45549))

(declare-fun res!43303 () Bool)

(assert (=> d!56685 (=> (not res!43303) (not e!45549))))

(assert (=> d!56685 (= res!43303 (isSorted!1 (t!47934 (t!47934 l1!433))))))

(assert (=> d!56685 (= (append_sorted!0 (t!47934 (t!47934 l1!433)) l2!426) true)))

(declare-fun b!84009 () Bool)

(assert (=> b!84009 (= e!45549 e!45548)))

(declare-fun res!43305 () Bool)

(assert (=> b!84009 (=> res!43305 e!45548)))

(assert (=> b!84009 (= res!43305 (isEmpty!691 (t!47934 (t!47934 l1!433))))))

(declare-fun b!84010 () Bool)

(assert (=> b!84010 (= e!45548 (<= (last!29 (t!47934 (t!47934 l1!433))) (head!1065 l2!426)))))

(declare-fun b!84011 () Bool)

(declare-fun res!43306 () Bool)

(assert (=> b!84011 (=> (not res!43306) (not e!45549))))

(assert (=> b!84011 (= res!43306 (isSorted!1 l2!426))))

(assert (= (and d!56685 res!43303) b!84011))

(assert (= (and b!84011 res!43306) b!84009))

(assert (= (and b!84009 (not res!43305)) b!84006))

(assert (= (and b!84006 (not res!43304)) b!84010))

(assert (= (and d!56685 c!21003) b!84007))

(assert (= (and d!56685 (not c!21003)) b!84008))

(assert (=> b!84010 m!79842))

(assert (=> b!84010 m!79794))

(declare-fun m!79874 () Bool)

(assert (=> b!84009 m!79874))

(assert (=> b!84007 m!79864))

(assert (=> b!84007 m!79864))

(declare-fun m!79876 () Bool)

(assert (=> b!84007 m!79876))

(declare-fun m!79878 () Bool)

(assert (=> b!84007 m!79878))

(assert (=> b!84011 m!79806))

(assert (=> d!56685 m!79838))

(assert (=> b!84008 m!79864))

(assert (=> b!84008 m!79864))

(assert (=> b!84008 m!79876))

(assert (=> b!84006 m!79790))

(assert (=> b!83953 d!56685))

(declare-fun d!56687 () Bool)

(declare-fun lt!19582 () Bool)

(assert (=> d!56687 (= lt!19582 (member lt!19565 (content!137 l1!433)))))

(declare-fun e!45554 () Bool)

(assert (=> d!56687 (= lt!19582 e!45554)))

(declare-fun res!43311 () Bool)

(assert (=> d!56687 (=> (not res!43311) (not e!45554))))

(assert (=> d!56687 (= res!43311 (is-Cons!639 l1!433))))

(assert (=> d!56687 (= (contains!59 l1!433 lt!19565) lt!19582)))

(declare-fun b!84016 () Bool)

(declare-fun e!45555 () Bool)

(assert (=> b!84016 (= e!45554 e!45555)))

(declare-fun res!43312 () Bool)

(assert (=> b!84016 (=> res!43312 e!45555)))

(assert (=> b!84016 (= res!43312 (= (h!1010 l1!433) lt!19565))))

(declare-fun b!84017 () Bool)

(assert (=> b!84017 (= e!45555 (contains!59 (t!47934 l1!433) lt!19565))))

(assert (= (and d!56687 res!43311) b!84016))

(assert (= (and b!84016 (not res!43312)) b!84017))

(assert (=> d!56687 m!79828))

(declare-fun m!79880 () Bool)

(assert (=> d!56687 m!79880))

(declare-fun m!79882 () Bool)

(assert (=> b!84017 m!79882))

(assert (=> d!56649 d!56687))

(assert (=> d!56649 d!56641))

(assert (=> b!83969 d!56677))

(assert (=> b!83931 d!56659))

(push 1)

(assert (not b!83983))

(assert (not b!84011))

(assert (not d!56687))

(assert (not d!56685))

(assert (not b!84009))

(assert (not b!83975))

(assert (not b!83987))

(assert (not b!84007))

(assert (not b!83985))

(assert (not b!84003))

(assert (not b!84008))

(assert (not b!83989))

(assert (not b!83993))

(assert (not b!83991))

(assert (not b!84010))

(assert (not b!83994))

(assert (not b!84001))

(assert (not b!83973))

(assert (not d!56677))

(assert (not b!84017))

(assert (not b!84006))

(assert (not b!83981))

(assert (not b!84005))

(assert (not d!56663))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

