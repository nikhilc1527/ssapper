; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11332 () Bool)

(assert start!11332)

(declare-fun b!86814 () Bool)

(declare-fun e!47097 () Bool)

(declare-datatypes () ((Color!10 (Red!9) (Black!9))))

(declare-datatypes () ((Tree!107 (Empty!190) (Node!151 (color!40 Color!10) (left!1650 Tree!107) (value!6797 Int) (right!1653 Tree!107)))))

(declare-fun res!44633 () Tree!107)

(declare-fun blackBalanced!0 (Tree!107) Bool)

(assert (=> b!86814 (= e!47097 (not (blackBalanced!0 res!44633)))))

(declare-fun b!86815 () Bool)

(declare-fun res!45269 () Bool)

(assert (=> b!86815 (=> res!45269 e!47097)))

(declare-fun t!48253 () Tree!107)

(declare-fun size!3 (Tree!107) Int)

(assert (=> b!86815 (= res!45269 (> (size!3 res!44633) (+ (size!3 t!48253) 1)))))

(declare-fun res!45268 () Bool)

(declare-fun e!47096 () Bool)

(assert (=> start!11332 (=> (not res!45268) (not e!47096))))

(declare-fun redNodesHaveBlackChildren!0 (Tree!107) Bool)

(assert (=> start!11332 (= res!45268 (redNodesHaveBlackChildren!0 t!48253))))

(assert (=> start!11332 e!47096))

(assert (=> start!11332 true))

(declare-fun b!86816 () Bool)

(declare-fun res!45272 () Bool)

(assert (=> b!86816 (=> (not res!45272) (not e!47096))))

(assert (=> b!86816 (= res!45272 (blackBalanced!0 t!48253))))

(declare-fun b!86817 () Bool)

(declare-fun res!45270 () Bool)

(assert (=> b!86817 (=> res!45270 e!47097)))

(declare-fun redDescHaveBlackChildren!0 (Tree!107) Bool)

(assert (=> b!86817 (= res!45270 (not (redDescHaveBlackChildren!0 res!44633)))))

(declare-fun b!86818 () Bool)

(declare-fun res!45266 () Bool)

(assert (=> b!86818 (=> (not res!45266) (not e!47096))))

(declare-fun x!30388 () Int)

(assert (=> b!86818 (= res!45266 (and (not (is-Empty!190 t!48253)) (>= x!30388 (value!6797 t!48253)) (= x!30388 (value!6797 t!48253)) (= res!44633 t!48253)))))

(declare-fun b!86819 () Bool)

(assert (=> b!86819 (= e!47096 e!47097)))

(declare-fun res!45267 () Bool)

(assert (=> b!86819 (=> res!45267 e!47097)))

(declare-fun content!8 (Tree!107) (Set Int))

(assert (=> b!86819 (= res!45267 (not (= (content!8 res!44633) (union (content!8 t!48253) (insert x!30388 (as emptyset (Set Int)))))))))

(declare-fun b!86820 () Bool)

(declare-fun res!45271 () Bool)

(assert (=> b!86820 (=> res!45271 e!47097)))

(assert (=> b!86820 (= res!45271 (> (size!3 t!48253) (size!3 res!44633)))))

(assert (= (and start!11332 res!45268) b!86816))

(assert (= (and b!86816 res!45272) b!86818))

(assert (= (and b!86818 res!45266) b!86819))

(assert (= (and b!86819 (not res!45267)) b!86820))

(assert (= (and b!86820 (not res!45271)) b!86815))

(assert (= (and b!86815 (not res!45269)) b!86817))

(assert (= (and b!86817 (not res!45270)) b!86814))

(declare-fun m!82804 () Bool)

(assert (=> b!86817 m!82804))

(declare-fun m!82806 () Bool)

(assert (=> b!86819 m!82806))

(declare-fun m!82808 () Bool)

(assert (=> b!86819 m!82808))

(declare-fun m!82810 () Bool)

(assert (=> b!86819 m!82810))

(declare-fun m!82812 () Bool)

(assert (=> b!86815 m!82812))

(declare-fun m!82814 () Bool)

(assert (=> b!86815 m!82814))

(declare-fun m!82816 () Bool)

(assert (=> b!86814 m!82816))

(declare-fun m!82818 () Bool)

(assert (=> b!86816 m!82818))

(declare-fun m!82820 () Bool)

(assert (=> start!11332 m!82820))

(assert (=> b!86820 m!82814))

(assert (=> b!86820 m!82812))

(push 1)

(assert (not b!86820))

(assert (not b!86816))

(assert (not b!86817))

(assert (not b!86814))

(assert (not start!11332))

(assert (not b!86815))

(assert (not b!86819))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!57921 () Bool)

(declare-fun lt!20106 () Int)

(assert (=> d!57921 (>= lt!20106 0)))

(declare-fun e!47100 () Int)

(assert (=> d!57921 (= lt!20106 e!47100)))

(declare-fun c!21500 () Bool)

(assert (=> d!57921 (= c!21500 (is-Empty!190 res!44633))))

(assert (=> d!57921 (= (size!3 res!44633) lt!20106)))

(declare-fun b!86825 () Bool)

(assert (=> b!86825 (= e!47100 0)))

(declare-fun b!86826 () Bool)

(assert (=> b!86826 (= e!47100 (+ (+ (size!3 (left!1650 res!44633)) 1) (size!3 (right!1653 res!44633))))))

(assert (= (and d!57921 c!21500) b!86825))

(assert (= (and d!57921 (not c!21500)) b!86826))

(declare-fun m!82822 () Bool)

(assert (=> b!86826 m!82822))

(declare-fun m!82824 () Bool)

(assert (=> b!86826 m!82824))

(assert (=> b!86815 d!57921))

(declare-fun d!57923 () Bool)

(declare-fun lt!20107 () Int)

(assert (=> d!57923 (>= lt!20107 0)))

(declare-fun e!47101 () Int)

(assert (=> d!57923 (= lt!20107 e!47101)))

(declare-fun c!21501 () Bool)

(assert (=> d!57923 (= c!21501 (is-Empty!190 t!48253))))

(assert (=> d!57923 (= (size!3 t!48253) lt!20107)))

(declare-fun b!86827 () Bool)

(assert (=> b!86827 (= e!47101 0)))

(declare-fun b!86828 () Bool)

(assert (=> b!86828 (= e!47101 (+ (+ (size!3 (left!1650 t!48253)) 1) (size!3 (right!1653 t!48253))))))

(assert (= (and d!57923 c!21501) b!86827))

(assert (= (and d!57923 (not c!21501)) b!86828))

(declare-fun m!82826 () Bool)

(assert (=> b!86828 m!82826))

(declare-fun m!82828 () Bool)

(assert (=> b!86828 m!82828))

(assert (=> b!86815 d!57923))

(declare-fun d!57925 () Bool)

(declare-fun c!21504 () Bool)

(assert (=> d!57925 (= c!21504 (is-Empty!190 res!44633))))

(declare-fun e!47104 () (Set Int))

(assert (=> d!57925 (= (content!8 res!44633) e!47104)))

(declare-fun b!86833 () Bool)

(assert (=> b!86833 (= e!47104 (as emptyset (Set Int)))))

(declare-fun b!86834 () Bool)

(assert (=> b!86834 (= e!47104 (union (union (content!8 (left!1650 res!44633)) (insert (value!6797 res!44633) (as emptyset (Set Int)))) (content!8 (right!1653 res!44633))))))

(assert (= (and d!57925 c!21504) b!86833))

(assert (= (and d!57925 (not c!21504)) b!86834))

(declare-fun m!82830 () Bool)

(assert (=> b!86834 m!82830))

(declare-fun m!82832 () Bool)

(assert (=> b!86834 m!82832))

(declare-fun m!82834 () Bool)

(assert (=> b!86834 m!82834))

(assert (=> b!86819 d!57925))

(declare-fun d!57927 () Bool)

(declare-fun c!21505 () Bool)

(assert (=> d!57927 (= c!21505 (is-Empty!190 t!48253))))

(declare-fun e!47105 () (Set Int))

(assert (=> d!57927 (= (content!8 t!48253) e!47105)))

(declare-fun b!86835 () Bool)

(assert (=> b!86835 (= e!47105 (as emptyset (Set Int)))))

(declare-fun b!86836 () Bool)

(assert (=> b!86836 (= e!47105 (union (union (content!8 (left!1650 t!48253)) (insert (value!6797 t!48253) (as emptyset (Set Int)))) (content!8 (right!1653 t!48253))))))

(assert (= (and d!57927 c!21505) b!86835))

(assert (= (and d!57927 (not c!21505)) b!86836))

(declare-fun m!82836 () Bool)

(assert (=> b!86836 m!82836))

(declare-fun m!82838 () Bool)

(assert (=> b!86836 m!82838))

(declare-fun m!82840 () Bool)

(assert (=> b!86836 m!82840))

(assert (=> b!86819 d!57927))

(declare-fun b!86851 () Bool)

(declare-fun e!47115 () Bool)

(assert (=> b!86851 (= e!47115 (redNodesHaveBlackChildren!0 (right!1653 t!48253)))))

(declare-fun b!86852 () Bool)

(declare-fun res!45286 () Bool)

(declare-fun e!47117 () Bool)

(assert (=> b!86852 (=> (not res!45286) (not e!47117))))

(assert (=> b!86852 (= res!45286 (redNodesHaveBlackChildren!0 (left!1650 t!48253)))))

(declare-fun b!86853 () Bool)

(declare-fun e!47116 () Bool)

(declare-fun e!47114 () Bool)

(assert (=> b!86853 (= e!47116 e!47114)))

(declare-fun c!21508 () Bool)

(assert (=> b!86853 (= c!21508 (and (is-Node!151 t!48253) (is-Black!9 (color!40 t!48253))))))

(declare-fun b!86854 () Bool)

(assert (=> b!86854 (= e!47114 e!47115)))

(declare-fun res!45287 () Bool)

(assert (=> b!86854 (=> (not res!45287) (not e!47115))))

(assert (=> b!86854 (= res!45287 (redNodesHaveBlackChildren!0 (left!1650 t!48253)))))

(declare-fun b!86855 () Bool)

(assert (=> b!86855 (= e!47114 e!47117)))

(declare-fun res!45284 () Bool)

(assert (=> b!86855 (=> (not res!45284) (not e!47117))))

(declare-fun isBlack!0 (Tree!107) Bool)

(assert (=> b!86855 (= res!45284 (isBlack!0 (left!1650 t!48253)))))

(declare-fun b!86856 () Bool)

(assert (=> b!86856 (= e!47117 (redNodesHaveBlackChildren!0 (right!1653 t!48253)))))

(declare-fun b!86857 () Bool)

(declare-fun res!45285 () Bool)

(assert (=> b!86857 (=> (not res!45285) (not e!47117))))

(assert (=> b!86857 (= res!45285 (isBlack!0 (right!1653 t!48253)))))

(declare-fun d!57929 () Bool)

(declare-fun res!45283 () Bool)

(assert (=> d!57929 (=> res!45283 e!47116)))

(assert (=> d!57929 (= res!45283 (is-Empty!190 t!48253))))

(assert (=> d!57929 (= (redNodesHaveBlackChildren!0 t!48253) e!47116)))

(assert (= (and d!57929 (not res!45283)) b!86853))

(assert (= (and b!86854 res!45287) b!86851))

(assert (= (and b!86855 res!45284) b!86857))

(assert (= (and b!86857 res!45285) b!86852))

(assert (= (and b!86852 res!45286) b!86856))

(assert (= (and b!86853 c!21508) b!86854))

(assert (= (and b!86853 (not c!21508)) b!86855))

(declare-fun m!82842 () Bool)

(assert (=> b!86854 m!82842))

(declare-fun m!82844 () Bool)

(assert (=> b!86855 m!82844))

(declare-fun m!82846 () Bool)

(assert (=> b!86857 m!82846))

(declare-fun m!82848 () Bool)

(assert (=> b!86856 m!82848))

(assert (=> b!86851 m!82848))

(assert (=> b!86852 m!82842))

(assert (=> start!11332 d!57929))

(declare-fun d!57931 () Bool)

(declare-fun res!45294 () Bool)

(declare-fun e!47122 () Bool)

(assert (=> d!57931 (=> res!45294 e!47122)))

(assert (=> d!57931 (= res!45294 (not (is-Node!151 res!44633)))))

(assert (=> d!57931 (= (blackBalanced!0 res!44633) e!47122)))

(declare-fun b!86864 () Bool)

(declare-fun e!47123 () Bool)

(assert (=> b!86864 (= e!47122 e!47123)))

(declare-fun res!45295 () Bool)

(assert (=> b!86864 (=> (not res!45295) (not e!47123))))

(assert (=> b!86864 (= res!45295 (blackBalanced!0 (left!1650 res!44633)))))

(declare-fun b!86865 () Bool)

(declare-fun res!45296 () Bool)

(assert (=> b!86865 (=> (not res!45296) (not e!47123))))

(assert (=> b!86865 (= res!45296 (blackBalanced!0 (right!1653 res!44633)))))

(declare-fun b!86866 () Bool)

(declare-fun blackHeight!0 (Tree!107) Int)

(assert (=> b!86866 (= e!47123 (= (blackHeight!0 (left!1650 res!44633)) (blackHeight!0 (right!1653 res!44633))))))

(assert (= (and d!57931 (not res!45294)) b!86864))

(assert (= (and b!86864 res!45295) b!86865))

(assert (= (and b!86865 res!45296) b!86866))

(declare-fun m!82850 () Bool)

(assert (=> b!86864 m!82850))

(declare-fun m!82852 () Bool)

(assert (=> b!86865 m!82852))

(declare-fun m!82854 () Bool)

(assert (=> b!86866 m!82854))

(declare-fun m!82856 () Bool)

(assert (=> b!86866 m!82856))

(assert (=> b!86814 d!57931))

(declare-fun d!57933 () Bool)

(declare-fun res!45301 () Bool)

(declare-fun e!47128 () Bool)

(assert (=> d!57933 (=> res!45301 e!47128)))

(assert (=> d!57933 (= res!45301 (is-Empty!190 res!44633))))

(assert (=> d!57933 (= (redDescHaveBlackChildren!0 res!44633) e!47128)))

(declare-fun b!86871 () Bool)

(declare-fun e!47129 () Bool)

(assert (=> b!86871 (= e!47128 e!47129)))

(declare-fun res!45302 () Bool)

(assert (=> b!86871 (=> (not res!45302) (not e!47129))))

(assert (=> b!86871 (= res!45302 (redNodesHaveBlackChildren!0 (left!1650 res!44633)))))

(declare-fun b!86872 () Bool)

(assert (=> b!86872 (= e!47129 (redNodesHaveBlackChildren!0 (right!1653 res!44633)))))

(assert (= (and d!57933 (not res!45301)) b!86871))

(assert (= (and b!86871 res!45302) b!86872))

(declare-fun m!82858 () Bool)

(assert (=> b!86871 m!82858))

(declare-fun m!82860 () Bool)

(assert (=> b!86872 m!82860))

(assert (=> b!86817 d!57933))

(declare-fun d!57935 () Bool)

(declare-fun res!45303 () Bool)

(declare-fun e!47130 () Bool)

(assert (=> d!57935 (=> res!45303 e!47130)))

(assert (=> d!57935 (= res!45303 (not (is-Node!151 t!48253)))))

(assert (=> d!57935 (= (blackBalanced!0 t!48253) e!47130)))

(declare-fun b!86873 () Bool)

(declare-fun e!47131 () Bool)

(assert (=> b!86873 (= e!47130 e!47131)))

(declare-fun res!45304 () Bool)

(assert (=> b!86873 (=> (not res!45304) (not e!47131))))

(assert (=> b!86873 (= res!45304 (blackBalanced!0 (left!1650 t!48253)))))

(declare-fun b!86874 () Bool)

(declare-fun res!45305 () Bool)

(assert (=> b!86874 (=> (not res!45305) (not e!47131))))

(assert (=> b!86874 (= res!45305 (blackBalanced!0 (right!1653 t!48253)))))

(declare-fun b!86875 () Bool)

(assert (=> b!86875 (= e!47131 (= (blackHeight!0 (left!1650 t!48253)) (blackHeight!0 (right!1653 t!48253))))))

(assert (= (and d!57935 (not res!45303)) b!86873))

(assert (= (and b!86873 res!45304) b!86874))

(assert (= (and b!86874 res!45305) b!86875))

(declare-fun m!82862 () Bool)

(assert (=> b!86873 m!82862))

(declare-fun m!82864 () Bool)

(assert (=> b!86874 m!82864))

(declare-fun m!82866 () Bool)

(assert (=> b!86875 m!82866))

(declare-fun m!82868 () Bool)

(assert (=> b!86875 m!82868))

(assert (=> b!86816 d!57935))

(assert (=> b!86820 d!57923))

(assert (=> b!86820 d!57921))

(push 1)

(assert (not b!86856))

(assert (not b!86857))

(assert (not b!86871))

(assert (not b!86836))

(assert (not b!86828))

(assert (not b!86851))

(assert (not b!86872))

(assert (not b!86875))

(assert (not b!86854))

(assert (not b!86852))

(assert (not b!86826))

(assert (not b!86866))

(assert (not b!86865))

(assert (not b!86855))

(assert (not b!86874))

(assert (not b!86834))

(assert (not b!86873))

(assert (not b!86864))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

