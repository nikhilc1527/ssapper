; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10444 () Bool)

(assert start!10444)

(declare-fun m!73680 () Bool)

(assert (=> start!10444 m!73680))

(declare-fun b!79251 () Bool)

(declare-fun m!73682 () Bool)

(assert (=> b!79251 m!73682))

(declare-fun bs!37900 () Bool)

(assert (= bs!37900 (and b!79251 start!10444)))

(declare-datatypes () ((List!644 (Cons!602 (h!888 Int) (t!47631 List!644)) (Nil!604))))

(declare-fun r!611 () List!644)

(declare-fun l!1419 () List!644)

(declare-fun content!107 (List!644) (Set Int))

(assert (=> (and bs!37900 (= r!611 l!1419) (= (content!107 r!611) (content!107 l!1419))) (= true true)))

(declare-fun res!39992 () Bool)

(declare-fun e!42853 () Bool)

(assert (=> b!79251 (=> (not res!39992) (not e!42853))))

(assert (=> b!79251 (= res!39992 true)))

(assert (=> b!79251 true))

(declare-fun b!79252 () Bool)

(declare-fun e!42854 () Bool)

(assert (=> b!79252 (= e!42853 e!42854)))

(declare-fun res!39998 () Bool)

(assert (=> b!79252 (=> res!39998 e!42854)))

(declare-fun l1!422 () List!644)

(declare-fun isSorted!2 (List!644) Bool)

(assert (=> b!79252 (= res!39998 (not (isSorted!2 l1!422)))))

(declare-fun b!79253 () Bool)

(declare-fun e!42855 () Bool)

(assert (=> b!79253 (= e!42854 e!42855)))

(declare-fun res!39994 () Bool)

(assert (=> b!79253 (=> (not res!39994) (not e!42855))))

(declare-fun isEmpty!659 (List!644) Bool)

(assert (=> b!79253 (= res!39994 (not (isEmpty!659 l1!422)))))

(declare-fun b!79254 () Bool)

(declare-fun res!39995 () Bool)

(assert (=> b!79254 (=> res!39995 e!42854)))

(declare-fun l2!415 () List!644)

(assert (=> b!79254 (= res!39995 (not (isSorted!2 l2!415)))))

(declare-fun b!79255 () Bool)

(declare-fun res!39996 () Bool)

(assert (=> b!79255 (=> (not res!39996) (not e!42853))))

(declare-fun x!29075 () Int)

(declare-fun quickSort!1 (List!644) List!644)

(assert (=> b!79255 (= res!39996 (= l2!415 (Cons!602 x!29075 (quickSort!1 r!611))))))

(declare-fun b!79256 () Bool)

(declare-fun last!3 (List!644) Int)

(declare-fun head!1041 (List!644) Int)

(assert (=> b!79256 (= e!42855 (> (last!3 l1!422) (head!1041 l2!415)))))

(declare-fun b!79257 () Bool)

(declare-fun res!39993 () Bool)

(assert (=> b!79257 (=> (not res!39993) (not e!42853))))

(declare-fun ls!27 () List!644)

(assert (=> b!79257 (= res!39993 (is-Nil!604 ls!27))))

(declare-fun b!79258 () Bool)

(declare-fun res!39990 () Bool)

(assert (=> b!79258 (=> (not res!39990) (not e!42855))))

(assert (=> b!79258 (= res!39990 (not (isEmpty!659 l2!415)))))

(declare-fun b!79259 () Bool)

(declare-fun res!39991 () Bool)

(assert (=> b!79259 (=> (not res!39991) (not e!42853))))

(assert (=> b!79259 (= res!39991 (= l1!422 (quickSort!1 l!1419)))))

(declare-fun res!39997 () Bool)

(assert (=> start!10444 (=> (not res!39997) (not e!42853))))

(assert (=> start!10444 (= res!39997 true)))

(assert (=> start!10444 true))

(assert (=> start!10444 e!42853))

(assert (= (and start!10444 res!39997) b!79251))

(assert (= (and b!79251 res!39992) b!79257))

(assert (= (and b!79257 res!39993) b!79259))

(assert (= (and b!79259 res!39991) b!79255))

(assert (= (and b!79255 res!39996) b!79252))

(assert (= (and b!79252 (not res!39998)) b!79254))

(assert (= (and b!79254 (not res!39995)) b!79253))

(assert (= (and b!79253 res!39994) b!79258))

(assert (= (and b!79258 res!39990) b!79256))

(declare-fun m!73684 () Bool)

(assert (=> b!79256 m!73684))

(declare-fun m!73686 () Bool)

(assert (=> b!79256 m!73686))

(declare-fun m!73688 () Bool)

(assert (=> b!79253 m!73688))

(declare-fun m!73690 () Bool)

(assert (=> b!79254 m!73690))

(declare-fun m!73692 () Bool)

(assert (=> b!79259 m!73692))

(declare-fun m!73694 () Bool)

(assert (=> b!79255 m!73694))

(declare-fun m!73696 () Bool)

(assert (=> b!79258 m!73696))

(declare-fun m!73698 () Bool)

(assert (=> b!79252 m!73698))

(push 1)

(assert (not b!79254))

(assert (not b!79253))

(assert (not start!10444))

(assert (not b!79255))

(assert (not b!79252))

(assert (not b!79259))

(assert (not b!79251))

(assert (not b!79256))

(assert (not b!79258))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!55021 () Bool)

(assert (=> d!55021 (= (isEmpty!659 l1!422) (is-Nil!604 l1!422))))

(assert (=> b!79253 d!55021))

(declare-fun d!55023 () Bool)

(assert (=> d!55023 (= (isEmpty!659 l2!415) (is-Nil!604 l2!415))))

(assert (=> b!79258 d!55023))

(declare-fun d!55025 () Bool)

(declare-fun c!20162 () Bool)

(assert (=> d!55025 (= c!20162 (is-Nil!604 l!1419))))

(declare-fun e!42858 () (Set Int))

(assert (=> d!55025 (= (content!107 l!1419) e!42858)))

(declare-fun b!79264 () Bool)

(assert (=> b!79264 (= e!42858 (as emptyset (Set Int)))))

(declare-fun b!79265 () Bool)

(assert (=> b!79265 (= e!42858 (union (insert (h!888 l!1419) (as emptyset (Set Int))) (content!107 (t!47631 l!1419))))))

(assert (= (and d!55025 c!20162) b!79264))

(assert (= (and d!55025 (not c!20162)) b!79265))

(declare-fun m!73700 () Bool)

(assert (=> b!79265 m!73700))

(declare-fun m!73702 () Bool)

(assert (=> b!79265 m!73702))

(assert (=> start!10444 d!55025))

(declare-fun d!55027 () Bool)

(declare-fun res!40003 () Bool)

(declare-fun e!42863 () Bool)

(assert (=> d!55027 (=> res!40003 e!42863)))

(assert (=> d!55027 (= res!40003 (not (and (is-Cons!602 l1!422) (is-Cons!602 (t!47631 l1!422)))))))

(assert (=> d!55027 (= (isSorted!2 l1!422) e!42863)))

(declare-fun b!79270 () Bool)

(declare-fun e!42864 () Bool)

(assert (=> b!79270 (= e!42863 e!42864)))

(declare-fun res!40004 () Bool)

(assert (=> b!79270 (=> (not res!40004) (not e!42864))))

(assert (=> b!79270 (= res!40004 (<= (h!888 l1!422) (h!888 (t!47631 l1!422))))))

(declare-fun b!79271 () Bool)

(assert (=> b!79271 (= e!42864 (isSorted!2 (t!47631 l1!422)))))

(assert (= (and d!55027 (not res!40003)) b!79270))

(assert (= (and b!79270 res!40004) b!79271))

(declare-fun m!73704 () Bool)

(assert (=> b!79271 m!73704))

(assert (=> b!79252 d!55027))

(declare-fun d!55029 () Bool)

(declare-fun e!42870 () Bool)

(assert (=> d!55029 e!42870))

(declare-fun res!40008 () Bool)

(assert (=> d!55029 (=> (not res!40008) (not e!42870))))

(declare-fun lt!18204 () List!644)

(assert (=> d!55029 (= res!40008 (isSorted!2 lt!18204))))

(declare-fun e!42869 () List!644)

(assert (=> d!55029 (= lt!18204 e!42869)))

(declare-fun c!20165 () Bool)

(assert (=> d!55029 (= c!20165 (is-Nil!604 l!1419))))

(assert (=> d!55029 (= (quickSort!1 l!1419) lt!18204)))

(declare-fun b!79278 () Bool)

(assert (=> b!79278 (= e!42869 Nil!604)))

(declare-fun b!79279 () Bool)

(declare-fun par!0 (Int List!644 List!644 List!644) List!644)

(assert (=> b!79279 (= e!42869 (par!0 (h!888 l!1419) Nil!604 Nil!604 (t!47631 l!1419)))))

(declare-fun b!79280 () Bool)

(assert (=> b!79280 (= e!42870 (= (content!107 lt!18204) (content!107 l!1419)))))

(assert (= (and d!55029 c!20165) b!79278))

(assert (= (and d!55029 (not c!20165)) b!79279))

(assert (= (and d!55029 res!40008) b!79280))

(declare-fun m!73706 () Bool)

(assert (=> d!55029 m!73706))

(declare-fun m!73708 () Bool)

(assert (=> b!79279 m!73708))

(declare-fun m!73710 () Bool)

(assert (=> b!79280 m!73710))

(assert (=> b!79280 m!73680))

(assert (=> b!79259 d!55029))

(declare-fun d!55031 () Bool)

(declare-fun c!20166 () Bool)

(assert (=> d!55031 (= c!20166 (is-Nil!604 r!611))))

(declare-fun e!42871 () (Set Int))

(assert (=> d!55031 (= (content!107 r!611) e!42871)))

(declare-fun b!79281 () Bool)

(assert (=> b!79281 (= e!42871 (as emptyset (Set Int)))))

(declare-fun b!79282 () Bool)

(assert (=> b!79282 (= e!42871 (union (insert (h!888 r!611) (as emptyset (Set Int))) (content!107 (t!47631 r!611))))))

(assert (= (and d!55031 c!20166) b!79281))

(assert (= (and d!55031 (not c!20166)) b!79282))

(declare-fun m!73712 () Bool)

(assert (=> b!79282 m!73712))

(declare-fun m!73714 () Bool)

(assert (=> b!79282 m!73714))

(assert (=> b!79251 d!55031))

(declare-fun d!55033 () Bool)

(declare-fun e!42873 () Bool)

(assert (=> d!55033 e!42873))

(declare-fun res!40009 () Bool)

(assert (=> d!55033 (=> (not res!40009) (not e!42873))))

(declare-fun lt!18205 () List!644)

(assert (=> d!55033 (= res!40009 (isSorted!2 lt!18205))))

(declare-fun e!42872 () List!644)

(assert (=> d!55033 (= lt!18205 e!42872)))

(declare-fun c!20167 () Bool)

(assert (=> d!55033 (= c!20167 (is-Nil!604 r!611))))

(assert (=> d!55033 (= (quickSort!1 r!611) lt!18205)))

(declare-fun b!79283 () Bool)

(assert (=> b!79283 (= e!42872 Nil!604)))

(declare-fun b!79284 () Bool)

(assert (=> b!79284 (= e!42872 (par!0 (h!888 r!611) Nil!604 Nil!604 (t!47631 r!611)))))

(declare-fun b!79285 () Bool)

(assert (=> b!79285 (= e!42873 (= (content!107 lt!18205) (content!107 r!611)))))

(assert (= (and d!55033 c!20167) b!79283))

(assert (= (and d!55033 (not c!20167)) b!79284))

(assert (= (and d!55033 res!40009) b!79285))

(declare-fun m!73716 () Bool)

(assert (=> d!55033 m!73716))

(declare-fun m!73718 () Bool)

(assert (=> b!79284 m!73718))

(declare-fun m!73720 () Bool)

(assert (=> b!79285 m!73720))

(assert (=> b!79285 m!73682))

(assert (=> b!79255 d!55033))

(declare-fun d!55035 () Bool)

(declare-fun res!40010 () Bool)

(declare-fun e!42874 () Bool)

(assert (=> d!55035 (=> res!40010 e!42874)))

(assert (=> d!55035 (= res!40010 (not (and (is-Cons!602 l2!415) (is-Cons!602 (t!47631 l2!415)))))))

(assert (=> d!55035 (= (isSorted!2 l2!415) e!42874)))

(declare-fun b!79286 () Bool)

(declare-fun e!42875 () Bool)

(assert (=> b!79286 (= e!42874 e!42875)))

(declare-fun res!40011 () Bool)

(assert (=> b!79286 (=> (not res!40011) (not e!42875))))

(assert (=> b!79286 (= res!40011 (<= (h!888 l2!415) (h!888 (t!47631 l2!415))))))

(declare-fun b!79287 () Bool)

(assert (=> b!79287 (= e!42875 (isSorted!2 (t!47631 l2!415)))))

(assert (= (and d!55035 (not res!40010)) b!79286))

(assert (= (and b!79286 res!40011) b!79287))

(declare-fun m!73722 () Bool)

(assert (=> b!79287 m!73722))

(assert (=> b!79254 d!55035))

(declare-fun d!55037 () Bool)

(declare-fun lt!18208 () Int)

(declare-fun contains!46 (List!644 Int) Bool)

(assert (=> d!55037 (contains!46 l1!422 lt!18208)))

(declare-fun e!42878 () Int)

(assert (=> d!55037 (= lt!18208 e!42878)))

(declare-fun c!20170 () Bool)

(assert (=> d!55037 (= c!20170 (and (is-Cons!602 l1!422) (is-Nil!604 (t!47631 l1!422))))))

(assert (=> d!55037 (not (isEmpty!659 l1!422))))

(assert (=> d!55037 (= (last!3 l1!422) lt!18208)))

(declare-fun b!79292 () Bool)

(assert (=> b!79292 (= e!42878 (h!888 l1!422))))

(declare-fun b!79293 () Bool)

(assert (=> b!79293 (= e!42878 (last!3 (t!47631 l1!422)))))

(assert (= (and d!55037 c!20170) b!79292))

(assert (= (and d!55037 (not c!20170)) b!79293))

(declare-fun m!73724 () Bool)

(assert (=> d!55037 m!73724))

(assert (=> d!55037 m!73688))

(declare-fun m!73726 () Bool)

(assert (=> b!79293 m!73726))

(assert (=> b!79256 d!55037))

(declare-fun d!55039 () Bool)

(assert (=> d!55039 (= (head!1041 l2!415) (h!888 l2!415))))

(assert (=> b!79256 d!55039))

(push 1)

(assert (not b!79279))

(assert (not d!55029))

(assert (not b!79284))

(assert (not b!79282))

(assert (not d!55033))

(assert (not b!79265))

(assert (not d!55037))

(assert (not b!79285))

(assert (not b!79293))

(assert (not b!79287))

(assert (not b!79280))

(assert (not b!79271))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!55041 () Bool)

(declare-fun res!40012 () Bool)

(declare-fun e!42879 () Bool)

(assert (=> d!55041 (=> res!40012 e!42879)))

(assert (=> d!55041 (= res!40012 (not (and (is-Cons!602 (t!47631 l2!415)) (is-Cons!602 (t!47631 (t!47631 l2!415))))))))

(assert (=> d!55041 (= (isSorted!2 (t!47631 l2!415)) e!42879)))

(declare-fun b!79294 () Bool)

(declare-fun e!42880 () Bool)

(assert (=> b!79294 (= e!42879 e!42880)))

(declare-fun res!40013 () Bool)

(assert (=> b!79294 (=> (not res!40013) (not e!42880))))

(assert (=> b!79294 (= res!40013 (<= (h!888 (t!47631 l2!415)) (h!888 (t!47631 (t!47631 l2!415)))))))

(declare-fun b!79295 () Bool)

(assert (=> b!79295 (= e!42880 (isSorted!2 (t!47631 (t!47631 l2!415))))))

(assert (= (and d!55041 (not res!40012)) b!79294))

(assert (= (and b!79294 res!40013) b!79295))

(declare-fun m!73728 () Bool)

(assert (=> b!79295 m!73728))

(assert (=> b!79287 d!55041))

(declare-fun d!55043 () Bool)

(declare-fun lt!18209 () Int)

(assert (=> d!55043 (contains!46 (t!47631 l1!422) lt!18209)))

(declare-fun e!42881 () Int)

(assert (=> d!55043 (= lt!18209 e!42881)))

(declare-fun c!20171 () Bool)

(assert (=> d!55043 (= c!20171 (and (is-Cons!602 (t!47631 l1!422)) (is-Nil!604 (t!47631 (t!47631 l1!422)))))))

(assert (=> d!55043 (not (isEmpty!659 (t!47631 l1!422)))))

(assert (=> d!55043 (= (last!3 (t!47631 l1!422)) lt!18209)))

(declare-fun b!79296 () Bool)

(assert (=> b!79296 (= e!42881 (h!888 (t!47631 l1!422)))))

(declare-fun b!79297 () Bool)

(assert (=> b!79297 (= e!42881 (last!3 (t!47631 (t!47631 l1!422))))))

(assert (= (and d!55043 c!20171) b!79296))

(assert (= (and d!55043 (not c!20171)) b!79297))

(declare-fun m!73730 () Bool)

(assert (=> d!55043 m!73730))

(declare-fun m!73732 () Bool)

(assert (=> d!55043 m!73732))

(declare-fun m!73734 () Bool)

(assert (=> b!79297 m!73734))

(assert (=> b!79293 d!55043))

(declare-fun d!55045 () Bool)

(declare-fun res!40014 () Bool)

(declare-fun e!42882 () Bool)

(assert (=> d!55045 (=> res!40014 e!42882)))

(assert (=> d!55045 (= res!40014 (not (and (is-Cons!602 lt!18205) (is-Cons!602 (t!47631 lt!18205)))))))

(assert (=> d!55045 (= (isSorted!2 lt!18205) e!42882)))

(declare-fun b!79298 () Bool)

(declare-fun e!42883 () Bool)

(assert (=> b!79298 (= e!42882 e!42883)))

(declare-fun res!40015 () Bool)

(assert (=> b!79298 (=> (not res!40015) (not e!42883))))

(assert (=> b!79298 (= res!40015 (<= (h!888 lt!18205) (h!888 (t!47631 lt!18205))))))

(declare-fun b!79299 () Bool)

(assert (=> b!79299 (= e!42883 (isSorted!2 (t!47631 lt!18205)))))

(assert (= (and d!55045 (not res!40014)) b!79298))

(assert (= (and b!79298 res!40015) b!79299))

(declare-fun m!73736 () Bool)

(assert (=> b!79299 m!73736))

(assert (=> d!55033 d!55045))

(declare-fun d!55047 () Bool)

(declare-fun c!20172 () Bool)

(assert (=> d!55047 (= c!20172 (is-Nil!604 lt!18205))))

(declare-fun e!42884 () (Set Int))

(assert (=> d!55047 (= (content!107 lt!18205) e!42884)))

(declare-fun b!79300 () Bool)

(assert (=> b!79300 (= e!42884 (as emptyset (Set Int)))))

(declare-fun b!79301 () Bool)

(assert (=> b!79301 (= e!42884 (union (insert (h!888 lt!18205) (as emptyset (Set Int))) (content!107 (t!47631 lt!18205))))))

(assert (= (and d!55047 c!20172) b!79300))

(assert (= (and d!55047 (not c!20172)) b!79301))

(declare-fun m!73738 () Bool)

(assert (=> b!79301 m!73738))

(declare-fun m!73740 () Bool)

(assert (=> b!79301 m!73740))

(assert (=> b!79285 d!55047))

(assert (=> b!79285 d!55031))

(declare-fun d!55049 () Bool)

(declare-fun c!20173 () Bool)

(assert (=> d!55049 (= c!20173 (is-Nil!604 lt!18204))))

(declare-fun e!42885 () (Set Int))

(assert (=> d!55049 (= (content!107 lt!18204) e!42885)))

(declare-fun b!79302 () Bool)

(assert (=> b!79302 (= e!42885 (as emptyset (Set Int)))))

(declare-fun b!79303 () Bool)

(assert (=> b!79303 (= e!42885 (union (insert (h!888 lt!18204) (as emptyset (Set Int))) (content!107 (t!47631 lt!18204))))))

(assert (= (and d!55049 c!20173) b!79302))

(assert (= (and d!55049 (not c!20173)) b!79303))

(declare-fun m!73742 () Bool)

(assert (=> b!79303 m!73742))

(declare-fun m!73744 () Bool)

(assert (=> b!79303 m!73744))

(assert (=> b!79280 d!55049))

(assert (=> b!79280 d!55025))

(declare-fun d!55051 () Bool)

(declare-fun res!40016 () Bool)

(declare-fun e!42886 () Bool)

(assert (=> d!55051 (=> res!40016 e!42886)))

(assert (=> d!55051 (= res!40016 (not (and (is-Cons!602 lt!18204) (is-Cons!602 (t!47631 lt!18204)))))))

(assert (=> d!55051 (= (isSorted!2 lt!18204) e!42886)))

(declare-fun b!79304 () Bool)

(declare-fun e!42887 () Bool)

(assert (=> b!79304 (= e!42886 e!42887)))

(declare-fun res!40017 () Bool)

(assert (=> b!79304 (=> (not res!40017) (not e!42887))))

(assert (=> b!79304 (= res!40017 (<= (h!888 lt!18204) (h!888 (t!47631 lt!18204))))))

(declare-fun b!79305 () Bool)

(assert (=> b!79305 (= e!42887 (isSorted!2 (t!47631 lt!18204)))))

(assert (= (and d!55051 (not res!40016)) b!79304))

(assert (= (and b!79304 res!40017) b!79305))

(declare-fun m!73746 () Bool)

(assert (=> b!79305 m!73746))

(assert (=> d!55029 d!55051))

(declare-fun d!55053 () Bool)

(declare-fun c!20174 () Bool)

(assert (=> d!55053 (= c!20174 (is-Nil!604 (t!47631 r!611)))))

(declare-fun e!42888 () (Set Int))

(assert (=> d!55053 (= (content!107 (t!47631 r!611)) e!42888)))

(declare-fun b!79306 () Bool)

(assert (=> b!79306 (= e!42888 (as emptyset (Set Int)))))

(declare-fun b!79307 () Bool)

(assert (=> b!79307 (= e!42888 (union (insert (h!888 (t!47631 r!611)) (as emptyset (Set Int))) (content!107 (t!47631 (t!47631 r!611)))))))

(assert (= (and d!55053 c!20174) b!79306))

(assert (= (and d!55053 (not c!20174)) b!79307))

(declare-fun m!73748 () Bool)

(assert (=> b!79307 m!73748))

(declare-fun m!73750 () Bool)

(assert (=> b!79307 m!73750))

(assert (=> b!79282 d!55053))

(declare-fun d!55055 () Bool)

(declare-fun m!73752 () Bool)

(assert (=> d!55055 m!73752))

(declare-fun bs!37901 () Bool)

(assert (= bs!37901 (and d!55055 start!10444)))

(assert (=> (and bs!37901 (= Nil!604 l!1419) (= (content!107 Nil!604) (content!107 l!1419))) (= true true)))

(declare-fun bs!37902 () Bool)

(assert (= bs!37902 (and d!55055 b!79251)))

(assert (=> (and bs!37902 (= Nil!604 r!611) (= (content!107 Nil!604) (content!107 r!611))) (= true true)))

(declare-fun bs!37903 () Bool)

(declare-fun b!79322 () Bool)

(assert (= bs!37903 (and b!79322 start!10444)))

(assert (=> (and bs!37903 (= Nil!604 l!1419) (= (h!888 r!611) x!29075)) (= true true)))

(assert true)

(declare-fun bs!37904 () Bool)

(declare-fun b!79325 () Bool)

(assert (= bs!37904 (and b!79325 b!79251)))

(assert (=> (and bs!37904 (= Nil!604 r!611) (= (h!888 r!611) x!29075)) (= true true)))

(declare-fun res!40033 () Bool)

(declare-fun e!42899 () Bool)

(assert (=> b!79322 (=> (not res!40033) (not e!42899))))

(assert (=> b!79322 (= res!40033 true)))

(declare-fun b!79323 () Bool)

(declare-fun e!42901 () List!644)

(declare-fun appendSorted!0 (List!644 List!644) List!644)

(assert (=> b!79323 (= e!42901 (appendSorted!0 (quickSort!1 Nil!604) (Cons!602 (h!888 r!611) (quickSort!1 Nil!604))))))

(declare-fun b!79324 () Bool)

(declare-fun e!42900 () Bool)

(declare-fun lt!18215 () List!644)

(assert (=> b!79324 (= e!42900 (= (content!107 lt!18215) (insert (h!888 r!611) (union (union (content!107 Nil!604) (content!107 Nil!604)) (content!107 (t!47631 r!611))))))))

(assert (=> b!79325 (= e!42899 true)))

(assert (=> b!79325 true))

(assert (=> d!55055 e!42900))

(declare-fun res!40032 () Bool)

(assert (=> d!55055 (=> (not res!40032) (not e!42900))))

(assert (=> d!55055 (= res!40032 (isSorted!2 lt!18215))))

(assert (=> d!55055 (= lt!18215 e!42901)))

(declare-fun c!20177 () Bool)

(assert (=> d!55055 (= c!20177 (is-Nil!604 (t!47631 r!611)))))

(assert (=> d!55055 e!42899))

(declare-fun res!40034 () Bool)

(assert (=> d!55055 (=> (not res!40034) (not e!42899))))

(assert (=> d!55055 (= res!40034 true)))

(assert (=> d!55055 (= (par!0 (h!888 r!611) Nil!604 Nil!604 (t!47631 r!611)) lt!18215)))

(declare-fun b!79326 () Bool)

(declare-fun lt!18214 () Bool)

(assert (=> b!79326 (= e!42901 (par!0 (h!888 r!611) (ite lt!18214 (Cons!602 (h!888 (t!47631 r!611)) Nil!604) Nil!604) (ite lt!18214 Nil!604 (Cons!602 (h!888 (t!47631 r!611)) Nil!604)) (t!47631 (t!47631 r!611))))))

(assert (=> b!79326 (= lt!18214 (<= (h!888 (t!47631 r!611)) (h!888 r!611)))))

(assert (= (and d!55055 res!40034) b!79322))

(assert (= (and b!79322 res!40033) b!79325))

(assert (= (and d!55055 c!20177) b!79323))

(assert (= (and d!55055 (not c!20177)) b!79326))

(assert (= (and d!55055 res!40032) b!79324))

(declare-fun m!73754 () Bool)

(assert (=> b!79323 m!73754))

(assert (=> b!79323 m!73754))

(assert (=> b!79323 m!73754))

(declare-fun m!73756 () Bool)

(assert (=> b!79323 m!73756))

(declare-fun m!73758 () Bool)

(assert (=> b!79324 m!73758))

(assert (=> b!79324 m!73714))

(assert (=> b!79324 m!73752))

(declare-fun m!73760 () Bool)

(assert (=> b!79324 m!73760))

(assert (=> b!79324 m!73752))

(declare-fun m!73762 () Bool)

(assert (=> d!55055 m!73762))

(declare-fun m!73764 () Bool)

(assert (=> b!79326 m!73764))

(assert (=> b!79284 d!55055))

(declare-fun d!55057 () Bool)

(assert (=> d!55057 m!73752))

(declare-fun bs!37905 () Bool)

(assert (= bs!37905 (and d!55057 d!55055)))

(assert (=> bs!37905 (= true true)))

(declare-fun bs!37906 () Bool)

(assert (= bs!37906 (and d!55057 start!10444)))

(assert (=> (and bs!37906 (= Nil!604 l!1419) (= (content!107 Nil!604) (content!107 l!1419))) (= true true)))

(declare-fun bs!37907 () Bool)

(assert (= bs!37907 (and d!55057 b!79251)))

(assert (=> (and bs!37907 (= Nil!604 r!611) (= (content!107 Nil!604) (content!107 r!611))) (= true true)))

(declare-fun bs!37908 () Bool)

(declare-fun b!79327 () Bool)

(assert (= bs!37908 (and b!79327 start!10444)))

(assert (=> (and bs!37908 (= Nil!604 l!1419) (= (h!888 l!1419) x!29075)) (= true true)))

(declare-fun bs!37909 () Bool)

(assert (= bs!37909 (and b!79327 b!79322)))

(assert (=> (and bs!37909 (= (h!888 l!1419) (h!888 r!611))) (= true true)))

(assert true)

(declare-fun bs!37910 () Bool)

(declare-fun b!79330 () Bool)

(assert (= bs!37910 (and b!79330 b!79325)))

(assert (=> (and bs!37910 (= (h!888 l!1419) (h!888 r!611))) (= true true)))

(declare-fun bs!37911 () Bool)

(assert (= bs!37911 (and b!79330 b!79251)))

(assert (=> (and bs!37911 (= Nil!604 r!611) (= (h!888 l!1419) x!29075)) (= true true)))

(declare-fun res!40036 () Bool)

(declare-fun e!42902 () Bool)

(assert (=> b!79327 (=> (not res!40036) (not e!42902))))

(assert (=> b!79327 (= res!40036 true)))

(declare-fun b!79328 () Bool)

(declare-fun e!42904 () List!644)

(assert (=> b!79328 (= e!42904 (appendSorted!0 (quickSort!1 Nil!604) (Cons!602 (h!888 l!1419) (quickSort!1 Nil!604))))))

(declare-fun b!79329 () Bool)

(declare-fun e!42903 () Bool)

(declare-fun lt!18217 () List!644)

(assert (=> b!79329 (= e!42903 (= (content!107 lt!18217) (insert (h!888 l!1419) (union (union (content!107 Nil!604) (content!107 Nil!604)) (content!107 (t!47631 l!1419))))))))

(assert (=> b!79330 (= e!42902 true)))

(assert (=> b!79330 true))

(assert (=> d!55057 e!42903))

(declare-fun res!40035 () Bool)

(assert (=> d!55057 (=> (not res!40035) (not e!42903))))

(assert (=> d!55057 (= res!40035 (isSorted!2 lt!18217))))

(assert (=> d!55057 (= lt!18217 e!42904)))

(declare-fun c!20178 () Bool)

(assert (=> d!55057 (= c!20178 (is-Nil!604 (t!47631 l!1419)))))

(assert (=> d!55057 e!42902))

(declare-fun res!40037 () Bool)

(assert (=> d!55057 (=> (not res!40037) (not e!42902))))

(assert (=> d!55057 (= res!40037 true)))

(assert (=> d!55057 (= (par!0 (h!888 l!1419) Nil!604 Nil!604 (t!47631 l!1419)) lt!18217)))

(declare-fun b!79331 () Bool)

(declare-fun lt!18216 () Bool)

(assert (=> b!79331 (= e!42904 (par!0 (h!888 l!1419) (ite lt!18216 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604) Nil!604) (ite lt!18216 Nil!604 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604)) (t!47631 (t!47631 l!1419))))))

(assert (=> b!79331 (= lt!18216 (<= (h!888 (t!47631 l!1419)) (h!888 l!1419)))))

(assert (= (and d!55057 res!40037) b!79327))

(assert (= (and b!79327 res!40036) b!79330))

(assert (= (and d!55057 c!20178) b!79328))

(assert (= (and d!55057 (not c!20178)) b!79331))

(assert (= (and d!55057 res!40035) b!79329))

(assert (=> b!79328 m!73754))

(assert (=> b!79328 m!73754))

(assert (=> b!79328 m!73754))

(declare-fun m!73766 () Bool)

(assert (=> b!79328 m!73766))

(declare-fun m!73768 () Bool)

(assert (=> b!79329 m!73768))

(assert (=> b!79329 m!73702))

(assert (=> b!79329 m!73752))

(declare-fun m!73770 () Bool)

(assert (=> b!79329 m!73770))

(assert (=> b!79329 m!73752))

(declare-fun m!73772 () Bool)

(assert (=> d!55057 m!73772))

(declare-fun m!73774 () Bool)

(assert (=> b!79331 m!73774))

(assert (=> b!79279 d!55057))

(declare-fun d!55059 () Bool)

(declare-fun c!20179 () Bool)

(assert (=> d!55059 (= c!20179 (is-Nil!604 (t!47631 l!1419)))))

(declare-fun e!42905 () (Set Int))

(assert (=> d!55059 (= (content!107 (t!47631 l!1419)) e!42905)))

(declare-fun b!79332 () Bool)

(assert (=> b!79332 (= e!42905 (as emptyset (Set Int)))))

(declare-fun b!79333 () Bool)

(assert (=> b!79333 (= e!42905 (union (insert (h!888 (t!47631 l!1419)) (as emptyset (Set Int))) (content!107 (t!47631 (t!47631 l!1419)))))))

(assert (= (and d!55059 c!20179) b!79332))

(assert (= (and d!55059 (not c!20179)) b!79333))

(declare-fun m!73776 () Bool)

(assert (=> b!79333 m!73776))

(declare-fun m!73778 () Bool)

(assert (=> b!79333 m!73778))

(assert (=> b!79265 d!55059))

(declare-fun d!55061 () Bool)

(declare-fun lt!18220 () Bool)

(assert (=> d!55061 (= lt!18220 (member lt!18208 (content!107 l1!422)))))

(declare-fun e!42911 () Bool)

(assert (=> d!55061 (= lt!18220 e!42911)))

(declare-fun res!40043 () Bool)

(assert (=> d!55061 (=> (not res!40043) (not e!42911))))

(assert (=> d!55061 (= res!40043 (is-Cons!602 l1!422))))

(assert (=> d!55061 (= (contains!46 l1!422 lt!18208) lt!18220)))

(declare-fun b!79338 () Bool)

(declare-fun e!42910 () Bool)

(assert (=> b!79338 (= e!42911 e!42910)))

(declare-fun res!40042 () Bool)

(assert (=> b!79338 (=> res!40042 e!42910)))

(assert (=> b!79338 (= res!40042 (= (h!888 l1!422) lt!18208))))

(declare-fun b!79339 () Bool)

(assert (=> b!79339 (= e!42910 (contains!46 (t!47631 l1!422) lt!18208))))

(assert (= (and d!55061 res!40043) b!79338))

(assert (= (and b!79338 (not res!40042)) b!79339))

(declare-fun m!73780 () Bool)

(assert (=> d!55061 m!73780))

(declare-fun m!73782 () Bool)

(assert (=> d!55061 m!73782))

(declare-fun m!73784 () Bool)

(assert (=> b!79339 m!73784))

(assert (=> d!55037 d!55061))

(assert (=> d!55037 d!55021))

(declare-fun d!55063 () Bool)

(declare-fun res!40044 () Bool)

(declare-fun e!42912 () Bool)

(assert (=> d!55063 (=> res!40044 e!42912)))

(assert (=> d!55063 (= res!40044 (not (and (is-Cons!602 (t!47631 l1!422)) (is-Cons!602 (t!47631 (t!47631 l1!422))))))))

(assert (=> d!55063 (= (isSorted!2 (t!47631 l1!422)) e!42912)))

(declare-fun b!79340 () Bool)

(declare-fun e!42913 () Bool)

(assert (=> b!79340 (= e!42912 e!42913)))

(declare-fun res!40045 () Bool)

(assert (=> b!79340 (=> (not res!40045) (not e!42913))))

(assert (=> b!79340 (= res!40045 (<= (h!888 (t!47631 l1!422)) (h!888 (t!47631 (t!47631 l1!422)))))))

(declare-fun b!79341 () Bool)

(assert (=> b!79341 (= e!42913 (isSorted!2 (t!47631 (t!47631 l1!422))))))

(assert (= (and d!55063 (not res!40044)) b!79340))

(assert (= (and b!79340 res!40045) b!79341))

(declare-fun m!73786 () Bool)

(assert (=> b!79341 m!73786))

(assert (=> b!79271 d!55063))

(declare-fun bs!37912 () Bool)

(declare-fun s!2103 () Bool)

(assert (= bs!37912 (and start!10444 s!2103)))

(assert (=> bs!37912 (=> true (= (contains!46 l!1419 (h!888 r!611)) (member (h!888 r!611) (content!107 l!1419))))))

(declare-fun m!73788 () Bool)

(assert (=> m!73712 m!73788))

(declare-fun m!73790 () Bool)

(assert (=> m!73712 m!73790))

(assert (=> m!73712 s!2103))

(declare-fun bs!37913 () Bool)

(declare-fun s!2105 () Bool)

(assert (= bs!37913 (and start!10444 s!2105)))

(assert (=> bs!37913 (=> true (= (contains!46 l!1419 lt!18208) (member lt!18208 (content!107 l!1419))))))

(declare-fun m!73792 () Bool)

(assert (=> m!73724 m!73792))

(declare-fun m!73794 () Bool)

(assert (=> m!73724 m!73794))

(assert (=> m!73724 s!2105))

(declare-fun bs!37914 () Bool)

(declare-fun s!2107 () Bool)

(assert (= bs!37914 (and start!10444 s!2107)))

(assert (=> bs!37914 (=> true (= (contains!46 l!1419 (h!888 l!1419)) (member (h!888 l!1419) (content!107 l!1419))))))

(declare-fun m!73796 () Bool)

(assert (=> m!73700 m!73796))

(declare-fun m!73798 () Bool)

(assert (=> m!73700 m!73798))

(assert (=> m!73700 s!2107))

(declare-fun bs!37915 () Bool)

(declare-fun s!2109 () Bool)

(assert (= bs!37915 (and start!10444 s!2109)))

(declare-fun res!40046 () Bool)

(declare-fun e!42914 () Bool)

(assert (=> bs!37915 (=> res!40046 e!42914)))

(assert (=> bs!37915 (= res!40046 (not (contains!46 l!1419 lt!18208)))))

(assert (=> bs!37915 (=> true e!42914)))

(declare-fun b!79342 () Bool)

(assert (=> b!79342 (= e!42914 (<= lt!18208 x!29075))))

(assert (= (and bs!37915 (not res!40046)) b!79342))

(assert (=> m!73724 m!73792))

(assert (=> m!73724 s!2109))

(declare-fun bs!37916 () Bool)

(declare-fun s!2111 () Bool)

(assert (= bs!37916 (and start!10444 b!79251 s!2111)))

(assert (=> bs!37916 (=> true (= (contains!46 r!611 (h!888 l!1419)) (member (h!888 l!1419) (content!107 r!611))))))

(declare-fun m!73800 () Bool)

(assert (=> m!73700 m!73800))

(declare-fun m!73802 () Bool)

(assert (=> m!73700 m!73802))

(assert (=> m!73700 s!2111))

(declare-fun bs!37917 () Bool)

(declare-fun s!2113 () Bool)

(assert (= bs!37917 (and start!10444 b!79251 s!2113)))

(assert (=> bs!37917 (=> true (= (contains!46 r!611 (h!888 r!611)) (member (h!888 r!611) (content!107 r!611))))))

(declare-fun m!73804 () Bool)

(assert (=> m!73712 m!73804))

(declare-fun m!73806 () Bool)

(assert (=> m!73712 m!73806))

(assert (=> m!73712 s!2113))

(declare-fun bs!37918 () Bool)

(declare-fun s!2115 () Bool)

(assert (= bs!37918 (and start!10444 b!79251 s!2115)))

(assert (=> bs!37918 (=> true (= (contains!46 r!611 lt!18208) (member lt!18208 (content!107 r!611))))))

(declare-fun m!73808 () Bool)

(assert (=> m!73724 m!73808))

(declare-fun m!73810 () Bool)

(assert (=> m!73724 m!73810))

(assert (=> m!73724 s!2115))

(declare-fun bs!37919 () Bool)

(declare-fun s!2117 () Bool)

(assert (= bs!37919 (and start!10444 b!79251 s!2117)))

(declare-fun res!40047 () Bool)

(declare-fun e!42915 () Bool)

(assert (=> bs!37919 (=> res!40047 e!42915)))

(assert (=> bs!37919 (= res!40047 (not (contains!46 r!611 lt!18208)))))

(assert (=> bs!37919 (=> true e!42915)))

(declare-fun b!79343 () Bool)

(assert (=> b!79343 (= e!42915 (< x!29075 lt!18208))))

(assert (= (and bs!37919 (not res!40047)) b!79343))

(assert (=> m!73724 m!73808))

(assert (=> m!73724 s!2117))

(push 1)

(assert (not b!79329))

(assert (not b!79303))

(assert (not b!79323))

(assert (not b!79325))

(assert (not b!79341))

(assert (not d!55043))

(assert (not b!79330))

(assert (not bs!37916))

(assert (not d!55055))

(assert (not b!79297))

(assert (not d!55057))

(assert (not b!79301))

(assert (not b!79299))

(assert (not b!79326))

(assert (not bs!37915))

(assert (not b!79331))

(assert (not b!79307))

(assert (not b!79328))

(assert (not b!79324))

(assert (not bs!37917))

(assert (not b!79339))

(assert (not bs!37918))

(assert (not bs!37914))

(assert (not b!79305))

(assert (not b!79295))

(assert (not bs!37913))

(assert (not b!79333))

(assert (not d!55061))

(assert (not bs!37912))

(assert (not bs!37919))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!55065 () Bool)

(declare-fun lt!18221 () Bool)

(assert (=> d!55065 (= lt!18221 (member lt!18208 (content!107 l!1419)))))

(declare-fun e!42917 () Bool)

(assert (=> d!55065 (= lt!18221 e!42917)))

(declare-fun res!40049 () Bool)

(assert (=> d!55065 (=> (not res!40049) (not e!42917))))

(assert (=> d!55065 (= res!40049 (is-Cons!602 l!1419))))

(assert (=> d!55065 (= (contains!46 l!1419 lt!18208) lt!18221)))

(declare-fun b!79344 () Bool)

(declare-fun e!42916 () Bool)

(assert (=> b!79344 (= e!42917 e!42916)))

(declare-fun res!40048 () Bool)

(assert (=> b!79344 (=> res!40048 e!42916)))

(assert (=> b!79344 (= res!40048 (= (h!888 l!1419) lt!18208))))

(declare-fun b!79345 () Bool)

(assert (=> b!79345 (= e!42916 (contains!46 (t!47631 l!1419) lt!18208))))

(assert (= (and d!55065 res!40049) b!79344))

(assert (= (and b!79344 (not res!40048)) b!79345))

(assert (=> d!55065 m!73680))

(assert (=> d!55065 m!73794))

(declare-fun bs!37920 () Bool)

(declare-fun m!73812 () Bool)

(assert (= bs!37920 m!73812))

(assert (=> bs!37920 s!2105))

(assert (=> bs!37920 s!2109))

(assert (=> bs!37920 s!2115))

(assert (=> bs!37920 s!2117))

(assert (=> b!79345 m!73812))

(assert (=> bs!37913 d!55065))

(assert (=> bs!37915 d!55065))

(declare-fun d!55067 () Bool)

(declare-fun lt!18222 () Bool)

(assert (=> d!55067 (= lt!18222 (member lt!18208 (content!107 r!611)))))

(declare-fun e!42919 () Bool)

(assert (=> d!55067 (= lt!18222 e!42919)))

(declare-fun res!40051 () Bool)

(assert (=> d!55067 (=> (not res!40051) (not e!42919))))

(assert (=> d!55067 (= res!40051 (is-Cons!602 r!611))))

(assert (=> d!55067 (= (contains!46 r!611 lt!18208) lt!18222)))

(declare-fun b!79346 () Bool)

(declare-fun e!42918 () Bool)

(assert (=> b!79346 (= e!42919 e!42918)))

(declare-fun res!40050 () Bool)

(assert (=> b!79346 (=> res!40050 e!42918)))

(assert (=> b!79346 (= res!40050 (= (h!888 r!611) lt!18208))))

(declare-fun b!79347 () Bool)

(assert (=> b!79347 (= e!42918 (contains!46 (t!47631 r!611) lt!18208))))

(assert (= (and d!55067 res!40051) b!79346))

(assert (= (and b!79346 (not res!40050)) b!79347))

(assert (=> d!55067 m!73682))

(assert (=> d!55067 m!73810))

(declare-fun bs!37921 () Bool)

(declare-fun m!73814 () Bool)

(assert (= bs!37921 m!73814))

(assert (=> bs!37921 s!2105))

(assert (=> bs!37921 s!2109))

(assert (=> bs!37921 s!2115))

(assert (=> bs!37921 s!2117))

(assert (=> b!79347 m!73814))

(assert (=> bs!37918 d!55067))

(assert (=> bs!37919 d!55067))

(assert (=> m!73792 s!2105))

(assert (=> m!73798 s!2107))

(assert (=> m!73802 s!2107))

(assert (=> m!73804 s!2103))

(assert (=> m!73796 s!2107))

(assert (=> m!73808 s!2105))

(assert (=> m!73794 s!2105))

(assert (=> m!73810 s!2105))

(assert (=> m!73790 s!2103))

(assert (=> m!73806 s!2103))

(assert (=> m!73800 s!2107))

(assert (=> m!73788 s!2103))

(assert (=> m!73808 s!2109))

(assert (=> m!73792 s!2109))

(declare-fun bs!37922 () Bool)

(declare-fun s!2119 () Bool)

(assert (= bs!37922 (and start!10444 s!2119)))

(declare-fun res!40052 () Bool)

(declare-fun e!42920 () Bool)

(assert (=> bs!37922 (=> res!40052 e!42920)))

(assert (=> bs!37922 (= res!40052 (not (contains!46 l!1419 (h!888 l!1419))))))

(assert (=> bs!37922 (=> true e!42920)))

(declare-fun b!79348 () Bool)

(assert (=> b!79348 (= e!42920 (<= (h!888 l!1419) x!29075))))

(assert (= (and bs!37922 (not res!40052)) b!79348))

(assert (=> m!73796 s!2119))

(declare-fun bs!37923 () Bool)

(declare-fun s!2121 () Bool)

(assert (= bs!37923 (and start!10444 s!2121)))

(declare-fun res!40053 () Bool)

(declare-fun e!42921 () Bool)

(assert (=> bs!37923 (=> res!40053 e!42921)))

(assert (=> bs!37923 (= res!40053 (not (contains!46 l!1419 (h!888 r!611))))))

(assert (=> bs!37923 (=> true e!42921)))

(declare-fun b!79349 () Bool)

(assert (=> b!79349 (= e!42921 (<= (h!888 r!611) x!29075))))

(assert (= (and bs!37923 (not res!40053)) b!79349))

(assert (=> m!73804 m!73788))

(assert (=> m!73804 s!2121))

(assert (=> m!73800 s!2119))

(assert (=> m!73788 s!2121))

(assert (=> m!73790 s!2113))

(assert (=> m!73804 s!2113))

(assert (=> m!73800 s!2111))

(assert (=> m!73808 s!2115))

(assert (=> m!73796 s!2111))

(assert (=> m!73788 s!2113))

(assert (=> m!73810 s!2115))

(assert (=> m!73802 s!2111))

(assert (=> m!73806 s!2113))

(assert (=> m!73792 s!2115))

(assert (=> m!73794 s!2115))

(assert (=> m!73798 s!2111))

(assert (=> m!73808 s!2117))

(declare-fun bs!37924 () Bool)

(declare-fun s!2123 () Bool)

(assert (= bs!37924 (and start!10444 b!79251 s!2123)))

(declare-fun res!40054 () Bool)

(declare-fun e!42922 () Bool)

(assert (=> bs!37924 (=> res!40054 e!42922)))

(assert (=> bs!37924 (= res!40054 (not (contains!46 r!611 (h!888 l!1419))))))

(assert (=> bs!37924 (=> true e!42922)))

(declare-fun b!79350 () Bool)

(assert (=> b!79350 (= e!42922 (< x!29075 (h!888 l!1419)))))

(assert (= (and bs!37924 (not res!40054)) b!79350))

(assert (=> m!73800 s!2123))

(declare-fun bs!37925 () Bool)

(declare-fun s!2125 () Bool)

(assert (= bs!37925 (and start!10444 b!79251 s!2125)))

(declare-fun res!40055 () Bool)

(declare-fun e!42923 () Bool)

(assert (=> bs!37925 (=> res!40055 e!42923)))

(assert (=> bs!37925 (= res!40055 (not (contains!46 r!611 (h!888 r!611))))))

(assert (=> bs!37925 (=> true e!42923)))

(declare-fun b!79351 () Bool)

(assert (=> b!79351 (= e!42923 (< x!29075 (h!888 r!611)))))

(assert (= (and bs!37925 (not res!40055)) b!79351))

(assert (=> m!73788 m!73804))

(assert (=> m!73788 s!2125))

(assert (=> m!73804 s!2125))

(assert (=> m!73792 s!2117))

(assert (=> m!73796 s!2123))

(declare-fun bs!37926 () Bool)

(declare-fun s!2127 () Bool)

(assert (= bs!37926 (and d!55055 s!2127)))

(assert (=> bs!37926 (=> true (= (contains!46 Nil!604 lt!18208) (member lt!18208 (content!107 Nil!604))))))

(declare-fun m!73816 () Bool)

(assert (=> m!73794 m!73816))

(declare-fun m!73818 () Bool)

(assert (=> m!73794 m!73818))

(assert (=> m!73794 s!2127))

(declare-fun bs!37927 () Bool)

(declare-fun s!2129 () Bool)

(assert (= bs!37927 (and d!55055 s!2129)))

(assert (=> bs!37927 (=> true (= (contains!46 Nil!604 (h!888 r!611)) (member (h!888 r!611) (content!107 Nil!604))))))

(declare-fun m!73820 () Bool)

(assert (=> m!73790 m!73820))

(declare-fun m!73822 () Bool)

(assert (=> m!73790 m!73822))

(assert (=> m!73790 s!2129))

(declare-fun bs!37928 () Bool)

(declare-fun s!2131 () Bool)

(assert (= bs!37928 (and d!55055 s!2131)))

(assert (=> bs!37928 (=> true (= (contains!46 Nil!604 (h!888 l!1419)) (member (h!888 l!1419) (content!107 Nil!604))))))

(declare-fun m!73824 () Bool)

(assert (=> m!73796 m!73824))

(declare-fun m!73826 () Bool)

(assert (=> m!73796 m!73826))

(assert (=> m!73796 s!2131))

(assert (=> m!73810 s!2127))

(assert (=> m!73798 s!2131))

(assert (=> m!73804 s!2129))

(assert (=> m!73788 s!2129))

(assert (=> m!73792 s!2127))

(assert (=> m!73806 s!2129))

(assert (=> m!73802 s!2131))

(assert (=> m!73808 s!2127))

(assert (=> m!73800 s!2131))

(declare-fun bs!37929 () Bool)

(declare-fun s!2133 () Bool)

(assert (= bs!37929 (and d!55055 b!79322 s!2133)))

(declare-fun res!40056 () Bool)

(declare-fun e!42924 () Bool)

(assert (=> bs!37929 (=> res!40056 e!42924)))

(assert (=> bs!37929 (= res!40056 (not (contains!46 Nil!604 (h!888 l!1419))))))

(assert (=> bs!37929 (=> true e!42924)))

(declare-fun b!79352 () Bool)

(assert (=> b!79352 (= e!42924 (<= (h!888 l!1419) (h!888 r!611)))))

(assert (= (and bs!37929 (not res!40056)) b!79352))

(assert (=> m!73796 m!73824))

(assert (=> m!73796 s!2133))

(assert (=> m!73800 s!2133))

(declare-fun bs!37930 () Bool)

(declare-fun s!2135 () Bool)

(assert (= bs!37930 (and d!55055 b!79322 s!2135)))

(declare-fun res!40057 () Bool)

(declare-fun e!42925 () Bool)

(assert (=> bs!37930 (=> res!40057 e!42925)))

(assert (=> bs!37930 (= res!40057 (not (contains!46 Nil!604 lt!18208)))))

(assert (=> bs!37930 (=> true e!42925)))

(declare-fun b!79353 () Bool)

(assert (=> b!79353 (= e!42925 (<= lt!18208 (h!888 r!611)))))

(assert (= (and bs!37930 (not res!40057)) b!79353))

(assert (=> m!73792 m!73816))

(assert (=> m!73792 s!2135))

(assert (=> m!73808 s!2135))

(declare-fun bs!37931 () Bool)

(declare-fun s!2137 () Bool)

(assert (= bs!37931 (and d!55055 b!79322 s!2137)))

(declare-fun res!40058 () Bool)

(declare-fun e!42926 () Bool)

(assert (=> bs!37931 (=> res!40058 e!42926)))

(assert (=> bs!37931 (= res!40058 (not (contains!46 Nil!604 (h!888 r!611))))))

(assert (=> bs!37931 (=> true e!42926)))

(declare-fun b!79354 () Bool)

(assert (=> b!79354 (= e!42926 (<= (h!888 r!611) (h!888 r!611)))))

(assert (= (and bs!37931 (not res!40058)) b!79354))

(assert (=> m!73804 m!73820))

(assert (=> m!73804 s!2137))

(assert (=> m!73788 s!2137))

(declare-fun s!2139 () Bool)

(declare-fun bs!37932 () Bool)

(assert (= bs!37932 (and d!55055 b!79322 b!79325 s!2139)))

(declare-fun res!40059 () Bool)

(declare-fun e!42927 () Bool)

(assert (=> bs!37932 (=> res!40059 e!42927)))

(assert (=> bs!37932 (= res!40059 (not (contains!46 Nil!604 (h!888 r!611))))))

(assert (=> bs!37932 (=> true e!42927)))

(declare-fun b!79355 () Bool)

(assert (=> b!79355 (= e!42927 (< (h!888 r!611) (h!888 r!611)))))

(assert (= (and bs!37932 (not res!40059)) b!79355))

(assert (=> m!73788 m!73820))

(assert (=> m!73788 s!2139))

(declare-fun bs!37933 () Bool)

(declare-fun s!2141 () Bool)

(assert (= bs!37933 (and d!55055 b!79322 b!79325 s!2141)))

(declare-fun res!40060 () Bool)

(declare-fun e!42928 () Bool)

(assert (=> bs!37933 (=> res!40060 e!42928)))

(assert (=> bs!37933 (= res!40060 (not (contains!46 Nil!604 (h!888 l!1419))))))

(assert (=> bs!37933 (=> true e!42928)))

(declare-fun b!79356 () Bool)

(assert (=> b!79356 (= e!42928 (< (h!888 r!611) (h!888 l!1419)))))

(assert (= (and bs!37933 (not res!40060)) b!79356))

(assert (=> m!73796 m!73824))

(assert (=> m!73796 s!2141))

(assert (=> m!73804 s!2139))

(declare-fun bs!37934 () Bool)

(declare-fun s!2143 () Bool)

(assert (= bs!37934 (and d!55055 b!79322 b!79325 s!2143)))

(declare-fun res!40061 () Bool)

(declare-fun e!42929 () Bool)

(assert (=> bs!37934 (=> res!40061 e!42929)))

(assert (=> bs!37934 (= res!40061 (not (contains!46 Nil!604 lt!18208)))))

(assert (=> bs!37934 (=> true e!42929)))

(declare-fun b!79357 () Bool)

(assert (=> b!79357 (= e!42929 (< (h!888 r!611) lt!18208))))

(assert (= (and bs!37934 (not res!40061)) b!79357))

(assert (=> m!73808 m!73816))

(assert (=> m!73808 s!2143))

(assert (=> m!73800 s!2141))

(assert (=> m!73792 s!2143))

(declare-fun bs!37935 () Bool)

(declare-fun s!2145 () Bool)

(assert (= bs!37935 (and d!55057 s!2145)))

(assert (=> bs!37935 (=> true (= (contains!46 Nil!604 lt!18208) (member lt!18208 (content!107 Nil!604))))))

(assert (=> m!73794 m!73816))

(assert (=> m!73794 m!73818))

(assert (=> m!73794 s!2145))

(declare-fun bs!37936 () Bool)

(declare-fun s!2147 () Bool)

(assert (= bs!37936 (and d!55057 s!2147)))

(assert (=> bs!37936 (=> true (= (contains!46 Nil!604 (h!888 r!611)) (member (h!888 r!611) (content!107 Nil!604))))))

(assert (=> m!73790 m!73820))

(assert (=> m!73790 m!73822))

(assert (=> m!73790 s!2147))

(declare-fun bs!37937 () Bool)

(declare-fun s!2149 () Bool)

(assert (= bs!37937 (and d!55057 s!2149)))

(assert (=> bs!37937 (=> true (= (contains!46 Nil!604 (h!888 l!1419)) (member (h!888 l!1419) (content!107 Nil!604))))))

(assert (=> m!73796 m!73824))

(assert (=> m!73796 m!73826))

(assert (=> m!73796 s!2149))

(assert (=> m!73810 s!2145))

(assert (=> m!73798 s!2149))

(assert (=> m!73804 s!2147))

(assert (=> m!73788 s!2147))

(assert (=> m!73792 s!2145))

(assert (=> m!73806 s!2147))

(assert (=> m!73802 s!2149))

(assert (=> m!73808 s!2145))

(assert (=> m!73800 s!2149))

(declare-fun bs!37938 () Bool)

(declare-fun s!2151 () Bool)

(assert (= bs!37938 (and d!55057 b!79327 s!2151)))

(declare-fun res!40062 () Bool)

(declare-fun e!42930 () Bool)

(assert (=> bs!37938 (=> res!40062 e!42930)))

(assert (=> bs!37938 (= res!40062 (not (contains!46 Nil!604 (h!888 l!1419))))))

(assert (=> bs!37938 (=> true e!42930)))

(declare-fun b!79358 () Bool)

(assert (=> b!79358 (= e!42930 (<= (h!888 l!1419) (h!888 l!1419)))))

(assert (= (and bs!37938 (not res!40062)) b!79358))

(assert (=> m!73796 m!73824))

(assert (=> m!73796 s!2151))

(assert (=> m!73800 s!2151))

(declare-fun bs!37939 () Bool)

(declare-fun s!2153 () Bool)

(assert (= bs!37939 (and d!55057 b!79327 s!2153)))

(declare-fun res!40063 () Bool)

(declare-fun e!42931 () Bool)

(assert (=> bs!37939 (=> res!40063 e!42931)))

(assert (=> bs!37939 (= res!40063 (not (contains!46 Nil!604 lt!18208)))))

(assert (=> bs!37939 (=> true e!42931)))

(declare-fun b!79359 () Bool)

(assert (=> b!79359 (= e!42931 (<= lt!18208 (h!888 l!1419)))))

(assert (= (and bs!37939 (not res!40063)) b!79359))

(assert (=> m!73792 m!73816))

(assert (=> m!73792 s!2153))

(assert (=> m!73808 s!2153))

(declare-fun bs!37940 () Bool)

(declare-fun s!2155 () Bool)

(assert (= bs!37940 (and d!55057 b!79327 s!2155)))

(declare-fun res!40064 () Bool)

(declare-fun e!42932 () Bool)

(assert (=> bs!37940 (=> res!40064 e!42932)))

(assert (=> bs!37940 (= res!40064 (not (contains!46 Nil!604 (h!888 r!611))))))

(assert (=> bs!37940 (=> true e!42932)))

(declare-fun b!79360 () Bool)

(assert (=> b!79360 (= e!42932 (<= (h!888 r!611) (h!888 l!1419)))))

(assert (= (and bs!37940 (not res!40064)) b!79360))

(assert (=> m!73804 m!73820))

(assert (=> m!73804 s!2155))

(assert (=> m!73788 s!2155))

(declare-fun bs!37941 () Bool)

(declare-fun s!2157 () Bool)

(assert (= bs!37941 (and d!55057 b!79327 b!79330 s!2157)))

(declare-fun res!40065 () Bool)

(declare-fun e!42933 () Bool)

(assert (=> bs!37941 (=> res!40065 e!42933)))

(assert (=> bs!37941 (= res!40065 (not (contains!46 Nil!604 (h!888 r!611))))))

(assert (=> bs!37941 (=> true e!42933)))

(declare-fun b!79361 () Bool)

(assert (=> b!79361 (= e!42933 (< (h!888 l!1419) (h!888 r!611)))))

(assert (= (and bs!37941 (not res!40065)) b!79361))

(assert (=> m!73788 m!73820))

(assert (=> m!73788 s!2157))

(declare-fun s!2159 () Bool)

(declare-fun bs!37942 () Bool)

(assert (= bs!37942 (and d!55057 b!79327 b!79330 s!2159)))

(declare-fun res!40066 () Bool)

(declare-fun e!42934 () Bool)

(assert (=> bs!37942 (=> res!40066 e!42934)))

(assert (=> bs!37942 (= res!40066 (not (contains!46 Nil!604 (h!888 l!1419))))))

(assert (=> bs!37942 (=> true e!42934)))

(declare-fun b!79362 () Bool)

(assert (=> b!79362 (= e!42934 (< (h!888 l!1419) (h!888 l!1419)))))

(assert (= (and bs!37942 (not res!40066)) b!79362))

(assert (=> m!73796 m!73824))

(assert (=> m!73796 s!2159))

(assert (=> m!73804 s!2157))

(declare-fun s!2161 () Bool)

(declare-fun bs!37943 () Bool)

(assert (= bs!37943 (and d!55057 b!79327 b!79330 s!2161)))

(declare-fun res!40067 () Bool)

(declare-fun e!42935 () Bool)

(assert (=> bs!37943 (=> res!40067 e!42935)))

(assert (=> bs!37943 (= res!40067 (not (contains!46 Nil!604 lt!18208)))))

(assert (=> bs!37943 (=> true e!42935)))

(declare-fun b!79363 () Bool)

(assert (=> b!79363 (= e!42935 (< (h!888 l!1419) lt!18208))))

(assert (= (and bs!37943 (not res!40067)) b!79363))

(assert (=> m!73808 m!73816))

(assert (=> m!73808 s!2161))

(assert (=> m!73800 s!2159))

(assert (=> m!73792 s!2161))

(push 1)

(assert (not b!79329))

(assert (not bs!37939))

(assert (not bs!37942))

(assert (not b!79303))

(assert (not b!79323))

(assert (not d!55065))

(assert (not b!79325))

(assert (not b!79341))

(assert (not d!55043))

(assert (not bs!37940))

(assert (not bs!37930))

(assert (not bs!37938))

(assert (not b!79330))

(assert (not bs!37925))

(assert (not bs!37926))

(assert (not bs!37934))

(assert (not bs!37922))

(assert (not bs!37916))

(assert (not d!55055))

(assert (not bs!37924))

(assert (not b!79297))

(assert (not bs!37932))

(assert (not d!55067))

(assert (not d!55057))

(assert (not b!79301))

(assert (not bs!37936))

(assert (not b!79299))

(assert (not bs!37933))

(assert (not b!79326))

(assert (not bs!37931))

(assert (not bs!37927))

(assert (not b!79331))

(assert (not b!79307))

(assert (not b!79328))

(assert (not b!79324))

(assert (not b!79347))

(assert (not bs!37943))

(assert (not bs!37917))

(assert (not bs!37935))

(assert (not b!79339))

(assert (not bs!37937))

(assert (not bs!37914))

(assert (not bs!37941))

(assert (not b!79305))

(assert (not b!79295))

(assert (not bs!37923))

(assert (not b!79333))

(assert (not d!55061))

(assert (not bs!37912))

(assert (not bs!37928))

(assert (not bs!37929))

(assert (not b!79345))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!55069 () Bool)

(assert (=> d!55069 (= (content!107 Nil!604) (as emptyset (Set Int)))))

(assert (=> d!55057 d!55069))

(declare-fun d!55071 () Bool)

(declare-fun res!40068 () Bool)

(declare-fun e!42936 () Bool)

(assert (=> d!55071 (=> res!40068 e!42936)))

(assert (=> d!55071 (= res!40068 (not (and (is-Cons!602 lt!18217) (is-Cons!602 (t!47631 lt!18217)))))))

(assert (=> d!55071 (= (isSorted!2 lt!18217) e!42936)))

(declare-fun b!79364 () Bool)

(declare-fun e!42937 () Bool)

(assert (=> b!79364 (= e!42936 e!42937)))

(declare-fun res!40069 () Bool)

(assert (=> b!79364 (=> (not res!40069) (not e!42937))))

(assert (=> b!79364 (= res!40069 (<= (h!888 lt!18217) (h!888 (t!47631 lt!18217))))))

(declare-fun b!79365 () Bool)

(assert (=> b!79365 (= e!42937 (isSorted!2 (t!47631 lt!18217)))))

(assert (= (and d!55071 (not res!40068)) b!79364))

(assert (= (and b!79364 res!40069) b!79365))

(declare-fun m!73828 () Bool)

(assert (=> b!79365 m!73828))

(assert (=> d!55057 d!55071))

(declare-fun d!55073 () Bool)

(declare-fun lt!18223 () Bool)

(assert (=> d!55073 (= lt!18223 (member lt!18208 (content!107 Nil!604)))))

(declare-fun e!42939 () Bool)

(assert (=> d!55073 (= lt!18223 e!42939)))

(declare-fun res!40071 () Bool)

(assert (=> d!55073 (=> (not res!40071) (not e!42939))))

(assert (=> d!55073 (= res!40071 (is-Cons!602 Nil!604))))

(assert (=> d!55073 (= (contains!46 Nil!604 lt!18208) lt!18223)))

(declare-fun b!79366 () Bool)

(declare-fun e!42938 () Bool)

(assert (=> b!79366 (= e!42939 e!42938)))

(declare-fun res!40070 () Bool)

(assert (=> b!79366 (=> res!40070 e!42938)))

(assert (=> b!79366 (= res!40070 (= (h!888 Nil!604) lt!18208))))

(declare-fun b!79367 () Bool)

(assert (=> b!79367 (= e!42938 (contains!46 (t!47631 Nil!604) lt!18208))))

(assert (= (and d!55073 res!40071) b!79366))

(assert (= (and b!79366 (not res!40070)) b!79367))

(assert (=> d!55073 m!73752))

(assert (=> d!55073 m!73818))

(declare-fun bs!37944 () Bool)

(declare-fun m!73830 () Bool)

(assert (= bs!37944 m!73830))

(assert (=> bs!37944 s!2105))

(assert (=> bs!37944 s!2109))

(assert (=> bs!37944 s!2115))

(assert (=> bs!37944 s!2117))

(assert (=> bs!37944 s!2127))

(assert (=> bs!37944 s!2135))

(assert (=> bs!37944 s!2143))

(assert (=> bs!37944 s!2145))

(assert (=> bs!37944 s!2153))

(assert (=> bs!37944 s!2161))

(assert (=> b!79367 m!73830))

(assert (=> bs!37935 d!55073))

(assert (=> bs!37939 d!55073))

(assert (=> bs!37926 d!55073))

(assert (=> bs!37934 d!55073))

(assert (=> d!55055 d!55069))

(declare-fun d!55075 () Bool)

(declare-fun res!40072 () Bool)

(declare-fun e!42940 () Bool)

(assert (=> d!55075 (=> res!40072 e!42940)))

(assert (=> d!55075 (= res!40072 (not (and (is-Cons!602 lt!18215) (is-Cons!602 (t!47631 lt!18215)))))))

(assert (=> d!55075 (= (isSorted!2 lt!18215) e!42940)))

(declare-fun b!79368 () Bool)

(declare-fun e!42941 () Bool)

(assert (=> b!79368 (= e!42940 e!42941)))

(declare-fun res!40073 () Bool)

(assert (=> b!79368 (=> (not res!40073) (not e!42941))))

(assert (=> b!79368 (= res!40073 (<= (h!888 lt!18215) (h!888 (t!47631 lt!18215))))))

(declare-fun b!79369 () Bool)

(assert (=> b!79369 (= e!42941 (isSorted!2 (t!47631 lt!18215)))))

(assert (= (and d!55075 (not res!40072)) b!79368))

(assert (= (and b!79368 res!40073) b!79369))

(declare-fun m!73832 () Bool)

(assert (=> b!79369 m!73832))

(assert (=> d!55055 d!55075))

(assert (=> b!79325 d!55069))

(assert (=> b!79330 d!55069))

(assert (=> bs!37930 d!55073))

(assert (=> d!55067 d!55031))

(assert (=> bs!37943 d!55073))

(assert (=> d!55065 d!55025))

(assert (=> m!73816 s!2105))

(assert (=> m!73820 s!2103))

(assert (=> m!73822 s!2103))

(assert (=> m!73818 s!2105))

(assert (=> m!73824 s!2107))

(assert (=> m!73826 s!2107))

(assert (=> m!73820 s!2121))

(assert (=> m!73816 s!2109))

(assert (=> m!73824 s!2119))

(assert (=> m!73826 s!2111))

(assert (=> m!73822 s!2113))

(assert (=> m!73820 s!2113))

(assert (=> m!73818 s!2115))

(assert (=> m!73824 s!2111))

(assert (=> m!73816 s!2115))

(assert (=> m!73824 s!2123))

(assert (=> m!73820 s!2125))

(assert (=> m!73816 s!2117))

(assert (=> m!73822 s!2129))

(assert (=> m!73816 s!2127))

(assert (=> m!73818 s!2127))

(assert (=> m!73824 s!2131))

(assert (=> m!73826 s!2131))

(assert (=> m!73820 s!2129))

(assert (=> m!73824 s!2133))

(assert (=> m!73820 s!2137))

(assert (=> m!73816 s!2135))

(assert (=> m!73816 s!2143))

(assert (=> m!73820 s!2139))

(assert (=> m!73824 s!2141))

(assert (=> m!73822 s!2147))

(assert (=> m!73816 s!2145))

(assert (=> m!73818 s!2145))

(assert (=> m!73824 s!2149))

(assert (=> m!73826 s!2149))

(assert (=> m!73820 s!2147))

(assert (=> m!73824 s!2151))

(assert (=> m!73820 s!2155))

(assert (=> m!73816 s!2153))

(assert (=> m!73816 s!2161))

(assert (=> m!73820 s!2157))

(assert (=> m!73824 s!2159))

(push 1)

(assert (not b!79329))

(assert (not bs!37942))

(assert (not b!79303))

(assert (not b!79323))

(assert (not b!79365))

(assert (not b!79341))

(assert (not d!55043))

(assert (not bs!37940))

(assert (not bs!37938))

(assert (not bs!37925))

(assert (not bs!37922))

(assert (not b!79367))

(assert (not bs!37916))

(assert (not bs!37924))

(assert (not b!79297))

(assert (not bs!37932))

(assert (not b!79301))

(assert (not bs!37936))

(assert (not d!55073))

(assert (not b!79299))

(assert (not bs!37933))

(assert (not b!79326))

(assert (not bs!37931))

(assert (not bs!37927))

(assert (not b!79331))

(assert (not b!79307))

(assert (not b!79328))

(assert (not b!79324))

(assert (not b!79347))

(assert (not bs!37917))

(assert (not b!79339))

(assert (not bs!37937))

(assert (not bs!37914))

(assert (not bs!37941))

(assert (not b!79305))

(assert (not b!79295))

(assert (not bs!37923))

(assert (not b!79369))

(assert (not b!79333))

(assert (not d!55061))

(assert (not bs!37912))

(assert (not bs!37928))

(assert (not bs!37929))

(assert (not b!79345))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!55077 () Bool)

(declare-fun c!20180 () Bool)

(assert (=> d!55077 (= c!20180 (is-Nil!604 lt!18217))))

(declare-fun e!42942 () (Set Int))

(assert (=> d!55077 (= (content!107 lt!18217) e!42942)))

(declare-fun b!79370 () Bool)

(assert (=> b!79370 (= e!42942 (as emptyset (Set Int)))))

(declare-fun b!79371 () Bool)

(assert (=> b!79371 (= e!42942 (union (insert (h!888 lt!18217) (as emptyset (Set Int))) (content!107 (t!47631 lt!18217))))))

(assert (= (and d!55077 c!20180) b!79370))

(assert (= (and d!55077 (not c!20180)) b!79371))

(declare-fun m!73834 () Bool)

(assert (=> b!79371 m!73834))

(declare-fun m!73836 () Bool)

(assert (=> b!79371 m!73836))

(assert (=> b!79329 d!55077))

(assert (=> b!79329 d!55069))

(assert (=> b!79329 d!55059))

(declare-fun d!55079 () Bool)

(declare-fun lt!18224 () Bool)

(assert (=> d!55079 (= lt!18224 (member lt!18208 (content!107 (t!47631 l!1419))))))

(declare-fun e!42944 () Bool)

(assert (=> d!55079 (= lt!18224 e!42944)))

(declare-fun res!40075 () Bool)

(assert (=> d!55079 (=> (not res!40075) (not e!42944))))

(assert (=> d!55079 (= res!40075 (is-Cons!602 (t!47631 l!1419)))))

(assert (=> d!55079 (= (contains!46 (t!47631 l!1419) lt!18208) lt!18224)))

(declare-fun b!79372 () Bool)

(declare-fun e!42943 () Bool)

(assert (=> b!79372 (= e!42944 e!42943)))

(declare-fun res!40074 () Bool)

(assert (=> b!79372 (=> res!40074 e!42943)))

(assert (=> b!79372 (= res!40074 (= (h!888 (t!47631 l!1419)) lt!18208))))

(declare-fun b!79373 () Bool)

(assert (=> b!79373 (= e!42943 (contains!46 (t!47631 (t!47631 l!1419)) lt!18208))))

(assert (= (and d!55079 res!40075) b!79372))

(assert (= (and b!79372 (not res!40074)) b!79373))

(assert (=> d!55079 m!73702))

(declare-fun bs!37945 () Bool)

(declare-fun m!73838 () Bool)

(assert (= bs!37945 m!73838))

(assert (=> bs!37945 s!2105))

(assert (=> bs!37945 s!2115))

(assert (=> bs!37945 s!2127))

(assert (=> bs!37945 s!2145))

(assert (=> d!55079 m!73838))

(declare-fun bs!37946 () Bool)

(declare-fun m!73840 () Bool)

(assert (= bs!37946 m!73840))

(assert (=> bs!37946 s!2105))

(assert (=> bs!37946 s!2109))

(assert (=> bs!37946 s!2115))

(assert (=> bs!37946 s!2117))

(assert (=> bs!37946 s!2127))

(assert (=> bs!37946 s!2135))

(assert (=> bs!37946 s!2143))

(assert (=> bs!37946 s!2145))

(assert (=> bs!37946 s!2153))

(assert (=> bs!37946 s!2161))

(assert (=> b!79373 m!73840))

(assert (=> b!79345 d!55079))

(declare-fun d!55081 () Bool)

(declare-fun c!20181 () Bool)

(assert (=> d!55081 (= c!20181 (is-Nil!604 (t!47631 (t!47631 r!611))))))

(declare-fun e!42945 () (Set Int))

(assert (=> d!55081 (= (content!107 (t!47631 (t!47631 r!611))) e!42945)))

(declare-fun b!79374 () Bool)

(assert (=> b!79374 (= e!42945 (as emptyset (Set Int)))))

(declare-fun b!79375 () Bool)

(assert (=> b!79375 (= e!42945 (union (insert (h!888 (t!47631 (t!47631 r!611))) (as emptyset (Set Int))) (content!107 (t!47631 (t!47631 (t!47631 r!611))))))))

(assert (= (and d!55081 c!20181) b!79374))

(assert (= (and d!55081 (not c!20181)) b!79375))

(declare-fun m!73842 () Bool)

(assert (=> b!79375 m!73842))

(declare-fun m!73844 () Bool)

(assert (=> b!79375 m!73844))

(assert (=> b!79307 d!55081))

(declare-fun d!55083 () Bool)

(declare-fun lt!18225 () Bool)

(assert (=> d!55083 (= lt!18225 (member (h!888 l!1419) (content!107 l!1419)))))

(declare-fun e!42947 () Bool)

(assert (=> d!55083 (= lt!18225 e!42947)))

(declare-fun res!40077 () Bool)

(assert (=> d!55083 (=> (not res!40077) (not e!42947))))

(assert (=> d!55083 (= res!40077 (is-Cons!602 l!1419))))

(assert (=> d!55083 (= (contains!46 l!1419 (h!888 l!1419)) lt!18225)))

(declare-fun b!79376 () Bool)

(declare-fun e!42946 () Bool)

(assert (=> b!79376 (= e!42947 e!42946)))

(declare-fun res!40076 () Bool)

(assert (=> b!79376 (=> res!40076 e!42946)))

(assert (=> b!79376 (= res!40076 (= (h!888 l!1419) (h!888 l!1419)))))

(declare-fun b!79377 () Bool)

(assert (=> b!79377 (= e!42946 (contains!46 (t!47631 l!1419) (h!888 l!1419)))))

(assert (= (and d!55083 res!40077) b!79376))

(assert (= (and b!79376 (not res!40076)) b!79377))

(assert (=> d!55083 m!73680))

(assert (=> d!55083 m!73798))

(declare-fun bs!37947 () Bool)

(declare-fun m!73846 () Bool)

(assert (= bs!37947 m!73846))

(assert (=> bs!37947 s!2107))

(assert (=> bs!37947 s!2119))

(assert (=> bs!37947 s!2111))

(assert (=> bs!37947 s!2123))

(assert (=> bs!37947 s!2131))

(assert (=> bs!37947 s!2133))

(assert (=> bs!37947 s!2141))

(assert (=> bs!37947 s!2149))

(assert (=> bs!37947 s!2151))

(assert (=> bs!37947 s!2159))

(assert (=> b!79377 m!73846))

(assert (=> bs!37914 d!55083))

(declare-fun b!79392 () Bool)

(declare-fun e!42956 () List!644)

(assert (=> b!79392 (= e!42956 (Cons!602 (h!888 (quickSort!1 Nil!604)) (appendSorted!0 (t!47631 (quickSort!1 Nil!604)) (Cons!602 (h!888 l!1419) (quickSort!1 Nil!604)))))))

(declare-fun b!79393 () Bool)

(declare-fun e!42958 () Bool)

(declare-fun e!42959 () Bool)

(assert (=> b!79393 (= e!42958 e!42959)))

(declare-fun res!40091 () Bool)

(assert (=> b!79393 (=> res!40091 e!42959)))

(assert (=> b!79393 (= res!40091 (isEmpty!659 (quickSort!1 Nil!604)))))

(declare-fun b!79394 () Bool)

(declare-fun res!40089 () Bool)

(assert (=> b!79394 (=> res!40089 e!42959)))

(assert (=> b!79394 (= res!40089 (isEmpty!659 (Cons!602 (h!888 l!1419) (quickSort!1 Nil!604))))))

(declare-fun b!79395 () Bool)

(declare-fun res!40090 () Bool)

(assert (=> b!79395 (=> (not res!40090) (not e!42958))))

(assert (=> b!79395 (= res!40090 (isSorted!2 (Cons!602 (h!888 l!1419) (quickSort!1 Nil!604))))))

(declare-fun b!79396 () Bool)

(declare-fun e!42957 () Bool)

(declare-fun lt!18228 () List!644)

(assert (=> b!79396 (= e!42957 (= (content!107 lt!18228) (union (content!107 (quickSort!1 Nil!604)) (content!107 (Cons!602 (h!888 l!1419) (quickSort!1 Nil!604))))))))

(declare-fun b!79397 () Bool)

(assert (=> b!79397 (= e!42959 (<= (last!3 (quickSort!1 Nil!604)) (head!1041 (Cons!602 (h!888 l!1419) (quickSort!1 Nil!604)))))))

(declare-fun b!79398 () Bool)

(assert (=> b!79398 (= e!42956 (Cons!602 (h!888 l!1419) (quickSort!1 Nil!604)))))

(declare-fun d!55085 () Bool)

(assert (=> d!55085 e!42957))

(declare-fun res!40093 () Bool)

(assert (=> d!55085 (=> (not res!40093) (not e!42957))))

(assert (=> d!55085 (= res!40093 (isSorted!2 lt!18228))))

(assert (=> d!55085 (= lt!18228 e!42956)))

(declare-fun c!20184 () Bool)

(assert (=> d!55085 (= c!20184 (is-Nil!604 (quickSort!1 Nil!604)))))

(assert (=> d!55085 e!42958))

(declare-fun res!40092 () Bool)

(assert (=> d!55085 (=> (not res!40092) (not e!42958))))

(assert (=> d!55085 (= res!40092 (isSorted!2 (quickSort!1 Nil!604)))))

(assert (=> d!55085 (= (appendSorted!0 (quickSort!1 Nil!604) (Cons!602 (h!888 l!1419) (quickSort!1 Nil!604))) lt!18228)))

(assert (= (and d!55085 res!40092) b!79395))

(assert (= (and b!79395 res!40090) b!79393))

(assert (= (and b!79393 (not res!40091)) b!79394))

(assert (= (and b!79394 (not res!40089)) b!79397))

(assert (= (and d!55085 c!20184) b!79398))

(assert (= (and d!55085 (not c!20184)) b!79392))

(assert (= (and d!55085 res!40093) b!79396))

(declare-fun m!73848 () Bool)

(assert (=> b!79395 m!73848))

(assert (=> b!79393 m!73754))

(declare-fun m!73850 () Bool)

(assert (=> b!79393 m!73850))

(declare-fun m!73852 () Bool)

(assert (=> b!79392 m!73852))

(assert (=> b!79397 m!73754))

(declare-fun m!73854 () Bool)

(assert (=> b!79397 m!73854))

(declare-fun m!73856 () Bool)

(assert (=> b!79397 m!73856))

(declare-fun m!73858 () Bool)

(assert (=> b!79394 m!73858))

(declare-fun m!73860 () Bool)

(assert (=> d!55085 m!73860))

(assert (=> d!55085 m!73754))

(declare-fun m!73862 () Bool)

(assert (=> d!55085 m!73862))

(declare-fun m!73864 () Bool)

(assert (=> b!79396 m!73864))

(assert (=> b!79396 m!73754))

(declare-fun m!73866 () Bool)

(assert (=> b!79396 m!73866))

(declare-fun m!73868 () Bool)

(assert (=> b!79396 m!73868))

(assert (=> b!79328 d!55085))

(declare-fun d!55087 () Bool)

(declare-fun e!42961 () Bool)

(assert (=> d!55087 e!42961))

(declare-fun res!40094 () Bool)

(assert (=> d!55087 (=> (not res!40094) (not e!42961))))

(declare-fun lt!18229 () List!644)

(assert (=> d!55087 (= res!40094 (isSorted!2 lt!18229))))

(declare-fun e!42960 () List!644)

(assert (=> d!55087 (= lt!18229 e!42960)))

(declare-fun c!20185 () Bool)

(assert (=> d!55087 (= c!20185 (is-Nil!604 Nil!604))))

(assert (=> d!55087 (= (quickSort!1 Nil!604) lt!18229)))

(declare-fun b!79399 () Bool)

(assert (=> b!79399 (= e!42960 Nil!604)))

(declare-fun b!79400 () Bool)

(assert (=> b!79400 (= e!42960 (par!0 (h!888 Nil!604) Nil!604 Nil!604 (t!47631 Nil!604)))))

(declare-fun b!79401 () Bool)

(assert (=> b!79401 (= e!42961 (= (content!107 lt!18229) (content!107 Nil!604)))))

(assert (= (and d!55087 c!20185) b!79399))

(assert (= (and d!55087 (not c!20185)) b!79400))

(assert (= (and d!55087 res!40094) b!79401))

(declare-fun m!73870 () Bool)

(assert (=> d!55087 m!73870))

(declare-fun m!73872 () Bool)

(assert (=> b!79400 m!73872))

(declare-fun m!73874 () Bool)

(assert (=> b!79401 m!73874))

(assert (=> b!79401 m!73752))

(assert (=> b!79328 d!55087))

(declare-fun d!55089 () Bool)

(declare-fun lt!18230 () Bool)

(assert (=> d!55089 (= lt!18230 (member (h!888 r!611) (content!107 l!1419)))))

(declare-fun e!42963 () Bool)

(assert (=> d!55089 (= lt!18230 e!42963)))

(declare-fun res!40096 () Bool)

(assert (=> d!55089 (=> (not res!40096) (not e!42963))))

(assert (=> d!55089 (= res!40096 (is-Cons!602 l!1419))))

(assert (=> d!55089 (= (contains!46 l!1419 (h!888 r!611)) lt!18230)))

(declare-fun b!79402 () Bool)

(declare-fun e!42962 () Bool)

(assert (=> b!79402 (= e!42963 e!42962)))

(declare-fun res!40095 () Bool)

(assert (=> b!79402 (=> res!40095 e!42962)))

(assert (=> b!79402 (= res!40095 (= (h!888 l!1419) (h!888 r!611)))))

(declare-fun b!79403 () Bool)

(assert (=> b!79403 (= e!42962 (contains!46 (t!47631 l!1419) (h!888 r!611)))))

(assert (= (and d!55089 res!40096) b!79402))

(assert (= (and b!79402 (not res!40095)) b!79403))

(assert (=> d!55089 m!73680))

(assert (=> d!55089 m!73790))

(declare-fun bs!37948 () Bool)

(declare-fun m!73876 () Bool)

(assert (= bs!37948 m!73876))

(assert (=> bs!37948 s!2103))

(assert (=> bs!37948 s!2121))

(assert (=> bs!37948 s!2113))

(assert (=> bs!37948 s!2125))

(assert (=> bs!37948 s!2129))

(assert (=> bs!37948 s!2137))

(assert (=> bs!37948 s!2139))

(assert (=> bs!37948 s!2147))

(assert (=> bs!37948 s!2155))

(assert (=> bs!37948 s!2157))

(assert (=> b!79403 m!73876))

(assert (=> bs!37912 d!55089))

(assert (=> d!55073 d!55069))

(declare-fun d!55091 () Bool)

(declare-fun lt!18231 () Bool)

(assert (=> d!55091 (= lt!18231 (member lt!18208 (content!107 (t!47631 r!611))))))

(declare-fun e!42965 () Bool)

(assert (=> d!55091 (= lt!18231 e!42965)))

(declare-fun res!40098 () Bool)

(assert (=> d!55091 (=> (not res!40098) (not e!42965))))

(assert (=> d!55091 (= res!40098 (is-Cons!602 (t!47631 r!611)))))

(assert (=> d!55091 (= (contains!46 (t!47631 r!611) lt!18208) lt!18231)))

(declare-fun b!79404 () Bool)

(declare-fun e!42964 () Bool)

(assert (=> b!79404 (= e!42965 e!42964)))

(declare-fun res!40097 () Bool)

(assert (=> b!79404 (=> res!40097 e!42964)))

(assert (=> b!79404 (= res!40097 (= (h!888 (t!47631 r!611)) lt!18208))))

(declare-fun b!79405 () Bool)

(assert (=> b!79405 (= e!42964 (contains!46 (t!47631 (t!47631 r!611)) lt!18208))))

(assert (= (and d!55091 res!40098) b!79404))

(assert (= (and b!79404 (not res!40097)) b!79405))

(assert (=> d!55091 m!73714))

(declare-fun bs!37949 () Bool)

(declare-fun m!73878 () Bool)

(assert (= bs!37949 m!73878))

(assert (=> bs!37949 s!2105))

(assert (=> bs!37949 s!2115))

(assert (=> bs!37949 s!2127))

(assert (=> bs!37949 s!2145))

(assert (=> d!55091 m!73878))

(declare-fun bs!37950 () Bool)

(declare-fun m!73880 () Bool)

(assert (= bs!37950 m!73880))

(assert (=> bs!37950 s!2105))

(assert (=> bs!37950 s!2109))

(assert (=> bs!37950 s!2115))

(assert (=> bs!37950 s!2117))

(assert (=> bs!37950 s!2127))

(assert (=> bs!37950 s!2135))

(assert (=> bs!37950 s!2143))

(assert (=> bs!37950 s!2145))

(assert (=> bs!37950 s!2153))

(assert (=> bs!37950 s!2161))

(assert (=> b!79405 m!73880))

(assert (=> b!79347 d!55091))

(declare-fun d!55093 () Bool)

(declare-fun m!73882 () Bool)

(assert (=> d!55093 m!73882))

(declare-fun bs!37951 () Bool)

(assert (= bs!37951 (and d!55093 d!55055)))

(assert (=> (and bs!37951 (= (ite lt!18214 (Cons!602 (h!888 (t!47631 r!611)) Nil!604) Nil!604) Nil!604) (= (content!107 (ite lt!18214 (Cons!602 (h!888 (t!47631 r!611)) Nil!604) Nil!604)) (content!107 Nil!604))) (= true true)))

(declare-fun bs!37952 () Bool)

(assert (= bs!37952 (and d!55093 start!10444)))

(assert (=> (and bs!37952 (= (ite lt!18214 (Cons!602 (h!888 (t!47631 r!611)) Nil!604) Nil!604) l!1419) (= (content!107 (ite lt!18214 (Cons!602 (h!888 (t!47631 r!611)) Nil!604) Nil!604)) (content!107 l!1419))) (= true true)))

(declare-fun bs!37953 () Bool)

(assert (= bs!37953 (and d!55093 b!79251)))

(assert (=> (and bs!37953 (= (ite lt!18214 (Cons!602 (h!888 (t!47631 r!611)) Nil!604) Nil!604) r!611) (= (content!107 (ite lt!18214 (Cons!602 (h!888 (t!47631 r!611)) Nil!604) Nil!604)) (content!107 r!611))) (= true true)))

(declare-fun bs!37954 () Bool)

(assert (= bs!37954 (and d!55093 d!55057)))

(assert (=> (and bs!37954 (= (ite lt!18214 (Cons!602 (h!888 (t!47631 r!611)) Nil!604) Nil!604) Nil!604) (= (content!107 (ite lt!18214 (Cons!602 (h!888 (t!47631 r!611)) Nil!604) Nil!604)) (content!107 Nil!604))) (= true true)))

(declare-fun bs!37955 () Bool)

(declare-fun b!79406 () Bool)

(assert (= bs!37955 (and b!79406 start!10444)))

(assert (=> (and bs!37955 (= (ite lt!18214 (Cons!602 (h!888 (t!47631 r!611)) Nil!604) Nil!604) l!1419) (= (h!888 r!611) x!29075)) (= true true)))

(declare-fun bs!37956 () Bool)

(assert (= bs!37956 (and b!79406 b!79322)))

(assert (=> (and bs!37956 (= (ite lt!18214 (Cons!602 (h!888 (t!47631 r!611)) Nil!604) Nil!604) Nil!604)) (= true true)))

(declare-fun bs!37957 () Bool)

(assert (= bs!37957 (and b!79406 b!79327)))

(assert (=> (and bs!37957 (= (ite lt!18214 (Cons!602 (h!888 (t!47631 r!611)) Nil!604) Nil!604) Nil!604) (= (h!888 r!611) (h!888 l!1419))) (= true true)))

(declare-fun b!79409 () Bool)

(declare-fun m!73884 () Bool)

(assert (=> b!79409 m!73884))

(declare-fun bs!37958 () Bool)

(assert (= bs!37958 (and b!79409 d!55055)))

(assert (=> (and bs!37958 (= (ite lt!18214 Nil!604 (Cons!602 (h!888 (t!47631 r!611)) Nil!604)) Nil!604) (= (content!107 (ite lt!18214 Nil!604 (Cons!602 (h!888 (t!47631 r!611)) Nil!604))) (content!107 Nil!604))) (= true true)))

(declare-fun bs!37959 () Bool)

(assert (= bs!37959 (and b!79409 start!10444)))

(assert (=> (and bs!37959 (= (ite lt!18214 Nil!604 (Cons!602 (h!888 (t!47631 r!611)) Nil!604)) l!1419) (= (content!107 (ite lt!18214 Nil!604 (Cons!602 (h!888 (t!47631 r!611)) Nil!604))) (content!107 l!1419))) (= true true)))

(declare-fun bs!37960 () Bool)

(assert (= bs!37960 (and b!79409 b!79251)))

(assert (=> (and bs!37960 (= (ite lt!18214 Nil!604 (Cons!602 (h!888 (t!47631 r!611)) Nil!604)) r!611) (= (content!107 (ite lt!18214 Nil!604 (Cons!602 (h!888 (t!47631 r!611)) Nil!604))) (content!107 r!611))) (= true true)))

(declare-fun bs!37961 () Bool)

(assert (= bs!37961 (and b!79409 d!55057)))

(assert (=> (and bs!37961 (= (ite lt!18214 Nil!604 (Cons!602 (h!888 (t!47631 r!611)) Nil!604)) Nil!604) (= (content!107 (ite lt!18214 Nil!604 (Cons!602 (h!888 (t!47631 r!611)) Nil!604))) (content!107 Nil!604))) (= true true)))

(declare-fun bs!37962 () Bool)

(assert (= bs!37962 (and b!79409 d!55093)))

(assert (=> (and bs!37962 (= (ite lt!18214 Nil!604 (Cons!602 (h!888 (t!47631 r!611)) Nil!604)) (ite lt!18214 (Cons!602 (h!888 (t!47631 r!611)) Nil!604) Nil!604)) (= (content!107 (ite lt!18214 Nil!604 (Cons!602 (h!888 (t!47631 r!611)) Nil!604))) (content!107 (ite lt!18214 (Cons!602 (h!888 (t!47631 r!611)) Nil!604) Nil!604)))) (= true true)))

(declare-fun bs!37963 () Bool)

(assert (= bs!37963 (and b!79409 b!79325)))

(assert (=> (and bs!37963 (= (ite lt!18214 Nil!604 (Cons!602 (h!888 (t!47631 r!611)) Nil!604)) Nil!604)) (= true true)))

(assert (=> (and bs!37960 (= (ite lt!18214 Nil!604 (Cons!602 (h!888 (t!47631 r!611)) Nil!604)) r!611) (= (h!888 r!611) x!29075)) (= true true)))

(declare-fun bs!37964 () Bool)

(assert (= bs!37964 (and b!79409 b!79330)))

(assert (=> (and bs!37964 (= (ite lt!18214 Nil!604 (Cons!602 (h!888 (t!47631 r!611)) Nil!604)) Nil!604) (= (h!888 r!611) (h!888 l!1419))) (= true true)))

(declare-fun res!40100 () Bool)

(declare-fun e!42966 () Bool)

(assert (=> b!79406 (=> (not res!40100) (not e!42966))))

(assert (=> b!79406 (= res!40100 true)))

(declare-fun b!79407 () Bool)

(declare-fun e!42968 () List!644)

(assert (=> b!79407 (= e!42968 (appendSorted!0 (quickSort!1 (ite lt!18214 (Cons!602 (h!888 (t!47631 r!611)) Nil!604) Nil!604)) (Cons!602 (h!888 r!611) (quickSort!1 (ite lt!18214 Nil!604 (Cons!602 (h!888 (t!47631 r!611)) Nil!604))))))))

(declare-fun b!79408 () Bool)

(declare-fun lt!18233 () List!644)

(declare-fun e!42967 () Bool)

(assert (=> b!79408 (= e!42967 (= (content!107 lt!18233) (insert (h!888 r!611) (union (union (content!107 (ite lt!18214 (Cons!602 (h!888 (t!47631 r!611)) Nil!604) Nil!604)) (content!107 (ite lt!18214 Nil!604 (Cons!602 (h!888 (t!47631 r!611)) Nil!604)))) (content!107 (t!47631 (t!47631 r!611)))))))))

(assert (=> b!79409 (= e!42966 true)))

(assert (=> b!79409 true))

(assert (=> d!55093 e!42967))

(declare-fun res!40099 () Bool)

(assert (=> d!55093 (=> (not res!40099) (not e!42967))))

(assert (=> d!55093 (= res!40099 (isSorted!2 lt!18233))))

(assert (=> d!55093 (= lt!18233 e!42968)))

(declare-fun c!20186 () Bool)

(assert (=> d!55093 (= c!20186 (is-Nil!604 (t!47631 (t!47631 r!611))))))

(assert (=> d!55093 e!42966))

(declare-fun res!40101 () Bool)

(assert (=> d!55093 (=> (not res!40101) (not e!42966))))

(assert (=> d!55093 (= res!40101 true)))

(assert (=> d!55093 (= (par!0 (h!888 r!611) (ite lt!18214 (Cons!602 (h!888 (t!47631 r!611)) Nil!604) Nil!604) (ite lt!18214 Nil!604 (Cons!602 (h!888 (t!47631 r!611)) Nil!604)) (t!47631 (t!47631 r!611))) lt!18233)))

(declare-fun b!79410 () Bool)

(declare-fun lt!18232 () Bool)

(assert (=> b!79410 (= e!42968 (par!0 (h!888 r!611) (ite lt!18232 (Cons!602 (h!888 (t!47631 (t!47631 r!611))) (ite lt!18214 (Cons!602 (h!888 (t!47631 r!611)) Nil!604) Nil!604)) (ite lt!18214 (Cons!602 (h!888 (t!47631 r!611)) Nil!604) Nil!604)) (ite lt!18232 (ite lt!18214 Nil!604 (Cons!602 (h!888 (t!47631 r!611)) Nil!604)) (Cons!602 (h!888 (t!47631 (t!47631 r!611))) (ite lt!18214 Nil!604 (Cons!602 (h!888 (t!47631 r!611)) Nil!604)))) (t!47631 (t!47631 (t!47631 r!611)))))))

(assert (=> b!79410 (= lt!18232 (<= (h!888 (t!47631 (t!47631 r!611))) (h!888 r!611)))))

(assert (= (and d!55093 res!40101) b!79406))

(assert (= (and b!79406 res!40100) b!79409))

(assert (= (and d!55093 c!20186) b!79407))

(assert (= (and d!55093 (not c!20186)) b!79410))

(assert (= (and d!55093 res!40099) b!79408))

(declare-fun m!73886 () Bool)

(assert (=> b!79407 m!73886))

(declare-fun m!73888 () Bool)

(assert (=> b!79407 m!73888))

(assert (=> b!79407 m!73886))

(declare-fun m!73890 () Bool)

(assert (=> b!79407 m!73890))

(declare-fun m!73892 () Bool)

(assert (=> b!79408 m!73892))

(assert (=> b!79408 m!73750))

(assert (=> b!79408 m!73884))

(declare-fun bs!37965 () Bool)

(declare-fun m!73894 () Bool)

(assert (= bs!37965 m!73894))

(assert (=> bs!37965 s!2103))

(assert (=> bs!37965 s!2113))

(assert (=> bs!37965 s!2129))

(assert (=> bs!37965 s!2147))

(assert (=> b!79408 m!73894))

(assert (=> b!79408 m!73882))

(declare-fun m!73896 () Bool)

(assert (=> d!55093 m!73896))

(declare-fun m!73898 () Bool)

(assert (=> b!79410 m!73898))

(assert (=> b!79326 d!55093))

(declare-fun d!55095 () Bool)

(declare-fun lt!18234 () Bool)

(assert (=> d!55095 (= lt!18234 (member lt!18209 (content!107 (t!47631 l1!422))))))

(declare-fun e!42970 () Bool)

(assert (=> d!55095 (= lt!18234 e!42970)))

(declare-fun res!40103 () Bool)

(assert (=> d!55095 (=> (not res!40103) (not e!42970))))

(assert (=> d!55095 (= res!40103 (is-Cons!602 (t!47631 l1!422)))))

(assert (=> d!55095 (= (contains!46 (t!47631 l1!422) lt!18209) lt!18234)))

(declare-fun b!79411 () Bool)

(declare-fun e!42969 () Bool)

(assert (=> b!79411 (= e!42970 e!42969)))

(declare-fun res!40102 () Bool)

(assert (=> b!79411 (=> res!40102 e!42969)))

(assert (=> b!79411 (= res!40102 (= (h!888 (t!47631 l1!422)) lt!18209))))

(declare-fun b!79412 () Bool)

(assert (=> b!79412 (= e!42969 (contains!46 (t!47631 (t!47631 l1!422)) lt!18209))))

(assert (= (and d!55095 res!40103) b!79411))

(assert (= (and b!79411 (not res!40102)) b!79412))

(declare-fun m!73900 () Bool)

(assert (=> d!55095 m!73900))

(declare-fun m!73902 () Bool)

(assert (=> d!55095 m!73902))

(declare-fun m!73904 () Bool)

(assert (=> b!79412 m!73904))

(assert (=> d!55043 d!55095))

(declare-fun d!55097 () Bool)

(assert (=> d!55097 (= (isEmpty!659 (t!47631 l1!422)) (is-Nil!604 (t!47631 l1!422)))))

(assert (=> d!55043 d!55097))

(declare-fun d!55099 () Bool)

(declare-fun c!20187 () Bool)

(assert (=> d!55099 (= c!20187 (is-Nil!604 l1!422))))

(declare-fun e!42971 () (Set Int))

(assert (=> d!55099 (= (content!107 l1!422) e!42971)))

(declare-fun b!79413 () Bool)

(assert (=> b!79413 (= e!42971 (as emptyset (Set Int)))))

(declare-fun b!79414 () Bool)

(assert (=> b!79414 (= e!42971 (union (insert (h!888 l1!422) (as emptyset (Set Int))) (content!107 (t!47631 l1!422))))))

(assert (= (and d!55099 c!20187) b!79413))

(assert (= (and d!55099 (not c!20187)) b!79414))

(declare-fun m!73906 () Bool)

(assert (=> b!79414 m!73906))

(assert (=> b!79414 m!73900))

(assert (=> d!55061 d!55099))

(declare-fun d!55101 () Bool)

(declare-fun lt!18235 () Bool)

(assert (=> d!55101 (= lt!18235 (member (h!888 r!611) (content!107 r!611)))))

(declare-fun e!42973 () Bool)

(assert (=> d!55101 (= lt!18235 e!42973)))

(declare-fun res!40105 () Bool)

(assert (=> d!55101 (=> (not res!40105) (not e!42973))))

(assert (=> d!55101 (= res!40105 (is-Cons!602 r!611))))

(assert (=> d!55101 (= (contains!46 r!611 (h!888 r!611)) lt!18235)))

(declare-fun b!79415 () Bool)

(declare-fun e!42972 () Bool)

(assert (=> b!79415 (= e!42973 e!42972)))

(declare-fun res!40104 () Bool)

(assert (=> b!79415 (=> res!40104 e!42972)))

(assert (=> b!79415 (= res!40104 (= (h!888 r!611) (h!888 r!611)))))

(declare-fun b!79416 () Bool)

(assert (=> b!79416 (= e!42972 (contains!46 (t!47631 r!611) (h!888 r!611)))))

(assert (= (and d!55101 res!40105) b!79415))

(assert (= (and b!79415 (not res!40104)) b!79416))

(assert (=> d!55101 m!73682))

(assert (=> d!55101 m!73806))

(declare-fun bs!37966 () Bool)

(declare-fun m!73908 () Bool)

(assert (= bs!37966 m!73908))

(assert (=> bs!37966 s!2103))

(assert (=> bs!37966 s!2121))

(assert (=> bs!37966 s!2113))

(assert (=> bs!37966 s!2125))

(assert (=> bs!37966 s!2129))

(assert (=> bs!37966 s!2137))

(assert (=> bs!37966 s!2139))

(assert (=> bs!37966 s!2147))

(assert (=> bs!37966 s!2155))

(assert (=> bs!37966 s!2157))

(assert (=> b!79416 m!73908))

(assert (=> bs!37917 d!55101))

(declare-fun d!55103 () Bool)

(declare-fun lt!18236 () Int)

(assert (=> d!55103 (contains!46 (t!47631 (t!47631 l1!422)) lt!18236)))

(declare-fun e!42974 () Int)

(assert (=> d!55103 (= lt!18236 e!42974)))

(declare-fun c!20188 () Bool)

(assert (=> d!55103 (= c!20188 (and (is-Cons!602 (t!47631 (t!47631 l1!422))) (is-Nil!604 (t!47631 (t!47631 (t!47631 l1!422))))))))

(assert (=> d!55103 (not (isEmpty!659 (t!47631 (t!47631 l1!422))))))

(assert (=> d!55103 (= (last!3 (t!47631 (t!47631 l1!422))) lt!18236)))

(declare-fun b!79417 () Bool)

(assert (=> b!79417 (= e!42974 (h!888 (t!47631 (t!47631 l1!422))))))

(declare-fun b!79418 () Bool)

(assert (=> b!79418 (= e!42974 (last!3 (t!47631 (t!47631 (t!47631 l1!422)))))))

(assert (= (and d!55103 c!20188) b!79417))

(assert (= (and d!55103 (not c!20188)) b!79418))

(declare-fun m!73910 () Bool)

(assert (=> d!55103 m!73910))

(declare-fun m!73912 () Bool)

(assert (=> d!55103 m!73912))

(declare-fun m!73914 () Bool)

(assert (=> b!79418 m!73914))

(assert (=> b!79297 d!55103))

(declare-fun d!55105 () Bool)

(declare-fun c!20189 () Bool)

(assert (=> d!55105 (= c!20189 (is-Nil!604 (t!47631 lt!18204)))))

(declare-fun e!42975 () (Set Int))

(assert (=> d!55105 (= (content!107 (t!47631 lt!18204)) e!42975)))

(declare-fun b!79419 () Bool)

(assert (=> b!79419 (= e!42975 (as emptyset (Set Int)))))

(declare-fun b!79420 () Bool)

(assert (=> b!79420 (= e!42975 (union (insert (h!888 (t!47631 lt!18204)) (as emptyset (Set Int))) (content!107 (t!47631 (t!47631 lt!18204)))))))

(assert (= (and d!55105 c!20189) b!79419))

(assert (= (and d!55105 (not c!20189)) b!79420))

(declare-fun m!73916 () Bool)

(assert (=> b!79420 m!73916))

(declare-fun m!73918 () Bool)

(assert (=> b!79420 m!73918))

(assert (=> b!79303 d!55105))

(declare-fun d!55107 () Bool)

(declare-fun res!40106 () Bool)

(declare-fun e!42976 () Bool)

(assert (=> d!55107 (=> res!40106 e!42976)))

(assert (=> d!55107 (= res!40106 (not (and (is-Cons!602 (t!47631 (t!47631 l1!422))) (is-Cons!602 (t!47631 (t!47631 (t!47631 l1!422)))))))))

(assert (=> d!55107 (= (isSorted!2 (t!47631 (t!47631 l1!422))) e!42976)))

(declare-fun b!79421 () Bool)

(declare-fun e!42977 () Bool)

(assert (=> b!79421 (= e!42976 e!42977)))

(declare-fun res!40107 () Bool)

(assert (=> b!79421 (=> (not res!40107) (not e!42977))))

(assert (=> b!79421 (= res!40107 (<= (h!888 (t!47631 (t!47631 l1!422))) (h!888 (t!47631 (t!47631 (t!47631 l1!422))))))))

(declare-fun b!79422 () Bool)

(assert (=> b!79422 (= e!42977 (isSorted!2 (t!47631 (t!47631 (t!47631 l1!422)))))))

(assert (= (and d!55107 (not res!40106)) b!79421))

(assert (= (and b!79421 res!40107) b!79422))

(declare-fun m!73920 () Bool)

(assert (=> b!79422 m!73920))

(assert (=> b!79341 d!55107))

(declare-fun d!55109 () Bool)

(declare-fun lt!18237 () Bool)

(assert (=> d!55109 (= lt!18237 (member lt!18208 (content!107 (t!47631 l1!422))))))

(declare-fun e!42979 () Bool)

(assert (=> d!55109 (= lt!18237 e!42979)))

(declare-fun res!40109 () Bool)

(assert (=> d!55109 (=> (not res!40109) (not e!42979))))

(assert (=> d!55109 (= res!40109 (is-Cons!602 (t!47631 l1!422)))))

(assert (=> d!55109 (= (contains!46 (t!47631 l1!422) lt!18208) lt!18237)))

(declare-fun b!79423 () Bool)

(declare-fun e!42978 () Bool)

(assert (=> b!79423 (= e!42979 e!42978)))

(declare-fun res!40108 () Bool)

(assert (=> b!79423 (=> res!40108 e!42978)))

(assert (=> b!79423 (= res!40108 (= (h!888 (t!47631 l1!422)) lt!18208))))

(declare-fun b!79424 () Bool)

(assert (=> b!79424 (= e!42978 (contains!46 (t!47631 (t!47631 l1!422)) lt!18208))))

(assert (= (and d!55109 res!40109) b!79423))

(assert (= (and b!79423 (not res!40108)) b!79424))

(assert (=> d!55109 m!73900))

(declare-fun bs!37967 () Bool)

(declare-fun m!73922 () Bool)

(assert (= bs!37967 m!73922))

(assert (=> bs!37967 s!2105))

(assert (=> bs!37967 s!2115))

(assert (=> bs!37967 s!2127))

(assert (=> bs!37967 s!2145))

(assert (=> d!55109 m!73922))

(declare-fun bs!37968 () Bool)

(declare-fun m!73924 () Bool)

(assert (= bs!37968 m!73924))

(assert (=> bs!37968 s!2105))

(assert (=> bs!37968 s!2109))

(assert (=> bs!37968 s!2115))

(assert (=> bs!37968 s!2117))

(assert (=> bs!37968 s!2127))

(assert (=> bs!37968 s!2135))

(assert (=> bs!37968 s!2143))

(assert (=> bs!37968 s!2145))

(assert (=> bs!37968 s!2153))

(assert (=> bs!37968 s!2161))

(assert (=> b!79424 m!73924))

(assert (=> b!79339 d!55109))

(declare-fun d!55111 () Bool)

(declare-fun lt!18238 () Bool)

(assert (=> d!55111 (= lt!18238 (member (h!888 l!1419) (content!107 r!611)))))

(declare-fun e!42981 () Bool)

(assert (=> d!55111 (= lt!18238 e!42981)))

(declare-fun res!40111 () Bool)

(assert (=> d!55111 (=> (not res!40111) (not e!42981))))

(assert (=> d!55111 (= res!40111 (is-Cons!602 r!611))))

(assert (=> d!55111 (= (contains!46 r!611 (h!888 l!1419)) lt!18238)))

(declare-fun b!79425 () Bool)

(declare-fun e!42980 () Bool)

(assert (=> b!79425 (= e!42981 e!42980)))

(declare-fun res!40110 () Bool)

(assert (=> b!79425 (=> res!40110 e!42980)))

(assert (=> b!79425 (= res!40110 (= (h!888 r!611) (h!888 l!1419)))))

(declare-fun b!79426 () Bool)

(assert (=> b!79426 (= e!42980 (contains!46 (t!47631 r!611) (h!888 l!1419)))))

(assert (= (and d!55111 res!40111) b!79425))

(assert (= (and b!79425 (not res!40110)) b!79426))

(assert (=> d!55111 m!73682))

(assert (=> d!55111 m!73802))

(declare-fun bs!37969 () Bool)

(declare-fun m!73926 () Bool)

(assert (= bs!37969 m!73926))

(assert (=> bs!37969 s!2107))

(assert (=> bs!37969 s!2119))

(assert (=> bs!37969 s!2111))

(assert (=> bs!37969 s!2123))

(assert (=> bs!37969 s!2131))

(assert (=> bs!37969 s!2133))

(assert (=> bs!37969 s!2141))

(assert (=> bs!37969 s!2149))

(assert (=> bs!37969 s!2151))

(assert (=> bs!37969 s!2159))

(assert (=> b!79426 m!73926))

(assert (=> bs!37916 d!55111))

(declare-fun b!79427 () Bool)

(declare-fun e!42982 () List!644)

(assert (=> b!79427 (= e!42982 (Cons!602 (h!888 (quickSort!1 Nil!604)) (appendSorted!0 (t!47631 (quickSort!1 Nil!604)) (Cons!602 (h!888 r!611) (quickSort!1 Nil!604)))))))

(declare-fun b!79428 () Bool)

(declare-fun e!42984 () Bool)

(declare-fun e!42985 () Bool)

(assert (=> b!79428 (= e!42984 e!42985)))

(declare-fun res!40114 () Bool)

(assert (=> b!79428 (=> res!40114 e!42985)))

(assert (=> b!79428 (= res!40114 (isEmpty!659 (quickSort!1 Nil!604)))))

(declare-fun b!79429 () Bool)

(declare-fun res!40112 () Bool)

(assert (=> b!79429 (=> res!40112 e!42985)))

(assert (=> b!79429 (= res!40112 (isEmpty!659 (Cons!602 (h!888 r!611) (quickSort!1 Nil!604))))))

(declare-fun b!79430 () Bool)

(declare-fun res!40113 () Bool)

(assert (=> b!79430 (=> (not res!40113) (not e!42984))))

(assert (=> b!79430 (= res!40113 (isSorted!2 (Cons!602 (h!888 r!611) (quickSort!1 Nil!604))))))

(declare-fun b!79431 () Bool)

(declare-fun e!42983 () Bool)

(declare-fun lt!18239 () List!644)

(assert (=> b!79431 (= e!42983 (= (content!107 lt!18239) (union (content!107 (quickSort!1 Nil!604)) (content!107 (Cons!602 (h!888 r!611) (quickSort!1 Nil!604))))))))

(declare-fun b!79432 () Bool)

(assert (=> b!79432 (= e!42985 (<= (last!3 (quickSort!1 Nil!604)) (head!1041 (Cons!602 (h!888 r!611) (quickSort!1 Nil!604)))))))

(declare-fun b!79433 () Bool)

(assert (=> b!79433 (= e!42982 (Cons!602 (h!888 r!611) (quickSort!1 Nil!604)))))

(declare-fun d!55113 () Bool)

(assert (=> d!55113 e!42983))

(declare-fun res!40116 () Bool)

(assert (=> d!55113 (=> (not res!40116) (not e!42983))))

(assert (=> d!55113 (= res!40116 (isSorted!2 lt!18239))))

(assert (=> d!55113 (= lt!18239 e!42982)))

(declare-fun c!20190 () Bool)

(assert (=> d!55113 (= c!20190 (is-Nil!604 (quickSort!1 Nil!604)))))

(assert (=> d!55113 e!42984))

(declare-fun res!40115 () Bool)

(assert (=> d!55113 (=> (not res!40115) (not e!42984))))

(assert (=> d!55113 (= res!40115 (isSorted!2 (quickSort!1 Nil!604)))))

(assert (=> d!55113 (= (appendSorted!0 (quickSort!1 Nil!604) (Cons!602 (h!888 r!611) (quickSort!1 Nil!604))) lt!18239)))

(assert (= (and d!55113 res!40115) b!79430))

(assert (= (and b!79430 res!40113) b!79428))

(assert (= (and b!79428 (not res!40114)) b!79429))

(assert (= (and b!79429 (not res!40112)) b!79432))

(assert (= (and d!55113 c!20190) b!79433))

(assert (= (and d!55113 (not c!20190)) b!79427))

(assert (= (and d!55113 res!40116) b!79431))

(declare-fun m!73928 () Bool)

(assert (=> b!79430 m!73928))

(assert (=> b!79428 m!73754))

(assert (=> b!79428 m!73850))

(declare-fun m!73930 () Bool)

(assert (=> b!79427 m!73930))

(assert (=> b!79432 m!73754))

(assert (=> b!79432 m!73854))

(declare-fun m!73932 () Bool)

(assert (=> b!79432 m!73932))

(declare-fun m!73934 () Bool)

(assert (=> b!79429 m!73934))

(declare-fun m!73936 () Bool)

(assert (=> d!55113 m!73936))

(assert (=> d!55113 m!73754))

(assert (=> d!55113 m!73862))

(declare-fun m!73938 () Bool)

(assert (=> b!79431 m!73938))

(assert (=> b!79431 m!73754))

(assert (=> b!79431 m!73866))

(declare-fun m!73940 () Bool)

(assert (=> b!79431 m!73940))

(assert (=> b!79323 d!55113))

(assert (=> b!79323 d!55087))

(declare-fun d!55115 () Bool)

(declare-fun m!73942 () Bool)

(assert (=> d!55115 m!73942))

(declare-fun bs!37970 () Bool)

(assert (= bs!37970 (and d!55115 start!10444)))

(assert (=> (and bs!37970 (= (ite lt!18216 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604) Nil!604) l!1419) (= (content!107 (ite lt!18216 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604) Nil!604)) (content!107 l!1419))) (= true true)))

(declare-fun bs!37971 () Bool)

(assert (= bs!37971 (and d!55115 d!55055)))

(assert (=> (and bs!37971 (= (ite lt!18216 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604) Nil!604) Nil!604) (= (content!107 (ite lt!18216 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604) Nil!604)) (content!107 Nil!604))) (= true true)))

(declare-fun bs!37972 () Bool)

(assert (= bs!37972 (and d!55115 b!79251)))

(assert (=> (and bs!37972 (= (ite lt!18216 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604) Nil!604) r!611) (= (content!107 (ite lt!18216 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604) Nil!604)) (content!107 r!611))) (= true true)))

(declare-fun bs!37973 () Bool)

(assert (= bs!37973 (and d!55115 b!79409)))

(assert (=> (and bs!37973 (= (ite lt!18216 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604) Nil!604) (ite lt!18214 Nil!604 (Cons!602 (h!888 (t!47631 r!611)) Nil!604))) (= (content!107 (ite lt!18216 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604) Nil!604)) (content!107 (ite lt!18214 Nil!604 (Cons!602 (h!888 (t!47631 r!611)) Nil!604))))) (= true true)))

(declare-fun bs!37974 () Bool)

(assert (= bs!37974 (and d!55115 d!55057)))

(assert (=> (and bs!37974 (= (ite lt!18216 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604) Nil!604) Nil!604) (= (content!107 (ite lt!18216 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604) Nil!604)) (content!107 Nil!604))) (= true true)))

(declare-fun bs!37975 () Bool)

(assert (= bs!37975 (and d!55115 d!55093)))

(assert (=> (and bs!37975 (= (ite lt!18216 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604) Nil!604) (ite lt!18214 (Cons!602 (h!888 (t!47631 r!611)) Nil!604) Nil!604)) (= (content!107 (ite lt!18216 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604) Nil!604)) (content!107 (ite lt!18214 (Cons!602 (h!888 (t!47631 r!611)) Nil!604) Nil!604)))) (= true true)))

(declare-fun bs!37976 () Bool)

(declare-fun b!79434 () Bool)

(assert (= bs!37976 (and b!79434 start!10444)))

(assert (=> (and bs!37976 (= (ite lt!18216 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604) Nil!604) l!1419) (= (h!888 l!1419) x!29075)) (= true true)))

(declare-fun bs!37977 () Bool)

(assert (= bs!37977 (and b!79434 b!79322)))

(assert (=> (and bs!37977 (= (ite lt!18216 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604) Nil!604) Nil!604) (= (h!888 l!1419) (h!888 r!611))) (= true true)))

(declare-fun bs!37978 () Bool)

(assert (= bs!37978 (and b!79434 b!79406)))

(assert (=> (and bs!37978 (= (ite lt!18216 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604) Nil!604) (ite lt!18214 (Cons!602 (h!888 (t!47631 r!611)) Nil!604) Nil!604)) (= (h!888 l!1419) (h!888 r!611))) (= true true)))

(declare-fun bs!37979 () Bool)

(assert (= bs!37979 (and b!79434 b!79327)))

(assert (=> (and bs!37979 (= (ite lt!18216 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604) Nil!604) Nil!604)) (= true true)))

(declare-fun b!79437 () Bool)

(declare-fun m!73944 () Bool)

(assert (=> b!79437 m!73944))

(declare-fun bs!37980 () Bool)

(assert (= bs!37980 (and b!79437 start!10444)))

(assert (=> (and bs!37980 (= (ite lt!18216 Nil!604 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604)) l!1419) (= (content!107 (ite lt!18216 Nil!604 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604))) (content!107 l!1419))) (= true true)))

(declare-fun bs!37981 () Bool)

(assert (= bs!37981 (and b!79437 d!55055)))

(assert (=> (and bs!37981 (= (ite lt!18216 Nil!604 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604)) Nil!604) (= (content!107 (ite lt!18216 Nil!604 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604))) (content!107 Nil!604))) (= true true)))

(declare-fun bs!37982 () Bool)

(assert (= bs!37982 (and b!79437 b!79251)))

(assert (=> (and bs!37982 (= (ite lt!18216 Nil!604 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604)) r!611) (= (content!107 (ite lt!18216 Nil!604 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604))) (content!107 r!611))) (= true true)))

(declare-fun bs!37983 () Bool)

(assert (= bs!37983 (and b!79437 b!79409)))

(assert (=> (and bs!37983 (= (ite lt!18216 Nil!604 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604)) (ite lt!18214 Nil!604 (Cons!602 (h!888 (t!47631 r!611)) Nil!604))) (= (content!107 (ite lt!18216 Nil!604 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604))) (content!107 (ite lt!18214 Nil!604 (Cons!602 (h!888 (t!47631 r!611)) Nil!604))))) (= true true)))

(declare-fun bs!37984 () Bool)

(assert (= bs!37984 (and b!79437 d!55057)))

(assert (=> (and bs!37984 (= (ite lt!18216 Nil!604 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604)) Nil!604) (= (content!107 (ite lt!18216 Nil!604 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604))) (content!107 Nil!604))) (= true true)))

(declare-fun bs!37985 () Bool)

(assert (= bs!37985 (and b!79437 d!55115)))

(assert (=> (and bs!37985 (= (ite lt!18216 Nil!604 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604)) (ite lt!18216 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604) Nil!604)) (= (content!107 (ite lt!18216 Nil!604 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604))) (content!107 (ite lt!18216 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604) Nil!604)))) (= true true)))

(declare-fun bs!37986 () Bool)

(assert (= bs!37986 (and b!79437 d!55093)))

(assert (=> (and bs!37986 (= (ite lt!18216 Nil!604 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604)) (ite lt!18214 (Cons!602 (h!888 (t!47631 r!611)) Nil!604) Nil!604)) (= (content!107 (ite lt!18216 Nil!604 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604))) (content!107 (ite lt!18214 (Cons!602 (h!888 (t!47631 r!611)) Nil!604) Nil!604)))) (= true true)))

(declare-fun bs!37987 () Bool)

(assert (= bs!37987 (and b!79437 b!79325)))

(assert (=> (and bs!37987 (= (ite lt!18216 Nil!604 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604)) Nil!604) (= (h!888 l!1419) (h!888 r!611))) (= true true)))

(assert (=> (and bs!37982 (= (ite lt!18216 Nil!604 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604)) r!611) (= (h!888 l!1419) x!29075)) (= true true)))

(declare-fun bs!37988 () Bool)

(assert (= bs!37988 (and b!79437 b!79330)))

(assert (=> (and bs!37988 (= (ite lt!18216 Nil!604 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604)) Nil!604)) (= true true)))

(assert (=> (and bs!37983 (= (ite lt!18216 Nil!604 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604)) (ite lt!18214 Nil!604 (Cons!602 (h!888 (t!47631 r!611)) Nil!604))) (= (h!888 l!1419) (h!888 r!611))) (= true true)))

(declare-fun res!40118 () Bool)

(declare-fun e!42986 () Bool)

(assert (=> b!79434 (=> (not res!40118) (not e!42986))))

(assert (=> b!79434 (= res!40118 true)))

(declare-fun b!79435 () Bool)

(declare-fun e!42988 () List!644)

(assert (=> b!79435 (= e!42988 (appendSorted!0 (quickSort!1 (ite lt!18216 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604) Nil!604)) (Cons!602 (h!888 l!1419) (quickSort!1 (ite lt!18216 Nil!604 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604))))))))

(declare-fun lt!18241 () List!644)

(declare-fun e!42987 () Bool)

(declare-fun b!79436 () Bool)

(assert (=> b!79436 (= e!42987 (= (content!107 lt!18241) (insert (h!888 l!1419) (union (union (content!107 (ite lt!18216 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604) Nil!604)) (content!107 (ite lt!18216 Nil!604 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604)))) (content!107 (t!47631 (t!47631 l!1419)))))))))

(assert (=> b!79437 (= e!42986 true)))

(assert (=> b!79437 true))

(assert (=> d!55115 e!42987))

(declare-fun res!40117 () Bool)

(assert (=> d!55115 (=> (not res!40117) (not e!42987))))

(assert (=> d!55115 (= res!40117 (isSorted!2 lt!18241))))

(assert (=> d!55115 (= lt!18241 e!42988)))

(declare-fun c!20191 () Bool)

(assert (=> d!55115 (= c!20191 (is-Nil!604 (t!47631 (t!47631 l!1419))))))

(assert (=> d!55115 e!42986))

(declare-fun res!40119 () Bool)

(assert (=> d!55115 (=> (not res!40119) (not e!42986))))

(assert (=> d!55115 (= res!40119 true)))

(assert (=> d!55115 (= (par!0 (h!888 l!1419) (ite lt!18216 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604) Nil!604) (ite lt!18216 Nil!604 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604)) (t!47631 (t!47631 l!1419))) lt!18241)))

(declare-fun lt!18240 () Bool)

(declare-fun b!79438 () Bool)

(assert (=> b!79438 (= e!42988 (par!0 (h!888 l!1419) (ite lt!18240 (Cons!602 (h!888 (t!47631 (t!47631 l!1419))) (ite lt!18216 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604) Nil!604)) (ite lt!18216 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604) Nil!604)) (ite lt!18240 (ite lt!18216 Nil!604 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604)) (Cons!602 (h!888 (t!47631 (t!47631 l!1419))) (ite lt!18216 Nil!604 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604)))) (t!47631 (t!47631 (t!47631 l!1419)))))))

(assert (=> b!79438 (= lt!18240 (<= (h!888 (t!47631 (t!47631 l!1419))) (h!888 l!1419)))))

(assert (= (and d!55115 res!40119) b!79434))

(assert (= (and b!79434 res!40118) b!79437))

(assert (= (and d!55115 c!20191) b!79435))

(assert (= (and d!55115 (not c!20191)) b!79438))

(assert (= (and d!55115 res!40117) b!79436))

(declare-fun m!73946 () Bool)

(assert (=> b!79435 m!73946))

(declare-fun m!73948 () Bool)

(assert (=> b!79435 m!73948))

(assert (=> b!79435 m!73946))

(declare-fun m!73950 () Bool)

(assert (=> b!79435 m!73950))

(declare-fun m!73952 () Bool)

(assert (=> b!79436 m!73952))

(assert (=> b!79436 m!73778))

(assert (=> b!79436 m!73944))

(declare-fun bs!37989 () Bool)

(declare-fun m!73954 () Bool)

(assert (= bs!37989 m!73954))

(assert (=> bs!37989 s!2107))

(assert (=> bs!37989 s!2111))

(assert (=> bs!37989 s!2131))

(assert (=> bs!37989 s!2149))

(assert (=> b!79436 m!73954))

(assert (=> b!79436 m!73942))

(declare-fun m!73956 () Bool)

(assert (=> d!55115 m!73956))

(declare-fun m!73958 () Bool)

(assert (=> b!79438 m!73958))

(assert (=> b!79331 d!55115))

(declare-fun d!55117 () Bool)

(declare-fun c!20192 () Bool)

(assert (=> d!55117 (= c!20192 (is-Nil!604 (t!47631 (t!47631 l!1419))))))

(declare-fun e!42989 () (Set Int))

(assert (=> d!55117 (= (content!107 (t!47631 (t!47631 l!1419))) e!42989)))

(declare-fun b!79439 () Bool)

(assert (=> b!79439 (= e!42989 (as emptyset (Set Int)))))

(declare-fun b!79440 () Bool)

(assert (=> b!79440 (= e!42989 (union (insert (h!888 (t!47631 (t!47631 l!1419))) (as emptyset (Set Int))) (content!107 (t!47631 (t!47631 (t!47631 l!1419))))))))

(assert (= (and d!55117 c!20192) b!79439))

(assert (= (and d!55117 (not c!20192)) b!79440))

(declare-fun m!73960 () Bool)

(assert (=> b!79440 m!73960))

(declare-fun m!73962 () Bool)

(assert (=> b!79440 m!73962))

(assert (=> b!79333 d!55117))

(declare-fun d!55119 () Bool)

(declare-fun res!40120 () Bool)

(declare-fun e!42990 () Bool)

(assert (=> d!55119 (=> res!40120 e!42990)))

(assert (=> d!55119 (= res!40120 (not (and (is-Cons!602 (t!47631 lt!18205)) (is-Cons!602 (t!47631 (t!47631 lt!18205))))))))

(assert (=> d!55119 (= (isSorted!2 (t!47631 lt!18205)) e!42990)))

(declare-fun b!79441 () Bool)

(declare-fun e!42991 () Bool)

(assert (=> b!79441 (= e!42990 e!42991)))

(declare-fun res!40121 () Bool)

(assert (=> b!79441 (=> (not res!40121) (not e!42991))))

(assert (=> b!79441 (= res!40121 (<= (h!888 (t!47631 lt!18205)) (h!888 (t!47631 (t!47631 lt!18205)))))))

(declare-fun b!79442 () Bool)

(assert (=> b!79442 (= e!42991 (isSorted!2 (t!47631 (t!47631 lt!18205))))))

(assert (= (and d!55119 (not res!40120)) b!79441))

(assert (= (and b!79441 res!40121) b!79442))

(declare-fun m!73964 () Bool)

(assert (=> b!79442 m!73964))

(assert (=> b!79299 d!55119))

(declare-fun d!55121 () Bool)

(declare-fun c!20193 () Bool)

(assert (=> d!55121 (= c!20193 (is-Nil!604 (t!47631 lt!18205)))))

(declare-fun e!42992 () (Set Int))

(assert (=> d!55121 (= (content!107 (t!47631 lt!18205)) e!42992)))

(declare-fun b!79443 () Bool)

(assert (=> b!79443 (= e!42992 (as emptyset (Set Int)))))

(declare-fun b!79444 () Bool)

(assert (=> b!79444 (= e!42992 (union (insert (h!888 (t!47631 lt!18205)) (as emptyset (Set Int))) (content!107 (t!47631 (t!47631 lt!18205)))))))

(assert (= (and d!55121 c!20193) b!79443))

(assert (= (and d!55121 (not c!20193)) b!79444))

(declare-fun m!73966 () Bool)

(assert (=> b!79444 m!73966))

(declare-fun m!73968 () Bool)

(assert (=> b!79444 m!73968))

(assert (=> b!79301 d!55121))

(declare-fun d!55123 () Bool)

(declare-fun c!20194 () Bool)

(assert (=> d!55123 (= c!20194 (is-Nil!604 lt!18215))))

(declare-fun e!42993 () (Set Int))

(assert (=> d!55123 (= (content!107 lt!18215) e!42993)))

(declare-fun b!79445 () Bool)

(assert (=> b!79445 (= e!42993 (as emptyset (Set Int)))))

(declare-fun b!79446 () Bool)

(assert (=> b!79446 (= e!42993 (union (insert (h!888 lt!18215) (as emptyset (Set Int))) (content!107 (t!47631 lt!18215))))))

(assert (= (and d!55123 c!20194) b!79445))

(assert (= (and d!55123 (not c!20194)) b!79446))

(declare-fun m!73970 () Bool)

(assert (=> b!79446 m!73970))

(declare-fun m!73972 () Bool)

(assert (=> b!79446 m!73972))

(assert (=> b!79324 d!55123))

(assert (=> b!79324 d!55069))

(assert (=> b!79324 d!55053))

(declare-fun d!55125 () Bool)

(declare-fun res!40122 () Bool)

(declare-fun e!42994 () Bool)

(assert (=> d!55125 (=> res!40122 e!42994)))

(assert (=> d!55125 (= res!40122 (not (and (is-Cons!602 (t!47631 lt!18204)) (is-Cons!602 (t!47631 (t!47631 lt!18204))))))))

(assert (=> d!55125 (= (isSorted!2 (t!47631 lt!18204)) e!42994)))

(declare-fun b!79447 () Bool)

(declare-fun e!42995 () Bool)

(assert (=> b!79447 (= e!42994 e!42995)))

(declare-fun res!40123 () Bool)

(assert (=> b!79447 (=> (not res!40123) (not e!42995))))

(assert (=> b!79447 (= res!40123 (<= (h!888 (t!47631 lt!18204)) (h!888 (t!47631 (t!47631 lt!18204)))))))

(declare-fun b!79448 () Bool)

(assert (=> b!79448 (= e!42995 (isSorted!2 (t!47631 (t!47631 lt!18204))))))

(assert (= (and d!55125 (not res!40122)) b!79447))

(assert (= (and b!79447 res!40123) b!79448))

(declare-fun m!73974 () Bool)

(assert (=> b!79448 m!73974))

(assert (=> b!79305 d!55125))

(declare-fun d!55127 () Bool)

(declare-fun res!40124 () Bool)

(declare-fun e!42996 () Bool)

(assert (=> d!55127 (=> res!40124 e!42996)))

(assert (=> d!55127 (= res!40124 (not (and (is-Cons!602 (t!47631 (t!47631 l2!415))) (is-Cons!602 (t!47631 (t!47631 (t!47631 l2!415)))))))))

(assert (=> d!55127 (= (isSorted!2 (t!47631 (t!47631 l2!415))) e!42996)))

(declare-fun b!79449 () Bool)

(declare-fun e!42997 () Bool)

(assert (=> b!79449 (= e!42996 e!42997)))

(declare-fun res!40125 () Bool)

(assert (=> b!79449 (=> (not res!40125) (not e!42997))))

(assert (=> b!79449 (= res!40125 (<= (h!888 (t!47631 (t!47631 l2!415))) (h!888 (t!47631 (t!47631 (t!47631 l2!415))))))))

(declare-fun b!79450 () Bool)

(assert (=> b!79450 (= e!42997 (isSorted!2 (t!47631 (t!47631 (t!47631 l2!415)))))))

(assert (= (and d!55127 (not res!40124)) b!79449))

(assert (= (and b!79449 res!40125) b!79450))

(declare-fun m!73976 () Bool)

(assert (=> b!79450 m!73976))

(assert (=> b!79295 d!55127))

(declare-fun bs!37990 () Bool)

(declare-fun s!2163 () Bool)

(assert (= bs!37990 (and start!10444 s!2163)))

(assert (=> bs!37990 (=> true (= (contains!46 l!1419 (h!888 lt!18205)) (member (h!888 lt!18205) (content!107 l!1419))))))

(declare-fun m!73978 () Bool)

(assert (=> m!73738 m!73978))

(declare-fun m!73980 () Bool)

(assert (=> m!73738 m!73980))

(assert (=> m!73738 s!2163))

(declare-fun bs!37991 () Bool)

(declare-fun s!2165 () Bool)

(assert (= bs!37991 (and start!10444 s!2165)))

(assert (=> bs!37991 (=> true (= (contains!46 l!1419 (h!888 (t!47631 r!611))) (member (h!888 (t!47631 r!611)) (content!107 l!1419))))))

(declare-fun m!73982 () Bool)

(assert (=> m!73748 m!73982))

(declare-fun m!73984 () Bool)

(assert (=> m!73748 m!73984))

(assert (=> m!73748 s!2165))

(declare-fun bs!37992 () Bool)

(declare-fun s!2167 () Bool)

(assert (= bs!37992 (and start!10444 s!2167)))

(assert (=> bs!37992 (=> true (= (contains!46 l!1419 lt!18209) (member lt!18209 (content!107 l!1419))))))

(declare-fun m!73986 () Bool)

(assert (=> m!73730 m!73986))

(declare-fun m!73988 () Bool)

(assert (=> m!73730 m!73988))

(assert (=> m!73730 s!2167))

(declare-fun bs!37993 () Bool)

(declare-fun s!2169 () Bool)

(assert (= bs!37993 (and start!10444 s!2169)))

(assert (=> bs!37993 (=> true (= (contains!46 l!1419 (h!888 lt!18204)) (member (h!888 lt!18204) (content!107 l!1419))))))

(declare-fun m!73990 () Bool)

(assert (=> m!73742 m!73990))

(declare-fun m!73992 () Bool)

(assert (=> m!73742 m!73992))

(assert (=> m!73742 s!2169))

(assert (=> m!73782 s!2105))

(declare-fun bs!37994 () Bool)

(declare-fun s!2171 () Bool)

(assert (= bs!37994 (and start!10444 s!2171)))

(assert (=> bs!37994 (=> true (= (contains!46 l!1419 (h!888 (t!47631 l!1419))) (member (h!888 (t!47631 l!1419)) (content!107 l!1419))))))

(declare-fun m!73994 () Bool)

(assert (=> m!73776 m!73994))

(declare-fun m!73996 () Bool)

(assert (=> m!73776 m!73996))

(assert (=> m!73776 s!2171))

(assert (=> m!73784 s!2105))

(assert (=> m!73760 s!2103))

(assert (=> m!73770 s!2107))

(declare-fun bs!37995 () Bool)

(declare-fun s!2173 () Bool)

(assert (= bs!37995 (and start!10444 s!2173)))

(declare-fun res!40126 () Bool)

(declare-fun e!42998 () Bool)

(assert (=> bs!37995 (=> res!40126 e!42998)))

(assert (=> bs!37995 (= res!40126 (not (contains!46 l!1419 lt!18209)))))

(assert (=> bs!37995 (=> true e!42998)))

(declare-fun b!79451 () Bool)

(assert (=> b!79451 (= e!42998 (<= lt!18209 x!29075))))

(assert (= (and bs!37995 (not res!40126)) b!79451))

(assert (=> m!73730 m!73986))

(assert (=> m!73730 s!2173))

(assert (=> m!73784 s!2109))

(declare-fun bs!37996 () Bool)

(declare-fun s!2175 () Bool)

(assert (= bs!37996 (and start!10444 b!79251 s!2175)))

(assert (=> bs!37996 (=> true (= (contains!46 r!611 lt!18209) (member lt!18209 (content!107 r!611))))))

(declare-fun m!73998 () Bool)

(assert (=> m!73730 m!73998))

(declare-fun m!74000 () Bool)

(assert (=> m!73730 m!74000))

(assert (=> m!73730 s!2175))

(declare-fun bs!37997 () Bool)

(declare-fun s!2177 () Bool)

(assert (= bs!37997 (and start!10444 b!79251 s!2177)))

(assert (=> bs!37997 (=> true (= (contains!46 r!611 (h!888 lt!18204)) (member (h!888 lt!18204) (content!107 r!611))))))

(declare-fun m!74002 () Bool)

(assert (=> m!73742 m!74002))

(declare-fun m!74004 () Bool)

(assert (=> m!73742 m!74004))

(assert (=> m!73742 s!2177))

(assert (=> m!73782 s!2115))

(declare-fun bs!37998 () Bool)

(declare-fun s!2179 () Bool)

(assert (= bs!37998 (and start!10444 b!79251 s!2179)))

(assert (=> bs!37998 (=> true (= (contains!46 r!611 (h!888 (t!47631 r!611))) (member (h!888 (t!47631 r!611)) (content!107 r!611))))))

(declare-fun m!74006 () Bool)

(assert (=> m!73748 m!74006))

(declare-fun m!74008 () Bool)

(assert (=> m!73748 m!74008))

(assert (=> m!73748 s!2179))

(assert (=> m!73770 s!2111))

(declare-fun bs!37999 () Bool)

(declare-fun s!2181 () Bool)

(assert (= bs!37999 (and start!10444 b!79251 s!2181)))

(assert (=> bs!37999 (=> true (= (contains!46 r!611 (h!888 (t!47631 l!1419))) (member (h!888 (t!47631 l!1419)) (content!107 r!611))))))

(declare-fun m!74010 () Bool)

(assert (=> m!73776 m!74010))

(declare-fun m!74012 () Bool)

(assert (=> m!73776 m!74012))

(assert (=> m!73776 s!2181))

(declare-fun bs!38000 () Bool)

(declare-fun s!2183 () Bool)

(assert (= bs!38000 (and start!10444 b!79251 s!2183)))

(assert (=> bs!38000 (=> true (= (contains!46 r!611 (h!888 lt!18205)) (member (h!888 lt!18205) (content!107 r!611))))))

(declare-fun m!74014 () Bool)

(assert (=> m!73738 m!74014))

(declare-fun m!74016 () Bool)

(assert (=> m!73738 m!74016))

(assert (=> m!73738 s!2183))

(assert (=> m!73784 s!2115))

(assert (=> m!73760 s!2113))

(assert (=> m!73784 s!2117))

(declare-fun bs!38001 () Bool)

(declare-fun s!2185 () Bool)

(assert (= bs!38001 (and start!10444 b!79251 s!2185)))

(declare-fun res!40127 () Bool)

(declare-fun e!42999 () Bool)

(assert (=> bs!38001 (=> res!40127 e!42999)))

(assert (=> bs!38001 (= res!40127 (not (contains!46 r!611 lt!18209)))))

(assert (=> bs!38001 (=> true e!42999)))

(declare-fun b!79452 () Bool)

(assert (=> b!79452 (= e!42999 (< x!29075 lt!18209))))

(assert (= (and bs!38001 (not res!40127)) b!79452))

(assert (=> m!73730 m!73998))

(assert (=> m!73730 s!2185))

(assert (=> m!73760 s!2129))

(assert (=> m!73770 s!2131))

(assert (=> m!73782 s!2127))

(assert (=> m!73712 s!2129))

(declare-fun bs!38002 () Bool)

(declare-fun s!2187 () Bool)

(assert (= bs!38002 (and d!55055 s!2187)))

(assert (=> bs!38002 (=> true (= (contains!46 Nil!604 (h!888 lt!18204)) (member (h!888 lt!18204) (content!107 Nil!604))))))

(declare-fun m!74018 () Bool)

(assert (=> m!73742 m!74018))

(declare-fun m!74020 () Bool)

(assert (=> m!73742 m!74020))

(assert (=> m!73742 s!2187))

(declare-fun bs!38003 () Bool)

(declare-fun s!2189 () Bool)

(assert (= bs!38003 (and d!55055 s!2189)))

(assert (=> bs!38003 (=> true (= (contains!46 Nil!604 (h!888 lt!18205)) (member (h!888 lt!18205) (content!107 Nil!604))))))

(declare-fun m!74022 () Bool)

(assert (=> m!73738 m!74022))

(declare-fun m!74024 () Bool)

(assert (=> m!73738 m!74024))

(assert (=> m!73738 s!2189))

(declare-fun bs!38004 () Bool)

(declare-fun s!2191 () Bool)

(assert (= bs!38004 (and d!55055 s!2191)))

(assert (=> bs!38004 (=> true (= (contains!46 Nil!604 lt!18209) (member lt!18209 (content!107 Nil!604))))))

(declare-fun m!74026 () Bool)

(assert (=> m!73730 m!74026))

(declare-fun m!74028 () Bool)

(assert (=> m!73730 m!74028))

(assert (=> m!73730 s!2191))

(assert (=> m!73700 s!2131))

(declare-fun bs!38005 () Bool)

(declare-fun s!2193 () Bool)

(assert (= bs!38005 (and d!55055 s!2193)))

(assert (=> bs!38005 (=> true (= (contains!46 Nil!604 (h!888 (t!47631 l!1419))) (member (h!888 (t!47631 l!1419)) (content!107 Nil!604))))))

(declare-fun m!74030 () Bool)

(assert (=> m!73776 m!74030))

(declare-fun m!74032 () Bool)

(assert (=> m!73776 m!74032))

(assert (=> m!73776 s!2193))

(declare-fun bs!38006 () Bool)

(declare-fun s!2195 () Bool)

(assert (= bs!38006 (and d!55055 s!2195)))

(assert (=> bs!38006 (=> true (= (contains!46 Nil!604 (h!888 (t!47631 r!611))) (member (h!888 (t!47631 r!611)) (content!107 Nil!604))))))

(declare-fun m!74034 () Bool)

(assert (=> m!73748 m!74034))

(declare-fun m!74036 () Bool)

(assert (=> m!73748 m!74036))

(assert (=> m!73748 s!2195))

(assert (=> m!73724 s!2127))

(assert (=> m!73784 s!2127))

(assert (=> m!73724 s!2135))

(declare-fun bs!38007 () Bool)

(declare-fun s!2197 () Bool)

(assert (= bs!38007 (and d!55055 b!79322 s!2197)))

(declare-fun res!40128 () Bool)

(declare-fun e!43000 () Bool)

(assert (=> bs!38007 (=> res!40128 e!43000)))

(assert (=> bs!38007 (= res!40128 (not (contains!46 Nil!604 lt!18209)))))

(assert (=> bs!38007 (=> true e!43000)))

(declare-fun b!79453 () Bool)

(assert (=> b!79453 (= e!43000 (<= lt!18209 (h!888 r!611)))))

(assert (= (and bs!38007 (not res!40128)) b!79453))

(assert (=> m!73730 m!74026))

(assert (=> m!73730 s!2197))

(assert (=> m!73784 s!2135))

(assert (=> m!73784 s!2143))

(assert (=> m!73724 s!2143))

(declare-fun s!2199 () Bool)

(declare-fun bs!38008 () Bool)

(assert (= bs!38008 (and d!55055 b!79322 b!79325 s!2199)))

(declare-fun res!40129 () Bool)

(declare-fun e!43001 () Bool)

(assert (=> bs!38008 (=> res!40129 e!43001)))

(assert (=> bs!38008 (= res!40129 (not (contains!46 Nil!604 lt!18209)))))

(assert (=> bs!38008 (=> true e!43001)))

(declare-fun b!79454 () Bool)

(assert (=> b!79454 (= e!43001 (< (h!888 r!611) lt!18209))))

(assert (= (and bs!38008 (not res!40129)) b!79454))

(assert (=> m!73730 m!74026))

(assert (=> m!73730 s!2199))

(assert (=> m!73760 s!2147))

(assert (=> m!73770 s!2149))

(assert (=> m!73782 s!2145))

(assert (=> m!73712 s!2147))

(declare-fun bs!38009 () Bool)

(declare-fun s!2201 () Bool)

(assert (= bs!38009 (and d!55057 s!2201)))

(assert (=> bs!38009 (=> true (= (contains!46 Nil!604 (h!888 lt!18204)) (member (h!888 lt!18204) (content!107 Nil!604))))))

(assert (=> m!73742 m!74018))

(assert (=> m!73742 m!74020))

(assert (=> m!73742 s!2201))

(declare-fun bs!38010 () Bool)

(declare-fun s!2203 () Bool)

(assert (= bs!38010 (and d!55057 s!2203)))

(assert (=> bs!38010 (=> true (= (contains!46 Nil!604 (h!888 lt!18205)) (member (h!888 lt!18205) (content!107 Nil!604))))))

(assert (=> m!73738 m!74022))

(assert (=> m!73738 m!74024))

(assert (=> m!73738 s!2203))

(declare-fun bs!38011 () Bool)

(declare-fun s!2205 () Bool)

(assert (= bs!38011 (and d!55057 s!2205)))

(assert (=> bs!38011 (=> true (= (contains!46 Nil!604 lt!18209) (member lt!18209 (content!107 Nil!604))))))

(assert (=> m!73730 m!74026))

(assert (=> m!73730 m!74028))

(assert (=> m!73730 s!2205))

(assert (=> m!73700 s!2149))

(declare-fun bs!38012 () Bool)

(declare-fun s!2207 () Bool)

(assert (= bs!38012 (and d!55057 s!2207)))

(assert (=> bs!38012 (=> true (= (contains!46 Nil!604 (h!888 (t!47631 l!1419))) (member (h!888 (t!47631 l!1419)) (content!107 Nil!604))))))

(assert (=> m!73776 m!74030))

(assert (=> m!73776 m!74032))

(assert (=> m!73776 s!2207))

(declare-fun bs!38013 () Bool)

(declare-fun s!2209 () Bool)

(assert (= bs!38013 (and d!55057 s!2209)))

(assert (=> bs!38013 (=> true (= (contains!46 Nil!604 (h!888 (t!47631 r!611))) (member (h!888 (t!47631 r!611)) (content!107 Nil!604))))))

(assert (=> m!73748 m!74034))

(assert (=> m!73748 m!74036))

(assert (=> m!73748 s!2209))

(assert (=> m!73724 s!2145))

(assert (=> m!73784 s!2145))

(assert (=> m!73724 s!2153))

(declare-fun bs!38014 () Bool)

(declare-fun s!2211 () Bool)

(assert (= bs!38014 (and d!55057 b!79327 s!2211)))

(declare-fun res!40130 () Bool)

(declare-fun e!43002 () Bool)

(assert (=> bs!38014 (=> res!40130 e!43002)))

(assert (=> bs!38014 (= res!40130 (not (contains!46 Nil!604 lt!18209)))))

(assert (=> bs!38014 (=> true e!43002)))

(declare-fun b!79455 () Bool)

(assert (=> b!79455 (= e!43002 (<= lt!18209 (h!888 l!1419)))))

(assert (= (and bs!38014 (not res!40130)) b!79455))

(assert (=> m!73730 m!74026))

(assert (=> m!73730 s!2211))

(assert (=> m!73784 s!2153))

(assert (=> m!73784 s!2161))

(assert (=> m!73724 s!2161))

(declare-fun s!2213 () Bool)

(declare-fun bs!38015 () Bool)

(assert (= bs!38015 (and d!55057 b!79327 b!79330 s!2213)))

(declare-fun res!40131 () Bool)

(declare-fun e!43003 () Bool)

(assert (=> bs!38015 (=> res!40131 e!43003)))

(assert (=> bs!38015 (= res!40131 (not (contains!46 Nil!604 lt!18209)))))

(assert (=> bs!38015 (=> true e!43003)))

(declare-fun b!79456 () Bool)

(assert (=> b!79456 (= e!43003 (< (h!888 l!1419) lt!18209))))

(assert (= (and bs!38015 (not res!40131)) b!79456))

(assert (=> m!73730 m!74026))

(assert (=> m!73730 s!2213))

(push 1)

(assert (not d!55089))

(assert (not bs!37942))

(assert (not b!79440))

(assert (not bs!38014))

(assert (not b!79408))

(assert (not b!79365))

(assert (not bs!37993))

(assert (not bs!37999))

(assert (not b!79393))

(assert (not b!79426))

(assert (not bs!37940))

(assert (not b!79444))

(assert (not b!79435))

(assert (not b!79430))

(assert (not b!79375))

(assert (not b!79429))

(assert (not bs!38006))

(assert (not bs!37938))

(assert (not d!55103))

(assert (not bs!38002))

(assert (not bs!37925))

(assert (not bs!37922))

(assert (not b!79367))

(assert (not d!55085))

(assert (not bs!37995))

(assert (not bs!37924))

(assert (not b!79373))

(assert (not d!55113))

(assert (not bs!37932))

(assert (not b!79450))

(assert (not b!79401))

(assert (not b!79422))

(assert (not d!55101))

(assert (not bs!38015))

(assert (not d!55111))

(assert (not bs!37990))

(assert (not b!79377))

(assert (not d!55079))

(assert (not bs!38008))

(assert (not d!55115))

(assert (not b!79397))

(assert (not bs!38009))

(assert (not b!79412))

(assert (not bs!38010))

(assert (not bs!37936))

(assert (not b!79427))

(assert (not bs!37933))

(assert (not bs!37931))

(assert (not b!79428))

(assert (not b!79395))

(assert (not d!55109))

(assert (not b!79403))

(assert (not bs!37927))

(assert (not bs!38012))

(assert (not bs!38005))

(assert (not bs!37992))

(assert (not b!79410))

(assert (not bs!38000))

(assert (not d!55083))

(assert (not b!79442))

(assert (not b!79432))

(assert (not b!79396))

(assert (not b!79414))

(assert (not b!79400))

(assert (not b!79416))

(assert (not d!55093))

(assert (not d!55091))

(assert (not bs!38003))

(assert (not b!79446))

(assert (not bs!37998))

(assert (not bs!37991))

(assert (not b!79437))

(assert (not b!79407))

(assert (not b!79418))

(assert (not bs!37937))

(assert (not b!79392))

(assert (not bs!37941))

(assert (not bs!38001))

(assert (not bs!38013))

(assert (not b!79405))

(assert (not bs!37996))

(assert (not b!79438))

(assert (not d!55087))

(assert (not bs!37923))

(assert (not bs!38004))

(assert (not b!79369))

(assert (not bs!38007))

(assert (not d!55095))

(assert (not bs!37928))

(assert (not b!79420))

(assert (not b!79394))

(assert (not b!79436))

(assert (not bs!37929))

(assert (not b!79409))

(assert (not bs!37997))

(assert (not b!79371))

(assert (not b!79448))

(assert (not bs!37994))

(assert (not b!79424))

(assert (not b!79431))

(assert (not bs!38011))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> d!55079 d!55059))

(declare-fun d!55129 () Bool)

(declare-fun lt!18242 () Bool)

(assert (=> d!55129 (= lt!18242 (member lt!18209 (content!107 l!1419)))))

(declare-fun e!43005 () Bool)

(assert (=> d!55129 (= lt!18242 e!43005)))

(declare-fun res!40133 () Bool)

(assert (=> d!55129 (=> (not res!40133) (not e!43005))))

(assert (=> d!55129 (= res!40133 (is-Cons!602 l!1419))))

(assert (=> d!55129 (= (contains!46 l!1419 lt!18209) lt!18242)))

(declare-fun b!79457 () Bool)

(declare-fun e!43004 () Bool)

(assert (=> b!79457 (= e!43005 e!43004)))

(declare-fun res!40132 () Bool)

(assert (=> b!79457 (=> res!40132 e!43004)))

(assert (=> b!79457 (= res!40132 (= (h!888 l!1419) lt!18209))))

(declare-fun b!79458 () Bool)

(assert (=> b!79458 (= e!43004 (contains!46 (t!47631 l!1419) lt!18209))))

(assert (= (and d!55129 res!40133) b!79457))

(assert (= (and b!79457 (not res!40132)) b!79458))

(assert (=> d!55129 m!73680))

(assert (=> d!55129 m!73988))

(declare-fun bs!38016 () Bool)

(declare-fun m!74038 () Bool)

(assert (= bs!38016 m!74038))

(assert (=> bs!38016 s!2167))

(assert (=> bs!38016 s!2173))

(assert (=> bs!38016 s!2175))

(assert (=> bs!38016 s!2185))

(assert (=> bs!38016 s!2191))

(assert (=> bs!38016 s!2197))

(assert (=> bs!38016 s!2199))

(assert (=> bs!38016 s!2205))

(assert (=> bs!38016 s!2211))

(assert (=> bs!38016 s!2213))

(assert (=> b!79458 m!74038))

(assert (=> bs!37992 d!55129))

(assert (=> bs!37924 d!55111))

(declare-fun d!55131 () Bool)

(declare-fun c!20195 () Bool)

(assert (=> d!55131 (= c!20195 (is-Nil!604 (ite lt!18214 (Cons!602 (h!888 (t!47631 r!611)) Nil!604) Nil!604)))))

(declare-fun e!43006 () (Set Int))

(assert (=> d!55131 (= (content!107 (ite lt!18214 (Cons!602 (h!888 (t!47631 r!611)) Nil!604) Nil!604)) e!43006)))

(declare-fun b!79459 () Bool)

(assert (=> b!79459 (= e!43006 (as emptyset (Set Int)))))

(declare-fun b!79460 () Bool)

(assert (=> b!79460 (= e!43006 (union (insert (h!888 (ite lt!18214 (Cons!602 (h!888 (t!47631 r!611)) Nil!604) Nil!604)) (as emptyset (Set Int))) (content!107 (t!47631 (ite lt!18214 (Cons!602 (h!888 (t!47631 r!611)) Nil!604) Nil!604)))))))

(assert (= (and d!55131 c!20195) b!79459))

(assert (= (and d!55131 (not c!20195)) b!79460))

(declare-fun m!74040 () Bool)

(assert (=> b!79460 m!74040))

(declare-fun m!74042 () Bool)

(assert (=> b!79460 m!74042))

(assert (=> d!55093 d!55131))

(declare-fun d!55133 () Bool)

(declare-fun res!40134 () Bool)

(declare-fun e!43007 () Bool)

(assert (=> d!55133 (=> res!40134 e!43007)))

(assert (=> d!55133 (= res!40134 (not (and (is-Cons!602 lt!18233) (is-Cons!602 (t!47631 lt!18233)))))))

(assert (=> d!55133 (= (isSorted!2 lt!18233) e!43007)))

(declare-fun b!79461 () Bool)

(declare-fun e!43008 () Bool)

(assert (=> b!79461 (= e!43007 e!43008)))

(declare-fun res!40135 () Bool)

(assert (=> b!79461 (=> (not res!40135) (not e!43008))))

(assert (=> b!79461 (= res!40135 (<= (h!888 lt!18233) (h!888 (t!47631 lt!18233))))))

(declare-fun b!79462 () Bool)

(assert (=> b!79462 (= e!43008 (isSorted!2 (t!47631 lt!18233)))))

(assert (= (and d!55133 (not res!40134)) b!79461))

(assert (= (and b!79461 res!40135) b!79462))

(declare-fun m!74044 () Bool)

(assert (=> b!79462 m!74044))

(assert (=> d!55093 d!55133))

(declare-fun d!55135 () Bool)

(declare-fun lt!18243 () Bool)

(assert (=> d!55135 (= lt!18243 (member lt!18209 (content!107 r!611)))))

(declare-fun e!43010 () Bool)

(assert (=> d!55135 (= lt!18243 e!43010)))

(declare-fun res!40137 () Bool)

(assert (=> d!55135 (=> (not res!40137) (not e!43010))))

(assert (=> d!55135 (= res!40137 (is-Cons!602 r!611))))

(assert (=> d!55135 (= (contains!46 r!611 lt!18209) lt!18243)))

(declare-fun b!79463 () Bool)

(declare-fun e!43009 () Bool)

(assert (=> b!79463 (= e!43010 e!43009)))

(declare-fun res!40136 () Bool)

(assert (=> b!79463 (=> res!40136 e!43009)))

(assert (=> b!79463 (= res!40136 (= (h!888 r!611) lt!18209))))

(declare-fun b!79464 () Bool)

(assert (=> b!79464 (= e!43009 (contains!46 (t!47631 r!611) lt!18209))))

(assert (= (and d!55135 res!40137) b!79463))

(assert (= (and b!79463 (not res!40136)) b!79464))

(assert (=> d!55135 m!73682))

(assert (=> d!55135 m!74000))

(declare-fun bs!38017 () Bool)

(declare-fun m!74046 () Bool)

(assert (= bs!38017 m!74046))

(assert (=> bs!38017 s!2167))

(assert (=> bs!38017 s!2173))

(assert (=> bs!38017 s!2175))

(assert (=> bs!38017 s!2185))

(assert (=> bs!38017 s!2191))

(assert (=> bs!38017 s!2197))

(assert (=> bs!38017 s!2199))

(assert (=> bs!38017 s!2205))

(assert (=> bs!38017 s!2211))

(assert (=> bs!38017 s!2213))

(assert (=> b!79464 m!74046))

(assert (=> bs!38001 d!55135))

(declare-fun d!55137 () Bool)

(declare-fun lt!18244 () Bool)

(assert (=> d!55137 (= lt!18244 (member (h!888 r!611) (content!107 Nil!604)))))

(declare-fun e!43012 () Bool)

(assert (=> d!55137 (= lt!18244 e!43012)))

(declare-fun res!40139 () Bool)

(assert (=> d!55137 (=> (not res!40139) (not e!43012))))

(assert (=> d!55137 (= res!40139 (is-Cons!602 Nil!604))))

(assert (=> d!55137 (= (contains!46 Nil!604 (h!888 r!611)) lt!18244)))

(declare-fun b!79465 () Bool)

(declare-fun e!43011 () Bool)

(assert (=> b!79465 (= e!43012 e!43011)))

(declare-fun res!40138 () Bool)

(assert (=> b!79465 (=> res!40138 e!43011)))

(assert (=> b!79465 (= res!40138 (= (h!888 Nil!604) (h!888 r!611)))))

(declare-fun b!79466 () Bool)

(assert (=> b!79466 (= e!43011 (contains!46 (t!47631 Nil!604) (h!888 r!611)))))

(assert (= (and d!55137 res!40139) b!79465))

(assert (= (and b!79465 (not res!40138)) b!79466))

(assert (=> d!55137 m!73752))

(assert (=> d!55137 m!73822))

(declare-fun bs!38018 () Bool)

(declare-fun m!74048 () Bool)

(assert (= bs!38018 m!74048))

(assert (=> bs!38018 s!2103))

(assert (=> bs!38018 s!2121))

(assert (=> bs!38018 s!2113))

(assert (=> bs!38018 s!2125))

(assert (=> bs!38018 s!2129))

(assert (=> bs!38018 s!2137))

(assert (=> bs!38018 s!2139))

(assert (=> bs!38018 s!2147))

(assert (=> bs!38018 s!2155))

(assert (=> bs!38018 s!2157))

(assert (=> b!79466 m!74048))

(assert (=> bs!37936 d!55137))

(assert (=> bs!37941 d!55137))

(declare-fun d!55139 () Bool)

(declare-fun lt!18245 () Bool)

(assert (=> d!55139 (= lt!18245 (member lt!18209 (content!107 Nil!604)))))

(declare-fun e!43014 () Bool)

(assert (=> d!55139 (= lt!18245 e!43014)))

(declare-fun res!40141 () Bool)

(assert (=> d!55139 (=> (not res!40141) (not e!43014))))

(assert (=> d!55139 (= res!40141 (is-Cons!602 Nil!604))))

(assert (=> d!55139 (= (contains!46 Nil!604 lt!18209) lt!18245)))

(declare-fun b!79467 () Bool)

(declare-fun e!43013 () Bool)

(assert (=> b!79467 (= e!43014 e!43013)))

(declare-fun res!40140 () Bool)

(assert (=> b!79467 (=> res!40140 e!43013)))

(assert (=> b!79467 (= res!40140 (= (h!888 Nil!604) lt!18209))))

(declare-fun b!79468 () Bool)

(assert (=> b!79468 (= e!43013 (contains!46 (t!47631 Nil!604) lt!18209))))

(assert (= (and d!55139 res!40141) b!79467))

(assert (= (and b!79467 (not res!40140)) b!79468))

(assert (=> d!55139 m!73752))

(assert (=> d!55139 m!74028))

(declare-fun bs!38019 () Bool)

(declare-fun m!74050 () Bool)

(assert (= bs!38019 m!74050))

(assert (=> bs!38019 s!2167))

(assert (=> bs!38019 s!2173))

(assert (=> bs!38019 s!2175))

(assert (=> bs!38019 s!2185))

(assert (=> bs!38019 s!2191))

(assert (=> bs!38019 s!2197))

(assert (=> bs!38019 s!2199))

(assert (=> bs!38019 s!2205))

(assert (=> bs!38019 s!2211))

(assert (=> bs!38019 s!2213))

(assert (=> b!79468 m!74050))

(assert (=> bs!38007 d!55139))

(declare-fun d!55141 () Bool)

(declare-fun res!40142 () Bool)

(declare-fun e!43015 () Bool)

(assert (=> d!55141 (=> res!40142 e!43015)))

(assert (=> d!55141 (= res!40142 (not (and (is-Cons!602 lt!18229) (is-Cons!602 (t!47631 lt!18229)))))))

(assert (=> d!55141 (= (isSorted!2 lt!18229) e!43015)))

(declare-fun b!79469 () Bool)

(declare-fun e!43016 () Bool)

(assert (=> b!79469 (= e!43015 e!43016)))

(declare-fun res!40143 () Bool)

(assert (=> b!79469 (=> (not res!40143) (not e!43016))))

(assert (=> b!79469 (= res!40143 (<= (h!888 lt!18229) (h!888 (t!47631 lt!18229))))))

(declare-fun b!79470 () Bool)

(assert (=> b!79470 (= e!43016 (isSorted!2 (t!47631 lt!18229)))))

(assert (= (and d!55141 (not res!40142)) b!79469))

(assert (= (and b!79469 res!40143) b!79470))

(declare-fun m!74052 () Bool)

(assert (=> b!79470 m!74052))

(assert (=> d!55087 d!55141))

(declare-fun d!55143 () Bool)

(declare-fun lt!18246 () Bool)

(assert (=> d!55143 (= lt!18246 (member (h!888 l!1419) (content!107 Nil!604)))))

(declare-fun e!43018 () Bool)

(assert (=> d!55143 (= lt!18246 e!43018)))

(declare-fun res!40145 () Bool)

(assert (=> d!55143 (=> (not res!40145) (not e!43018))))

(assert (=> d!55143 (= res!40145 (is-Cons!602 Nil!604))))

(assert (=> d!55143 (= (contains!46 Nil!604 (h!888 l!1419)) lt!18246)))

(declare-fun b!79471 () Bool)

(declare-fun e!43017 () Bool)

(assert (=> b!79471 (= e!43018 e!43017)))

(declare-fun res!40144 () Bool)

(assert (=> b!79471 (=> res!40144 e!43017)))

(assert (=> b!79471 (= res!40144 (= (h!888 Nil!604) (h!888 l!1419)))))

(declare-fun b!79472 () Bool)

(assert (=> b!79472 (= e!43017 (contains!46 (t!47631 Nil!604) (h!888 l!1419)))))

(assert (= (and d!55143 res!40145) b!79471))

(assert (= (and b!79471 (not res!40144)) b!79472))

(assert (=> d!55143 m!73752))

(assert (=> d!55143 m!73826))

(declare-fun bs!38020 () Bool)

(declare-fun m!74054 () Bool)

(assert (= bs!38020 m!74054))

(assert (=> bs!38020 s!2107))

(assert (=> bs!38020 s!2119))

(assert (=> bs!38020 s!2111))

(assert (=> bs!38020 s!2123))

(assert (=> bs!38020 s!2131))

(assert (=> bs!38020 s!2133))

(assert (=> bs!38020 s!2141))

(assert (=> bs!38020 s!2149))

(assert (=> bs!38020 s!2151))

(assert (=> bs!38020 s!2159))

(assert (=> b!79472 m!74054))

(assert (=> bs!37938 d!55143))

(assert (=> bs!38008 d!55139))

(assert (=> bs!37922 d!55083))

(assert (=> bs!38014 d!55139))

(assert (=> bs!37995 d!55129))

(declare-fun d!55145 () Bool)

(declare-fun c!20196 () Bool)

(assert (=> d!55145 (= c!20196 (is-Nil!604 (ite lt!18216 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604) Nil!604)))))

(declare-fun e!43019 () (Set Int))

(assert (=> d!55145 (= (content!107 (ite lt!18216 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604) Nil!604)) e!43019)))

(declare-fun b!79473 () Bool)

(assert (=> b!79473 (= e!43019 (as emptyset (Set Int)))))

(declare-fun b!79474 () Bool)

(assert (=> b!79474 (= e!43019 (union (insert (h!888 (ite lt!18216 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604) Nil!604)) (as emptyset (Set Int))) (content!107 (t!47631 (ite lt!18216 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604) Nil!604)))))))

(assert (= (and d!55145 c!20196) b!79473))

(assert (= (and d!55145 (not c!20196)) b!79474))

(declare-fun m!74056 () Bool)

(assert (=> b!79474 m!74056))

(declare-fun m!74058 () Bool)

(assert (=> b!79474 m!74058))

(assert (=> d!55115 d!55145))

(declare-fun d!55147 () Bool)

(declare-fun res!40146 () Bool)

(declare-fun e!43020 () Bool)

(assert (=> d!55147 (=> res!40146 e!43020)))

(assert (=> d!55147 (= res!40146 (not (and (is-Cons!602 lt!18241) (is-Cons!602 (t!47631 lt!18241)))))))

(assert (=> d!55147 (= (isSorted!2 lt!18241) e!43020)))

(declare-fun b!79475 () Bool)

(declare-fun e!43021 () Bool)

(assert (=> b!79475 (= e!43020 e!43021)))

(declare-fun res!40147 () Bool)

(assert (=> b!79475 (=> (not res!40147) (not e!43021))))

(assert (=> b!79475 (= res!40147 (<= (h!888 lt!18241) (h!888 (t!47631 lt!18241))))))

(declare-fun b!79476 () Bool)

(assert (=> b!79476 (= e!43021 (isSorted!2 (t!47631 lt!18241)))))

(assert (= (and d!55147 (not res!40146)) b!79475))

(assert (= (and b!79475 res!40147) b!79476))

(declare-fun m!74060 () Bool)

(assert (=> b!79476 m!74060))

(assert (=> d!55115 d!55147))

(assert (=> bs!37937 d!55143))

(assert (=> bs!38011 d!55139))

(assert (=> bs!37925 d!55101))

(assert (=> bs!37928 d!55143))

(assert (=> bs!38015 d!55139))

(assert (=> bs!37996 d!55135))

(assert (=> bs!37933 d!55143))

(assert (=> bs!37942 d!55143))

(declare-fun d!55149 () Bool)

(declare-fun res!40148 () Bool)

(declare-fun e!43022 () Bool)

(assert (=> d!55149 (=> res!40148 e!43022)))

(assert (=> d!55149 (= res!40148 (not (and (is-Cons!602 lt!18239) (is-Cons!602 (t!47631 lt!18239)))))))

(assert (=> d!55149 (= (isSorted!2 lt!18239) e!43022)))

(declare-fun b!79477 () Bool)

(declare-fun e!43023 () Bool)

(assert (=> b!79477 (= e!43022 e!43023)))

(declare-fun res!40149 () Bool)

(assert (=> b!79477 (=> (not res!40149) (not e!43023))))

(assert (=> b!79477 (= res!40149 (<= (h!888 lt!18239) (h!888 (t!47631 lt!18239))))))

(declare-fun b!79478 () Bool)

(assert (=> b!79478 (= e!43023 (isSorted!2 (t!47631 lt!18239)))))

(assert (= (and d!55149 (not res!40148)) b!79477))

(assert (= (and b!79477 res!40149) b!79478))

(declare-fun m!74062 () Bool)

(assert (=> b!79478 m!74062))

(assert (=> d!55113 d!55149))

(declare-fun d!55151 () Bool)

(declare-fun res!40150 () Bool)

(declare-fun e!43024 () Bool)

(assert (=> d!55151 (=> res!40150 e!43024)))

(assert (=> d!55151 (= res!40150 (not (and (is-Cons!602 (quickSort!1 Nil!604)) (is-Cons!602 (t!47631 (quickSort!1 Nil!604))))))))

(assert (=> d!55151 (= (isSorted!2 (quickSort!1 Nil!604)) e!43024)))

(declare-fun b!79479 () Bool)

(declare-fun e!43025 () Bool)

(assert (=> b!79479 (= e!43024 e!43025)))

(declare-fun res!40151 () Bool)

(assert (=> b!79479 (=> (not res!40151) (not e!43025))))

(assert (=> b!79479 (= res!40151 (<= (h!888 (quickSort!1 Nil!604)) (h!888 (t!47631 (quickSort!1 Nil!604)))))))

(declare-fun b!79480 () Bool)

(assert (=> b!79480 (= e!43025 (isSorted!2 (t!47631 (quickSort!1 Nil!604))))))

(assert (= (and d!55151 (not res!40150)) b!79479))

(assert (= (and b!79479 res!40151) b!79480))

(declare-fun m!74064 () Bool)

(assert (=> b!79480 m!74064))

(assert (=> d!55113 d!55151))

(declare-fun d!55153 () Bool)

(declare-fun res!40152 () Bool)

(declare-fun e!43026 () Bool)

(assert (=> d!55153 (=> res!40152 e!43026)))

(assert (=> d!55153 (= res!40152 (not (and (is-Cons!602 lt!18228) (is-Cons!602 (t!47631 lt!18228)))))))

(assert (=> d!55153 (= (isSorted!2 lt!18228) e!43026)))

(declare-fun b!79481 () Bool)

(declare-fun e!43027 () Bool)

(assert (=> b!79481 (= e!43026 e!43027)))

(declare-fun res!40153 () Bool)

(assert (=> b!79481 (=> (not res!40153) (not e!43027))))

(assert (=> b!79481 (= res!40153 (<= (h!888 lt!18228) (h!888 (t!47631 lt!18228))))))

(declare-fun b!79482 () Bool)

(assert (=> b!79482 (= e!43027 (isSorted!2 (t!47631 lt!18228)))))

(assert (= (and d!55153 (not res!40152)) b!79481))

(assert (= (and b!79481 res!40153) b!79482))

(declare-fun m!74066 () Bool)

(assert (=> b!79482 m!74066))

(assert (=> d!55085 d!55153))

(assert (=> d!55085 d!55151))

(assert (=> bs!37929 d!55143))

(assert (=> d!55091 d!55053))

(assert (=> bs!37927 d!55137))

(assert (=> bs!37923 d!55089))

(assert (=> bs!37931 d!55137))

(assert (=> bs!37940 d!55137))

(assert (=> bs!37932 d!55137))

(assert (=> bs!38004 d!55139))

(assert (=> m!73980 s!2163))

(assert (=> m!73978 s!2163))

(assert (=> m!74016 s!2163))

(assert (=> m!73994 s!2171))

(assert (=> m!74022 s!2163))

(assert (=> m!73988 s!2167))

(assert (=> m!74030 s!2171))

(assert (=> m!73982 s!2165))

(assert (=> m!74024 s!2163))

(assert (=> m!74012 s!2171))

(assert (=> m!74000 s!2167))

(assert (=> m!74010 s!2171))

(assert (=> m!74006 s!2165))

(assert (=> m!74020 s!2169))

(assert (=> m!74014 s!2163))

(assert (=> m!73990 s!2169))

(assert (=> m!73986 s!2167))

(assert (=> m!74026 s!2167))

(assert (=> m!74028 s!2167))

(assert (=> m!73984 s!2165))

(assert (=> m!73998 s!2167))

(assert (=> m!74034 s!2165))

(assert (=> m!74032 s!2171))

(assert (=> m!74008 s!2165))

(assert (=> m!74018 s!2169))

(assert (=> m!73996 s!2171))

(assert (=> m!74036 s!2165))

(assert (=> m!73992 s!2169))

(assert (=> m!74002 s!2169))

(assert (=> m!74004 s!2169))

(declare-fun bs!38021 () Bool)

(declare-fun s!2215 () Bool)

(assert (= bs!38021 (and start!10444 s!2215)))

(declare-fun res!40154 () Bool)

(declare-fun e!43028 () Bool)

(assert (=> bs!38021 (=> res!40154 e!43028)))

(assert (=> bs!38021 (= res!40154 (not (contains!46 l!1419 (h!888 lt!18204))))))

(assert (=> bs!38021 (=> true e!43028)))

(declare-fun b!79483 () Bool)

(assert (=> b!79483 (= e!43028 (<= (h!888 lt!18204) x!29075))))

(assert (= (and bs!38021 (not res!40154)) b!79483))

(assert (=> m!73990 s!2215))

(declare-fun bs!38022 () Bool)

(declare-fun s!2217 () Bool)

(assert (= bs!38022 (and start!10444 s!2217)))

(declare-fun res!40155 () Bool)

(declare-fun e!43029 () Bool)

(assert (=> bs!38022 (=> res!40155 e!43029)))

(assert (=> bs!38022 (= res!40155 (not (contains!46 l!1419 (h!888 lt!18205))))))

(assert (=> bs!38022 (=> true e!43029)))

(declare-fun b!79484 () Bool)

(assert (=> b!79484 (= e!43029 (<= (h!888 lt!18205) x!29075))))

(assert (= (and bs!38022 (not res!40155)) b!79484))

(assert (=> m!74022 m!73978))

(assert (=> m!74022 s!2217))

(assert (=> m!74014 s!2217))

(assert (=> m!74018 s!2215))

(assert (=> m!73986 s!2173))

(assert (=> m!73998 s!2173))

(declare-fun bs!38023 () Bool)

(declare-fun s!2219 () Bool)

(assert (= bs!38023 (and start!10444 s!2219)))

(declare-fun res!40156 () Bool)

(declare-fun e!43030 () Bool)

(assert (=> bs!38023 (=> res!40156 e!43030)))

(assert (=> bs!38023 (= res!40156 (not (contains!46 l!1419 (h!888 (t!47631 l!1419)))))))

(assert (=> bs!38023 (=> true e!43030)))

(declare-fun b!79485 () Bool)

(assert (=> b!79485 (= e!43030 (<= (h!888 (t!47631 l!1419)) x!29075))))

(assert (= (and bs!38023 (not res!40156)) b!79485))

(assert (=> m!73994 s!2219))

(declare-fun bs!38024 () Bool)

(declare-fun s!2221 () Bool)

(assert (= bs!38024 (and start!10444 s!2221)))

(declare-fun res!40157 () Bool)

(declare-fun e!43031 () Bool)

(assert (=> bs!38024 (=> res!40157 e!43031)))

(assert (=> bs!38024 (= res!40157 (not (contains!46 l!1419 (h!888 (t!47631 r!611)))))))

(assert (=> bs!38024 (=> true e!43031)))

(declare-fun b!79486 () Bool)

(assert (=> b!79486 (= e!43031 (<= (h!888 (t!47631 r!611)) x!29075))))

(assert (= (and bs!38024 (not res!40157)) b!79486))

(assert (=> m!74006 m!73982))

(assert (=> m!74006 s!2221))

(assert (=> m!73978 s!2217))

(assert (=> m!74002 s!2215))

(assert (=> m!74030 s!2219))

(assert (=> m!74026 s!2173))

(assert (=> m!74034 s!2221))

(assert (=> m!74010 s!2219))

(assert (=> m!73982 s!2221))

(assert (=> m!73980 s!2183))

(assert (=> m!73992 s!2177))

(assert (=> m!74032 s!2181))

(assert (=> m!74010 s!2181))

(assert (=> m!74008 s!2179))

(assert (=> m!74020 s!2177))

(assert (=> m!74030 s!2181))

(assert (=> m!74026 s!2175))

(assert (=> m!73998 s!2175))

(assert (=> m!74006 s!2179))

(assert (=> m!74002 s!2177))

(assert (=> m!73996 s!2181))

(assert (=> m!73986 s!2175))

(assert (=> m!73994 s!2181))

(assert (=> m!74022 s!2183))

(assert (=> m!74000 s!2175))

(assert (=> m!74014 s!2183))

(assert (=> m!74036 s!2179))

(assert (=> m!74012 s!2181))

(assert (=> m!73990 s!2177))

(assert (=> m!74004 s!2177))

(assert (=> m!74028 s!2175))

(assert (=> m!73984 s!2179))

(assert (=> m!74016 s!2183))

(assert (=> m!74034 s!2179))

(assert (=> m!74018 s!2177))

(assert (=> m!73978 s!2183))

(assert (=> m!74024 s!2183))

(assert (=> m!73982 s!2179))

(assert (=> m!73988 s!2175))

(assert (=> m!74026 s!2185))

(declare-fun bs!38025 () Bool)

(declare-fun s!2223 () Bool)

(assert (= bs!38025 (and start!10444 b!79251 s!2223)))

(declare-fun res!40158 () Bool)

(declare-fun e!43032 () Bool)

(assert (=> bs!38025 (=> res!40158 e!43032)))

(assert (=> bs!38025 (= res!40158 (not (contains!46 r!611 (h!888 lt!18204))))))

(assert (=> bs!38025 (=> true e!43032)))

(declare-fun b!79487 () Bool)

(assert (=> b!79487 (= e!43032 (< x!29075 (h!888 lt!18204)))))

(assert (= (and bs!38025 (not res!40158)) b!79487))

(assert (=> m!73990 m!74002))

(assert (=> m!73990 s!2223))

(declare-fun bs!38026 () Bool)

(declare-fun s!2225 () Bool)

(assert (= bs!38026 (and start!10444 b!79251 s!2225)))

(declare-fun res!40159 () Bool)

(declare-fun e!43033 () Bool)

(assert (=> bs!38026 (=> res!40159 e!43033)))

(assert (=> bs!38026 (= res!40159 (not (contains!46 r!611 (h!888 (t!47631 l!1419)))))))

(assert (=> bs!38026 (=> true e!43033)))

(declare-fun b!79488 () Bool)

(assert (=> b!79488 (= e!43033 (< x!29075 (h!888 (t!47631 l!1419))))))

(assert (= (and bs!38026 (not res!40159)) b!79488))

(assert (=> m!74030 m!74010))

(assert (=> m!74030 s!2225))

(declare-fun bs!38027 () Bool)

(declare-fun s!2227 () Bool)

(assert (= bs!38027 (and start!10444 b!79251 s!2227)))

(declare-fun res!40160 () Bool)

(declare-fun e!43034 () Bool)

(assert (=> bs!38027 (=> res!40160 e!43034)))

(assert (=> bs!38027 (= res!40160 (not (contains!46 r!611 (h!888 (t!47631 r!611)))))))

(assert (=> bs!38027 (=> true e!43034)))

(declare-fun b!79489 () Bool)

(assert (=> b!79489 (= e!43034 (< x!29075 (h!888 (t!47631 r!611))))))

(assert (= (and bs!38027 (not res!40160)) b!79489))

(assert (=> m!74006 s!2227))

(assert (=> m!74034 s!2227))

(assert (=> m!74010 s!2225))

(assert (=> m!73994 s!2225))

(assert (=> m!73998 s!2185))

(assert (=> m!74018 s!2223))

(declare-fun bs!38028 () Bool)

(declare-fun s!2229 () Bool)

(assert (= bs!38028 (and start!10444 b!79251 s!2229)))

(declare-fun res!40161 () Bool)

(declare-fun e!43035 () Bool)

(assert (=> bs!38028 (=> res!40161 e!43035)))

(assert (=> bs!38028 (= res!40161 (not (contains!46 r!611 (h!888 lt!18205))))))

(assert (=> bs!38028 (=> true e!43035)))

(declare-fun b!79490 () Bool)

(assert (=> b!79490 (= e!43035 (< x!29075 (h!888 lt!18205)))))

(assert (= (and bs!38028 (not res!40161)) b!79490))

(assert (=> m!74014 s!2229))

(assert (=> m!73978 s!2229))

(assert (=> m!74002 s!2223))

(assert (=> m!73982 s!2227))

(assert (=> m!73986 s!2185))

(assert (=> m!74022 s!2229))

(assert (=> m!73812 s!2127))

(assert (=> m!74030 s!2193))

(assert (=> m!73986 s!2191))

(assert (=> m!73814 s!2127))

(assert (=> m!74006 s!2195))

(assert (=> m!74036 s!2195))

(assert (=> m!74018 s!2187))

(assert (=> m!74034 s!2195))

(assert (=> m!74020 s!2187))

(assert (=> m!73996 s!2193))

(assert (=> m!73994 s!2193))

(assert (=> m!73978 s!2189))

(assert (=> m!74000 s!2191))

(assert (=> m!74002 s!2187))

(assert (=> m!73992 s!2187))

(assert (=> m!74008 s!2195))

(assert (=> m!74004 s!2187))

(assert (=> m!74010 s!2193))

(assert (=> m!74032 s!2193))

(assert (=> m!74014 s!2189))

(assert (=> m!74028 s!2191))

(assert (=> m!74024 s!2189))

(assert (=> m!73990 s!2187))

(assert (=> m!74016 s!2189))

(assert (=> m!73980 s!2189))

(assert (=> m!73998 s!2191))

(assert (=> m!74026 s!2191))

(assert (=> m!73982 s!2195))

(assert (=> m!74012 s!2193))

(assert (=> m!73984 s!2195))

(assert (=> m!73988 s!2191))

(assert (=> m!74022 s!2189))

(assert (=> m!73998 s!2197))

(declare-fun bs!38029 () Bool)

(declare-fun s!2231 () Bool)

(assert (= bs!38029 (and d!55055 b!79322 s!2231)))

(declare-fun res!40162 () Bool)

(declare-fun e!43036 () Bool)

(assert (=> bs!38029 (=> res!40162 e!43036)))

(assert (=> bs!38029 (= res!40162 (not (contains!46 Nil!604 (h!888 (t!47631 l!1419)))))))

(assert (=> bs!38029 (=> true e!43036)))

(declare-fun b!79491 () Bool)

(assert (=> b!79491 (= e!43036 (<= (h!888 (t!47631 l!1419)) (h!888 r!611)))))

(assert (= (and bs!38029 (not res!40162)) b!79491))

(assert (=> m!74010 m!74030))

(assert (=> m!74010 s!2231))

(declare-fun bs!38030 () Bool)

(declare-fun s!2233 () Bool)

(assert (= bs!38030 (and d!55055 b!79322 s!2233)))

(declare-fun res!40163 () Bool)

(declare-fun e!43037 () Bool)

(assert (=> bs!38030 (=> res!40163 e!43037)))

(assert (=> bs!38030 (= res!40163 (not (contains!46 Nil!604 (h!888 (t!47631 r!611)))))))

(assert (=> bs!38030 (=> true e!43037)))

(declare-fun b!79492 () Bool)

(assert (=> b!79492 (= e!43037 (<= (h!888 (t!47631 r!611)) (h!888 r!611)))))

(assert (= (and bs!38030 (not res!40163)) b!79492))

(assert (=> m!74034 s!2233))

(assert (=> m!74006 s!2233))

(assert (=> m!74030 s!2231))

(declare-fun bs!38031 () Bool)

(declare-fun s!2235 () Bool)

(assert (= bs!38031 (and d!55055 b!79322 s!2235)))

(declare-fun res!40164 () Bool)

(declare-fun e!43038 () Bool)

(assert (=> bs!38031 (=> res!40164 e!43038)))

(assert (=> bs!38031 (= res!40164 (not (contains!46 Nil!604 (h!888 lt!18205))))))

(assert (=> bs!38031 (=> true e!43038)))

(declare-fun b!79493 () Bool)

(assert (=> b!79493 (= e!43038 (<= (h!888 lt!18205) (h!888 r!611)))))

(assert (= (and bs!38031 (not res!40164)) b!79493))

(assert (=> m!74014 m!74022))

(assert (=> m!74014 s!2235))

(assert (=> m!74022 s!2235))

(assert (=> m!73986 s!2197))

(assert (=> m!73812 s!2135))

(assert (=> m!73994 s!2231))

(assert (=> m!73982 s!2233))

(declare-fun bs!38032 () Bool)

(declare-fun s!2237 () Bool)

(assert (= bs!38032 (and d!55055 b!79322 s!2237)))

(declare-fun res!40165 () Bool)

(declare-fun e!43039 () Bool)

(assert (=> bs!38032 (=> res!40165 e!43039)))

(assert (=> bs!38032 (= res!40165 (not (contains!46 Nil!604 (h!888 lt!18204))))))

(assert (=> bs!38032 (=> true e!43039)))

(declare-fun b!79494 () Bool)

(assert (=> b!79494 (= e!43039 (<= (h!888 lt!18204) (h!888 r!611)))))

(assert (= (and bs!38032 (not res!40165)) b!79494))

(assert (=> m!73990 m!74018))

(assert (=> m!73990 s!2237))

(assert (=> m!73814 s!2135))

(assert (=> m!74002 s!2237))

(assert (=> m!73978 s!2235))

(assert (=> m!74018 s!2237))

(assert (=> m!74026 s!2197))

(declare-fun bs!38033 () Bool)

(declare-fun s!2239 () Bool)

(assert (= bs!38033 (and d!55055 b!79322 b!79325 s!2239)))

(declare-fun res!40166 () Bool)

(declare-fun e!43040 () Bool)

(assert (=> bs!38033 (=> res!40166 e!43040)))

(assert (=> bs!38033 (= res!40166 (not (contains!46 Nil!604 (h!888 (t!47631 r!611)))))))

(assert (=> bs!38033 (=> true e!43040)))

(declare-fun b!79495 () Bool)

(assert (=> b!79495 (= e!43040 (< (h!888 r!611) (h!888 (t!47631 r!611))))))

(assert (= (and bs!38033 (not res!40166)) b!79495))

(assert (=> m!74006 m!74034))

(assert (=> m!74006 s!2239))

(assert (=> m!74026 s!2199))

(assert (=> m!73814 s!2143))

(assert (=> m!73812 s!2143))

(declare-fun s!2241 () Bool)

(declare-fun bs!38034 () Bool)

(assert (= bs!38034 (and d!55055 b!79322 b!79325 s!2241)))

(declare-fun res!40167 () Bool)

(declare-fun e!43041 () Bool)

(assert (=> bs!38034 (=> res!40167 e!43041)))

(assert (=> bs!38034 (= res!40167 (not (contains!46 Nil!604 (h!888 lt!18204))))))

(assert (=> bs!38034 (=> true e!43041)))

(declare-fun b!79496 () Bool)

(assert (=> b!79496 (= e!43041 (< (h!888 r!611) (h!888 lt!18204)))))

(assert (= (and bs!38034 (not res!40167)) b!79496))

(assert (=> m!74018 s!2241))

(assert (=> m!73998 s!2199))

(declare-fun bs!38035 () Bool)

(declare-fun s!2243 () Bool)

(assert (= bs!38035 (and d!55055 b!79322 b!79325 s!2243)))

(declare-fun res!40168 () Bool)

(declare-fun e!43042 () Bool)

(assert (=> bs!38035 (=> res!40168 e!43042)))

(assert (=> bs!38035 (= res!40168 (not (contains!46 Nil!604 (h!888 (t!47631 l!1419)))))))

(assert (=> bs!38035 (=> true e!43042)))

(declare-fun b!79497 () Bool)

(assert (=> b!79497 (= e!43042 (< (h!888 r!611) (h!888 (t!47631 l!1419))))))

(assert (= (and bs!38035 (not res!40168)) b!79497))

(assert (=> m!73994 m!74030))

(assert (=> m!73994 s!2243))

(declare-fun bs!38036 () Bool)

(declare-fun s!2245 () Bool)

(assert (= bs!38036 (and d!55055 b!79322 b!79325 s!2245)))

(declare-fun res!40169 () Bool)

(declare-fun e!43043 () Bool)

(assert (=> bs!38036 (=> res!40169 e!43043)))

(assert (=> bs!38036 (= res!40169 (not (contains!46 Nil!604 (h!888 lt!18205))))))

(assert (=> bs!38036 (=> true e!43043)))

(declare-fun b!79498 () Bool)

(assert (=> b!79498 (= e!43043 (< (h!888 r!611) (h!888 lt!18205)))))

(assert (= (and bs!38036 (not res!40169)) b!79498))

(assert (=> m!74022 s!2245))

(assert (=> m!73978 s!2245))

(assert (=> m!74014 s!2245))

(assert (=> m!74034 s!2239))

(assert (=> m!74002 s!2241))

(assert (=> m!74010 s!2243))

(assert (=> m!73982 s!2239))

(assert (=> m!73986 s!2199))

(assert (=> m!73990 s!2241))

(assert (=> m!74030 s!2243))

(assert (=> m!73812 s!2145))

(assert (=> m!74030 s!2207))

(assert (=> m!73986 s!2205))

(assert (=> m!73814 s!2145))

(assert (=> m!74006 s!2209))

(assert (=> m!74036 s!2209))

(assert (=> m!74018 s!2201))

(assert (=> m!74034 s!2209))

(assert (=> m!74020 s!2201))

(assert (=> m!73996 s!2207))

(assert (=> m!73994 s!2207))

(assert (=> m!73978 s!2203))

(assert (=> m!74000 s!2205))

(assert (=> m!74002 s!2201))

(assert (=> m!73992 s!2201))

(assert (=> m!74008 s!2209))

(assert (=> m!74004 s!2201))

(assert (=> m!74010 s!2207))

(assert (=> m!74032 s!2207))

(assert (=> m!74014 s!2203))

(assert (=> m!74028 s!2205))

(assert (=> m!74024 s!2203))

(assert (=> m!73990 s!2201))

(assert (=> m!74016 s!2203))

(assert (=> m!73980 s!2203))

(assert (=> m!73998 s!2205))

(assert (=> m!74026 s!2205))

(assert (=> m!73982 s!2209))

(assert (=> m!74012 s!2207))

(assert (=> m!73984 s!2209))

(assert (=> m!73988 s!2205))

(assert (=> m!74022 s!2203))

(assert (=> m!73998 s!2211))

(declare-fun bs!38037 () Bool)

(declare-fun s!2247 () Bool)

(assert (= bs!38037 (and d!55057 b!79327 s!2247)))

(declare-fun res!40170 () Bool)

(declare-fun e!43044 () Bool)

(assert (=> bs!38037 (=> res!40170 e!43044)))

(assert (=> bs!38037 (= res!40170 (not (contains!46 Nil!604 (h!888 (t!47631 l!1419)))))))

(assert (=> bs!38037 (=> true e!43044)))

(declare-fun b!79499 () Bool)

(assert (=> b!79499 (= e!43044 (<= (h!888 (t!47631 l!1419)) (h!888 l!1419)))))

(assert (= (and bs!38037 (not res!40170)) b!79499))

(assert (=> m!74010 m!74030))

(assert (=> m!74010 s!2247))

(declare-fun bs!38038 () Bool)

(declare-fun s!2249 () Bool)

(assert (= bs!38038 (and d!55057 b!79327 s!2249)))

(declare-fun res!40171 () Bool)

(declare-fun e!43045 () Bool)

(assert (=> bs!38038 (=> res!40171 e!43045)))

(assert (=> bs!38038 (= res!40171 (not (contains!46 Nil!604 (h!888 (t!47631 r!611)))))))

(assert (=> bs!38038 (=> true e!43045)))

(declare-fun b!79500 () Bool)

(assert (=> b!79500 (= e!43045 (<= (h!888 (t!47631 r!611)) (h!888 l!1419)))))

(assert (= (and bs!38038 (not res!40171)) b!79500))

(assert (=> m!74034 s!2249))

(assert (=> m!74006 s!2249))

(assert (=> m!74030 s!2247))

(declare-fun bs!38039 () Bool)

(declare-fun s!2251 () Bool)

(assert (= bs!38039 (and d!55057 b!79327 s!2251)))

(declare-fun res!40172 () Bool)

(declare-fun e!43046 () Bool)

(assert (=> bs!38039 (=> res!40172 e!43046)))

(assert (=> bs!38039 (= res!40172 (not (contains!46 Nil!604 (h!888 lt!18205))))))

(assert (=> bs!38039 (=> true e!43046)))

(declare-fun b!79501 () Bool)

(assert (=> b!79501 (= e!43046 (<= (h!888 lt!18205) (h!888 l!1419)))))

(assert (= (and bs!38039 (not res!40172)) b!79501))

(assert (=> m!74014 m!74022))

(assert (=> m!74014 s!2251))

(assert (=> m!74022 s!2251))

(assert (=> m!73986 s!2211))

(assert (=> m!73812 s!2153))

(assert (=> m!73994 s!2247))

(assert (=> m!73982 s!2249))

(declare-fun bs!38040 () Bool)

(declare-fun s!2253 () Bool)

(assert (= bs!38040 (and d!55057 b!79327 s!2253)))

(declare-fun res!40173 () Bool)

(declare-fun e!43047 () Bool)

(assert (=> bs!38040 (=> res!40173 e!43047)))

(assert (=> bs!38040 (= res!40173 (not (contains!46 Nil!604 (h!888 lt!18204))))))

(assert (=> bs!38040 (=> true e!43047)))

(declare-fun b!79502 () Bool)

(assert (=> b!79502 (= e!43047 (<= (h!888 lt!18204) (h!888 l!1419)))))

(assert (= (and bs!38040 (not res!40173)) b!79502))

(assert (=> m!73990 m!74018))

(assert (=> m!73990 s!2253))

(assert (=> m!73814 s!2153))

(assert (=> m!74002 s!2253))

(assert (=> m!73978 s!2251))

(assert (=> m!74018 s!2253))

(assert (=> m!74026 s!2211))

(declare-fun bs!38041 () Bool)

(declare-fun s!2255 () Bool)

(assert (= bs!38041 (and d!55057 b!79327 b!79330 s!2255)))

(declare-fun res!40174 () Bool)

(declare-fun e!43048 () Bool)

(assert (=> bs!38041 (=> res!40174 e!43048)))

(assert (=> bs!38041 (= res!40174 (not (contains!46 Nil!604 (h!888 (t!47631 r!611)))))))

(assert (=> bs!38041 (=> true e!43048)))

(declare-fun b!79503 () Bool)

(assert (=> b!79503 (= e!43048 (< (h!888 l!1419) (h!888 (t!47631 r!611))))))

(assert (= (and bs!38041 (not res!40174)) b!79503))

(assert (=> m!74006 m!74034))

(assert (=> m!74006 s!2255))

(assert (=> m!74026 s!2213))

(assert (=> m!73814 s!2161))

(assert (=> m!73812 s!2161))

(declare-fun s!2257 () Bool)

(declare-fun bs!38042 () Bool)

(assert (= bs!38042 (and d!55057 b!79327 b!79330 s!2257)))

(declare-fun res!40175 () Bool)

(declare-fun e!43049 () Bool)

(assert (=> bs!38042 (=> res!40175 e!43049)))

(assert (=> bs!38042 (= res!40175 (not (contains!46 Nil!604 (h!888 lt!18204))))))

(assert (=> bs!38042 (=> true e!43049)))

(declare-fun b!79504 () Bool)

(assert (=> b!79504 (= e!43049 (< (h!888 l!1419) (h!888 lt!18204)))))

(assert (= (and bs!38042 (not res!40175)) b!79504))

(assert (=> m!74018 s!2257))

(assert (=> m!73998 s!2213))

(declare-fun bs!38043 () Bool)

(declare-fun s!2259 () Bool)

(assert (= bs!38043 (and d!55057 b!79327 b!79330 s!2259)))

(declare-fun res!40176 () Bool)

(declare-fun e!43050 () Bool)

(assert (=> bs!38043 (=> res!40176 e!43050)))

(assert (=> bs!38043 (= res!40176 (not (contains!46 Nil!604 (h!888 (t!47631 l!1419)))))))

(assert (=> bs!38043 (=> true e!43050)))

(declare-fun b!79505 () Bool)

(assert (=> b!79505 (= e!43050 (< (h!888 l!1419) (h!888 (t!47631 l!1419))))))

(assert (= (and bs!38043 (not res!40176)) b!79505))

(assert (=> m!73994 m!74030))

(assert (=> m!73994 s!2259))

(declare-fun bs!38044 () Bool)

(declare-fun s!2261 () Bool)

(assert (= bs!38044 (and d!55057 b!79327 b!79330 s!2261)))

(declare-fun res!40177 () Bool)

(declare-fun e!43051 () Bool)

(assert (=> bs!38044 (=> res!40177 e!43051)))

(assert (=> bs!38044 (= res!40177 (not (contains!46 Nil!604 (h!888 lt!18205))))))

(assert (=> bs!38044 (=> true e!43051)))

(declare-fun b!79506 () Bool)

(assert (=> b!79506 (= e!43051 (< (h!888 l!1419) (h!888 lt!18205)))))

(assert (= (and bs!38044 (not res!40177)) b!79506))

(assert (=> m!74022 s!2261))

(assert (=> m!73978 s!2261))

(assert (=> m!74014 s!2261))

(assert (=> m!74034 s!2255))

(assert (=> m!74002 s!2257))

(assert (=> m!74010 s!2259))

(assert (=> m!73982 s!2255))

(assert (=> m!73986 s!2213))

(assert (=> m!73990 s!2257))

(assert (=> m!74030 s!2259))

(declare-fun bs!38045 () Bool)

(declare-fun s!2263 () Bool)

(assert (= bs!38045 (and d!55093 s!2263)))

(assert (=> bs!38045 (=> true (= (contains!46 (ite lt!18214 (Cons!602 (h!888 (t!47631 r!611)) Nil!604) Nil!604) (h!888 (t!47631 l!1419))) (member (h!888 (t!47631 l!1419)) (content!107 (ite lt!18214 (Cons!602 (h!888 (t!47631 r!611)) Nil!604) Nil!604)))))))

(declare-fun m!74068 () Bool)

(assert (=> m!74030 m!74068))

(declare-fun m!74070 () Bool)

(assert (=> m!74030 m!74070))

(assert (=> m!74030 s!2263))

(declare-fun bs!38046 () Bool)

(declare-fun s!2265 () Bool)

(assert (= bs!38046 (and d!55093 s!2265)))

(assert (=> bs!38046 (=> true (= (contains!46 (ite lt!18214 (Cons!602 (h!888 (t!47631 r!611)) Nil!604) Nil!604) lt!18209) (member lt!18209 (content!107 (ite lt!18214 (Cons!602 (h!888 (t!47631 r!611)) Nil!604) Nil!604)))))))

(declare-fun m!74072 () Bool)

(assert (=> m!73986 m!74072))

(declare-fun m!74074 () Bool)

(assert (=> m!73986 m!74074))

(assert (=> m!73986 s!2265))

(declare-fun bs!38047 () Bool)

(declare-fun s!2267 () Bool)

(assert (= bs!38047 (and d!55093 s!2267)))

(assert (=> bs!38047 (=> true (= (contains!46 (ite lt!18214 (Cons!602 (h!888 (t!47631 r!611)) Nil!604) Nil!604) (h!888 (t!47631 r!611))) (member (h!888 (t!47631 r!611)) (content!107 (ite lt!18214 (Cons!602 (h!888 (t!47631 r!611)) Nil!604) Nil!604)))))))

(declare-fun m!74076 () Bool)

(assert (=> m!74006 m!74076))

(declare-fun m!74078 () Bool)

(assert (=> m!74006 m!74078))

(assert (=> m!74006 s!2267))

(assert (=> m!74036 s!2267))

(declare-fun bs!38048 () Bool)

(declare-fun s!2269 () Bool)

(assert (= bs!38048 (and d!55093 s!2269)))

(assert (=> bs!38048 (=> true (= (contains!46 (ite lt!18214 (Cons!602 (h!888 (t!47631 r!611)) Nil!604) Nil!604) (h!888 lt!18204)) (member (h!888 lt!18204) (content!107 (ite lt!18214 (Cons!602 (h!888 (t!47631 r!611)) Nil!604) Nil!604)))))))

(declare-fun m!74080 () Bool)

(assert (=> m!74018 m!74080))

(declare-fun m!74082 () Bool)

(assert (=> m!74018 m!74082))

(assert (=> m!74018 s!2269))

(assert (=> m!74034 s!2267))

(assert (=> m!74020 s!2269))

(assert (=> m!73996 s!2263))

(assert (=> m!73994 s!2263))

(declare-fun bs!38049 () Bool)

(declare-fun s!2271 () Bool)

(assert (= bs!38049 (and d!55093 s!2271)))

(assert (=> bs!38049 (=> true (= (contains!46 (ite lt!18214 (Cons!602 (h!888 (t!47631 r!611)) Nil!604) Nil!604) (h!888 lt!18205)) (member (h!888 lt!18205) (content!107 (ite lt!18214 (Cons!602 (h!888 (t!47631 r!611)) Nil!604) Nil!604)))))))

(declare-fun m!74084 () Bool)

(assert (=> m!73978 m!74084))

(declare-fun m!74086 () Bool)

(assert (=> m!73978 m!74086))

(assert (=> m!73978 s!2271))

(assert (=> m!74000 s!2265))

(assert (=> m!74002 s!2269))

(assert (=> m!73992 s!2269))

(assert (=> m!74008 s!2267))

(assert (=> m!74004 s!2269))

(assert (=> m!74010 s!2263))

(assert (=> m!74032 s!2263))

(assert (=> m!74014 s!2271))

(assert (=> m!74028 s!2265))

(assert (=> m!74024 s!2271))

(assert (=> m!73990 s!2269))

(assert (=> m!74016 s!2271))

(assert (=> m!73980 s!2271))

(assert (=> m!73998 s!2265))

(assert (=> m!74026 s!2265))

(assert (=> m!73982 s!2267))

(assert (=> m!74012 s!2263))

(assert (=> m!73984 s!2267))

(assert (=> m!73988 s!2265))

(assert (=> m!74022 s!2271))

(declare-fun bs!38050 () Bool)

(declare-fun s!2273 () Bool)

(assert (= bs!38050 (and d!55093 b!79406 s!2273)))

(declare-fun res!40178 () Bool)

(declare-fun e!43052 () Bool)

(assert (=> bs!38050 (=> res!40178 e!43052)))

(assert (=> bs!38050 (= res!40178 (not (contains!46 (ite lt!18214 (Cons!602 (h!888 (t!47631 r!611)) Nil!604) Nil!604) lt!18209)))))

(assert (=> bs!38050 (=> true e!43052)))

(declare-fun b!79507 () Bool)

(assert (=> b!79507 (= e!43052 (<= lt!18209 (h!888 r!611)))))

(assert (= (and bs!38050 (not res!40178)) b!79507))

(assert (=> m!73998 m!74072))

(assert (=> m!73998 s!2273))

(declare-fun bs!38051 () Bool)

(declare-fun s!2275 () Bool)

(assert (= bs!38051 (and d!55093 b!79406 s!2275)))

(declare-fun res!40179 () Bool)

(declare-fun e!43053 () Bool)

(assert (=> bs!38051 (=> res!40179 e!43053)))

(assert (=> bs!38051 (= res!40179 (not (contains!46 (ite lt!18214 (Cons!602 (h!888 (t!47631 r!611)) Nil!604) Nil!604) (h!888 (t!47631 l!1419)))))))

(assert (=> bs!38051 (=> true e!43053)))

(declare-fun b!79508 () Bool)

(assert (=> b!79508 (= e!43053 (<= (h!888 (t!47631 l!1419)) (h!888 r!611)))))

(assert (= (and bs!38051 (not res!40179)) b!79508))

(assert (=> m!74010 m!74068))

(assert (=> m!74010 s!2275))

(declare-fun bs!38052 () Bool)

(declare-fun s!2277 () Bool)

(assert (= bs!38052 (and d!55093 b!79406 s!2277)))

(declare-fun res!40180 () Bool)

(declare-fun e!43054 () Bool)

(assert (=> bs!38052 (=> res!40180 e!43054)))

(assert (=> bs!38052 (= res!40180 (not (contains!46 (ite lt!18214 (Cons!602 (h!888 (t!47631 r!611)) Nil!604) Nil!604) (h!888 (t!47631 r!611)))))))

(assert (=> bs!38052 (=> true e!43054)))

(declare-fun b!79509 () Bool)

(assert (=> b!79509 (= e!43054 (<= (h!888 (t!47631 r!611)) (h!888 r!611)))))

(assert (= (and bs!38052 (not res!40180)) b!79509))

(assert (=> m!74034 m!74076))

(assert (=> m!74034 s!2277))

(assert (=> m!74006 s!2277))

(assert (=> m!74030 s!2275))

(declare-fun bs!38053 () Bool)

(declare-fun s!2279 () Bool)

(assert (= bs!38053 (and d!55093 b!79406 s!2279)))

(declare-fun res!40181 () Bool)

(declare-fun e!43055 () Bool)

(assert (=> bs!38053 (=> res!40181 e!43055)))

(assert (=> bs!38053 (= res!40181 (not (contains!46 (ite lt!18214 (Cons!602 (h!888 (t!47631 r!611)) Nil!604) Nil!604) (h!888 lt!18205))))))

(assert (=> bs!38053 (=> true e!43055)))

(declare-fun b!79510 () Bool)

(assert (=> b!79510 (= e!43055 (<= (h!888 lt!18205) (h!888 r!611)))))

(assert (= (and bs!38053 (not res!40181)) b!79510))

(assert (=> m!74014 m!74084))

(assert (=> m!74014 s!2279))

(assert (=> m!74022 s!2279))

(assert (=> m!73986 s!2273))

(assert (=> m!73994 s!2275))

(assert (=> m!73982 s!2277))

(declare-fun bs!38054 () Bool)

(declare-fun s!2281 () Bool)

(assert (= bs!38054 (and d!55093 b!79406 s!2281)))

(declare-fun res!40182 () Bool)

(declare-fun e!43056 () Bool)

(assert (=> bs!38054 (=> res!40182 e!43056)))

(assert (=> bs!38054 (= res!40182 (not (contains!46 (ite lt!18214 (Cons!602 (h!888 (t!47631 r!611)) Nil!604) Nil!604) (h!888 lt!18204))))))

(assert (=> bs!38054 (=> true e!43056)))

(declare-fun b!79511 () Bool)

(assert (=> b!79511 (= e!43056 (<= (h!888 lt!18204) (h!888 r!611)))))

(assert (= (and bs!38054 (not res!40182)) b!79511))

(assert (=> m!73990 m!74080))

(assert (=> m!73990 s!2281))

(assert (=> m!74002 s!2281))

(assert (=> m!73978 s!2279))

(assert (=> m!74018 s!2281))

(assert (=> m!74026 s!2273))

(declare-fun s!2283 () Bool)

(declare-fun bs!38055 () Bool)

(assert (= bs!38055 (and d!55093 b!79406 b!79409 s!2283)))

(assert (=> bs!38055 (=> true (= (contains!46 (ite lt!18214 Nil!604 (Cons!602 (h!888 (t!47631 r!611)) Nil!604)) lt!18209) (member lt!18209 (content!107 (ite lt!18214 Nil!604 (Cons!602 (h!888 (t!47631 r!611)) Nil!604))))))))

(declare-fun m!74088 () Bool)

(assert (=> m!74028 m!74088))

(declare-fun m!74090 () Bool)

(assert (=> m!74028 m!74090))

(assert (=> m!74028 s!2283))

(assert (=> m!73988 s!2283))

(declare-fun bs!38056 () Bool)

(declare-fun s!2285 () Bool)

(assert (= bs!38056 (and d!55093 b!79406 b!79409 s!2285)))

(assert (=> bs!38056 (=> true (= (contains!46 (ite lt!18214 Nil!604 (Cons!602 (h!888 (t!47631 r!611)) Nil!604)) (h!888 lt!18204)) (member (h!888 lt!18204) (content!107 (ite lt!18214 Nil!604 (Cons!602 (h!888 (t!47631 r!611)) Nil!604))))))))

(declare-fun m!74092 () Bool)

(assert (=> m!74004 m!74092))

(declare-fun m!74094 () Bool)

(assert (=> m!74004 m!74094))

(assert (=> m!74004 s!2285))

(declare-fun s!2287 () Bool)

(declare-fun bs!38057 () Bool)

(assert (= bs!38057 (and d!55093 b!79406 b!79409 s!2287)))

(assert (=> bs!38057 (=> true (= (contains!46 (ite lt!18214 Nil!604 (Cons!602 (h!888 (t!47631 r!611)) Nil!604)) (h!888 (t!47631 r!611))) (member (h!888 (t!47631 r!611)) (content!107 (ite lt!18214 Nil!604 (Cons!602 (h!888 (t!47631 r!611)) Nil!604))))))))

(declare-fun m!74096 () Bool)

(assert (=> m!74034 m!74096))

(declare-fun m!74098 () Bool)

(assert (=> m!74034 m!74098))

(assert (=> m!74034 s!2287))

(declare-fun s!2289 () Bool)

(declare-fun bs!38058 () Bool)

(assert (= bs!38058 (and d!55093 b!79406 b!79409 s!2289)))

(assert (=> bs!38058 (=> true (= (contains!46 (ite lt!18214 Nil!604 (Cons!602 (h!888 (t!47631 r!611)) Nil!604)) (h!888 lt!18205)) (member (h!888 lt!18205) (content!107 (ite lt!18214 Nil!604 (Cons!602 (h!888 (t!47631 r!611)) Nil!604))))))))

(declare-fun m!74100 () Bool)

(assert (=> m!74022 m!74100))

(declare-fun m!74102 () Bool)

(assert (=> m!74022 m!74102))

(assert (=> m!74022 s!2289))

(declare-fun s!2291 () Bool)

(declare-fun bs!38059 () Bool)

(assert (= bs!38059 (and d!55093 b!79406 b!79409 s!2291)))

(assert (=> bs!38059 (=> true (= (contains!46 (ite lt!18214 Nil!604 (Cons!602 (h!888 (t!47631 r!611)) Nil!604)) (h!888 (t!47631 l!1419))) (member (h!888 (t!47631 l!1419)) (content!107 (ite lt!18214 Nil!604 (Cons!602 (h!888 (t!47631 r!611)) Nil!604))))))))

(declare-fun m!74104 () Bool)

(assert (=> m!74010 m!74104))

(declare-fun m!74106 () Bool)

(assert (=> m!74010 m!74106))

(assert (=> m!74010 s!2291))

(assert (=> m!74018 s!2285))

(assert (=> m!73980 s!2289))

(assert (=> m!74008 s!2287))

(assert (=> m!74024 s!2289))

(assert (=> m!74012 s!2291))

(assert (=> m!73986 s!2283))

(assert (=> m!73998 s!2283))

(assert (=> m!74002 s!2285))

(assert (=> m!74000 s!2283))

(assert (=> m!73982 s!2287))

(assert (=> m!73978 s!2289))

(assert (=> m!74016 s!2289))

(assert (=> m!73992 s!2285))

(assert (=> m!74014 s!2289))

(assert (=> m!73994 s!2291))

(assert (=> m!74006 s!2287))

(assert (=> m!74032 s!2291))

(assert (=> m!74030 s!2291))

(assert (=> m!73996 s!2291))

(assert (=> m!73990 s!2285))

(assert (=> m!73984 s!2287))

(assert (=> m!74036 s!2287))

(assert (=> m!74026 s!2283))

(assert (=> m!74020 s!2285))

(declare-fun s!2293 () Bool)

(declare-fun bs!38060 () Bool)

(assert (= bs!38060 (and d!55093 b!79406 b!79409 s!2293)))

(declare-fun res!40183 () Bool)

(declare-fun e!43057 () Bool)

(assert (=> bs!38060 (=> res!40183 e!43057)))

(assert (=> bs!38060 (= res!40183 (not (contains!46 (ite lt!18214 Nil!604 (Cons!602 (h!888 (t!47631 r!611)) Nil!604)) (h!888 (t!47631 r!611)))))))

(assert (=> bs!38060 (=> true e!43057)))

(declare-fun b!79512 () Bool)

(assert (=> b!79512 (= e!43057 (< (h!888 r!611) (h!888 (t!47631 r!611))))))

(assert (= (and bs!38060 (not res!40183)) b!79512))

(assert (=> m!74006 m!74096))

(assert (=> m!74006 s!2293))

(declare-fun s!2295 () Bool)

(declare-fun bs!38061 () Bool)

(assert (= bs!38061 (and d!55093 b!79406 b!79409 s!2295)))

(declare-fun res!40184 () Bool)

(declare-fun e!43058 () Bool)

(assert (=> bs!38061 (=> res!40184 e!43058)))

(assert (=> bs!38061 (= res!40184 (not (contains!46 (ite lt!18214 Nil!604 (Cons!602 (h!888 (t!47631 r!611)) Nil!604)) lt!18209)))))

(assert (=> bs!38061 (=> true e!43058)))

(declare-fun b!79513 () Bool)

(assert (=> b!79513 (= e!43058 (< (h!888 r!611) lt!18209))))

(assert (= (and bs!38061 (not res!40184)) b!79513))

(assert (=> m!74026 m!74088))

(assert (=> m!74026 s!2295))

(declare-fun bs!38062 () Bool)

(declare-fun s!2297 () Bool)

(assert (= bs!38062 (and d!55093 b!79406 b!79409 s!2297)))

(declare-fun res!40185 () Bool)

(declare-fun e!43059 () Bool)

(assert (=> bs!38062 (=> res!40185 e!43059)))

(assert (=> bs!38062 (= res!40185 (not (contains!46 (ite lt!18214 Nil!604 (Cons!602 (h!888 (t!47631 r!611)) Nil!604)) (h!888 lt!18204))))))

(assert (=> bs!38062 (=> true e!43059)))

(declare-fun b!79514 () Bool)

(assert (=> b!79514 (= e!43059 (< (h!888 r!611) (h!888 lt!18204)))))

(assert (= (and bs!38062 (not res!40185)) b!79514))

(assert (=> m!74018 m!74092))

(assert (=> m!74018 s!2297))

(assert (=> m!73998 s!2295))

(declare-fun bs!38063 () Bool)

(declare-fun s!2299 () Bool)

(assert (= bs!38063 (and d!55093 b!79406 b!79409 s!2299)))

(declare-fun res!40186 () Bool)

(declare-fun e!43060 () Bool)

(assert (=> bs!38063 (=> res!40186 e!43060)))

(assert (=> bs!38063 (= res!40186 (not (contains!46 (ite lt!18214 Nil!604 (Cons!602 (h!888 (t!47631 r!611)) Nil!604)) (h!888 (t!47631 l!1419)))))))

(assert (=> bs!38063 (=> true e!43060)))

(declare-fun b!79515 () Bool)

(assert (=> b!79515 (= e!43060 (< (h!888 r!611) (h!888 (t!47631 l!1419))))))

(assert (= (and bs!38063 (not res!40186)) b!79515))

(assert (=> m!73994 m!74104))

(assert (=> m!73994 s!2299))

(declare-fun s!2301 () Bool)

(declare-fun bs!38064 () Bool)

(assert (= bs!38064 (and d!55093 b!79406 b!79409 s!2301)))

(declare-fun res!40187 () Bool)

(declare-fun e!43061 () Bool)

(assert (=> bs!38064 (=> res!40187 e!43061)))

(assert (=> bs!38064 (= res!40187 (not (contains!46 (ite lt!18214 Nil!604 (Cons!602 (h!888 (t!47631 r!611)) Nil!604)) (h!888 lt!18205))))))

(assert (=> bs!38064 (=> true e!43061)))

(declare-fun b!79516 () Bool)

(assert (=> b!79516 (= e!43061 (< (h!888 r!611) (h!888 lt!18205)))))

(assert (= (and bs!38064 (not res!40187)) b!79516))

(assert (=> m!74022 m!74100))

(assert (=> m!74022 s!2301))

(assert (=> m!73978 s!2301))

(assert (=> m!74014 s!2301))

(assert (=> m!74034 s!2293))

(assert (=> m!74002 s!2297))

(assert (=> m!74010 s!2299))

(assert (=> m!73982 s!2293))

(assert (=> m!73986 s!2295))

(assert (=> m!73990 s!2297))

(assert (=> m!74030 s!2299))

(declare-fun bs!38065 () Bool)

(declare-fun s!2303 () Bool)

(assert (= bs!38065 (and d!55115 s!2303)))

(assert (=> bs!38065 (=> true (= (contains!46 (ite lt!18216 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604) Nil!604) (h!888 (t!47631 l!1419))) (member (h!888 (t!47631 l!1419)) (content!107 (ite lt!18216 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604) Nil!604)))))))

(declare-fun m!74108 () Bool)

(assert (=> m!74030 m!74108))

(declare-fun m!74110 () Bool)

(assert (=> m!74030 m!74110))

(assert (=> m!74030 s!2303))

(declare-fun bs!38066 () Bool)

(declare-fun s!2305 () Bool)

(assert (= bs!38066 (and d!55115 s!2305)))

(assert (=> bs!38066 (=> true (= (contains!46 (ite lt!18216 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604) Nil!604) lt!18209) (member lt!18209 (content!107 (ite lt!18216 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604) Nil!604)))))))

(declare-fun m!74112 () Bool)

(assert (=> m!73986 m!74112))

(declare-fun m!74114 () Bool)

(assert (=> m!73986 m!74114))

(assert (=> m!73986 s!2305))

(declare-fun bs!38067 () Bool)

(declare-fun s!2307 () Bool)

(assert (= bs!38067 (and d!55115 s!2307)))

(assert (=> bs!38067 (=> true (= (contains!46 (ite lt!18216 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604) Nil!604) (h!888 (t!47631 r!611))) (member (h!888 (t!47631 r!611)) (content!107 (ite lt!18216 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604) Nil!604)))))))

(declare-fun m!74116 () Bool)

(assert (=> m!74006 m!74116))

(declare-fun m!74118 () Bool)

(assert (=> m!74006 m!74118))

(assert (=> m!74006 s!2307))

(assert (=> m!74036 s!2307))

(declare-fun bs!38068 () Bool)

(declare-fun s!2309 () Bool)

(assert (= bs!38068 (and d!55115 s!2309)))

(assert (=> bs!38068 (=> true (= (contains!46 (ite lt!18216 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604) Nil!604) (h!888 lt!18204)) (member (h!888 lt!18204) (content!107 (ite lt!18216 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604) Nil!604)))))))

(declare-fun m!74120 () Bool)

(assert (=> m!74018 m!74120))

(declare-fun m!74122 () Bool)

(assert (=> m!74018 m!74122))

(assert (=> m!74018 s!2309))

(assert (=> m!74034 s!2307))

(assert (=> m!74020 s!2309))

(assert (=> m!73996 s!2303))

(assert (=> m!73994 s!2303))

(declare-fun bs!38069 () Bool)

(declare-fun s!2311 () Bool)

(assert (= bs!38069 (and d!55115 s!2311)))

(assert (=> bs!38069 (=> true (= (contains!46 (ite lt!18216 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604) Nil!604) (h!888 lt!18205)) (member (h!888 lt!18205) (content!107 (ite lt!18216 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604) Nil!604)))))))

(declare-fun m!74124 () Bool)

(assert (=> m!73978 m!74124))

(declare-fun m!74126 () Bool)

(assert (=> m!73978 m!74126))

(assert (=> m!73978 s!2311))

(assert (=> m!74000 s!2305))

(assert (=> m!74002 s!2309))

(assert (=> m!73992 s!2309))

(assert (=> m!74008 s!2307))

(assert (=> m!74004 s!2309))

(assert (=> m!74010 s!2303))

(assert (=> m!74032 s!2303))

(assert (=> m!74014 s!2311))

(assert (=> m!74028 s!2305))

(assert (=> m!74024 s!2311))

(assert (=> m!73990 s!2309))

(assert (=> m!74016 s!2311))

(assert (=> m!73980 s!2311))

(assert (=> m!73998 s!2305))

(assert (=> m!74026 s!2305))

(assert (=> m!73982 s!2307))

(assert (=> m!74012 s!2303))

(assert (=> m!73984 s!2307))

(assert (=> m!73988 s!2305))

(assert (=> m!74022 s!2311))

(declare-fun bs!38070 () Bool)

(declare-fun s!2313 () Bool)

(assert (= bs!38070 (and d!55115 b!79434 s!2313)))

(declare-fun res!40188 () Bool)

(declare-fun e!43062 () Bool)

(assert (=> bs!38070 (=> res!40188 e!43062)))

(assert (=> bs!38070 (= res!40188 (not (contains!46 (ite lt!18216 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604) Nil!604) lt!18209)))))

(assert (=> bs!38070 (=> true e!43062)))

(declare-fun b!79517 () Bool)

(assert (=> b!79517 (= e!43062 (<= lt!18209 (h!888 l!1419)))))

(assert (= (and bs!38070 (not res!40188)) b!79517))

(assert (=> m!73998 m!74112))

(assert (=> m!73998 s!2313))

(declare-fun bs!38071 () Bool)

(declare-fun s!2315 () Bool)

(assert (= bs!38071 (and d!55115 b!79434 s!2315)))

(declare-fun res!40189 () Bool)

(declare-fun e!43063 () Bool)

(assert (=> bs!38071 (=> res!40189 e!43063)))

(assert (=> bs!38071 (= res!40189 (not (contains!46 (ite lt!18216 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604) Nil!604) (h!888 (t!47631 l!1419)))))))

(assert (=> bs!38071 (=> true e!43063)))

(declare-fun b!79518 () Bool)

(assert (=> b!79518 (= e!43063 (<= (h!888 (t!47631 l!1419)) (h!888 l!1419)))))

(assert (= (and bs!38071 (not res!40189)) b!79518))

(assert (=> m!74010 m!74108))

(assert (=> m!74010 s!2315))

(declare-fun bs!38072 () Bool)

(declare-fun s!2317 () Bool)

(assert (= bs!38072 (and d!55115 b!79434 s!2317)))

(declare-fun res!40190 () Bool)

(declare-fun e!43064 () Bool)

(assert (=> bs!38072 (=> res!40190 e!43064)))

(assert (=> bs!38072 (= res!40190 (not (contains!46 (ite lt!18216 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604) Nil!604) (h!888 (t!47631 r!611)))))))

(assert (=> bs!38072 (=> true e!43064)))

(declare-fun b!79519 () Bool)

(assert (=> b!79519 (= e!43064 (<= (h!888 (t!47631 r!611)) (h!888 l!1419)))))

(assert (= (and bs!38072 (not res!40190)) b!79519))

(assert (=> m!74034 m!74116))

(assert (=> m!74034 s!2317))

(assert (=> m!74006 s!2317))

(assert (=> m!74030 s!2315))

(declare-fun bs!38073 () Bool)

(declare-fun s!2319 () Bool)

(assert (= bs!38073 (and d!55115 b!79434 s!2319)))

(declare-fun res!40191 () Bool)

(declare-fun e!43065 () Bool)

(assert (=> bs!38073 (=> res!40191 e!43065)))

(assert (=> bs!38073 (= res!40191 (not (contains!46 (ite lt!18216 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604) Nil!604) (h!888 lt!18205))))))

(assert (=> bs!38073 (=> true e!43065)))

(declare-fun b!79520 () Bool)

(assert (=> b!79520 (= e!43065 (<= (h!888 lt!18205) (h!888 l!1419)))))

(assert (= (and bs!38073 (not res!40191)) b!79520))

(assert (=> m!74014 m!74124))

(assert (=> m!74014 s!2319))

(assert (=> m!74022 s!2319))

(assert (=> m!73986 s!2313))

(assert (=> m!73994 s!2315))

(assert (=> m!73982 s!2317))

(declare-fun bs!38074 () Bool)

(declare-fun s!2321 () Bool)

(assert (= bs!38074 (and d!55115 b!79434 s!2321)))

(declare-fun res!40192 () Bool)

(declare-fun e!43066 () Bool)

(assert (=> bs!38074 (=> res!40192 e!43066)))

(assert (=> bs!38074 (= res!40192 (not (contains!46 (ite lt!18216 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604) Nil!604) (h!888 lt!18204))))))

(assert (=> bs!38074 (=> true e!43066)))

(declare-fun b!79521 () Bool)

(assert (=> b!79521 (= e!43066 (<= (h!888 lt!18204) (h!888 l!1419)))))

(assert (= (and bs!38074 (not res!40192)) b!79521))

(assert (=> m!73990 m!74120))

(assert (=> m!73990 s!2321))

(assert (=> m!74002 s!2321))

(assert (=> m!73978 s!2319))

(assert (=> m!74018 s!2321))

(assert (=> m!74026 s!2313))

(declare-fun s!2323 () Bool)

(declare-fun bs!38075 () Bool)

(assert (= bs!38075 (and d!55115 b!79434 b!79437 s!2323)))

(assert (=> bs!38075 (=> true (= (contains!46 (ite lt!18216 Nil!604 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604)) lt!18209) (member lt!18209 (content!107 (ite lt!18216 Nil!604 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604))))))))

(declare-fun m!74128 () Bool)

(assert (=> m!74028 m!74128))

(declare-fun m!74130 () Bool)

(assert (=> m!74028 m!74130))

(assert (=> m!74028 s!2323))

(assert (=> m!73988 s!2323))

(declare-fun s!2325 () Bool)

(declare-fun bs!38076 () Bool)

(assert (= bs!38076 (and d!55115 b!79434 b!79437 s!2325)))

(assert (=> bs!38076 (=> true (= (contains!46 (ite lt!18216 Nil!604 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604)) (h!888 lt!18204)) (member (h!888 lt!18204) (content!107 (ite lt!18216 Nil!604 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604))))))))

(declare-fun m!74132 () Bool)

(assert (=> m!74004 m!74132))

(declare-fun m!74134 () Bool)

(assert (=> m!74004 m!74134))

(assert (=> m!74004 s!2325))

(declare-fun bs!38077 () Bool)

(declare-fun s!2327 () Bool)

(assert (= bs!38077 (and d!55115 b!79434 b!79437 s!2327)))

(assert (=> bs!38077 (=> true (= (contains!46 (ite lt!18216 Nil!604 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604)) (h!888 (t!47631 r!611))) (member (h!888 (t!47631 r!611)) (content!107 (ite lt!18216 Nil!604 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604))))))))

(declare-fun m!74136 () Bool)

(assert (=> m!74034 m!74136))

(declare-fun m!74138 () Bool)

(assert (=> m!74034 m!74138))

(assert (=> m!74034 s!2327))

(declare-fun s!2329 () Bool)

(declare-fun bs!38078 () Bool)

(assert (= bs!38078 (and d!55115 b!79434 b!79437 s!2329)))

(assert (=> bs!38078 (=> true (= (contains!46 (ite lt!18216 Nil!604 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604)) (h!888 lt!18205)) (member (h!888 lt!18205) (content!107 (ite lt!18216 Nil!604 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604))))))))

(declare-fun m!74140 () Bool)

(assert (=> m!74022 m!74140))

(declare-fun m!74142 () Bool)

(assert (=> m!74022 m!74142))

(assert (=> m!74022 s!2329))

(declare-fun bs!38079 () Bool)

(declare-fun s!2331 () Bool)

(assert (= bs!38079 (and d!55115 b!79434 b!79437 s!2331)))

(assert (=> bs!38079 (=> true (= (contains!46 (ite lt!18216 Nil!604 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604)) (h!888 (t!47631 l!1419))) (member (h!888 (t!47631 l!1419)) (content!107 (ite lt!18216 Nil!604 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604))))))))

(declare-fun m!74144 () Bool)

(assert (=> m!74010 m!74144))

(declare-fun m!74146 () Bool)

(assert (=> m!74010 m!74146))

(assert (=> m!74010 s!2331))

(assert (=> m!74018 s!2325))

(assert (=> m!73980 s!2329))

(assert (=> m!74008 s!2327))

(assert (=> m!74024 s!2329))

(assert (=> m!74012 s!2331))

(assert (=> m!73986 s!2323))

(assert (=> m!73998 s!2323))

(assert (=> m!74002 s!2325))

(assert (=> m!74000 s!2323))

(assert (=> m!73982 s!2327))

(assert (=> m!73978 s!2329))

(assert (=> m!74016 s!2329))

(assert (=> m!73992 s!2325))

(assert (=> m!74014 s!2329))

(assert (=> m!73994 s!2331))

(assert (=> m!74006 s!2327))

(assert (=> m!74032 s!2331))

(assert (=> m!74030 s!2331))

(assert (=> m!73996 s!2331))

(assert (=> m!73990 s!2325))

(assert (=> m!73984 s!2327))

(assert (=> m!74036 s!2327))

(assert (=> m!74026 s!2323))

(assert (=> m!74020 s!2325))

(declare-fun s!2333 () Bool)

(declare-fun bs!38080 () Bool)

(assert (= bs!38080 (and d!55115 b!79434 b!79437 s!2333)))

(declare-fun res!40193 () Bool)

(declare-fun e!43067 () Bool)

(assert (=> bs!38080 (=> res!40193 e!43067)))

(assert (=> bs!38080 (= res!40193 (not (contains!46 (ite lt!18216 Nil!604 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604)) (h!888 (t!47631 r!611)))))))

(assert (=> bs!38080 (=> true e!43067)))

(declare-fun b!79522 () Bool)

(assert (=> b!79522 (= e!43067 (< (h!888 l!1419) (h!888 (t!47631 r!611))))))

(assert (= (and bs!38080 (not res!40193)) b!79522))

(assert (=> m!74006 m!74136))

(assert (=> m!74006 s!2333))

(declare-fun bs!38081 () Bool)

(declare-fun s!2335 () Bool)

(assert (= bs!38081 (and d!55115 b!79434 b!79437 s!2335)))

(declare-fun res!40194 () Bool)

(declare-fun e!43068 () Bool)

(assert (=> bs!38081 (=> res!40194 e!43068)))

(assert (=> bs!38081 (= res!40194 (not (contains!46 (ite lt!18216 Nil!604 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604)) lt!18209)))))

(assert (=> bs!38081 (=> true e!43068)))

(declare-fun b!79523 () Bool)

(assert (=> b!79523 (= e!43068 (< (h!888 l!1419) lt!18209))))

(assert (= (and bs!38081 (not res!40194)) b!79523))

(assert (=> m!74026 m!74128))

(assert (=> m!74026 s!2335))

(declare-fun s!2337 () Bool)

(declare-fun bs!38082 () Bool)

(assert (= bs!38082 (and d!55115 b!79434 b!79437 s!2337)))

(declare-fun res!40195 () Bool)

(declare-fun e!43069 () Bool)

(assert (=> bs!38082 (=> res!40195 e!43069)))

(assert (=> bs!38082 (= res!40195 (not (contains!46 (ite lt!18216 Nil!604 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604)) (h!888 lt!18204))))))

(assert (=> bs!38082 (=> true e!43069)))

(declare-fun b!79524 () Bool)

(assert (=> b!79524 (= e!43069 (< (h!888 l!1419) (h!888 lt!18204)))))

(assert (= (and bs!38082 (not res!40195)) b!79524))

(assert (=> m!74018 m!74132))

(assert (=> m!74018 s!2337))

(assert (=> m!73998 s!2335))

(declare-fun s!2339 () Bool)

(declare-fun bs!38083 () Bool)

(assert (= bs!38083 (and d!55115 b!79434 b!79437 s!2339)))

(declare-fun res!40196 () Bool)

(declare-fun e!43070 () Bool)

(assert (=> bs!38083 (=> res!40196 e!43070)))

(assert (=> bs!38083 (= res!40196 (not (contains!46 (ite lt!18216 Nil!604 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604)) (h!888 (t!47631 l!1419)))))))

(assert (=> bs!38083 (=> true e!43070)))

(declare-fun b!79525 () Bool)

(assert (=> b!79525 (= e!43070 (< (h!888 l!1419) (h!888 (t!47631 l!1419))))))

(assert (= (and bs!38083 (not res!40196)) b!79525))

(assert (=> m!73994 m!74144))

(assert (=> m!73994 s!2339))

(declare-fun bs!38084 () Bool)

(declare-fun s!2341 () Bool)

(assert (= bs!38084 (and d!55115 b!79434 b!79437 s!2341)))

(declare-fun res!40197 () Bool)

(declare-fun e!43071 () Bool)

(assert (=> bs!38084 (=> res!40197 e!43071)))

(assert (=> bs!38084 (= res!40197 (not (contains!46 (ite lt!18216 Nil!604 (Cons!602 (h!888 (t!47631 l!1419)) Nil!604)) (h!888 lt!18205))))))

(assert (=> bs!38084 (=> true e!43071)))

(declare-fun b!79526 () Bool)

(assert (=> b!79526 (= e!43071 (< (h!888 l!1419) (h!888 lt!18205)))))

(assert (= (and bs!38084 (not res!40197)) b!79526))

(assert (=> m!74022 m!74140))

(assert (=> m!74022 s!2341))

(assert (=> m!73978 s!2341))

(assert (=> m!74014 s!2341))

(assert (=> m!74034 s!2333))

(assert (=> m!74002 s!2337))

(assert (=> m!74010 s!2339))

(assert (=> m!73982 s!2333))

(assert (=> m!73986 s!2335))

(assert (=> m!73990 s!2337))

(assert (=> m!74030 s!2339))

(push 1)

(assert (not d!55089))

(assert (not bs!38072))

(assert (not bs!38043))

(assert (not b!79464))

(assert (not bs!38051))

(assert (not bs!38028))

(assert (not b!79440))

(assert (not b!79408))

(assert (not b!79365))

(assert (not bs!38081))

(assert (not bs!38070))

(assert (not bs!37993))

(assert (not bs!37999))

(assert (not b!79393))

(assert (not bs!38054))

(assert (not b!79426))

(assert (not bs!38062))

(assert (not b!79480))

(assert (not b!79444))

(assert (not b!79435))

(assert (not b!79430))

(assert (not bs!38034))

(assert (not bs!38069))

(assert (not b!79375))

(assert (not bs!38044))

(assert (not bs!38030))

(assert (not b!79429))

(assert (not bs!38006))

(assert (not d!55139))

(assert (not d!55103))

(assert (not bs!38050))

(assert (not bs!38064))

(assert (not d!55135))

(assert (not bs!38002))

(assert (not b!79367))

(assert (not b!79462))

(assert (not bs!38082))

(assert (not bs!38035))

(assert (not b!79373))

(assert (not bs!38049))

(assert (not bs!38079))

(assert (not b!79450))

(assert (not b!79401))

(assert (not bs!38040))

(assert (not b!79422))

(assert (not b!79478))

(assert (not bs!38078))

(assert (not b!79476))

(assert (not bs!38061))

(assert (not d!55143))

(assert (not d!55101))

(assert (not d!55111))

(assert (not bs!37990))

(assert (not b!79377))

(assert (not bs!38059))

(assert (not bs!38039))

(assert (not bs!38047))

(assert (not bs!38037))

(assert (not b!79397))

(assert (not bs!38009))

(assert (not bs!38057))

(assert (not bs!38048))

(assert (not b!79412))

(assert (not bs!38010))

(assert (not bs!38026))

(assert (not bs!38021))

(assert (not bs!38075))

(assert (not bs!38038))

(assert (not bs!38032))

(assert (not b!79460))

(assert (not bs!38053))

(assert (not b!79427))

(assert (not bs!38045))

(assert (not bs!38063))

(assert (not bs!38029))

(assert (not bs!38055))

(assert (not b!79428))

(assert (not b!79395))

(assert (not d!55109))

(assert (not bs!38022))

(assert (not b!79403))

(assert (not bs!38066))

(assert (not bs!38012))

(assert (not bs!38005))

(assert (not bs!38073))

(assert (not b!79472))

(assert (not bs!38024))

(assert (not b!79410))

(assert (not bs!38042))

(assert (not bs!38077))

(assert (not bs!38000))

(assert (not d!55083))

(assert (not b!79442))

(assert (not bs!38033))

(assert (not b!79432))

(assert (not b!79396))

(assert (not b!79414))

(assert (not b!79400))

(assert (not d!55137))

(assert (not b!79416))

(assert (not b!79466))

(assert (not bs!38003))

(assert (not b!79446))

(assert (not bs!38080))

(assert (not bs!37998))

(assert (not bs!37991))

(assert (not b!79437))

(assert (not bs!38025))

(assert (not b!79407))

(assert (not bs!38068))

(assert (not bs!38060))

(assert (not b!79470))

(assert (not bs!38056))

(assert (not b!79418))

(assert (not b!79392))

(assert (not bs!38013))

(assert (not b!79468))

(assert (not b!79405))

(assert (not bs!38076))

(assert (not bs!38083))

(assert (not bs!38071))

(assert (not bs!38074))

(assert (not b!79482))

(assert (not bs!38023))

(assert (not b!79438))

(assert (not b!79474))

(assert (not d!55129))

(assert (not bs!38036))

(assert (not b!79369))

(assert (not bs!38041))

(assert (not bs!38065))

(assert (not d!55095))

(assert (not bs!38027))

(assert (not bs!38031))

(assert (not bs!38058))

(assert (not b!79420))

(assert (not b!79394))

(assert (not bs!38067))

(assert (not b!79436))

(assert (not b!79409))

(assert (not bs!37997))

(assert (not bs!38084))

(assert (not bs!38046))

(assert (not b!79371))

(assert (not bs!38052))

(assert (not b!79448))

(assert (not bs!37994))

(assert (not b!79424))

(assert (not b!79431))

(assert (not b!79458))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

