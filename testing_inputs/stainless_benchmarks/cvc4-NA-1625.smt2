; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11312 () Bool)

(assert start!11312)

(declare-fun b!86400 () Bool)

(declare-fun res!45032 () Bool)

(declare-fun e!46871 () Bool)

(assert (=> b!86400 (=> res!45032 e!46871)))

(declare-datatypes () ((Color!9 (Red!8) (Black!8))))

(declare-datatypes () ((Tree!106 (Empty!189) (Node!150 (color!39 Color!9) (left!1649 Tree!106) (value!6796 Int) (right!1652 Tree!106)))))

(declare-fun res!44630 () Tree!106)

(declare-fun t!48253 () Tree!106)

(declare-fun size!3 (Tree!106) Int)

(assert (=> b!86400 (= res!45032 (> (size!3 res!44630) (+ (size!3 t!48253) 1)))))

(declare-fun b!86401 () Bool)

(declare-fun e!46870 () Bool)

(assert (=> b!86401 (= e!46870 e!46871)))

(declare-fun res!45035 () Bool)

(assert (=> b!86401 (=> res!45035 e!46871)))

(declare-fun x!30388 () Int)

(declare-fun content!8 (Tree!106) (Set Int))

(assert (=> b!86401 (= res!45035 (not (= (content!8 res!44630) (union (content!8 t!48253) (insert x!30388 (as emptyset (Set Int)))))))))

(declare-fun b!86402 () Bool)

(declare-fun res!45037 () Bool)

(assert (=> b!86402 (=> (not res!45037) (not e!46870))))

(declare-fun balance!0 (Color!9 Tree!106 Int Tree!106) Tree!106)

(declare-fun ins!0 (Int Tree!106) Tree!106)

(assert (=> b!86402 (= res!45037 (= res!44630 (balance!0 (color!39 t!48253) (ins!0 x!30388 (left!1649 t!48253)) (value!6796 t!48253) (right!1652 t!48253))))))

(declare-fun b!86403 () Bool)

(declare-fun res!45036 () Bool)

(assert (=> b!86403 (=> (not res!45036) (not e!46870))))

(assert (=> b!86403 (= res!45036 (and (not (is-Empty!189 t!48253)) (< x!30388 (value!6796 t!48253))))))

(declare-fun res!45030 () Bool)

(assert (=> start!11312 (=> (not res!45030) (not e!46870))))

(declare-fun redNodesHaveBlackChildren!0 (Tree!106) Bool)

(assert (=> start!11312 (= res!45030 (redNodesHaveBlackChildren!0 t!48253))))

(assert (=> start!11312 e!46870))

(assert (=> start!11312 true))

(declare-fun b!86404 () Bool)

(declare-fun blackBalanced!0 (Tree!106) Bool)

(assert (=> b!86404 (= e!46871 (not (blackBalanced!0 res!44630)))))

(declare-fun b!86405 () Bool)

(declare-fun res!45034 () Bool)

(assert (=> b!86405 (=> res!45034 e!46871)))

(declare-fun redDescHaveBlackChildren!0 (Tree!106) Bool)

(assert (=> b!86405 (= res!45034 (not (redDescHaveBlackChildren!0 res!44630)))))

(declare-fun b!86406 () Bool)

(declare-fun res!45031 () Bool)

(assert (=> b!86406 (=> (not res!45031) (not e!46870))))

(assert (=> b!86406 (= res!45031 (blackBalanced!0 t!48253))))

(declare-fun b!86407 () Bool)

(declare-fun res!45033 () Bool)

(assert (=> b!86407 (=> res!45033 e!46871)))

(assert (=> b!86407 (= res!45033 (> (size!3 t!48253) (size!3 res!44630)))))

(assert (= (and start!11312 res!45030) b!86406))

(assert (= (and b!86406 res!45031) b!86403))

(assert (= (and b!86403 res!45036) b!86402))

(assert (= (and b!86402 res!45037) b!86401))

(assert (= (and b!86401 (not res!45035)) b!86407))

(assert (= (and b!86407 (not res!45033)) b!86400))

(assert (= (and b!86400 (not res!45032)) b!86405))

(assert (= (and b!86405 (not res!45034)) b!86404))

(declare-fun m!82188 () Bool)

(assert (=> start!11312 m!82188))

(declare-fun m!82190 () Bool)

(assert (=> b!86405 m!82190))

(declare-fun m!82192 () Bool)

(assert (=> b!86404 m!82192))

(declare-fun m!82194 () Bool)

(assert (=> b!86400 m!82194))

(declare-fun m!82196 () Bool)

(assert (=> b!86400 m!82196))

(assert (=> b!86407 m!82196))

(assert (=> b!86407 m!82194))

(declare-fun m!82198 () Bool)

(assert (=> b!86401 m!82198))

(declare-fun m!82200 () Bool)

(assert (=> b!86401 m!82200))

(declare-fun m!82202 () Bool)

(assert (=> b!86401 m!82202))

(declare-fun m!82204 () Bool)

(assert (=> b!86406 m!82204))

(declare-fun m!82206 () Bool)

(assert (=> b!86402 m!82206))

(assert (=> b!86402 m!82206))

(declare-fun m!82208 () Bool)

(assert (=> b!86402 m!82208))

(push 1)

(assert (not b!86406))

(assert (not b!86402))

(assert (not b!86407))

(assert (not b!86400))

(assert (not start!11312))

(assert (not b!86401))

(assert (not b!86404))

(assert (not b!86405))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!57693 () Bool)

(declare-fun c!21400 () Bool)

(assert (=> d!57693 (= c!21400 (is-Empty!189 res!44630))))

(declare-fun e!46874 () (Set Int))

(assert (=> d!57693 (= (content!8 res!44630) e!46874)))

(declare-fun b!86412 () Bool)

(assert (=> b!86412 (= e!46874 (as emptyset (Set Int)))))

(declare-fun b!86413 () Bool)

(assert (=> b!86413 (= e!46874 (union (union (content!8 (left!1649 res!44630)) (insert (value!6796 res!44630) (as emptyset (Set Int)))) (content!8 (right!1652 res!44630))))))

(assert (= (and d!57693 c!21400) b!86412))

(assert (= (and d!57693 (not c!21400)) b!86413))

(declare-fun m!82210 () Bool)

(assert (=> b!86413 m!82210))

(declare-fun m!82212 () Bool)

(assert (=> b!86413 m!82212))

(declare-fun m!82214 () Bool)

(assert (=> b!86413 m!82214))

(assert (=> b!86401 d!57693))

(declare-fun d!57695 () Bool)

(declare-fun c!21401 () Bool)

(assert (=> d!57695 (= c!21401 (is-Empty!189 t!48253))))

(declare-fun e!46875 () (Set Int))

(assert (=> d!57695 (= (content!8 t!48253) e!46875)))

(declare-fun b!86414 () Bool)

(assert (=> b!86414 (= e!46875 (as emptyset (Set Int)))))

(declare-fun b!86415 () Bool)

(assert (=> b!86415 (= e!46875 (union (union (content!8 (left!1649 t!48253)) (insert (value!6796 t!48253) (as emptyset (Set Int)))) (content!8 (right!1652 t!48253))))))

(assert (= (and d!57695 c!21401) b!86414))

(assert (= (and d!57695 (not c!21401)) b!86415))

(declare-fun m!82216 () Bool)

(assert (=> b!86415 m!82216))

(declare-fun m!82218 () Bool)

(assert (=> b!86415 m!82218))

(declare-fun m!82220 () Bool)

(assert (=> b!86415 m!82220))

(assert (=> b!86401 d!57695))

(declare-fun d!57697 () Bool)

(declare-fun lt!20039 () Int)

(assert (=> d!57697 (>= lt!20039 0)))

(declare-fun e!46878 () Int)

(assert (=> d!57697 (= lt!20039 e!46878)))

(declare-fun c!21404 () Bool)

(assert (=> d!57697 (= c!21404 (is-Empty!189 res!44630))))

(assert (=> d!57697 (= (size!3 res!44630) lt!20039)))

(declare-fun b!86420 () Bool)

(assert (=> b!86420 (= e!46878 0)))

(declare-fun b!86421 () Bool)

(assert (=> b!86421 (= e!46878 (+ (+ (size!3 (left!1649 res!44630)) 1) (size!3 (right!1652 res!44630))))))

(assert (= (and d!57697 c!21404) b!86420))

(assert (= (and d!57697 (not c!21404)) b!86421))

(declare-fun m!82222 () Bool)

(assert (=> b!86421 m!82222))

(declare-fun m!82224 () Bool)

(assert (=> b!86421 m!82224))

(assert (=> b!86400 d!57697))

(declare-fun d!57699 () Bool)

(declare-fun lt!20040 () Int)

(assert (=> d!57699 (>= lt!20040 0)))

(declare-fun e!46879 () Int)

(assert (=> d!57699 (= lt!20040 e!46879)))

(declare-fun c!21405 () Bool)

(assert (=> d!57699 (= c!21405 (is-Empty!189 t!48253))))

(assert (=> d!57699 (= (size!3 t!48253) lt!20040)))

(declare-fun b!86422 () Bool)

(assert (=> b!86422 (= e!46879 0)))

(declare-fun b!86423 () Bool)

(assert (=> b!86423 (= e!46879 (+ (+ (size!3 (left!1649 t!48253)) 1) (size!3 (right!1652 t!48253))))))

(assert (= (and d!57699 c!21405) b!86422))

(assert (= (and d!57699 (not c!21405)) b!86423))

(declare-fun m!82226 () Bool)

(assert (=> b!86423 m!82226))

(declare-fun m!82228 () Bool)

(assert (=> b!86423 m!82228))

(assert (=> b!86400 d!57699))

(declare-fun d!57701 () Bool)

(declare-fun e!46882 () Bool)

(assert (=> d!57701 e!46882))

(declare-fun res!45041 () Bool)

(assert (=> d!57701 (=> (not res!45041) (not e!46882))))

(declare-fun lt!20043 () Tree!106)

(assert (=> d!57701 (= res!45041 (is-Node!150 lt!20043))))

(assert (=> d!57701 (= lt!20043 (ite (and (is-Black!8 (color!39 t!48253)) (is-Node!150 (ins!0 x!30388 (left!1649 t!48253))) (is-Red!8 (color!39 (ins!0 x!30388 (left!1649 t!48253)))) (is-Node!150 (left!1649 (ins!0 x!30388 (left!1649 t!48253)))) (is-Red!8 (color!39 (left!1649 (ins!0 x!30388 (left!1649 t!48253)))))) (Node!150 Red!8 (Node!150 Black!8 (left!1649 (left!1649 (ins!0 x!30388 (left!1649 t!48253)))) (value!6796 (left!1649 (ins!0 x!30388 (left!1649 t!48253)))) (right!1652 (left!1649 (ins!0 x!30388 (left!1649 t!48253))))) (value!6796 (ins!0 x!30388 (left!1649 t!48253))) (Node!150 Black!8 (right!1652 (ins!0 x!30388 (left!1649 t!48253))) (value!6796 t!48253) (right!1652 t!48253))) (ite (and (is-Black!8 (color!39 t!48253)) (is-Node!150 (ins!0 x!30388 (left!1649 t!48253))) (is-Red!8 (color!39 (ins!0 x!30388 (left!1649 t!48253)))) (is-Node!150 (right!1652 (ins!0 x!30388 (left!1649 t!48253)))) (is-Red!8 (color!39 (right!1652 (ins!0 x!30388 (left!1649 t!48253)))))) (Node!150 Red!8 (Node!150 Black!8 (left!1649 (ins!0 x!30388 (left!1649 t!48253))) (value!6796 (ins!0 x!30388 (left!1649 t!48253))) (left!1649 (right!1652 (ins!0 x!30388 (left!1649 t!48253))))) (value!6796 (right!1652 (ins!0 x!30388 (left!1649 t!48253)))) (Node!150 Black!8 (right!1652 (right!1652 (ins!0 x!30388 (left!1649 t!48253)))) (value!6796 t!48253) (right!1652 t!48253))) (ite (and (is-Black!8 (color!39 t!48253)) (is-Node!150 (right!1652 t!48253)) (is-Red!8 (color!39 (right!1652 t!48253))) (is-Node!150 (left!1649 (right!1652 t!48253))) (is-Red!8 (color!39 (left!1649 (right!1652 t!48253))))) (Node!150 Red!8 (Node!150 Black!8 (ins!0 x!30388 (left!1649 t!48253)) (value!6796 t!48253) (left!1649 (left!1649 (right!1652 t!48253)))) (value!6796 (left!1649 (right!1652 t!48253))) (Node!150 Black!8 (right!1652 (left!1649 (right!1652 t!48253))) (value!6796 (right!1652 t!48253)) (right!1652 (right!1652 t!48253)))) (ite (and (is-Black!8 (color!39 t!48253)) (is-Node!150 (right!1652 t!48253)) (is-Red!8 (color!39 (right!1652 t!48253))) (is-Node!150 (right!1652 (right!1652 t!48253))) (is-Red!8 (color!39 (right!1652 (right!1652 t!48253))))) (Node!150 Red!8 (Node!150 Black!8 (ins!0 x!30388 (left!1649 t!48253)) (value!6796 t!48253) (left!1649 (right!1652 t!48253))) (value!6796 (right!1652 t!48253)) (Node!150 Black!8 (left!1649 (right!1652 (right!1652 t!48253))) (value!6796 (right!1652 (right!1652 t!48253))) (right!1652 (right!1652 (right!1652 t!48253))))) (Node!150 (color!39 t!48253) (ins!0 x!30388 (left!1649 t!48253)) (value!6796 t!48253) (right!1652 t!48253)))))))))

(assert (=> d!57701 (= (balance!0 (color!39 t!48253) (ins!0 x!30388 (left!1649 t!48253)) (value!6796 t!48253) (right!1652 t!48253)) lt!20043)))

(declare-fun b!86427 () Bool)

(assert (=> b!86427 (= e!46882 (= (content!8 lt!20043) (content!8 (Node!150 (color!39 t!48253) (ins!0 x!30388 (left!1649 t!48253)) (value!6796 t!48253) (right!1652 t!48253)))))))

(assert (= (and d!57701 res!45041) b!86427))

(declare-fun m!82230 () Bool)

(assert (=> b!86427 m!82230))

(declare-fun m!82232 () Bool)

(assert (=> b!86427 m!82232))

(assert (=> b!86402 d!57701))

(declare-fun b!86450 () Bool)

(declare-fun e!46895 () Tree!106)

(declare-fun res!45068 () Tree!106)

(assert (=> b!86450 (= e!46895 res!45068)))

(assert (=> b!86450 true))

(declare-fun b!86451 () Bool)

(declare-fun res!45063 () Bool)

(declare-fun e!46894 () Bool)

(assert (=> b!86451 (=> (not res!45063) (not e!46894))))

(declare-fun lt!20057 () Tree!106)

(assert (=> b!86451 (= res!45063 (<= (size!3 lt!20057) (+ (size!3 (left!1649 t!48253)) 1)))))

(declare-fun b!86452 () Bool)

(assert (=> b!86452 (= e!46894 (blackBalanced!0 lt!20057))))

(declare-fun b!86453 () Bool)

(declare-fun lt!20054 () Bool)

(assert (=> b!86453 (= e!46895 (ins!0 x!30388 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))))))

(declare-fun b!86454 () Bool)

(declare-fun e!46896 () Tree!106)

(assert (=> b!86454 (= e!46896 (Node!150 Red!8 Empty!189 x!30388 Empty!189))))

(declare-fun lt!20056 () Tree!106)

(declare-fun b!86455 () Bool)

(declare-fun e!46893 () Tree!106)

(declare-fun lt!20055 () Bool)

(assert (=> b!86455 (= e!46893 (balance!0 (color!39 (left!1649 t!48253)) (ite lt!20055 lt!20056 (left!1649 (left!1649 t!48253))) (value!6796 (left!1649 t!48253)) (ite lt!20055 (right!1652 (left!1649 t!48253)) lt!20056)))))

(declare-fun b!86456 () Bool)

(declare-fun res!45067 () Bool)

(assert (=> b!86456 (=> (not res!45067) (not e!46894))))

(assert (=> b!86456 (= res!45067 (redDescHaveBlackChildren!0 lt!20057))))

(declare-fun b!86457 () Bool)

(declare-fun e!46897 () Bool)

(assert (=> b!86457 (= e!46897 (blackBalanced!0 (left!1649 t!48253)))))

(declare-fun lt!20058 () Tree!106)

(declare-fun b!86458 () Bool)

(assert (=> b!86458 (= e!46896 (ite lt!20054 lt!20058 (ite (= x!30388 (value!6796 (left!1649 t!48253))) (Node!150 (color!39 (left!1649 t!48253)) (left!1649 (left!1649 t!48253)) (value!6796 (left!1649 t!48253)) (right!1652 (left!1649 t!48253))) lt!20058)))))

(assert (=> b!86458 (= lt!20058 e!46893)))

(declare-fun c!21413 () Bool)

(assert (=> b!86458 (= c!21413 (or lt!20055 (and (not lt!20054) (not (= x!30388 (value!6796 (left!1649 t!48253)))))))))

(assert (=> b!86458 (= lt!20055 lt!20054)))

(assert (=> b!86458 (= lt!20056 e!46895)))

(declare-fun c!21415 () Bool)

(assert (=> b!86458 (= c!21415 (or lt!20054 (not (= x!30388 (value!6796 (left!1649 t!48253))))))))

(assert (=> b!86458 (= lt!20054 (< x!30388 (value!6796 (left!1649 t!48253))))))

(declare-fun b!86459 () Bool)

(declare-fun res!45066 () Bool)

(assert (=> b!86459 (=> (not res!45066) (not e!46894))))

(assert (=> b!86459 (= res!45066 (<= (size!3 (left!1649 t!48253)) (size!3 lt!20057)))))

(declare-fun b!86460 () Bool)

(declare-fun res!45069 () Tree!106)

(assert (=> b!86460 (= e!46893 res!45069)))

(assert (=> b!86460 true))

(assert (=> b!86460 true))

(declare-fun d!57703 () Bool)

(assert (=> d!57703 e!46894))

(declare-fun res!45065 () Bool)

(assert (=> d!57703 (=> (not res!45065) (not e!46894))))

(assert (=> d!57703 (= res!45065 (= (content!8 lt!20057) (union (content!8 (left!1649 t!48253)) (insert x!30388 (as emptyset (Set Int))))))))

(assert (=> d!57703 (= lt!20057 e!46896)))

(declare-fun c!21414 () Bool)

(assert (=> d!57703 (= c!21414 (is-Empty!189 (left!1649 t!48253)))))

(assert (=> d!57703 e!46897))

(declare-fun res!45064 () Bool)

(assert (=> d!57703 (=> (not res!45064) (not e!46897))))

(assert (=> d!57703 (= res!45064 (redNodesHaveBlackChildren!0 (left!1649 t!48253)))))

(assert (=> d!57703 (= (ins!0 x!30388 (left!1649 t!48253)) lt!20057)))

(assert (= (and d!57703 res!45064) b!86457))

(assert (= (and b!86458 c!21415) b!86453))

(assert (= (and b!86458 (not c!21415)) b!86450))

(assert (= (and b!86458 c!21413) b!86455))

(assert (= (and b!86458 (not c!21413)) b!86460))

(assert (= (and d!57703 c!21414) b!86454))

(assert (= (and d!57703 (not c!21414)) b!86458))

(assert (= (and d!57703 res!45065) b!86459))

(assert (= (and b!86459 res!45066) b!86451))

(assert (= (and b!86451 res!45063) b!86456))

(assert (= (and b!86456 res!45067) b!86452))

(declare-fun m!82234 () Bool)

(assert (=> d!57703 m!82234))

(assert (=> d!57703 m!82216))

(assert (=> d!57703 m!82202))

(declare-fun m!82236 () Bool)

(assert (=> d!57703 m!82236))

(declare-fun m!82238 () Bool)

(assert (=> b!86455 m!82238))

(declare-fun m!82240 () Bool)

(assert (=> b!86453 m!82240))

(declare-fun m!82242 () Bool)

(assert (=> b!86456 m!82242))

(declare-fun m!82244 () Bool)

(assert (=> b!86452 m!82244))

(assert (=> b!86459 m!82226))

(declare-fun m!82246 () Bool)

(assert (=> b!86459 m!82246))

(declare-fun m!82248 () Bool)

(assert (=> b!86457 m!82248))

(assert (=> b!86451 m!82246))

(assert (=> b!86451 m!82226))

(assert (=> b!86402 d!57703))

(declare-fun d!57705 () Bool)

(declare-fun res!45077 () Bool)

(declare-fun e!46903 () Bool)

(assert (=> d!57705 (=> res!45077 e!46903)))

(assert (=> d!57705 (= res!45077 (not (is-Node!150 t!48253)))))

(assert (=> d!57705 (= (blackBalanced!0 t!48253) e!46903)))

(declare-fun b!86467 () Bool)

(declare-fun e!46902 () Bool)

(assert (=> b!86467 (= e!46903 e!46902)))

(declare-fun res!45076 () Bool)

(assert (=> b!86467 (=> (not res!45076) (not e!46902))))

(assert (=> b!86467 (= res!45076 (blackBalanced!0 (left!1649 t!48253)))))

(declare-fun b!86468 () Bool)

(declare-fun res!45078 () Bool)

(assert (=> b!86468 (=> (not res!45078) (not e!46902))))

(assert (=> b!86468 (= res!45078 (blackBalanced!0 (right!1652 t!48253)))))

(declare-fun b!86469 () Bool)

(declare-fun blackHeight!0 (Tree!106) Int)

(assert (=> b!86469 (= e!46902 (= (blackHeight!0 (left!1649 t!48253)) (blackHeight!0 (right!1652 t!48253))))))

(assert (= (and d!57705 (not res!45077)) b!86467))

(assert (= (and b!86467 res!45076) b!86468))

(assert (= (and b!86468 res!45078) b!86469))

(assert (=> b!86467 m!82248))

(declare-fun m!82250 () Bool)

(assert (=> b!86468 m!82250))

(declare-fun m!82252 () Bool)

(assert (=> b!86469 m!82252))

(declare-fun m!82254 () Bool)

(assert (=> b!86469 m!82254))

(assert (=> b!86406 d!57705))

(assert (=> b!86407 d!57699))

(assert (=> b!86407 d!57697))

(declare-fun d!57707 () Bool)

(declare-fun res!45083 () Bool)

(declare-fun e!46908 () Bool)

(assert (=> d!57707 (=> res!45083 e!46908)))

(assert (=> d!57707 (= res!45083 (is-Empty!189 res!44630))))

(assert (=> d!57707 (= (redDescHaveBlackChildren!0 res!44630) e!46908)))

(declare-fun b!86474 () Bool)

(declare-fun e!46909 () Bool)

(assert (=> b!86474 (= e!46908 e!46909)))

(declare-fun res!45084 () Bool)

(assert (=> b!86474 (=> (not res!45084) (not e!46909))))

(assert (=> b!86474 (= res!45084 (redNodesHaveBlackChildren!0 (left!1649 res!44630)))))

(declare-fun b!86475 () Bool)

(assert (=> b!86475 (= e!46909 (redNodesHaveBlackChildren!0 (right!1652 res!44630)))))

(assert (= (and d!57707 (not res!45083)) b!86474))

(assert (= (and b!86474 res!45084) b!86475))

(declare-fun m!82256 () Bool)

(assert (=> b!86474 m!82256))

(declare-fun m!82258 () Bool)

(assert (=> b!86475 m!82258))

(assert (=> b!86405 d!57707))

(declare-fun d!57709 () Bool)

(declare-fun res!45086 () Bool)

(declare-fun e!46911 () Bool)

(assert (=> d!57709 (=> res!45086 e!46911)))

(assert (=> d!57709 (= res!45086 (not (is-Node!150 res!44630)))))

(assert (=> d!57709 (= (blackBalanced!0 res!44630) e!46911)))

(declare-fun b!86476 () Bool)

(declare-fun e!46910 () Bool)

(assert (=> b!86476 (= e!46911 e!46910)))

(declare-fun res!45085 () Bool)

(assert (=> b!86476 (=> (not res!45085) (not e!46910))))

(assert (=> b!86476 (= res!45085 (blackBalanced!0 (left!1649 res!44630)))))

(declare-fun b!86477 () Bool)

(declare-fun res!45087 () Bool)

(assert (=> b!86477 (=> (not res!45087) (not e!46910))))

(assert (=> b!86477 (= res!45087 (blackBalanced!0 (right!1652 res!44630)))))

(declare-fun b!86478 () Bool)

(assert (=> b!86478 (= e!46910 (= (blackHeight!0 (left!1649 res!44630)) (blackHeight!0 (right!1652 res!44630))))))

(assert (= (and d!57709 (not res!45086)) b!86476))

(assert (= (and b!86476 res!45085) b!86477))

(assert (= (and b!86477 res!45087) b!86478))

(declare-fun m!82260 () Bool)

(assert (=> b!86476 m!82260))

(declare-fun m!82262 () Bool)

(assert (=> b!86477 m!82262))

(declare-fun m!82264 () Bool)

(assert (=> b!86478 m!82264))

(declare-fun m!82266 () Bool)

(assert (=> b!86478 m!82266))

(assert (=> b!86404 d!57709))

(declare-fun b!86493 () Bool)

(declare-fun e!46923 () Bool)

(assert (=> b!86493 (= e!46923 (redNodesHaveBlackChildren!0 (right!1652 t!48253)))))

(declare-fun b!86494 () Bool)

(declare-fun e!46922 () Bool)

(assert (=> b!86494 (= e!46922 (redNodesHaveBlackChildren!0 (right!1652 t!48253)))))

(declare-fun b!86495 () Bool)

(declare-fun e!46920 () Bool)

(assert (=> b!86495 (= e!46920 e!46923)))

(declare-fun res!45099 () Bool)

(assert (=> b!86495 (=> (not res!45099) (not e!46923))))

(assert (=> b!86495 (= res!45099 (redNodesHaveBlackChildren!0 (left!1649 t!48253)))))

(declare-fun b!86496 () Bool)

(declare-fun res!45098 () Bool)

(assert (=> b!86496 (=> (not res!45098) (not e!46922))))

(declare-fun isBlack!0 (Tree!106) Bool)

(assert (=> b!86496 (= res!45098 (isBlack!0 (right!1652 t!48253)))))

(declare-fun d!57711 () Bool)

(declare-fun res!45100 () Bool)

(declare-fun e!46921 () Bool)

(assert (=> d!57711 (=> res!45100 e!46921)))

(assert (=> d!57711 (= res!45100 (is-Empty!189 t!48253))))

(assert (=> d!57711 (= (redNodesHaveBlackChildren!0 t!48253) e!46921)))

(declare-fun b!86497 () Bool)

(declare-fun res!45102 () Bool)

(assert (=> b!86497 (=> (not res!45102) (not e!46922))))

(assert (=> b!86497 (= res!45102 (redNodesHaveBlackChildren!0 (left!1649 t!48253)))))

(declare-fun b!86498 () Bool)

(assert (=> b!86498 (= e!46921 e!46920)))

(declare-fun c!21418 () Bool)

(assert (=> b!86498 (= c!21418 (and (is-Node!150 t!48253) (is-Black!8 (color!39 t!48253))))))

(declare-fun b!86499 () Bool)

(assert (=> b!86499 (= e!46920 e!46922)))

(declare-fun res!45101 () Bool)

(assert (=> b!86499 (=> (not res!45101) (not e!46922))))

(assert (=> b!86499 (= res!45101 (isBlack!0 (left!1649 t!48253)))))

(assert (= (and d!57711 (not res!45100)) b!86498))

(assert (= (and b!86495 res!45099) b!86493))

(assert (= (and b!86499 res!45101) b!86496))

(assert (= (and b!86496 res!45098) b!86497))

(assert (= (and b!86497 res!45102) b!86494))

(assert (= (and b!86498 c!21418) b!86495))

(assert (= (and b!86498 (not c!21418)) b!86499))

(declare-fun m!82268 () Bool)

(assert (=> b!86499 m!82268))

(assert (=> b!86497 m!82236))

(assert (=> b!86495 m!82236))

(declare-fun m!82270 () Bool)

(assert (=> b!86496 m!82270))

(declare-fun m!82272 () Bool)

(assert (=> b!86493 m!82272))

(assert (=> b!86494 m!82272))

(assert (=> start!11312 d!57711))

(push 1)

(assert (not b!86476))

(assert (not b!86495))

(assert (not b!86413))

(assert (not b!86427))

(assert (not b!86467))

(assert (not b!86456))

(assert (not b!86499))

(assert (not b!86452))

(assert (not b!86496))

(assert (not b!86493))

(assert (not b!86453))

(assert (not b!86477))

(assert (not b!86494))

(assert (not b!86474))

(assert (not b!86475))

(assert (not b!86459))

(assert (not b!86421))

(assert (not b!86497))

(assert (not b!86415))

(assert (not b!86478))

(assert (not d!57703))

(assert (not b!86469))

(assert (not b!86457))

(assert (not b!86451))

(assert (not b!86423))

(assert (not b!86455))

(assert (not b!86468))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!57713 () Bool)

(declare-fun res!45104 () Bool)

(declare-fun e!46925 () Bool)

(assert (=> d!57713 (=> res!45104 e!46925)))

(assert (=> d!57713 (= res!45104 (not (is-Node!150 (left!1649 res!44630))))))

(assert (=> d!57713 (= (blackBalanced!0 (left!1649 res!44630)) e!46925)))

(declare-fun b!86500 () Bool)

(declare-fun e!46924 () Bool)

(assert (=> b!86500 (= e!46925 e!46924)))

(declare-fun res!45103 () Bool)

(assert (=> b!86500 (=> (not res!45103) (not e!46924))))

(assert (=> b!86500 (= res!45103 (blackBalanced!0 (left!1649 (left!1649 res!44630))))))

(declare-fun b!86501 () Bool)

(declare-fun res!45105 () Bool)

(assert (=> b!86501 (=> (not res!45105) (not e!46924))))

(assert (=> b!86501 (= res!45105 (blackBalanced!0 (right!1652 (left!1649 res!44630))))))

(declare-fun b!86502 () Bool)

(assert (=> b!86502 (= e!46924 (= (blackHeight!0 (left!1649 (left!1649 res!44630))) (blackHeight!0 (right!1652 (left!1649 res!44630)))))))

(assert (= (and d!57713 (not res!45104)) b!86500))

(assert (= (and b!86500 res!45103) b!86501))

(assert (= (and b!86501 res!45105) b!86502))

(declare-fun m!82274 () Bool)

(assert (=> b!86500 m!82274))

(declare-fun m!82276 () Bool)

(assert (=> b!86501 m!82276))

(declare-fun m!82278 () Bool)

(assert (=> b!86502 m!82278))

(declare-fun m!82280 () Bool)

(assert (=> b!86502 m!82280))

(assert (=> b!86476 d!57713))

(declare-fun d!57715 () Bool)

(declare-fun lt!20059 () Int)

(assert (=> d!57715 (>= lt!20059 0)))

(declare-fun e!46926 () Int)

(assert (=> d!57715 (= lt!20059 e!46926)))

(declare-fun c!21419 () Bool)

(assert (=> d!57715 (= c!21419 (is-Empty!189 (left!1649 t!48253)))))

(assert (=> d!57715 (= (size!3 (left!1649 t!48253)) lt!20059)))

(declare-fun b!86503 () Bool)

(assert (=> b!86503 (= e!46926 0)))

(declare-fun b!86504 () Bool)

(assert (=> b!86504 (= e!46926 (+ (+ (size!3 (left!1649 (left!1649 t!48253))) 1) (size!3 (right!1652 (left!1649 t!48253)))))))

(assert (= (and d!57715 c!21419) b!86503))

(assert (= (and d!57715 (not c!21419)) b!86504))

(declare-fun m!82282 () Bool)

(assert (=> b!86504 m!82282))

(declare-fun m!82284 () Bool)

(assert (=> b!86504 m!82284))

(assert (=> b!86423 d!57715))

(declare-fun d!57717 () Bool)

(declare-fun lt!20060 () Int)

(assert (=> d!57717 (>= lt!20060 0)))

(declare-fun e!46927 () Int)

(assert (=> d!57717 (= lt!20060 e!46927)))

(declare-fun c!21420 () Bool)

(assert (=> d!57717 (= c!21420 (is-Empty!189 (right!1652 t!48253)))))

(assert (=> d!57717 (= (size!3 (right!1652 t!48253)) lt!20060)))

(declare-fun b!86505 () Bool)

(assert (=> b!86505 (= e!46927 0)))

(declare-fun b!86506 () Bool)

(assert (=> b!86506 (= e!46927 (+ (+ (size!3 (left!1649 (right!1652 t!48253))) 1) (size!3 (right!1652 (right!1652 t!48253)))))))

(assert (= (and d!57717 c!21420) b!86505))

(assert (= (and d!57717 (not c!21420)) b!86506))

(declare-fun m!82286 () Bool)

(assert (=> b!86506 m!82286))

(declare-fun m!82288 () Bool)

(assert (=> b!86506 m!82288))

(assert (=> b!86423 d!57717))

(declare-fun d!57719 () Bool)

(declare-fun c!21421 () Bool)

(assert (=> d!57719 (= c!21421 (is-Empty!189 (left!1649 t!48253)))))

(declare-fun e!46928 () (Set Int))

(assert (=> d!57719 (= (content!8 (left!1649 t!48253)) e!46928)))

(declare-fun b!86507 () Bool)

(assert (=> b!86507 (= e!46928 (as emptyset (Set Int)))))

(declare-fun b!86508 () Bool)

(assert (=> b!86508 (= e!46928 (union (union (content!8 (left!1649 (left!1649 t!48253))) (insert (value!6796 (left!1649 t!48253)) (as emptyset (Set Int)))) (content!8 (right!1652 (left!1649 t!48253)))))))

(assert (= (and d!57719 c!21421) b!86507))

(assert (= (and d!57719 (not c!21421)) b!86508))

(declare-fun m!82290 () Bool)

(assert (=> b!86508 m!82290))

(declare-fun m!82292 () Bool)

(assert (=> b!86508 m!82292))

(declare-fun m!82294 () Bool)

(assert (=> b!86508 m!82294))

(assert (=> b!86415 d!57719))

(declare-fun d!57721 () Bool)

(declare-fun c!21422 () Bool)

(assert (=> d!57721 (= c!21422 (is-Empty!189 (right!1652 t!48253)))))

(declare-fun e!46929 () (Set Int))

(assert (=> d!57721 (= (content!8 (right!1652 t!48253)) e!46929)))

(declare-fun b!86509 () Bool)

(assert (=> b!86509 (= e!46929 (as emptyset (Set Int)))))

(declare-fun b!86510 () Bool)

(assert (=> b!86510 (= e!46929 (union (union (content!8 (left!1649 (right!1652 t!48253))) (insert (value!6796 (right!1652 t!48253)) (as emptyset (Set Int)))) (content!8 (right!1652 (right!1652 t!48253)))))))

(assert (= (and d!57721 c!21422) b!86509))

(assert (= (and d!57721 (not c!21422)) b!86510))

(declare-fun m!82296 () Bool)

(assert (=> b!86510 m!82296))

(declare-fun m!82298 () Bool)

(assert (=> b!86510 m!82298))

(declare-fun m!82300 () Bool)

(assert (=> b!86510 m!82300))

(assert (=> b!86415 d!57721))

(declare-fun b!86516 () Bool)

(declare-fun e!46932 () Int)

(declare-fun lt!20063 () Int)

(assert (=> b!86516 (= e!46932 (ite (and (is-Node!150 (left!1649 t!48253)) (is-Black!8 (color!39 (left!1649 t!48253)))) (+ lt!20063 1) lt!20063))))

(assert (=> b!86516 (= lt!20063 (blackHeight!0 (left!1649 (left!1649 t!48253))))))

(declare-fun d!57723 () Bool)

(declare-fun c!21425 () Bool)

(assert (=> d!57723 (= c!21425 (is-Empty!189 (left!1649 t!48253)))))

(assert (=> d!57723 (= (blackHeight!0 (left!1649 t!48253)) e!46932)))

(declare-fun b!86515 () Bool)

(assert (=> b!86515 (= e!46932 1)))

(assert (= (and d!57723 c!21425) b!86515))

(assert (= (and d!57723 (not c!21425)) b!86516))

(declare-fun m!82302 () Bool)

(assert (=> b!86516 m!82302))

(assert (=> b!86469 d!57723))

(declare-fun b!86518 () Bool)

(declare-fun e!46933 () Int)

(declare-fun lt!20064 () Int)

(assert (=> b!86518 (= e!46933 (ite (and (is-Node!150 (right!1652 t!48253)) (is-Black!8 (color!39 (right!1652 t!48253)))) (+ lt!20064 1) lt!20064))))

(assert (=> b!86518 (= lt!20064 (blackHeight!0 (left!1649 (right!1652 t!48253))))))

(declare-fun d!57725 () Bool)

(declare-fun c!21426 () Bool)

(assert (=> d!57725 (= c!21426 (is-Empty!189 (right!1652 t!48253)))))

(assert (=> d!57725 (= (blackHeight!0 (right!1652 t!48253)) e!46933)))

(declare-fun b!86517 () Bool)

(assert (=> b!86517 (= e!46933 1)))

(assert (= (and d!57725 c!21426) b!86517))

(assert (= (and d!57725 (not c!21426)) b!86518))

(declare-fun m!82304 () Bool)

(assert (=> b!86518 m!82304))

(assert (=> b!86469 d!57725))

(declare-fun b!86519 () Bool)

(declare-fun e!46937 () Bool)

(assert (=> b!86519 (= e!46937 (redNodesHaveBlackChildren!0 (right!1652 (left!1649 res!44630))))))

(declare-fun b!86520 () Bool)

(declare-fun e!46936 () Bool)

(assert (=> b!86520 (= e!46936 (redNodesHaveBlackChildren!0 (right!1652 (left!1649 res!44630))))))

(declare-fun b!86521 () Bool)

(declare-fun e!46934 () Bool)

(assert (=> b!86521 (= e!46934 e!46937)))

(declare-fun res!45110 () Bool)

(assert (=> b!86521 (=> (not res!45110) (not e!46937))))

(assert (=> b!86521 (= res!45110 (redNodesHaveBlackChildren!0 (left!1649 (left!1649 res!44630))))))

(declare-fun b!86522 () Bool)

(declare-fun res!45109 () Bool)

(assert (=> b!86522 (=> (not res!45109) (not e!46936))))

(assert (=> b!86522 (= res!45109 (isBlack!0 (right!1652 (left!1649 res!44630))))))

(declare-fun d!57727 () Bool)

(declare-fun res!45111 () Bool)

(declare-fun e!46935 () Bool)

(assert (=> d!57727 (=> res!45111 e!46935)))

(assert (=> d!57727 (= res!45111 (is-Empty!189 (left!1649 res!44630)))))

(assert (=> d!57727 (= (redNodesHaveBlackChildren!0 (left!1649 res!44630)) e!46935)))

(declare-fun b!86523 () Bool)

(declare-fun res!45113 () Bool)

(assert (=> b!86523 (=> (not res!45113) (not e!46936))))

(assert (=> b!86523 (= res!45113 (redNodesHaveBlackChildren!0 (left!1649 (left!1649 res!44630))))))

(declare-fun b!86524 () Bool)

(assert (=> b!86524 (= e!46935 e!46934)))

(declare-fun c!21427 () Bool)

(assert (=> b!86524 (= c!21427 (and (is-Node!150 (left!1649 res!44630)) (is-Black!8 (color!39 (left!1649 res!44630)))))))

(declare-fun b!86525 () Bool)

(assert (=> b!86525 (= e!46934 e!46936)))

(declare-fun res!45112 () Bool)

(assert (=> b!86525 (=> (not res!45112) (not e!46936))))

(assert (=> b!86525 (= res!45112 (isBlack!0 (left!1649 (left!1649 res!44630))))))

(assert (= (and d!57727 (not res!45111)) b!86524))

(assert (= (and b!86521 res!45110) b!86519))

(assert (= (and b!86525 res!45112) b!86522))

(assert (= (and b!86522 res!45109) b!86523))

(assert (= (and b!86523 res!45113) b!86520))

(assert (= (and b!86524 c!21427) b!86521))

(assert (= (and b!86524 (not c!21427)) b!86525))

(declare-fun m!82306 () Bool)

(assert (=> b!86525 m!82306))

(declare-fun m!82308 () Bool)

(assert (=> b!86523 m!82308))

(assert (=> b!86521 m!82308))

(declare-fun m!82310 () Bool)

(assert (=> b!86522 m!82310))

(declare-fun m!82312 () Bool)

(assert (=> b!86519 m!82312))

(assert (=> b!86520 m!82312))

(assert (=> b!86474 d!57727))

(declare-fun d!57729 () Bool)

(declare-fun c!21428 () Bool)

(assert (=> d!57729 (= c!21428 (is-Empty!189 lt!20043))))

(declare-fun e!46938 () (Set Int))

(assert (=> d!57729 (= (content!8 lt!20043) e!46938)))

(declare-fun b!86526 () Bool)

(assert (=> b!86526 (= e!46938 (as emptyset (Set Int)))))

(declare-fun b!86527 () Bool)

(assert (=> b!86527 (= e!46938 (union (union (content!8 (left!1649 lt!20043)) (insert (value!6796 lt!20043) (as emptyset (Set Int)))) (content!8 (right!1652 lt!20043))))))

(assert (= (and d!57729 c!21428) b!86526))

(assert (= (and d!57729 (not c!21428)) b!86527))

(declare-fun m!82314 () Bool)

(assert (=> b!86527 m!82314))

(declare-fun m!82316 () Bool)

(assert (=> b!86527 m!82316))

(declare-fun m!82318 () Bool)

(assert (=> b!86527 m!82318))

(assert (=> b!86427 d!57729))

(declare-fun d!57731 () Bool)

(declare-fun c!21429 () Bool)

(assert (=> d!57731 (= c!21429 (is-Empty!189 (Node!150 (color!39 t!48253) (ins!0 x!30388 (left!1649 t!48253)) (value!6796 t!48253) (right!1652 t!48253))))))

(declare-fun e!46939 () (Set Int))

(assert (=> d!57731 (= (content!8 (Node!150 (color!39 t!48253) (ins!0 x!30388 (left!1649 t!48253)) (value!6796 t!48253) (right!1652 t!48253))) e!46939)))

(declare-fun b!86528 () Bool)

(assert (=> b!86528 (= e!46939 (as emptyset (Set Int)))))

(declare-fun b!86529 () Bool)

(assert (=> b!86529 (= e!46939 (union (union (content!8 (left!1649 (Node!150 (color!39 t!48253) (ins!0 x!30388 (left!1649 t!48253)) (value!6796 t!48253) (right!1652 t!48253)))) (insert (value!6796 (Node!150 (color!39 t!48253) (ins!0 x!30388 (left!1649 t!48253)) (value!6796 t!48253) (right!1652 t!48253))) (as emptyset (Set Int)))) (content!8 (right!1652 (Node!150 (color!39 t!48253) (ins!0 x!30388 (left!1649 t!48253)) (value!6796 t!48253) (right!1652 t!48253))))))))

(assert (= (and d!57731 c!21429) b!86528))

(assert (= (and d!57731 (not c!21429)) b!86529))

(declare-fun m!82320 () Bool)

(assert (=> b!86529 m!82320))

(declare-fun m!82322 () Bool)

(assert (=> b!86529 m!82322))

(declare-fun m!82324 () Bool)

(assert (=> b!86529 m!82324))

(assert (=> b!86427 d!57731))

(declare-fun b!86530 () Bool)

(declare-fun e!46943 () Bool)

(assert (=> b!86530 (= e!46943 (redNodesHaveBlackChildren!0 (right!1652 (right!1652 t!48253))))))

(declare-fun b!86531 () Bool)

(declare-fun e!46942 () Bool)

(assert (=> b!86531 (= e!46942 (redNodesHaveBlackChildren!0 (right!1652 (right!1652 t!48253))))))

(declare-fun b!86532 () Bool)

(declare-fun e!46940 () Bool)

(assert (=> b!86532 (= e!46940 e!46943)))

(declare-fun res!45115 () Bool)

(assert (=> b!86532 (=> (not res!45115) (not e!46943))))

(assert (=> b!86532 (= res!45115 (redNodesHaveBlackChildren!0 (left!1649 (right!1652 t!48253))))))

(declare-fun b!86533 () Bool)

(declare-fun res!45114 () Bool)

(assert (=> b!86533 (=> (not res!45114) (not e!46942))))

(assert (=> b!86533 (= res!45114 (isBlack!0 (right!1652 (right!1652 t!48253))))))

(declare-fun d!57733 () Bool)

(declare-fun res!45116 () Bool)

(declare-fun e!46941 () Bool)

(assert (=> d!57733 (=> res!45116 e!46941)))

(assert (=> d!57733 (= res!45116 (is-Empty!189 (right!1652 t!48253)))))

(assert (=> d!57733 (= (redNodesHaveBlackChildren!0 (right!1652 t!48253)) e!46941)))

(declare-fun b!86534 () Bool)

(declare-fun res!45118 () Bool)

(assert (=> b!86534 (=> (not res!45118) (not e!46942))))

(assert (=> b!86534 (= res!45118 (redNodesHaveBlackChildren!0 (left!1649 (right!1652 t!48253))))))

(declare-fun b!86535 () Bool)

(assert (=> b!86535 (= e!46941 e!46940)))

(declare-fun c!21430 () Bool)

(assert (=> b!86535 (= c!21430 (and (is-Node!150 (right!1652 t!48253)) (is-Black!8 (color!39 (right!1652 t!48253)))))))

(declare-fun b!86536 () Bool)

(assert (=> b!86536 (= e!46940 e!46942)))

(declare-fun res!45117 () Bool)

(assert (=> b!86536 (=> (not res!45117) (not e!46942))))

(assert (=> b!86536 (= res!45117 (isBlack!0 (left!1649 (right!1652 t!48253))))))

(assert (= (and d!57733 (not res!45116)) b!86535))

(assert (= (and b!86532 res!45115) b!86530))

(assert (= (and b!86536 res!45117) b!86533))

(assert (= (and b!86533 res!45114) b!86534))

(assert (= (and b!86534 res!45118) b!86531))

(assert (= (and b!86535 c!21430) b!86532))

(assert (= (and b!86535 (not c!21430)) b!86536))

(declare-fun m!82326 () Bool)

(assert (=> b!86536 m!82326))

(declare-fun m!82328 () Bool)

(assert (=> b!86534 m!82328))

(assert (=> b!86532 m!82328))

(declare-fun m!82330 () Bool)

(assert (=> b!86533 m!82330))

(declare-fun m!82332 () Bool)

(assert (=> b!86530 m!82332))

(assert (=> b!86531 m!82332))

(assert (=> b!86493 d!57733))

(declare-fun b!86538 () Bool)

(declare-fun e!46944 () Int)

(declare-fun lt!20065 () Int)

(assert (=> b!86538 (= e!46944 (ite (and (is-Node!150 (left!1649 res!44630)) (is-Black!8 (color!39 (left!1649 res!44630)))) (+ lt!20065 1) lt!20065))))

(assert (=> b!86538 (= lt!20065 (blackHeight!0 (left!1649 (left!1649 res!44630))))))

(declare-fun d!57735 () Bool)

(declare-fun c!21431 () Bool)

(assert (=> d!57735 (= c!21431 (is-Empty!189 (left!1649 res!44630)))))

(assert (=> d!57735 (= (blackHeight!0 (left!1649 res!44630)) e!46944)))

(declare-fun b!86537 () Bool)

(assert (=> b!86537 (= e!46944 1)))

(assert (= (and d!57735 c!21431) b!86537))

(assert (= (and d!57735 (not c!21431)) b!86538))

(assert (=> b!86538 m!82278))

(assert (=> b!86478 d!57735))

(declare-fun b!86540 () Bool)

(declare-fun e!46945 () Int)

(declare-fun lt!20066 () Int)

(assert (=> b!86540 (= e!46945 (ite (and (is-Node!150 (right!1652 res!44630)) (is-Black!8 (color!39 (right!1652 res!44630)))) (+ lt!20066 1) lt!20066))))

(assert (=> b!86540 (= lt!20066 (blackHeight!0 (left!1649 (right!1652 res!44630))))))

(declare-fun d!57737 () Bool)

(declare-fun c!21432 () Bool)

(assert (=> d!57737 (= c!21432 (is-Empty!189 (right!1652 res!44630)))))

(assert (=> d!57737 (= (blackHeight!0 (right!1652 res!44630)) e!46945)))

(declare-fun b!86539 () Bool)

(assert (=> b!86539 (= e!46945 1)))

(assert (= (and d!57737 c!21432) b!86539))

(assert (= (and d!57737 (not c!21432)) b!86540))

(declare-fun m!82334 () Bool)

(assert (=> b!86540 m!82334))

(assert (=> b!86478 d!57737))

(declare-fun b!86541 () Bool)

(declare-fun e!46948 () Tree!106)

(declare-fun res!45124 () Tree!106)

(assert (=> b!86541 (= e!46948 res!45124)))

(assert (=> b!86541 true))

(declare-fun b!86542 () Bool)

(declare-fun res!45119 () Bool)

(declare-fun e!46947 () Bool)

(assert (=> b!86542 (=> (not res!45119) (not e!46947))))

(declare-fun lt!20070 () Tree!106)

(assert (=> b!86542 (= res!45119 (<= (size!3 lt!20070) (+ (size!3 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) 1)))))

(declare-fun b!86543 () Bool)

(assert (=> b!86543 (= e!46947 (blackBalanced!0 lt!20070))))

(declare-fun b!86544 () Bool)

(declare-fun lt!20067 () Bool)

(assert (=> b!86544 (= e!46948 (ins!0 x!30388 (ite lt!20067 (left!1649 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) (right!1652 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))))))))

(declare-fun b!86545 () Bool)

(declare-fun e!46949 () Tree!106)

(assert (=> b!86545 (= e!46949 (Node!150 Red!8 Empty!189 x!30388 Empty!189))))

(declare-fun lt!20068 () Bool)

(declare-fun e!46946 () Tree!106)

(declare-fun lt!20069 () Tree!106)

(declare-fun b!86546 () Bool)

(assert (=> b!86546 (= e!46946 (balance!0 (color!39 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) (ite lt!20068 lt!20069 (left!1649 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253))))) (value!6796 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) (ite lt!20068 (right!1652 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) lt!20069)))))

(declare-fun b!86547 () Bool)

(declare-fun res!45123 () Bool)

(assert (=> b!86547 (=> (not res!45123) (not e!46947))))

(assert (=> b!86547 (= res!45123 (redDescHaveBlackChildren!0 lt!20070))))

(declare-fun b!86548 () Bool)

(declare-fun e!46950 () Bool)

(assert (=> b!86548 (= e!46950 (blackBalanced!0 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))))))

(declare-fun b!86549 () Bool)

(declare-fun lt!20071 () Tree!106)

(assert (=> b!86549 (= e!46949 (ite lt!20067 lt!20071 (ite (= x!30388 (value!6796 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253))))) (Node!150 (color!39 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) (left!1649 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) (value!6796 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) (right!1652 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253))))) lt!20071)))))

(assert (=> b!86549 (= lt!20071 e!46946)))

(declare-fun c!21433 () Bool)

(assert (=> b!86549 (= c!21433 (or lt!20068 (and (not lt!20067) (not (= x!30388 (value!6796 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))))))))))

(assert (=> b!86549 (= lt!20068 lt!20067)))

(assert (=> b!86549 (= lt!20069 e!46948)))

(declare-fun c!21435 () Bool)

(assert (=> b!86549 (= c!21435 (or lt!20067 (not (= x!30388 (value!6796 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253))))))))))

(assert (=> b!86549 (= lt!20067 (< x!30388 (value!6796 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253))))))))

(declare-fun b!86550 () Bool)

(declare-fun res!45122 () Bool)

(assert (=> b!86550 (=> (not res!45122) (not e!46947))))

(assert (=> b!86550 (= res!45122 (<= (size!3 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) (size!3 lt!20070)))))

(declare-fun b!86551 () Bool)

(declare-fun res!45125 () Tree!106)

(assert (=> b!86551 (= e!46946 res!45125)))

(assert (=> b!86551 true))

(assert (=> b!86551 true))

(declare-fun d!57739 () Bool)

(assert (=> d!57739 e!46947))

(declare-fun res!45121 () Bool)

(assert (=> d!57739 (=> (not res!45121) (not e!46947))))

(assert (=> d!57739 (= res!45121 (= (content!8 lt!20070) (union (content!8 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) (insert x!30388 (as emptyset (Set Int))))))))

(assert (=> d!57739 (= lt!20070 e!46949)))

(declare-fun c!21434 () Bool)

(assert (=> d!57739 (= c!21434 (is-Empty!189 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))))))

(assert (=> d!57739 e!46950))

(declare-fun res!45120 () Bool)

(assert (=> d!57739 (=> (not res!45120) (not e!46950))))

(assert (=> d!57739 (= res!45120 (redNodesHaveBlackChildren!0 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))))))

(assert (=> d!57739 (= (ins!0 x!30388 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) lt!20070)))

(assert (= (and d!57739 res!45120) b!86548))

(assert (= (and b!86549 c!21435) b!86544))

(assert (= (and b!86549 (not c!21435)) b!86541))

(assert (= (and b!86549 c!21433) b!86546))

(assert (= (and b!86549 (not c!21433)) b!86551))

(assert (= (and d!57739 c!21434) b!86545))

(assert (= (and d!57739 (not c!21434)) b!86549))

(assert (= (and d!57739 res!45121) b!86550))

(assert (= (and b!86550 res!45122) b!86542))

(assert (= (and b!86542 res!45119) b!86547))

(assert (= (and b!86547 res!45123) b!86543))

(declare-fun m!82336 () Bool)

(assert (=> d!57739 m!82336))

(declare-fun m!82338 () Bool)

(assert (=> d!57739 m!82338))

(assert (=> d!57739 m!82202))

(declare-fun m!82340 () Bool)

(assert (=> d!57739 m!82340))

(declare-fun m!82342 () Bool)

(assert (=> b!86546 m!82342))

(declare-fun m!82344 () Bool)

(assert (=> b!86544 m!82344))

(declare-fun m!82346 () Bool)

(assert (=> b!86547 m!82346))

(declare-fun m!82348 () Bool)

(assert (=> b!86543 m!82348))

(declare-fun m!82350 () Bool)

(assert (=> b!86550 m!82350))

(declare-fun m!82352 () Bool)

(assert (=> b!86550 m!82352))

(declare-fun m!82354 () Bool)

(assert (=> b!86548 m!82354))

(assert (=> b!86542 m!82352))

(assert (=> b!86542 m!82350))

(assert (=> b!86453 d!57739))

(declare-fun b!86552 () Bool)

(declare-fun e!46954 () Bool)

(assert (=> b!86552 (= e!46954 (redNodesHaveBlackChildren!0 (right!1652 (right!1652 res!44630))))))

(declare-fun b!86553 () Bool)

(declare-fun e!46953 () Bool)

(assert (=> b!86553 (= e!46953 (redNodesHaveBlackChildren!0 (right!1652 (right!1652 res!44630))))))

(declare-fun b!86554 () Bool)

(declare-fun e!46951 () Bool)

(assert (=> b!86554 (= e!46951 e!46954)))

(declare-fun res!45127 () Bool)

(assert (=> b!86554 (=> (not res!45127) (not e!46954))))

(assert (=> b!86554 (= res!45127 (redNodesHaveBlackChildren!0 (left!1649 (right!1652 res!44630))))))

(declare-fun b!86555 () Bool)

(declare-fun res!45126 () Bool)

(assert (=> b!86555 (=> (not res!45126) (not e!46953))))

(assert (=> b!86555 (= res!45126 (isBlack!0 (right!1652 (right!1652 res!44630))))))

(declare-fun d!57741 () Bool)

(declare-fun res!45128 () Bool)

(declare-fun e!46952 () Bool)

(assert (=> d!57741 (=> res!45128 e!46952)))

(assert (=> d!57741 (= res!45128 (is-Empty!189 (right!1652 res!44630)))))

(assert (=> d!57741 (= (redNodesHaveBlackChildren!0 (right!1652 res!44630)) e!46952)))

(declare-fun b!86556 () Bool)

(declare-fun res!45130 () Bool)

(assert (=> b!86556 (=> (not res!45130) (not e!46953))))

(assert (=> b!86556 (= res!45130 (redNodesHaveBlackChildren!0 (left!1649 (right!1652 res!44630))))))

(declare-fun b!86557 () Bool)

(assert (=> b!86557 (= e!46952 e!46951)))

(declare-fun c!21436 () Bool)

(assert (=> b!86557 (= c!21436 (and (is-Node!150 (right!1652 res!44630)) (is-Black!8 (color!39 (right!1652 res!44630)))))))

(declare-fun b!86558 () Bool)

(assert (=> b!86558 (= e!46951 e!46953)))

(declare-fun res!45129 () Bool)

(assert (=> b!86558 (=> (not res!45129) (not e!46953))))

(assert (=> b!86558 (= res!45129 (isBlack!0 (left!1649 (right!1652 res!44630))))))

(assert (= (and d!57741 (not res!45128)) b!86557))

(assert (= (and b!86554 res!45127) b!86552))

(assert (= (and b!86558 res!45129) b!86555))

(assert (= (and b!86555 res!45126) b!86556))

(assert (= (and b!86556 res!45130) b!86553))

(assert (= (and b!86557 c!21436) b!86554))

(assert (= (and b!86557 (not c!21436)) b!86558))

(declare-fun m!82356 () Bool)

(assert (=> b!86558 m!82356))

(declare-fun m!82358 () Bool)

(assert (=> b!86556 m!82358))

(assert (=> b!86554 m!82358))

(declare-fun m!82360 () Bool)

(assert (=> b!86555 m!82360))

(declare-fun m!82362 () Bool)

(assert (=> b!86552 m!82362))

(assert (=> b!86553 m!82362))

(assert (=> b!86475 d!57741))

(declare-fun d!57743 () Bool)

(declare-fun e!46955 () Bool)

(assert (=> d!57743 e!46955))

(declare-fun res!45131 () Bool)

(assert (=> d!57743 (=> (not res!45131) (not e!46955))))

(declare-fun lt!20072 () Tree!106)

(assert (=> d!57743 (= res!45131 (is-Node!150 lt!20072))))

(assert (=> d!57743 (= lt!20072 (ite (and (is-Black!8 (color!39 (left!1649 t!48253))) (is-Node!150 (ite lt!20055 lt!20056 (left!1649 (left!1649 t!48253)))) (is-Red!8 (color!39 (ite lt!20055 lt!20056 (left!1649 (left!1649 t!48253))))) (is-Node!150 (left!1649 (ite lt!20055 lt!20056 (left!1649 (left!1649 t!48253))))) (is-Red!8 (color!39 (left!1649 (ite lt!20055 lt!20056 (left!1649 (left!1649 t!48253))))))) (Node!150 Red!8 (Node!150 Black!8 (left!1649 (left!1649 (ite lt!20055 lt!20056 (left!1649 (left!1649 t!48253))))) (value!6796 (left!1649 (ite lt!20055 lt!20056 (left!1649 (left!1649 t!48253))))) (right!1652 (left!1649 (ite lt!20055 lt!20056 (left!1649 (left!1649 t!48253)))))) (value!6796 (ite lt!20055 lt!20056 (left!1649 (left!1649 t!48253)))) (Node!150 Black!8 (right!1652 (ite lt!20055 lt!20056 (left!1649 (left!1649 t!48253)))) (value!6796 (left!1649 t!48253)) (ite lt!20055 (right!1652 (left!1649 t!48253)) lt!20056))) (ite (and (is-Black!8 (color!39 (left!1649 t!48253))) (is-Node!150 (ite lt!20055 lt!20056 (left!1649 (left!1649 t!48253)))) (is-Red!8 (color!39 (ite lt!20055 lt!20056 (left!1649 (left!1649 t!48253))))) (is-Node!150 (right!1652 (ite lt!20055 lt!20056 (left!1649 (left!1649 t!48253))))) (is-Red!8 (color!39 (right!1652 (ite lt!20055 lt!20056 (left!1649 (left!1649 t!48253))))))) (Node!150 Red!8 (Node!150 Black!8 (left!1649 (ite lt!20055 lt!20056 (left!1649 (left!1649 t!48253)))) (value!6796 (ite lt!20055 lt!20056 (left!1649 (left!1649 t!48253)))) (left!1649 (right!1652 (ite lt!20055 lt!20056 (left!1649 (left!1649 t!48253)))))) (value!6796 (right!1652 (ite lt!20055 lt!20056 (left!1649 (left!1649 t!48253))))) (Node!150 Black!8 (right!1652 (right!1652 (ite lt!20055 lt!20056 (left!1649 (left!1649 t!48253))))) (value!6796 (left!1649 t!48253)) (ite lt!20055 (right!1652 (left!1649 t!48253)) lt!20056))) (ite (and (is-Black!8 (color!39 (left!1649 t!48253))) (is-Node!150 (ite lt!20055 (right!1652 (left!1649 t!48253)) lt!20056)) (is-Red!8 (color!39 (ite lt!20055 (right!1652 (left!1649 t!48253)) lt!20056))) (is-Node!150 (left!1649 (ite lt!20055 (right!1652 (left!1649 t!48253)) lt!20056))) (is-Red!8 (color!39 (left!1649 (ite lt!20055 (right!1652 (left!1649 t!48253)) lt!20056))))) (Node!150 Red!8 (Node!150 Black!8 (ite lt!20055 lt!20056 (left!1649 (left!1649 t!48253))) (value!6796 (left!1649 t!48253)) (left!1649 (left!1649 (ite lt!20055 (right!1652 (left!1649 t!48253)) lt!20056)))) (value!6796 (left!1649 (ite lt!20055 (right!1652 (left!1649 t!48253)) lt!20056))) (Node!150 Black!8 (right!1652 (left!1649 (ite lt!20055 (right!1652 (left!1649 t!48253)) lt!20056))) (value!6796 (ite lt!20055 (right!1652 (left!1649 t!48253)) lt!20056)) (right!1652 (ite lt!20055 (right!1652 (left!1649 t!48253)) lt!20056)))) (ite (and (is-Black!8 (color!39 (left!1649 t!48253))) (is-Node!150 (ite lt!20055 (right!1652 (left!1649 t!48253)) lt!20056)) (is-Red!8 (color!39 (ite lt!20055 (right!1652 (left!1649 t!48253)) lt!20056))) (is-Node!150 (right!1652 (ite lt!20055 (right!1652 (left!1649 t!48253)) lt!20056))) (is-Red!8 (color!39 (right!1652 (ite lt!20055 (right!1652 (left!1649 t!48253)) lt!20056))))) (Node!150 Red!8 (Node!150 Black!8 (ite lt!20055 lt!20056 (left!1649 (left!1649 t!48253))) (value!6796 (left!1649 t!48253)) (left!1649 (ite lt!20055 (right!1652 (left!1649 t!48253)) lt!20056))) (value!6796 (ite lt!20055 (right!1652 (left!1649 t!48253)) lt!20056)) (Node!150 Black!8 (left!1649 (right!1652 (ite lt!20055 (right!1652 (left!1649 t!48253)) lt!20056))) (value!6796 (right!1652 (ite lt!20055 (right!1652 (left!1649 t!48253)) lt!20056))) (right!1652 (right!1652 (ite lt!20055 (right!1652 (left!1649 t!48253)) lt!20056))))) (Node!150 (color!39 (left!1649 t!48253)) (ite lt!20055 lt!20056 (left!1649 (left!1649 t!48253))) (value!6796 (left!1649 t!48253)) (ite lt!20055 (right!1652 (left!1649 t!48253)) lt!20056)))))))))

(assert (=> d!57743 (= (balance!0 (color!39 (left!1649 t!48253)) (ite lt!20055 lt!20056 (left!1649 (left!1649 t!48253))) (value!6796 (left!1649 t!48253)) (ite lt!20055 (right!1652 (left!1649 t!48253)) lt!20056)) lt!20072)))

(declare-fun b!86559 () Bool)

(assert (=> b!86559 (= e!46955 (= (content!8 lt!20072) (content!8 (Node!150 (color!39 (left!1649 t!48253)) (ite lt!20055 lt!20056 (left!1649 (left!1649 t!48253))) (value!6796 (left!1649 t!48253)) (ite lt!20055 (right!1652 (left!1649 t!48253)) lt!20056)))))))

(assert (= (and d!57743 res!45131) b!86559))

(declare-fun m!82364 () Bool)

(assert (=> b!86559 m!82364))

(declare-fun m!82366 () Bool)

(assert (=> b!86559 m!82366))

(assert (=> b!86455 d!57743))

(declare-fun d!57745 () Bool)

(declare-fun c!21437 () Bool)

(assert (=> d!57745 (= c!21437 (is-Empty!189 (left!1649 res!44630)))))

(declare-fun e!46956 () (Set Int))

(assert (=> d!57745 (= (content!8 (left!1649 res!44630)) e!46956)))

(declare-fun b!86560 () Bool)

(assert (=> b!86560 (= e!46956 (as emptyset (Set Int)))))

(declare-fun b!86561 () Bool)

(assert (=> b!86561 (= e!46956 (union (union (content!8 (left!1649 (left!1649 res!44630))) (insert (value!6796 (left!1649 res!44630)) (as emptyset (Set Int)))) (content!8 (right!1652 (left!1649 res!44630)))))))

(assert (= (and d!57745 c!21437) b!86560))

(assert (= (and d!57745 (not c!21437)) b!86561))

(declare-fun m!82368 () Bool)

(assert (=> b!86561 m!82368))

(declare-fun m!82370 () Bool)

(assert (=> b!86561 m!82370))

(declare-fun m!82372 () Bool)

(assert (=> b!86561 m!82372))

(assert (=> b!86413 d!57745))

(declare-fun d!57747 () Bool)

(declare-fun c!21438 () Bool)

(assert (=> d!57747 (= c!21438 (is-Empty!189 (right!1652 res!44630)))))

(declare-fun e!46957 () (Set Int))

(assert (=> d!57747 (= (content!8 (right!1652 res!44630)) e!46957)))

(declare-fun b!86562 () Bool)

(assert (=> b!86562 (= e!46957 (as emptyset (Set Int)))))

(declare-fun b!86563 () Bool)

(assert (=> b!86563 (= e!46957 (union (union (content!8 (left!1649 (right!1652 res!44630))) (insert (value!6796 (right!1652 res!44630)) (as emptyset (Set Int)))) (content!8 (right!1652 (right!1652 res!44630)))))))

(assert (= (and d!57747 c!21438) b!86562))

(assert (= (and d!57747 (not c!21438)) b!86563))

(declare-fun m!82374 () Bool)

(assert (=> b!86563 m!82374))

(declare-fun m!82376 () Bool)

(assert (=> b!86563 m!82376))

(declare-fun m!82378 () Bool)

(assert (=> b!86563 m!82378))

(assert (=> b!86413 d!57747))

(assert (=> b!86494 d!57733))

(declare-fun d!57749 () Bool)

(declare-fun res!45133 () Bool)

(declare-fun e!46959 () Bool)

(assert (=> d!57749 (=> res!45133 e!46959)))

(assert (=> d!57749 (= res!45133 (not (is-Node!150 (left!1649 t!48253))))))

(assert (=> d!57749 (= (blackBalanced!0 (left!1649 t!48253)) e!46959)))

(declare-fun b!86564 () Bool)

(declare-fun e!46958 () Bool)

(assert (=> b!86564 (= e!46959 e!46958)))

(declare-fun res!45132 () Bool)

(assert (=> b!86564 (=> (not res!45132) (not e!46958))))

(assert (=> b!86564 (= res!45132 (blackBalanced!0 (left!1649 (left!1649 t!48253))))))

(declare-fun b!86565 () Bool)

(declare-fun res!45134 () Bool)

(assert (=> b!86565 (=> (not res!45134) (not e!46958))))

(assert (=> b!86565 (= res!45134 (blackBalanced!0 (right!1652 (left!1649 t!48253))))))

(declare-fun b!86566 () Bool)

(assert (=> b!86566 (= e!46958 (= (blackHeight!0 (left!1649 (left!1649 t!48253))) (blackHeight!0 (right!1652 (left!1649 t!48253)))))))

(assert (= (and d!57749 (not res!45133)) b!86564))

(assert (= (and b!86564 res!45132) b!86565))

(assert (= (and b!86565 res!45134) b!86566))

(declare-fun m!82380 () Bool)

(assert (=> b!86564 m!82380))

(declare-fun m!82382 () Bool)

(assert (=> b!86565 m!82382))

(assert (=> b!86566 m!82302))

(declare-fun m!82384 () Bool)

(assert (=> b!86566 m!82384))

(assert (=> b!86457 d!57749))

(declare-fun d!57751 () Bool)

(declare-fun lt!20073 () Int)

(assert (=> d!57751 (>= lt!20073 0)))

(declare-fun e!46960 () Int)

(assert (=> d!57751 (= lt!20073 e!46960)))

(declare-fun c!21439 () Bool)

(assert (=> d!57751 (= c!21439 (is-Empty!189 (left!1649 res!44630)))))

(assert (=> d!57751 (= (size!3 (left!1649 res!44630)) lt!20073)))

(declare-fun b!86567 () Bool)

(assert (=> b!86567 (= e!46960 0)))

(declare-fun b!86568 () Bool)

(assert (=> b!86568 (= e!46960 (+ (+ (size!3 (left!1649 (left!1649 res!44630))) 1) (size!3 (right!1652 (left!1649 res!44630)))))))

(assert (= (and d!57751 c!21439) b!86567))

(assert (= (and d!57751 (not c!21439)) b!86568))

(declare-fun m!82386 () Bool)

(assert (=> b!86568 m!82386))

(declare-fun m!82388 () Bool)

(assert (=> b!86568 m!82388))

(assert (=> b!86421 d!57751))

(declare-fun d!57753 () Bool)

(declare-fun lt!20074 () Int)

(assert (=> d!57753 (>= lt!20074 0)))

(declare-fun e!46961 () Int)

(assert (=> d!57753 (= lt!20074 e!46961)))

(declare-fun c!21440 () Bool)

(assert (=> d!57753 (= c!21440 (is-Empty!189 (right!1652 res!44630)))))

(assert (=> d!57753 (= (size!3 (right!1652 res!44630)) lt!20074)))

(declare-fun b!86569 () Bool)

(assert (=> b!86569 (= e!46961 0)))

(declare-fun b!86570 () Bool)

(assert (=> b!86570 (= e!46961 (+ (+ (size!3 (left!1649 (right!1652 res!44630))) 1) (size!3 (right!1652 (right!1652 res!44630)))))))

(assert (= (and d!57753 c!21440) b!86569))

(assert (= (and d!57753 (not c!21440)) b!86570))

(declare-fun m!82390 () Bool)

(assert (=> b!86570 m!82390))

(declare-fun m!82392 () Bool)

(assert (=> b!86570 m!82392))

(assert (=> b!86421 d!57753))

(declare-fun d!57755 () Bool)

(declare-fun res!45136 () Bool)

(declare-fun e!46963 () Bool)

(assert (=> d!57755 (=> res!45136 e!46963)))

(assert (=> d!57755 (= res!45136 (not (is-Node!150 (right!1652 res!44630))))))

(assert (=> d!57755 (= (blackBalanced!0 (right!1652 res!44630)) e!46963)))

(declare-fun b!86571 () Bool)

(declare-fun e!46962 () Bool)

(assert (=> b!86571 (= e!46963 e!46962)))

(declare-fun res!45135 () Bool)

(assert (=> b!86571 (=> (not res!45135) (not e!46962))))

(assert (=> b!86571 (= res!45135 (blackBalanced!0 (left!1649 (right!1652 res!44630))))))

(declare-fun b!86572 () Bool)

(declare-fun res!45137 () Bool)

(assert (=> b!86572 (=> (not res!45137) (not e!46962))))

(assert (=> b!86572 (= res!45137 (blackBalanced!0 (right!1652 (right!1652 res!44630))))))

(declare-fun b!86573 () Bool)

(assert (=> b!86573 (= e!46962 (= (blackHeight!0 (left!1649 (right!1652 res!44630))) (blackHeight!0 (right!1652 (right!1652 res!44630)))))))

(assert (= (and d!57755 (not res!45136)) b!86571))

(assert (= (and b!86571 res!45135) b!86572))

(assert (= (and b!86572 res!45137) b!86573))

(declare-fun m!82394 () Bool)

(assert (=> b!86571 m!82394))

(declare-fun m!82396 () Bool)

(assert (=> b!86572 m!82396))

(assert (=> b!86573 m!82334))

(declare-fun m!82398 () Bool)

(assert (=> b!86573 m!82398))

(assert (=> b!86477 d!57755))

(assert (=> b!86459 d!57715))

(declare-fun d!57757 () Bool)

(declare-fun lt!20075 () Int)

(assert (=> d!57757 (>= lt!20075 0)))

(declare-fun e!46964 () Int)

(assert (=> d!57757 (= lt!20075 e!46964)))

(declare-fun c!21441 () Bool)

(assert (=> d!57757 (= c!21441 (is-Empty!189 lt!20057))))

(assert (=> d!57757 (= (size!3 lt!20057) lt!20075)))

(declare-fun b!86574 () Bool)

(assert (=> b!86574 (= e!46964 0)))

(declare-fun b!86575 () Bool)

(assert (=> b!86575 (= e!46964 (+ (+ (size!3 (left!1649 lt!20057)) 1) (size!3 (right!1652 lt!20057))))))

(assert (= (and d!57757 c!21441) b!86574))

(assert (= (and d!57757 (not c!21441)) b!86575))

(declare-fun m!82400 () Bool)

(assert (=> b!86575 m!82400))

(declare-fun m!82402 () Bool)

(assert (=> b!86575 m!82402))

(assert (=> b!86459 d!57757))

(declare-fun d!57759 () Bool)

(declare-fun res!45138 () Bool)

(declare-fun e!46965 () Bool)

(assert (=> d!57759 (=> res!45138 e!46965)))

(assert (=> d!57759 (= res!45138 (is-Empty!189 lt!20057))))

(assert (=> d!57759 (= (redDescHaveBlackChildren!0 lt!20057) e!46965)))

(declare-fun b!86576 () Bool)

(declare-fun e!46966 () Bool)

(assert (=> b!86576 (= e!46965 e!46966)))

(declare-fun res!45139 () Bool)

(assert (=> b!86576 (=> (not res!45139) (not e!46966))))

(assert (=> b!86576 (= res!45139 (redNodesHaveBlackChildren!0 (left!1649 lt!20057)))))

(declare-fun b!86577 () Bool)

(assert (=> b!86577 (= e!46966 (redNodesHaveBlackChildren!0 (right!1652 lt!20057)))))

(assert (= (and d!57759 (not res!45138)) b!86576))

(assert (= (and b!86576 res!45139) b!86577))

(declare-fun m!82404 () Bool)

(assert (=> b!86576 m!82404))

(declare-fun m!82406 () Bool)

(assert (=> b!86577 m!82406))

(assert (=> b!86456 d!57759))

(declare-fun d!57761 () Bool)

(declare-fun res!45141 () Bool)

(declare-fun e!46968 () Bool)

(assert (=> d!57761 (=> res!45141 e!46968)))

(assert (=> d!57761 (= res!45141 (not (is-Node!150 lt!20057)))))

(assert (=> d!57761 (= (blackBalanced!0 lt!20057) e!46968)))

(declare-fun b!86578 () Bool)

(declare-fun e!46967 () Bool)

(assert (=> b!86578 (= e!46968 e!46967)))

(declare-fun res!45140 () Bool)

(assert (=> b!86578 (=> (not res!45140) (not e!46967))))

(assert (=> b!86578 (= res!45140 (blackBalanced!0 (left!1649 lt!20057)))))

(declare-fun b!86579 () Bool)

(declare-fun res!45142 () Bool)

(assert (=> b!86579 (=> (not res!45142) (not e!46967))))

(assert (=> b!86579 (= res!45142 (blackBalanced!0 (right!1652 lt!20057)))))

(declare-fun b!86580 () Bool)

(assert (=> b!86580 (= e!46967 (= (blackHeight!0 (left!1649 lt!20057)) (blackHeight!0 (right!1652 lt!20057))))))

(assert (= (and d!57761 (not res!45141)) b!86578))

(assert (= (and b!86578 res!45140) b!86579))

(assert (= (and b!86579 res!45142) b!86580))

(declare-fun m!82408 () Bool)

(assert (=> b!86578 m!82408))

(declare-fun m!82410 () Bool)

(assert (=> b!86579 m!82410))

(declare-fun m!82412 () Bool)

(assert (=> b!86580 m!82412))

(declare-fun m!82414 () Bool)

(assert (=> b!86580 m!82414))

(assert (=> b!86452 d!57761))

(assert (=> b!86467 d!57749))

(declare-fun d!57763 () Bool)

(declare-fun res!45144 () Bool)

(declare-fun e!46970 () Bool)

(assert (=> d!57763 (=> res!45144 e!46970)))

(assert (=> d!57763 (= res!45144 (not (is-Node!150 (right!1652 t!48253))))))

(assert (=> d!57763 (= (blackBalanced!0 (right!1652 t!48253)) e!46970)))

(declare-fun b!86581 () Bool)

(declare-fun e!46969 () Bool)

(assert (=> b!86581 (= e!46970 e!46969)))

(declare-fun res!45143 () Bool)

(assert (=> b!86581 (=> (not res!45143) (not e!46969))))

(assert (=> b!86581 (= res!45143 (blackBalanced!0 (left!1649 (right!1652 t!48253))))))

(declare-fun b!86582 () Bool)

(declare-fun res!45145 () Bool)

(assert (=> b!86582 (=> (not res!45145) (not e!46969))))

(assert (=> b!86582 (= res!45145 (blackBalanced!0 (right!1652 (right!1652 t!48253))))))

(declare-fun b!86583 () Bool)

(assert (=> b!86583 (= e!46969 (= (blackHeight!0 (left!1649 (right!1652 t!48253))) (blackHeight!0 (right!1652 (right!1652 t!48253)))))))

(assert (= (and d!57763 (not res!45144)) b!86581))

(assert (= (and b!86581 res!45143) b!86582))

(assert (= (and b!86582 res!45145) b!86583))

(declare-fun m!82416 () Bool)

(assert (=> b!86581 m!82416))

(declare-fun m!82418 () Bool)

(assert (=> b!86582 m!82418))

(assert (=> b!86583 m!82304))

(declare-fun m!82420 () Bool)

(assert (=> b!86583 m!82420))

(assert (=> b!86468 d!57763))

(declare-fun d!57765 () Bool)

(declare-fun c!21442 () Bool)

(assert (=> d!57765 (= c!21442 (is-Empty!189 lt!20057))))

(declare-fun e!46971 () (Set Int))

(assert (=> d!57765 (= (content!8 lt!20057) e!46971)))

(declare-fun b!86584 () Bool)

(assert (=> b!86584 (= e!46971 (as emptyset (Set Int)))))

(declare-fun b!86585 () Bool)

(assert (=> b!86585 (= e!46971 (union (union (content!8 (left!1649 lt!20057)) (insert (value!6796 lt!20057) (as emptyset (Set Int)))) (content!8 (right!1652 lt!20057))))))

(assert (= (and d!57765 c!21442) b!86584))

(assert (= (and d!57765 (not c!21442)) b!86585))

(declare-fun m!82422 () Bool)

(assert (=> b!86585 m!82422))

(declare-fun m!82424 () Bool)

(assert (=> b!86585 m!82424))

(declare-fun m!82426 () Bool)

(assert (=> b!86585 m!82426))

(assert (=> d!57703 d!57765))

(assert (=> d!57703 d!57719))

(declare-fun b!86586 () Bool)

(declare-fun e!46975 () Bool)

(assert (=> b!86586 (= e!46975 (redNodesHaveBlackChildren!0 (right!1652 (left!1649 t!48253))))))

(declare-fun b!86587 () Bool)

(declare-fun e!46974 () Bool)

(assert (=> b!86587 (= e!46974 (redNodesHaveBlackChildren!0 (right!1652 (left!1649 t!48253))))))

(declare-fun b!86588 () Bool)

(declare-fun e!46972 () Bool)

(assert (=> b!86588 (= e!46972 e!46975)))

(declare-fun res!45147 () Bool)

(assert (=> b!86588 (=> (not res!45147) (not e!46975))))

(assert (=> b!86588 (= res!45147 (redNodesHaveBlackChildren!0 (left!1649 (left!1649 t!48253))))))

(declare-fun b!86589 () Bool)

(declare-fun res!45146 () Bool)

(assert (=> b!86589 (=> (not res!45146) (not e!46974))))

(assert (=> b!86589 (= res!45146 (isBlack!0 (right!1652 (left!1649 t!48253))))))

(declare-fun d!57767 () Bool)

(declare-fun res!45148 () Bool)

(declare-fun e!46973 () Bool)

(assert (=> d!57767 (=> res!45148 e!46973)))

(assert (=> d!57767 (= res!45148 (is-Empty!189 (left!1649 t!48253)))))

(assert (=> d!57767 (= (redNodesHaveBlackChildren!0 (left!1649 t!48253)) e!46973)))

(declare-fun b!86590 () Bool)

(declare-fun res!45150 () Bool)

(assert (=> b!86590 (=> (not res!45150) (not e!46974))))

(assert (=> b!86590 (= res!45150 (redNodesHaveBlackChildren!0 (left!1649 (left!1649 t!48253))))))

(declare-fun b!86591 () Bool)

(assert (=> b!86591 (= e!46973 e!46972)))

(declare-fun c!21443 () Bool)

(assert (=> b!86591 (= c!21443 (and (is-Node!150 (left!1649 t!48253)) (is-Black!8 (color!39 (left!1649 t!48253)))))))

(declare-fun b!86592 () Bool)

(assert (=> b!86592 (= e!46972 e!46974)))

(declare-fun res!45149 () Bool)

(assert (=> b!86592 (=> (not res!45149) (not e!46974))))

(assert (=> b!86592 (= res!45149 (isBlack!0 (left!1649 (left!1649 t!48253))))))

(assert (= (and d!57767 (not res!45148)) b!86591))

(assert (= (and b!86588 res!45147) b!86586))

(assert (= (and b!86592 res!45149) b!86589))

(assert (= (and b!86589 res!45146) b!86590))

(assert (= (and b!86590 res!45150) b!86587))

(assert (= (and b!86591 c!21443) b!86588))

(assert (= (and b!86591 (not c!21443)) b!86592))

(declare-fun m!82428 () Bool)

(assert (=> b!86592 m!82428))

(declare-fun m!82430 () Bool)

(assert (=> b!86590 m!82430))

(assert (=> b!86588 m!82430))

(declare-fun m!82432 () Bool)

(assert (=> b!86589 m!82432))

(declare-fun m!82434 () Bool)

(assert (=> b!86586 m!82434))

(assert (=> b!86587 m!82434))

(assert (=> d!57703 d!57767))

(assert (=> b!86495 d!57767))

(declare-fun d!57769 () Bool)

(assert (=> d!57769 (= (isBlack!0 (right!1652 t!48253)) (or (is-Empty!189 (right!1652 t!48253)) (and (is-Node!150 (right!1652 t!48253)) (is-Black!8 (color!39 (right!1652 t!48253))))))))

(assert (=> b!86496 d!57769))

(declare-fun d!57771 () Bool)

(assert (=> d!57771 (= (isBlack!0 (left!1649 t!48253)) (or (is-Empty!189 (left!1649 t!48253)) (and (is-Node!150 (left!1649 t!48253)) (is-Black!8 (color!39 (left!1649 t!48253))))))))

(assert (=> b!86499 d!57771))

(assert (=> b!86451 d!57757))

(assert (=> b!86451 d!57715))

(assert (=> b!86497 d!57767))

(push 1)

(assert (not b!86576))

(assert (not b!86504))

(assert (not b!86540))

(assert (not b!86530))

(assert (not b!86583))

(assert (not b!86568))

(assert (not b!86558))

(assert (not b!86550))

(assert (not b!86556))

(assert (not b!86506))

(assert (not b!86547))

(assert (not b!86566))

(assert (not b!86529))

(assert (not b!86518))

(assert (not b!86572))

(assert (not b!86538))

(assert (not b!86533))

(assert (not b!86552))

(assert (not b!86592))

(assert (not b!86532))

(assert (not b!86590))

(assert (not b!86570))

(assert (not b!86510))

(assert (not b!86516))

(assert (not b!86575))

(assert (not b!86589))

(assert (not b!86555))

(assert (not b!86582))

(assert (not b!86586))

(assert (not b!86546))

(assert (not b!86508))

(assert (not b!86548))

(assert (not b!86543))

(assert (not b!86554))

(assert (not b!86544))

(assert (not b!86581))

(assert (not b!86571))

(assert (not b!86502))

(assert (not b!86565))

(assert (not b!86559))

(assert (not b!86525))

(assert (not b!86519))

(assert (not b!86527))

(assert (not b!86553))

(assert (not b!86542))

(assert (not b!86500))

(assert (not b!86579))

(assert (not b!86587))

(assert (not b!86536))

(assert (not b!86501))

(assert (not b!86585))

(assert (not b!86520))

(assert (not b!86534))

(assert (not b!86522))

(assert (not b!86564))

(assert (not b!86573))

(assert (not b!86580))

(assert (not b!86578))

(assert (not b!86521))

(assert (not b!86577))

(assert (not b!86563))

(assert (not b!86588))

(assert (not d!57739))

(assert (not b!86561))

(assert (not b!86531))

(assert (not b!86523))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!57773 () Bool)

(declare-fun lt!20076 () Int)

(assert (=> d!57773 (>= lt!20076 0)))

(declare-fun e!46976 () Int)

(assert (=> d!57773 (= lt!20076 e!46976)))

(declare-fun c!21444 () Bool)

(assert (=> d!57773 (= c!21444 (is-Empty!189 (left!1649 lt!20057)))))

(assert (=> d!57773 (= (size!3 (left!1649 lt!20057)) lt!20076)))

(declare-fun b!86593 () Bool)

(assert (=> b!86593 (= e!46976 0)))

(declare-fun b!86594 () Bool)

(assert (=> b!86594 (= e!46976 (+ (+ (size!3 (left!1649 (left!1649 lt!20057))) 1) (size!3 (right!1652 (left!1649 lt!20057)))))))

(assert (= (and d!57773 c!21444) b!86593))

(assert (= (and d!57773 (not c!21444)) b!86594))

(declare-fun m!82436 () Bool)

(assert (=> b!86594 m!82436))

(declare-fun m!82438 () Bool)

(assert (=> b!86594 m!82438))

(assert (=> b!86575 d!57773))

(declare-fun d!57775 () Bool)

(declare-fun lt!20077 () Int)

(assert (=> d!57775 (>= lt!20077 0)))

(declare-fun e!46977 () Int)

(assert (=> d!57775 (= lt!20077 e!46977)))

(declare-fun c!21445 () Bool)

(assert (=> d!57775 (= c!21445 (is-Empty!189 (right!1652 lt!20057)))))

(assert (=> d!57775 (= (size!3 (right!1652 lt!20057)) lt!20077)))

(declare-fun b!86595 () Bool)

(assert (=> b!86595 (= e!46977 0)))

(declare-fun b!86596 () Bool)

(assert (=> b!86596 (= e!46977 (+ (+ (size!3 (left!1649 (right!1652 lt!20057))) 1) (size!3 (right!1652 (right!1652 lt!20057)))))))

(assert (= (and d!57775 c!21445) b!86595))

(assert (= (and d!57775 (not c!21445)) b!86596))

(declare-fun m!82440 () Bool)

(assert (=> b!86596 m!82440))

(declare-fun m!82442 () Bool)

(assert (=> b!86596 m!82442))

(assert (=> b!86575 d!57775))

(declare-fun b!86597 () Bool)

(declare-fun e!46980 () Tree!106)

(declare-fun res!45156 () Tree!106)

(assert (=> b!86597 (= e!46980 res!45156)))

(assert (=> b!86597 true))

(declare-fun b!86598 () Bool)

(declare-fun res!45151 () Bool)

(declare-fun e!46979 () Bool)

(assert (=> b!86598 (=> (not res!45151) (not e!46979))))

(declare-fun lt!20081 () Tree!106)

(assert (=> b!86598 (= res!45151 (<= (size!3 lt!20081) (+ (size!3 (ite lt!20067 (left!1649 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) (right!1652 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))))) 1)))))

(declare-fun b!86599 () Bool)

(assert (=> b!86599 (= e!46979 (blackBalanced!0 lt!20081))))

(declare-fun b!86600 () Bool)

(declare-fun lt!20078 () Bool)

(assert (=> b!86600 (= e!46980 (ins!0 x!30388 (ite lt!20078 (left!1649 (ite lt!20067 (left!1649 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) (right!1652 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))))) (right!1652 (ite lt!20067 (left!1649 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) (right!1652 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))))))))))

(declare-fun b!86601 () Bool)

(declare-fun e!46981 () Tree!106)

(assert (=> b!86601 (= e!46981 (Node!150 Red!8 Empty!189 x!30388 Empty!189))))

(declare-fun e!46978 () Tree!106)

(declare-fun b!86602 () Bool)

(declare-fun lt!20079 () Bool)

(declare-fun lt!20080 () Tree!106)

(assert (=> b!86602 (= e!46978 (balance!0 (color!39 (ite lt!20067 (left!1649 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) (right!1652 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))))) (ite lt!20079 lt!20080 (left!1649 (ite lt!20067 (left!1649 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) (right!1652 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253))))))) (value!6796 (ite lt!20067 (left!1649 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) (right!1652 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))))) (ite lt!20079 (right!1652 (ite lt!20067 (left!1649 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) (right!1652 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))))) lt!20080)))))

(declare-fun b!86603 () Bool)

(declare-fun res!45155 () Bool)

(assert (=> b!86603 (=> (not res!45155) (not e!46979))))

(assert (=> b!86603 (= res!45155 (redDescHaveBlackChildren!0 lt!20081))))

(declare-fun e!46982 () Bool)

(declare-fun b!86604 () Bool)

(assert (=> b!86604 (= e!46982 (blackBalanced!0 (ite lt!20067 (left!1649 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) (right!1652 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))))))))

(declare-fun lt!20082 () Tree!106)

(declare-fun b!86605 () Bool)

(assert (=> b!86605 (= e!46981 (ite lt!20078 lt!20082 (ite (= x!30388 (value!6796 (ite lt!20067 (left!1649 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) (right!1652 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253))))))) (Node!150 (color!39 (ite lt!20067 (left!1649 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) (right!1652 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))))) (left!1649 (ite lt!20067 (left!1649 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) (right!1652 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))))) (value!6796 (ite lt!20067 (left!1649 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) (right!1652 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))))) (right!1652 (ite lt!20067 (left!1649 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) (right!1652 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253))))))) lt!20082)))))

(assert (=> b!86605 (= lt!20082 e!46978)))

(declare-fun c!21446 () Bool)

(assert (=> b!86605 (= c!21446 (or lt!20079 (and (not lt!20078) (not (= x!30388 (value!6796 (ite lt!20067 (left!1649 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) (right!1652 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))))))))))))

(assert (=> b!86605 (= lt!20079 lt!20078)))

(assert (=> b!86605 (= lt!20080 e!46980)))

(declare-fun c!21448 () Bool)

(assert (=> b!86605 (= c!21448 (or lt!20078 (not (= x!30388 (value!6796 (ite lt!20067 (left!1649 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) (right!1652 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253))))))))))))

(assert (=> b!86605 (= lt!20078 (< x!30388 (value!6796 (ite lt!20067 (left!1649 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) (right!1652 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253))))))))))

(declare-fun b!86606 () Bool)

(declare-fun res!45154 () Bool)

(assert (=> b!86606 (=> (not res!45154) (not e!46979))))

(assert (=> b!86606 (= res!45154 (<= (size!3 (ite lt!20067 (left!1649 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) (right!1652 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))))) (size!3 lt!20081)))))

(declare-fun b!86607 () Bool)

(declare-fun res!45157 () Tree!106)

(assert (=> b!86607 (= e!46978 res!45157)))

(assert (=> b!86607 true))

(assert (=> b!86607 true))

(declare-fun d!57777 () Bool)

(assert (=> d!57777 e!46979))

(declare-fun res!45153 () Bool)

(assert (=> d!57777 (=> (not res!45153) (not e!46979))))

(assert (=> d!57777 (= res!45153 (= (content!8 lt!20081) (union (content!8 (ite lt!20067 (left!1649 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) (right!1652 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))))) (insert x!30388 (as emptyset (Set Int))))))))

(assert (=> d!57777 (= lt!20081 e!46981)))

(declare-fun c!21447 () Bool)

(assert (=> d!57777 (= c!21447 (is-Empty!189 (ite lt!20067 (left!1649 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) (right!1652 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))))))))

(assert (=> d!57777 e!46982))

(declare-fun res!45152 () Bool)

(assert (=> d!57777 (=> (not res!45152) (not e!46982))))

(assert (=> d!57777 (= res!45152 (redNodesHaveBlackChildren!0 (ite lt!20067 (left!1649 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) (right!1652 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))))))))

(assert (=> d!57777 (= (ins!0 x!30388 (ite lt!20067 (left!1649 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) (right!1652 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))))) lt!20081)))

(assert (= (and d!57777 res!45152) b!86604))

(assert (= (and b!86605 c!21448) b!86600))

(assert (= (and b!86605 (not c!21448)) b!86597))

(assert (= (and b!86605 c!21446) b!86602))

(assert (= (and b!86605 (not c!21446)) b!86607))

(assert (= (and d!57777 c!21447) b!86601))

(assert (= (and d!57777 (not c!21447)) b!86605))

(assert (= (and d!57777 res!45153) b!86606))

(assert (= (and b!86606 res!45154) b!86598))

(assert (= (and b!86598 res!45151) b!86603))

(assert (= (and b!86603 res!45155) b!86599))

(declare-fun m!82444 () Bool)

(assert (=> d!57777 m!82444))

(declare-fun m!82446 () Bool)

(assert (=> d!57777 m!82446))

(assert (=> d!57777 m!82202))

(declare-fun m!82448 () Bool)

(assert (=> d!57777 m!82448))

(declare-fun m!82450 () Bool)

(assert (=> b!86602 m!82450))

(declare-fun m!82452 () Bool)

(assert (=> b!86600 m!82452))

(declare-fun m!82454 () Bool)

(assert (=> b!86603 m!82454))

(declare-fun m!82456 () Bool)

(assert (=> b!86599 m!82456))

(declare-fun m!82458 () Bool)

(assert (=> b!86606 m!82458))

(declare-fun m!82460 () Bool)

(assert (=> b!86606 m!82460))

(declare-fun m!82462 () Bool)

(assert (=> b!86604 m!82462))

(assert (=> b!86598 m!82460))

(assert (=> b!86598 m!82458))

(assert (=> b!86544 d!57777))

(declare-fun d!57779 () Bool)

(declare-fun res!45159 () Bool)

(declare-fun e!46984 () Bool)

(assert (=> d!57779 (=> res!45159 e!46984)))

(assert (=> d!57779 (= res!45159 (not (is-Node!150 (left!1649 lt!20057))))))

(assert (=> d!57779 (= (blackBalanced!0 (left!1649 lt!20057)) e!46984)))

(declare-fun b!86608 () Bool)

(declare-fun e!46983 () Bool)

(assert (=> b!86608 (= e!46984 e!46983)))

(declare-fun res!45158 () Bool)

(assert (=> b!86608 (=> (not res!45158) (not e!46983))))

(assert (=> b!86608 (= res!45158 (blackBalanced!0 (left!1649 (left!1649 lt!20057))))))

(declare-fun b!86609 () Bool)

(declare-fun res!45160 () Bool)

(assert (=> b!86609 (=> (not res!45160) (not e!46983))))

(assert (=> b!86609 (= res!45160 (blackBalanced!0 (right!1652 (left!1649 lt!20057))))))

(declare-fun b!86610 () Bool)

(assert (=> b!86610 (= e!46983 (= (blackHeight!0 (left!1649 (left!1649 lt!20057))) (blackHeight!0 (right!1652 (left!1649 lt!20057)))))))

(assert (= (and d!57779 (not res!45159)) b!86608))

(assert (= (and b!86608 res!45158) b!86609))

(assert (= (and b!86609 res!45160) b!86610))

(declare-fun m!82464 () Bool)

(assert (=> b!86608 m!82464))

(declare-fun m!82466 () Bool)

(assert (=> b!86609 m!82466))

(declare-fun m!82468 () Bool)

(assert (=> b!86610 m!82468))

(declare-fun m!82470 () Bool)

(assert (=> b!86610 m!82470))

(assert (=> b!86578 d!57779))

(declare-fun b!86611 () Bool)

(declare-fun e!46988 () Bool)

(assert (=> b!86611 (= e!46988 (redNodesHaveBlackChildren!0 (right!1652 (right!1652 (left!1649 res!44630)))))))

(declare-fun b!86612 () Bool)

(declare-fun e!46987 () Bool)

(assert (=> b!86612 (= e!46987 (redNodesHaveBlackChildren!0 (right!1652 (right!1652 (left!1649 res!44630)))))))

(declare-fun b!86613 () Bool)

(declare-fun e!46985 () Bool)

(assert (=> b!86613 (= e!46985 e!46988)))

(declare-fun res!45162 () Bool)

(assert (=> b!86613 (=> (not res!45162) (not e!46988))))

(assert (=> b!86613 (= res!45162 (redNodesHaveBlackChildren!0 (left!1649 (right!1652 (left!1649 res!44630)))))))

(declare-fun b!86614 () Bool)

(declare-fun res!45161 () Bool)

(assert (=> b!86614 (=> (not res!45161) (not e!46987))))

(assert (=> b!86614 (= res!45161 (isBlack!0 (right!1652 (right!1652 (left!1649 res!44630)))))))

(declare-fun d!57781 () Bool)

(declare-fun res!45163 () Bool)

(declare-fun e!46986 () Bool)

(assert (=> d!57781 (=> res!45163 e!46986)))

(assert (=> d!57781 (= res!45163 (is-Empty!189 (right!1652 (left!1649 res!44630))))))

(assert (=> d!57781 (= (redNodesHaveBlackChildren!0 (right!1652 (left!1649 res!44630))) e!46986)))

(declare-fun b!86615 () Bool)

(declare-fun res!45165 () Bool)

(assert (=> b!86615 (=> (not res!45165) (not e!46987))))

(assert (=> b!86615 (= res!45165 (redNodesHaveBlackChildren!0 (left!1649 (right!1652 (left!1649 res!44630)))))))

(declare-fun b!86616 () Bool)

(assert (=> b!86616 (= e!46986 e!46985)))

(declare-fun c!21449 () Bool)

(assert (=> b!86616 (= c!21449 (and (is-Node!150 (right!1652 (left!1649 res!44630))) (is-Black!8 (color!39 (right!1652 (left!1649 res!44630))))))))

(declare-fun b!86617 () Bool)

(assert (=> b!86617 (= e!46985 e!46987)))

(declare-fun res!45164 () Bool)

(assert (=> b!86617 (=> (not res!45164) (not e!46987))))

(assert (=> b!86617 (= res!45164 (isBlack!0 (left!1649 (right!1652 (left!1649 res!44630)))))))

(assert (= (and d!57781 (not res!45163)) b!86616))

(assert (= (and b!86613 res!45162) b!86611))

(assert (= (and b!86617 res!45164) b!86614))

(assert (= (and b!86614 res!45161) b!86615))

(assert (= (and b!86615 res!45165) b!86612))

(assert (= (and b!86616 c!21449) b!86613))

(assert (= (and b!86616 (not c!21449)) b!86617))

(declare-fun m!82472 () Bool)

(assert (=> b!86617 m!82472))

(declare-fun m!82474 () Bool)

(assert (=> b!86615 m!82474))

(assert (=> b!86613 m!82474))

(declare-fun m!82476 () Bool)

(assert (=> b!86614 m!82476))

(declare-fun m!82478 () Bool)

(assert (=> b!86611 m!82478))

(assert (=> b!86612 m!82478))

(assert (=> b!86519 d!57781))

(declare-fun b!86618 () Bool)

(declare-fun e!46992 () Bool)

(assert (=> b!86618 (= e!46992 (redNodesHaveBlackChildren!0 (right!1652 (right!1652 (right!1652 t!48253)))))))

(declare-fun b!86619 () Bool)

(declare-fun e!46991 () Bool)

(assert (=> b!86619 (= e!46991 (redNodesHaveBlackChildren!0 (right!1652 (right!1652 (right!1652 t!48253)))))))

(declare-fun b!86620 () Bool)

(declare-fun e!46989 () Bool)

(assert (=> b!86620 (= e!46989 e!46992)))

(declare-fun res!45167 () Bool)

(assert (=> b!86620 (=> (not res!45167) (not e!46992))))

(assert (=> b!86620 (= res!45167 (redNodesHaveBlackChildren!0 (left!1649 (right!1652 (right!1652 t!48253)))))))

(declare-fun b!86621 () Bool)

(declare-fun res!45166 () Bool)

(assert (=> b!86621 (=> (not res!45166) (not e!46991))))

(assert (=> b!86621 (= res!45166 (isBlack!0 (right!1652 (right!1652 (right!1652 t!48253)))))))

(declare-fun d!57783 () Bool)

(declare-fun res!45168 () Bool)

(declare-fun e!46990 () Bool)

(assert (=> d!57783 (=> res!45168 e!46990)))

(assert (=> d!57783 (= res!45168 (is-Empty!189 (right!1652 (right!1652 t!48253))))))

(assert (=> d!57783 (= (redNodesHaveBlackChildren!0 (right!1652 (right!1652 t!48253))) e!46990)))

(declare-fun b!86622 () Bool)

(declare-fun res!45170 () Bool)

(assert (=> b!86622 (=> (not res!45170) (not e!46991))))

(assert (=> b!86622 (= res!45170 (redNodesHaveBlackChildren!0 (left!1649 (right!1652 (right!1652 t!48253)))))))

(declare-fun b!86623 () Bool)

(assert (=> b!86623 (= e!46990 e!46989)))

(declare-fun c!21450 () Bool)

(assert (=> b!86623 (= c!21450 (and (is-Node!150 (right!1652 (right!1652 t!48253))) (is-Black!8 (color!39 (right!1652 (right!1652 t!48253))))))))

(declare-fun b!86624 () Bool)

(assert (=> b!86624 (= e!46989 e!46991)))

(declare-fun res!45169 () Bool)

(assert (=> b!86624 (=> (not res!45169) (not e!46991))))

(assert (=> b!86624 (= res!45169 (isBlack!0 (left!1649 (right!1652 (right!1652 t!48253)))))))

(assert (= (and d!57783 (not res!45168)) b!86623))

(assert (= (and b!86620 res!45167) b!86618))

(assert (= (and b!86624 res!45169) b!86621))

(assert (= (and b!86621 res!45166) b!86622))

(assert (= (and b!86622 res!45170) b!86619))

(assert (= (and b!86623 c!21450) b!86620))

(assert (= (and b!86623 (not c!21450)) b!86624))

(declare-fun m!82480 () Bool)

(assert (=> b!86624 m!82480))

(declare-fun m!82482 () Bool)

(assert (=> b!86622 m!82482))

(assert (=> b!86620 m!82482))

(declare-fun m!82484 () Bool)

(assert (=> b!86621 m!82484))

(declare-fun m!82486 () Bool)

(assert (=> b!86618 m!82486))

(assert (=> b!86619 m!82486))

(assert (=> b!86531 d!57783))

(assert (=> b!86520 d!57781))

(declare-fun d!57785 () Bool)

(declare-fun res!45172 () Bool)

(declare-fun e!46994 () Bool)

(assert (=> d!57785 (=> res!45172 e!46994)))

(assert (=> d!57785 (= res!45172 (not (is-Node!150 (right!1652 (right!1652 t!48253)))))))

(assert (=> d!57785 (= (blackBalanced!0 (right!1652 (right!1652 t!48253))) e!46994)))

(declare-fun b!86625 () Bool)

(declare-fun e!46993 () Bool)

(assert (=> b!86625 (= e!46994 e!46993)))

(declare-fun res!45171 () Bool)

(assert (=> b!86625 (=> (not res!45171) (not e!46993))))

(assert (=> b!86625 (= res!45171 (blackBalanced!0 (left!1649 (right!1652 (right!1652 t!48253)))))))

(declare-fun b!86626 () Bool)

(declare-fun res!45173 () Bool)

(assert (=> b!86626 (=> (not res!45173) (not e!46993))))

(assert (=> b!86626 (= res!45173 (blackBalanced!0 (right!1652 (right!1652 (right!1652 t!48253)))))))

(declare-fun b!86627 () Bool)

(assert (=> b!86627 (= e!46993 (= (blackHeight!0 (left!1649 (right!1652 (right!1652 t!48253)))) (blackHeight!0 (right!1652 (right!1652 (right!1652 t!48253))))))))

(assert (= (and d!57785 (not res!45172)) b!86625))

(assert (= (and b!86625 res!45171) b!86626))

(assert (= (and b!86626 res!45173) b!86627))

(declare-fun m!82488 () Bool)

(assert (=> b!86625 m!82488))

(declare-fun m!82490 () Bool)

(assert (=> b!86626 m!82490))

(declare-fun m!82492 () Bool)

(assert (=> b!86627 m!82492))

(declare-fun m!82494 () Bool)

(assert (=> b!86627 m!82494))

(assert (=> b!86582 d!57785))

(declare-fun d!57787 () Bool)

(declare-fun res!45175 () Bool)

(declare-fun e!46996 () Bool)

(assert (=> d!57787 (=> res!45175 e!46996)))

(assert (=> d!57787 (= res!45175 (not (is-Node!150 (left!1649 (right!1652 res!44630)))))))

(assert (=> d!57787 (= (blackBalanced!0 (left!1649 (right!1652 res!44630))) e!46996)))

(declare-fun b!86628 () Bool)

(declare-fun e!46995 () Bool)

(assert (=> b!86628 (= e!46996 e!46995)))

(declare-fun res!45174 () Bool)

(assert (=> b!86628 (=> (not res!45174) (not e!46995))))

(assert (=> b!86628 (= res!45174 (blackBalanced!0 (left!1649 (left!1649 (right!1652 res!44630)))))))

(declare-fun b!86629 () Bool)

(declare-fun res!45176 () Bool)

(assert (=> b!86629 (=> (not res!45176) (not e!46995))))

(assert (=> b!86629 (= res!45176 (blackBalanced!0 (right!1652 (left!1649 (right!1652 res!44630)))))))

(declare-fun b!86630 () Bool)

(assert (=> b!86630 (= e!46995 (= (blackHeight!0 (left!1649 (left!1649 (right!1652 res!44630)))) (blackHeight!0 (right!1652 (left!1649 (right!1652 res!44630))))))))

(assert (= (and d!57787 (not res!45175)) b!86628))

(assert (= (and b!86628 res!45174) b!86629))

(assert (= (and b!86629 res!45176) b!86630))

(declare-fun m!82496 () Bool)

(assert (=> b!86628 m!82496))

(declare-fun m!82498 () Bool)

(assert (=> b!86629 m!82498))

(declare-fun m!82500 () Bool)

(assert (=> b!86630 m!82500))

(declare-fun m!82502 () Bool)

(assert (=> b!86630 m!82502))

(assert (=> b!86571 d!57787))

(declare-fun d!57789 () Bool)

(declare-fun c!21451 () Bool)

(assert (=> d!57789 (= c!21451 (is-Empty!189 (left!1649 (right!1652 t!48253))))))

(declare-fun e!46997 () (Set Int))

(assert (=> d!57789 (= (content!8 (left!1649 (right!1652 t!48253))) e!46997)))

(declare-fun b!86631 () Bool)

(assert (=> b!86631 (= e!46997 (as emptyset (Set Int)))))

(declare-fun b!86632 () Bool)

(assert (=> b!86632 (= e!46997 (union (union (content!8 (left!1649 (left!1649 (right!1652 t!48253)))) (insert (value!6796 (left!1649 (right!1652 t!48253))) (as emptyset (Set Int)))) (content!8 (right!1652 (left!1649 (right!1652 t!48253))))))))

(assert (= (and d!57789 c!21451) b!86631))

(assert (= (and d!57789 (not c!21451)) b!86632))

(declare-fun m!82504 () Bool)

(assert (=> b!86632 m!82504))

(declare-fun m!82506 () Bool)

(assert (=> b!86632 m!82506))

(declare-fun m!82508 () Bool)

(assert (=> b!86632 m!82508))

(assert (=> b!86510 d!57789))

(declare-fun d!57791 () Bool)

(declare-fun c!21452 () Bool)

(assert (=> d!57791 (= c!21452 (is-Empty!189 (right!1652 (right!1652 t!48253))))))

(declare-fun e!46998 () (Set Int))

(assert (=> d!57791 (= (content!8 (right!1652 (right!1652 t!48253))) e!46998)))

(declare-fun b!86633 () Bool)

(assert (=> b!86633 (= e!46998 (as emptyset (Set Int)))))

(declare-fun b!86634 () Bool)

(assert (=> b!86634 (= e!46998 (union (union (content!8 (left!1649 (right!1652 (right!1652 t!48253)))) (insert (value!6796 (right!1652 (right!1652 t!48253))) (as emptyset (Set Int)))) (content!8 (right!1652 (right!1652 (right!1652 t!48253))))))))

(assert (= (and d!57791 c!21452) b!86633))

(assert (= (and d!57791 (not c!21452)) b!86634))

(declare-fun m!82510 () Bool)

(assert (=> b!86634 m!82510))

(declare-fun m!82512 () Bool)

(assert (=> b!86634 m!82512))

(declare-fun m!82514 () Bool)

(assert (=> b!86634 m!82514))

(assert (=> b!86510 d!57791))

(declare-fun d!57793 () Bool)

(declare-fun lt!20083 () Int)

(assert (=> d!57793 (>= lt!20083 0)))

(declare-fun e!46999 () Int)

(assert (=> d!57793 (= lt!20083 e!46999)))

(declare-fun c!21453 () Bool)

(assert (=> d!57793 (= c!21453 (is-Empty!189 (left!1649 (right!1652 t!48253))))))

(assert (=> d!57793 (= (size!3 (left!1649 (right!1652 t!48253))) lt!20083)))

(declare-fun b!86635 () Bool)

(assert (=> b!86635 (= e!46999 0)))

(declare-fun b!86636 () Bool)

(assert (=> b!86636 (= e!46999 (+ (+ (size!3 (left!1649 (left!1649 (right!1652 t!48253)))) 1) (size!3 (right!1652 (left!1649 (right!1652 t!48253))))))))

(assert (= (and d!57793 c!21453) b!86635))

(assert (= (and d!57793 (not c!21453)) b!86636))

(declare-fun m!82516 () Bool)

(assert (=> b!86636 m!82516))

(declare-fun m!82518 () Bool)

(assert (=> b!86636 m!82518))

(assert (=> b!86506 d!57793))

(declare-fun d!57795 () Bool)

(declare-fun lt!20084 () Int)

(assert (=> d!57795 (>= lt!20084 0)))

(declare-fun e!47000 () Int)

(assert (=> d!57795 (= lt!20084 e!47000)))

(declare-fun c!21454 () Bool)

(assert (=> d!57795 (= c!21454 (is-Empty!189 (right!1652 (right!1652 t!48253))))))

(assert (=> d!57795 (= (size!3 (right!1652 (right!1652 t!48253))) lt!20084)))

(declare-fun b!86637 () Bool)

(assert (=> b!86637 (= e!47000 0)))

(declare-fun b!86638 () Bool)

(assert (=> b!86638 (= e!47000 (+ (+ (size!3 (left!1649 (right!1652 (right!1652 t!48253)))) 1) (size!3 (right!1652 (right!1652 (right!1652 t!48253))))))))

(assert (= (and d!57795 c!21454) b!86637))

(assert (= (and d!57795 (not c!21454)) b!86638))

(declare-fun m!82520 () Bool)

(assert (=> b!86638 m!82520))

(declare-fun m!82522 () Bool)

(assert (=> b!86638 m!82522))

(assert (=> b!86506 d!57795))

(declare-fun d!57797 () Bool)

(declare-fun lt!20085 () Int)

(assert (=> d!57797 (>= lt!20085 0)))

(declare-fun e!47001 () Int)

(assert (=> d!57797 (= lt!20085 e!47001)))

(declare-fun c!21455 () Bool)

(assert (=> d!57797 (= c!21455 (is-Empty!189 (left!1649 (right!1652 res!44630))))))

(assert (=> d!57797 (= (size!3 (left!1649 (right!1652 res!44630))) lt!20085)))

(declare-fun b!86639 () Bool)

(assert (=> b!86639 (= e!47001 0)))

(declare-fun b!86640 () Bool)

(assert (=> b!86640 (= e!47001 (+ (+ (size!3 (left!1649 (left!1649 (right!1652 res!44630)))) 1) (size!3 (right!1652 (left!1649 (right!1652 res!44630))))))))

(assert (= (and d!57797 c!21455) b!86639))

(assert (= (and d!57797 (not c!21455)) b!86640))

(declare-fun m!82524 () Bool)

(assert (=> b!86640 m!82524))

(declare-fun m!82526 () Bool)

(assert (=> b!86640 m!82526))

(assert (=> b!86570 d!57797))

(declare-fun d!57799 () Bool)

(declare-fun lt!20086 () Int)

(assert (=> d!57799 (>= lt!20086 0)))

(declare-fun e!47002 () Int)

(assert (=> d!57799 (= lt!20086 e!47002)))

(declare-fun c!21456 () Bool)

(assert (=> d!57799 (= c!21456 (is-Empty!189 (right!1652 (right!1652 res!44630))))))

(assert (=> d!57799 (= (size!3 (right!1652 (right!1652 res!44630))) lt!20086)))

(declare-fun b!86641 () Bool)

(assert (=> b!86641 (= e!47002 0)))

(declare-fun b!86642 () Bool)

(assert (=> b!86642 (= e!47002 (+ (+ (size!3 (left!1649 (right!1652 (right!1652 res!44630)))) 1) (size!3 (right!1652 (right!1652 (right!1652 res!44630))))))))

(assert (= (and d!57799 c!21456) b!86641))

(assert (= (and d!57799 (not c!21456)) b!86642))

(declare-fun m!82528 () Bool)

(assert (=> b!86642 m!82528))

(declare-fun m!82530 () Bool)

(assert (=> b!86642 m!82530))

(assert (=> b!86570 d!57799))

(declare-fun b!86644 () Bool)

(declare-fun e!47003 () Int)

(declare-fun lt!20087 () Int)

(assert (=> b!86644 (= e!47003 (ite (and (is-Node!150 (left!1649 (right!1652 t!48253))) (is-Black!8 (color!39 (left!1649 (right!1652 t!48253))))) (+ lt!20087 1) lt!20087))))

(assert (=> b!86644 (= lt!20087 (blackHeight!0 (left!1649 (left!1649 (right!1652 t!48253)))))))

(declare-fun d!57801 () Bool)

(declare-fun c!21457 () Bool)

(assert (=> d!57801 (= c!21457 (is-Empty!189 (left!1649 (right!1652 t!48253))))))

(assert (=> d!57801 (= (blackHeight!0 (left!1649 (right!1652 t!48253))) e!47003)))

(declare-fun b!86643 () Bool)

(assert (=> b!86643 (= e!47003 1)))

(assert (= (and d!57801 c!21457) b!86643))

(assert (= (and d!57801 (not c!21457)) b!86644))

(declare-fun m!82532 () Bool)

(assert (=> b!86644 m!82532))

(assert (=> b!86518 d!57801))

(declare-fun d!57803 () Bool)

(declare-fun res!45177 () Bool)

(declare-fun e!47004 () Bool)

(assert (=> d!57803 (=> res!45177 e!47004)))

(assert (=> d!57803 (= res!45177 (is-Empty!189 lt!20070))))

(assert (=> d!57803 (= (redDescHaveBlackChildren!0 lt!20070) e!47004)))

(declare-fun b!86645 () Bool)

(declare-fun e!47005 () Bool)

(assert (=> b!86645 (= e!47004 e!47005)))

(declare-fun res!45178 () Bool)

(assert (=> b!86645 (=> (not res!45178) (not e!47005))))

(assert (=> b!86645 (= res!45178 (redNodesHaveBlackChildren!0 (left!1649 lt!20070)))))

(declare-fun b!86646 () Bool)

(assert (=> b!86646 (= e!47005 (redNodesHaveBlackChildren!0 (right!1652 lt!20070)))))

(assert (= (and d!57803 (not res!45177)) b!86645))

(assert (= (and b!86645 res!45178) b!86646))

(declare-fun m!82534 () Bool)

(assert (=> b!86645 m!82534))

(declare-fun m!82536 () Bool)

(assert (=> b!86646 m!82536))

(assert (=> b!86547 d!57803))

(declare-fun b!86648 () Bool)

(declare-fun e!47006 () Int)

(declare-fun lt!20088 () Int)

(assert (=> b!86648 (= e!47006 (ite (and (is-Node!150 (left!1649 (left!1649 t!48253))) (is-Black!8 (color!39 (left!1649 (left!1649 t!48253))))) (+ lt!20088 1) lt!20088))))

(assert (=> b!86648 (= lt!20088 (blackHeight!0 (left!1649 (left!1649 (left!1649 t!48253)))))))

(declare-fun d!57805 () Bool)

(declare-fun c!21458 () Bool)

(assert (=> d!57805 (= c!21458 (is-Empty!189 (left!1649 (left!1649 t!48253))))))

(assert (=> d!57805 (= (blackHeight!0 (left!1649 (left!1649 t!48253))) e!47006)))

(declare-fun b!86647 () Bool)

(assert (=> b!86647 (= e!47006 1)))

(assert (= (and d!57805 c!21458) b!86647))

(assert (= (and d!57805 (not c!21458)) b!86648))

(declare-fun m!82538 () Bool)

(assert (=> b!86648 m!82538))

(assert (=> b!86516 d!57805))

(declare-fun b!86649 () Bool)

(declare-fun e!47010 () Bool)

(assert (=> b!86649 (= e!47010 (redNodesHaveBlackChildren!0 (right!1652 (left!1649 (right!1652 res!44630)))))))

(declare-fun b!86650 () Bool)

(declare-fun e!47009 () Bool)

(assert (=> b!86650 (= e!47009 (redNodesHaveBlackChildren!0 (right!1652 (left!1649 (right!1652 res!44630)))))))

(declare-fun b!86651 () Bool)

(declare-fun e!47007 () Bool)

(assert (=> b!86651 (= e!47007 e!47010)))

(declare-fun res!45180 () Bool)

(assert (=> b!86651 (=> (not res!45180) (not e!47010))))

(assert (=> b!86651 (= res!45180 (redNodesHaveBlackChildren!0 (left!1649 (left!1649 (right!1652 res!44630)))))))

(declare-fun b!86652 () Bool)

(declare-fun res!45179 () Bool)

(assert (=> b!86652 (=> (not res!45179) (not e!47009))))

(assert (=> b!86652 (= res!45179 (isBlack!0 (right!1652 (left!1649 (right!1652 res!44630)))))))

(declare-fun d!57807 () Bool)

(declare-fun res!45181 () Bool)

(declare-fun e!47008 () Bool)

(assert (=> d!57807 (=> res!45181 e!47008)))

(assert (=> d!57807 (= res!45181 (is-Empty!189 (left!1649 (right!1652 res!44630))))))

(assert (=> d!57807 (= (redNodesHaveBlackChildren!0 (left!1649 (right!1652 res!44630))) e!47008)))

(declare-fun b!86653 () Bool)

(declare-fun res!45183 () Bool)

(assert (=> b!86653 (=> (not res!45183) (not e!47009))))

(assert (=> b!86653 (= res!45183 (redNodesHaveBlackChildren!0 (left!1649 (left!1649 (right!1652 res!44630)))))))

(declare-fun b!86654 () Bool)

(assert (=> b!86654 (= e!47008 e!47007)))

(declare-fun c!21459 () Bool)

(assert (=> b!86654 (= c!21459 (and (is-Node!150 (left!1649 (right!1652 res!44630))) (is-Black!8 (color!39 (left!1649 (right!1652 res!44630))))))))

(declare-fun b!86655 () Bool)

(assert (=> b!86655 (= e!47007 e!47009)))

(declare-fun res!45182 () Bool)

(assert (=> b!86655 (=> (not res!45182) (not e!47009))))

(assert (=> b!86655 (= res!45182 (isBlack!0 (left!1649 (left!1649 (right!1652 res!44630)))))))

(assert (= (and d!57807 (not res!45181)) b!86654))

(assert (= (and b!86651 res!45180) b!86649))

(assert (= (and b!86655 res!45182) b!86652))

(assert (= (and b!86652 res!45179) b!86653))

(assert (= (and b!86653 res!45183) b!86650))

(assert (= (and b!86654 c!21459) b!86651))

(assert (= (and b!86654 (not c!21459)) b!86655))

(declare-fun m!82540 () Bool)

(assert (=> b!86655 m!82540))

(declare-fun m!82542 () Bool)

(assert (=> b!86653 m!82542))

(assert (=> b!86651 m!82542))

(declare-fun m!82544 () Bool)

(assert (=> b!86652 m!82544))

(declare-fun m!82546 () Bool)

(assert (=> b!86649 m!82546))

(assert (=> b!86650 m!82546))

(assert (=> b!86556 d!57807))

(declare-fun b!86656 () Bool)

(declare-fun e!47014 () Bool)

(assert (=> b!86656 (= e!47014 (redNodesHaveBlackChildren!0 (right!1652 (right!1652 (right!1652 res!44630)))))))

(declare-fun b!86657 () Bool)

(declare-fun e!47013 () Bool)

(assert (=> b!86657 (= e!47013 (redNodesHaveBlackChildren!0 (right!1652 (right!1652 (right!1652 res!44630)))))))

(declare-fun b!86658 () Bool)

(declare-fun e!47011 () Bool)

(assert (=> b!86658 (= e!47011 e!47014)))

(declare-fun res!45185 () Bool)

(assert (=> b!86658 (=> (not res!45185) (not e!47014))))

(assert (=> b!86658 (= res!45185 (redNodesHaveBlackChildren!0 (left!1649 (right!1652 (right!1652 res!44630)))))))

(declare-fun b!86659 () Bool)

(declare-fun res!45184 () Bool)

(assert (=> b!86659 (=> (not res!45184) (not e!47013))))

(assert (=> b!86659 (= res!45184 (isBlack!0 (right!1652 (right!1652 (right!1652 res!44630)))))))

(declare-fun d!57809 () Bool)

(declare-fun res!45186 () Bool)

(declare-fun e!47012 () Bool)

(assert (=> d!57809 (=> res!45186 e!47012)))

(assert (=> d!57809 (= res!45186 (is-Empty!189 (right!1652 (right!1652 res!44630))))))

(assert (=> d!57809 (= (redNodesHaveBlackChildren!0 (right!1652 (right!1652 res!44630))) e!47012)))

(declare-fun b!86660 () Bool)

(declare-fun res!45188 () Bool)

(assert (=> b!86660 (=> (not res!45188) (not e!47013))))

(assert (=> b!86660 (= res!45188 (redNodesHaveBlackChildren!0 (left!1649 (right!1652 (right!1652 res!44630)))))))

(declare-fun b!86661 () Bool)

(assert (=> b!86661 (= e!47012 e!47011)))

(declare-fun c!21460 () Bool)

(assert (=> b!86661 (= c!21460 (and (is-Node!150 (right!1652 (right!1652 res!44630))) (is-Black!8 (color!39 (right!1652 (right!1652 res!44630))))))))

(declare-fun b!86662 () Bool)

(assert (=> b!86662 (= e!47011 e!47013)))

(declare-fun res!45187 () Bool)

(assert (=> b!86662 (=> (not res!45187) (not e!47013))))

(assert (=> b!86662 (= res!45187 (isBlack!0 (left!1649 (right!1652 (right!1652 res!44630)))))))

(assert (= (and d!57809 (not res!45186)) b!86661))

(assert (= (and b!86658 res!45185) b!86656))

(assert (= (and b!86662 res!45187) b!86659))

(assert (= (and b!86659 res!45184) b!86660))

(assert (= (and b!86660 res!45188) b!86657))

(assert (= (and b!86661 c!21460) b!86658))

(assert (= (and b!86661 (not c!21460)) b!86662))

(declare-fun m!82548 () Bool)

(assert (=> b!86662 m!82548))

(declare-fun m!82550 () Bool)

(assert (=> b!86660 m!82550))

(assert (=> b!86658 m!82550))

(declare-fun m!82552 () Bool)

(assert (=> b!86659 m!82552))

(declare-fun m!82554 () Bool)

(assert (=> b!86656 m!82554))

(assert (=> b!86657 m!82554))

(assert (=> b!86553 d!57809))

(assert (=> b!86554 d!57807))

(declare-fun d!57811 () Bool)

(declare-fun c!21461 () Bool)

(assert (=> d!57811 (= c!21461 (is-Empty!189 (left!1649 (left!1649 res!44630))))))

(declare-fun e!47015 () (Set Int))

(assert (=> d!57811 (= (content!8 (left!1649 (left!1649 res!44630))) e!47015)))

(declare-fun b!86663 () Bool)

(assert (=> b!86663 (= e!47015 (as emptyset (Set Int)))))

(declare-fun b!86664 () Bool)

(assert (=> b!86664 (= e!47015 (union (union (content!8 (left!1649 (left!1649 (left!1649 res!44630)))) (insert (value!6796 (left!1649 (left!1649 res!44630))) (as emptyset (Set Int)))) (content!8 (right!1652 (left!1649 (left!1649 res!44630))))))))

(assert (= (and d!57811 c!21461) b!86663))

(assert (= (and d!57811 (not c!21461)) b!86664))

(declare-fun m!82556 () Bool)

(assert (=> b!86664 m!82556))

(declare-fun m!82558 () Bool)

(assert (=> b!86664 m!82558))

(declare-fun m!82560 () Bool)

(assert (=> b!86664 m!82560))

(assert (=> b!86561 d!57811))

(declare-fun d!57813 () Bool)

(declare-fun c!21462 () Bool)

(assert (=> d!57813 (= c!21462 (is-Empty!189 (right!1652 (left!1649 res!44630))))))

(declare-fun e!47016 () (Set Int))

(assert (=> d!57813 (= (content!8 (right!1652 (left!1649 res!44630))) e!47016)))

(declare-fun b!86665 () Bool)

(assert (=> b!86665 (= e!47016 (as emptyset (Set Int)))))

(declare-fun b!86666 () Bool)

(assert (=> b!86666 (= e!47016 (union (union (content!8 (left!1649 (right!1652 (left!1649 res!44630)))) (insert (value!6796 (right!1652 (left!1649 res!44630))) (as emptyset (Set Int)))) (content!8 (right!1652 (right!1652 (left!1649 res!44630))))))))

(assert (= (and d!57813 c!21462) b!86665))

(assert (= (and d!57813 (not c!21462)) b!86666))

(declare-fun m!82562 () Bool)

(assert (=> b!86666 m!82562))

(declare-fun m!82564 () Bool)

(assert (=> b!86666 m!82564))

(declare-fun m!82566 () Bool)

(assert (=> b!86666 m!82566))

(assert (=> b!86561 d!57813))

(declare-fun b!86667 () Bool)

(declare-fun e!47020 () Bool)

(assert (=> b!86667 (= e!47020 (redNodesHaveBlackChildren!0 (right!1652 (left!1649 lt!20057))))))

(declare-fun b!86668 () Bool)

(declare-fun e!47019 () Bool)

(assert (=> b!86668 (= e!47019 (redNodesHaveBlackChildren!0 (right!1652 (left!1649 lt!20057))))))

(declare-fun b!86669 () Bool)

(declare-fun e!47017 () Bool)

(assert (=> b!86669 (= e!47017 e!47020)))

(declare-fun res!45190 () Bool)

(assert (=> b!86669 (=> (not res!45190) (not e!47020))))

(assert (=> b!86669 (= res!45190 (redNodesHaveBlackChildren!0 (left!1649 (left!1649 lt!20057))))))

(declare-fun b!86670 () Bool)

(declare-fun res!45189 () Bool)

(assert (=> b!86670 (=> (not res!45189) (not e!47019))))

(assert (=> b!86670 (= res!45189 (isBlack!0 (right!1652 (left!1649 lt!20057))))))

(declare-fun d!57815 () Bool)

(declare-fun res!45191 () Bool)

(declare-fun e!47018 () Bool)

(assert (=> d!57815 (=> res!45191 e!47018)))

(assert (=> d!57815 (= res!45191 (is-Empty!189 (left!1649 lt!20057)))))

(assert (=> d!57815 (= (redNodesHaveBlackChildren!0 (left!1649 lt!20057)) e!47018)))

(declare-fun b!86671 () Bool)

(declare-fun res!45193 () Bool)

(assert (=> b!86671 (=> (not res!45193) (not e!47019))))

(assert (=> b!86671 (= res!45193 (redNodesHaveBlackChildren!0 (left!1649 (left!1649 lt!20057))))))

(declare-fun b!86672 () Bool)

(assert (=> b!86672 (= e!47018 e!47017)))

(declare-fun c!21463 () Bool)

(assert (=> b!86672 (= c!21463 (and (is-Node!150 (left!1649 lt!20057)) (is-Black!8 (color!39 (left!1649 lt!20057)))))))

(declare-fun b!86673 () Bool)

(assert (=> b!86673 (= e!47017 e!47019)))

(declare-fun res!45192 () Bool)

(assert (=> b!86673 (=> (not res!45192) (not e!47019))))

(assert (=> b!86673 (= res!45192 (isBlack!0 (left!1649 (left!1649 lt!20057))))))

(assert (= (and d!57815 (not res!45191)) b!86672))

(assert (= (and b!86669 res!45190) b!86667))

(assert (= (and b!86673 res!45192) b!86670))

(assert (= (and b!86670 res!45189) b!86671))

(assert (= (and b!86671 res!45193) b!86668))

(assert (= (and b!86672 c!21463) b!86669))

(assert (= (and b!86672 (not c!21463)) b!86673))

(declare-fun m!82568 () Bool)

(assert (=> b!86673 m!82568))

(declare-fun m!82570 () Bool)

(assert (=> b!86671 m!82570))

(assert (=> b!86669 m!82570))

(declare-fun m!82572 () Bool)

(assert (=> b!86670 m!82572))

(declare-fun m!82574 () Bool)

(assert (=> b!86667 m!82574))

(assert (=> b!86668 m!82574))

(assert (=> b!86576 d!57815))

(declare-fun b!86675 () Bool)

(declare-fun e!47021 () Int)

(declare-fun lt!20089 () Int)

(assert (=> b!86675 (= e!47021 (ite (and (is-Node!150 (left!1649 (right!1652 res!44630))) (is-Black!8 (color!39 (left!1649 (right!1652 res!44630))))) (+ lt!20089 1) lt!20089))))

(assert (=> b!86675 (= lt!20089 (blackHeight!0 (left!1649 (left!1649 (right!1652 res!44630)))))))

(declare-fun d!57817 () Bool)

(declare-fun c!21464 () Bool)

(assert (=> d!57817 (= c!21464 (is-Empty!189 (left!1649 (right!1652 res!44630))))))

(assert (=> d!57817 (= (blackHeight!0 (left!1649 (right!1652 res!44630))) e!47021)))

(declare-fun b!86674 () Bool)

(assert (=> b!86674 (= e!47021 1)))

(assert (= (and d!57817 c!21464) b!86674))

(assert (= (and d!57817 (not c!21464)) b!86675))

(assert (=> b!86675 m!82500))

(assert (=> b!86573 d!57817))

(declare-fun b!86677 () Bool)

(declare-fun e!47022 () Int)

(declare-fun lt!20090 () Int)

(assert (=> b!86677 (= e!47022 (ite (and (is-Node!150 (right!1652 (right!1652 res!44630))) (is-Black!8 (color!39 (right!1652 (right!1652 res!44630))))) (+ lt!20090 1) lt!20090))))

(assert (=> b!86677 (= lt!20090 (blackHeight!0 (left!1649 (right!1652 (right!1652 res!44630)))))))

(declare-fun d!57819 () Bool)

(declare-fun c!21465 () Bool)

(assert (=> d!57819 (= c!21465 (is-Empty!189 (right!1652 (right!1652 res!44630))))))

(assert (=> d!57819 (= (blackHeight!0 (right!1652 (right!1652 res!44630))) e!47022)))

(declare-fun b!86676 () Bool)

(assert (=> b!86676 (= e!47022 1)))

(assert (= (and d!57819 c!21465) b!86676))

(assert (= (and d!57819 (not c!21465)) b!86677))

(declare-fun m!82576 () Bool)

(assert (=> b!86677 m!82576))

(assert (=> b!86573 d!57819))

(declare-fun b!86678 () Bool)

(declare-fun e!47026 () Bool)

(assert (=> b!86678 (= e!47026 (redNodesHaveBlackChildren!0 (right!1652 (left!1649 (left!1649 t!48253)))))))

(declare-fun b!86679 () Bool)

(declare-fun e!47025 () Bool)

(assert (=> b!86679 (= e!47025 (redNodesHaveBlackChildren!0 (right!1652 (left!1649 (left!1649 t!48253)))))))

(declare-fun b!86680 () Bool)

(declare-fun e!47023 () Bool)

(assert (=> b!86680 (= e!47023 e!47026)))

(declare-fun res!45195 () Bool)

(assert (=> b!86680 (=> (not res!45195) (not e!47026))))

(assert (=> b!86680 (= res!45195 (redNodesHaveBlackChildren!0 (left!1649 (left!1649 (left!1649 t!48253)))))))

(declare-fun b!86681 () Bool)

(declare-fun res!45194 () Bool)

(assert (=> b!86681 (=> (not res!45194) (not e!47025))))

(assert (=> b!86681 (= res!45194 (isBlack!0 (right!1652 (left!1649 (left!1649 t!48253)))))))

(declare-fun d!57821 () Bool)

(declare-fun res!45196 () Bool)

(declare-fun e!47024 () Bool)

(assert (=> d!57821 (=> res!45196 e!47024)))

(assert (=> d!57821 (= res!45196 (is-Empty!189 (left!1649 (left!1649 t!48253))))))

(assert (=> d!57821 (= (redNodesHaveBlackChildren!0 (left!1649 (left!1649 t!48253))) e!47024)))

(declare-fun b!86682 () Bool)

(declare-fun res!45198 () Bool)

(assert (=> b!86682 (=> (not res!45198) (not e!47025))))

(assert (=> b!86682 (= res!45198 (redNodesHaveBlackChildren!0 (left!1649 (left!1649 (left!1649 t!48253)))))))

(declare-fun b!86683 () Bool)

(assert (=> b!86683 (= e!47024 e!47023)))

(declare-fun c!21466 () Bool)

(assert (=> b!86683 (= c!21466 (and (is-Node!150 (left!1649 (left!1649 t!48253))) (is-Black!8 (color!39 (left!1649 (left!1649 t!48253))))))))

(declare-fun b!86684 () Bool)

(assert (=> b!86684 (= e!47023 e!47025)))

(declare-fun res!45197 () Bool)

(assert (=> b!86684 (=> (not res!45197) (not e!47025))))

(assert (=> b!86684 (= res!45197 (isBlack!0 (left!1649 (left!1649 (left!1649 t!48253)))))))

(assert (= (and d!57821 (not res!45196)) b!86683))

(assert (= (and b!86680 res!45195) b!86678))

(assert (= (and b!86684 res!45197) b!86681))

(assert (= (and b!86681 res!45194) b!86682))

(assert (= (and b!86682 res!45198) b!86679))

(assert (= (and b!86683 c!21466) b!86680))

(assert (= (and b!86683 (not c!21466)) b!86684))

(declare-fun m!82578 () Bool)

(assert (=> b!86684 m!82578))

(declare-fun m!82580 () Bool)

(assert (=> b!86682 m!82580))

(assert (=> b!86680 m!82580))

(declare-fun m!82582 () Bool)

(assert (=> b!86681 m!82582))

(declare-fun m!82584 () Bool)

(assert (=> b!86678 m!82584))

(assert (=> b!86679 m!82584))

(assert (=> b!86590 d!57821))

(declare-fun d!57823 () Bool)

(declare-fun lt!20091 () Int)

(assert (=> d!57823 (>= lt!20091 0)))

(declare-fun e!47027 () Int)

(assert (=> d!57823 (= lt!20091 e!47027)))

(declare-fun c!21467 () Bool)

(assert (=> d!57823 (= c!21467 (is-Empty!189 (left!1649 (left!1649 t!48253))))))

(assert (=> d!57823 (= (size!3 (left!1649 (left!1649 t!48253))) lt!20091)))

(declare-fun b!86685 () Bool)

(assert (=> b!86685 (= e!47027 0)))

(declare-fun b!86686 () Bool)

(assert (=> b!86686 (= e!47027 (+ (+ (size!3 (left!1649 (left!1649 (left!1649 t!48253)))) 1) (size!3 (right!1652 (left!1649 (left!1649 t!48253))))))))

(assert (= (and d!57823 c!21467) b!86685))

(assert (= (and d!57823 (not c!21467)) b!86686))

(declare-fun m!82586 () Bool)

(assert (=> b!86686 m!82586))

(declare-fun m!82588 () Bool)

(assert (=> b!86686 m!82588))

(assert (=> b!86504 d!57823))

(declare-fun d!57825 () Bool)

(declare-fun lt!20092 () Int)

(assert (=> d!57825 (>= lt!20092 0)))

(declare-fun e!47028 () Int)

(assert (=> d!57825 (= lt!20092 e!47028)))

(declare-fun c!21468 () Bool)

(assert (=> d!57825 (= c!21468 (is-Empty!189 (right!1652 (left!1649 t!48253))))))

(assert (=> d!57825 (= (size!3 (right!1652 (left!1649 t!48253))) lt!20092)))

(declare-fun b!86687 () Bool)

(assert (=> b!86687 (= e!47028 0)))

(declare-fun b!86688 () Bool)

(assert (=> b!86688 (= e!47028 (+ (+ (size!3 (left!1649 (right!1652 (left!1649 t!48253)))) 1) (size!3 (right!1652 (right!1652 (left!1649 t!48253))))))))

(assert (= (and d!57825 c!21468) b!86687))

(assert (= (and d!57825 (not c!21468)) b!86688))

(declare-fun m!82590 () Bool)

(assert (=> b!86688 m!82590))

(declare-fun m!82592 () Bool)

(assert (=> b!86688 m!82592))

(assert (=> b!86504 d!57825))

(declare-fun d!57827 () Bool)

(declare-fun lt!20093 () Int)

(assert (=> d!57827 (>= lt!20093 0)))

(declare-fun e!47029 () Int)

(assert (=> d!57827 (= lt!20093 e!47029)))

(declare-fun c!21469 () Bool)

(assert (=> d!57827 (= c!21469 (is-Empty!189 lt!20070))))

(assert (=> d!57827 (= (size!3 lt!20070) lt!20093)))

(declare-fun b!86689 () Bool)

(assert (=> b!86689 (= e!47029 0)))

(declare-fun b!86690 () Bool)

(assert (=> b!86690 (= e!47029 (+ (+ (size!3 (left!1649 lt!20070)) 1) (size!3 (right!1652 lt!20070))))))

(assert (= (and d!57827 c!21469) b!86689))

(assert (= (and d!57827 (not c!21469)) b!86690))

(declare-fun m!82594 () Bool)

(assert (=> b!86690 m!82594))

(declare-fun m!82596 () Bool)

(assert (=> b!86690 m!82596))

(assert (=> b!86542 d!57827))

(declare-fun d!57829 () Bool)

(declare-fun lt!20094 () Int)

(assert (=> d!57829 (>= lt!20094 0)))

(declare-fun e!47030 () Int)

(assert (=> d!57829 (= lt!20094 e!47030)))

(declare-fun c!21470 () Bool)

(assert (=> d!57829 (= c!21470 (is-Empty!189 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))))))

(assert (=> d!57829 (= (size!3 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) lt!20094)))

(declare-fun b!86691 () Bool)

(assert (=> b!86691 (= e!47030 0)))

(declare-fun b!86692 () Bool)

(assert (=> b!86692 (= e!47030 (+ (+ (size!3 (left!1649 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253))))) 1) (size!3 (right!1652 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))))))))

(assert (= (and d!57829 c!21470) b!86691))

(assert (= (and d!57829 (not c!21470)) b!86692))

(declare-fun m!82598 () Bool)

(assert (=> b!86692 m!82598))

(declare-fun m!82600 () Bool)

(assert (=> b!86692 m!82600))

(assert (=> b!86542 d!57829))

(declare-fun d!57831 () Bool)

(declare-fun c!21471 () Bool)

(assert (=> d!57831 (= c!21471 (is-Empty!189 (left!1649 (right!1652 res!44630))))))

(declare-fun e!47031 () (Set Int))

(assert (=> d!57831 (= (content!8 (left!1649 (right!1652 res!44630))) e!47031)))

(declare-fun b!86693 () Bool)

(assert (=> b!86693 (= e!47031 (as emptyset (Set Int)))))

(declare-fun b!86694 () Bool)

(assert (=> b!86694 (= e!47031 (union (union (content!8 (left!1649 (left!1649 (right!1652 res!44630)))) (insert (value!6796 (left!1649 (right!1652 res!44630))) (as emptyset (Set Int)))) (content!8 (right!1652 (left!1649 (right!1652 res!44630))))))))

(assert (= (and d!57831 c!21471) b!86693))

(assert (= (and d!57831 (not c!21471)) b!86694))

(declare-fun m!82602 () Bool)

(assert (=> b!86694 m!82602))

(declare-fun m!82604 () Bool)

(assert (=> b!86694 m!82604))

(declare-fun m!82606 () Bool)

(assert (=> b!86694 m!82606))

(assert (=> b!86563 d!57831))

(declare-fun d!57833 () Bool)

(declare-fun c!21472 () Bool)

(assert (=> d!57833 (= c!21472 (is-Empty!189 (right!1652 (right!1652 res!44630))))))

(declare-fun e!47032 () (Set Int))

(assert (=> d!57833 (= (content!8 (right!1652 (right!1652 res!44630))) e!47032)))

(declare-fun b!86695 () Bool)

(assert (=> b!86695 (= e!47032 (as emptyset (Set Int)))))

(declare-fun b!86696 () Bool)

(assert (=> b!86696 (= e!47032 (union (union (content!8 (left!1649 (right!1652 (right!1652 res!44630)))) (insert (value!6796 (right!1652 (right!1652 res!44630))) (as emptyset (Set Int)))) (content!8 (right!1652 (right!1652 (right!1652 res!44630))))))))

(assert (= (and d!57833 c!21472) b!86695))

(assert (= (and d!57833 (not c!21472)) b!86696))

(declare-fun m!82608 () Bool)

(assert (=> b!86696 m!82608))

(declare-fun m!82610 () Bool)

(assert (=> b!86696 m!82610))

(declare-fun m!82612 () Bool)

(assert (=> b!86696 m!82612))

(assert (=> b!86563 d!57833))

(declare-fun b!86697 () Bool)

(declare-fun e!47036 () Bool)

(assert (=> b!86697 (= e!47036 (redNodesHaveBlackChildren!0 (right!1652 (left!1649 (left!1649 res!44630)))))))

(declare-fun b!86698 () Bool)

(declare-fun e!47035 () Bool)

(assert (=> b!86698 (= e!47035 (redNodesHaveBlackChildren!0 (right!1652 (left!1649 (left!1649 res!44630)))))))

(declare-fun b!86699 () Bool)

(declare-fun e!47033 () Bool)

(assert (=> b!86699 (= e!47033 e!47036)))

(declare-fun res!45200 () Bool)

(assert (=> b!86699 (=> (not res!45200) (not e!47036))))

(assert (=> b!86699 (= res!45200 (redNodesHaveBlackChildren!0 (left!1649 (left!1649 (left!1649 res!44630)))))))

(declare-fun b!86700 () Bool)

(declare-fun res!45199 () Bool)

(assert (=> b!86700 (=> (not res!45199) (not e!47035))))

(assert (=> b!86700 (= res!45199 (isBlack!0 (right!1652 (left!1649 (left!1649 res!44630)))))))

(declare-fun d!57835 () Bool)

(declare-fun res!45201 () Bool)

(declare-fun e!47034 () Bool)

(assert (=> d!57835 (=> res!45201 e!47034)))

(assert (=> d!57835 (= res!45201 (is-Empty!189 (left!1649 (left!1649 res!44630))))))

(assert (=> d!57835 (= (redNodesHaveBlackChildren!0 (left!1649 (left!1649 res!44630))) e!47034)))

(declare-fun b!86701 () Bool)

(declare-fun res!45203 () Bool)

(assert (=> b!86701 (=> (not res!45203) (not e!47035))))

(assert (=> b!86701 (= res!45203 (redNodesHaveBlackChildren!0 (left!1649 (left!1649 (left!1649 res!44630)))))))

(declare-fun b!86702 () Bool)

(assert (=> b!86702 (= e!47034 e!47033)))

(declare-fun c!21473 () Bool)

(assert (=> b!86702 (= c!21473 (and (is-Node!150 (left!1649 (left!1649 res!44630))) (is-Black!8 (color!39 (left!1649 (left!1649 res!44630))))))))

(declare-fun b!86703 () Bool)

(assert (=> b!86703 (= e!47033 e!47035)))

(declare-fun res!45202 () Bool)

(assert (=> b!86703 (=> (not res!45202) (not e!47035))))

(assert (=> b!86703 (= res!45202 (isBlack!0 (left!1649 (left!1649 (left!1649 res!44630)))))))

(assert (= (and d!57835 (not res!45201)) b!86702))

(assert (= (and b!86699 res!45200) b!86697))

(assert (= (and b!86703 res!45202) b!86700))

(assert (= (and b!86700 res!45199) b!86701))

(assert (= (and b!86701 res!45203) b!86698))

(assert (= (and b!86702 c!21473) b!86699))

(assert (= (and b!86702 (not c!21473)) b!86703))

(declare-fun m!82614 () Bool)

(assert (=> b!86703 m!82614))

(declare-fun m!82616 () Bool)

(assert (=> b!86701 m!82616))

(assert (=> b!86699 m!82616))

(declare-fun m!82618 () Bool)

(assert (=> b!86700 m!82618))

(declare-fun m!82620 () Bool)

(assert (=> b!86697 m!82620))

(assert (=> b!86698 m!82620))

(assert (=> b!86523 d!57835))

(declare-fun d!57837 () Bool)

(assert (=> d!57837 (= (isBlack!0 (right!1652 (right!1652 t!48253))) (or (is-Empty!189 (right!1652 (right!1652 t!48253))) (and (is-Node!150 (right!1652 (right!1652 t!48253))) (is-Black!8 (color!39 (right!1652 (right!1652 t!48253)))))))))

(assert (=> b!86533 d!57837))

(declare-fun b!86705 () Bool)

(declare-fun e!47037 () Int)

(declare-fun lt!20095 () Int)

(assert (=> b!86705 (= e!47037 (ite (and (is-Node!150 (left!1649 lt!20057)) (is-Black!8 (color!39 (left!1649 lt!20057)))) (+ lt!20095 1) lt!20095))))

(assert (=> b!86705 (= lt!20095 (blackHeight!0 (left!1649 (left!1649 lt!20057))))))

(declare-fun d!57839 () Bool)

(declare-fun c!21474 () Bool)

(assert (=> d!57839 (= c!21474 (is-Empty!189 (left!1649 lt!20057)))))

(assert (=> d!57839 (= (blackHeight!0 (left!1649 lt!20057)) e!47037)))

(declare-fun b!86704 () Bool)

(assert (=> b!86704 (= e!47037 1)))

(assert (= (and d!57839 c!21474) b!86704))

(assert (= (and d!57839 (not c!21474)) b!86705))

(assert (=> b!86705 m!82468))

(assert (=> b!86580 d!57839))

(declare-fun b!86707 () Bool)

(declare-fun e!47038 () Int)

(declare-fun lt!20096 () Int)

(assert (=> b!86707 (= e!47038 (ite (and (is-Node!150 (right!1652 lt!20057)) (is-Black!8 (color!39 (right!1652 lt!20057)))) (+ lt!20096 1) lt!20096))))

(assert (=> b!86707 (= lt!20096 (blackHeight!0 (left!1649 (right!1652 lt!20057))))))

(declare-fun d!57841 () Bool)

(declare-fun c!21475 () Bool)

(assert (=> d!57841 (= c!21475 (is-Empty!189 (right!1652 lt!20057)))))

(assert (=> d!57841 (= (blackHeight!0 (right!1652 lt!20057)) e!47038)))

(declare-fun b!86706 () Bool)

(assert (=> b!86706 (= e!47038 1)))

(assert (= (and d!57841 c!21475) b!86706))

(assert (= (and d!57841 (not c!21475)) b!86707))

(declare-fun m!82622 () Bool)

(assert (=> b!86707 m!82622))

(assert (=> b!86580 d!57841))

(declare-fun d!57843 () Bool)

(assert (=> d!57843 (= (isBlack!0 (right!1652 (left!1649 t!48253))) (or (is-Empty!189 (right!1652 (left!1649 t!48253))) (and (is-Node!150 (right!1652 (left!1649 t!48253))) (is-Black!8 (color!39 (right!1652 (left!1649 t!48253)))))))))

(assert (=> b!86589 d!57843))

(declare-fun d!57845 () Bool)

(declare-fun res!45205 () Bool)

(declare-fun e!47040 () Bool)

(assert (=> d!57845 (=> res!45205 e!47040)))

(assert (=> d!57845 (= res!45205 (not (is-Node!150 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253))))))))

(assert (=> d!57845 (= (blackBalanced!0 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) e!47040)))

(declare-fun b!86708 () Bool)

(declare-fun e!47039 () Bool)

(assert (=> b!86708 (= e!47040 e!47039)))

(declare-fun res!45204 () Bool)

(assert (=> b!86708 (=> (not res!45204) (not e!47039))))

(assert (=> b!86708 (= res!45204 (blackBalanced!0 (left!1649 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253))))))))

(declare-fun b!86709 () Bool)

(declare-fun res!45206 () Bool)

(assert (=> b!86709 (=> (not res!45206) (not e!47039))))

(assert (=> b!86709 (= res!45206 (blackBalanced!0 (right!1652 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253))))))))

(declare-fun b!86710 () Bool)

(assert (=> b!86710 (= e!47039 (= (blackHeight!0 (left!1649 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253))))) (blackHeight!0 (right!1652 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))))))))

(assert (= (and d!57845 (not res!45205)) b!86708))

(assert (= (and b!86708 res!45204) b!86709))

(assert (= (and b!86709 res!45206) b!86710))

(declare-fun m!82624 () Bool)

(assert (=> b!86708 m!82624))

(declare-fun m!82626 () Bool)

(assert (=> b!86709 m!82626))

(declare-fun m!82628 () Bool)

(assert (=> b!86710 m!82628))

(declare-fun m!82630 () Bool)

(assert (=> b!86710 m!82630))

(assert (=> b!86548 d!57845))

(declare-fun d!57847 () Bool)

(declare-fun lt!20097 () Int)

(assert (=> d!57847 (>= lt!20097 0)))

(declare-fun e!47041 () Int)

(assert (=> d!57847 (= lt!20097 e!47041)))

(declare-fun c!21476 () Bool)

(assert (=> d!57847 (= c!21476 (is-Empty!189 (left!1649 (left!1649 res!44630))))))

(assert (=> d!57847 (= (size!3 (left!1649 (left!1649 res!44630))) lt!20097)))

(declare-fun b!86711 () Bool)

(assert (=> b!86711 (= e!47041 0)))

(declare-fun b!86712 () Bool)

(assert (=> b!86712 (= e!47041 (+ (+ (size!3 (left!1649 (left!1649 (left!1649 res!44630)))) 1) (size!3 (right!1652 (left!1649 (left!1649 res!44630))))))))

(assert (= (and d!57847 c!21476) b!86711))

(assert (= (and d!57847 (not c!21476)) b!86712))

(declare-fun m!82632 () Bool)

(assert (=> b!86712 m!82632))

(declare-fun m!82634 () Bool)

(assert (=> b!86712 m!82634))

(assert (=> b!86568 d!57847))

(declare-fun d!57849 () Bool)

(declare-fun lt!20098 () Int)

(assert (=> d!57849 (>= lt!20098 0)))

(declare-fun e!47042 () Int)

(assert (=> d!57849 (= lt!20098 e!47042)))

(declare-fun c!21477 () Bool)

(assert (=> d!57849 (= c!21477 (is-Empty!189 (right!1652 (left!1649 res!44630))))))

(assert (=> d!57849 (= (size!3 (right!1652 (left!1649 res!44630))) lt!20098)))

(declare-fun b!86713 () Bool)

(assert (=> b!86713 (= e!47042 0)))

(declare-fun b!86714 () Bool)

(assert (=> b!86714 (= e!47042 (+ (+ (size!3 (left!1649 (right!1652 (left!1649 res!44630)))) 1) (size!3 (right!1652 (right!1652 (left!1649 res!44630))))))))

(assert (= (and d!57849 c!21477) b!86713))

(assert (= (and d!57849 (not c!21477)) b!86714))

(declare-fun m!82636 () Bool)

(assert (=> b!86714 m!82636))

(declare-fun m!82638 () Bool)

(assert (=> b!86714 m!82638))

(assert (=> b!86568 d!57849))

(declare-fun d!57851 () Bool)

(declare-fun res!45208 () Bool)

(declare-fun e!47044 () Bool)

(assert (=> d!57851 (=> res!45208 e!47044)))

(assert (=> d!57851 (= res!45208 (not (is-Node!150 (left!1649 (left!1649 res!44630)))))))

(assert (=> d!57851 (= (blackBalanced!0 (left!1649 (left!1649 res!44630))) e!47044)))

(declare-fun b!86715 () Bool)

(declare-fun e!47043 () Bool)

(assert (=> b!86715 (= e!47044 e!47043)))

(declare-fun res!45207 () Bool)

(assert (=> b!86715 (=> (not res!45207) (not e!47043))))

(assert (=> b!86715 (= res!45207 (blackBalanced!0 (left!1649 (left!1649 (left!1649 res!44630)))))))

(declare-fun b!86716 () Bool)

(declare-fun res!45209 () Bool)

(assert (=> b!86716 (=> (not res!45209) (not e!47043))))

(assert (=> b!86716 (= res!45209 (blackBalanced!0 (right!1652 (left!1649 (left!1649 res!44630)))))))

(declare-fun b!86717 () Bool)

(assert (=> b!86717 (= e!47043 (= (blackHeight!0 (left!1649 (left!1649 (left!1649 res!44630)))) (blackHeight!0 (right!1652 (left!1649 (left!1649 res!44630))))))))

(assert (= (and d!57851 (not res!45208)) b!86715))

(assert (= (and b!86715 res!45207) b!86716))

(assert (= (and b!86716 res!45209) b!86717))

(declare-fun m!82640 () Bool)

(assert (=> b!86715 m!82640))

(declare-fun m!82642 () Bool)

(assert (=> b!86716 m!82642))

(declare-fun m!82644 () Bool)

(assert (=> b!86717 m!82644))

(declare-fun m!82646 () Bool)

(assert (=> b!86717 m!82646))

(assert (=> b!86500 d!57851))

(declare-fun d!57853 () Bool)

(declare-fun res!45211 () Bool)

(declare-fun e!47046 () Bool)

(assert (=> d!57853 (=> res!45211 e!47046)))

(assert (=> d!57853 (= res!45211 (not (is-Node!150 (right!1652 lt!20057))))))

(assert (=> d!57853 (= (blackBalanced!0 (right!1652 lt!20057)) e!47046)))

(declare-fun b!86718 () Bool)

(declare-fun e!47045 () Bool)

(assert (=> b!86718 (= e!47046 e!47045)))

(declare-fun res!45210 () Bool)

(assert (=> b!86718 (=> (not res!45210) (not e!47045))))

(assert (=> b!86718 (= res!45210 (blackBalanced!0 (left!1649 (right!1652 lt!20057))))))

(declare-fun b!86719 () Bool)

(declare-fun res!45212 () Bool)

(assert (=> b!86719 (=> (not res!45212) (not e!47045))))

(assert (=> b!86719 (= res!45212 (blackBalanced!0 (right!1652 (right!1652 lt!20057))))))

(declare-fun b!86720 () Bool)

(assert (=> b!86720 (= e!47045 (= (blackHeight!0 (left!1649 (right!1652 lt!20057))) (blackHeight!0 (right!1652 (right!1652 lt!20057)))))))

(assert (= (and d!57853 (not res!45211)) b!86718))

(assert (= (and b!86718 res!45210) b!86719))

(assert (= (and b!86719 res!45212) b!86720))

(declare-fun m!82648 () Bool)

(assert (=> b!86718 m!82648))

(declare-fun m!82650 () Bool)

(assert (=> b!86719 m!82650))

(assert (=> b!86720 m!82622))

(declare-fun m!82652 () Bool)

(assert (=> b!86720 m!82652))

(assert (=> b!86579 d!57853))

(declare-fun b!86722 () Bool)

(declare-fun e!47047 () Int)

(declare-fun lt!20099 () Int)

(assert (=> b!86722 (= e!47047 (ite (and (is-Node!150 (left!1649 (left!1649 res!44630))) (is-Black!8 (color!39 (left!1649 (left!1649 res!44630))))) (+ lt!20099 1) lt!20099))))

(assert (=> b!86722 (= lt!20099 (blackHeight!0 (left!1649 (left!1649 (left!1649 res!44630)))))))

(declare-fun d!57855 () Bool)

(declare-fun c!21478 () Bool)

(assert (=> d!57855 (= c!21478 (is-Empty!189 (left!1649 (left!1649 res!44630))))))

(assert (=> d!57855 (= (blackHeight!0 (left!1649 (left!1649 res!44630))) e!47047)))

(declare-fun b!86721 () Bool)

(assert (=> b!86721 (= e!47047 1)))

(assert (= (and d!57855 c!21478) b!86721))

(assert (= (and d!57855 (not c!21478)) b!86722))

(assert (=> b!86722 m!82644))

(assert (=> b!86538 d!57855))

(declare-fun d!57857 () Bool)

(declare-fun c!21479 () Bool)

(assert (=> d!57857 (= c!21479 (is-Empty!189 (left!1649 (left!1649 t!48253))))))

(declare-fun e!47048 () (Set Int))

(assert (=> d!57857 (= (content!8 (left!1649 (left!1649 t!48253))) e!47048)))

(declare-fun b!86723 () Bool)

(assert (=> b!86723 (= e!47048 (as emptyset (Set Int)))))

(declare-fun b!86724 () Bool)

(assert (=> b!86724 (= e!47048 (union (union (content!8 (left!1649 (left!1649 (left!1649 t!48253)))) (insert (value!6796 (left!1649 (left!1649 t!48253))) (as emptyset (Set Int)))) (content!8 (right!1652 (left!1649 (left!1649 t!48253))))))))

(assert (= (and d!57857 c!21479) b!86723))

(assert (= (and d!57857 (not c!21479)) b!86724))

(declare-fun m!82654 () Bool)

(assert (=> b!86724 m!82654))

(declare-fun m!82656 () Bool)

(assert (=> b!86724 m!82656))

(declare-fun m!82658 () Bool)

(assert (=> b!86724 m!82658))

(assert (=> b!86508 d!57857))

(declare-fun d!57859 () Bool)

(declare-fun c!21480 () Bool)

(assert (=> d!57859 (= c!21480 (is-Empty!189 (right!1652 (left!1649 t!48253))))))

(declare-fun e!47049 () (Set Int))

(assert (=> d!57859 (= (content!8 (right!1652 (left!1649 t!48253))) e!47049)))

(declare-fun b!86725 () Bool)

(assert (=> b!86725 (= e!47049 (as emptyset (Set Int)))))

(declare-fun b!86726 () Bool)

(assert (=> b!86726 (= e!47049 (union (union (content!8 (left!1649 (right!1652 (left!1649 t!48253)))) (insert (value!6796 (right!1652 (left!1649 t!48253))) (as emptyset (Set Int)))) (content!8 (right!1652 (right!1652 (left!1649 t!48253))))))))

(assert (= (and d!57859 c!21480) b!86725))

(assert (= (and d!57859 (not c!21480)) b!86726))

(declare-fun m!82660 () Bool)

(assert (=> b!86726 m!82660))

(declare-fun m!82662 () Bool)

(assert (=> b!86726 m!82662))

(declare-fun m!82664 () Bool)

(assert (=> b!86726 m!82664))

(assert (=> b!86508 d!57859))

(declare-fun d!57861 () Bool)

(declare-fun res!45214 () Bool)

(declare-fun e!47051 () Bool)

(assert (=> d!57861 (=> res!45214 e!47051)))

(assert (=> d!57861 (= res!45214 (not (is-Node!150 (left!1649 (right!1652 t!48253)))))))

(assert (=> d!57861 (= (blackBalanced!0 (left!1649 (right!1652 t!48253))) e!47051)))

(declare-fun b!86727 () Bool)

(declare-fun e!47050 () Bool)

(assert (=> b!86727 (= e!47051 e!47050)))

(declare-fun res!45213 () Bool)

(assert (=> b!86727 (=> (not res!45213) (not e!47050))))

(assert (=> b!86727 (= res!45213 (blackBalanced!0 (left!1649 (left!1649 (right!1652 t!48253)))))))

(declare-fun b!86728 () Bool)

(declare-fun res!45215 () Bool)

(assert (=> b!86728 (=> (not res!45215) (not e!47050))))

(assert (=> b!86728 (= res!45215 (blackBalanced!0 (right!1652 (left!1649 (right!1652 t!48253)))))))

(declare-fun b!86729 () Bool)

(assert (=> b!86729 (= e!47050 (= (blackHeight!0 (left!1649 (left!1649 (right!1652 t!48253)))) (blackHeight!0 (right!1652 (left!1649 (right!1652 t!48253))))))))

(assert (= (and d!57861 (not res!45214)) b!86727))

(assert (= (and b!86727 res!45213) b!86728))

(assert (= (and b!86728 res!45215) b!86729))

(declare-fun m!82666 () Bool)

(assert (=> b!86727 m!82666))

(declare-fun m!82668 () Bool)

(assert (=> b!86728 m!82668))

(assert (=> b!86729 m!82532))

(declare-fun m!82670 () Bool)

(assert (=> b!86729 m!82670))

(assert (=> b!86581 d!57861))

(assert (=> b!86521 d!57835))

(declare-fun d!57863 () Bool)

(declare-fun res!45217 () Bool)

(declare-fun e!47053 () Bool)

(assert (=> d!57863 (=> res!45217 e!47053)))

(assert (=> d!57863 (= res!45217 (not (is-Node!150 (right!1652 (left!1649 res!44630)))))))

(assert (=> d!57863 (= (blackBalanced!0 (right!1652 (left!1649 res!44630))) e!47053)))

(declare-fun b!86730 () Bool)

(declare-fun e!47052 () Bool)

(assert (=> b!86730 (= e!47053 e!47052)))

(declare-fun res!45216 () Bool)

(assert (=> b!86730 (=> (not res!45216) (not e!47052))))

(assert (=> b!86730 (= res!45216 (blackBalanced!0 (left!1649 (right!1652 (left!1649 res!44630)))))))

(declare-fun b!86731 () Bool)

(declare-fun res!45218 () Bool)

(assert (=> b!86731 (=> (not res!45218) (not e!47052))))

(assert (=> b!86731 (= res!45218 (blackBalanced!0 (right!1652 (right!1652 (left!1649 res!44630)))))))

(declare-fun b!86732 () Bool)

(assert (=> b!86732 (= e!47052 (= (blackHeight!0 (left!1649 (right!1652 (left!1649 res!44630)))) (blackHeight!0 (right!1652 (right!1652 (left!1649 res!44630))))))))

(assert (= (and d!57863 (not res!45217)) b!86730))

(assert (= (and b!86730 res!45216) b!86731))

(assert (= (and b!86731 res!45218) b!86732))

(declare-fun m!82672 () Bool)

(assert (=> b!86730 m!82672))

(declare-fun m!82674 () Bool)

(assert (=> b!86731 m!82674))

(declare-fun m!82676 () Bool)

(assert (=> b!86732 m!82676))

(declare-fun m!82678 () Bool)

(assert (=> b!86732 m!82678))

(assert (=> b!86501 d!57863))

(declare-fun b!86733 () Bool)

(declare-fun e!47057 () Bool)

(assert (=> b!86733 (= e!47057 (redNodesHaveBlackChildren!0 (right!1652 (right!1652 (left!1649 t!48253)))))))

(declare-fun b!86734 () Bool)

(declare-fun e!47056 () Bool)

(assert (=> b!86734 (= e!47056 (redNodesHaveBlackChildren!0 (right!1652 (right!1652 (left!1649 t!48253)))))))

(declare-fun b!86735 () Bool)

(declare-fun e!47054 () Bool)

(assert (=> b!86735 (= e!47054 e!47057)))

(declare-fun res!45220 () Bool)

(assert (=> b!86735 (=> (not res!45220) (not e!47057))))

(assert (=> b!86735 (= res!45220 (redNodesHaveBlackChildren!0 (left!1649 (right!1652 (left!1649 t!48253)))))))

(declare-fun b!86736 () Bool)

(declare-fun res!45219 () Bool)

(assert (=> b!86736 (=> (not res!45219) (not e!47056))))

(assert (=> b!86736 (= res!45219 (isBlack!0 (right!1652 (right!1652 (left!1649 t!48253)))))))

(declare-fun d!57865 () Bool)

(declare-fun res!45221 () Bool)

(declare-fun e!47055 () Bool)

(assert (=> d!57865 (=> res!45221 e!47055)))

(assert (=> d!57865 (= res!45221 (is-Empty!189 (right!1652 (left!1649 t!48253))))))

(assert (=> d!57865 (= (redNodesHaveBlackChildren!0 (right!1652 (left!1649 t!48253))) e!47055)))

(declare-fun b!86737 () Bool)

(declare-fun res!45223 () Bool)

(assert (=> b!86737 (=> (not res!45223) (not e!47056))))

(assert (=> b!86737 (= res!45223 (redNodesHaveBlackChildren!0 (left!1649 (right!1652 (left!1649 t!48253)))))))

(declare-fun b!86738 () Bool)

(assert (=> b!86738 (= e!47055 e!47054)))

(declare-fun c!21481 () Bool)

(assert (=> b!86738 (= c!21481 (and (is-Node!150 (right!1652 (left!1649 t!48253))) (is-Black!8 (color!39 (right!1652 (left!1649 t!48253))))))))

(declare-fun b!86739 () Bool)

(assert (=> b!86739 (= e!47054 e!47056)))

(declare-fun res!45222 () Bool)

(assert (=> b!86739 (=> (not res!45222) (not e!47056))))

(assert (=> b!86739 (= res!45222 (isBlack!0 (left!1649 (right!1652 (left!1649 t!48253)))))))

(assert (= (and d!57865 (not res!45221)) b!86738))

(assert (= (and b!86735 res!45220) b!86733))

(assert (= (and b!86739 res!45222) b!86736))

(assert (= (and b!86736 res!45219) b!86737))

(assert (= (and b!86737 res!45223) b!86734))

(assert (= (and b!86738 c!21481) b!86735))

(assert (= (and b!86738 (not c!21481)) b!86739))

(declare-fun m!82680 () Bool)

(assert (=> b!86739 m!82680))

(declare-fun m!82682 () Bool)

(assert (=> b!86737 m!82682))

(assert (=> b!86735 m!82682))

(declare-fun m!82684 () Bool)

(assert (=> b!86736 m!82684))

(declare-fun m!82686 () Bool)

(assert (=> b!86733 m!82686))

(assert (=> b!86734 m!82686))

(assert (=> b!86587 d!57865))

(assert (=> b!86552 d!57809))

(declare-fun d!57867 () Bool)

(assert (=> d!57867 (= (isBlack!0 (left!1649 (left!1649 res!44630))) (or (is-Empty!189 (left!1649 (left!1649 res!44630))) (and (is-Node!150 (left!1649 (left!1649 res!44630))) (is-Black!8 (color!39 (left!1649 (left!1649 res!44630)))))))))

(assert (=> b!86525 d!57867))

(assert (=> b!86566 d!57805))

(declare-fun b!86741 () Bool)

(declare-fun e!47058 () Int)

(declare-fun lt!20100 () Int)

(assert (=> b!86741 (= e!47058 (ite (and (is-Node!150 (right!1652 (left!1649 t!48253))) (is-Black!8 (color!39 (right!1652 (left!1649 t!48253))))) (+ lt!20100 1) lt!20100))))

(assert (=> b!86741 (= lt!20100 (blackHeight!0 (left!1649 (right!1652 (left!1649 t!48253)))))))

(declare-fun d!57869 () Bool)

(declare-fun c!21482 () Bool)

(assert (=> d!57869 (= c!21482 (is-Empty!189 (right!1652 (left!1649 t!48253))))))

(assert (=> d!57869 (= (blackHeight!0 (right!1652 (left!1649 t!48253))) e!47058)))

(declare-fun b!86740 () Bool)

(assert (=> b!86740 (= e!47058 1)))

(assert (= (and d!57869 c!21482) b!86740))

(assert (= (and d!57869 (not c!21482)) b!86741))

(declare-fun m!82688 () Bool)

(assert (=> b!86741 m!82688))

(assert (=> b!86566 d!57869))

(assert (=> b!86502 d!57855))

(declare-fun b!86743 () Bool)

(declare-fun e!47059 () Int)

(declare-fun lt!20101 () Int)

(assert (=> b!86743 (= e!47059 (ite (and (is-Node!150 (right!1652 (left!1649 res!44630))) (is-Black!8 (color!39 (right!1652 (left!1649 res!44630))))) (+ lt!20101 1) lt!20101))))

(assert (=> b!86743 (= lt!20101 (blackHeight!0 (left!1649 (right!1652 (left!1649 res!44630)))))))

(declare-fun d!57871 () Bool)

(declare-fun c!21483 () Bool)

(assert (=> d!57871 (= c!21483 (is-Empty!189 (right!1652 (left!1649 res!44630))))))

(assert (=> d!57871 (= (blackHeight!0 (right!1652 (left!1649 res!44630))) e!47059)))

(declare-fun b!86742 () Bool)

(assert (=> b!86742 (= e!47059 1)))

(assert (= (and d!57871 c!21483) b!86742))

(assert (= (and d!57871 (not c!21483)) b!86743))

(assert (=> b!86743 m!82676))

(assert (=> b!86502 d!57871))

(assert (=> b!86586 d!57865))

(declare-fun d!57873 () Bool)

(declare-fun c!21484 () Bool)

(assert (=> d!57873 (= c!21484 (is-Empty!189 (left!1649 lt!20057)))))

(declare-fun e!47060 () (Set Int))

(assert (=> d!57873 (= (content!8 (left!1649 lt!20057)) e!47060)))

(declare-fun b!86744 () Bool)

(assert (=> b!86744 (= e!47060 (as emptyset (Set Int)))))

(declare-fun b!86745 () Bool)

(assert (=> b!86745 (= e!47060 (union (union (content!8 (left!1649 (left!1649 lt!20057))) (insert (value!6796 (left!1649 lt!20057)) (as emptyset (Set Int)))) (content!8 (right!1652 (left!1649 lt!20057)))))))

(assert (= (and d!57873 c!21484) b!86744))

(assert (= (and d!57873 (not c!21484)) b!86745))

(declare-fun m!82690 () Bool)

(assert (=> b!86745 m!82690))

(declare-fun m!82692 () Bool)

(assert (=> b!86745 m!82692))

(declare-fun m!82694 () Bool)

(assert (=> b!86745 m!82694))

(assert (=> b!86585 d!57873))

(declare-fun d!57875 () Bool)

(declare-fun c!21485 () Bool)

(assert (=> d!57875 (= c!21485 (is-Empty!189 (right!1652 lt!20057)))))

(declare-fun e!47061 () (Set Int))

(assert (=> d!57875 (= (content!8 (right!1652 lt!20057)) e!47061)))

(declare-fun b!86746 () Bool)

(assert (=> b!86746 (= e!47061 (as emptyset (Set Int)))))

(declare-fun b!86747 () Bool)

(assert (=> b!86747 (= e!47061 (union (union (content!8 (left!1649 (right!1652 lt!20057))) (insert (value!6796 (right!1652 lt!20057)) (as emptyset (Set Int)))) (content!8 (right!1652 (right!1652 lt!20057)))))))

(assert (= (and d!57875 c!21485) b!86746))

(assert (= (and d!57875 (not c!21485)) b!86747))

(declare-fun m!82696 () Bool)

(assert (=> b!86747 m!82696))

(declare-fun m!82698 () Bool)

(assert (=> b!86747 m!82698))

(declare-fun m!82700 () Bool)

(assert (=> b!86747 m!82700))

(assert (=> b!86585 d!57875))

(assert (=> b!86550 d!57829))

(assert (=> b!86550 d!57827))

(declare-fun d!57877 () Bool)

(assert (=> d!57877 (= (isBlack!0 (left!1649 (right!1652 t!48253))) (or (is-Empty!189 (left!1649 (right!1652 t!48253))) (and (is-Node!150 (left!1649 (right!1652 t!48253))) (is-Black!8 (color!39 (left!1649 (right!1652 t!48253)))))))))

(assert (=> b!86536 d!57877))

(declare-fun d!57879 () Bool)

(declare-fun res!45225 () Bool)

(declare-fun e!47063 () Bool)

(assert (=> d!57879 (=> res!45225 e!47063)))

(assert (=> d!57879 (= res!45225 (not (is-Node!150 (right!1652 (left!1649 t!48253)))))))

(assert (=> d!57879 (= (blackBalanced!0 (right!1652 (left!1649 t!48253))) e!47063)))

(declare-fun b!86748 () Bool)

(declare-fun e!47062 () Bool)

(assert (=> b!86748 (= e!47063 e!47062)))

(declare-fun res!45224 () Bool)

(assert (=> b!86748 (=> (not res!45224) (not e!47062))))

(assert (=> b!86748 (= res!45224 (blackBalanced!0 (left!1649 (right!1652 (left!1649 t!48253)))))))

(declare-fun b!86749 () Bool)

(declare-fun res!45226 () Bool)

(assert (=> b!86749 (=> (not res!45226) (not e!47062))))

(assert (=> b!86749 (= res!45226 (blackBalanced!0 (right!1652 (right!1652 (left!1649 t!48253)))))))

(declare-fun b!86750 () Bool)

(assert (=> b!86750 (= e!47062 (= (blackHeight!0 (left!1649 (right!1652 (left!1649 t!48253)))) (blackHeight!0 (right!1652 (right!1652 (left!1649 t!48253))))))))

(assert (= (and d!57879 (not res!45225)) b!86748))

(assert (= (and b!86748 res!45224) b!86749))

(assert (= (and b!86749 res!45226) b!86750))

(declare-fun m!82702 () Bool)

(assert (=> b!86748 m!82702))

(declare-fun m!82704 () Bool)

(assert (=> b!86749 m!82704))

(assert (=> b!86750 m!82688))

(declare-fun m!82706 () Bool)

(assert (=> b!86750 m!82706))

(assert (=> b!86565 d!57879))

(declare-fun d!57881 () Bool)

(declare-fun res!45228 () Bool)

(declare-fun e!47065 () Bool)

(assert (=> d!57881 (=> res!45228 e!47065)))

(assert (=> d!57881 (= res!45228 (not (is-Node!150 (left!1649 (left!1649 t!48253)))))))

(assert (=> d!57881 (= (blackBalanced!0 (left!1649 (left!1649 t!48253))) e!47065)))

(declare-fun b!86751 () Bool)

(declare-fun e!47064 () Bool)

(assert (=> b!86751 (= e!47065 e!47064)))

(declare-fun res!45227 () Bool)

(assert (=> b!86751 (=> (not res!45227) (not e!47064))))

(assert (=> b!86751 (= res!45227 (blackBalanced!0 (left!1649 (left!1649 (left!1649 t!48253)))))))

(declare-fun b!86752 () Bool)

(declare-fun res!45229 () Bool)

(assert (=> b!86752 (=> (not res!45229) (not e!47064))))

(assert (=> b!86752 (= res!45229 (blackBalanced!0 (right!1652 (left!1649 (left!1649 t!48253)))))))

(declare-fun b!86753 () Bool)

(assert (=> b!86753 (= e!47064 (= (blackHeight!0 (left!1649 (left!1649 (left!1649 t!48253)))) (blackHeight!0 (right!1652 (left!1649 (left!1649 t!48253))))))))

(assert (= (and d!57881 (not res!45228)) b!86751))

(assert (= (and b!86751 res!45227) b!86752))

(assert (= (and b!86752 res!45229) b!86753))

(declare-fun m!82708 () Bool)

(assert (=> b!86751 m!82708))

(declare-fun m!82710 () Bool)

(assert (=> b!86752 m!82710))

(assert (=> b!86753 m!82538))

(declare-fun m!82712 () Bool)

(assert (=> b!86753 m!82712))

(assert (=> b!86564 d!57881))

(assert (=> b!86583 d!57801))

(declare-fun b!86755 () Bool)

(declare-fun e!47066 () Int)

(declare-fun lt!20102 () Int)

(assert (=> b!86755 (= e!47066 (ite (and (is-Node!150 (right!1652 (right!1652 t!48253))) (is-Black!8 (color!39 (right!1652 (right!1652 t!48253))))) (+ lt!20102 1) lt!20102))))

(assert (=> b!86755 (= lt!20102 (blackHeight!0 (left!1649 (right!1652 (right!1652 t!48253)))))))

(declare-fun d!57883 () Bool)

(declare-fun c!21486 () Bool)

(assert (=> d!57883 (= c!21486 (is-Empty!189 (right!1652 (right!1652 t!48253))))))

(assert (=> d!57883 (= (blackHeight!0 (right!1652 (right!1652 t!48253))) e!47066)))

(declare-fun b!86754 () Bool)

(assert (=> b!86754 (= e!47066 1)))

(assert (= (and d!57883 c!21486) b!86754))

(assert (= (and d!57883 (not c!21486)) b!86755))

(assert (=> b!86755 m!82492))

(assert (=> b!86583 d!57883))

(declare-fun d!57885 () Bool)

(declare-fun c!21487 () Bool)

(assert (=> d!57885 (= c!21487 (is-Empty!189 (left!1649 lt!20043)))))

(declare-fun e!47067 () (Set Int))

(assert (=> d!57885 (= (content!8 (left!1649 lt!20043)) e!47067)))

(declare-fun b!86756 () Bool)

(assert (=> b!86756 (= e!47067 (as emptyset (Set Int)))))

(declare-fun b!86757 () Bool)

(assert (=> b!86757 (= e!47067 (union (union (content!8 (left!1649 (left!1649 lt!20043))) (insert (value!6796 (left!1649 lt!20043)) (as emptyset (Set Int)))) (content!8 (right!1652 (left!1649 lt!20043)))))))

(assert (= (and d!57885 c!21487) b!86756))

(assert (= (and d!57885 (not c!21487)) b!86757))

(declare-fun m!82714 () Bool)

(assert (=> b!86757 m!82714))

(declare-fun m!82716 () Bool)

(assert (=> b!86757 m!82716))

(declare-fun m!82718 () Bool)

(assert (=> b!86757 m!82718))

(assert (=> b!86527 d!57885))

(declare-fun d!57887 () Bool)

(declare-fun c!21488 () Bool)

(assert (=> d!57887 (= c!21488 (is-Empty!189 (right!1652 lt!20043)))))

(declare-fun e!47068 () (Set Int))

(assert (=> d!57887 (= (content!8 (right!1652 lt!20043)) e!47068)))

(declare-fun b!86758 () Bool)

(assert (=> b!86758 (= e!47068 (as emptyset (Set Int)))))

(declare-fun b!86759 () Bool)

(assert (=> b!86759 (= e!47068 (union (union (content!8 (left!1649 (right!1652 lt!20043))) (insert (value!6796 (right!1652 lt!20043)) (as emptyset (Set Int)))) (content!8 (right!1652 (right!1652 lt!20043)))))))

(assert (= (and d!57887 c!21488) b!86758))

(assert (= (and d!57887 (not c!21488)) b!86759))

(declare-fun m!82720 () Bool)

(assert (=> b!86759 m!82720))

(declare-fun m!82722 () Bool)

(assert (=> b!86759 m!82722))

(declare-fun m!82724 () Bool)

(assert (=> b!86759 m!82724))

(assert (=> b!86527 d!57887))

(declare-fun d!57889 () Bool)

(declare-fun c!21489 () Bool)

(assert (=> d!57889 (= c!21489 (is-Empty!189 (left!1649 (Node!150 (color!39 t!48253) (ins!0 x!30388 (left!1649 t!48253)) (value!6796 t!48253) (right!1652 t!48253)))))))

(declare-fun e!47069 () (Set Int))

(assert (=> d!57889 (= (content!8 (left!1649 (Node!150 (color!39 t!48253) (ins!0 x!30388 (left!1649 t!48253)) (value!6796 t!48253) (right!1652 t!48253)))) e!47069)))

(declare-fun b!86760 () Bool)

(assert (=> b!86760 (= e!47069 (as emptyset (Set Int)))))

(declare-fun b!86761 () Bool)

(assert (=> b!86761 (= e!47069 (union (union (content!8 (left!1649 (left!1649 (Node!150 (color!39 t!48253) (ins!0 x!30388 (left!1649 t!48253)) (value!6796 t!48253) (right!1652 t!48253))))) (insert (value!6796 (left!1649 (Node!150 (color!39 t!48253) (ins!0 x!30388 (left!1649 t!48253)) (value!6796 t!48253) (right!1652 t!48253)))) (as emptyset (Set Int)))) (content!8 (right!1652 (left!1649 (Node!150 (color!39 t!48253) (ins!0 x!30388 (left!1649 t!48253)) (value!6796 t!48253) (right!1652 t!48253)))))))))

(assert (= (and d!57889 c!21489) b!86760))

(assert (= (and d!57889 (not c!21489)) b!86761))

(declare-fun m!82726 () Bool)

(assert (=> b!86761 m!82726))

(declare-fun m!82728 () Bool)

(assert (=> b!86761 m!82728))

(declare-fun m!82730 () Bool)

(assert (=> b!86761 m!82730))

(assert (=> b!86529 d!57889))

(declare-fun d!57891 () Bool)

(declare-fun c!21490 () Bool)

(assert (=> d!57891 (= c!21490 (is-Empty!189 (right!1652 (Node!150 (color!39 t!48253) (ins!0 x!30388 (left!1649 t!48253)) (value!6796 t!48253) (right!1652 t!48253)))))))

(declare-fun e!47070 () (Set Int))

(assert (=> d!57891 (= (content!8 (right!1652 (Node!150 (color!39 t!48253) (ins!0 x!30388 (left!1649 t!48253)) (value!6796 t!48253) (right!1652 t!48253)))) e!47070)))

(declare-fun b!86762 () Bool)

(assert (=> b!86762 (= e!47070 (as emptyset (Set Int)))))

(declare-fun b!86763 () Bool)

(assert (=> b!86763 (= e!47070 (union (union (content!8 (left!1649 (right!1652 (Node!150 (color!39 t!48253) (ins!0 x!30388 (left!1649 t!48253)) (value!6796 t!48253) (right!1652 t!48253))))) (insert (value!6796 (right!1652 (Node!150 (color!39 t!48253) (ins!0 x!30388 (left!1649 t!48253)) (value!6796 t!48253) (right!1652 t!48253)))) (as emptyset (Set Int)))) (content!8 (right!1652 (right!1652 (Node!150 (color!39 t!48253) (ins!0 x!30388 (left!1649 t!48253)) (value!6796 t!48253) (right!1652 t!48253)))))))))

(assert (= (and d!57891 c!21490) b!86762))

(assert (= (and d!57891 (not c!21490)) b!86763))

(declare-fun m!82732 () Bool)

(assert (=> b!86763 m!82732))

(declare-fun m!82734 () Bool)

(assert (=> b!86763 m!82734))

(declare-fun m!82736 () Bool)

(assert (=> b!86763 m!82736))

(assert (=> b!86529 d!57891))

(declare-fun b!86764 () Bool)

(declare-fun e!47074 () Bool)

(assert (=> b!86764 (= e!47074 (redNodesHaveBlackChildren!0 (right!1652 (left!1649 (right!1652 t!48253)))))))

(declare-fun b!86765 () Bool)

(declare-fun e!47073 () Bool)

(assert (=> b!86765 (= e!47073 (redNodesHaveBlackChildren!0 (right!1652 (left!1649 (right!1652 t!48253)))))))

(declare-fun b!86766 () Bool)

(declare-fun e!47071 () Bool)

(assert (=> b!86766 (= e!47071 e!47074)))

(declare-fun res!45231 () Bool)

(assert (=> b!86766 (=> (not res!45231) (not e!47074))))

(assert (=> b!86766 (= res!45231 (redNodesHaveBlackChildren!0 (left!1649 (left!1649 (right!1652 t!48253)))))))

(declare-fun b!86767 () Bool)

(declare-fun res!45230 () Bool)

(assert (=> b!86767 (=> (not res!45230) (not e!47073))))

(assert (=> b!86767 (= res!45230 (isBlack!0 (right!1652 (left!1649 (right!1652 t!48253)))))))

(declare-fun d!57893 () Bool)

(declare-fun res!45232 () Bool)

(declare-fun e!47072 () Bool)

(assert (=> d!57893 (=> res!45232 e!47072)))

(assert (=> d!57893 (= res!45232 (is-Empty!189 (left!1649 (right!1652 t!48253))))))

(assert (=> d!57893 (= (redNodesHaveBlackChildren!0 (left!1649 (right!1652 t!48253))) e!47072)))

(declare-fun b!86768 () Bool)

(declare-fun res!45234 () Bool)

(assert (=> b!86768 (=> (not res!45234) (not e!47073))))

(assert (=> b!86768 (= res!45234 (redNodesHaveBlackChildren!0 (left!1649 (left!1649 (right!1652 t!48253)))))))

(declare-fun b!86769 () Bool)

(assert (=> b!86769 (= e!47072 e!47071)))

(declare-fun c!21491 () Bool)

(assert (=> b!86769 (= c!21491 (and (is-Node!150 (left!1649 (right!1652 t!48253))) (is-Black!8 (color!39 (left!1649 (right!1652 t!48253))))))))

(declare-fun b!86770 () Bool)

(assert (=> b!86770 (= e!47071 e!47073)))

(declare-fun res!45233 () Bool)

(assert (=> b!86770 (=> (not res!45233) (not e!47073))))

(assert (=> b!86770 (= res!45233 (isBlack!0 (left!1649 (left!1649 (right!1652 t!48253)))))))

(assert (= (and d!57893 (not res!45232)) b!86769))

(assert (= (and b!86766 res!45231) b!86764))

(assert (= (and b!86770 res!45233) b!86767))

(assert (= (and b!86767 res!45230) b!86768))

(assert (= (and b!86768 res!45234) b!86765))

(assert (= (and b!86769 c!21491) b!86766))

(assert (= (and b!86769 (not c!21491)) b!86770))

(declare-fun m!82738 () Bool)

(assert (=> b!86770 m!82738))

(declare-fun m!82740 () Bool)

(assert (=> b!86768 m!82740))

(assert (=> b!86766 m!82740))

(declare-fun m!82742 () Bool)

(assert (=> b!86767 m!82742))

(declare-fun m!82744 () Bool)

(assert (=> b!86764 m!82744))

(assert (=> b!86765 m!82744))

(assert (=> b!86534 d!57893))

(assert (=> b!86588 d!57821))

(declare-fun d!57895 () Bool)

(assert (=> d!57895 (= (isBlack!0 (left!1649 (right!1652 res!44630))) (or (is-Empty!189 (left!1649 (right!1652 res!44630))) (and (is-Node!150 (left!1649 (right!1652 res!44630))) (is-Black!8 (color!39 (left!1649 (right!1652 res!44630)))))))))

(assert (=> b!86558 d!57895))

(assert (=> b!86540 d!57817))

(declare-fun d!57897 () Bool)

(assert (=> d!57897 (= (isBlack!0 (right!1652 (left!1649 res!44630))) (or (is-Empty!189 (right!1652 (left!1649 res!44630))) (and (is-Node!150 (right!1652 (left!1649 res!44630))) (is-Black!8 (color!39 (right!1652 (left!1649 res!44630)))))))))

(assert (=> b!86522 d!57897))

(declare-fun d!57899 () Bool)

(declare-fun e!47075 () Bool)

(assert (=> d!57899 e!47075))

(declare-fun res!45235 () Bool)

(assert (=> d!57899 (=> (not res!45235) (not e!47075))))

(declare-fun lt!20103 () Tree!106)

(assert (=> d!57899 (= res!45235 (is-Node!150 lt!20103))))

(assert (=> d!57899 (= lt!20103 (ite (and (is-Black!8 (color!39 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253))))) (is-Node!150 (ite lt!20068 lt!20069 (left!1649 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))))) (is-Red!8 (color!39 (ite lt!20068 lt!20069 (left!1649 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253))))))) (is-Node!150 (left!1649 (ite lt!20068 lt!20069 (left!1649 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253))))))) (is-Red!8 (color!39 (left!1649 (ite lt!20068 lt!20069 (left!1649 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253))))))))) (Node!150 Red!8 (Node!150 Black!8 (left!1649 (left!1649 (ite lt!20068 lt!20069 (left!1649 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253))))))) (value!6796 (left!1649 (ite lt!20068 lt!20069 (left!1649 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253))))))) (right!1652 (left!1649 (ite lt!20068 lt!20069 (left!1649 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))))))) (value!6796 (ite lt!20068 lt!20069 (left!1649 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))))) (Node!150 Black!8 (right!1652 (ite lt!20068 lt!20069 (left!1649 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))))) (value!6796 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) (ite lt!20068 (right!1652 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) lt!20069))) (ite (and (is-Black!8 (color!39 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253))))) (is-Node!150 (ite lt!20068 lt!20069 (left!1649 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))))) (is-Red!8 (color!39 (ite lt!20068 lt!20069 (left!1649 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253))))))) (is-Node!150 (right!1652 (ite lt!20068 lt!20069 (left!1649 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253))))))) (is-Red!8 (color!39 (right!1652 (ite lt!20068 lt!20069 (left!1649 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253))))))))) (Node!150 Red!8 (Node!150 Black!8 (left!1649 (ite lt!20068 lt!20069 (left!1649 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))))) (value!6796 (ite lt!20068 lt!20069 (left!1649 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))))) (left!1649 (right!1652 (ite lt!20068 lt!20069 (left!1649 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))))))) (value!6796 (right!1652 (ite lt!20068 lt!20069 (left!1649 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253))))))) (Node!150 Black!8 (right!1652 (right!1652 (ite lt!20068 lt!20069 (left!1649 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253))))))) (value!6796 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) (ite lt!20068 (right!1652 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) lt!20069))) (ite (and (is-Black!8 (color!39 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253))))) (is-Node!150 (ite lt!20068 (right!1652 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) lt!20069)) (is-Red!8 (color!39 (ite lt!20068 (right!1652 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) lt!20069))) (is-Node!150 (left!1649 (ite lt!20068 (right!1652 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) lt!20069))) (is-Red!8 (color!39 (left!1649 (ite lt!20068 (right!1652 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) lt!20069))))) (Node!150 Red!8 (Node!150 Black!8 (ite lt!20068 lt!20069 (left!1649 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253))))) (value!6796 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) (left!1649 (left!1649 (ite lt!20068 (right!1652 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) lt!20069)))) (value!6796 (left!1649 (ite lt!20068 (right!1652 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) lt!20069))) (Node!150 Black!8 (right!1652 (left!1649 (ite lt!20068 (right!1652 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) lt!20069))) (value!6796 (ite lt!20068 (right!1652 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) lt!20069)) (right!1652 (ite lt!20068 (right!1652 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) lt!20069)))) (ite (and (is-Black!8 (color!39 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253))))) (is-Node!150 (ite lt!20068 (right!1652 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) lt!20069)) (is-Red!8 (color!39 (ite lt!20068 (right!1652 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) lt!20069))) (is-Node!150 (right!1652 (ite lt!20068 (right!1652 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) lt!20069))) (is-Red!8 (color!39 (right!1652 (ite lt!20068 (right!1652 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) lt!20069))))) (Node!150 Red!8 (Node!150 Black!8 (ite lt!20068 lt!20069 (left!1649 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253))))) (value!6796 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) (left!1649 (ite lt!20068 (right!1652 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) lt!20069))) (value!6796 (ite lt!20068 (right!1652 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) lt!20069)) (Node!150 Black!8 (left!1649 (right!1652 (ite lt!20068 (right!1652 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) lt!20069))) (value!6796 (right!1652 (ite lt!20068 (right!1652 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) lt!20069))) (right!1652 (right!1652 (ite lt!20068 (right!1652 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) lt!20069))))) (Node!150 (color!39 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) (ite lt!20068 lt!20069 (left!1649 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253))))) (value!6796 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) (ite lt!20068 (right!1652 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) lt!20069)))))))))

(assert (=> d!57899 (= (balance!0 (color!39 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) (ite lt!20068 lt!20069 (left!1649 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253))))) (value!6796 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) (ite lt!20068 (right!1652 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) lt!20069)) lt!20103)))

(declare-fun b!86771 () Bool)

(assert (=> b!86771 (= e!47075 (= (content!8 lt!20103) (content!8 (Node!150 (color!39 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) (ite lt!20068 lt!20069 (left!1649 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253))))) (value!6796 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) (ite lt!20068 (right!1652 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) lt!20069)))))))

(assert (= (and d!57899 res!45235) b!86771))

(declare-fun m!82746 () Bool)

(assert (=> b!86771 m!82746))

(declare-fun m!82748 () Bool)

(assert (=> b!86771 m!82748))

(assert (=> b!86546 d!57899))

(declare-fun d!57901 () Bool)

(declare-fun c!21492 () Bool)

(assert (=> d!57901 (= c!21492 (is-Empty!189 lt!20070))))

(declare-fun e!47076 () (Set Int))

(assert (=> d!57901 (= (content!8 lt!20070) e!47076)))

(declare-fun b!86772 () Bool)

(assert (=> b!86772 (= e!47076 (as emptyset (Set Int)))))

(declare-fun b!86773 () Bool)

(assert (=> b!86773 (= e!47076 (union (union (content!8 (left!1649 lt!20070)) (insert (value!6796 lt!20070) (as emptyset (Set Int)))) (content!8 (right!1652 lt!20070))))))

(assert (= (and d!57901 c!21492) b!86772))

(assert (= (and d!57901 (not c!21492)) b!86773))

(declare-fun m!82750 () Bool)

(assert (=> b!86773 m!82750))

(declare-fun m!82752 () Bool)

(assert (=> b!86773 m!82752))

(declare-fun m!82754 () Bool)

(assert (=> b!86773 m!82754))

(assert (=> d!57739 d!57901))

(declare-fun d!57903 () Bool)

(declare-fun c!21493 () Bool)

(assert (=> d!57903 (= c!21493 (is-Empty!189 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))))))

(declare-fun e!47077 () (Set Int))

(assert (=> d!57903 (= (content!8 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) e!47077)))

(declare-fun b!86774 () Bool)

(assert (=> b!86774 (= e!47077 (as emptyset (Set Int)))))

(declare-fun b!86775 () Bool)

(assert (=> b!86775 (= e!47077 (union (union (content!8 (left!1649 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253))))) (insert (value!6796 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) (as emptyset (Set Int)))) (content!8 (right!1652 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))))))))

(assert (= (and d!57903 c!21493) b!86774))

(assert (= (and d!57903 (not c!21493)) b!86775))

(declare-fun m!82756 () Bool)

(assert (=> b!86775 m!82756))

(declare-fun m!82758 () Bool)

(assert (=> b!86775 m!82758))

(declare-fun m!82760 () Bool)

(assert (=> b!86775 m!82760))

(assert (=> d!57739 d!57903))

(declare-fun b!86776 () Bool)

(declare-fun e!47081 () Bool)

(assert (=> b!86776 (= e!47081 (redNodesHaveBlackChildren!0 (right!1652 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253))))))))

(declare-fun b!86777 () Bool)

(declare-fun e!47080 () Bool)

(assert (=> b!86777 (= e!47080 (redNodesHaveBlackChildren!0 (right!1652 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253))))))))

(declare-fun b!86778 () Bool)

(declare-fun e!47078 () Bool)

(assert (=> b!86778 (= e!47078 e!47081)))

(declare-fun res!45237 () Bool)

(assert (=> b!86778 (=> (not res!45237) (not e!47081))))

(assert (=> b!86778 (= res!45237 (redNodesHaveBlackChildren!0 (left!1649 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253))))))))

(declare-fun b!86779 () Bool)

(declare-fun res!45236 () Bool)

(assert (=> b!86779 (=> (not res!45236) (not e!47080))))

(assert (=> b!86779 (= res!45236 (isBlack!0 (right!1652 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253))))))))

(declare-fun d!57905 () Bool)

(declare-fun res!45238 () Bool)

(declare-fun e!47079 () Bool)

(assert (=> d!57905 (=> res!45238 e!47079)))

(assert (=> d!57905 (= res!45238 (is-Empty!189 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))))))

(assert (=> d!57905 (= (redNodesHaveBlackChildren!0 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) e!47079)))

(declare-fun b!86780 () Bool)

(declare-fun res!45240 () Bool)

(assert (=> b!86780 (=> (not res!45240) (not e!47080))))

(assert (=> b!86780 (= res!45240 (redNodesHaveBlackChildren!0 (left!1649 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253))))))))

(declare-fun b!86781 () Bool)

(assert (=> b!86781 (= e!47079 e!47078)))

(declare-fun c!21494 () Bool)

(assert (=> b!86781 (= c!21494 (and (is-Node!150 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))) (is-Black!8 (color!39 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253)))))))))

(declare-fun b!86782 () Bool)

(assert (=> b!86782 (= e!47078 e!47080)))

(declare-fun res!45239 () Bool)

(assert (=> b!86782 (=> (not res!45239) (not e!47080))))

(assert (=> b!86782 (= res!45239 (isBlack!0 (left!1649 (ite lt!20054 (left!1649 (left!1649 t!48253)) (right!1652 (left!1649 t!48253))))))))

(assert (= (and d!57905 (not res!45238)) b!86781))

(assert (= (and b!86778 res!45237) b!86776))

(assert (= (and b!86782 res!45239) b!86779))

(assert (= (and b!86779 res!45236) b!86780))

(assert (= (and b!86780 res!45240) b!86777))

(assert (= (and b!86781 c!21494) b!86778))

(assert (= (and b!86781 (not c!21494)) b!86782))

(declare-fun m!82762 () Bool)

(assert (=> b!86782 m!82762))

(declare-fun m!82764 () Bool)

(assert (=> b!86780 m!82764))

(assert (=> b!86778 m!82764))

(declare-fun m!82766 () Bool)

(assert (=> b!86779 m!82766))

(declare-fun m!82768 () Bool)

(assert (=> b!86776 m!82768))

(assert (=> b!86777 m!82768))

(assert (=> d!57739 d!57905))

(declare-fun b!86783 () Bool)

(declare-fun e!47085 () Bool)

(assert (=> b!86783 (= e!47085 (redNodesHaveBlackChildren!0 (right!1652 (right!1652 lt!20057))))))

(declare-fun b!86784 () Bool)

(declare-fun e!47084 () Bool)

(assert (=> b!86784 (= e!47084 (redNodesHaveBlackChildren!0 (right!1652 (right!1652 lt!20057))))))

(declare-fun b!86785 () Bool)

(declare-fun e!47082 () Bool)

(assert (=> b!86785 (= e!47082 e!47085)))

(declare-fun res!45242 () Bool)

(assert (=> b!86785 (=> (not res!45242) (not e!47085))))

(assert (=> b!86785 (= res!45242 (redNodesHaveBlackChildren!0 (left!1649 (right!1652 lt!20057))))))

(declare-fun b!86786 () Bool)

(declare-fun res!45241 () Bool)

(assert (=> b!86786 (=> (not res!45241) (not e!47084))))

(assert (=> b!86786 (= res!45241 (isBlack!0 (right!1652 (right!1652 lt!20057))))))

(declare-fun d!57907 () Bool)

(declare-fun res!45243 () Bool)

(declare-fun e!47083 () Bool)

(assert (=> d!57907 (=> res!45243 e!47083)))

(assert (=> d!57907 (= res!45243 (is-Empty!189 (right!1652 lt!20057)))))

(assert (=> d!57907 (= (redNodesHaveBlackChildren!0 (right!1652 lt!20057)) e!47083)))

(declare-fun b!86787 () Bool)

(declare-fun res!45245 () Bool)

(assert (=> b!86787 (=> (not res!45245) (not e!47084))))

(assert (=> b!86787 (= res!45245 (redNodesHaveBlackChildren!0 (left!1649 (right!1652 lt!20057))))))

(declare-fun b!86788 () Bool)

(assert (=> b!86788 (= e!47083 e!47082)))

(declare-fun c!21495 () Bool)

(assert (=> b!86788 (= c!21495 (and (is-Node!150 (right!1652 lt!20057)) (is-Black!8 (color!39 (right!1652 lt!20057)))))))

(declare-fun b!86789 () Bool)

(assert (=> b!86789 (= e!47082 e!47084)))

(declare-fun res!45244 () Bool)

(assert (=> b!86789 (=> (not res!45244) (not e!47084))))

(assert (=> b!86789 (= res!45244 (isBlack!0 (left!1649 (right!1652 lt!20057))))))

(assert (= (and d!57907 (not res!45243)) b!86788))

(assert (= (and b!86785 res!45242) b!86783))

(assert (= (and b!86789 res!45244) b!86786))

(assert (= (and b!86786 res!45241) b!86787))

(assert (= (and b!86787 res!45245) b!86784))

(assert (= (and b!86788 c!21495) b!86785))

(assert (= (and b!86788 (not c!21495)) b!86789))

(declare-fun m!82770 () Bool)

(assert (=> b!86789 m!82770))

(declare-fun m!82772 () Bool)

(assert (=> b!86787 m!82772))

(assert (=> b!86785 m!82772))

(declare-fun m!82774 () Bool)

(assert (=> b!86786 m!82774))

(declare-fun m!82776 () Bool)

(assert (=> b!86783 m!82776))

(assert (=> b!86784 m!82776))

(assert (=> b!86577 d!57907))

(declare-fun d!57909 () Bool)

(declare-fun res!45247 () Bool)

(declare-fun e!47087 () Bool)

(assert (=> d!57909 (=> res!45247 e!47087)))

(assert (=> d!57909 (= res!45247 (not (is-Node!150 (right!1652 (right!1652 res!44630)))))))

(assert (=> d!57909 (= (blackBalanced!0 (right!1652 (right!1652 res!44630))) e!47087)))

(declare-fun b!86790 () Bool)

(declare-fun e!47086 () Bool)

(assert (=> b!86790 (= e!47087 e!47086)))

(declare-fun res!45246 () Bool)

(assert (=> b!86790 (=> (not res!45246) (not e!47086))))

(assert (=> b!86790 (= res!45246 (blackBalanced!0 (left!1649 (right!1652 (right!1652 res!44630)))))))

(declare-fun b!86791 () Bool)

(declare-fun res!45248 () Bool)

(assert (=> b!86791 (=> (not res!45248) (not e!47086))))

(assert (=> b!86791 (= res!45248 (blackBalanced!0 (right!1652 (right!1652 (right!1652 res!44630)))))))

(declare-fun b!86792 () Bool)

(assert (=> b!86792 (= e!47086 (= (blackHeight!0 (left!1649 (right!1652 (right!1652 res!44630)))) (blackHeight!0 (right!1652 (right!1652 (right!1652 res!44630))))))))

(assert (= (and d!57909 (not res!45247)) b!86790))

(assert (= (and b!86790 res!45246) b!86791))

(assert (= (and b!86791 res!45248) b!86792))

(declare-fun m!82778 () Bool)

(assert (=> b!86790 m!82778))

(declare-fun m!82780 () Bool)

(assert (=> b!86791 m!82780))

(assert (=> b!86792 m!82576))

(declare-fun m!82782 () Bool)

(assert (=> b!86792 m!82782))

(assert (=> b!86572 d!57909))

(declare-fun d!57911 () Bool)

(assert (=> d!57911 (= (isBlack!0 (right!1652 (right!1652 res!44630))) (or (is-Empty!189 (right!1652 (right!1652 res!44630))) (and (is-Node!150 (right!1652 (right!1652 res!44630))) (is-Black!8 (color!39 (right!1652 (right!1652 res!44630)))))))))

(assert (=> b!86555 d!57911))

(declare-fun d!57913 () Bool)

(declare-fun c!21496 () Bool)

(assert (=> d!57913 (= c!21496 (is-Empty!189 lt!20072))))

(declare-fun e!47088 () (Set Int))

(assert (=> d!57913 (= (content!8 lt!20072) e!47088)))

(declare-fun b!86793 () Bool)

(assert (=> b!86793 (= e!47088 (as emptyset (Set Int)))))

(declare-fun b!86794 () Bool)

(assert (=> b!86794 (= e!47088 (union (union (content!8 (left!1649 lt!20072)) (insert (value!6796 lt!20072) (as emptyset (Set Int)))) (content!8 (right!1652 lt!20072))))))

(assert (= (and d!57913 c!21496) b!86793))

(assert (= (and d!57913 (not c!21496)) b!86794))

(declare-fun m!82784 () Bool)

(assert (=> b!86794 m!82784))

(declare-fun m!82786 () Bool)

(assert (=> b!86794 m!82786))

(declare-fun m!82788 () Bool)

(assert (=> b!86794 m!82788))

(assert (=> b!86559 d!57913))

(declare-fun d!57915 () Bool)

(declare-fun c!21497 () Bool)

(assert (=> d!57915 (= c!21497 (is-Empty!189 (Node!150 (color!39 (left!1649 t!48253)) (ite lt!20055 lt!20056 (left!1649 (left!1649 t!48253))) (value!6796 (left!1649 t!48253)) (ite lt!20055 (right!1652 (left!1649 t!48253)) lt!20056))))))

(declare-fun e!47089 () (Set Int))

(assert (=> d!57915 (= (content!8 (Node!150 (color!39 (left!1649 t!48253)) (ite lt!20055 lt!20056 (left!1649 (left!1649 t!48253))) (value!6796 (left!1649 t!48253)) (ite lt!20055 (right!1652 (left!1649 t!48253)) lt!20056))) e!47089)))

(declare-fun b!86795 () Bool)

(assert (=> b!86795 (= e!47089 (as emptyset (Set Int)))))

(declare-fun b!86796 () Bool)

(assert (=> b!86796 (= e!47089 (union (union (content!8 (left!1649 (Node!150 (color!39 (left!1649 t!48253)) (ite lt!20055 lt!20056 (left!1649 (left!1649 t!48253))) (value!6796 (left!1649 t!48253)) (ite lt!20055 (right!1652 (left!1649 t!48253)) lt!20056)))) (insert (value!6796 (Node!150 (color!39 (left!1649 t!48253)) (ite lt!20055 lt!20056 (left!1649 (left!1649 t!48253))) (value!6796 (left!1649 t!48253)) (ite lt!20055 (right!1652 (left!1649 t!48253)) lt!20056))) (as emptyset (Set Int)))) (content!8 (right!1652 (Node!150 (color!39 (left!1649 t!48253)) (ite lt!20055 lt!20056 (left!1649 (left!1649 t!48253))) (value!6796 (left!1649 t!48253)) (ite lt!20055 (right!1652 (left!1649 t!48253)) lt!20056))))))))

(assert (= (and d!57915 c!21497) b!86795))

(assert (= (and d!57915 (not c!21497)) b!86796))

(declare-fun m!82790 () Bool)

(assert (=> b!86796 m!82790))

(declare-fun m!82792 () Bool)

(assert (=> b!86796 m!82792))

(declare-fun m!82794 () Bool)

(assert (=> b!86796 m!82794))

(assert (=> b!86559 d!57915))

(declare-fun d!57917 () Bool)

(declare-fun res!45250 () Bool)

(declare-fun e!47091 () Bool)

(assert (=> d!57917 (=> res!45250 e!47091)))

(assert (=> d!57917 (= res!45250 (not (is-Node!150 lt!20070)))))

(assert (=> d!57917 (= (blackBalanced!0 lt!20070) e!47091)))

(declare-fun b!86797 () Bool)

(declare-fun e!47090 () Bool)

(assert (=> b!86797 (= e!47091 e!47090)))

(declare-fun res!45249 () Bool)

(assert (=> b!86797 (=> (not res!45249) (not e!47090))))

(assert (=> b!86797 (= res!45249 (blackBalanced!0 (left!1649 lt!20070)))))

(declare-fun b!86798 () Bool)

(declare-fun res!45251 () Bool)

(assert (=> b!86798 (=> (not res!45251) (not e!47090))))

(assert (=> b!86798 (= res!45251 (blackBalanced!0 (right!1652 lt!20070)))))

(declare-fun b!86799 () Bool)

(assert (=> b!86799 (= e!47090 (= (blackHeight!0 (left!1649 lt!20070)) (blackHeight!0 (right!1652 lt!20070))))))

(assert (= (and d!57917 (not res!45250)) b!86797))

(assert (= (and b!86797 res!45249) b!86798))

(assert (= (and b!86798 res!45251) b!86799))

(declare-fun m!82796 () Bool)

(assert (=> b!86797 m!82796))

(declare-fun m!82798 () Bool)

(assert (=> b!86798 m!82798))

(declare-fun m!82800 () Bool)

(assert (=> b!86799 m!82800))

(declare-fun m!82802 () Bool)

(assert (=> b!86799 m!82802))

(assert (=> b!86543 d!57917))

(assert (=> b!86532 d!57893))

(assert (=> b!86530 d!57783))

(declare-fun d!57919 () Bool)

(assert (=> d!57919 (= (isBlack!0 (left!1649 (left!1649 t!48253))) (or (is-Empty!189 (left!1649 (left!1649 t!48253))) (and (is-Node!150 (left!1649 (left!1649 t!48253))) (is-Black!8 (color!39 (left!1649 (left!1649 t!48253)))))))))

(assert (=> b!86592 d!57919))

(push 1)

(assert (not b!86629))

(assert (not b!86733))

(assert (not b!86681))

(assert (not b!86764))

(assert (not b!86650))

(assert (not b!86717))

(assert (not b!86739))

(assert (not b!86669))

(assert (not b!86612))

(assert (not b!86782))

(assert (not b!86765))

(assert (not b!86771))

(assert (not b!86660))

(assert (not b!86791))

(assert (not b!86709))

(assert (not b!86656))

(assert (not b!86618))

(assert (not b!86688))

(assert (not b!86705))

(assert (not b!86794))

(assert (not b!86743))

(assert (not b!86726))

(assert (not b!86649))

(assert (not b!86632))

(assert (not b!86602))

(assert (not b!86624))

(assert (not b!86694))

(assert (not b!86779))

(assert (not b!86730))

(assert (not b!86627))

(assert (not b!86770))

(assert (not b!86677))

(assert (not b!86617))

(assert (not b!86638))

(assert (not b!86797))

(assert (not b!86718))

(assert (not b!86748))

(assert (not b!86644))

(assert (not b!86628))

(assert (not b!86603))

(assert (not b!86735))

(assert (not b!86710))

(assert (not b!86785))

(assert (not b!86662))

(assert (not b!86745))

(assert (not b!86673))

(assert (not b!86712))

(assert (not b!86784))

(assert (not b!86727))

(assert (not b!86675))

(assert (not b!86598))

(assert (not b!86722))

(assert (not b!86798))

(assert (not b!86777))

(assert (not b!86609))

(assert (not b!86698))

(assert (not b!86792))

(assert (not b!86759))

(assert (not b!86671))

(assert (not b!86658))

(assert (not b!86790))

(assert (not b!86678))

(assert (not b!86657))

(assert (not b!86773))

(assert (not b!86799))

(assert (not b!86700))

(assert (not b!86680))

(assert (not b!86670))

(assert (not b!86690))

(assert (not b!86737))

(assert (not b!86747))

(assert (not b!86757))

(assert (not b!86626))

(assert (not b!86719))

(assert (not b!86666))

(assert (not b!86728))

(assert (not b!86699))

(assert (not b!86664))

(assert (not b!86610))

(assert (not b!86734))

(assert (not b!86697))

(assert (not b!86667))

(assert (not b!86652))

(assert (not b!86640))

(assert (not b!86767))

(assert (not b!86668))

(assert (not b!86780))

(assert (not b!86692))

(assert (not b!86614))

(assert (not b!86703))

(assert (not b!86701))

(assert (not b!86731))

(assert (not b!86648))

(assert (not b!86750))

(assert (not b!86619))

(assert (not b!86763))

(assert (not b!86642))

(assert (not b!86655))

(assert (not b!86796))

(assert (not b!86761))

(assert (not b!86606))

(assert (not b!86729))

(assert (not b!86625))

(assert (not b!86752))

(assert (not b!86696))

(assert (not b!86600))

(assert (not b!86714))

(assert (not b!86768))

(assert (not b!86715))

(assert (not b!86753))

(assert (not b!86630))

(assert (not b!86645))

(assert (not b!86620))

(assert (not b!86776))

(assert (not b!86594))

(assert (not b!86789))

(assert (not b!86720))

(assert (not b!86659))

(assert (not b!86724))

(assert (not b!86615))

(assert (not b!86708))

(assert (not b!86783))

(assert (not b!86651))

(assert (not b!86613))

(assert (not b!86751))

(assert (not b!86634))

(assert (not b!86736))

(assert (not b!86716))

(assert (not b!86786))

(assert (not b!86732))

(assert (not b!86684))

(assert (not b!86679))

(assert (not b!86611))

(assert (not b!86755))

(assert (not b!86787))

(assert (not b!86749))

(assert (not b!86604))

(assert (not b!86682))

(assert (not b!86766))

(assert (not d!57777))

(assert (not b!86646))

(assert (not b!86608))

(assert (not b!86775))

(assert (not b!86621))

(assert (not b!86741))

(assert (not b!86596))

(assert (not b!86636))

(assert (not b!86778))

(assert (not b!86622))

(assert (not b!86707))

(assert (not b!86653))

(assert (not b!86686))

(assert (not b!86599))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

