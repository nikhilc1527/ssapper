; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11344 () Bool)

(assert start!11344)

(declare-fun b!86892 () Bool)

(declare-fun res!45323 () Bool)

(declare-fun e!47136 () Bool)

(assert (=> b!86892 (=> res!45323 e!47136)))

(declare-datatypes () ((Color!11 (Red!10) (Black!10))))

(declare-datatypes () ((Tree!108 (Empty!191) (Node!152 (color!41 Color!11) (left!1651 Tree!108) (value!6798 Int) (right!1654 Tree!108)))))

(declare-fun t!48253 () Tree!108)

(declare-fun res!44634 () Tree!108)

(declare-fun size!3 (Tree!108) Int)

(assert (=> b!86892 (= res!45323 (> (size!3 t!48253) (size!3 res!44634)))))

(declare-fun b!86893 () Bool)

(declare-fun res!45329 () Bool)

(declare-fun e!47137 () Bool)

(assert (=> b!86893 (=> (not res!45329) (not e!47137))))

(declare-fun blackBalanced!0 (Tree!108) Bool)

(assert (=> b!86893 (= res!45329 (blackBalanced!0 t!48253))))

(declare-fun b!86894 () Bool)

(declare-fun res!45322 () Bool)

(assert (=> b!86894 (=> res!45322 e!47136)))

(declare-fun redDescHaveBlackChildren!0 (Tree!108) Bool)

(assert (=> b!86894 (= res!45322 (not (redDescHaveBlackChildren!0 res!44634)))))

(declare-fun b!86895 () Bool)

(assert (=> b!86895 (= e!47136 (not (blackBalanced!0 res!44634)))))

(declare-fun b!86896 () Bool)

(assert (=> b!86896 (= e!47137 e!47136)))

(declare-fun res!45327 () Bool)

(assert (=> b!86896 (=> res!45327 e!47136)))

(declare-fun x!30388 () Int)

(declare-fun content!8 (Tree!108) (Set Int))

(assert (=> b!86896 (= res!45327 (not (= (content!8 res!44634) (union (content!8 t!48253) (insert x!30388 (as emptyset (Set Int)))))))))

(declare-fun b!86897 () Bool)

(declare-fun res!45328 () Bool)

(assert (=> b!86897 (=> (not res!45328) (not e!47137))))

(declare-fun balance!0 (Color!11 Tree!108 Int Tree!108) Tree!108)

(declare-fun ins!0 (Int Tree!108) Tree!108)

(assert (=> b!86897 (= res!45328 (= res!44634 (balance!0 (color!41 t!48253) (left!1651 t!48253) (value!6798 t!48253) (ins!0 x!30388 (right!1654 t!48253)))))))

(declare-fun b!86898 () Bool)

(declare-fun res!45326 () Bool)

(assert (=> b!86898 (=> res!45326 e!47136)))

(assert (=> b!86898 (= res!45326 (> (size!3 res!44634) (+ (size!3 t!48253) 1)))))

(declare-fun res!45324 () Bool)

(assert (=> start!11344 (=> (not res!45324) (not e!47137))))

(declare-fun redNodesHaveBlackChildren!0 (Tree!108) Bool)

(assert (=> start!11344 (= res!45324 (redNodesHaveBlackChildren!0 t!48253))))

(assert (=> start!11344 e!47137))

(assert (=> start!11344 true))

(declare-fun b!86899 () Bool)

(declare-fun res!45325 () Bool)

(assert (=> b!86899 (=> (not res!45325) (not e!47137))))

(assert (=> b!86899 (= res!45325 (and (not (is-Empty!191 t!48253)) (>= x!30388 (value!6798 t!48253)) (not (= x!30388 (value!6798 t!48253)))))))

(assert (= (and start!11344 res!45324) b!86893))

(assert (= (and b!86893 res!45329) b!86899))

(assert (= (and b!86899 res!45325) b!86897))

(assert (= (and b!86897 res!45328) b!86896))

(assert (= (and b!86896 (not res!45327)) b!86892))

(assert (= (and b!86892 (not res!45323)) b!86898))

(assert (= (and b!86898 (not res!45326)) b!86894))

(assert (= (and b!86894 (not res!45322)) b!86895))

(declare-fun m!82870 () Bool)

(assert (=> start!11344 m!82870))

(declare-fun m!82872 () Bool)

(assert (=> b!86897 m!82872))

(assert (=> b!86897 m!82872))

(declare-fun m!82874 () Bool)

(assert (=> b!86897 m!82874))

(declare-fun m!82876 () Bool)

(assert (=> b!86892 m!82876))

(declare-fun m!82878 () Bool)

(assert (=> b!86892 m!82878))

(declare-fun m!82880 () Bool)

(assert (=> b!86894 m!82880))

(declare-fun m!82882 () Bool)

(assert (=> b!86895 m!82882))

(assert (=> b!86898 m!82878))

(assert (=> b!86898 m!82876))

(declare-fun m!82884 () Bool)

(assert (=> b!86893 m!82884))

(declare-fun m!82886 () Bool)

(assert (=> b!86896 m!82886))

(declare-fun m!82888 () Bool)

(assert (=> b!86896 m!82888))

(declare-fun m!82890 () Bool)

(assert (=> b!86896 m!82890))

(push 1)

(assert (not b!86898))

(assert (not b!86895))

(assert (not b!86893))

(assert (not b!86894))

(assert (not start!11344))

(assert (not b!86892))

(assert (not b!86896))

(assert (not b!86897))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!57937 () Bool)

(declare-fun res!45334 () Bool)

(declare-fun e!47142 () Bool)

(assert (=> d!57937 (=> res!45334 e!47142)))

(assert (=> d!57937 (= res!45334 (is-Empty!191 res!44634))))

(assert (=> d!57937 (= (redDescHaveBlackChildren!0 res!44634) e!47142)))

(declare-fun b!86904 () Bool)

(declare-fun e!47143 () Bool)

(assert (=> b!86904 (= e!47142 e!47143)))

(declare-fun res!45335 () Bool)

(assert (=> b!86904 (=> (not res!45335) (not e!47143))))

(assert (=> b!86904 (= res!45335 (redNodesHaveBlackChildren!0 (left!1651 res!44634)))))

(declare-fun b!86905 () Bool)

(assert (=> b!86905 (= e!47143 (redNodesHaveBlackChildren!0 (right!1654 res!44634)))))

(assert (= (and d!57937 (not res!45334)) b!86904))

(assert (= (and b!86904 res!45335) b!86905))

(declare-fun m!82892 () Bool)

(assert (=> b!86904 m!82892))

(declare-fun m!82894 () Bool)

(assert (=> b!86905 m!82894))

(assert (=> b!86894 d!57937))

(declare-fun d!57939 () Bool)

(declare-fun c!21511 () Bool)

(assert (=> d!57939 (= c!21511 (is-Empty!191 res!44634))))

(declare-fun e!47146 () (Set Int))

(assert (=> d!57939 (= (content!8 res!44634) e!47146)))

(declare-fun b!86910 () Bool)

(assert (=> b!86910 (= e!47146 (as emptyset (Set Int)))))

(declare-fun b!86911 () Bool)

(assert (=> b!86911 (= e!47146 (union (union (content!8 (left!1651 res!44634)) (insert (value!6798 res!44634) (as emptyset (Set Int)))) (content!8 (right!1654 res!44634))))))

(assert (= (and d!57939 c!21511) b!86910))

(assert (= (and d!57939 (not c!21511)) b!86911))

(declare-fun m!82896 () Bool)

(assert (=> b!86911 m!82896))

(declare-fun m!82898 () Bool)

(assert (=> b!86911 m!82898))

(declare-fun m!82900 () Bool)

(assert (=> b!86911 m!82900))

(assert (=> b!86896 d!57939))

(declare-fun d!57941 () Bool)

(declare-fun c!21512 () Bool)

(assert (=> d!57941 (= c!21512 (is-Empty!191 t!48253))))

(declare-fun e!47147 () (Set Int))

(assert (=> d!57941 (= (content!8 t!48253) e!47147)))

(declare-fun b!86912 () Bool)

(assert (=> b!86912 (= e!47147 (as emptyset (Set Int)))))

(declare-fun b!86913 () Bool)

(assert (=> b!86913 (= e!47147 (union (union (content!8 (left!1651 t!48253)) (insert (value!6798 t!48253) (as emptyset (Set Int)))) (content!8 (right!1654 t!48253))))))

(assert (= (and d!57941 c!21512) b!86912))

(assert (= (and d!57941 (not c!21512)) b!86913))

(declare-fun m!82902 () Bool)

(assert (=> b!86913 m!82902))

(declare-fun m!82904 () Bool)

(assert (=> b!86913 m!82904))

(declare-fun m!82906 () Bool)

(assert (=> b!86913 m!82906))

(assert (=> b!86896 d!57941))

(declare-fun d!57943 () Bool)

(declare-fun e!47150 () Bool)

(assert (=> d!57943 e!47150))

(declare-fun res!45339 () Bool)

(assert (=> d!57943 (=> (not res!45339) (not e!47150))))

(declare-fun lt!20110 () Tree!108)

(assert (=> d!57943 (= res!45339 (is-Node!152 lt!20110))))

(assert (=> d!57943 (= lt!20110 (ite (and (is-Black!10 (color!41 t!48253)) (is-Node!152 (left!1651 t!48253)) (is-Red!10 (color!41 (left!1651 t!48253))) (is-Node!152 (left!1651 (left!1651 t!48253))) (is-Red!10 (color!41 (left!1651 (left!1651 t!48253))))) (Node!152 Red!10 (Node!152 Black!10 (left!1651 (left!1651 (left!1651 t!48253))) (value!6798 (left!1651 (left!1651 t!48253))) (right!1654 (left!1651 (left!1651 t!48253)))) (value!6798 (left!1651 t!48253)) (Node!152 Black!10 (right!1654 (left!1651 t!48253)) (value!6798 t!48253) (ins!0 x!30388 (right!1654 t!48253)))) (ite (and (is-Black!10 (color!41 t!48253)) (is-Node!152 (left!1651 t!48253)) (is-Red!10 (color!41 (left!1651 t!48253))) (is-Node!152 (right!1654 (left!1651 t!48253))) (is-Red!10 (color!41 (right!1654 (left!1651 t!48253))))) (Node!152 Red!10 (Node!152 Black!10 (left!1651 (left!1651 t!48253)) (value!6798 (left!1651 t!48253)) (left!1651 (right!1654 (left!1651 t!48253)))) (value!6798 (right!1654 (left!1651 t!48253))) (Node!152 Black!10 (right!1654 (right!1654 (left!1651 t!48253))) (value!6798 t!48253) (ins!0 x!30388 (right!1654 t!48253)))) (ite (and (is-Black!10 (color!41 t!48253)) (is-Node!152 (ins!0 x!30388 (right!1654 t!48253))) (is-Red!10 (color!41 (ins!0 x!30388 (right!1654 t!48253)))) (is-Node!152 (left!1651 (ins!0 x!30388 (right!1654 t!48253)))) (is-Red!10 (color!41 (left!1651 (ins!0 x!30388 (right!1654 t!48253)))))) (Node!152 Red!10 (Node!152 Black!10 (left!1651 t!48253) (value!6798 t!48253) (left!1651 (left!1651 (ins!0 x!30388 (right!1654 t!48253))))) (value!6798 (left!1651 (ins!0 x!30388 (right!1654 t!48253)))) (Node!152 Black!10 (right!1654 (left!1651 (ins!0 x!30388 (right!1654 t!48253)))) (value!6798 (ins!0 x!30388 (right!1654 t!48253))) (right!1654 (ins!0 x!30388 (right!1654 t!48253))))) (ite (and (is-Black!10 (color!41 t!48253)) (is-Node!152 (ins!0 x!30388 (right!1654 t!48253))) (is-Red!10 (color!41 (ins!0 x!30388 (right!1654 t!48253)))) (is-Node!152 (right!1654 (ins!0 x!30388 (right!1654 t!48253)))) (is-Red!10 (color!41 (right!1654 (ins!0 x!30388 (right!1654 t!48253)))))) (Node!152 Red!10 (Node!152 Black!10 (left!1651 t!48253) (value!6798 t!48253) (left!1651 (ins!0 x!30388 (right!1654 t!48253)))) (value!6798 (ins!0 x!30388 (right!1654 t!48253))) (Node!152 Black!10 (left!1651 (right!1654 (ins!0 x!30388 (right!1654 t!48253)))) (value!6798 (right!1654 (ins!0 x!30388 (right!1654 t!48253)))) (right!1654 (right!1654 (ins!0 x!30388 (right!1654 t!48253)))))) (Node!152 (color!41 t!48253) (left!1651 t!48253) (value!6798 t!48253) (ins!0 x!30388 (right!1654 t!48253))))))))))

(assert (=> d!57943 (= (balance!0 (color!41 t!48253) (left!1651 t!48253) (value!6798 t!48253) (ins!0 x!30388 (right!1654 t!48253))) lt!20110)))

(declare-fun b!86917 () Bool)

(assert (=> b!86917 (= e!47150 (= (content!8 lt!20110) (content!8 (Node!152 (color!41 t!48253) (left!1651 t!48253) (value!6798 t!48253) (ins!0 x!30388 (right!1654 t!48253))))))))

(assert (= (and d!57943 res!45339) b!86917))

(declare-fun m!82908 () Bool)

(assert (=> b!86917 m!82908))

(declare-fun m!82910 () Bool)

(assert (=> b!86917 m!82910))

(assert (=> b!86897 d!57943))

(declare-fun b!86940 () Bool)

(declare-fun res!45367 () Bool)

(declare-fun e!47161 () Bool)

(assert (=> b!86940 (=> (not res!45367) (not e!47161))))

(declare-fun lt!20124 () Tree!108)

(assert (=> b!86940 (= res!45367 (redDescHaveBlackChildren!0 lt!20124))))

(declare-fun b!86941 () Bool)

(declare-fun e!47165 () Bool)

(assert (=> b!86941 (= e!47165 (blackBalanced!0 (right!1654 t!48253)))))

(declare-fun b!86942 () Bool)

(declare-fun e!47162 () Tree!108)

(declare-fun res!45361 () Tree!108)

(assert (=> b!86942 (= e!47162 res!45361)))

(assert (=> b!86942 true))

(declare-fun lt!20121 () Bool)

(declare-fun b!86943 () Bool)

(assert (=> b!86943 (= e!47162 (ins!0 x!30388 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))))))

(declare-fun b!86944 () Bool)

(declare-fun lt!20123 () Tree!108)

(declare-fun lt!20125 () Bool)

(declare-fun e!47163 () Tree!108)

(assert (=> b!86944 (= e!47163 (balance!0 (color!41 (right!1654 t!48253)) (ite lt!20125 lt!20123 (left!1651 (right!1654 t!48253))) (value!6798 (right!1654 t!48253)) (ite lt!20125 (right!1654 (right!1654 t!48253)) lt!20123)))))

(declare-fun b!86945 () Bool)

(declare-fun e!47164 () Tree!108)

(assert (=> b!86945 (= e!47164 (Node!152 Red!10 Empty!191 x!30388 Empty!191))))

(declare-fun lt!20122 () Tree!108)

(declare-fun b!86946 () Bool)

(assert (=> b!86946 (= e!47164 (ite lt!20121 lt!20122 (ite (= x!30388 (value!6798 (right!1654 t!48253))) (Node!152 (color!41 (right!1654 t!48253)) (left!1651 (right!1654 t!48253)) (value!6798 (right!1654 t!48253)) (right!1654 (right!1654 t!48253))) lt!20122)))))

(assert (=> b!86946 (= lt!20122 e!47163)))

(declare-fun c!21520 () Bool)

(assert (=> b!86946 (= c!21520 (or lt!20125 (and (not lt!20121) (not (= x!30388 (value!6798 (right!1654 t!48253)))))))))

(assert (=> b!86946 (= lt!20125 lt!20121)))

(assert (=> b!86946 (= lt!20123 e!47162)))

(declare-fun c!21522 () Bool)

(assert (=> b!86946 (= c!21522 (or lt!20121 (not (= x!30388 (value!6798 (right!1654 t!48253))))))))

(assert (=> b!86946 (= lt!20121 (< x!30388 (value!6798 (right!1654 t!48253))))))

(declare-fun d!57945 () Bool)

(assert (=> d!57945 e!47161))

(declare-fun res!45362 () Bool)

(assert (=> d!57945 (=> (not res!45362) (not e!47161))))

(assert (=> d!57945 (= res!45362 (= (content!8 lt!20124) (union (content!8 (right!1654 t!48253)) (insert x!30388 (as emptyset (Set Int))))))))

(assert (=> d!57945 (= lt!20124 e!47164)))

(declare-fun c!21521 () Bool)

(assert (=> d!57945 (= c!21521 (is-Empty!191 (right!1654 t!48253)))))

(assert (=> d!57945 e!47165))

(declare-fun res!45364 () Bool)

(assert (=> d!57945 (=> (not res!45364) (not e!47165))))

(assert (=> d!57945 (= res!45364 (redNodesHaveBlackChildren!0 (right!1654 t!48253)))))

(assert (=> d!57945 (= (ins!0 x!30388 (right!1654 t!48253)) lt!20124)))

(declare-fun b!86947 () Bool)

(assert (=> b!86947 (= e!47161 (blackBalanced!0 lt!20124))))

(declare-fun b!86948 () Bool)

(declare-fun res!45365 () Bool)

(assert (=> b!86948 (=> (not res!45365) (not e!47161))))

(assert (=> b!86948 (= res!45365 (<= (size!3 lt!20124) (+ (size!3 (right!1654 t!48253)) 1)))))

(declare-fun b!86949 () Bool)

(declare-fun res!45366 () Tree!108)

(assert (=> b!86949 (= e!47163 res!45366)))

(assert (=> b!86949 true))

(assert (=> b!86949 true))

(declare-fun b!86950 () Bool)

(declare-fun res!45363 () Bool)

(assert (=> b!86950 (=> (not res!45363) (not e!47161))))

(assert (=> b!86950 (= res!45363 (<= (size!3 (right!1654 t!48253)) (size!3 lt!20124)))))

(assert (= (and d!57945 res!45364) b!86941))

(assert (= (and b!86946 c!21522) b!86943))

(assert (= (and b!86946 (not c!21522)) b!86942))

(assert (= (and b!86946 c!21520) b!86944))

(assert (= (and b!86946 (not c!21520)) b!86949))

(assert (= (and d!57945 c!21521) b!86945))

(assert (= (and d!57945 (not c!21521)) b!86946))

(assert (= (and d!57945 res!45362) b!86950))

(assert (= (and b!86950 res!45363) b!86948))

(assert (= (and b!86948 res!45365) b!86940))

(assert (= (and b!86940 res!45367) b!86947))

(declare-fun m!82912 () Bool)

(assert (=> b!86941 m!82912))

(declare-fun m!82914 () Bool)

(assert (=> b!86943 m!82914))

(declare-fun m!82916 () Bool)

(assert (=> d!57945 m!82916))

(assert (=> d!57945 m!82906))

(assert (=> d!57945 m!82890))

(declare-fun m!82918 () Bool)

(assert (=> d!57945 m!82918))

(declare-fun m!82920 () Bool)

(assert (=> b!86948 m!82920))

(declare-fun m!82922 () Bool)

(assert (=> b!86948 m!82922))

(declare-fun m!82924 () Bool)

(assert (=> b!86940 m!82924))

(declare-fun m!82926 () Bool)

(assert (=> b!86947 m!82926))

(assert (=> b!86950 m!82922))

(assert (=> b!86950 m!82920))

(declare-fun m!82928 () Bool)

(assert (=> b!86944 m!82928))

(assert (=> b!86897 d!57945))

(declare-fun d!57947 () Bool)

(declare-fun res!45376 () Bool)

(declare-fun e!47170 () Bool)

(assert (=> d!57947 (=> res!45376 e!47170)))

(assert (=> d!57947 (= res!45376 (not (is-Node!152 res!44634)))))

(assert (=> d!57947 (= (blackBalanced!0 res!44634) e!47170)))

(declare-fun b!86957 () Bool)

(declare-fun e!47171 () Bool)

(assert (=> b!86957 (= e!47170 e!47171)))

(declare-fun res!45374 () Bool)

(assert (=> b!86957 (=> (not res!45374) (not e!47171))))

(assert (=> b!86957 (= res!45374 (blackBalanced!0 (left!1651 res!44634)))))

(declare-fun b!86958 () Bool)

(declare-fun res!45375 () Bool)

(assert (=> b!86958 (=> (not res!45375) (not e!47171))))

(assert (=> b!86958 (= res!45375 (blackBalanced!0 (right!1654 res!44634)))))

(declare-fun b!86959 () Bool)

(declare-fun blackHeight!0 (Tree!108) Int)

(assert (=> b!86959 (= e!47171 (= (blackHeight!0 (left!1651 res!44634)) (blackHeight!0 (right!1654 res!44634))))))

(assert (= (and d!57947 (not res!45376)) b!86957))

(assert (= (and b!86957 res!45374) b!86958))

(assert (= (and b!86958 res!45375) b!86959))

(declare-fun m!82930 () Bool)

(assert (=> b!86957 m!82930))

(declare-fun m!82932 () Bool)

(assert (=> b!86958 m!82932))

(declare-fun m!82934 () Bool)

(assert (=> b!86959 m!82934))

(declare-fun m!82936 () Bool)

(assert (=> b!86959 m!82936))

(assert (=> b!86895 d!57947))

(declare-fun d!57949 () Bool)

(declare-fun lt!20128 () Int)

(assert (=> d!57949 (>= lt!20128 0)))

(declare-fun e!47174 () Int)

(assert (=> d!57949 (= lt!20128 e!47174)))

(declare-fun c!21525 () Bool)

(assert (=> d!57949 (= c!21525 (is-Empty!191 res!44634))))

(assert (=> d!57949 (= (size!3 res!44634) lt!20128)))

(declare-fun b!86964 () Bool)

(assert (=> b!86964 (= e!47174 0)))

(declare-fun b!86965 () Bool)

(assert (=> b!86965 (= e!47174 (+ (+ (size!3 (left!1651 res!44634)) 1) (size!3 (right!1654 res!44634))))))

(assert (= (and d!57949 c!21525) b!86964))

(assert (= (and d!57949 (not c!21525)) b!86965))

(declare-fun m!82938 () Bool)

(assert (=> b!86965 m!82938))

(declare-fun m!82940 () Bool)

(assert (=> b!86965 m!82940))

(assert (=> b!86898 d!57949))

(declare-fun d!57951 () Bool)

(declare-fun lt!20129 () Int)

(assert (=> d!57951 (>= lt!20129 0)))

(declare-fun e!47175 () Int)

(assert (=> d!57951 (= lt!20129 e!47175)))

(declare-fun c!21526 () Bool)

(assert (=> d!57951 (= c!21526 (is-Empty!191 t!48253))))

(assert (=> d!57951 (= (size!3 t!48253) lt!20129)))

(declare-fun b!86966 () Bool)

(assert (=> b!86966 (= e!47175 0)))

(declare-fun b!86967 () Bool)

(assert (=> b!86967 (= e!47175 (+ (+ (size!3 (left!1651 t!48253)) 1) (size!3 (right!1654 t!48253))))))

(assert (= (and d!57951 c!21526) b!86966))

(assert (= (and d!57951 (not c!21526)) b!86967))

(declare-fun m!82942 () Bool)

(assert (=> b!86967 m!82942))

(assert (=> b!86967 m!82922))

(assert (=> b!86898 d!57951))

(declare-fun d!57953 () Bool)

(declare-fun res!45379 () Bool)

(declare-fun e!47176 () Bool)

(assert (=> d!57953 (=> res!45379 e!47176)))

(assert (=> d!57953 (= res!45379 (not (is-Node!152 t!48253)))))

(assert (=> d!57953 (= (blackBalanced!0 t!48253) e!47176)))

(declare-fun b!86968 () Bool)

(declare-fun e!47177 () Bool)

(assert (=> b!86968 (= e!47176 e!47177)))

(declare-fun res!45377 () Bool)

(assert (=> b!86968 (=> (not res!45377) (not e!47177))))

(assert (=> b!86968 (= res!45377 (blackBalanced!0 (left!1651 t!48253)))))

(declare-fun b!86969 () Bool)

(declare-fun res!45378 () Bool)

(assert (=> b!86969 (=> (not res!45378) (not e!47177))))

(assert (=> b!86969 (= res!45378 (blackBalanced!0 (right!1654 t!48253)))))

(declare-fun b!86970 () Bool)

(assert (=> b!86970 (= e!47177 (= (blackHeight!0 (left!1651 t!48253)) (blackHeight!0 (right!1654 t!48253))))))

(assert (= (and d!57953 (not res!45379)) b!86968))

(assert (= (and b!86968 res!45377) b!86969))

(assert (= (and b!86969 res!45378) b!86970))

(declare-fun m!82944 () Bool)

(assert (=> b!86968 m!82944))

(assert (=> b!86969 m!82912))

(declare-fun m!82946 () Bool)

(assert (=> b!86970 m!82946))

(declare-fun m!82948 () Bool)

(assert (=> b!86970 m!82948))

(assert (=> b!86893 d!57953))

(declare-fun b!86985 () Bool)

(declare-fun res!45393 () Bool)

(declare-fun e!47189 () Bool)

(assert (=> b!86985 (=> (not res!45393) (not e!47189))))

(assert (=> b!86985 (= res!45393 (redNodesHaveBlackChildren!0 (left!1651 t!48253)))))

(declare-fun b!86986 () Bool)

(declare-fun e!47187 () Bool)

(assert (=> b!86986 (= e!47187 (redNodesHaveBlackChildren!0 (right!1654 t!48253)))))

(declare-fun b!86987 () Bool)

(declare-fun e!47186 () Bool)

(declare-fun e!47188 () Bool)

(assert (=> b!86987 (= e!47186 e!47188)))

(declare-fun c!21529 () Bool)

(assert (=> b!86987 (= c!21529 (and (is-Node!152 t!48253) (is-Black!10 (color!41 t!48253))))))

(declare-fun d!57955 () Bool)

(declare-fun res!45391 () Bool)

(assert (=> d!57955 (=> res!45391 e!47186)))

(assert (=> d!57955 (= res!45391 (is-Empty!191 t!48253))))

(assert (=> d!57955 (= (redNodesHaveBlackChildren!0 t!48253) e!47186)))

(declare-fun b!86988 () Bool)

(declare-fun res!45392 () Bool)

(assert (=> b!86988 (=> (not res!45392) (not e!47189))))

(declare-fun isBlack!0 (Tree!108) Bool)

(assert (=> b!86988 (= res!45392 (isBlack!0 (right!1654 t!48253)))))

(declare-fun b!86989 () Bool)

(assert (=> b!86989 (= e!47188 e!47187)))

(declare-fun res!45390 () Bool)

(assert (=> b!86989 (=> (not res!45390) (not e!47187))))

(assert (=> b!86989 (= res!45390 (redNodesHaveBlackChildren!0 (left!1651 t!48253)))))

(declare-fun b!86990 () Bool)

(assert (=> b!86990 (= e!47188 e!47189)))

(declare-fun res!45394 () Bool)

(assert (=> b!86990 (=> (not res!45394) (not e!47189))))

(assert (=> b!86990 (= res!45394 (isBlack!0 (left!1651 t!48253)))))

(declare-fun b!86991 () Bool)

(assert (=> b!86991 (= e!47189 (redNodesHaveBlackChildren!0 (right!1654 t!48253)))))

(assert (= (and d!57955 (not res!45391)) b!86987))

(assert (= (and b!86989 res!45390) b!86986))

(assert (= (and b!86990 res!45394) b!86988))

(assert (= (and b!86988 res!45392) b!86985))

(assert (= (and b!86985 res!45393) b!86991))

(assert (= (and b!86987 c!21529) b!86989))

(assert (= (and b!86987 (not c!21529)) b!86990))

(declare-fun m!82950 () Bool)

(assert (=> b!86985 m!82950))

(declare-fun m!82952 () Bool)

(assert (=> b!86990 m!82952))

(assert (=> b!86986 m!82918))

(declare-fun m!82954 () Bool)

(assert (=> b!86988 m!82954))

(assert (=> b!86991 m!82918))

(assert (=> b!86989 m!82950))

(assert (=> start!11344 d!57955))

(assert (=> b!86892 d!57951))

(assert (=> b!86892 d!57949))

(push 1)

(assert (not b!86904))

(assert (not b!86967))

(assert (not b!86969))

(assert (not b!86947))

(assert (not b!86917))

(assert (not b!86959))

(assert (not b!86989))

(assert (not b!86943))

(assert (not b!86941))

(assert (not b!86913))

(assert (not b!86990))

(assert (not b!86958))

(assert (not b!86991))

(assert (not b!86968))

(assert (not b!86940))

(assert (not b!86905))

(assert (not b!86911))

(assert (not b!86948))

(assert (not b!86957))

(assert (not b!86970))

(assert (not b!86986))

(assert (not b!86988))

(assert (not b!86965))

(assert (not b!86985))

(assert (not d!57945))

(assert (not b!86944))

(assert (not b!86950))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!57957 () Bool)

(declare-fun res!45397 () Bool)

(declare-fun e!47190 () Bool)

(assert (=> d!57957 (=> res!45397 e!47190)))

(assert (=> d!57957 (= res!45397 (not (is-Node!152 (right!1654 t!48253))))))

(assert (=> d!57957 (= (blackBalanced!0 (right!1654 t!48253)) e!47190)))

(declare-fun b!86992 () Bool)

(declare-fun e!47191 () Bool)

(assert (=> b!86992 (= e!47190 e!47191)))

(declare-fun res!45395 () Bool)

(assert (=> b!86992 (=> (not res!45395) (not e!47191))))

(assert (=> b!86992 (= res!45395 (blackBalanced!0 (left!1651 (right!1654 t!48253))))))

(declare-fun b!86993 () Bool)

(declare-fun res!45396 () Bool)

(assert (=> b!86993 (=> (not res!45396) (not e!47191))))

(assert (=> b!86993 (= res!45396 (blackBalanced!0 (right!1654 (right!1654 t!48253))))))

(declare-fun b!86994 () Bool)

(assert (=> b!86994 (= e!47191 (= (blackHeight!0 (left!1651 (right!1654 t!48253))) (blackHeight!0 (right!1654 (right!1654 t!48253)))))))

(assert (= (and d!57957 (not res!45397)) b!86992))

(assert (= (and b!86992 res!45395) b!86993))

(assert (= (and b!86993 res!45396) b!86994))

(declare-fun m!82956 () Bool)

(assert (=> b!86992 m!82956))

(declare-fun m!82958 () Bool)

(assert (=> b!86993 m!82958))

(declare-fun m!82960 () Bool)

(assert (=> b!86994 m!82960))

(declare-fun m!82962 () Bool)

(assert (=> b!86994 m!82962))

(assert (=> b!86969 d!57957))

(declare-fun d!57959 () Bool)

(declare-fun e!47192 () Bool)

(assert (=> d!57959 e!47192))

(declare-fun res!45398 () Bool)

(assert (=> d!57959 (=> (not res!45398) (not e!47192))))

(declare-fun lt!20130 () Tree!108)

(assert (=> d!57959 (= res!45398 (is-Node!152 lt!20130))))

(assert (=> d!57959 (= lt!20130 (ite (and (is-Black!10 (color!41 (right!1654 t!48253))) (is-Node!152 (ite lt!20125 lt!20123 (left!1651 (right!1654 t!48253)))) (is-Red!10 (color!41 (ite lt!20125 lt!20123 (left!1651 (right!1654 t!48253))))) (is-Node!152 (left!1651 (ite lt!20125 lt!20123 (left!1651 (right!1654 t!48253))))) (is-Red!10 (color!41 (left!1651 (ite lt!20125 lt!20123 (left!1651 (right!1654 t!48253))))))) (Node!152 Red!10 (Node!152 Black!10 (left!1651 (left!1651 (ite lt!20125 lt!20123 (left!1651 (right!1654 t!48253))))) (value!6798 (left!1651 (ite lt!20125 lt!20123 (left!1651 (right!1654 t!48253))))) (right!1654 (left!1651 (ite lt!20125 lt!20123 (left!1651 (right!1654 t!48253)))))) (value!6798 (ite lt!20125 lt!20123 (left!1651 (right!1654 t!48253)))) (Node!152 Black!10 (right!1654 (ite lt!20125 lt!20123 (left!1651 (right!1654 t!48253)))) (value!6798 (right!1654 t!48253)) (ite lt!20125 (right!1654 (right!1654 t!48253)) lt!20123))) (ite (and (is-Black!10 (color!41 (right!1654 t!48253))) (is-Node!152 (ite lt!20125 lt!20123 (left!1651 (right!1654 t!48253)))) (is-Red!10 (color!41 (ite lt!20125 lt!20123 (left!1651 (right!1654 t!48253))))) (is-Node!152 (right!1654 (ite lt!20125 lt!20123 (left!1651 (right!1654 t!48253))))) (is-Red!10 (color!41 (right!1654 (ite lt!20125 lt!20123 (left!1651 (right!1654 t!48253))))))) (Node!152 Red!10 (Node!152 Black!10 (left!1651 (ite lt!20125 lt!20123 (left!1651 (right!1654 t!48253)))) (value!6798 (ite lt!20125 lt!20123 (left!1651 (right!1654 t!48253)))) (left!1651 (right!1654 (ite lt!20125 lt!20123 (left!1651 (right!1654 t!48253)))))) (value!6798 (right!1654 (ite lt!20125 lt!20123 (left!1651 (right!1654 t!48253))))) (Node!152 Black!10 (right!1654 (right!1654 (ite lt!20125 lt!20123 (left!1651 (right!1654 t!48253))))) (value!6798 (right!1654 t!48253)) (ite lt!20125 (right!1654 (right!1654 t!48253)) lt!20123))) (ite (and (is-Black!10 (color!41 (right!1654 t!48253))) (is-Node!152 (ite lt!20125 (right!1654 (right!1654 t!48253)) lt!20123)) (is-Red!10 (color!41 (ite lt!20125 (right!1654 (right!1654 t!48253)) lt!20123))) (is-Node!152 (left!1651 (ite lt!20125 (right!1654 (right!1654 t!48253)) lt!20123))) (is-Red!10 (color!41 (left!1651 (ite lt!20125 (right!1654 (right!1654 t!48253)) lt!20123))))) (Node!152 Red!10 (Node!152 Black!10 (ite lt!20125 lt!20123 (left!1651 (right!1654 t!48253))) (value!6798 (right!1654 t!48253)) (left!1651 (left!1651 (ite lt!20125 (right!1654 (right!1654 t!48253)) lt!20123)))) (value!6798 (left!1651 (ite lt!20125 (right!1654 (right!1654 t!48253)) lt!20123))) (Node!152 Black!10 (right!1654 (left!1651 (ite lt!20125 (right!1654 (right!1654 t!48253)) lt!20123))) (value!6798 (ite lt!20125 (right!1654 (right!1654 t!48253)) lt!20123)) (right!1654 (ite lt!20125 (right!1654 (right!1654 t!48253)) lt!20123)))) (ite (and (is-Black!10 (color!41 (right!1654 t!48253))) (is-Node!152 (ite lt!20125 (right!1654 (right!1654 t!48253)) lt!20123)) (is-Red!10 (color!41 (ite lt!20125 (right!1654 (right!1654 t!48253)) lt!20123))) (is-Node!152 (right!1654 (ite lt!20125 (right!1654 (right!1654 t!48253)) lt!20123))) (is-Red!10 (color!41 (right!1654 (ite lt!20125 (right!1654 (right!1654 t!48253)) lt!20123))))) (Node!152 Red!10 (Node!152 Black!10 (ite lt!20125 lt!20123 (left!1651 (right!1654 t!48253))) (value!6798 (right!1654 t!48253)) (left!1651 (ite lt!20125 (right!1654 (right!1654 t!48253)) lt!20123))) (value!6798 (ite lt!20125 (right!1654 (right!1654 t!48253)) lt!20123)) (Node!152 Black!10 (left!1651 (right!1654 (ite lt!20125 (right!1654 (right!1654 t!48253)) lt!20123))) (value!6798 (right!1654 (ite lt!20125 (right!1654 (right!1654 t!48253)) lt!20123))) (right!1654 (right!1654 (ite lt!20125 (right!1654 (right!1654 t!48253)) lt!20123))))) (Node!152 (color!41 (right!1654 t!48253)) (ite lt!20125 lt!20123 (left!1651 (right!1654 t!48253))) (value!6798 (right!1654 t!48253)) (ite lt!20125 (right!1654 (right!1654 t!48253)) lt!20123)))))))))

(assert (=> d!57959 (= (balance!0 (color!41 (right!1654 t!48253)) (ite lt!20125 lt!20123 (left!1651 (right!1654 t!48253))) (value!6798 (right!1654 t!48253)) (ite lt!20125 (right!1654 (right!1654 t!48253)) lt!20123)) lt!20130)))

(declare-fun b!86995 () Bool)

(assert (=> b!86995 (= e!47192 (= (content!8 lt!20130) (content!8 (Node!152 (color!41 (right!1654 t!48253)) (ite lt!20125 lt!20123 (left!1651 (right!1654 t!48253))) (value!6798 (right!1654 t!48253)) (ite lt!20125 (right!1654 (right!1654 t!48253)) lt!20123)))))))

(assert (= (and d!57959 res!45398) b!86995))

(declare-fun m!82964 () Bool)

(assert (=> b!86995 m!82964))

(declare-fun m!82966 () Bool)

(assert (=> b!86995 m!82966))

(assert (=> b!86944 d!57959))

(declare-fun b!86996 () Bool)

(declare-fun res!45402 () Bool)

(declare-fun e!47196 () Bool)

(assert (=> b!86996 (=> (not res!45402) (not e!47196))))

(assert (=> b!86996 (= res!45402 (redNodesHaveBlackChildren!0 (left!1651 (right!1654 res!44634))))))

(declare-fun b!86997 () Bool)

(declare-fun e!47194 () Bool)

(assert (=> b!86997 (= e!47194 (redNodesHaveBlackChildren!0 (right!1654 (right!1654 res!44634))))))

(declare-fun b!86998 () Bool)

(declare-fun e!47193 () Bool)

(declare-fun e!47195 () Bool)

(assert (=> b!86998 (= e!47193 e!47195)))

(declare-fun c!21530 () Bool)

(assert (=> b!86998 (= c!21530 (and (is-Node!152 (right!1654 res!44634)) (is-Black!10 (color!41 (right!1654 res!44634)))))))

(declare-fun d!57961 () Bool)

(declare-fun res!45400 () Bool)

(assert (=> d!57961 (=> res!45400 e!47193)))

(assert (=> d!57961 (= res!45400 (is-Empty!191 (right!1654 res!44634)))))

(assert (=> d!57961 (= (redNodesHaveBlackChildren!0 (right!1654 res!44634)) e!47193)))

(declare-fun b!86999 () Bool)

(declare-fun res!45401 () Bool)

(assert (=> b!86999 (=> (not res!45401) (not e!47196))))

(assert (=> b!86999 (= res!45401 (isBlack!0 (right!1654 (right!1654 res!44634))))))

(declare-fun b!87000 () Bool)

(assert (=> b!87000 (= e!47195 e!47194)))

(declare-fun res!45399 () Bool)

(assert (=> b!87000 (=> (not res!45399) (not e!47194))))

(assert (=> b!87000 (= res!45399 (redNodesHaveBlackChildren!0 (left!1651 (right!1654 res!44634))))))

(declare-fun b!87001 () Bool)

(assert (=> b!87001 (= e!47195 e!47196)))

(declare-fun res!45403 () Bool)

(assert (=> b!87001 (=> (not res!45403) (not e!47196))))

(assert (=> b!87001 (= res!45403 (isBlack!0 (left!1651 (right!1654 res!44634))))))

(declare-fun b!87002 () Bool)

(assert (=> b!87002 (= e!47196 (redNodesHaveBlackChildren!0 (right!1654 (right!1654 res!44634))))))

(assert (= (and d!57961 (not res!45400)) b!86998))

(assert (= (and b!87000 res!45399) b!86997))

(assert (= (and b!87001 res!45403) b!86999))

(assert (= (and b!86999 res!45401) b!86996))

(assert (= (and b!86996 res!45402) b!87002))

(assert (= (and b!86998 c!21530) b!87000))

(assert (= (and b!86998 (not c!21530)) b!87001))

(declare-fun m!82968 () Bool)

(assert (=> b!86996 m!82968))

(declare-fun m!82970 () Bool)

(assert (=> b!87001 m!82970))

(declare-fun m!82972 () Bool)

(assert (=> b!86997 m!82972))

(declare-fun m!82974 () Bool)

(assert (=> b!86999 m!82974))

(assert (=> b!87002 m!82972))

(assert (=> b!87000 m!82968))

(assert (=> b!86905 d!57961))

(declare-fun d!57963 () Bool)

(assert (=> d!57963 (= (isBlack!0 (right!1654 t!48253)) (or (is-Empty!191 (right!1654 t!48253)) (and (is-Node!152 (right!1654 t!48253)) (is-Black!10 (color!41 (right!1654 t!48253))))))))

(assert (=> b!86988 d!57963))

(declare-fun d!57965 () Bool)

(declare-fun c!21531 () Bool)

(assert (=> d!57965 (= c!21531 (is-Empty!191 lt!20110))))

(declare-fun e!47197 () (Set Int))

(assert (=> d!57965 (= (content!8 lt!20110) e!47197)))

(declare-fun b!87003 () Bool)

(assert (=> b!87003 (= e!47197 (as emptyset (Set Int)))))

(declare-fun b!87004 () Bool)

(assert (=> b!87004 (= e!47197 (union (union (content!8 (left!1651 lt!20110)) (insert (value!6798 lt!20110) (as emptyset (Set Int)))) (content!8 (right!1654 lt!20110))))))

(assert (= (and d!57965 c!21531) b!87003))

(assert (= (and d!57965 (not c!21531)) b!87004))

(declare-fun m!82976 () Bool)

(assert (=> b!87004 m!82976))

(declare-fun m!82978 () Bool)

(assert (=> b!87004 m!82978))

(declare-fun m!82980 () Bool)

(assert (=> b!87004 m!82980))

(assert (=> b!86917 d!57965))

(declare-fun d!57967 () Bool)

(declare-fun c!21532 () Bool)

(assert (=> d!57967 (= c!21532 (is-Empty!191 (Node!152 (color!41 t!48253) (left!1651 t!48253) (value!6798 t!48253) (ins!0 x!30388 (right!1654 t!48253)))))))

(declare-fun e!47198 () (Set Int))

(assert (=> d!57967 (= (content!8 (Node!152 (color!41 t!48253) (left!1651 t!48253) (value!6798 t!48253) (ins!0 x!30388 (right!1654 t!48253)))) e!47198)))

(declare-fun b!87005 () Bool)

(assert (=> b!87005 (= e!47198 (as emptyset (Set Int)))))

(declare-fun b!87006 () Bool)

(assert (=> b!87006 (= e!47198 (union (union (content!8 (left!1651 (Node!152 (color!41 t!48253) (left!1651 t!48253) (value!6798 t!48253) (ins!0 x!30388 (right!1654 t!48253))))) (insert (value!6798 (Node!152 (color!41 t!48253) (left!1651 t!48253) (value!6798 t!48253) (ins!0 x!30388 (right!1654 t!48253)))) (as emptyset (Set Int)))) (content!8 (right!1654 (Node!152 (color!41 t!48253) (left!1651 t!48253) (value!6798 t!48253) (ins!0 x!30388 (right!1654 t!48253)))))))))

(assert (= (and d!57967 c!21532) b!87005))

(assert (= (and d!57967 (not c!21532)) b!87006))

(declare-fun m!82982 () Bool)

(assert (=> b!87006 m!82982))

(declare-fun m!82984 () Bool)

(assert (=> b!87006 m!82984))

(declare-fun m!82986 () Bool)

(assert (=> b!87006 m!82986))

(assert (=> b!86917 d!57967))

(declare-fun d!57969 () Bool)

(declare-fun res!45406 () Bool)

(declare-fun e!47199 () Bool)

(assert (=> d!57969 (=> res!45406 e!47199)))

(assert (=> d!57969 (= res!45406 (not (is-Node!152 (left!1651 t!48253))))))

(assert (=> d!57969 (= (blackBalanced!0 (left!1651 t!48253)) e!47199)))

(declare-fun b!87007 () Bool)

(declare-fun e!47200 () Bool)

(assert (=> b!87007 (= e!47199 e!47200)))

(declare-fun res!45404 () Bool)

(assert (=> b!87007 (=> (not res!45404) (not e!47200))))

(assert (=> b!87007 (= res!45404 (blackBalanced!0 (left!1651 (left!1651 t!48253))))))

(declare-fun b!87008 () Bool)

(declare-fun res!45405 () Bool)

(assert (=> b!87008 (=> (not res!45405) (not e!47200))))

(assert (=> b!87008 (= res!45405 (blackBalanced!0 (right!1654 (left!1651 t!48253))))))

(declare-fun b!87009 () Bool)

(assert (=> b!87009 (= e!47200 (= (blackHeight!0 (left!1651 (left!1651 t!48253))) (blackHeight!0 (right!1654 (left!1651 t!48253)))))))

(assert (= (and d!57969 (not res!45406)) b!87007))

(assert (= (and b!87007 res!45404) b!87008))

(assert (= (and b!87008 res!45405) b!87009))

(declare-fun m!82988 () Bool)

(assert (=> b!87007 m!82988))

(declare-fun m!82990 () Bool)

(assert (=> b!87008 m!82990))

(declare-fun m!82992 () Bool)

(assert (=> b!87009 m!82992))

(declare-fun m!82994 () Bool)

(assert (=> b!87009 m!82994))

(assert (=> b!86968 d!57969))

(declare-fun b!87010 () Bool)

(declare-fun res!45410 () Bool)

(declare-fun e!47204 () Bool)

(assert (=> b!87010 (=> (not res!45410) (not e!47204))))

(assert (=> b!87010 (= res!45410 (redNodesHaveBlackChildren!0 (left!1651 (left!1651 res!44634))))))

(declare-fun b!87011 () Bool)

(declare-fun e!47202 () Bool)

(assert (=> b!87011 (= e!47202 (redNodesHaveBlackChildren!0 (right!1654 (left!1651 res!44634))))))

(declare-fun b!87012 () Bool)

(declare-fun e!47201 () Bool)

(declare-fun e!47203 () Bool)

(assert (=> b!87012 (= e!47201 e!47203)))

(declare-fun c!21533 () Bool)

(assert (=> b!87012 (= c!21533 (and (is-Node!152 (left!1651 res!44634)) (is-Black!10 (color!41 (left!1651 res!44634)))))))

(declare-fun d!57971 () Bool)

(declare-fun res!45408 () Bool)

(assert (=> d!57971 (=> res!45408 e!47201)))

(assert (=> d!57971 (= res!45408 (is-Empty!191 (left!1651 res!44634)))))

(assert (=> d!57971 (= (redNodesHaveBlackChildren!0 (left!1651 res!44634)) e!47201)))

(declare-fun b!87013 () Bool)

(declare-fun res!45409 () Bool)

(assert (=> b!87013 (=> (not res!45409) (not e!47204))))

(assert (=> b!87013 (= res!45409 (isBlack!0 (right!1654 (left!1651 res!44634))))))

(declare-fun b!87014 () Bool)

(assert (=> b!87014 (= e!47203 e!47202)))

(declare-fun res!45407 () Bool)

(assert (=> b!87014 (=> (not res!45407) (not e!47202))))

(assert (=> b!87014 (= res!45407 (redNodesHaveBlackChildren!0 (left!1651 (left!1651 res!44634))))))

(declare-fun b!87015 () Bool)

(assert (=> b!87015 (= e!47203 e!47204)))

(declare-fun res!45411 () Bool)

(assert (=> b!87015 (=> (not res!45411) (not e!47204))))

(assert (=> b!87015 (= res!45411 (isBlack!0 (left!1651 (left!1651 res!44634))))))

(declare-fun b!87016 () Bool)

(assert (=> b!87016 (= e!47204 (redNodesHaveBlackChildren!0 (right!1654 (left!1651 res!44634))))))

(assert (= (and d!57971 (not res!45408)) b!87012))

(assert (= (and b!87014 res!45407) b!87011))

(assert (= (and b!87015 res!45411) b!87013))

(assert (= (and b!87013 res!45409) b!87010))

(assert (= (and b!87010 res!45410) b!87016))

(assert (= (and b!87012 c!21533) b!87014))

(assert (= (and b!87012 (not c!21533)) b!87015))

(declare-fun m!82996 () Bool)

(assert (=> b!87010 m!82996))

(declare-fun m!82998 () Bool)

(assert (=> b!87015 m!82998))

(declare-fun m!83000 () Bool)

(assert (=> b!87011 m!83000))

(declare-fun m!83002 () Bool)

(assert (=> b!87013 m!83002))

(assert (=> b!87016 m!83000))

(assert (=> b!87014 m!82996))

(assert (=> b!86904 d!57971))

(declare-fun d!57973 () Bool)

(declare-fun res!45414 () Bool)

(declare-fun e!47205 () Bool)

(assert (=> d!57973 (=> res!45414 e!47205)))

(assert (=> d!57973 (= res!45414 (not (is-Node!152 lt!20124)))))

(assert (=> d!57973 (= (blackBalanced!0 lt!20124) e!47205)))

(declare-fun b!87017 () Bool)

(declare-fun e!47206 () Bool)

(assert (=> b!87017 (= e!47205 e!47206)))

(declare-fun res!45412 () Bool)

(assert (=> b!87017 (=> (not res!45412) (not e!47206))))

(assert (=> b!87017 (= res!45412 (blackBalanced!0 (left!1651 lt!20124)))))

(declare-fun b!87018 () Bool)

(declare-fun res!45413 () Bool)

(assert (=> b!87018 (=> (not res!45413) (not e!47206))))

(assert (=> b!87018 (= res!45413 (blackBalanced!0 (right!1654 lt!20124)))))

(declare-fun b!87019 () Bool)

(assert (=> b!87019 (= e!47206 (= (blackHeight!0 (left!1651 lt!20124)) (blackHeight!0 (right!1654 lt!20124))))))

(assert (= (and d!57973 (not res!45414)) b!87017))

(assert (= (and b!87017 res!45412) b!87018))

(assert (= (and b!87018 res!45413) b!87019))

(declare-fun m!83004 () Bool)

(assert (=> b!87017 m!83004))

(declare-fun m!83006 () Bool)

(assert (=> b!87018 m!83006))

(declare-fun m!83008 () Bool)

(assert (=> b!87019 m!83008))

(declare-fun m!83010 () Bool)

(assert (=> b!87019 m!83010))

(assert (=> b!86947 d!57973))

(declare-fun d!57975 () Bool)

(declare-fun res!45417 () Bool)

(declare-fun e!47207 () Bool)

(assert (=> d!57975 (=> res!45417 e!47207)))

(assert (=> d!57975 (= res!45417 (not (is-Node!152 (left!1651 res!44634))))))

(assert (=> d!57975 (= (blackBalanced!0 (left!1651 res!44634)) e!47207)))

(declare-fun b!87020 () Bool)

(declare-fun e!47208 () Bool)

(assert (=> b!87020 (= e!47207 e!47208)))

(declare-fun res!45415 () Bool)

(assert (=> b!87020 (=> (not res!45415) (not e!47208))))

(assert (=> b!87020 (= res!45415 (blackBalanced!0 (left!1651 (left!1651 res!44634))))))

(declare-fun b!87021 () Bool)

(declare-fun res!45416 () Bool)

(assert (=> b!87021 (=> (not res!45416) (not e!47208))))

(assert (=> b!87021 (= res!45416 (blackBalanced!0 (right!1654 (left!1651 res!44634))))))

(declare-fun b!87022 () Bool)

(assert (=> b!87022 (= e!47208 (= (blackHeight!0 (left!1651 (left!1651 res!44634))) (blackHeight!0 (right!1654 (left!1651 res!44634)))))))

(assert (= (and d!57975 (not res!45417)) b!87020))

(assert (= (and b!87020 res!45415) b!87021))

(assert (= (and b!87021 res!45416) b!87022))

(declare-fun m!83012 () Bool)

(assert (=> b!87020 m!83012))

(declare-fun m!83014 () Bool)

(assert (=> b!87021 m!83014))

(declare-fun m!83016 () Bool)

(assert (=> b!87022 m!83016))

(declare-fun m!83018 () Bool)

(assert (=> b!87022 m!83018))

(assert (=> b!86957 d!57975))

(declare-fun d!57977 () Bool)

(declare-fun lt!20131 () Int)

(assert (=> d!57977 (>= lt!20131 0)))

(declare-fun e!47209 () Int)

(assert (=> d!57977 (= lt!20131 e!47209)))

(declare-fun c!21534 () Bool)

(assert (=> d!57977 (= c!21534 (is-Empty!191 (left!1651 t!48253)))))

(assert (=> d!57977 (= (size!3 (left!1651 t!48253)) lt!20131)))

(declare-fun b!87023 () Bool)

(assert (=> b!87023 (= e!47209 0)))

(declare-fun b!87024 () Bool)

(assert (=> b!87024 (= e!47209 (+ (+ (size!3 (left!1651 (left!1651 t!48253))) 1) (size!3 (right!1654 (left!1651 t!48253)))))))

(assert (= (and d!57977 c!21534) b!87023))

(assert (= (and d!57977 (not c!21534)) b!87024))

(declare-fun m!83020 () Bool)

(assert (=> b!87024 m!83020))

(declare-fun m!83022 () Bool)

(assert (=> b!87024 m!83022))

(assert (=> b!86967 d!57977))

(declare-fun d!57979 () Bool)

(declare-fun lt!20132 () Int)

(assert (=> d!57979 (>= lt!20132 0)))

(declare-fun e!47210 () Int)

(assert (=> d!57979 (= lt!20132 e!47210)))

(declare-fun c!21535 () Bool)

(assert (=> d!57979 (= c!21535 (is-Empty!191 (right!1654 t!48253)))))

(assert (=> d!57979 (= (size!3 (right!1654 t!48253)) lt!20132)))

(declare-fun b!87025 () Bool)

(assert (=> b!87025 (= e!47210 0)))

(declare-fun b!87026 () Bool)

(assert (=> b!87026 (= e!47210 (+ (+ (size!3 (left!1651 (right!1654 t!48253))) 1) (size!3 (right!1654 (right!1654 t!48253)))))))

(assert (= (and d!57979 c!21535) b!87025))

(assert (= (and d!57979 (not c!21535)) b!87026))

(declare-fun m!83024 () Bool)

(assert (=> b!87026 m!83024))

(declare-fun m!83026 () Bool)

(assert (=> b!87026 m!83026))

(assert (=> b!86967 d!57979))

(declare-fun d!57981 () Bool)

(declare-fun c!21536 () Bool)

(assert (=> d!57981 (= c!21536 (is-Empty!191 lt!20124))))

(declare-fun e!47211 () (Set Int))

(assert (=> d!57981 (= (content!8 lt!20124) e!47211)))

(declare-fun b!87027 () Bool)

(assert (=> b!87027 (= e!47211 (as emptyset (Set Int)))))

(declare-fun b!87028 () Bool)

(assert (=> b!87028 (= e!47211 (union (union (content!8 (left!1651 lt!20124)) (insert (value!6798 lt!20124) (as emptyset (Set Int)))) (content!8 (right!1654 lt!20124))))))

(assert (= (and d!57981 c!21536) b!87027))

(assert (= (and d!57981 (not c!21536)) b!87028))

(declare-fun m!83028 () Bool)

(assert (=> b!87028 m!83028))

(declare-fun m!83030 () Bool)

(assert (=> b!87028 m!83030))

(declare-fun m!83032 () Bool)

(assert (=> b!87028 m!83032))

(assert (=> d!57945 d!57981))

(declare-fun d!57983 () Bool)

(declare-fun c!21537 () Bool)

(assert (=> d!57983 (= c!21537 (is-Empty!191 (right!1654 t!48253)))))

(declare-fun e!47212 () (Set Int))

(assert (=> d!57983 (= (content!8 (right!1654 t!48253)) e!47212)))

(declare-fun b!87029 () Bool)

(assert (=> b!87029 (= e!47212 (as emptyset (Set Int)))))

(declare-fun b!87030 () Bool)

(assert (=> b!87030 (= e!47212 (union (union (content!8 (left!1651 (right!1654 t!48253))) (insert (value!6798 (right!1654 t!48253)) (as emptyset (Set Int)))) (content!8 (right!1654 (right!1654 t!48253)))))))

(assert (= (and d!57983 c!21537) b!87029))

(assert (= (and d!57983 (not c!21537)) b!87030))

(declare-fun m!83034 () Bool)

(assert (=> b!87030 m!83034))

(declare-fun m!83036 () Bool)

(assert (=> b!87030 m!83036))

(declare-fun m!83038 () Bool)

(assert (=> b!87030 m!83038))

(assert (=> d!57945 d!57983))

(declare-fun b!87031 () Bool)

(declare-fun res!45421 () Bool)

(declare-fun e!47216 () Bool)

(assert (=> b!87031 (=> (not res!45421) (not e!47216))))

(assert (=> b!87031 (= res!45421 (redNodesHaveBlackChildren!0 (left!1651 (right!1654 t!48253))))))

(declare-fun b!87032 () Bool)

(declare-fun e!47214 () Bool)

(assert (=> b!87032 (= e!47214 (redNodesHaveBlackChildren!0 (right!1654 (right!1654 t!48253))))))

(declare-fun b!87033 () Bool)

(declare-fun e!47213 () Bool)

(declare-fun e!47215 () Bool)

(assert (=> b!87033 (= e!47213 e!47215)))

(declare-fun c!21538 () Bool)

(assert (=> b!87033 (= c!21538 (and (is-Node!152 (right!1654 t!48253)) (is-Black!10 (color!41 (right!1654 t!48253)))))))

(declare-fun d!57985 () Bool)

(declare-fun res!45419 () Bool)

(assert (=> d!57985 (=> res!45419 e!47213)))

(assert (=> d!57985 (= res!45419 (is-Empty!191 (right!1654 t!48253)))))

(assert (=> d!57985 (= (redNodesHaveBlackChildren!0 (right!1654 t!48253)) e!47213)))

(declare-fun b!87034 () Bool)

(declare-fun res!45420 () Bool)

(assert (=> b!87034 (=> (not res!45420) (not e!47216))))

(assert (=> b!87034 (= res!45420 (isBlack!0 (right!1654 (right!1654 t!48253))))))

(declare-fun b!87035 () Bool)

(assert (=> b!87035 (= e!47215 e!47214)))

(declare-fun res!45418 () Bool)

(assert (=> b!87035 (=> (not res!45418) (not e!47214))))

(assert (=> b!87035 (= res!45418 (redNodesHaveBlackChildren!0 (left!1651 (right!1654 t!48253))))))

(declare-fun b!87036 () Bool)

(assert (=> b!87036 (= e!47215 e!47216)))

(declare-fun res!45422 () Bool)

(assert (=> b!87036 (=> (not res!45422) (not e!47216))))

(assert (=> b!87036 (= res!45422 (isBlack!0 (left!1651 (right!1654 t!48253))))))

(declare-fun b!87037 () Bool)

(assert (=> b!87037 (= e!47216 (redNodesHaveBlackChildren!0 (right!1654 (right!1654 t!48253))))))

(assert (= (and d!57985 (not res!45419)) b!87033))

(assert (= (and b!87035 res!45418) b!87032))

(assert (= (and b!87036 res!45422) b!87034))

(assert (= (and b!87034 res!45420) b!87031))

(assert (= (and b!87031 res!45421) b!87037))

(assert (= (and b!87033 c!21538) b!87035))

(assert (= (and b!87033 (not c!21538)) b!87036))

(declare-fun m!83040 () Bool)

(assert (=> b!87031 m!83040))

(declare-fun m!83042 () Bool)

(assert (=> b!87036 m!83042))

(declare-fun m!83044 () Bool)

(assert (=> b!87032 m!83044))

(declare-fun m!83046 () Bool)

(assert (=> b!87034 m!83046))

(assert (=> b!87037 m!83044))

(assert (=> b!87035 m!83040))

(assert (=> d!57945 d!57985))

(assert (=> b!86991 d!57985))

(declare-fun d!57987 () Bool)

(declare-fun res!45425 () Bool)

(declare-fun e!47217 () Bool)

(assert (=> d!57987 (=> res!45425 e!47217)))

(assert (=> d!57987 (= res!45425 (not (is-Node!152 (right!1654 res!44634))))))

(assert (=> d!57987 (= (blackBalanced!0 (right!1654 res!44634)) e!47217)))

(declare-fun b!87038 () Bool)

(declare-fun e!47218 () Bool)

(assert (=> b!87038 (= e!47217 e!47218)))

(declare-fun res!45423 () Bool)

(assert (=> b!87038 (=> (not res!45423) (not e!47218))))

(assert (=> b!87038 (= res!45423 (blackBalanced!0 (left!1651 (right!1654 res!44634))))))

(declare-fun b!87039 () Bool)

(declare-fun res!45424 () Bool)

(assert (=> b!87039 (=> (not res!45424) (not e!47218))))

(assert (=> b!87039 (= res!45424 (blackBalanced!0 (right!1654 (right!1654 res!44634))))))

(declare-fun b!87040 () Bool)

(assert (=> b!87040 (= e!47218 (= (blackHeight!0 (left!1651 (right!1654 res!44634))) (blackHeight!0 (right!1654 (right!1654 res!44634)))))))

(assert (= (and d!57987 (not res!45425)) b!87038))

(assert (= (and b!87038 res!45423) b!87039))

(assert (= (and b!87039 res!45424) b!87040))

(declare-fun m!83048 () Bool)

(assert (=> b!87038 m!83048))

(declare-fun m!83050 () Bool)

(assert (=> b!87039 m!83050))

(declare-fun m!83052 () Bool)

(assert (=> b!87040 m!83052))

(declare-fun m!83054 () Bool)

(assert (=> b!87040 m!83054))

(assert (=> b!86958 d!57987))

(declare-fun b!87041 () Bool)

(declare-fun res!45432 () Bool)

(declare-fun e!47219 () Bool)

(assert (=> b!87041 (=> (not res!45432) (not e!47219))))

(declare-fun lt!20136 () Tree!108)

(assert (=> b!87041 (= res!45432 (redDescHaveBlackChildren!0 lt!20136))))

(declare-fun b!87042 () Bool)

(declare-fun e!47223 () Bool)

(assert (=> b!87042 (= e!47223 (blackBalanced!0 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))))))

(declare-fun b!87043 () Bool)

(declare-fun e!47220 () Tree!108)

(declare-fun res!45426 () Tree!108)

(assert (=> b!87043 (= e!47220 res!45426)))

(assert (=> b!87043 true))

(declare-fun b!87044 () Bool)

(declare-fun lt!20133 () Bool)

(assert (=> b!87044 (= e!47220 (ins!0 x!30388 (ite lt!20133 (left!1651 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) (right!1654 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))))))))

(declare-fun lt!20137 () Bool)

(declare-fun lt!20135 () Tree!108)

(declare-fun b!87045 () Bool)

(declare-fun e!47221 () Tree!108)

(assert (=> b!87045 (= e!47221 (balance!0 (color!41 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) (ite lt!20137 lt!20135 (left!1651 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253))))) (value!6798 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) (ite lt!20137 (right!1654 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) lt!20135)))))

(declare-fun b!87046 () Bool)

(declare-fun e!47222 () Tree!108)

(assert (=> b!87046 (= e!47222 (Node!152 Red!10 Empty!191 x!30388 Empty!191))))

(declare-fun lt!20134 () Tree!108)

(declare-fun b!87047 () Bool)

(assert (=> b!87047 (= e!47222 (ite lt!20133 lt!20134 (ite (= x!30388 (value!6798 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253))))) (Node!152 (color!41 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) (left!1651 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) (value!6798 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) (right!1654 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253))))) lt!20134)))))

(assert (=> b!87047 (= lt!20134 e!47221)))

(declare-fun c!21539 () Bool)

(assert (=> b!87047 (= c!21539 (or lt!20137 (and (not lt!20133) (not (= x!30388 (value!6798 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))))))))))

(assert (=> b!87047 (= lt!20137 lt!20133)))

(assert (=> b!87047 (= lt!20135 e!47220)))

(declare-fun c!21541 () Bool)

(assert (=> b!87047 (= c!21541 (or lt!20133 (not (= x!30388 (value!6798 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253))))))))))

(assert (=> b!87047 (= lt!20133 (< x!30388 (value!6798 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253))))))))

(declare-fun d!57989 () Bool)

(assert (=> d!57989 e!47219))

(declare-fun res!45427 () Bool)

(assert (=> d!57989 (=> (not res!45427) (not e!47219))))

(assert (=> d!57989 (= res!45427 (= (content!8 lt!20136) (union (content!8 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) (insert x!30388 (as emptyset (Set Int))))))))

(assert (=> d!57989 (= lt!20136 e!47222)))

(declare-fun c!21540 () Bool)

(assert (=> d!57989 (= c!21540 (is-Empty!191 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))))))

(assert (=> d!57989 e!47223))

(declare-fun res!45429 () Bool)

(assert (=> d!57989 (=> (not res!45429) (not e!47223))))

(assert (=> d!57989 (= res!45429 (redNodesHaveBlackChildren!0 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))))))

(assert (=> d!57989 (= (ins!0 x!30388 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) lt!20136)))

(declare-fun b!87048 () Bool)

(assert (=> b!87048 (= e!47219 (blackBalanced!0 lt!20136))))

(declare-fun b!87049 () Bool)

(declare-fun res!45430 () Bool)

(assert (=> b!87049 (=> (not res!45430) (not e!47219))))

(assert (=> b!87049 (= res!45430 (<= (size!3 lt!20136) (+ (size!3 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) 1)))))

(declare-fun b!87050 () Bool)

(declare-fun res!45431 () Tree!108)

(assert (=> b!87050 (= e!47221 res!45431)))

(assert (=> b!87050 true))

(assert (=> b!87050 true))

(declare-fun b!87051 () Bool)

(declare-fun res!45428 () Bool)

(assert (=> b!87051 (=> (not res!45428) (not e!47219))))

(assert (=> b!87051 (= res!45428 (<= (size!3 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) (size!3 lt!20136)))))

(assert (= (and d!57989 res!45429) b!87042))

(assert (= (and b!87047 c!21541) b!87044))

(assert (= (and b!87047 (not c!21541)) b!87043))

(assert (= (and b!87047 c!21539) b!87045))

(assert (= (and b!87047 (not c!21539)) b!87050))

(assert (= (and d!57989 c!21540) b!87046))

(assert (= (and d!57989 (not c!21540)) b!87047))

(assert (= (and d!57989 res!45427) b!87051))

(assert (= (and b!87051 res!45428) b!87049))

(assert (= (and b!87049 res!45430) b!87041))

(assert (= (and b!87041 res!45432) b!87048))

(declare-fun m!83056 () Bool)

(assert (=> b!87042 m!83056))

(declare-fun m!83058 () Bool)

(assert (=> b!87044 m!83058))

(declare-fun m!83060 () Bool)

(assert (=> d!57989 m!83060))

(declare-fun m!83062 () Bool)

(assert (=> d!57989 m!83062))

(assert (=> d!57989 m!82890))

(declare-fun m!83064 () Bool)

(assert (=> d!57989 m!83064))

(declare-fun m!83066 () Bool)

(assert (=> b!87049 m!83066))

(declare-fun m!83068 () Bool)

(assert (=> b!87049 m!83068))

(declare-fun m!83070 () Bool)

(assert (=> b!87041 m!83070))

(declare-fun m!83072 () Bool)

(assert (=> b!87048 m!83072))

(assert (=> b!87051 m!83068))

(assert (=> b!87051 m!83066))

(declare-fun m!83074 () Bool)

(assert (=> b!87045 m!83074))

(assert (=> b!86943 d!57989))

(declare-fun b!87052 () Bool)

(declare-fun res!45436 () Bool)

(declare-fun e!47227 () Bool)

(assert (=> b!87052 (=> (not res!45436) (not e!47227))))

(assert (=> b!87052 (= res!45436 (redNodesHaveBlackChildren!0 (left!1651 (left!1651 t!48253))))))

(declare-fun b!87053 () Bool)

(declare-fun e!47225 () Bool)

(assert (=> b!87053 (= e!47225 (redNodesHaveBlackChildren!0 (right!1654 (left!1651 t!48253))))))

(declare-fun b!87054 () Bool)

(declare-fun e!47224 () Bool)

(declare-fun e!47226 () Bool)

(assert (=> b!87054 (= e!47224 e!47226)))

(declare-fun c!21542 () Bool)

(assert (=> b!87054 (= c!21542 (and (is-Node!152 (left!1651 t!48253)) (is-Black!10 (color!41 (left!1651 t!48253)))))))

(declare-fun d!57991 () Bool)

(declare-fun res!45434 () Bool)

(assert (=> d!57991 (=> res!45434 e!47224)))

(assert (=> d!57991 (= res!45434 (is-Empty!191 (left!1651 t!48253)))))

(assert (=> d!57991 (= (redNodesHaveBlackChildren!0 (left!1651 t!48253)) e!47224)))

(declare-fun b!87055 () Bool)

(declare-fun res!45435 () Bool)

(assert (=> b!87055 (=> (not res!45435) (not e!47227))))

(assert (=> b!87055 (= res!45435 (isBlack!0 (right!1654 (left!1651 t!48253))))))

(declare-fun b!87056 () Bool)

(assert (=> b!87056 (= e!47226 e!47225)))

(declare-fun res!45433 () Bool)

(assert (=> b!87056 (=> (not res!45433) (not e!47225))))

(assert (=> b!87056 (= res!45433 (redNodesHaveBlackChildren!0 (left!1651 (left!1651 t!48253))))))

(declare-fun b!87057 () Bool)

(assert (=> b!87057 (= e!47226 e!47227)))

(declare-fun res!45437 () Bool)

(assert (=> b!87057 (=> (not res!45437) (not e!47227))))

(assert (=> b!87057 (= res!45437 (isBlack!0 (left!1651 (left!1651 t!48253))))))

(declare-fun b!87058 () Bool)

(assert (=> b!87058 (= e!47227 (redNodesHaveBlackChildren!0 (right!1654 (left!1651 t!48253))))))

(assert (= (and d!57991 (not res!45434)) b!87054))

(assert (= (and b!87056 res!45433) b!87053))

(assert (= (and b!87057 res!45437) b!87055))

(assert (= (and b!87055 res!45435) b!87052))

(assert (= (and b!87052 res!45436) b!87058))

(assert (= (and b!87054 c!21542) b!87056))

(assert (= (and b!87054 (not c!21542)) b!87057))

(declare-fun m!83076 () Bool)

(assert (=> b!87052 m!83076))

(declare-fun m!83078 () Bool)

(assert (=> b!87057 m!83078))

(declare-fun m!83080 () Bool)

(assert (=> b!87053 m!83080))

(declare-fun m!83082 () Bool)

(assert (=> b!87055 m!83082))

(assert (=> b!87058 m!83080))

(assert (=> b!87056 m!83076))

(assert (=> b!86985 d!57991))

(declare-fun d!57993 () Bool)

(declare-fun lt!20138 () Int)

(assert (=> d!57993 (>= lt!20138 0)))

(declare-fun e!47228 () Int)

(assert (=> d!57993 (= lt!20138 e!47228)))

(declare-fun c!21543 () Bool)

(assert (=> d!57993 (= c!21543 (is-Empty!191 lt!20124))))

(assert (=> d!57993 (= (size!3 lt!20124) lt!20138)))

(declare-fun b!87059 () Bool)

(assert (=> b!87059 (= e!47228 0)))

(declare-fun b!87060 () Bool)

(assert (=> b!87060 (= e!47228 (+ (+ (size!3 (left!1651 lt!20124)) 1) (size!3 (right!1654 lt!20124))))))

(assert (= (and d!57993 c!21543) b!87059))

(assert (= (and d!57993 (not c!21543)) b!87060))

(declare-fun m!83084 () Bool)

(assert (=> b!87060 m!83084))

(declare-fun m!83086 () Bool)

(assert (=> b!87060 m!83086))

(assert (=> b!86948 d!57993))

(assert (=> b!86948 d!57979))

(declare-fun b!87066 () Bool)

(declare-fun e!47231 () Int)

(declare-fun lt!20141 () Int)

(assert (=> b!87066 (= e!47231 (ite (and (is-Node!152 (left!1651 res!44634)) (is-Black!10 (color!41 (left!1651 res!44634)))) (+ lt!20141 1) lt!20141))))

(assert (=> b!87066 (= lt!20141 (blackHeight!0 (left!1651 (left!1651 res!44634))))))

(declare-fun d!57995 () Bool)

(declare-fun c!21546 () Bool)

(assert (=> d!57995 (= c!21546 (is-Empty!191 (left!1651 res!44634)))))

(assert (=> d!57995 (= (blackHeight!0 (left!1651 res!44634)) e!47231)))

(declare-fun b!87065 () Bool)

(assert (=> b!87065 (= e!47231 1)))

(assert (= (and d!57995 c!21546) b!87065))

(assert (= (and d!57995 (not c!21546)) b!87066))

(assert (=> b!87066 m!83016))

(assert (=> b!86959 d!57995))

(declare-fun b!87068 () Bool)

(declare-fun e!47232 () Int)

(declare-fun lt!20142 () Int)

(assert (=> b!87068 (= e!47232 (ite (and (is-Node!152 (right!1654 res!44634)) (is-Black!10 (color!41 (right!1654 res!44634)))) (+ lt!20142 1) lt!20142))))

(assert (=> b!87068 (= lt!20142 (blackHeight!0 (left!1651 (right!1654 res!44634))))))

(declare-fun d!57997 () Bool)

(declare-fun c!21547 () Bool)

(assert (=> d!57997 (= c!21547 (is-Empty!191 (right!1654 res!44634)))))

(assert (=> d!57997 (= (blackHeight!0 (right!1654 res!44634)) e!47232)))

(declare-fun b!87067 () Bool)

(assert (=> b!87067 (= e!47232 1)))

(assert (= (and d!57997 c!21547) b!87067))

(assert (= (and d!57997 (not c!21547)) b!87068))

(assert (=> b!87068 m!83052))

(assert (=> b!86959 d!57997))

(declare-fun b!87070 () Bool)

(declare-fun e!47233 () Int)

(declare-fun lt!20143 () Int)

(assert (=> b!87070 (= e!47233 (ite (and (is-Node!152 (left!1651 t!48253)) (is-Black!10 (color!41 (left!1651 t!48253)))) (+ lt!20143 1) lt!20143))))

(assert (=> b!87070 (= lt!20143 (blackHeight!0 (left!1651 (left!1651 t!48253))))))

(declare-fun d!57999 () Bool)

(declare-fun c!21548 () Bool)

(assert (=> d!57999 (= c!21548 (is-Empty!191 (left!1651 t!48253)))))

(assert (=> d!57999 (= (blackHeight!0 (left!1651 t!48253)) e!47233)))

(declare-fun b!87069 () Bool)

(assert (=> b!87069 (= e!47233 1)))

(assert (= (and d!57999 c!21548) b!87069))

(assert (= (and d!57999 (not c!21548)) b!87070))

(assert (=> b!87070 m!82992))

(assert (=> b!86970 d!57999))

(declare-fun b!87072 () Bool)

(declare-fun e!47234 () Int)

(declare-fun lt!20144 () Int)

(assert (=> b!87072 (= e!47234 (ite (and (is-Node!152 (right!1654 t!48253)) (is-Black!10 (color!41 (right!1654 t!48253)))) (+ lt!20144 1) lt!20144))))

(assert (=> b!87072 (= lt!20144 (blackHeight!0 (left!1651 (right!1654 t!48253))))))

(declare-fun d!58001 () Bool)

(declare-fun c!21549 () Bool)

(assert (=> d!58001 (= c!21549 (is-Empty!191 (right!1654 t!48253)))))

(assert (=> d!58001 (= (blackHeight!0 (right!1654 t!48253)) e!47234)))

(declare-fun b!87071 () Bool)

(assert (=> b!87071 (= e!47234 1)))

(assert (= (and d!58001 c!21549) b!87071))

(assert (= (and d!58001 (not c!21549)) b!87072))

(assert (=> b!87072 m!82960))

(assert (=> b!86970 d!58001))

(declare-fun d!58003 () Bool)

(declare-fun lt!20145 () Int)

(assert (=> d!58003 (>= lt!20145 0)))

(declare-fun e!47235 () Int)

(assert (=> d!58003 (= lt!20145 e!47235)))

(declare-fun c!21550 () Bool)

(assert (=> d!58003 (= c!21550 (is-Empty!191 (left!1651 res!44634)))))

(assert (=> d!58003 (= (size!3 (left!1651 res!44634)) lt!20145)))

(declare-fun b!87073 () Bool)

(assert (=> b!87073 (= e!47235 0)))

(declare-fun b!87074 () Bool)

(assert (=> b!87074 (= e!47235 (+ (+ (size!3 (left!1651 (left!1651 res!44634))) 1) (size!3 (right!1654 (left!1651 res!44634)))))))

(assert (= (and d!58003 c!21550) b!87073))

(assert (= (and d!58003 (not c!21550)) b!87074))

(declare-fun m!83088 () Bool)

(assert (=> b!87074 m!83088))

(declare-fun m!83090 () Bool)

(assert (=> b!87074 m!83090))

(assert (=> b!86965 d!58003))

(declare-fun d!58005 () Bool)

(declare-fun lt!20146 () Int)

(assert (=> d!58005 (>= lt!20146 0)))

(declare-fun e!47236 () Int)

(assert (=> d!58005 (= lt!20146 e!47236)))

(declare-fun c!21551 () Bool)

(assert (=> d!58005 (= c!21551 (is-Empty!191 (right!1654 res!44634)))))

(assert (=> d!58005 (= (size!3 (right!1654 res!44634)) lt!20146)))

(declare-fun b!87075 () Bool)

(assert (=> b!87075 (= e!47236 0)))

(declare-fun b!87076 () Bool)

(assert (=> b!87076 (= e!47236 (+ (+ (size!3 (left!1651 (right!1654 res!44634))) 1) (size!3 (right!1654 (right!1654 res!44634)))))))

(assert (= (and d!58005 c!21551) b!87075))

(assert (= (and d!58005 (not c!21551)) b!87076))

(declare-fun m!83092 () Bool)

(assert (=> b!87076 m!83092))

(declare-fun m!83094 () Bool)

(assert (=> b!87076 m!83094))

(assert (=> b!86965 d!58005))

(assert (=> b!86941 d!57957))

(declare-fun d!58007 () Bool)

(declare-fun res!45441 () Bool)

(declare-fun e!47237 () Bool)

(assert (=> d!58007 (=> res!45441 e!47237)))

(assert (=> d!58007 (= res!45441 (is-Empty!191 lt!20124))))

(assert (=> d!58007 (= (redDescHaveBlackChildren!0 lt!20124) e!47237)))

(declare-fun b!87077 () Bool)

(declare-fun e!47238 () Bool)

(assert (=> b!87077 (= e!47237 e!47238)))

(declare-fun res!45442 () Bool)

(assert (=> b!87077 (=> (not res!45442) (not e!47238))))

(assert (=> b!87077 (= res!45442 (redNodesHaveBlackChildren!0 (left!1651 lt!20124)))))

(declare-fun b!87078 () Bool)

(assert (=> b!87078 (= e!47238 (redNodesHaveBlackChildren!0 (right!1654 lt!20124)))))

(assert (= (and d!58007 (not res!45441)) b!87077))

(assert (= (and b!87077 res!45442) b!87078))

(declare-fun m!83096 () Bool)

(assert (=> b!87077 m!83096))

(declare-fun m!83098 () Bool)

(assert (=> b!87078 m!83098))

(assert (=> b!86940 d!58007))

(declare-fun d!58009 () Bool)

(assert (=> d!58009 (= (isBlack!0 (left!1651 t!48253)) (or (is-Empty!191 (left!1651 t!48253)) (and (is-Node!152 (left!1651 t!48253)) (is-Black!10 (color!41 (left!1651 t!48253))))))))

(assert (=> b!86990 d!58009))

(assert (=> b!86950 d!57979))

(assert (=> b!86950 d!57993))

(assert (=> b!86986 d!57985))

(declare-fun d!58011 () Bool)

(declare-fun c!21552 () Bool)

(assert (=> d!58011 (= c!21552 (is-Empty!191 (left!1651 res!44634)))))

(declare-fun e!47239 () (Set Int))

(assert (=> d!58011 (= (content!8 (left!1651 res!44634)) e!47239)))

(declare-fun b!87079 () Bool)

(assert (=> b!87079 (= e!47239 (as emptyset (Set Int)))))

(declare-fun b!87080 () Bool)

(assert (=> b!87080 (= e!47239 (union (union (content!8 (left!1651 (left!1651 res!44634))) (insert (value!6798 (left!1651 res!44634)) (as emptyset (Set Int)))) (content!8 (right!1654 (left!1651 res!44634)))))))

(assert (= (and d!58011 c!21552) b!87079))

(assert (= (and d!58011 (not c!21552)) b!87080))

(declare-fun m!83100 () Bool)

(assert (=> b!87080 m!83100))

(declare-fun m!83102 () Bool)

(assert (=> b!87080 m!83102))

(declare-fun m!83104 () Bool)

(assert (=> b!87080 m!83104))

(assert (=> b!86911 d!58011))

(declare-fun d!58013 () Bool)

(declare-fun c!21553 () Bool)

(assert (=> d!58013 (= c!21553 (is-Empty!191 (right!1654 res!44634)))))

(declare-fun e!47240 () (Set Int))

(assert (=> d!58013 (= (content!8 (right!1654 res!44634)) e!47240)))

(declare-fun b!87081 () Bool)

(assert (=> b!87081 (= e!47240 (as emptyset (Set Int)))))

(declare-fun b!87082 () Bool)

(assert (=> b!87082 (= e!47240 (union (union (content!8 (left!1651 (right!1654 res!44634))) (insert (value!6798 (right!1654 res!44634)) (as emptyset (Set Int)))) (content!8 (right!1654 (right!1654 res!44634)))))))

(assert (= (and d!58013 c!21553) b!87081))

(assert (= (and d!58013 (not c!21553)) b!87082))

(declare-fun m!83106 () Bool)

(assert (=> b!87082 m!83106))

(declare-fun m!83108 () Bool)

(assert (=> b!87082 m!83108))

(declare-fun m!83110 () Bool)

(assert (=> b!87082 m!83110))

(assert (=> b!86911 d!58013))

(assert (=> b!86989 d!57991))

(declare-fun d!58015 () Bool)

(declare-fun c!21554 () Bool)

(assert (=> d!58015 (= c!21554 (is-Empty!191 (left!1651 t!48253)))))

(declare-fun e!47241 () (Set Int))

(assert (=> d!58015 (= (content!8 (left!1651 t!48253)) e!47241)))

(declare-fun b!87083 () Bool)

(assert (=> b!87083 (= e!47241 (as emptyset (Set Int)))))

(declare-fun b!87084 () Bool)

(assert (=> b!87084 (= e!47241 (union (union (content!8 (left!1651 (left!1651 t!48253))) (insert (value!6798 (left!1651 t!48253)) (as emptyset (Set Int)))) (content!8 (right!1654 (left!1651 t!48253)))))))

(assert (= (and d!58015 c!21554) b!87083))

(assert (= (and d!58015 (not c!21554)) b!87084))

(declare-fun m!83112 () Bool)

(assert (=> b!87084 m!83112))

(declare-fun m!83114 () Bool)

(assert (=> b!87084 m!83114))

(declare-fun m!83116 () Bool)

(assert (=> b!87084 m!83116))

(assert (=> b!86913 d!58015))

(assert (=> b!86913 d!57983))

(push 1)

(assert (not b!86999))

(assert (not b!86992))

(assert (not b!87004))

(assert (not b!87070))

(assert (not b!87014))

(assert (not b!87049))

(assert (not b!86994))

(assert (not b!87009))

(assert (not b!86996))

(assert (not b!87077))

(assert (not b!87016))

(assert (not b!87058))

(assert (not b!87076))

(assert (not b!87008))

(assert (not b!87072))

(assert (not b!87044))

(assert (not b!87019))

(assert (not b!87053))

(assert (not b!87042))

(assert (not b!87031))

(assert (not b!87015))

(assert (not b!87026))

(assert (not b!87022))

(assert (not b!87074))

(assert (not b!87037))

(assert (not b!87024))

(assert (not b!87035))

(assert (not b!87028))

(assert (not b!87060))

(assert (not b!87018))

(assert (not b!87036))

(assert (not b!87051))

(assert (not b!87021))

(assert (not b!87002))

(assert (not b!87032))

(assert (not b!87056))

(assert (not b!87041))

(assert (not b!87040))

(assert (not b!87082))

(assert (not b!87013))

(assert (not b!87001))

(assert (not b!87000))

(assert (not b!87007))

(assert (not b!87038))

(assert (not b!87066))

(assert (not b!87084))

(assert (not b!87052))

(assert (not b!87006))

(assert (not d!57989))

(assert (not b!87055))

(assert (not b!87030))

(assert (not b!87017))

(assert (not b!87039))

(assert (not b!87045))

(assert (not b!87057))

(assert (not b!87011))

(assert (not b!87078))

(assert (not b!87048))

(assert (not b!86997))

(assert (not b!87068))

(assert (not b!86995))

(assert (not b!86993))

(assert (not b!87080))

(assert (not b!87010))

(assert (not b!87034))

(assert (not b!87020))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!87085 () Bool)

(declare-fun res!45446 () Bool)

(declare-fun e!47245 () Bool)

(assert (=> b!87085 (=> (not res!45446) (not e!47245))))

(assert (=> b!87085 (= res!45446 (redNodesHaveBlackChildren!0 (left!1651 (right!1654 lt!20124))))))

(declare-fun b!87086 () Bool)

(declare-fun e!47243 () Bool)

(assert (=> b!87086 (= e!47243 (redNodesHaveBlackChildren!0 (right!1654 (right!1654 lt!20124))))))

(declare-fun b!87087 () Bool)

(declare-fun e!47242 () Bool)

(declare-fun e!47244 () Bool)

(assert (=> b!87087 (= e!47242 e!47244)))

(declare-fun c!21555 () Bool)

(assert (=> b!87087 (= c!21555 (and (is-Node!152 (right!1654 lt!20124)) (is-Black!10 (color!41 (right!1654 lt!20124)))))))

(declare-fun d!58017 () Bool)

(declare-fun res!45444 () Bool)

(assert (=> d!58017 (=> res!45444 e!47242)))

(assert (=> d!58017 (= res!45444 (is-Empty!191 (right!1654 lt!20124)))))

(assert (=> d!58017 (= (redNodesHaveBlackChildren!0 (right!1654 lt!20124)) e!47242)))

(declare-fun b!87088 () Bool)

(declare-fun res!45445 () Bool)

(assert (=> b!87088 (=> (not res!45445) (not e!47245))))

(assert (=> b!87088 (= res!45445 (isBlack!0 (right!1654 (right!1654 lt!20124))))))

(declare-fun b!87089 () Bool)

(assert (=> b!87089 (= e!47244 e!47243)))

(declare-fun res!45443 () Bool)

(assert (=> b!87089 (=> (not res!45443) (not e!47243))))

(assert (=> b!87089 (= res!45443 (redNodesHaveBlackChildren!0 (left!1651 (right!1654 lt!20124))))))

(declare-fun b!87090 () Bool)

(assert (=> b!87090 (= e!47244 e!47245)))

(declare-fun res!45447 () Bool)

(assert (=> b!87090 (=> (not res!45447) (not e!47245))))

(assert (=> b!87090 (= res!45447 (isBlack!0 (left!1651 (right!1654 lt!20124))))))

(declare-fun b!87091 () Bool)

(assert (=> b!87091 (= e!47245 (redNodesHaveBlackChildren!0 (right!1654 (right!1654 lt!20124))))))

(assert (= (and d!58017 (not res!45444)) b!87087))

(assert (= (and b!87089 res!45443) b!87086))

(assert (= (and b!87090 res!45447) b!87088))

(assert (= (and b!87088 res!45445) b!87085))

(assert (= (and b!87085 res!45446) b!87091))

(assert (= (and b!87087 c!21555) b!87089))

(assert (= (and b!87087 (not c!21555)) b!87090))

(declare-fun m!83118 () Bool)

(assert (=> b!87085 m!83118))

(declare-fun m!83120 () Bool)

(assert (=> b!87090 m!83120))

(declare-fun m!83122 () Bool)

(assert (=> b!87086 m!83122))

(declare-fun m!83124 () Bool)

(assert (=> b!87088 m!83124))

(assert (=> b!87091 m!83122))

(assert (=> b!87089 m!83118))

(assert (=> b!87078 d!58017))

(declare-fun b!87092 () Bool)

(declare-fun res!45451 () Bool)

(declare-fun e!47249 () Bool)

(assert (=> b!87092 (=> (not res!45451) (not e!47249))))

(assert (=> b!87092 (= res!45451 (redNodesHaveBlackChildren!0 (left!1651 (left!1651 (left!1651 t!48253)))))))

(declare-fun b!87093 () Bool)

(declare-fun e!47247 () Bool)

(assert (=> b!87093 (= e!47247 (redNodesHaveBlackChildren!0 (right!1654 (left!1651 (left!1651 t!48253)))))))

(declare-fun b!87094 () Bool)

(declare-fun e!47246 () Bool)

(declare-fun e!47248 () Bool)

(assert (=> b!87094 (= e!47246 e!47248)))

(declare-fun c!21556 () Bool)

(assert (=> b!87094 (= c!21556 (and (is-Node!152 (left!1651 (left!1651 t!48253))) (is-Black!10 (color!41 (left!1651 (left!1651 t!48253))))))))

(declare-fun d!58019 () Bool)

(declare-fun res!45449 () Bool)

(assert (=> d!58019 (=> res!45449 e!47246)))

(assert (=> d!58019 (= res!45449 (is-Empty!191 (left!1651 (left!1651 t!48253))))))

(assert (=> d!58019 (= (redNodesHaveBlackChildren!0 (left!1651 (left!1651 t!48253))) e!47246)))

(declare-fun b!87095 () Bool)

(declare-fun res!45450 () Bool)

(assert (=> b!87095 (=> (not res!45450) (not e!47249))))

(assert (=> b!87095 (= res!45450 (isBlack!0 (right!1654 (left!1651 (left!1651 t!48253)))))))

(declare-fun b!87096 () Bool)

(assert (=> b!87096 (= e!47248 e!47247)))

(declare-fun res!45448 () Bool)

(assert (=> b!87096 (=> (not res!45448) (not e!47247))))

(assert (=> b!87096 (= res!45448 (redNodesHaveBlackChildren!0 (left!1651 (left!1651 (left!1651 t!48253)))))))

(declare-fun b!87097 () Bool)

(assert (=> b!87097 (= e!47248 e!47249)))

(declare-fun res!45452 () Bool)

(assert (=> b!87097 (=> (not res!45452) (not e!47249))))

(assert (=> b!87097 (= res!45452 (isBlack!0 (left!1651 (left!1651 (left!1651 t!48253)))))))

(declare-fun b!87098 () Bool)

(assert (=> b!87098 (= e!47249 (redNodesHaveBlackChildren!0 (right!1654 (left!1651 (left!1651 t!48253)))))))

(assert (= (and d!58019 (not res!45449)) b!87094))

(assert (= (and b!87096 res!45448) b!87093))

(assert (= (and b!87097 res!45452) b!87095))

(assert (= (and b!87095 res!45450) b!87092))

(assert (= (and b!87092 res!45451) b!87098))

(assert (= (and b!87094 c!21556) b!87096))

(assert (= (and b!87094 (not c!21556)) b!87097))

(declare-fun m!83126 () Bool)

(assert (=> b!87092 m!83126))

(declare-fun m!83128 () Bool)

(assert (=> b!87097 m!83128))

(declare-fun m!83130 () Bool)

(assert (=> b!87093 m!83130))

(declare-fun m!83132 () Bool)

(assert (=> b!87095 m!83132))

(assert (=> b!87098 m!83130))

(assert (=> b!87096 m!83126))

(assert (=> b!87056 d!58019))

(declare-fun d!58021 () Bool)

(declare-fun c!21557 () Bool)

(assert (=> d!58021 (= c!21557 (is-Empty!191 lt!20130))))

(declare-fun e!47250 () (Set Int))

(assert (=> d!58021 (= (content!8 lt!20130) e!47250)))

(declare-fun b!87099 () Bool)

(assert (=> b!87099 (= e!47250 (as emptyset (Set Int)))))

(declare-fun b!87100 () Bool)

(assert (=> b!87100 (= e!47250 (union (union (content!8 (left!1651 lt!20130)) (insert (value!6798 lt!20130) (as emptyset (Set Int)))) (content!8 (right!1654 lt!20130))))))

(assert (= (and d!58021 c!21557) b!87099))

(assert (= (and d!58021 (not c!21557)) b!87100))

(declare-fun m!83134 () Bool)

(assert (=> b!87100 m!83134))

(declare-fun m!83136 () Bool)

(assert (=> b!87100 m!83136))

(declare-fun m!83138 () Bool)

(assert (=> b!87100 m!83138))

(assert (=> b!86995 d!58021))

(declare-fun c!21558 () Bool)

(declare-fun d!58023 () Bool)

(assert (=> d!58023 (= c!21558 (is-Empty!191 (Node!152 (color!41 (right!1654 t!48253)) (ite lt!20125 lt!20123 (left!1651 (right!1654 t!48253))) (value!6798 (right!1654 t!48253)) (ite lt!20125 (right!1654 (right!1654 t!48253)) lt!20123))))))

(declare-fun e!47251 () (Set Int))

(assert (=> d!58023 (= (content!8 (Node!152 (color!41 (right!1654 t!48253)) (ite lt!20125 lt!20123 (left!1651 (right!1654 t!48253))) (value!6798 (right!1654 t!48253)) (ite lt!20125 (right!1654 (right!1654 t!48253)) lt!20123))) e!47251)))

(declare-fun b!87101 () Bool)

(assert (=> b!87101 (= e!47251 (as emptyset (Set Int)))))

(declare-fun b!87102 () Bool)

(assert (=> b!87102 (= e!47251 (union (union (content!8 (left!1651 (Node!152 (color!41 (right!1654 t!48253)) (ite lt!20125 lt!20123 (left!1651 (right!1654 t!48253))) (value!6798 (right!1654 t!48253)) (ite lt!20125 (right!1654 (right!1654 t!48253)) lt!20123)))) (insert (value!6798 (Node!152 (color!41 (right!1654 t!48253)) (ite lt!20125 lt!20123 (left!1651 (right!1654 t!48253))) (value!6798 (right!1654 t!48253)) (ite lt!20125 (right!1654 (right!1654 t!48253)) lt!20123))) (as emptyset (Set Int)))) (content!8 (right!1654 (Node!152 (color!41 (right!1654 t!48253)) (ite lt!20125 lt!20123 (left!1651 (right!1654 t!48253))) (value!6798 (right!1654 t!48253)) (ite lt!20125 (right!1654 (right!1654 t!48253)) lt!20123))))))))

(assert (= (and d!58023 c!21558) b!87101))

(assert (= (and d!58023 (not c!21558)) b!87102))

(declare-fun m!83140 () Bool)

(assert (=> b!87102 m!83140))

(declare-fun m!83142 () Bool)

(assert (=> b!87102 m!83142))

(declare-fun m!83144 () Bool)

(assert (=> b!87102 m!83144))

(assert (=> b!86995 d!58023))

(declare-fun b!87103 () Bool)

(declare-fun res!45456 () Bool)

(declare-fun e!47255 () Bool)

(assert (=> b!87103 (=> (not res!45456) (not e!47255))))

(assert (=> b!87103 (= res!45456 (redNodesHaveBlackChildren!0 (left!1651 (right!1654 (left!1651 t!48253)))))))

(declare-fun b!87104 () Bool)

(declare-fun e!47253 () Bool)

(assert (=> b!87104 (= e!47253 (redNodesHaveBlackChildren!0 (right!1654 (right!1654 (left!1651 t!48253)))))))

(declare-fun b!87105 () Bool)

(declare-fun e!47252 () Bool)

(declare-fun e!47254 () Bool)

(assert (=> b!87105 (= e!47252 e!47254)))

(declare-fun c!21559 () Bool)

(assert (=> b!87105 (= c!21559 (and (is-Node!152 (right!1654 (left!1651 t!48253))) (is-Black!10 (color!41 (right!1654 (left!1651 t!48253))))))))

(declare-fun d!58025 () Bool)

(declare-fun res!45454 () Bool)

(assert (=> d!58025 (=> res!45454 e!47252)))

(assert (=> d!58025 (= res!45454 (is-Empty!191 (right!1654 (left!1651 t!48253))))))

(assert (=> d!58025 (= (redNodesHaveBlackChildren!0 (right!1654 (left!1651 t!48253))) e!47252)))

(declare-fun b!87106 () Bool)

(declare-fun res!45455 () Bool)

(assert (=> b!87106 (=> (not res!45455) (not e!47255))))

(assert (=> b!87106 (= res!45455 (isBlack!0 (right!1654 (right!1654 (left!1651 t!48253)))))))

(declare-fun b!87107 () Bool)

(assert (=> b!87107 (= e!47254 e!47253)))

(declare-fun res!45453 () Bool)

(assert (=> b!87107 (=> (not res!45453) (not e!47253))))

(assert (=> b!87107 (= res!45453 (redNodesHaveBlackChildren!0 (left!1651 (right!1654 (left!1651 t!48253)))))))

(declare-fun b!87108 () Bool)

(assert (=> b!87108 (= e!47254 e!47255)))

(declare-fun res!45457 () Bool)

(assert (=> b!87108 (=> (not res!45457) (not e!47255))))

(assert (=> b!87108 (= res!45457 (isBlack!0 (left!1651 (right!1654 (left!1651 t!48253)))))))

(declare-fun b!87109 () Bool)

(assert (=> b!87109 (= e!47255 (redNodesHaveBlackChildren!0 (right!1654 (right!1654 (left!1651 t!48253)))))))

(assert (= (and d!58025 (not res!45454)) b!87105))

(assert (= (and b!87107 res!45453) b!87104))

(assert (= (and b!87108 res!45457) b!87106))

(assert (= (and b!87106 res!45455) b!87103))

(assert (= (and b!87103 res!45456) b!87109))

(assert (= (and b!87105 c!21559) b!87107))

(assert (= (and b!87105 (not c!21559)) b!87108))

(declare-fun m!83146 () Bool)

(assert (=> b!87103 m!83146))

(declare-fun m!83148 () Bool)

(assert (=> b!87108 m!83148))

(declare-fun m!83150 () Bool)

(assert (=> b!87104 m!83150))

(declare-fun m!83152 () Bool)

(assert (=> b!87106 m!83152))

(assert (=> b!87109 m!83150))

(assert (=> b!87107 m!83146))

(assert (=> b!87053 d!58025))

(declare-fun d!58027 () Bool)

(declare-fun c!21560 () Bool)

(assert (=> d!58027 (= c!21560 (is-Empty!191 (left!1651 (right!1654 res!44634))))))

(declare-fun e!47256 () (Set Int))

(assert (=> d!58027 (= (content!8 (left!1651 (right!1654 res!44634))) e!47256)))

(declare-fun b!87110 () Bool)

(assert (=> b!87110 (= e!47256 (as emptyset (Set Int)))))

(declare-fun b!87111 () Bool)

(assert (=> b!87111 (= e!47256 (union (union (content!8 (left!1651 (left!1651 (right!1654 res!44634)))) (insert (value!6798 (left!1651 (right!1654 res!44634))) (as emptyset (Set Int)))) (content!8 (right!1654 (left!1651 (right!1654 res!44634))))))))

(assert (= (and d!58027 c!21560) b!87110))

(assert (= (and d!58027 (not c!21560)) b!87111))

(declare-fun m!83154 () Bool)

(assert (=> b!87111 m!83154))

(declare-fun m!83156 () Bool)

(assert (=> b!87111 m!83156))

(declare-fun m!83158 () Bool)

(assert (=> b!87111 m!83158))

(assert (=> b!87082 d!58027))

(declare-fun d!58029 () Bool)

(declare-fun c!21561 () Bool)

(assert (=> d!58029 (= c!21561 (is-Empty!191 (right!1654 (right!1654 res!44634))))))

(declare-fun e!47257 () (Set Int))

(assert (=> d!58029 (= (content!8 (right!1654 (right!1654 res!44634))) e!47257)))

(declare-fun b!87112 () Bool)

(assert (=> b!87112 (= e!47257 (as emptyset (Set Int)))))

(declare-fun b!87113 () Bool)

(assert (=> b!87113 (= e!47257 (union (union (content!8 (left!1651 (right!1654 (right!1654 res!44634)))) (insert (value!6798 (right!1654 (right!1654 res!44634))) (as emptyset (Set Int)))) (content!8 (right!1654 (right!1654 (right!1654 res!44634))))))))

(assert (= (and d!58029 c!21561) b!87112))

(assert (= (and d!58029 (not c!21561)) b!87113))

(declare-fun m!83160 () Bool)

(assert (=> b!87113 m!83160))

(declare-fun m!83162 () Bool)

(assert (=> b!87113 m!83162))

(declare-fun m!83164 () Bool)

(assert (=> b!87113 m!83164))

(assert (=> b!87082 d!58029))

(declare-fun d!58031 () Bool)

(declare-fun lt!20147 () Int)

(assert (=> d!58031 (>= lt!20147 0)))

(declare-fun e!47258 () Int)

(assert (=> d!58031 (= lt!20147 e!47258)))

(declare-fun c!21562 () Bool)

(assert (=> d!58031 (= c!21562 (is-Empty!191 (left!1651 (right!1654 res!44634))))))

(assert (=> d!58031 (= (size!3 (left!1651 (right!1654 res!44634))) lt!20147)))

(declare-fun b!87114 () Bool)

(assert (=> b!87114 (= e!47258 0)))

(declare-fun b!87115 () Bool)

(assert (=> b!87115 (= e!47258 (+ (+ (size!3 (left!1651 (left!1651 (right!1654 res!44634)))) 1) (size!3 (right!1654 (left!1651 (right!1654 res!44634))))))))

(assert (= (and d!58031 c!21562) b!87114))

(assert (= (and d!58031 (not c!21562)) b!87115))

(declare-fun m!83166 () Bool)

(assert (=> b!87115 m!83166))

(declare-fun m!83168 () Bool)

(assert (=> b!87115 m!83168))

(assert (=> b!87076 d!58031))

(declare-fun d!58033 () Bool)

(declare-fun lt!20148 () Int)

(assert (=> d!58033 (>= lt!20148 0)))

(declare-fun e!47259 () Int)

(assert (=> d!58033 (= lt!20148 e!47259)))

(declare-fun c!21563 () Bool)

(assert (=> d!58033 (= c!21563 (is-Empty!191 (right!1654 (right!1654 res!44634))))))

(assert (=> d!58033 (= (size!3 (right!1654 (right!1654 res!44634))) lt!20148)))

(declare-fun b!87116 () Bool)

(assert (=> b!87116 (= e!47259 0)))

(declare-fun b!87117 () Bool)

(assert (=> b!87117 (= e!47259 (+ (+ (size!3 (left!1651 (right!1654 (right!1654 res!44634)))) 1) (size!3 (right!1654 (right!1654 (right!1654 res!44634))))))))

(assert (= (and d!58033 c!21563) b!87116))

(assert (= (and d!58033 (not c!21563)) b!87117))

(declare-fun m!83170 () Bool)

(assert (=> b!87117 m!83170))

(declare-fun m!83172 () Bool)

(assert (=> b!87117 m!83172))

(assert (=> b!87076 d!58033))

(declare-fun b!87118 () Bool)

(declare-fun res!45461 () Bool)

(declare-fun e!47263 () Bool)

(assert (=> b!87118 (=> (not res!45461) (not e!47263))))

(assert (=> b!87118 (= res!45461 (redNodesHaveBlackChildren!0 (left!1651 (left!1651 (right!1654 t!48253)))))))

(declare-fun b!87119 () Bool)

(declare-fun e!47261 () Bool)

(assert (=> b!87119 (= e!47261 (redNodesHaveBlackChildren!0 (right!1654 (left!1651 (right!1654 t!48253)))))))

(declare-fun b!87120 () Bool)

(declare-fun e!47260 () Bool)

(declare-fun e!47262 () Bool)

(assert (=> b!87120 (= e!47260 e!47262)))

(declare-fun c!21564 () Bool)

(assert (=> b!87120 (= c!21564 (and (is-Node!152 (left!1651 (right!1654 t!48253))) (is-Black!10 (color!41 (left!1651 (right!1654 t!48253))))))))

(declare-fun d!58035 () Bool)

(declare-fun res!45459 () Bool)

(assert (=> d!58035 (=> res!45459 e!47260)))

(assert (=> d!58035 (= res!45459 (is-Empty!191 (left!1651 (right!1654 t!48253))))))

(assert (=> d!58035 (= (redNodesHaveBlackChildren!0 (left!1651 (right!1654 t!48253))) e!47260)))

(declare-fun b!87121 () Bool)

(declare-fun res!45460 () Bool)

(assert (=> b!87121 (=> (not res!45460) (not e!47263))))

(assert (=> b!87121 (= res!45460 (isBlack!0 (right!1654 (left!1651 (right!1654 t!48253)))))))

(declare-fun b!87122 () Bool)

(assert (=> b!87122 (= e!47262 e!47261)))

(declare-fun res!45458 () Bool)

(assert (=> b!87122 (=> (not res!45458) (not e!47261))))

(assert (=> b!87122 (= res!45458 (redNodesHaveBlackChildren!0 (left!1651 (left!1651 (right!1654 t!48253)))))))

(declare-fun b!87123 () Bool)

(assert (=> b!87123 (= e!47262 e!47263)))

(declare-fun res!45462 () Bool)

(assert (=> b!87123 (=> (not res!45462) (not e!47263))))

(assert (=> b!87123 (= res!45462 (isBlack!0 (left!1651 (left!1651 (right!1654 t!48253)))))))

(declare-fun b!87124 () Bool)

(assert (=> b!87124 (= e!47263 (redNodesHaveBlackChildren!0 (right!1654 (left!1651 (right!1654 t!48253)))))))

(assert (= (and d!58035 (not res!45459)) b!87120))

(assert (= (and b!87122 res!45458) b!87119))

(assert (= (and b!87123 res!45462) b!87121))

(assert (= (and b!87121 res!45460) b!87118))

(assert (= (and b!87118 res!45461) b!87124))

(assert (= (and b!87120 c!21564) b!87122))

(assert (= (and b!87120 (not c!21564)) b!87123))

(declare-fun m!83174 () Bool)

(assert (=> b!87118 m!83174))

(declare-fun m!83176 () Bool)

(assert (=> b!87123 m!83176))

(declare-fun m!83178 () Bool)

(assert (=> b!87119 m!83178))

(declare-fun m!83180 () Bool)

(assert (=> b!87121 m!83180))

(assert (=> b!87124 m!83178))

(assert (=> b!87122 m!83174))

(assert (=> b!87035 d!58035))

(declare-fun b!87125 () Bool)

(declare-fun res!45466 () Bool)

(declare-fun e!47267 () Bool)

(assert (=> b!87125 (=> (not res!45466) (not e!47267))))

(assert (=> b!87125 (= res!45466 (redNodesHaveBlackChildren!0 (left!1651 (right!1654 (left!1651 res!44634)))))))

(declare-fun b!87126 () Bool)

(declare-fun e!47265 () Bool)

(assert (=> b!87126 (= e!47265 (redNodesHaveBlackChildren!0 (right!1654 (right!1654 (left!1651 res!44634)))))))

(declare-fun b!87127 () Bool)

(declare-fun e!47264 () Bool)

(declare-fun e!47266 () Bool)

(assert (=> b!87127 (= e!47264 e!47266)))

(declare-fun c!21565 () Bool)

(assert (=> b!87127 (= c!21565 (and (is-Node!152 (right!1654 (left!1651 res!44634))) (is-Black!10 (color!41 (right!1654 (left!1651 res!44634))))))))

(declare-fun d!58037 () Bool)

(declare-fun res!45464 () Bool)

(assert (=> d!58037 (=> res!45464 e!47264)))

(assert (=> d!58037 (= res!45464 (is-Empty!191 (right!1654 (left!1651 res!44634))))))

(assert (=> d!58037 (= (redNodesHaveBlackChildren!0 (right!1654 (left!1651 res!44634))) e!47264)))

(declare-fun b!87128 () Bool)

(declare-fun res!45465 () Bool)

(assert (=> b!87128 (=> (not res!45465) (not e!47267))))

(assert (=> b!87128 (= res!45465 (isBlack!0 (right!1654 (right!1654 (left!1651 res!44634)))))))

(declare-fun b!87129 () Bool)

(assert (=> b!87129 (= e!47266 e!47265)))

(declare-fun res!45463 () Bool)

(assert (=> b!87129 (=> (not res!45463) (not e!47265))))

(assert (=> b!87129 (= res!45463 (redNodesHaveBlackChildren!0 (left!1651 (right!1654 (left!1651 res!44634)))))))

(declare-fun b!87130 () Bool)

(assert (=> b!87130 (= e!47266 e!47267)))

(declare-fun res!45467 () Bool)

(assert (=> b!87130 (=> (not res!45467) (not e!47267))))

(assert (=> b!87130 (= res!45467 (isBlack!0 (left!1651 (right!1654 (left!1651 res!44634)))))))

(declare-fun b!87131 () Bool)

(assert (=> b!87131 (= e!47267 (redNodesHaveBlackChildren!0 (right!1654 (right!1654 (left!1651 res!44634)))))))

(assert (= (and d!58037 (not res!45464)) b!87127))

(assert (= (and b!87129 res!45463) b!87126))

(assert (= (and b!87130 res!45467) b!87128))

(assert (= (and b!87128 res!45465) b!87125))

(assert (= (and b!87125 res!45466) b!87131))

(assert (= (and b!87127 c!21565) b!87129))

(assert (= (and b!87127 (not c!21565)) b!87130))

(declare-fun m!83182 () Bool)

(assert (=> b!87125 m!83182))

(declare-fun m!83184 () Bool)

(assert (=> b!87130 m!83184))

(declare-fun m!83186 () Bool)

(assert (=> b!87126 m!83186))

(declare-fun m!83188 () Bool)

(assert (=> b!87128 m!83188))

(assert (=> b!87131 m!83186))

(assert (=> b!87129 m!83182))

(assert (=> b!87016 d!58037))

(declare-fun b!87133 () Bool)

(declare-fun e!47268 () Int)

(declare-fun lt!20149 () Int)

(assert (=> b!87133 (= e!47268 (ite (and (is-Node!152 (left!1651 (left!1651 t!48253))) (is-Black!10 (color!41 (left!1651 (left!1651 t!48253))))) (+ lt!20149 1) lt!20149))))

(assert (=> b!87133 (= lt!20149 (blackHeight!0 (left!1651 (left!1651 (left!1651 t!48253)))))))

(declare-fun d!58039 () Bool)

(declare-fun c!21566 () Bool)

(assert (=> d!58039 (= c!21566 (is-Empty!191 (left!1651 (left!1651 t!48253))))))

(assert (=> d!58039 (= (blackHeight!0 (left!1651 (left!1651 t!48253))) e!47268)))

(declare-fun b!87132 () Bool)

(assert (=> b!87132 (= e!47268 1)))

(assert (= (and d!58039 c!21566) b!87132))

(assert (= (and d!58039 (not c!21566)) b!87133))

(declare-fun m!83190 () Bool)

(assert (=> b!87133 m!83190))

(assert (=> b!87009 d!58039))

(declare-fun b!87135 () Bool)

(declare-fun e!47269 () Int)

(declare-fun lt!20150 () Int)

(assert (=> b!87135 (= e!47269 (ite (and (is-Node!152 (right!1654 (left!1651 t!48253))) (is-Black!10 (color!41 (right!1654 (left!1651 t!48253))))) (+ lt!20150 1) lt!20150))))

(assert (=> b!87135 (= lt!20150 (blackHeight!0 (left!1651 (right!1654 (left!1651 t!48253)))))))

(declare-fun d!58041 () Bool)

(declare-fun c!21567 () Bool)

(assert (=> d!58041 (= c!21567 (is-Empty!191 (right!1654 (left!1651 t!48253))))))

(assert (=> d!58041 (= (blackHeight!0 (right!1654 (left!1651 t!48253))) e!47269)))

(declare-fun b!87134 () Bool)

(assert (=> b!87134 (= e!47269 1)))

(assert (= (and d!58041 c!21567) b!87134))

(assert (= (and d!58041 (not c!21567)) b!87135))

(declare-fun m!83192 () Bool)

(assert (=> b!87135 m!83192))

(assert (=> b!87009 d!58041))

(declare-fun d!58043 () Bool)

(declare-fun c!21568 () Bool)

(assert (=> d!58043 (= c!21568 (is-Empty!191 (left!1651 (left!1651 res!44634))))))

(declare-fun e!47270 () (Set Int))

(assert (=> d!58043 (= (content!8 (left!1651 (left!1651 res!44634))) e!47270)))

(declare-fun b!87136 () Bool)

(assert (=> b!87136 (= e!47270 (as emptyset (Set Int)))))

(declare-fun b!87137 () Bool)

(assert (=> b!87137 (= e!47270 (union (union (content!8 (left!1651 (left!1651 (left!1651 res!44634)))) (insert (value!6798 (left!1651 (left!1651 res!44634))) (as emptyset (Set Int)))) (content!8 (right!1654 (left!1651 (left!1651 res!44634))))))))

(assert (= (and d!58043 c!21568) b!87136))

(assert (= (and d!58043 (not c!21568)) b!87137))

(declare-fun m!83194 () Bool)

(assert (=> b!87137 m!83194))

(declare-fun m!83196 () Bool)

(assert (=> b!87137 m!83196))

(declare-fun m!83198 () Bool)

(assert (=> b!87137 m!83198))

(assert (=> b!87080 d!58043))

(declare-fun d!58045 () Bool)

(declare-fun c!21569 () Bool)

(assert (=> d!58045 (= c!21569 (is-Empty!191 (right!1654 (left!1651 res!44634))))))

(declare-fun e!47271 () (Set Int))

(assert (=> d!58045 (= (content!8 (right!1654 (left!1651 res!44634))) e!47271)))

(declare-fun b!87138 () Bool)

(assert (=> b!87138 (= e!47271 (as emptyset (Set Int)))))

(declare-fun b!87139 () Bool)

(assert (=> b!87139 (= e!47271 (union (union (content!8 (left!1651 (right!1654 (left!1651 res!44634)))) (insert (value!6798 (right!1654 (left!1651 res!44634))) (as emptyset (Set Int)))) (content!8 (right!1654 (right!1654 (left!1651 res!44634))))))))

(assert (= (and d!58045 c!21569) b!87138))

(assert (= (and d!58045 (not c!21569)) b!87139))

(declare-fun m!83200 () Bool)

(assert (=> b!87139 m!83200))

(declare-fun m!83202 () Bool)

(assert (=> b!87139 m!83202))

(declare-fun m!83204 () Bool)

(assert (=> b!87139 m!83204))

(assert (=> b!87080 d!58045))

(declare-fun b!87141 () Bool)

(declare-fun e!47272 () Int)

(declare-fun lt!20151 () Int)

(assert (=> b!87141 (= e!47272 (ite (and (is-Node!152 (left!1651 (left!1651 res!44634))) (is-Black!10 (color!41 (left!1651 (left!1651 res!44634))))) (+ lt!20151 1) lt!20151))))

(assert (=> b!87141 (= lt!20151 (blackHeight!0 (left!1651 (left!1651 (left!1651 res!44634)))))))

(declare-fun d!58047 () Bool)

(declare-fun c!21570 () Bool)

(assert (=> d!58047 (= c!21570 (is-Empty!191 (left!1651 (left!1651 res!44634))))))

(assert (=> d!58047 (= (blackHeight!0 (left!1651 (left!1651 res!44634))) e!47272)))

(declare-fun b!87140 () Bool)

(assert (=> b!87140 (= e!47272 1)))

(assert (= (and d!58047 c!21570) b!87140))

(assert (= (and d!58047 (not c!21570)) b!87141))

(declare-fun m!83206 () Bool)

(assert (=> b!87141 m!83206))

(assert (=> b!87066 d!58047))

(declare-fun d!58049 () Bool)

(assert (=> d!58049 (= (isBlack!0 (right!1654 (left!1651 res!44634))) (or (is-Empty!191 (right!1654 (left!1651 res!44634))) (and (is-Node!152 (right!1654 (left!1651 res!44634))) (is-Black!10 (color!41 (right!1654 (left!1651 res!44634)))))))))

(assert (=> b!87013 d!58049))

(declare-fun d!58051 () Bool)

(declare-fun res!45470 () Bool)

(declare-fun e!47273 () Bool)

(assert (=> d!58051 (=> res!45470 e!47273)))

(assert (=> d!58051 (= res!45470 (not (is-Node!152 lt!20136)))))

(assert (=> d!58051 (= (blackBalanced!0 lt!20136) e!47273)))

(declare-fun b!87142 () Bool)

(declare-fun e!47274 () Bool)

(assert (=> b!87142 (= e!47273 e!47274)))

(declare-fun res!45468 () Bool)

(assert (=> b!87142 (=> (not res!45468) (not e!47274))))

(assert (=> b!87142 (= res!45468 (blackBalanced!0 (left!1651 lt!20136)))))

(declare-fun b!87143 () Bool)

(declare-fun res!45469 () Bool)

(assert (=> b!87143 (=> (not res!45469) (not e!47274))))

(assert (=> b!87143 (= res!45469 (blackBalanced!0 (right!1654 lt!20136)))))

(declare-fun b!87144 () Bool)

(assert (=> b!87144 (= e!47274 (= (blackHeight!0 (left!1651 lt!20136)) (blackHeight!0 (right!1654 lt!20136))))))

(assert (= (and d!58051 (not res!45470)) b!87142))

(assert (= (and b!87142 res!45468) b!87143))

(assert (= (and b!87143 res!45469) b!87144))

(declare-fun m!83208 () Bool)

(assert (=> b!87142 m!83208))

(declare-fun m!83210 () Bool)

(assert (=> b!87143 m!83210))

(declare-fun m!83212 () Bool)

(assert (=> b!87144 m!83212))

(declare-fun m!83214 () Bool)

(assert (=> b!87144 m!83214))

(assert (=> b!87048 d!58051))

(assert (=> b!87031 d!58035))

(declare-fun b!87146 () Bool)

(declare-fun e!47275 () Int)

(declare-fun lt!20152 () Int)

(assert (=> b!87146 (= e!47275 (ite (and (is-Node!152 (left!1651 (right!1654 res!44634))) (is-Black!10 (color!41 (left!1651 (right!1654 res!44634))))) (+ lt!20152 1) lt!20152))))

(assert (=> b!87146 (= lt!20152 (blackHeight!0 (left!1651 (left!1651 (right!1654 res!44634)))))))

(declare-fun d!58053 () Bool)

(declare-fun c!21571 () Bool)

(assert (=> d!58053 (= c!21571 (is-Empty!191 (left!1651 (right!1654 res!44634))))))

(assert (=> d!58053 (= (blackHeight!0 (left!1651 (right!1654 res!44634))) e!47275)))

(declare-fun b!87145 () Bool)

(assert (=> b!87145 (= e!47275 1)))

(assert (= (and d!58053 c!21571) b!87145))

(assert (= (and d!58053 (not c!21571)) b!87146))

(declare-fun m!83216 () Bool)

(assert (=> b!87146 m!83216))

(assert (=> b!87040 d!58053))

(declare-fun b!87148 () Bool)

(declare-fun e!47276 () Int)

(declare-fun lt!20153 () Int)

(assert (=> b!87148 (= e!47276 (ite (and (is-Node!152 (right!1654 (right!1654 res!44634))) (is-Black!10 (color!41 (right!1654 (right!1654 res!44634))))) (+ lt!20153 1) lt!20153))))

(assert (=> b!87148 (= lt!20153 (blackHeight!0 (left!1651 (right!1654 (right!1654 res!44634)))))))

(declare-fun d!58055 () Bool)

(declare-fun c!21572 () Bool)

(assert (=> d!58055 (= c!21572 (is-Empty!191 (right!1654 (right!1654 res!44634))))))

(assert (=> d!58055 (= (blackHeight!0 (right!1654 (right!1654 res!44634))) e!47276)))

(declare-fun b!87147 () Bool)

(assert (=> b!87147 (= e!47276 1)))

(assert (= (and d!58055 c!21572) b!87147))

(assert (= (and d!58055 (not c!21572)) b!87148))

(declare-fun m!83218 () Bool)

(assert (=> b!87148 m!83218))

(assert (=> b!87040 d!58055))

(declare-fun b!87149 () Bool)

(declare-fun res!45474 () Bool)

(declare-fun e!47280 () Bool)

(assert (=> b!87149 (=> (not res!45474) (not e!47280))))

(assert (=> b!87149 (= res!45474 (redNodesHaveBlackChildren!0 (left!1651 (left!1651 (left!1651 res!44634)))))))

(declare-fun b!87150 () Bool)

(declare-fun e!47278 () Bool)

(assert (=> b!87150 (= e!47278 (redNodesHaveBlackChildren!0 (right!1654 (left!1651 (left!1651 res!44634)))))))

(declare-fun b!87151 () Bool)

(declare-fun e!47277 () Bool)

(declare-fun e!47279 () Bool)

(assert (=> b!87151 (= e!47277 e!47279)))

(declare-fun c!21573 () Bool)

(assert (=> b!87151 (= c!21573 (and (is-Node!152 (left!1651 (left!1651 res!44634))) (is-Black!10 (color!41 (left!1651 (left!1651 res!44634))))))))

(declare-fun d!58057 () Bool)

(declare-fun res!45472 () Bool)

(assert (=> d!58057 (=> res!45472 e!47277)))

(assert (=> d!58057 (= res!45472 (is-Empty!191 (left!1651 (left!1651 res!44634))))))

(assert (=> d!58057 (= (redNodesHaveBlackChildren!0 (left!1651 (left!1651 res!44634))) e!47277)))

(declare-fun b!87152 () Bool)

(declare-fun res!45473 () Bool)

(assert (=> b!87152 (=> (not res!45473) (not e!47280))))

(assert (=> b!87152 (= res!45473 (isBlack!0 (right!1654 (left!1651 (left!1651 res!44634)))))))

(declare-fun b!87153 () Bool)

(assert (=> b!87153 (= e!47279 e!47278)))

(declare-fun res!45471 () Bool)

(assert (=> b!87153 (=> (not res!45471) (not e!47278))))

(assert (=> b!87153 (= res!45471 (redNodesHaveBlackChildren!0 (left!1651 (left!1651 (left!1651 res!44634)))))))

(declare-fun b!87154 () Bool)

(assert (=> b!87154 (= e!47279 e!47280)))

(declare-fun res!45475 () Bool)

(assert (=> b!87154 (=> (not res!45475) (not e!47280))))

(assert (=> b!87154 (= res!45475 (isBlack!0 (left!1651 (left!1651 (left!1651 res!44634)))))))

(declare-fun b!87155 () Bool)

(assert (=> b!87155 (= e!47280 (redNodesHaveBlackChildren!0 (right!1654 (left!1651 (left!1651 res!44634)))))))

(assert (= (and d!58057 (not res!45472)) b!87151))

(assert (= (and b!87153 res!45471) b!87150))

(assert (= (and b!87154 res!45475) b!87152))

(assert (= (and b!87152 res!45473) b!87149))

(assert (= (and b!87149 res!45474) b!87155))

(assert (= (and b!87151 c!21573) b!87153))

(assert (= (and b!87151 (not c!21573)) b!87154))

(declare-fun m!83220 () Bool)

(assert (=> b!87149 m!83220))

(declare-fun m!83222 () Bool)

(assert (=> b!87154 m!83222))

(declare-fun m!83224 () Bool)

(assert (=> b!87150 m!83224))

(declare-fun m!83226 () Bool)

(assert (=> b!87152 m!83226))

(assert (=> b!87155 m!83224))

(assert (=> b!87153 m!83220))

(assert (=> b!87010 d!58057))

(declare-fun d!58059 () Bool)

(declare-fun res!45478 () Bool)

(declare-fun e!47281 () Bool)

(assert (=> d!58059 (=> res!45478 e!47281)))

(assert (=> d!58059 (= res!45478 (not (is-Node!152 (right!1654 (left!1651 t!48253)))))))

(assert (=> d!58059 (= (blackBalanced!0 (right!1654 (left!1651 t!48253))) e!47281)))

(declare-fun b!87156 () Bool)

(declare-fun e!47282 () Bool)

(assert (=> b!87156 (= e!47281 e!47282)))

(declare-fun res!45476 () Bool)

(assert (=> b!87156 (=> (not res!45476) (not e!47282))))

(assert (=> b!87156 (= res!45476 (blackBalanced!0 (left!1651 (right!1654 (left!1651 t!48253)))))))

(declare-fun b!87157 () Bool)

(declare-fun res!45477 () Bool)

(assert (=> b!87157 (=> (not res!45477) (not e!47282))))

(assert (=> b!87157 (= res!45477 (blackBalanced!0 (right!1654 (right!1654 (left!1651 t!48253)))))))

(declare-fun b!87158 () Bool)

(assert (=> b!87158 (= e!47282 (= (blackHeight!0 (left!1651 (right!1654 (left!1651 t!48253)))) (blackHeight!0 (right!1654 (right!1654 (left!1651 t!48253))))))))

(assert (= (and d!58059 (not res!45478)) b!87156))

(assert (= (and b!87156 res!45476) b!87157))

(assert (= (and b!87157 res!45477) b!87158))

(declare-fun m!83228 () Bool)

(assert (=> b!87156 m!83228))

(declare-fun m!83230 () Bool)

(assert (=> b!87157 m!83230))

(assert (=> b!87158 m!83192))

(declare-fun m!83232 () Bool)

(assert (=> b!87158 m!83232))

(assert (=> b!87008 d!58059))

(declare-fun d!58061 () Bool)

(assert (=> d!58061 (= (isBlack!0 (left!1651 (right!1654 res!44634))) (or (is-Empty!191 (left!1651 (right!1654 res!44634))) (and (is-Node!152 (left!1651 (right!1654 res!44634))) (is-Black!10 (color!41 (left!1651 (right!1654 res!44634)))))))))

(assert (=> b!87001 d!58061))

(declare-fun d!58063 () Bool)

(declare-fun res!45481 () Bool)

(declare-fun e!47283 () Bool)

(assert (=> d!58063 (=> res!45481 e!47283)))

(assert (=> d!58063 (= res!45481 (not (is-Node!152 (left!1651 (left!1651 res!44634)))))))

(assert (=> d!58063 (= (blackBalanced!0 (left!1651 (left!1651 res!44634))) e!47283)))

(declare-fun b!87159 () Bool)

(declare-fun e!47284 () Bool)

(assert (=> b!87159 (= e!47283 e!47284)))

(declare-fun res!45479 () Bool)

(assert (=> b!87159 (=> (not res!45479) (not e!47284))))

(assert (=> b!87159 (= res!45479 (blackBalanced!0 (left!1651 (left!1651 (left!1651 res!44634)))))))

(declare-fun b!87160 () Bool)

(declare-fun res!45480 () Bool)

(assert (=> b!87160 (=> (not res!45480) (not e!47284))))

(assert (=> b!87160 (= res!45480 (blackBalanced!0 (right!1654 (left!1651 (left!1651 res!44634)))))))

(declare-fun b!87161 () Bool)

(assert (=> b!87161 (= e!47284 (= (blackHeight!0 (left!1651 (left!1651 (left!1651 res!44634)))) (blackHeight!0 (right!1654 (left!1651 (left!1651 res!44634))))))))

(assert (= (and d!58063 (not res!45481)) b!87159))

(assert (= (and b!87159 res!45479) b!87160))

(assert (= (and b!87160 res!45480) b!87161))

(declare-fun m!83234 () Bool)

(assert (=> b!87159 m!83234))

(declare-fun m!83236 () Bool)

(assert (=> b!87160 m!83236))

(assert (=> b!87161 m!83206))

(declare-fun m!83238 () Bool)

(assert (=> b!87161 m!83238))

(assert (=> b!87020 d!58063))

(declare-fun b!87162 () Bool)

(declare-fun res!45485 () Bool)

(declare-fun e!47288 () Bool)

(assert (=> b!87162 (=> (not res!45485) (not e!47288))))

(assert (=> b!87162 (= res!45485 (redNodesHaveBlackChildren!0 (left!1651 (right!1654 (right!1654 t!48253)))))))

(declare-fun b!87163 () Bool)

(declare-fun e!47286 () Bool)

(assert (=> b!87163 (= e!47286 (redNodesHaveBlackChildren!0 (right!1654 (right!1654 (right!1654 t!48253)))))))

(declare-fun b!87164 () Bool)

(declare-fun e!47285 () Bool)

(declare-fun e!47287 () Bool)

(assert (=> b!87164 (= e!47285 e!47287)))

(declare-fun c!21574 () Bool)

(assert (=> b!87164 (= c!21574 (and (is-Node!152 (right!1654 (right!1654 t!48253))) (is-Black!10 (color!41 (right!1654 (right!1654 t!48253))))))))

(declare-fun d!58065 () Bool)

(declare-fun res!45483 () Bool)

(assert (=> d!58065 (=> res!45483 e!47285)))

(assert (=> d!58065 (= res!45483 (is-Empty!191 (right!1654 (right!1654 t!48253))))))

(assert (=> d!58065 (= (redNodesHaveBlackChildren!0 (right!1654 (right!1654 t!48253))) e!47285)))

(declare-fun b!87165 () Bool)

(declare-fun res!45484 () Bool)

(assert (=> b!87165 (=> (not res!45484) (not e!47288))))

(assert (=> b!87165 (= res!45484 (isBlack!0 (right!1654 (right!1654 (right!1654 t!48253)))))))

(declare-fun b!87166 () Bool)

(assert (=> b!87166 (= e!47287 e!47286)))

(declare-fun res!45482 () Bool)

(assert (=> b!87166 (=> (not res!45482) (not e!47286))))

(assert (=> b!87166 (= res!45482 (redNodesHaveBlackChildren!0 (left!1651 (right!1654 (right!1654 t!48253)))))))

(declare-fun b!87167 () Bool)

(assert (=> b!87167 (= e!47287 e!47288)))

(declare-fun res!45486 () Bool)

(assert (=> b!87167 (=> (not res!45486) (not e!47288))))

(assert (=> b!87167 (= res!45486 (isBlack!0 (left!1651 (right!1654 (right!1654 t!48253)))))))

(declare-fun b!87168 () Bool)

(assert (=> b!87168 (= e!47288 (redNodesHaveBlackChildren!0 (right!1654 (right!1654 (right!1654 t!48253)))))))

(assert (= (and d!58065 (not res!45483)) b!87164))

(assert (= (and b!87166 res!45482) b!87163))

(assert (= (and b!87167 res!45486) b!87165))

(assert (= (and b!87165 res!45484) b!87162))

(assert (= (and b!87162 res!45485) b!87168))

(assert (= (and b!87164 c!21574) b!87166))

(assert (= (and b!87164 (not c!21574)) b!87167))

(declare-fun m!83240 () Bool)

(assert (=> b!87162 m!83240))

(declare-fun m!83242 () Bool)

(assert (=> b!87167 m!83242))

(declare-fun m!83244 () Bool)

(assert (=> b!87163 m!83244))

(declare-fun m!83246 () Bool)

(assert (=> b!87165 m!83246))

(assert (=> b!87168 m!83244))

(assert (=> b!87166 m!83240))

(assert (=> b!87037 d!58065))

(declare-fun d!58067 () Bool)

(declare-fun lt!20154 () Int)

(assert (=> d!58067 (>= lt!20154 0)))

(declare-fun e!47289 () Int)

(assert (=> d!58067 (= lt!20154 e!47289)))

(declare-fun c!21575 () Bool)

(assert (=> d!58067 (= c!21575 (is-Empty!191 (left!1651 lt!20124)))))

(assert (=> d!58067 (= (size!3 (left!1651 lt!20124)) lt!20154)))

(declare-fun b!87169 () Bool)

(assert (=> b!87169 (= e!47289 0)))

(declare-fun b!87170 () Bool)

(assert (=> b!87170 (= e!47289 (+ (+ (size!3 (left!1651 (left!1651 lt!20124))) 1) (size!3 (right!1654 (left!1651 lt!20124)))))))

(assert (= (and d!58067 c!21575) b!87169))

(assert (= (and d!58067 (not c!21575)) b!87170))

(declare-fun m!83248 () Bool)

(assert (=> b!87170 m!83248))

(declare-fun m!83250 () Bool)

(assert (=> b!87170 m!83250))

(assert (=> b!87060 d!58067))

(declare-fun d!58069 () Bool)

(declare-fun lt!20155 () Int)

(assert (=> d!58069 (>= lt!20155 0)))

(declare-fun e!47290 () Int)

(assert (=> d!58069 (= lt!20155 e!47290)))

(declare-fun c!21576 () Bool)

(assert (=> d!58069 (= c!21576 (is-Empty!191 (right!1654 lt!20124)))))

(assert (=> d!58069 (= (size!3 (right!1654 lt!20124)) lt!20155)))

(declare-fun b!87171 () Bool)

(assert (=> b!87171 (= e!47290 0)))

(declare-fun b!87172 () Bool)

(assert (=> b!87172 (= e!47290 (+ (+ (size!3 (left!1651 (right!1654 lt!20124))) 1) (size!3 (right!1654 (right!1654 lt!20124)))))))

(assert (= (and d!58069 c!21576) b!87171))

(assert (= (and d!58069 (not c!21576)) b!87172))

(declare-fun m!83252 () Bool)

(assert (=> b!87172 m!83252))

(declare-fun m!83254 () Bool)

(assert (=> b!87172 m!83254))

(assert (=> b!87060 d!58069))

(declare-fun b!87174 () Bool)

(declare-fun e!47291 () Int)

(declare-fun lt!20156 () Int)

(assert (=> b!87174 (= e!47291 (ite (and (is-Node!152 (left!1651 (right!1654 t!48253))) (is-Black!10 (color!41 (left!1651 (right!1654 t!48253))))) (+ lt!20156 1) lt!20156))))

(assert (=> b!87174 (= lt!20156 (blackHeight!0 (left!1651 (left!1651 (right!1654 t!48253)))))))

(declare-fun d!58071 () Bool)

(declare-fun c!21577 () Bool)

(assert (=> d!58071 (= c!21577 (is-Empty!191 (left!1651 (right!1654 t!48253))))))

(assert (=> d!58071 (= (blackHeight!0 (left!1651 (right!1654 t!48253))) e!47291)))

(declare-fun b!87173 () Bool)

(assert (=> b!87173 (= e!47291 1)))

(assert (= (and d!58071 c!21577) b!87173))

(assert (= (and d!58071 (not c!21577)) b!87174))

(declare-fun m!83256 () Bool)

(assert (=> b!87174 m!83256))

(assert (=> b!86994 d!58071))

(declare-fun b!87176 () Bool)

(declare-fun e!47292 () Int)

(declare-fun lt!20157 () Int)

(assert (=> b!87176 (= e!47292 (ite (and (is-Node!152 (right!1654 (right!1654 t!48253))) (is-Black!10 (color!41 (right!1654 (right!1654 t!48253))))) (+ lt!20157 1) lt!20157))))

(assert (=> b!87176 (= lt!20157 (blackHeight!0 (left!1651 (right!1654 (right!1654 t!48253)))))))

(declare-fun d!58073 () Bool)

(declare-fun c!21578 () Bool)

(assert (=> d!58073 (= c!21578 (is-Empty!191 (right!1654 (right!1654 t!48253))))))

(assert (=> d!58073 (= (blackHeight!0 (right!1654 (right!1654 t!48253))) e!47292)))

(declare-fun b!87175 () Bool)

(assert (=> b!87175 (= e!47292 1)))

(assert (= (and d!58073 c!21578) b!87175))

(assert (= (and d!58073 (not c!21578)) b!87176))

(declare-fun m!83258 () Bool)

(assert (=> b!87176 m!83258))

(assert (=> b!86994 d!58073))

(assert (=> b!87032 d!58065))

(declare-fun d!58075 () Bool)

(declare-fun c!21579 () Bool)

(assert (=> d!58075 (= c!21579 (is-Empty!191 (left!1651 (left!1651 t!48253))))))

(declare-fun e!47293 () (Set Int))

(assert (=> d!58075 (= (content!8 (left!1651 (left!1651 t!48253))) e!47293)))

(declare-fun b!87177 () Bool)

(assert (=> b!87177 (= e!47293 (as emptyset (Set Int)))))

(declare-fun b!87178 () Bool)

(assert (=> b!87178 (= e!47293 (union (union (content!8 (left!1651 (left!1651 (left!1651 t!48253)))) (insert (value!6798 (left!1651 (left!1651 t!48253))) (as emptyset (Set Int)))) (content!8 (right!1654 (left!1651 (left!1651 t!48253))))))))

(assert (= (and d!58075 c!21579) b!87177))

(assert (= (and d!58075 (not c!21579)) b!87178))

(declare-fun m!83260 () Bool)

(assert (=> b!87178 m!83260))

(declare-fun m!83262 () Bool)

(assert (=> b!87178 m!83262))

(declare-fun m!83264 () Bool)

(assert (=> b!87178 m!83264))

(assert (=> b!87084 d!58075))

(declare-fun d!58077 () Bool)

(declare-fun c!21580 () Bool)

(assert (=> d!58077 (= c!21580 (is-Empty!191 (right!1654 (left!1651 t!48253))))))

(declare-fun e!47294 () (Set Int))

(assert (=> d!58077 (= (content!8 (right!1654 (left!1651 t!48253))) e!47294)))

(declare-fun b!87179 () Bool)

(assert (=> b!87179 (= e!47294 (as emptyset (Set Int)))))

(declare-fun b!87180 () Bool)

(assert (=> b!87180 (= e!47294 (union (union (content!8 (left!1651 (right!1654 (left!1651 t!48253)))) (insert (value!6798 (right!1654 (left!1651 t!48253))) (as emptyset (Set Int)))) (content!8 (right!1654 (right!1654 (left!1651 t!48253))))))))

(assert (= (and d!58077 c!21580) b!87179))

(assert (= (and d!58077 (not c!21580)) b!87180))

(declare-fun m!83266 () Bool)

(assert (=> b!87180 m!83266))

(declare-fun m!83268 () Bool)

(assert (=> b!87180 m!83268))

(declare-fun m!83270 () Bool)

(assert (=> b!87180 m!83270))

(assert (=> b!87084 d!58077))

(declare-fun b!87181 () Bool)

(declare-fun res!45493 () Bool)

(declare-fun e!47295 () Bool)

(assert (=> b!87181 (=> (not res!45493) (not e!47295))))

(declare-fun lt!20161 () Tree!108)

(assert (=> b!87181 (= res!45493 (redDescHaveBlackChildren!0 lt!20161))))

(declare-fun b!87182 () Bool)

(declare-fun e!47299 () Bool)

(assert (=> b!87182 (= e!47299 (blackBalanced!0 (ite lt!20133 (left!1651 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) (right!1654 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))))))))

(declare-fun b!87183 () Bool)

(declare-fun e!47296 () Tree!108)

(declare-fun res!45487 () Tree!108)

(assert (=> b!87183 (= e!47296 res!45487)))

(assert (=> b!87183 true))

(declare-fun lt!20158 () Bool)

(declare-fun b!87184 () Bool)

(assert (=> b!87184 (= e!47296 (ins!0 x!30388 (ite lt!20158 (left!1651 (ite lt!20133 (left!1651 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) (right!1654 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))))) (right!1654 (ite lt!20133 (left!1651 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) (right!1654 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))))))))))

(declare-fun b!87185 () Bool)

(declare-fun lt!20160 () Tree!108)

(declare-fun lt!20162 () Bool)

(declare-fun e!47297 () Tree!108)

(assert (=> b!87185 (= e!47297 (balance!0 (color!41 (ite lt!20133 (left!1651 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) (right!1654 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))))) (ite lt!20162 lt!20160 (left!1651 (ite lt!20133 (left!1651 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) (right!1654 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253))))))) (value!6798 (ite lt!20133 (left!1651 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) (right!1654 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))))) (ite lt!20162 (right!1654 (ite lt!20133 (left!1651 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) (right!1654 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))))) lt!20160)))))

(declare-fun b!87186 () Bool)

(declare-fun e!47298 () Tree!108)

(assert (=> b!87186 (= e!47298 (Node!152 Red!10 Empty!191 x!30388 Empty!191))))

(declare-fun lt!20159 () Tree!108)

(declare-fun b!87187 () Bool)

(assert (=> b!87187 (= e!47298 (ite lt!20158 lt!20159 (ite (= x!30388 (value!6798 (ite lt!20133 (left!1651 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) (right!1654 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253))))))) (Node!152 (color!41 (ite lt!20133 (left!1651 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) (right!1654 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))))) (left!1651 (ite lt!20133 (left!1651 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) (right!1654 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))))) (value!6798 (ite lt!20133 (left!1651 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) (right!1654 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))))) (right!1654 (ite lt!20133 (left!1651 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) (right!1654 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253))))))) lt!20159)))))

(assert (=> b!87187 (= lt!20159 e!47297)))

(declare-fun c!21581 () Bool)

(assert (=> b!87187 (= c!21581 (or lt!20162 (and (not lt!20158) (not (= x!30388 (value!6798 (ite lt!20133 (left!1651 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) (right!1654 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))))))))))))

(assert (=> b!87187 (= lt!20162 lt!20158)))

(assert (=> b!87187 (= lt!20160 e!47296)))

(declare-fun c!21583 () Bool)

(assert (=> b!87187 (= c!21583 (or lt!20158 (not (= x!30388 (value!6798 (ite lt!20133 (left!1651 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) (right!1654 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253))))))))))))

(assert (=> b!87187 (= lt!20158 (< x!30388 (value!6798 (ite lt!20133 (left!1651 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) (right!1654 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253))))))))))

(declare-fun d!58079 () Bool)

(assert (=> d!58079 e!47295))

(declare-fun res!45488 () Bool)

(assert (=> d!58079 (=> (not res!45488) (not e!47295))))

(assert (=> d!58079 (= res!45488 (= (content!8 lt!20161) (union (content!8 (ite lt!20133 (left!1651 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) (right!1654 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))))) (insert x!30388 (as emptyset (Set Int))))))))

(assert (=> d!58079 (= lt!20161 e!47298)))

(declare-fun c!21582 () Bool)

(assert (=> d!58079 (= c!21582 (is-Empty!191 (ite lt!20133 (left!1651 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) (right!1654 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))))))))

(assert (=> d!58079 e!47299))

(declare-fun res!45490 () Bool)

(assert (=> d!58079 (=> (not res!45490) (not e!47299))))

(assert (=> d!58079 (= res!45490 (redNodesHaveBlackChildren!0 (ite lt!20133 (left!1651 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) (right!1654 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))))))))

(assert (=> d!58079 (= (ins!0 x!30388 (ite lt!20133 (left!1651 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) (right!1654 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))))) lt!20161)))

(declare-fun b!87188 () Bool)

(assert (=> b!87188 (= e!47295 (blackBalanced!0 lt!20161))))

(declare-fun b!87189 () Bool)

(declare-fun res!45491 () Bool)

(assert (=> b!87189 (=> (not res!45491) (not e!47295))))

(assert (=> b!87189 (= res!45491 (<= (size!3 lt!20161) (+ (size!3 (ite lt!20133 (left!1651 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) (right!1654 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))))) 1)))))

(declare-fun b!87190 () Bool)

(declare-fun res!45492 () Tree!108)

(assert (=> b!87190 (= e!47297 res!45492)))

(assert (=> b!87190 true))

(assert (=> b!87190 true))

(declare-fun b!87191 () Bool)

(declare-fun res!45489 () Bool)

(assert (=> b!87191 (=> (not res!45489) (not e!47295))))

(assert (=> b!87191 (= res!45489 (<= (size!3 (ite lt!20133 (left!1651 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) (right!1654 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))))) (size!3 lt!20161)))))

(assert (= (and d!58079 res!45490) b!87182))

(assert (= (and b!87187 c!21583) b!87184))

(assert (= (and b!87187 (not c!21583)) b!87183))

(assert (= (and b!87187 c!21581) b!87185))

(assert (= (and b!87187 (not c!21581)) b!87190))

(assert (= (and d!58079 c!21582) b!87186))

(assert (= (and d!58079 (not c!21582)) b!87187))

(assert (= (and d!58079 res!45488) b!87191))

(assert (= (and b!87191 res!45489) b!87189))

(assert (= (and b!87189 res!45491) b!87181))

(assert (= (and b!87181 res!45493) b!87188))

(declare-fun m!83272 () Bool)

(assert (=> b!87182 m!83272))

(declare-fun m!83274 () Bool)

(assert (=> b!87184 m!83274))

(declare-fun m!83276 () Bool)

(assert (=> d!58079 m!83276))

(declare-fun m!83278 () Bool)

(assert (=> d!58079 m!83278))

(assert (=> d!58079 m!82890))

(declare-fun m!83280 () Bool)

(assert (=> d!58079 m!83280))

(declare-fun m!83282 () Bool)

(assert (=> b!87189 m!83282))

(declare-fun m!83284 () Bool)

(assert (=> b!87189 m!83284))

(declare-fun m!83286 () Bool)

(assert (=> b!87181 m!83286))

(declare-fun m!83288 () Bool)

(assert (=> b!87188 m!83288))

(assert (=> b!87191 m!83284))

(assert (=> b!87191 m!83282))

(declare-fun m!83290 () Bool)

(assert (=> b!87185 m!83290))

(assert (=> b!87044 d!58079))

(declare-fun d!58081 () Bool)

(assert (=> d!58081 (= (isBlack!0 (left!1651 (left!1651 t!48253))) (or (is-Empty!191 (left!1651 (left!1651 t!48253))) (and (is-Node!152 (left!1651 (left!1651 t!48253))) (is-Black!10 (color!41 (left!1651 (left!1651 t!48253)))))))))

(assert (=> b!87057 d!58081))

(assert (=> b!87068 d!58053))

(declare-fun d!58083 () Bool)

(declare-fun c!21584 () Bool)

(assert (=> d!58083 (= c!21584 (is-Empty!191 (left!1651 lt!20110)))))

(declare-fun e!47300 () (Set Int))

(assert (=> d!58083 (= (content!8 (left!1651 lt!20110)) e!47300)))

(declare-fun b!87192 () Bool)

(assert (=> b!87192 (= e!47300 (as emptyset (Set Int)))))

(declare-fun b!87193 () Bool)

(assert (=> b!87193 (= e!47300 (union (union (content!8 (left!1651 (left!1651 lt!20110))) (insert (value!6798 (left!1651 lt!20110)) (as emptyset (Set Int)))) (content!8 (right!1654 (left!1651 lt!20110)))))))

(assert (= (and d!58083 c!21584) b!87192))

(assert (= (and d!58083 (not c!21584)) b!87193))

(declare-fun m!83292 () Bool)

(assert (=> b!87193 m!83292))

(declare-fun m!83294 () Bool)

(assert (=> b!87193 m!83294))

(declare-fun m!83296 () Bool)

(assert (=> b!87193 m!83296))

(assert (=> b!87004 d!58083))

(declare-fun d!58085 () Bool)

(declare-fun c!21585 () Bool)

(assert (=> d!58085 (= c!21585 (is-Empty!191 (right!1654 lt!20110)))))

(declare-fun e!47301 () (Set Int))

(assert (=> d!58085 (= (content!8 (right!1654 lt!20110)) e!47301)))

(declare-fun b!87194 () Bool)

(assert (=> b!87194 (= e!47301 (as emptyset (Set Int)))))

(declare-fun b!87195 () Bool)

(assert (=> b!87195 (= e!47301 (union (union (content!8 (left!1651 (right!1654 lt!20110))) (insert (value!6798 (right!1654 lt!20110)) (as emptyset (Set Int)))) (content!8 (right!1654 (right!1654 lt!20110)))))))

(assert (= (and d!58085 c!21585) b!87194))

(assert (= (and d!58085 (not c!21585)) b!87195))

(declare-fun m!83298 () Bool)

(assert (=> b!87195 m!83298))

(declare-fun m!83300 () Bool)

(assert (=> b!87195 m!83300))

(declare-fun m!83302 () Bool)

(assert (=> b!87195 m!83302))

(assert (=> b!87004 d!58085))

(assert (=> b!87070 d!58039))

(declare-fun d!58087 () Bool)

(assert (=> d!58087 (= (isBlack!0 (right!1654 (right!1654 res!44634))) (or (is-Empty!191 (right!1654 (right!1654 res!44634))) (and (is-Node!152 (right!1654 (right!1654 res!44634))) (is-Black!10 (color!41 (right!1654 (right!1654 res!44634)))))))))

(assert (=> b!86999 d!58087))

(declare-fun d!58089 () Bool)

(assert (=> d!58089 (= (isBlack!0 (left!1651 (left!1651 res!44634))) (or (is-Empty!191 (left!1651 (left!1651 res!44634))) (and (is-Node!152 (left!1651 (left!1651 res!44634))) (is-Black!10 (color!41 (left!1651 (left!1651 res!44634)))))))))

(assert (=> b!87015 d!58089))

(declare-fun d!58091 () Bool)

(declare-fun lt!20163 () Int)

(assert (=> d!58091 (>= lt!20163 0)))

(declare-fun e!47302 () Int)

(assert (=> d!58091 (= lt!20163 e!47302)))

(declare-fun c!21586 () Bool)

(assert (=> d!58091 (= c!21586 (is-Empty!191 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))))))

(assert (=> d!58091 (= (size!3 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) lt!20163)))

(declare-fun b!87196 () Bool)

(assert (=> b!87196 (= e!47302 0)))

(declare-fun b!87197 () Bool)

(assert (=> b!87197 (= e!47302 (+ (+ (size!3 (left!1651 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253))))) 1) (size!3 (right!1654 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))))))))

(assert (= (and d!58091 c!21586) b!87196))

(assert (= (and d!58091 (not c!21586)) b!87197))

(declare-fun m!83304 () Bool)

(assert (=> b!87197 m!83304))

(declare-fun m!83306 () Bool)

(assert (=> b!87197 m!83306))

(assert (=> b!87051 d!58091))

(declare-fun d!58093 () Bool)

(declare-fun lt!20164 () Int)

(assert (=> d!58093 (>= lt!20164 0)))

(declare-fun e!47303 () Int)

(assert (=> d!58093 (= lt!20164 e!47303)))

(declare-fun c!21587 () Bool)

(assert (=> d!58093 (= c!21587 (is-Empty!191 lt!20136))))

(assert (=> d!58093 (= (size!3 lt!20136) lt!20164)))

(declare-fun b!87198 () Bool)

(assert (=> b!87198 (= e!47303 0)))

(declare-fun b!87199 () Bool)

(assert (=> b!87199 (= e!47303 (+ (+ (size!3 (left!1651 lt!20136)) 1) (size!3 (right!1654 lt!20136))))))

(assert (= (and d!58093 c!21587) b!87198))

(assert (= (and d!58093 (not c!21587)) b!87199))

(declare-fun m!83308 () Bool)

(assert (=> b!87199 m!83308))

(declare-fun m!83310 () Bool)

(assert (=> b!87199 m!83310))

(assert (=> b!87051 d!58093))

(assert (=> b!87011 d!58037))

(declare-fun b!87200 () Bool)

(declare-fun res!45497 () Bool)

(declare-fun e!47307 () Bool)

(assert (=> b!87200 (=> (not res!45497) (not e!47307))))

(assert (=> b!87200 (= res!45497 (redNodesHaveBlackChildren!0 (left!1651 (left!1651 (right!1654 res!44634)))))))

(declare-fun b!87201 () Bool)

(declare-fun e!47305 () Bool)

(assert (=> b!87201 (= e!47305 (redNodesHaveBlackChildren!0 (right!1654 (left!1651 (right!1654 res!44634)))))))

(declare-fun b!87202 () Bool)

(declare-fun e!47304 () Bool)

(declare-fun e!47306 () Bool)

(assert (=> b!87202 (= e!47304 e!47306)))

(declare-fun c!21588 () Bool)

(assert (=> b!87202 (= c!21588 (and (is-Node!152 (left!1651 (right!1654 res!44634))) (is-Black!10 (color!41 (left!1651 (right!1654 res!44634))))))))

(declare-fun d!58095 () Bool)

(declare-fun res!45495 () Bool)

(assert (=> d!58095 (=> res!45495 e!47304)))

(assert (=> d!58095 (= res!45495 (is-Empty!191 (left!1651 (right!1654 res!44634))))))

(assert (=> d!58095 (= (redNodesHaveBlackChildren!0 (left!1651 (right!1654 res!44634))) e!47304)))

(declare-fun b!87203 () Bool)

(declare-fun res!45496 () Bool)

(assert (=> b!87203 (=> (not res!45496) (not e!47307))))

(assert (=> b!87203 (= res!45496 (isBlack!0 (right!1654 (left!1651 (right!1654 res!44634)))))))

(declare-fun b!87204 () Bool)

(assert (=> b!87204 (= e!47306 e!47305)))

(declare-fun res!45494 () Bool)

(assert (=> b!87204 (=> (not res!45494) (not e!47305))))

(assert (=> b!87204 (= res!45494 (redNodesHaveBlackChildren!0 (left!1651 (left!1651 (right!1654 res!44634)))))))

(declare-fun b!87205 () Bool)

(assert (=> b!87205 (= e!47306 e!47307)))

(declare-fun res!45498 () Bool)

(assert (=> b!87205 (=> (not res!45498) (not e!47307))))

(assert (=> b!87205 (= res!45498 (isBlack!0 (left!1651 (left!1651 (right!1654 res!44634)))))))

(declare-fun b!87206 () Bool)

(assert (=> b!87206 (= e!47307 (redNodesHaveBlackChildren!0 (right!1654 (left!1651 (right!1654 res!44634)))))))

(assert (= (and d!58095 (not res!45495)) b!87202))

(assert (= (and b!87204 res!45494) b!87201))

(assert (= (and b!87205 res!45498) b!87203))

(assert (= (and b!87203 res!45496) b!87200))

(assert (= (and b!87200 res!45497) b!87206))

(assert (= (and b!87202 c!21588) b!87204))

(assert (= (and b!87202 (not c!21588)) b!87205))

(declare-fun m!83312 () Bool)

(assert (=> b!87200 m!83312))

(declare-fun m!83314 () Bool)

(assert (=> b!87205 m!83314))

(declare-fun m!83316 () Bool)

(assert (=> b!87201 m!83316))

(declare-fun m!83318 () Bool)

(assert (=> b!87203 m!83318))

(assert (=> b!87206 m!83316))

(assert (=> b!87204 m!83312))

(assert (=> b!86996 d!58095))

(declare-fun d!58097 () Bool)

(declare-fun res!45501 () Bool)

(declare-fun e!47308 () Bool)

(assert (=> d!58097 (=> res!45501 e!47308)))

(assert (=> d!58097 (= res!45501 (not (is-Node!152 (right!1654 (right!1654 t!48253)))))))

(assert (=> d!58097 (= (blackBalanced!0 (right!1654 (right!1654 t!48253))) e!47308)))

(declare-fun b!87207 () Bool)

(declare-fun e!47309 () Bool)

(assert (=> b!87207 (= e!47308 e!47309)))

(declare-fun res!45499 () Bool)

(assert (=> b!87207 (=> (not res!45499) (not e!47309))))

(assert (=> b!87207 (= res!45499 (blackBalanced!0 (left!1651 (right!1654 (right!1654 t!48253)))))))

(declare-fun b!87208 () Bool)

(declare-fun res!45500 () Bool)

(assert (=> b!87208 (=> (not res!45500) (not e!47309))))

(assert (=> b!87208 (= res!45500 (blackBalanced!0 (right!1654 (right!1654 (right!1654 t!48253)))))))

(declare-fun b!87209 () Bool)

(assert (=> b!87209 (= e!47309 (= (blackHeight!0 (left!1651 (right!1654 (right!1654 t!48253)))) (blackHeight!0 (right!1654 (right!1654 (right!1654 t!48253))))))))

(assert (= (and d!58097 (not res!45501)) b!87207))

(assert (= (and b!87207 res!45499) b!87208))

(assert (= (and b!87208 res!45500) b!87209))

(declare-fun m!83320 () Bool)

(assert (=> b!87207 m!83320))

(declare-fun m!83322 () Bool)

(assert (=> b!87208 m!83322))

(assert (=> b!87209 m!83258))

(declare-fun m!83324 () Bool)

(assert (=> b!87209 m!83324))

(assert (=> b!86993 d!58097))

(declare-fun b!87211 () Bool)

(declare-fun e!47310 () Int)

(declare-fun lt!20165 () Int)

(assert (=> b!87211 (= e!47310 (ite (and (is-Node!152 (left!1651 lt!20124)) (is-Black!10 (color!41 (left!1651 lt!20124)))) (+ lt!20165 1) lt!20165))))

(assert (=> b!87211 (= lt!20165 (blackHeight!0 (left!1651 (left!1651 lt!20124))))))

(declare-fun d!58099 () Bool)

(declare-fun c!21589 () Bool)

(assert (=> d!58099 (= c!21589 (is-Empty!191 (left!1651 lt!20124)))))

(assert (=> d!58099 (= (blackHeight!0 (left!1651 lt!20124)) e!47310)))

(declare-fun b!87210 () Bool)

(assert (=> b!87210 (= e!47310 1)))

(assert (= (and d!58099 c!21589) b!87210))

(assert (= (and d!58099 (not c!21589)) b!87211))

(declare-fun m!83326 () Bool)

(assert (=> b!87211 m!83326))

(assert (=> b!87019 d!58099))

(declare-fun b!87213 () Bool)

(declare-fun e!47311 () Int)

(declare-fun lt!20166 () Int)

(assert (=> b!87213 (= e!47311 (ite (and (is-Node!152 (right!1654 lt!20124)) (is-Black!10 (color!41 (right!1654 lt!20124)))) (+ lt!20166 1) lt!20166))))

(assert (=> b!87213 (= lt!20166 (blackHeight!0 (left!1651 (right!1654 lt!20124))))))

(declare-fun d!58101 () Bool)

(declare-fun c!21590 () Bool)

(assert (=> d!58101 (= c!21590 (is-Empty!191 (right!1654 lt!20124)))))

(assert (=> d!58101 (= (blackHeight!0 (right!1654 lt!20124)) e!47311)))

(declare-fun b!87212 () Bool)

(assert (=> b!87212 (= e!47311 1)))

(assert (= (and d!58101 c!21590) b!87212))

(assert (= (and d!58101 (not c!21590)) b!87213))

(declare-fun m!83328 () Bool)

(assert (=> b!87213 m!83328))

(assert (=> b!87019 d!58101))

(assert (=> b!87072 d!58071))

(declare-fun b!87214 () Bool)

(declare-fun res!45505 () Bool)

(declare-fun e!47315 () Bool)

(assert (=> b!87214 (=> (not res!45505) (not e!47315))))

(assert (=> b!87214 (= res!45505 (redNodesHaveBlackChildren!0 (left!1651 (right!1654 (right!1654 res!44634)))))))

(declare-fun b!87215 () Bool)

(declare-fun e!47313 () Bool)

(assert (=> b!87215 (= e!47313 (redNodesHaveBlackChildren!0 (right!1654 (right!1654 (right!1654 res!44634)))))))

(declare-fun b!87216 () Bool)

(declare-fun e!47312 () Bool)

(declare-fun e!47314 () Bool)

(assert (=> b!87216 (= e!47312 e!47314)))

(declare-fun c!21591 () Bool)

(assert (=> b!87216 (= c!21591 (and (is-Node!152 (right!1654 (right!1654 res!44634))) (is-Black!10 (color!41 (right!1654 (right!1654 res!44634))))))))

(declare-fun d!58103 () Bool)

(declare-fun res!45503 () Bool)

(assert (=> d!58103 (=> res!45503 e!47312)))

(assert (=> d!58103 (= res!45503 (is-Empty!191 (right!1654 (right!1654 res!44634))))))

(assert (=> d!58103 (= (redNodesHaveBlackChildren!0 (right!1654 (right!1654 res!44634))) e!47312)))

(declare-fun b!87217 () Bool)

(declare-fun res!45504 () Bool)

(assert (=> b!87217 (=> (not res!45504) (not e!47315))))

(assert (=> b!87217 (= res!45504 (isBlack!0 (right!1654 (right!1654 (right!1654 res!44634)))))))

(declare-fun b!87218 () Bool)

(assert (=> b!87218 (= e!47314 e!47313)))

(declare-fun res!45502 () Bool)

(assert (=> b!87218 (=> (not res!45502) (not e!47313))))

(assert (=> b!87218 (= res!45502 (redNodesHaveBlackChildren!0 (left!1651 (right!1654 (right!1654 res!44634)))))))

(declare-fun b!87219 () Bool)

(assert (=> b!87219 (= e!47314 e!47315)))

(declare-fun res!45506 () Bool)

(assert (=> b!87219 (=> (not res!45506) (not e!47315))))

(assert (=> b!87219 (= res!45506 (isBlack!0 (left!1651 (right!1654 (right!1654 res!44634)))))))

(declare-fun b!87220 () Bool)

(assert (=> b!87220 (= e!47315 (redNodesHaveBlackChildren!0 (right!1654 (right!1654 (right!1654 res!44634)))))))

(assert (= (and d!58103 (not res!45503)) b!87216))

(assert (= (and b!87218 res!45502) b!87215))

(assert (= (and b!87219 res!45506) b!87217))

(assert (= (and b!87217 res!45504) b!87214))

(assert (= (and b!87214 res!45505) b!87220))

(assert (= (and b!87216 c!21591) b!87218))

(assert (= (and b!87216 (not c!21591)) b!87219))

(declare-fun m!83330 () Bool)

(assert (=> b!87214 m!83330))

(declare-fun m!83332 () Bool)

(assert (=> b!87219 m!83332))

(declare-fun m!83334 () Bool)

(assert (=> b!87215 m!83334))

(declare-fun m!83336 () Bool)

(assert (=> b!87217 m!83336))

(assert (=> b!87220 m!83334))

(assert (=> b!87218 m!83330))

(assert (=> b!87002 d!58103))

(declare-fun d!58105 () Bool)

(declare-fun res!45509 () Bool)

(declare-fun e!47316 () Bool)

(assert (=> d!58105 (=> res!45509 e!47316)))

(assert (=> d!58105 (= res!45509 (not (is-Node!152 (left!1651 (left!1651 t!48253)))))))

(assert (=> d!58105 (= (blackBalanced!0 (left!1651 (left!1651 t!48253))) e!47316)))

(declare-fun b!87221 () Bool)

(declare-fun e!47317 () Bool)

(assert (=> b!87221 (= e!47316 e!47317)))

(declare-fun res!45507 () Bool)

(assert (=> b!87221 (=> (not res!45507) (not e!47317))))

(assert (=> b!87221 (= res!45507 (blackBalanced!0 (left!1651 (left!1651 (left!1651 t!48253)))))))

(declare-fun b!87222 () Bool)

(declare-fun res!45508 () Bool)

(assert (=> b!87222 (=> (not res!45508) (not e!47317))))

(assert (=> b!87222 (= res!45508 (blackBalanced!0 (right!1654 (left!1651 (left!1651 t!48253)))))))

(declare-fun b!87223 () Bool)

(assert (=> b!87223 (= e!47317 (= (blackHeight!0 (left!1651 (left!1651 (left!1651 t!48253)))) (blackHeight!0 (right!1654 (left!1651 (left!1651 t!48253))))))))

(assert (= (and d!58105 (not res!45509)) b!87221))

(assert (= (and b!87221 res!45507) b!87222))

(assert (= (and b!87222 res!45508) b!87223))

(declare-fun m!83338 () Bool)

(assert (=> b!87221 m!83338))

(declare-fun m!83340 () Bool)

(assert (=> b!87222 m!83340))

(assert (=> b!87223 m!83190))

(declare-fun m!83342 () Bool)

(assert (=> b!87223 m!83342))

(assert (=> b!87007 d!58105))

(declare-fun d!58107 () Bool)

(declare-fun e!47318 () Bool)

(assert (=> d!58107 e!47318))

(declare-fun res!45510 () Bool)

(assert (=> d!58107 (=> (not res!45510) (not e!47318))))

(declare-fun lt!20167 () Tree!108)

(assert (=> d!58107 (= res!45510 (is-Node!152 lt!20167))))

(assert (=> d!58107 (= lt!20167 (ite (and (is-Black!10 (color!41 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253))))) (is-Node!152 (ite lt!20137 lt!20135 (left!1651 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))))) (is-Red!10 (color!41 (ite lt!20137 lt!20135 (left!1651 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253))))))) (is-Node!152 (left!1651 (ite lt!20137 lt!20135 (left!1651 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253))))))) (is-Red!10 (color!41 (left!1651 (ite lt!20137 lt!20135 (left!1651 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253))))))))) (Node!152 Red!10 (Node!152 Black!10 (left!1651 (left!1651 (ite lt!20137 lt!20135 (left!1651 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253))))))) (value!6798 (left!1651 (ite lt!20137 lt!20135 (left!1651 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253))))))) (right!1654 (left!1651 (ite lt!20137 lt!20135 (left!1651 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))))))) (value!6798 (ite lt!20137 lt!20135 (left!1651 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))))) (Node!152 Black!10 (right!1654 (ite lt!20137 lt!20135 (left!1651 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))))) (value!6798 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) (ite lt!20137 (right!1654 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) lt!20135))) (ite (and (is-Black!10 (color!41 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253))))) (is-Node!152 (ite lt!20137 lt!20135 (left!1651 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))))) (is-Red!10 (color!41 (ite lt!20137 lt!20135 (left!1651 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253))))))) (is-Node!152 (right!1654 (ite lt!20137 lt!20135 (left!1651 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253))))))) (is-Red!10 (color!41 (right!1654 (ite lt!20137 lt!20135 (left!1651 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253))))))))) (Node!152 Red!10 (Node!152 Black!10 (left!1651 (ite lt!20137 lt!20135 (left!1651 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))))) (value!6798 (ite lt!20137 lt!20135 (left!1651 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))))) (left!1651 (right!1654 (ite lt!20137 lt!20135 (left!1651 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))))))) (value!6798 (right!1654 (ite lt!20137 lt!20135 (left!1651 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253))))))) (Node!152 Black!10 (right!1654 (right!1654 (ite lt!20137 lt!20135 (left!1651 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253))))))) (value!6798 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) (ite lt!20137 (right!1654 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) lt!20135))) (ite (and (is-Black!10 (color!41 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253))))) (is-Node!152 (ite lt!20137 (right!1654 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) lt!20135)) (is-Red!10 (color!41 (ite lt!20137 (right!1654 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) lt!20135))) (is-Node!152 (left!1651 (ite lt!20137 (right!1654 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) lt!20135))) (is-Red!10 (color!41 (left!1651 (ite lt!20137 (right!1654 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) lt!20135))))) (Node!152 Red!10 (Node!152 Black!10 (ite lt!20137 lt!20135 (left!1651 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253))))) (value!6798 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) (left!1651 (left!1651 (ite lt!20137 (right!1654 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) lt!20135)))) (value!6798 (left!1651 (ite lt!20137 (right!1654 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) lt!20135))) (Node!152 Black!10 (right!1654 (left!1651 (ite lt!20137 (right!1654 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) lt!20135))) (value!6798 (ite lt!20137 (right!1654 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) lt!20135)) (right!1654 (ite lt!20137 (right!1654 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) lt!20135)))) (ite (and (is-Black!10 (color!41 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253))))) (is-Node!152 (ite lt!20137 (right!1654 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) lt!20135)) (is-Red!10 (color!41 (ite lt!20137 (right!1654 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) lt!20135))) (is-Node!152 (right!1654 (ite lt!20137 (right!1654 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) lt!20135))) (is-Red!10 (color!41 (right!1654 (ite lt!20137 (right!1654 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) lt!20135))))) (Node!152 Red!10 (Node!152 Black!10 (ite lt!20137 lt!20135 (left!1651 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253))))) (value!6798 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) (left!1651 (ite lt!20137 (right!1654 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) lt!20135))) (value!6798 (ite lt!20137 (right!1654 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) lt!20135)) (Node!152 Black!10 (left!1651 (right!1654 (ite lt!20137 (right!1654 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) lt!20135))) (value!6798 (right!1654 (ite lt!20137 (right!1654 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) lt!20135))) (right!1654 (right!1654 (ite lt!20137 (right!1654 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) lt!20135))))) (Node!152 (color!41 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) (ite lt!20137 lt!20135 (left!1651 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253))))) (value!6798 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) (ite lt!20137 (right!1654 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) lt!20135)))))))))

(assert (=> d!58107 (= (balance!0 (color!41 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) (ite lt!20137 lt!20135 (left!1651 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253))))) (value!6798 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) (ite lt!20137 (right!1654 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) lt!20135)) lt!20167)))

(declare-fun b!87224 () Bool)

(assert (=> b!87224 (= e!47318 (= (content!8 lt!20167) (content!8 (Node!152 (color!41 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) (ite lt!20137 lt!20135 (left!1651 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253))))) (value!6798 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) (ite lt!20137 (right!1654 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) lt!20135)))))))

(assert (= (and d!58107 res!45510) b!87224))

(declare-fun m!83344 () Bool)

(assert (=> b!87224 m!83344))

(declare-fun m!83346 () Bool)

(assert (=> b!87224 m!83346))

(assert (=> b!87045 d!58107))

(declare-fun d!58109 () Bool)

(declare-fun c!21592 () Bool)

(assert (=> d!58109 (= c!21592 (is-Empty!191 (left!1651 (right!1654 t!48253))))))

(declare-fun e!47319 () (Set Int))

(assert (=> d!58109 (= (content!8 (left!1651 (right!1654 t!48253))) e!47319)))

(declare-fun b!87225 () Bool)

(assert (=> b!87225 (= e!47319 (as emptyset (Set Int)))))

(declare-fun b!87226 () Bool)

(assert (=> b!87226 (= e!47319 (union (union (content!8 (left!1651 (left!1651 (right!1654 t!48253)))) (insert (value!6798 (left!1651 (right!1654 t!48253))) (as emptyset (Set Int)))) (content!8 (right!1654 (left!1651 (right!1654 t!48253))))))))

(assert (= (and d!58109 c!21592) b!87225))

(assert (= (and d!58109 (not c!21592)) b!87226))

(declare-fun m!83348 () Bool)

(assert (=> b!87226 m!83348))

(declare-fun m!83350 () Bool)

(assert (=> b!87226 m!83350))

(declare-fun m!83352 () Bool)

(assert (=> b!87226 m!83352))

(assert (=> b!87030 d!58109))

(declare-fun d!58111 () Bool)

(declare-fun c!21593 () Bool)

(assert (=> d!58111 (= c!21593 (is-Empty!191 (right!1654 (right!1654 t!48253))))))

(declare-fun e!47320 () (Set Int))

(assert (=> d!58111 (= (content!8 (right!1654 (right!1654 t!48253))) e!47320)))

(declare-fun b!87227 () Bool)

(assert (=> b!87227 (= e!47320 (as emptyset (Set Int)))))

(declare-fun b!87228 () Bool)

(assert (=> b!87228 (= e!47320 (union (union (content!8 (left!1651 (right!1654 (right!1654 t!48253)))) (insert (value!6798 (right!1654 (right!1654 t!48253))) (as emptyset (Set Int)))) (content!8 (right!1654 (right!1654 (right!1654 t!48253))))))))

(assert (= (and d!58111 c!21593) b!87227))

(assert (= (and d!58111 (not c!21593)) b!87228))

(declare-fun m!83354 () Bool)

(assert (=> b!87228 m!83354))

(declare-fun m!83356 () Bool)

(assert (=> b!87228 m!83356))

(declare-fun m!83358 () Bool)

(assert (=> b!87228 m!83358))

(assert (=> b!87030 d!58111))

(declare-fun d!58113 () Bool)

(declare-fun res!45513 () Bool)

(declare-fun e!47321 () Bool)

(assert (=> d!58113 (=> res!45513 e!47321)))

(assert (=> d!58113 (= res!45513 (not (is-Node!152 (right!1654 (right!1654 res!44634)))))))

(assert (=> d!58113 (= (blackBalanced!0 (right!1654 (right!1654 res!44634))) e!47321)))

(declare-fun b!87229 () Bool)

(declare-fun e!47322 () Bool)

(assert (=> b!87229 (= e!47321 e!47322)))

(declare-fun res!45511 () Bool)

(assert (=> b!87229 (=> (not res!45511) (not e!47322))))

(assert (=> b!87229 (= res!45511 (blackBalanced!0 (left!1651 (right!1654 (right!1654 res!44634)))))))

(declare-fun b!87230 () Bool)

(declare-fun res!45512 () Bool)

(assert (=> b!87230 (=> (not res!45512) (not e!47322))))

(assert (=> b!87230 (= res!45512 (blackBalanced!0 (right!1654 (right!1654 (right!1654 res!44634)))))))

(declare-fun b!87231 () Bool)

(assert (=> b!87231 (= e!47322 (= (blackHeight!0 (left!1651 (right!1654 (right!1654 res!44634)))) (blackHeight!0 (right!1654 (right!1654 (right!1654 res!44634))))))))

(assert (= (and d!58113 (not res!45513)) b!87229))

(assert (= (and b!87229 res!45511) b!87230))

(assert (= (and b!87230 res!45512) b!87231))

(declare-fun m!83360 () Bool)

(assert (=> b!87229 m!83360))

(declare-fun m!83362 () Bool)

(assert (=> b!87230 m!83362))

(assert (=> b!87231 m!83218))

(declare-fun m!83364 () Bool)

(assert (=> b!87231 m!83364))

(assert (=> b!87039 d!58113))

(assert (=> b!87022 d!58047))

(declare-fun b!87233 () Bool)

(declare-fun e!47323 () Int)

(declare-fun lt!20168 () Int)

(assert (=> b!87233 (= e!47323 (ite (and (is-Node!152 (right!1654 (left!1651 res!44634))) (is-Black!10 (color!41 (right!1654 (left!1651 res!44634))))) (+ lt!20168 1) lt!20168))))

(assert (=> b!87233 (= lt!20168 (blackHeight!0 (left!1651 (right!1654 (left!1651 res!44634)))))))

(declare-fun d!58115 () Bool)

(declare-fun c!21594 () Bool)

(assert (=> d!58115 (= c!21594 (is-Empty!191 (right!1654 (left!1651 res!44634))))))

(assert (=> d!58115 (= (blackHeight!0 (right!1654 (left!1651 res!44634))) e!47323)))

(declare-fun b!87232 () Bool)

(assert (=> b!87232 (= e!47323 1)))

(assert (= (and d!58115 c!21594) b!87232))

(assert (= (and d!58115 (not c!21594)) b!87233))

(declare-fun m!83366 () Bool)

(assert (=> b!87233 m!83366))

(assert (=> b!87022 d!58115))

(declare-fun d!58117 () Bool)

(declare-fun c!21595 () Bool)

(assert (=> d!58117 (= c!21595 (is-Empty!191 (left!1651 (Node!152 (color!41 t!48253) (left!1651 t!48253) (value!6798 t!48253) (ins!0 x!30388 (right!1654 t!48253))))))))

(declare-fun e!47324 () (Set Int))

(assert (=> d!58117 (= (content!8 (left!1651 (Node!152 (color!41 t!48253) (left!1651 t!48253) (value!6798 t!48253) (ins!0 x!30388 (right!1654 t!48253))))) e!47324)))

(declare-fun b!87234 () Bool)

(assert (=> b!87234 (= e!47324 (as emptyset (Set Int)))))

(declare-fun b!87235 () Bool)

(assert (=> b!87235 (= e!47324 (union (union (content!8 (left!1651 (left!1651 (Node!152 (color!41 t!48253) (left!1651 t!48253) (value!6798 t!48253) (ins!0 x!30388 (right!1654 t!48253)))))) (insert (value!6798 (left!1651 (Node!152 (color!41 t!48253) (left!1651 t!48253) (value!6798 t!48253) (ins!0 x!30388 (right!1654 t!48253))))) (as emptyset (Set Int)))) (content!8 (right!1654 (left!1651 (Node!152 (color!41 t!48253) (left!1651 t!48253) (value!6798 t!48253) (ins!0 x!30388 (right!1654 t!48253))))))))))

(assert (= (and d!58117 c!21595) b!87234))

(assert (= (and d!58117 (not c!21595)) b!87235))

(declare-fun m!83368 () Bool)

(assert (=> b!87235 m!83368))

(declare-fun m!83370 () Bool)

(assert (=> b!87235 m!83370))

(declare-fun m!83372 () Bool)

(assert (=> b!87235 m!83372))

(assert (=> b!87006 d!58117))

(declare-fun d!58119 () Bool)

(declare-fun c!21596 () Bool)

(assert (=> d!58119 (= c!21596 (is-Empty!191 (right!1654 (Node!152 (color!41 t!48253) (left!1651 t!48253) (value!6798 t!48253) (ins!0 x!30388 (right!1654 t!48253))))))))

(declare-fun e!47325 () (Set Int))

(assert (=> d!58119 (= (content!8 (right!1654 (Node!152 (color!41 t!48253) (left!1651 t!48253) (value!6798 t!48253) (ins!0 x!30388 (right!1654 t!48253))))) e!47325)))

(declare-fun b!87236 () Bool)

(assert (=> b!87236 (= e!47325 (as emptyset (Set Int)))))

(declare-fun b!87237 () Bool)

(assert (=> b!87237 (= e!47325 (union (union (content!8 (left!1651 (right!1654 (Node!152 (color!41 t!48253) (left!1651 t!48253) (value!6798 t!48253) (ins!0 x!30388 (right!1654 t!48253)))))) (insert (value!6798 (right!1654 (Node!152 (color!41 t!48253) (left!1651 t!48253) (value!6798 t!48253) (ins!0 x!30388 (right!1654 t!48253))))) (as emptyset (Set Int)))) (content!8 (right!1654 (right!1654 (Node!152 (color!41 t!48253) (left!1651 t!48253) (value!6798 t!48253) (ins!0 x!30388 (right!1654 t!48253))))))))))

(assert (= (and d!58119 c!21596) b!87236))

(assert (= (and d!58119 (not c!21596)) b!87237))

(declare-fun m!83374 () Bool)

(assert (=> b!87237 m!83374))

(declare-fun m!83376 () Bool)

(assert (=> b!87237 m!83376))

(declare-fun m!83378 () Bool)

(assert (=> b!87237 m!83378))

(assert (=> b!87006 d!58119))

(assert (=> b!87052 d!58019))

(declare-fun d!58121 () Bool)

(assert (=> d!58121 (= (isBlack!0 (right!1654 (right!1654 t!48253))) (or (is-Empty!191 (right!1654 (right!1654 t!48253))) (and (is-Node!152 (right!1654 (right!1654 t!48253))) (is-Black!10 (color!41 (right!1654 (right!1654 t!48253)))))))))

(assert (=> b!87034 d!58121))

(declare-fun d!58123 () Bool)

(declare-fun res!45516 () Bool)

(declare-fun e!47326 () Bool)

(assert (=> d!58123 (=> res!45516 e!47326)))

(assert (=> d!58123 (= res!45516 (not (is-Node!152 (right!1654 lt!20124))))))

(assert (=> d!58123 (= (blackBalanced!0 (right!1654 lt!20124)) e!47326)))

(declare-fun b!87238 () Bool)

(declare-fun e!47327 () Bool)

(assert (=> b!87238 (= e!47326 e!47327)))

(declare-fun res!45514 () Bool)

(assert (=> b!87238 (=> (not res!45514) (not e!47327))))

(assert (=> b!87238 (= res!45514 (blackBalanced!0 (left!1651 (right!1654 lt!20124))))))

(declare-fun b!87239 () Bool)

(declare-fun res!45515 () Bool)

(assert (=> b!87239 (=> (not res!45515) (not e!47327))))

(assert (=> b!87239 (= res!45515 (blackBalanced!0 (right!1654 (right!1654 lt!20124))))))

(declare-fun b!87240 () Bool)

(assert (=> b!87240 (= e!47327 (= (blackHeight!0 (left!1651 (right!1654 lt!20124))) (blackHeight!0 (right!1654 (right!1654 lt!20124)))))))

(assert (= (and d!58123 (not res!45516)) b!87238))

(assert (= (and b!87238 res!45514) b!87239))

(assert (= (and b!87239 res!45515) b!87240))

(declare-fun m!83380 () Bool)

(assert (=> b!87238 m!83380))

(declare-fun m!83382 () Bool)

(assert (=> b!87239 m!83382))

(assert (=> b!87240 m!83328))

(declare-fun m!83384 () Bool)

(assert (=> b!87240 m!83384))

(assert (=> b!87018 d!58123))

(declare-fun d!58125 () Bool)

(declare-fun res!45519 () Bool)

(declare-fun e!47328 () Bool)

(assert (=> d!58125 (=> res!45519 e!47328)))

(assert (=> d!58125 (= res!45519 (not (is-Node!152 (right!1654 (left!1651 res!44634)))))))

(assert (=> d!58125 (= (blackBalanced!0 (right!1654 (left!1651 res!44634))) e!47328)))

(declare-fun b!87241 () Bool)

(declare-fun e!47329 () Bool)

(assert (=> b!87241 (= e!47328 e!47329)))

(declare-fun res!45517 () Bool)

(assert (=> b!87241 (=> (not res!45517) (not e!47329))))

(assert (=> b!87241 (= res!45517 (blackBalanced!0 (left!1651 (right!1654 (left!1651 res!44634)))))))

(declare-fun b!87242 () Bool)

(declare-fun res!45518 () Bool)

(assert (=> b!87242 (=> (not res!45518) (not e!47329))))

(assert (=> b!87242 (= res!45518 (blackBalanced!0 (right!1654 (right!1654 (left!1651 res!44634)))))))

(declare-fun b!87243 () Bool)

(assert (=> b!87243 (= e!47329 (= (blackHeight!0 (left!1651 (right!1654 (left!1651 res!44634)))) (blackHeight!0 (right!1654 (right!1654 (left!1651 res!44634))))))))

(assert (= (and d!58125 (not res!45519)) b!87241))

(assert (= (and b!87241 res!45517) b!87242))

(assert (= (and b!87242 res!45518) b!87243))

(declare-fun m!83386 () Bool)

(assert (=> b!87241 m!83386))

(declare-fun m!83388 () Bool)

(assert (=> b!87242 m!83388))

(assert (=> b!87243 m!83366))

(declare-fun m!83390 () Bool)

(assert (=> b!87243 m!83390))

(assert (=> b!87021 d!58125))

(assert (=> b!87049 d!58093))

(assert (=> b!87049 d!58091))

(declare-fun d!58127 () Bool)

(declare-fun res!45522 () Bool)

(declare-fun e!47330 () Bool)

(assert (=> d!58127 (=> res!45522 e!47330)))

(assert (=> d!58127 (= res!45522 (not (is-Node!152 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253))))))))

(assert (=> d!58127 (= (blackBalanced!0 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) e!47330)))

(declare-fun b!87244 () Bool)

(declare-fun e!47331 () Bool)

(assert (=> b!87244 (= e!47330 e!47331)))

(declare-fun res!45520 () Bool)

(assert (=> b!87244 (=> (not res!45520) (not e!47331))))

(assert (=> b!87244 (= res!45520 (blackBalanced!0 (left!1651 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253))))))))

(declare-fun b!87245 () Bool)

(declare-fun res!45521 () Bool)

(assert (=> b!87245 (=> (not res!45521) (not e!47331))))

(assert (=> b!87245 (= res!45521 (blackBalanced!0 (right!1654 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253))))))))

(declare-fun b!87246 () Bool)

(assert (=> b!87246 (= e!47331 (= (blackHeight!0 (left!1651 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253))))) (blackHeight!0 (right!1654 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))))))))

(assert (= (and d!58127 (not res!45522)) b!87244))

(assert (= (and b!87244 res!45520) b!87245))

(assert (= (and b!87245 res!45521) b!87246))

(declare-fun m!83392 () Bool)

(assert (=> b!87244 m!83392))

(declare-fun m!83394 () Bool)

(assert (=> b!87245 m!83394))

(declare-fun m!83396 () Bool)

(assert (=> b!87246 m!83396))

(declare-fun m!83398 () Bool)

(assert (=> b!87246 m!83398))

(assert (=> b!87042 d!58127))

(assert (=> b!86997 d!58103))

(declare-fun d!58129 () Bool)

(declare-fun c!21597 () Bool)

(assert (=> d!58129 (= c!21597 (is-Empty!191 (left!1651 lt!20124)))))

(declare-fun e!47332 () (Set Int))

(assert (=> d!58129 (= (content!8 (left!1651 lt!20124)) e!47332)))

(declare-fun b!87247 () Bool)

(assert (=> b!87247 (= e!47332 (as emptyset (Set Int)))))

(declare-fun b!87248 () Bool)

(assert (=> b!87248 (= e!47332 (union (union (content!8 (left!1651 (left!1651 lt!20124))) (insert (value!6798 (left!1651 lt!20124)) (as emptyset (Set Int)))) (content!8 (right!1654 (left!1651 lt!20124)))))))

(assert (= (and d!58129 c!21597) b!87247))

(assert (= (and d!58129 (not c!21597)) b!87248))

(declare-fun m!83400 () Bool)

(assert (=> b!87248 m!83400))

(declare-fun m!83402 () Bool)

(assert (=> b!87248 m!83402))

(declare-fun m!83404 () Bool)

(assert (=> b!87248 m!83404))

(assert (=> b!87028 d!58129))

(declare-fun d!58131 () Bool)

(declare-fun c!21598 () Bool)

(assert (=> d!58131 (= c!21598 (is-Empty!191 (right!1654 lt!20124)))))

(declare-fun e!47333 () (Set Int))

(assert (=> d!58131 (= (content!8 (right!1654 lt!20124)) e!47333)))

(declare-fun b!87249 () Bool)

(assert (=> b!87249 (= e!47333 (as emptyset (Set Int)))))

(declare-fun b!87250 () Bool)

(assert (=> b!87250 (= e!47333 (union (union (content!8 (left!1651 (right!1654 lt!20124))) (insert (value!6798 (right!1654 lt!20124)) (as emptyset (Set Int)))) (content!8 (right!1654 (right!1654 lt!20124)))))))

(assert (= (and d!58131 c!21598) b!87249))

(assert (= (and d!58131 (not c!21598)) b!87250))

(declare-fun m!83406 () Bool)

(assert (=> b!87250 m!83406))

(declare-fun m!83408 () Bool)

(assert (=> b!87250 m!83408))

(declare-fun m!83410 () Bool)

(assert (=> b!87250 m!83410))

(assert (=> b!87028 d!58131))

(assert (=> b!87014 d!58057))

(declare-fun d!58133 () Bool)

(declare-fun lt!20169 () Int)

(assert (=> d!58133 (>= lt!20169 0)))

(declare-fun e!47334 () Int)

(assert (=> d!58133 (= lt!20169 e!47334)))

(declare-fun c!21599 () Bool)

(assert (=> d!58133 (= c!21599 (is-Empty!191 (left!1651 (right!1654 t!48253))))))

(assert (=> d!58133 (= (size!3 (left!1651 (right!1654 t!48253))) lt!20169)))

(declare-fun b!87251 () Bool)

(assert (=> b!87251 (= e!47334 0)))

(declare-fun b!87252 () Bool)

(assert (=> b!87252 (= e!47334 (+ (+ (size!3 (left!1651 (left!1651 (right!1654 t!48253)))) 1) (size!3 (right!1654 (left!1651 (right!1654 t!48253))))))))

(assert (= (and d!58133 c!21599) b!87251))

(assert (= (and d!58133 (not c!21599)) b!87252))

(declare-fun m!83412 () Bool)

(assert (=> b!87252 m!83412))

(declare-fun m!83414 () Bool)

(assert (=> b!87252 m!83414))

(assert (=> b!87026 d!58133))

(declare-fun d!58135 () Bool)

(declare-fun lt!20170 () Int)

(assert (=> d!58135 (>= lt!20170 0)))

(declare-fun e!47335 () Int)

(assert (=> d!58135 (= lt!20170 e!47335)))

(declare-fun c!21600 () Bool)

(assert (=> d!58135 (= c!21600 (is-Empty!191 (right!1654 (right!1654 t!48253))))))

(assert (=> d!58135 (= (size!3 (right!1654 (right!1654 t!48253))) lt!20170)))

(declare-fun b!87253 () Bool)

(assert (=> b!87253 (= e!47335 0)))

(declare-fun b!87254 () Bool)

(assert (=> b!87254 (= e!47335 (+ (+ (size!3 (left!1651 (right!1654 (right!1654 t!48253)))) 1) (size!3 (right!1654 (right!1654 (right!1654 t!48253))))))))

(assert (= (and d!58135 c!21600) b!87253))

(assert (= (and d!58135 (not c!21600)) b!87254))

(declare-fun m!83416 () Bool)

(assert (=> b!87254 m!83416))

(declare-fun m!83418 () Bool)

(assert (=> b!87254 m!83418))

(assert (=> b!87026 d!58135))

(declare-fun d!58137 () Bool)

(declare-fun lt!20171 () Int)

(assert (=> d!58137 (>= lt!20171 0)))

(declare-fun e!47336 () Int)

(assert (=> d!58137 (= lt!20171 e!47336)))

(declare-fun c!21601 () Bool)

(assert (=> d!58137 (= c!21601 (is-Empty!191 (left!1651 (left!1651 res!44634))))))

(assert (=> d!58137 (= (size!3 (left!1651 (left!1651 res!44634))) lt!20171)))

(declare-fun b!87255 () Bool)

(assert (=> b!87255 (= e!47336 0)))

(declare-fun b!87256 () Bool)

(assert (=> b!87256 (= e!47336 (+ (+ (size!3 (left!1651 (left!1651 (left!1651 res!44634)))) 1) (size!3 (right!1654 (left!1651 (left!1651 res!44634))))))))

(assert (= (and d!58137 c!21601) b!87255))

(assert (= (and d!58137 (not c!21601)) b!87256))

(declare-fun m!83420 () Bool)

(assert (=> b!87256 m!83420))

(declare-fun m!83422 () Bool)

(assert (=> b!87256 m!83422))

(assert (=> b!87074 d!58137))

(declare-fun d!58139 () Bool)

(declare-fun lt!20172 () Int)

(assert (=> d!58139 (>= lt!20172 0)))

(declare-fun e!47337 () Int)

(assert (=> d!58139 (= lt!20172 e!47337)))

(declare-fun c!21602 () Bool)

(assert (=> d!58139 (= c!21602 (is-Empty!191 (right!1654 (left!1651 res!44634))))))

(assert (=> d!58139 (= (size!3 (right!1654 (left!1651 res!44634))) lt!20172)))

(declare-fun b!87257 () Bool)

(assert (=> b!87257 (= e!47337 0)))

(declare-fun b!87258 () Bool)

(assert (=> b!87258 (= e!47337 (+ (+ (size!3 (left!1651 (right!1654 (left!1651 res!44634)))) 1) (size!3 (right!1654 (right!1654 (left!1651 res!44634))))))))

(assert (= (and d!58139 c!21602) b!87257))

(assert (= (and d!58139 (not c!21602)) b!87258))

(declare-fun m!83424 () Bool)

(assert (=> b!87258 m!83424))

(declare-fun m!83426 () Bool)

(assert (=> b!87258 m!83426))

(assert (=> b!87074 d!58139))

(assert (=> b!87058 d!58025))

(declare-fun d!58141 () Bool)

(assert (=> d!58141 (= (isBlack!0 (left!1651 (right!1654 t!48253))) (or (is-Empty!191 (left!1651 (right!1654 t!48253))) (and (is-Node!152 (left!1651 (right!1654 t!48253))) (is-Black!10 (color!41 (left!1651 (right!1654 t!48253)))))))))

(assert (=> b!87036 d!58141))

(declare-fun b!87259 () Bool)

(declare-fun res!45526 () Bool)

(declare-fun e!47341 () Bool)

(assert (=> b!87259 (=> (not res!45526) (not e!47341))))

(assert (=> b!87259 (= res!45526 (redNodesHaveBlackChildren!0 (left!1651 (left!1651 lt!20124))))))

(declare-fun b!87260 () Bool)

(declare-fun e!47339 () Bool)

(assert (=> b!87260 (= e!47339 (redNodesHaveBlackChildren!0 (right!1654 (left!1651 lt!20124))))))

(declare-fun b!87261 () Bool)

(declare-fun e!47338 () Bool)

(declare-fun e!47340 () Bool)

(assert (=> b!87261 (= e!47338 e!47340)))

(declare-fun c!21603 () Bool)

(assert (=> b!87261 (= c!21603 (and (is-Node!152 (left!1651 lt!20124)) (is-Black!10 (color!41 (left!1651 lt!20124)))))))

(declare-fun d!58143 () Bool)

(declare-fun res!45524 () Bool)

(assert (=> d!58143 (=> res!45524 e!47338)))

(assert (=> d!58143 (= res!45524 (is-Empty!191 (left!1651 lt!20124)))))

(assert (=> d!58143 (= (redNodesHaveBlackChildren!0 (left!1651 lt!20124)) e!47338)))

(declare-fun b!87262 () Bool)

(declare-fun res!45525 () Bool)

(assert (=> b!87262 (=> (not res!45525) (not e!47341))))

(assert (=> b!87262 (= res!45525 (isBlack!0 (right!1654 (left!1651 lt!20124))))))

(declare-fun b!87263 () Bool)

(assert (=> b!87263 (= e!47340 e!47339)))

(declare-fun res!45523 () Bool)

(assert (=> b!87263 (=> (not res!45523) (not e!47339))))

(assert (=> b!87263 (= res!45523 (redNodesHaveBlackChildren!0 (left!1651 (left!1651 lt!20124))))))

(declare-fun b!87264 () Bool)

(assert (=> b!87264 (= e!47340 e!47341)))

(declare-fun res!45527 () Bool)

(assert (=> b!87264 (=> (not res!45527) (not e!47341))))

(assert (=> b!87264 (= res!45527 (isBlack!0 (left!1651 (left!1651 lt!20124))))))

(declare-fun b!87265 () Bool)

(assert (=> b!87265 (= e!47341 (redNodesHaveBlackChildren!0 (right!1654 (left!1651 lt!20124))))))

(assert (= (and d!58143 (not res!45524)) b!87261))

(assert (= (and b!87263 res!45523) b!87260))

(assert (= (and b!87264 res!45527) b!87262))

(assert (= (and b!87262 res!45525) b!87259))

(assert (= (and b!87259 res!45526) b!87265))

(assert (= (and b!87261 c!21603) b!87263))

(assert (= (and b!87261 (not c!21603)) b!87264))

(declare-fun m!83428 () Bool)

(assert (=> b!87259 m!83428))

(declare-fun m!83430 () Bool)

(assert (=> b!87264 m!83430))

(declare-fun m!83432 () Bool)

(assert (=> b!87260 m!83432))

(declare-fun m!83434 () Bool)

(assert (=> b!87262 m!83434))

(assert (=> b!87265 m!83432))

(assert (=> b!87263 m!83428))

(assert (=> b!87077 d!58143))

(declare-fun d!58145 () Bool)

(declare-fun res!45530 () Bool)

(declare-fun e!47342 () Bool)

(assert (=> d!58145 (=> res!45530 e!47342)))

(assert (=> d!58145 (= res!45530 (not (is-Node!152 (left!1651 (right!1654 t!48253)))))))

(assert (=> d!58145 (= (blackBalanced!0 (left!1651 (right!1654 t!48253))) e!47342)))

(declare-fun b!87266 () Bool)

(declare-fun e!47343 () Bool)

(assert (=> b!87266 (= e!47342 e!47343)))

(declare-fun res!45528 () Bool)

(assert (=> b!87266 (=> (not res!45528) (not e!47343))))

(assert (=> b!87266 (= res!45528 (blackBalanced!0 (left!1651 (left!1651 (right!1654 t!48253)))))))

(declare-fun b!87267 () Bool)

(declare-fun res!45529 () Bool)

(assert (=> b!87267 (=> (not res!45529) (not e!47343))))

(assert (=> b!87267 (= res!45529 (blackBalanced!0 (right!1654 (left!1651 (right!1654 t!48253)))))))

(declare-fun b!87268 () Bool)

(assert (=> b!87268 (= e!47343 (= (blackHeight!0 (left!1651 (left!1651 (right!1654 t!48253)))) (blackHeight!0 (right!1654 (left!1651 (right!1654 t!48253))))))))

(assert (= (and d!58145 (not res!45530)) b!87266))

(assert (= (and b!87266 res!45528) b!87267))

(assert (= (and b!87267 res!45529) b!87268))

(declare-fun m!83436 () Bool)

(assert (=> b!87266 m!83436))

(declare-fun m!83438 () Bool)

(assert (=> b!87267 m!83438))

(assert (=> b!87268 m!83256))

(declare-fun m!83440 () Bool)

(assert (=> b!87268 m!83440))

(assert (=> b!86992 d!58145))

(declare-fun d!58147 () Bool)

(declare-fun res!45533 () Bool)

(declare-fun e!47344 () Bool)

(assert (=> d!58147 (=> res!45533 e!47344)))

(assert (=> d!58147 (= res!45533 (not (is-Node!152 (left!1651 lt!20124))))))

(assert (=> d!58147 (= (blackBalanced!0 (left!1651 lt!20124)) e!47344)))

(declare-fun b!87269 () Bool)

(declare-fun e!47345 () Bool)

(assert (=> b!87269 (= e!47344 e!47345)))

(declare-fun res!45531 () Bool)

(assert (=> b!87269 (=> (not res!45531) (not e!47345))))

(assert (=> b!87269 (= res!45531 (blackBalanced!0 (left!1651 (left!1651 lt!20124))))))

(declare-fun b!87270 () Bool)

(declare-fun res!45532 () Bool)

(assert (=> b!87270 (=> (not res!45532) (not e!47345))))

(assert (=> b!87270 (= res!45532 (blackBalanced!0 (right!1654 (left!1651 lt!20124))))))

(declare-fun b!87271 () Bool)

(assert (=> b!87271 (= e!47345 (= (blackHeight!0 (left!1651 (left!1651 lt!20124))) (blackHeight!0 (right!1654 (left!1651 lt!20124)))))))

(assert (= (and d!58147 (not res!45533)) b!87269))

(assert (= (and b!87269 res!45531) b!87270))

(assert (= (and b!87270 res!45532) b!87271))

(declare-fun m!83442 () Bool)

(assert (=> b!87269 m!83442))

(declare-fun m!83444 () Bool)

(assert (=> b!87270 m!83444))

(assert (=> b!87271 m!83326))

(declare-fun m!83446 () Bool)

(assert (=> b!87271 m!83446))

(assert (=> b!87017 d!58147))

(declare-fun d!58149 () Bool)

(declare-fun res!45536 () Bool)

(declare-fun e!47346 () Bool)

(assert (=> d!58149 (=> res!45536 e!47346)))

(assert (=> d!58149 (= res!45536 (not (is-Node!152 (left!1651 (right!1654 res!44634)))))))

(assert (=> d!58149 (= (blackBalanced!0 (left!1651 (right!1654 res!44634))) e!47346)))

(declare-fun b!87272 () Bool)

(declare-fun e!47347 () Bool)

(assert (=> b!87272 (= e!47346 e!47347)))

(declare-fun res!45534 () Bool)

(assert (=> b!87272 (=> (not res!45534) (not e!47347))))

(assert (=> b!87272 (= res!45534 (blackBalanced!0 (left!1651 (left!1651 (right!1654 res!44634)))))))

(declare-fun b!87273 () Bool)

(declare-fun res!45535 () Bool)

(assert (=> b!87273 (=> (not res!45535) (not e!47347))))

(assert (=> b!87273 (= res!45535 (blackBalanced!0 (right!1654 (left!1651 (right!1654 res!44634)))))))

(declare-fun b!87274 () Bool)

(assert (=> b!87274 (= e!47347 (= (blackHeight!0 (left!1651 (left!1651 (right!1654 res!44634)))) (blackHeight!0 (right!1654 (left!1651 (right!1654 res!44634))))))))

(assert (= (and d!58149 (not res!45536)) b!87272))

(assert (= (and b!87272 res!45534) b!87273))

(assert (= (and b!87273 res!45535) b!87274))

(declare-fun m!83448 () Bool)

(assert (=> b!87272 m!83448))

(declare-fun m!83450 () Bool)

(assert (=> b!87273 m!83450))

(assert (=> b!87274 m!83216))

(declare-fun m!83452 () Bool)

(assert (=> b!87274 m!83452))

(assert (=> b!87038 d!58149))

(declare-fun d!58151 () Bool)

(assert (=> d!58151 (= (isBlack!0 (right!1654 (left!1651 t!48253))) (or (is-Empty!191 (right!1654 (left!1651 t!48253))) (and (is-Node!152 (right!1654 (left!1651 t!48253))) (is-Black!10 (color!41 (right!1654 (left!1651 t!48253)))))))))

(assert (=> b!87055 d!58151))

(declare-fun d!58153 () Bool)

(declare-fun lt!20173 () Int)

(assert (=> d!58153 (>= lt!20173 0)))

(declare-fun e!47348 () Int)

(assert (=> d!58153 (= lt!20173 e!47348)))

(declare-fun c!21604 () Bool)

(assert (=> d!58153 (= c!21604 (is-Empty!191 (left!1651 (left!1651 t!48253))))))

(assert (=> d!58153 (= (size!3 (left!1651 (left!1651 t!48253))) lt!20173)))

(declare-fun b!87275 () Bool)

(assert (=> b!87275 (= e!47348 0)))

(declare-fun b!87276 () Bool)

(assert (=> b!87276 (= e!47348 (+ (+ (size!3 (left!1651 (left!1651 (left!1651 t!48253)))) 1) (size!3 (right!1654 (left!1651 (left!1651 t!48253))))))))

(assert (= (and d!58153 c!21604) b!87275))

(assert (= (and d!58153 (not c!21604)) b!87276))

(declare-fun m!83454 () Bool)

(assert (=> b!87276 m!83454))

(declare-fun m!83456 () Bool)

(assert (=> b!87276 m!83456))

(assert (=> b!87024 d!58153))

(declare-fun d!58155 () Bool)

(declare-fun lt!20174 () Int)

(assert (=> d!58155 (>= lt!20174 0)))

(declare-fun e!47349 () Int)

(assert (=> d!58155 (= lt!20174 e!47349)))

(declare-fun c!21605 () Bool)

(assert (=> d!58155 (= c!21605 (is-Empty!191 (right!1654 (left!1651 t!48253))))))

(assert (=> d!58155 (= (size!3 (right!1654 (left!1651 t!48253))) lt!20174)))

(declare-fun b!87277 () Bool)

(assert (=> b!87277 (= e!47349 0)))

(declare-fun b!87278 () Bool)

(assert (=> b!87278 (= e!47349 (+ (+ (size!3 (left!1651 (right!1654 (left!1651 t!48253)))) 1) (size!3 (right!1654 (right!1654 (left!1651 t!48253))))))))

(assert (= (and d!58155 c!21605) b!87277))

(assert (= (and d!58155 (not c!21605)) b!87278))

(declare-fun m!83458 () Bool)

(assert (=> b!87278 m!83458))

(declare-fun m!83460 () Bool)

(assert (=> b!87278 m!83460))

(assert (=> b!87024 d!58155))

(declare-fun d!58157 () Bool)

(declare-fun c!21606 () Bool)

(assert (=> d!58157 (= c!21606 (is-Empty!191 lt!20136))))

(declare-fun e!47350 () (Set Int))

(assert (=> d!58157 (= (content!8 lt!20136) e!47350)))

(declare-fun b!87279 () Bool)

(assert (=> b!87279 (= e!47350 (as emptyset (Set Int)))))

(declare-fun b!87280 () Bool)

(assert (=> b!87280 (= e!47350 (union (union (content!8 (left!1651 lt!20136)) (insert (value!6798 lt!20136) (as emptyset (Set Int)))) (content!8 (right!1654 lt!20136))))))

(assert (= (and d!58157 c!21606) b!87279))

(assert (= (and d!58157 (not c!21606)) b!87280))

(declare-fun m!83462 () Bool)

(assert (=> b!87280 m!83462))

(declare-fun m!83464 () Bool)

(assert (=> b!87280 m!83464))

(declare-fun m!83466 () Bool)

(assert (=> b!87280 m!83466))

(assert (=> d!57989 d!58157))

(declare-fun d!58159 () Bool)

(declare-fun c!21607 () Bool)

(assert (=> d!58159 (= c!21607 (is-Empty!191 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))))))

(declare-fun e!47351 () (Set Int))

(assert (=> d!58159 (= (content!8 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) e!47351)))

(declare-fun b!87281 () Bool)

(assert (=> b!87281 (= e!47351 (as emptyset (Set Int)))))

(declare-fun b!87282 () Bool)

(assert (=> b!87282 (= e!47351 (union (union (content!8 (left!1651 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253))))) (insert (value!6798 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) (as emptyset (Set Int)))) (content!8 (right!1654 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))))))))

(assert (= (and d!58159 c!21607) b!87281))

(assert (= (and d!58159 (not c!21607)) b!87282))

(declare-fun m!83468 () Bool)

(assert (=> b!87282 m!83468))

(declare-fun m!83470 () Bool)

(assert (=> b!87282 m!83470))

(declare-fun m!83472 () Bool)

(assert (=> b!87282 m!83472))

(assert (=> d!57989 d!58159))

(declare-fun b!87283 () Bool)

(declare-fun res!45540 () Bool)

(declare-fun e!47355 () Bool)

(assert (=> b!87283 (=> (not res!45540) (not e!47355))))

(assert (=> b!87283 (= res!45540 (redNodesHaveBlackChildren!0 (left!1651 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253))))))))

(declare-fun b!87284 () Bool)

(declare-fun e!47353 () Bool)

(assert (=> b!87284 (= e!47353 (redNodesHaveBlackChildren!0 (right!1654 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253))))))))

(declare-fun b!87285 () Bool)

(declare-fun e!47352 () Bool)

(declare-fun e!47354 () Bool)

(assert (=> b!87285 (= e!47352 e!47354)))

(declare-fun c!21608 () Bool)

(assert (=> b!87285 (= c!21608 (and (is-Node!152 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) (is-Black!10 (color!41 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))))))))

(declare-fun d!58161 () Bool)

(declare-fun res!45538 () Bool)

(assert (=> d!58161 (=> res!45538 e!47352)))

(assert (=> d!58161 (= res!45538 (is-Empty!191 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))))))

(assert (=> d!58161 (= (redNodesHaveBlackChildren!0 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253)))) e!47352)))

(declare-fun b!87286 () Bool)

(declare-fun res!45539 () Bool)

(assert (=> b!87286 (=> (not res!45539) (not e!47355))))

(assert (=> b!87286 (= res!45539 (isBlack!0 (right!1654 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253))))))))

(declare-fun b!87287 () Bool)

(assert (=> b!87287 (= e!47354 e!47353)))

(declare-fun res!45537 () Bool)

(assert (=> b!87287 (=> (not res!45537) (not e!47353))))

(assert (=> b!87287 (= res!45537 (redNodesHaveBlackChildren!0 (left!1651 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253))))))))

(declare-fun b!87288 () Bool)

(assert (=> b!87288 (= e!47354 e!47355)))

(declare-fun res!45541 () Bool)

(assert (=> b!87288 (=> (not res!45541) (not e!47355))))

(assert (=> b!87288 (= res!45541 (isBlack!0 (left!1651 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253))))))))

(declare-fun b!87289 () Bool)

(assert (=> b!87289 (= e!47355 (redNodesHaveBlackChildren!0 (right!1654 (ite lt!20121 (left!1651 (right!1654 t!48253)) (right!1654 (right!1654 t!48253))))))))

(assert (= (and d!58161 (not res!45538)) b!87285))

(assert (= (and b!87287 res!45537) b!87284))

(assert (= (and b!87288 res!45541) b!87286))

(assert (= (and b!87286 res!45539) b!87283))

(assert (= (and b!87283 res!45540) b!87289))

(assert (= (and b!87285 c!21608) b!87287))

(assert (= (and b!87285 (not c!21608)) b!87288))

(declare-fun m!83474 () Bool)

(assert (=> b!87283 m!83474))

(declare-fun m!83476 () Bool)

(assert (=> b!87288 m!83476))

(declare-fun m!83478 () Bool)

(assert (=> b!87284 m!83478))

(declare-fun m!83480 () Bool)

(assert (=> b!87286 m!83480))

(assert (=> b!87289 m!83478))

(assert (=> b!87287 m!83474))

(assert (=> d!57989 d!58161))

(assert (=> b!87000 d!58095))

(declare-fun d!58163 () Bool)

(declare-fun res!45542 () Bool)

(declare-fun e!47356 () Bool)

(assert (=> d!58163 (=> res!45542 e!47356)))

(assert (=> d!58163 (= res!45542 (is-Empty!191 lt!20136))))

(assert (=> d!58163 (= (redDescHaveBlackChildren!0 lt!20136) e!47356)))

(declare-fun b!87290 () Bool)

(declare-fun e!47357 () Bool)

(assert (=> b!87290 (= e!47356 e!47357)))

(declare-fun res!45543 () Bool)

(assert (=> b!87290 (=> (not res!45543) (not e!47357))))

(assert (=> b!87290 (= res!45543 (redNodesHaveBlackChildren!0 (left!1651 lt!20136)))))

(declare-fun b!87291 () Bool)

(assert (=> b!87291 (= e!47357 (redNodesHaveBlackChildren!0 (right!1654 lt!20136)))))

(assert (= (and d!58163 (not res!45542)) b!87290))

(assert (= (and b!87290 res!45543) b!87291))

(declare-fun m!83482 () Bool)

(assert (=> b!87290 m!83482))

(declare-fun m!83484 () Bool)

(assert (=> b!87291 m!83484))

(assert (=> b!87041 d!58163))

(push 1)

(assert (not b!87098))

(assert (not b!87256))

(assert (not b!87268))

(assert (not b!87184))

(assert (not b!87266))

(assert (not b!87276))

(assert (not b!87237))

(assert (not b!87224))

(assert (not b!87208))

(assert (not b!87263))

(assert (not b!87178))

(assert (not b!87215))

(assert (not b!87226))

(assert (not b!87130))

(assert (not b!87090))

(assert (not b!87244))

(assert (not b!87283))

(assert (not b!87172))

(assert (not b!87143))

(assert (not b!87159))

(assert (not b!87195))

(assert (not b!87119))

(assert (not b!87176))

(assert (not b!87280))

(assert (not b!87223))

(assert (not b!87250))

(assert (not b!87248))

(assert (not b!87228))

(assert (not b!87121))

(assert (not b!87239))

(assert (not b!87203))

(assert (not b!87273))

(assert (not b!87201))

(assert (not b!87104))

(assert (not b!87129))

(assert (not b!87209))

(assert (not b!87123))

(assert (not d!58079))

(assert (not b!87207))

(assert (not b!87235))

(assert (not b!87197))

(assert (not b!87111))

(assert (not b!87089))

(assert (not b!87091))

(assert (not b!87189))

(assert (not b!87165))

(assert (not b!87117))

(assert (not b!87100))

(assert (not b!87107))

(assert (not b!87113))

(assert (not b!87290))

(assert (not b!87259))

(assert (not b!87231))

(assert (not b!87167))

(assert (not b!87220))

(assert (not b!87155))

(assert (not b!87097))

(assert (not b!87133))

(assert (not b!87137))

(assert (not b!87230))

(assert (not b!87170))

(assert (not b!87128))

(assert (not b!87240))

(assert (not b!87156))

(assert (not b!87124))

(assert (not b!87188))

(assert (not b!87088))

(assert (not b!87174))

(assert (not b!87086))

(assert (not b!87214))

(assert (not b!87241))

(assert (not b!87238))

(assert (not b!87246))

(assert (not b!87154))

(assert (not b!87153))

(assert (not b!87126))

(assert (not b!87181))

(assert (not b!87229))

(assert (not b!87204))

(assert (not b!87262))

(assert (not b!87182))

(assert (not b!87122))

(assert (not b!87211))

(assert (not b!87221))

(assert (not b!87139))

(assert (not b!87286))

(assert (not b!87278))

(assert (not b!87157))

(assert (not b!87108))

(assert (not b!87109))

(assert (not b!87219))

(assert (not b!87272))

(assert (not b!87269))

(assert (not b!87222))

(assert (not b!87118))

(assert (not b!87217))

(assert (not b!87282))

(assert (not b!87218))

(assert (not b!87264))

(assert (not b!87193))

(assert (not b!87142))

(assert (not b!87106))

(assert (not b!87093))

(assert (not b!87163))

(assert (not b!87200))

(assert (not b!87146))

(assert (not b!87141))

(assert (not b!87095))

(assert (not b!87289))

(assert (not b!87180))

(assert (not b!87267))

(assert (not b!87103))

(assert (not b!87160))

(assert (not b!87252))

(assert (not b!87148))

(assert (not b!87245))

(assert (not b!87270))

(assert (not b!87150))

(assert (not b!87265))

(assert (not b!87135))

(assert (not b!87254))

(assert (not b!87096))

(assert (not b!87205))

(assert (not b!87149))

(assert (not b!87191))

(assert (not b!87125))

(assert (not b!87102))

(assert (not b!87287))

(assert (not b!87242))

(assert (not b!87274))

(assert (not b!87260))

(assert (not b!87291))

(assert (not b!87258))

(assert (not b!87271))

(assert (not b!87115))

(assert (not b!87233))

(assert (not b!87131))

(assert (not b!87162))

(assert (not b!87213))

(assert (not b!87161))

(assert (not b!87168))

(assert (not b!87085))

(assert (not b!87166))

(assert (not b!87284))

(assert (not b!87199))

(assert (not b!87206))

(assert (not b!87185))

(assert (not b!87092))

(assert (not b!87144))

(assert (not b!87152))

(assert (not b!87288))

(assert (not b!87158))

(assert (not b!87243))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

