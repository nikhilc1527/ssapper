; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2700 () Bool)

(assert start!2700)

(declare-datatypes () ((Tree!86 (Leaf!166) (Node!18 (left!576 Tree!86) (value!1459 Int) (right!579 Tree!86)))))

(declare-fun res!4801 () Tree!86)

(declare-fun value!1445 () Int)

(declare-fun tree!73 () Tree!86)

(declare-fun e!7211 () Bool)

(declare-fun b!13145 () Bool)

(declare-fun content!21 (Tree!86) (Set Int))

(assert (=> b!13145 (= e!7211 (= (content!21 res!4801) (union (content!21 tree!73) (insert value!1445 (as emptyset (Set Int))))))))

(declare-fun b!13143 () Bool)

(declare-fun res!4901 () Bool)

(declare-fun e!7210 () Bool)

(assert (=> b!13143 (=> (not res!4901) (not e!7210))))

(declare-fun insert!10 (Tree!86 Int) Tree!86)

(assert (=> b!13143 (= res!4901 (= res!4801 (Node!18 (left!576 tree!73) (value!1459 tree!73) (insert!10 (right!579 tree!73) value!1445))))))

(declare-fun b!13144 () Bool)

(assert (=> b!13144 (= e!7210 (not e!7211))))

(declare-fun res!4899 () Bool)

(assert (=> b!13144 (=> (not res!4899) (not e!7211))))

(declare-fun isBST!0 (Tree!86) Bool)

(assert (=> b!13144 (= res!4899 (isBST!0 res!4801))))

(assert (=> b!13144 (is-Node!18 res!4801)))

(declare-fun res!4902 () Bool)

(assert (=> start!2700 (=> (not res!4902) (not e!7210))))

(assert (=> start!2700 (= res!4902 (isBST!0 tree!73))))

(assert (=> start!2700 e!7210))

(assert (=> start!2700 true))

(declare-fun b!13142 () Bool)

(declare-fun res!4900 () Bool)

(assert (=> b!13142 (=> (not res!4900) (not e!7210))))

(assert (=> b!13142 (= res!4900 (and (not (is-Leaf!166 tree!73)) (< (value!1459 tree!73) value!1445)))))

(assert (= (and start!2700 res!4902) b!13142))

(assert (= (and b!13142 res!4900) b!13143))

(assert (= (and b!13143 res!4901) b!13144))

(assert (= (and b!13144 res!4899) b!13145))

(declare-fun m!16537 () Bool)

(assert (=> b!13145 m!16537))

(declare-fun m!16539 () Bool)

(assert (=> b!13145 m!16539))

(declare-fun m!16541 () Bool)

(assert (=> b!13145 m!16541))

(declare-fun m!16543 () Bool)

(assert (=> b!13143 m!16543))

(declare-fun m!16545 () Bool)

(assert (=> b!13144 m!16545))

(declare-fun m!16547 () Bool)

(assert (=> start!2700 m!16547))

(push 1)

(assert (not b!13143))

(assert (not start!2700))

(assert (not b!13145))

(assert (not b!13144))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun e!7219 () Tree!86)

(declare-fun b!13158 () Bool)

(declare-fun lt!1893 () Bool)

(assert (=> b!13158 (= e!7219 (insert!10 (ite lt!1893 (right!579 (right!579 tree!73)) (left!576 (right!579 tree!73))) value!1445))))

(declare-fun b!13159 () Bool)

(declare-fun e!7218 () Tree!86)

(assert (=> b!13159 (= e!7218 (Node!18 Leaf!166 value!1445 Leaf!166))))

(declare-fun b!13160 () Bool)

(declare-fun res!4913 () Tree!86)

(assert (=> b!13160 (= e!7219 res!4913)))

(assert (=> b!13160 true))

(assert (=> b!13160 true))

(declare-fun b!13161 () Bool)

(declare-fun res!4915 () Bool)

(declare-fun e!7220 () Bool)

(assert (=> b!13161 (=> (not res!4915) (not e!7220))))

(declare-fun lt!1891 () Tree!86)

(assert (=> b!13161 (= res!4915 (isBST!0 lt!1891))))

(declare-fun b!13162 () Bool)

(assert (=> b!13162 (= e!7220 (= (content!21 lt!1891) (union (content!21 (right!579 tree!73)) (insert value!1445 (as emptyset (Set Int))))))))

(declare-fun d!10239 () Bool)

(assert (=> d!10239 e!7220))

(declare-fun res!4914 () Bool)

(assert (=> d!10239 (=> (not res!4914) (not e!7220))))

(assert (=> d!10239 (= res!4914 (is-Node!18 lt!1891))))

(assert (=> d!10239 (= lt!1891 e!7218)))

(declare-fun c!3703 () Bool)

(assert (=> d!10239 (= c!3703 (is-Leaf!166 (right!579 tree!73)))))

(assert (=> d!10239 (isBST!0 (right!579 tree!73))))

(assert (=> d!10239 (= (insert!10 (right!579 tree!73) value!1445) lt!1891)))

(declare-fun b!13163 () Bool)

(declare-fun lt!1892 () Tree!86)

(assert (=> b!13163 (= e!7218 (ite lt!1893 (Node!18 (left!576 (right!579 tree!73)) (value!1459 (right!579 tree!73)) lt!1892) (ite (> (value!1459 (right!579 tree!73)) value!1445) (Node!18 lt!1892 (value!1459 (right!579 tree!73)) (right!579 (right!579 tree!73))) (Node!18 (left!576 (right!579 tree!73)) (value!1459 (right!579 tree!73)) (right!579 (right!579 tree!73))))))))

(assert (=> b!13163 (= lt!1892 e!7219)))

(declare-fun c!3704 () Bool)

(assert (=> b!13163 (= c!3704 (or lt!1893 (> (value!1459 (right!579 tree!73)) value!1445)))))

(assert (=> b!13163 (= lt!1893 (< (value!1459 (right!579 tree!73)) value!1445))))

(assert (= (and b!13163 c!3704) b!13158))

(assert (= (and b!13163 (not c!3704)) b!13160))

(assert (= (and d!10239 c!3703) b!13159))

(assert (= (and d!10239 (not c!3703)) b!13163))

(assert (= (and d!10239 res!4914) b!13161))

(assert (= (and b!13161 res!4915) b!13162))

(declare-fun m!16549 () Bool)

(assert (=> b!13158 m!16549))

(declare-fun m!16551 () Bool)

(assert (=> b!13161 m!16551))

(declare-fun m!16553 () Bool)

(assert (=> b!13162 m!16553))

(declare-fun m!16555 () Bool)

(assert (=> b!13162 m!16555))

(assert (=> b!13162 m!16541))

(declare-fun m!16557 () Bool)

(assert (=> d!10239 m!16557))

(assert (=> b!13143 d!10239))

(declare-fun b!13174 () Bool)

(declare-fun m!16559 () Bool)

(assert (=> b!13174 m!16559))

(declare-fun inst!62 () Bool)

(declare-fun x!7482 () Int)

(assert (=> b!13174 (= inst!62 (=> true (or (not (member x!7482 (content!21 (left!576 tree!73)))) (< x!7482 (value!1459 tree!73)))))))

(declare-fun m!16561 () Bool)

(assert (=> b!13174 m!16561))

(declare-fun b!13175 () Bool)

(assert (=> b!13175 m!16555))

(declare-fun inst!63 () Bool)

(declare-fun x!7483 () Int)

(assert (=> b!13175 (= inst!63 (=> true (or (not (member x!7483 (content!21 (right!579 tree!73)))) (< (value!1459 tree!73) x!7483))))))

(declare-fun m!16563 () Bool)

(assert (=> b!13175 m!16563))

(declare-fun bs!3647 () Bool)

(declare-fun neg-inst!50 () Bool)

(assert (= bs!3647 neg-inst!50))

(assert (=> bs!3647 m!16559))

(declare-fun bs!3648 () Bool)

(declare-fun s!424 () Bool)

(assert (= bs!3648 (and neg-inst!50 s!424)))

(assert (=> bs!3648 (=> true (or (not (member x!7482 (content!21 (left!576 tree!73)))) (< x!7482 (value!1459 tree!73))))))

(assert (=> m!16561 s!424))

(declare-fun bs!3649 () Bool)

(assert (= bs!3649 (and neg-inst!50 b!13174)))

(assert (=> bs!3649 (= true inst!62)))

(declare-fun bs!3650 () Bool)

(declare-fun neg-inst!51 () Bool)

(assert (= bs!3650 neg-inst!51))

(assert (=> bs!3650 m!16555))

(declare-fun bs!3651 () Bool)

(declare-fun s!426 () Bool)

(assert (= bs!3651 (and neg-inst!51 s!426)))

(assert (=> bs!3651 (=> true (or (not (member x!7483 (content!21 (right!579 tree!73)))) (< (value!1459 tree!73) x!7483)))))

(assert (=> m!16563 s!426))

(declare-fun bs!3652 () Bool)

(assert (= bs!3652 (and neg-inst!51 b!13175)))

(assert (=> bs!3652 (= true inst!63)))

(declare-fun e!7225 () Bool)

(assert (=> b!13175 (= e!7225 inst!63)))

(declare-fun res!4924 () Bool)

(assert (=> b!13174 (=> (not res!4924) (not e!7225))))

(assert (=> b!13174 (= res!4924 inst!62)))

(declare-fun b!13173 () Bool)

(declare-fun res!4926 () Bool)

(assert (=> b!13173 (=> (not res!4926) (not e!7225))))

(assert (=> b!13173 (= res!4926 (isBST!0 (right!579 tree!73)))))

(declare-fun d!10241 () Bool)

(declare-fun res!4927 () Bool)

(declare-fun e!7226 () Bool)

(assert (=> d!10241 (=> res!4927 e!7226)))

(assert (=> d!10241 (= res!4927 (is-Leaf!166 tree!73))))

(assert (=> d!10241 (= (isBST!0 tree!73) e!7226)))

(declare-fun b!13172 () Bool)

(assert (=> b!13172 (= e!7226 e!7225)))

(declare-fun res!4925 () Bool)

(assert (=> b!13172 (=> (not res!4925) (not e!7225))))

(assert (=> b!13172 (= res!4925 (isBST!0 (left!576 tree!73)))))

(assert (= (and d!10241 (not res!4927)) b!13172))

(assert (= (and b!13172 res!4925) b!13173))

(assert (= (and b!13173 res!4926) b!13174))

(assert (= neg-inst!50 inst!62))

(assert (= (and b!13174 res!4924) b!13175))

(assert (= neg-inst!51 inst!63))

(assert (=> b!13173 m!16557))

(declare-fun m!16565 () Bool)

(assert (=> b!13172 m!16565))

(assert (=> start!2700 d!10241))

(declare-fun d!10243 () Bool)

(declare-fun c!3707 () Bool)

(assert (=> d!10243 (= c!3707 (is-Leaf!166 res!4801))))

(declare-fun e!7229 () (Set Int))

(assert (=> d!10243 (= (content!21 res!4801) e!7229)))

(declare-fun b!13180 () Bool)

(assert (=> b!13180 (= e!7229 (as emptyset (Set Int)))))

(declare-fun b!13181 () Bool)

(assert (=> b!13181 (= e!7229 (union (union (content!21 (left!576 res!4801)) (insert (value!1459 res!4801) (as emptyset (Set Int)))) (content!21 (right!579 res!4801))))))

(assert (= (and d!10243 c!3707) b!13180))

(assert (= (and d!10243 (not c!3707)) b!13181))

(declare-fun m!16567 () Bool)

(assert (=> b!13181 m!16567))

(declare-fun m!16569 () Bool)

(assert (=> b!13181 m!16569))

(declare-fun m!16571 () Bool)

(assert (=> b!13181 m!16571))

(assert (=> b!13145 d!10243))

(declare-fun d!10245 () Bool)

(declare-fun c!3708 () Bool)

(assert (=> d!10245 (= c!3708 (is-Leaf!166 tree!73))))

(declare-fun e!7230 () (Set Int))

(assert (=> d!10245 (= (content!21 tree!73) e!7230)))

(declare-fun b!13182 () Bool)

(assert (=> b!13182 (= e!7230 (as emptyset (Set Int)))))

(declare-fun b!13183 () Bool)

(assert (=> b!13183 (= e!7230 (union (union (content!21 (left!576 tree!73)) (insert (value!1459 tree!73) (as emptyset (Set Int)))) (content!21 (right!579 tree!73))))))

(assert (= (and d!10245 c!3708) b!13182))

(assert (= (and d!10245 (not c!3708)) b!13183))

(assert (=> b!13183 m!16559))

(declare-fun m!16573 () Bool)

(assert (=> b!13183 m!16573))

(assert (=> b!13183 m!16555))

(assert (=> b!13145 d!10245))

(declare-fun b!13186 () Bool)

(assert (=> b!13186 m!16567))

(declare-fun inst!64 () Bool)

(declare-fun x!7484 () Int)

(assert (=> b!13186 (= inst!64 (=> true (or (not (member x!7484 (content!21 (left!576 res!4801)))) (< x!7484 (value!1459 res!4801)))))))

(declare-fun m!16575 () Bool)

(assert (=> b!13186 m!16575))

(declare-fun bs!3653 () Bool)

(assert (= bs!3653 (and b!13186 neg-inst!50)))

(assert (=> (and bs!3653 (= (content!21 (left!576 res!4801)) (content!21 (left!576 tree!73))) (= (value!1459 res!4801) (value!1459 tree!73))) (= inst!64 true)))

(declare-fun bs!3654 () Bool)

(assert (= bs!3654 (and b!13186 b!13174)))

(assert (=> (and bs!3654 (= (content!21 (left!576 res!4801)) (content!21 (left!576 tree!73))) (= (value!1459 res!4801) (value!1459 tree!73))) (= inst!64 inst!62)))

(declare-fun b!13187 () Bool)

(assert (=> b!13187 m!16571))

(declare-fun inst!65 () Bool)

(declare-fun x!7485 () Int)

(assert (=> b!13187 (= inst!65 (=> true (or (not (member x!7485 (content!21 (right!579 res!4801)))) (< (value!1459 res!4801) x!7485))))))

(declare-fun m!16577 () Bool)

(assert (=> b!13187 m!16577))

(declare-fun bs!3655 () Bool)

(assert (= bs!3655 (and b!13187 neg-inst!51)))

(assert (=> (and bs!3655 (= (content!21 (right!579 res!4801)) (content!21 (right!579 tree!73))) (= (value!1459 res!4801) (value!1459 tree!73))) (= inst!65 true)))

(declare-fun bs!3656 () Bool)

(assert (= bs!3656 (and b!13187 b!13175)))

(assert (=> (and bs!3656 (= (content!21 (right!579 res!4801)) (content!21 (right!579 tree!73))) (= (value!1459 res!4801) (value!1459 tree!73))) (= inst!65 inst!63)))

(declare-fun bs!3657 () Bool)

(declare-fun neg-inst!52 () Bool)

(assert (= bs!3657 neg-inst!52))

(assert (=> bs!3657 m!16567))

(declare-fun bs!3658 () Bool)

(declare-fun s!428 () Bool)

(assert (= bs!3658 (and neg-inst!52 s!428)))

(assert (=> bs!3658 (=> true (or (not (member x!7484 (content!21 (left!576 res!4801)))) (< x!7484 (value!1459 res!4801))))))

(assert (=> m!16575 s!428))

(declare-fun bs!3659 () Bool)

(assert (= bs!3659 (and neg-inst!52 neg-inst!50)))

(assert (=> (and bs!3659 (= (content!21 (left!576 res!4801)) (content!21 (left!576 tree!73))) (= (value!1459 res!4801) (value!1459 tree!73))) (= true true)))

(declare-fun bs!3660 () Bool)

(assert (= bs!3660 (and neg-inst!52 b!13174)))

(assert (=> (and bs!3660 (= (content!21 (left!576 res!4801)) (content!21 (left!576 tree!73))) (= (value!1459 res!4801) (value!1459 tree!73))) (= true inst!62)))

(declare-fun bs!3661 () Bool)

(assert (= bs!3661 (and neg-inst!52 b!13186)))

(assert (=> bs!3661 (= true inst!64)))

(declare-fun bs!3662 () Bool)

(declare-fun neg-inst!53 () Bool)

(assert (= bs!3662 neg-inst!53))

(assert (=> bs!3662 m!16571))

(declare-fun bs!3663 () Bool)

(declare-fun s!430 () Bool)

(assert (= bs!3663 (and neg-inst!53 s!430)))

(assert (=> bs!3663 (=> true (or (not (member x!7485 (content!21 (right!579 res!4801)))) (< (value!1459 res!4801) x!7485)))))

(assert (=> m!16577 s!430))

(declare-fun bs!3664 () Bool)

(assert (= bs!3664 (and neg-inst!53 neg-inst!51)))

(assert (=> (and bs!3664 (= (content!21 (right!579 res!4801)) (content!21 (right!579 tree!73))) (= (value!1459 res!4801) (value!1459 tree!73))) (= true true)))

(declare-fun bs!3665 () Bool)

(assert (= bs!3665 (and neg-inst!53 b!13175)))

(assert (=> (and bs!3665 (= (content!21 (right!579 res!4801)) (content!21 (right!579 tree!73))) (= (value!1459 res!4801) (value!1459 tree!73))) (= true inst!63)))

(declare-fun bs!3666 () Bool)

(assert (= bs!3666 (and neg-inst!53 b!13187)))

(assert (=> bs!3666 (= true inst!65)))

(declare-fun e!7231 () Bool)

(assert (=> b!13187 (= e!7231 inst!65)))

(declare-fun res!4928 () Bool)

(assert (=> b!13186 (=> (not res!4928) (not e!7231))))

(assert (=> b!13186 (= res!4928 inst!64)))

(declare-fun b!13185 () Bool)

(declare-fun res!4930 () Bool)

(assert (=> b!13185 (=> (not res!4930) (not e!7231))))

(assert (=> b!13185 (= res!4930 (isBST!0 (right!579 res!4801)))))

(declare-fun d!10247 () Bool)

(declare-fun res!4931 () Bool)

(declare-fun e!7232 () Bool)

(assert (=> d!10247 (=> res!4931 e!7232)))

(assert (=> d!10247 (= res!4931 (is-Leaf!166 res!4801))))

(assert (=> d!10247 (= (isBST!0 res!4801) e!7232)))

(declare-fun b!13184 () Bool)

(assert (=> b!13184 (= e!7232 e!7231)))

(declare-fun res!4929 () Bool)

(assert (=> b!13184 (=> (not res!4929) (not e!7231))))

(assert (=> b!13184 (= res!4929 (isBST!0 (left!576 res!4801)))))

(assert (= (and d!10247 (not res!4931)) b!13184))

(assert (= (and b!13184 res!4929) b!13185))

(assert (= (and b!13185 res!4930) b!13186))

(assert (= neg-inst!52 inst!64))

(assert (= (and b!13186 res!4928) b!13187))

(assert (= neg-inst!53 inst!65))

(declare-fun m!16579 () Bool)

(assert (=> b!13185 m!16579))

(declare-fun m!16581 () Bool)

(assert (=> b!13184 m!16581))

(assert (=> b!13144 d!10247))

(push 1)

(assert (not b!13174))

(assert (not neg-inst!52))

(assert (not b!13175))

(assert (not b!13172))

(assert (not neg-inst!50))

(assert (not b!13162))

(assert (not b!13173))

(assert (not neg-inst!53))

(assert (not d!10239))

(assert (not b!13187))

(assert (not b!13158))

(assert (not neg-inst!51))

(assert (not b!13186))

(assert (not b!13161))

(assert (not b!13184))

(assert (not b!13181))

(assert (not b!13185))

(assert (not b!13183))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!10249 () Bool)

(declare-fun c!3709 () Bool)

(assert (=> d!10249 (= c!3709 (is-Leaf!166 (left!576 res!4801)))))

(declare-fun e!7233 () (Set Int))

(assert (=> d!10249 (= (content!21 (left!576 res!4801)) e!7233)))

(declare-fun b!13188 () Bool)

(assert (=> b!13188 (= e!7233 (as emptyset (Set Int)))))

(declare-fun b!13189 () Bool)

(assert (=> b!13189 (= e!7233 (union (union (content!21 (left!576 (left!576 res!4801))) (insert (value!1459 (left!576 res!4801)) (as emptyset (Set Int)))) (content!21 (right!579 (left!576 res!4801)))))))

(assert (= (and d!10249 c!3709) b!13188))

(assert (= (and d!10249 (not c!3709)) b!13189))

(declare-fun m!16583 () Bool)

(assert (=> b!13189 m!16583))

(declare-fun m!16585 () Bool)

(assert (=> b!13189 m!16585))

(declare-fun m!16587 () Bool)

(assert (=> b!13189 m!16587))

(assert (=> neg-inst!52 d!10249))

(declare-fun d!10251 () Bool)

(declare-fun c!3710 () Bool)

(assert (=> d!10251 (= c!3710 (is-Leaf!166 (right!579 tree!73)))))

(declare-fun e!7234 () (Set Int))

(assert (=> d!10251 (= (content!21 (right!579 tree!73)) e!7234)))

(declare-fun b!13190 () Bool)

(assert (=> b!13190 (= e!7234 (as emptyset (Set Int)))))

(declare-fun b!13191 () Bool)

(assert (=> b!13191 (= e!7234 (union (union (content!21 (left!576 (right!579 tree!73))) (insert (value!1459 (right!579 tree!73)) (as emptyset (Set Int)))) (content!21 (right!579 (right!579 tree!73)))))))

(assert (= (and d!10251 c!3710) b!13190))

(assert (= (and d!10251 (not c!3710)) b!13191))

(declare-fun m!16589 () Bool)

(assert (=> b!13191 m!16589))

(declare-fun m!16591 () Bool)

(assert (=> b!13191 m!16591))

(declare-fun m!16593 () Bool)

(assert (=> b!13191 m!16593))

(assert (=> b!13175 d!10251))

(declare-fun b!13194 () Bool)

(declare-fun m!16595 () Bool)

(assert (=> b!13194 m!16595))

(declare-fun inst!66 () Bool)

(declare-fun x!7486 () Int)

(assert (=> b!13194 (= inst!66 (=> true (or (not (member x!7486 (content!21 (left!576 (left!576 tree!73))))) (< x!7486 (value!1459 (left!576 tree!73))))))))

(declare-fun m!16597 () Bool)

(assert (=> b!13194 m!16597))

(declare-fun bs!3667 () Bool)

(assert (= bs!3667 (and b!13194 neg-inst!50)))

(assert (=> (and bs!3667 (= (content!21 (left!576 (left!576 tree!73))) (content!21 (left!576 tree!73))) (= (value!1459 (left!576 tree!73)) (value!1459 tree!73))) (= inst!66 true)))

(declare-fun bs!3668 () Bool)

(assert (= bs!3668 (and b!13194 b!13174)))

(assert (=> (and bs!3668 (= (content!21 (left!576 (left!576 tree!73))) (content!21 (left!576 tree!73))) (= (value!1459 (left!576 tree!73)) (value!1459 tree!73))) (= inst!66 inst!62)))

(declare-fun bs!3669 () Bool)

(assert (= bs!3669 (and b!13194 neg-inst!52)))

(assert (=> (and bs!3669 (= (content!21 (left!576 (left!576 tree!73))) (content!21 (left!576 res!4801))) (= (value!1459 (left!576 tree!73)) (value!1459 res!4801))) (= inst!66 true)))

(declare-fun bs!3670 () Bool)

(assert (= bs!3670 (and b!13194 b!13186)))

(assert (=> (and bs!3670 (= (content!21 (left!576 (left!576 tree!73))) (content!21 (left!576 res!4801))) (= (value!1459 (left!576 tree!73)) (value!1459 res!4801))) (= inst!66 inst!64)))

(declare-fun b!13195 () Bool)

(declare-fun m!16599 () Bool)

(assert (=> b!13195 m!16599))

(declare-fun inst!67 () Bool)

(declare-fun x!7487 () Int)

(assert (=> b!13195 (= inst!67 (=> true (or (not (member x!7487 (content!21 (right!579 (left!576 tree!73))))) (< (value!1459 (left!576 tree!73)) x!7487))))))

(declare-fun m!16601 () Bool)

(assert (=> b!13195 m!16601))

(declare-fun bs!3671 () Bool)

(assert (= bs!3671 (and b!13195 neg-inst!51)))

(assert (=> (and bs!3671 (= (content!21 (right!579 (left!576 tree!73))) (content!21 (right!579 tree!73))) (= (value!1459 (left!576 tree!73)) (value!1459 tree!73))) (= inst!67 true)))

(declare-fun bs!3672 () Bool)

(assert (= bs!3672 (and b!13195 neg-inst!53)))

(assert (=> (and bs!3672 (= (content!21 (right!579 (left!576 tree!73))) (content!21 (right!579 res!4801))) (= (value!1459 (left!576 tree!73)) (value!1459 res!4801))) (= inst!67 true)))

(declare-fun bs!3673 () Bool)

(assert (= bs!3673 (and b!13195 b!13175)))

(assert (=> (and bs!3673 (= (content!21 (right!579 (left!576 tree!73))) (content!21 (right!579 tree!73))) (= (value!1459 (left!576 tree!73)) (value!1459 tree!73))) (= inst!67 inst!63)))

(declare-fun bs!3674 () Bool)

(assert (= bs!3674 (and b!13195 b!13187)))

(assert (=> (and bs!3674 (= (content!21 (right!579 (left!576 tree!73))) (content!21 (right!579 res!4801))) (= (value!1459 (left!576 tree!73)) (value!1459 res!4801))) (= inst!67 inst!65)))

(declare-fun bs!3675 () Bool)

(declare-fun neg-inst!54 () Bool)

(assert (= bs!3675 neg-inst!54))

(assert (=> bs!3675 m!16595))

(declare-fun bs!3676 () Bool)

(declare-fun s!432 () Bool)

(assert (= bs!3676 (and neg-inst!54 s!432)))

(assert (=> bs!3676 (=> true (or (not (member x!7486 (content!21 (left!576 (left!576 tree!73))))) (< x!7486 (value!1459 (left!576 tree!73)))))))

(assert (=> m!16597 s!432))

(declare-fun bs!3677 () Bool)

(assert (= bs!3677 (and neg-inst!54 b!13194)))

(assert (=> bs!3677 (= true inst!66)))

(declare-fun bs!3678 () Bool)

(assert (= bs!3678 (and neg-inst!54 neg-inst!50)))

(assert (=> (and bs!3678 (= (content!21 (left!576 (left!576 tree!73))) (content!21 (left!576 tree!73))) (= (value!1459 (left!576 tree!73)) (value!1459 tree!73))) (= true true)))

(declare-fun bs!3679 () Bool)

(assert (= bs!3679 (and neg-inst!54 b!13174)))

(assert (=> (and bs!3679 (= (content!21 (left!576 (left!576 tree!73))) (content!21 (left!576 tree!73))) (= (value!1459 (left!576 tree!73)) (value!1459 tree!73))) (= true inst!62)))

(declare-fun bs!3680 () Bool)

(assert (= bs!3680 (and neg-inst!54 neg-inst!52)))

(assert (=> (and bs!3680 (= (content!21 (left!576 (left!576 tree!73))) (content!21 (left!576 res!4801))) (= (value!1459 (left!576 tree!73)) (value!1459 res!4801))) (= true true)))

(declare-fun bs!3681 () Bool)

(assert (= bs!3681 (and neg-inst!54 b!13186)))

(assert (=> (and bs!3681 (= (content!21 (left!576 (left!576 tree!73))) (content!21 (left!576 res!4801))) (= (value!1459 (left!576 tree!73)) (value!1459 res!4801))) (= true inst!64)))

(declare-fun bs!3682 () Bool)

(declare-fun neg-inst!55 () Bool)

(assert (= bs!3682 neg-inst!55))

(assert (=> bs!3682 m!16599))

(declare-fun bs!3683 () Bool)

(declare-fun s!434 () Bool)

(assert (= bs!3683 (and neg-inst!55 s!434)))

(assert (=> bs!3683 (=> true (or (not (member x!7487 (content!21 (right!579 (left!576 tree!73))))) (< (value!1459 (left!576 tree!73)) x!7487)))))

(assert (=> m!16601 s!434))

(declare-fun bs!3684 () Bool)

(assert (= bs!3684 (and neg-inst!55 neg-inst!51)))

(assert (=> (and bs!3684 (= (content!21 (right!579 (left!576 tree!73))) (content!21 (right!579 tree!73))) (= (value!1459 (left!576 tree!73)) (value!1459 tree!73))) (= true true)))

(declare-fun bs!3685 () Bool)

(assert (= bs!3685 (and neg-inst!55 b!13195)))

(assert (=> bs!3685 (= true inst!67)))

(declare-fun bs!3686 () Bool)

(assert (= bs!3686 (and neg-inst!55 neg-inst!53)))

(assert (=> (and bs!3686 (= (content!21 (right!579 (left!576 tree!73))) (content!21 (right!579 res!4801))) (= (value!1459 (left!576 tree!73)) (value!1459 res!4801))) (= true true)))

(declare-fun bs!3687 () Bool)

(assert (= bs!3687 (and neg-inst!55 b!13175)))

(assert (=> (and bs!3687 (= (content!21 (right!579 (left!576 tree!73))) (content!21 (right!579 tree!73))) (= (value!1459 (left!576 tree!73)) (value!1459 tree!73))) (= true inst!63)))

(declare-fun bs!3688 () Bool)

(assert (= bs!3688 (and neg-inst!55 b!13187)))

(assert (=> (and bs!3688 (= (content!21 (right!579 (left!576 tree!73))) (content!21 (right!579 res!4801))) (= (value!1459 (left!576 tree!73)) (value!1459 res!4801))) (= true inst!65)))

(declare-fun e!7235 () Bool)

(assert (=> b!13195 (= e!7235 inst!67)))

(declare-fun res!4932 () Bool)

(assert (=> b!13194 (=> (not res!4932) (not e!7235))))

(assert (=> b!13194 (= res!4932 inst!66)))

(declare-fun b!13193 () Bool)

(declare-fun res!4934 () Bool)

(assert (=> b!13193 (=> (not res!4934) (not e!7235))))

(assert (=> b!13193 (= res!4934 (isBST!0 (right!579 (left!576 tree!73))))))

(declare-fun d!10253 () Bool)

(declare-fun res!4935 () Bool)

(declare-fun e!7236 () Bool)

(assert (=> d!10253 (=> res!4935 e!7236)))

(assert (=> d!10253 (= res!4935 (is-Leaf!166 (left!576 tree!73)))))

(assert (=> d!10253 (= (isBST!0 (left!576 tree!73)) e!7236)))

(declare-fun b!13192 () Bool)

(assert (=> b!13192 (= e!7236 e!7235)))

(declare-fun res!4933 () Bool)

(assert (=> b!13192 (=> (not res!4933) (not e!7235))))

(assert (=> b!13192 (= res!4933 (isBST!0 (left!576 (left!576 tree!73))))))

(assert (= (and d!10253 (not res!4935)) b!13192))

(assert (= (and b!13192 res!4933) b!13193))

(assert (= (and b!13193 res!4934) b!13194))

(assert (= neg-inst!54 inst!66))

(assert (= (and b!13194 res!4932) b!13195))

(assert (= neg-inst!55 inst!67))

(declare-fun m!16603 () Bool)

(assert (=> b!13193 m!16603))

(declare-fun m!16605 () Bool)

(assert (=> b!13192 m!16605))

(assert (=> b!13172 d!10253))

(declare-fun b!13198 () Bool)

(declare-fun m!16607 () Bool)

(assert (=> b!13198 m!16607))

(declare-fun inst!68 () Bool)

(declare-fun x!7488 () Int)

(assert (=> b!13198 (= inst!68 (=> true (or (not (member x!7488 (content!21 (left!576 lt!1891)))) (< x!7488 (value!1459 lt!1891)))))))

(declare-fun m!16609 () Bool)

(assert (=> b!13198 m!16609))

(declare-fun bs!3689 () Bool)

(assert (= bs!3689 (and b!13198 b!13194)))

(assert (=> (and bs!3689 (= (content!21 (left!576 lt!1891)) (content!21 (left!576 (left!576 tree!73)))) (= (value!1459 lt!1891) (value!1459 (left!576 tree!73)))) (= inst!68 inst!66)))

(declare-fun bs!3690 () Bool)

(assert (= bs!3690 (and b!13198 neg-inst!50)))

(assert (=> (and bs!3690 (= (content!21 (left!576 lt!1891)) (content!21 (left!576 tree!73))) (= (value!1459 lt!1891) (value!1459 tree!73))) (= inst!68 true)))

(declare-fun bs!3691 () Bool)

(assert (= bs!3691 (and b!13198 b!13174)))

(assert (=> (and bs!3691 (= (content!21 (left!576 lt!1891)) (content!21 (left!576 tree!73))) (= (value!1459 lt!1891) (value!1459 tree!73))) (= inst!68 inst!62)))

(declare-fun bs!3692 () Bool)

(assert (= bs!3692 (and b!13198 neg-inst!54)))

(assert (=> (and bs!3692 (= (content!21 (left!576 lt!1891)) (content!21 (left!576 (left!576 tree!73)))) (= (value!1459 lt!1891) (value!1459 (left!576 tree!73)))) (= inst!68 true)))

(declare-fun bs!3693 () Bool)

(assert (= bs!3693 (and b!13198 neg-inst!52)))

(assert (=> (and bs!3693 (= (content!21 (left!576 lt!1891)) (content!21 (left!576 res!4801))) (= (value!1459 lt!1891) (value!1459 res!4801))) (= inst!68 true)))

(declare-fun bs!3694 () Bool)

(assert (= bs!3694 (and b!13198 b!13186)))

(assert (=> (and bs!3694 (= (content!21 (left!576 lt!1891)) (content!21 (left!576 res!4801))) (= (value!1459 lt!1891) (value!1459 res!4801))) (= inst!68 inst!64)))

(declare-fun b!13199 () Bool)

(declare-fun m!16611 () Bool)

(assert (=> b!13199 m!16611))

(declare-fun inst!69 () Bool)

(declare-fun x!7489 () Int)

(assert (=> b!13199 (= inst!69 (=> true (or (not (member x!7489 (content!21 (right!579 lt!1891)))) (< (value!1459 lt!1891) x!7489))))))

(declare-fun m!16613 () Bool)

(assert (=> b!13199 m!16613))

(declare-fun bs!3695 () Bool)

(assert (= bs!3695 (and b!13199 neg-inst!51)))

(assert (=> (and bs!3695 (= (content!21 (right!579 lt!1891)) (content!21 (right!579 tree!73))) (= (value!1459 lt!1891) (value!1459 tree!73))) (= inst!69 true)))

(declare-fun bs!3696 () Bool)

(assert (= bs!3696 (and b!13199 neg-inst!55)))

(assert (=> (and bs!3696 (= (content!21 (right!579 lt!1891)) (content!21 (right!579 (left!576 tree!73)))) (= (value!1459 lt!1891) (value!1459 (left!576 tree!73)))) (= inst!69 true)))

(declare-fun bs!3697 () Bool)

(assert (= bs!3697 (and b!13199 b!13175)))

(assert (=> (and bs!3697 (= (content!21 (right!579 lt!1891)) (content!21 (right!579 tree!73))) (= (value!1459 lt!1891) (value!1459 tree!73))) (= inst!69 inst!63)))

(declare-fun bs!3698 () Bool)

(assert (= bs!3698 (and b!13199 neg-inst!53)))

(assert (=> (and bs!3698 (= (content!21 (right!579 lt!1891)) (content!21 (right!579 res!4801))) (= (value!1459 lt!1891) (value!1459 res!4801))) (= inst!69 true)))

(declare-fun bs!3699 () Bool)

(assert (= bs!3699 (and b!13199 b!13195)))

(assert (=> (and bs!3699 (= (content!21 (right!579 lt!1891)) (content!21 (right!579 (left!576 tree!73)))) (= (value!1459 lt!1891) (value!1459 (left!576 tree!73)))) (= inst!69 inst!67)))

(declare-fun bs!3700 () Bool)

(assert (= bs!3700 (and b!13199 b!13187)))

(assert (=> (and bs!3700 (= (content!21 (right!579 lt!1891)) (content!21 (right!579 res!4801))) (= (value!1459 lt!1891) (value!1459 res!4801))) (= inst!69 inst!65)))

(declare-fun bs!3701 () Bool)

(declare-fun neg-inst!56 () Bool)

(assert (= bs!3701 neg-inst!56))

(assert (=> bs!3701 m!16607))

(declare-fun bs!3702 () Bool)

(declare-fun s!436 () Bool)

(assert (= bs!3702 (and neg-inst!56 s!436)))

(assert (=> bs!3702 (=> true (or (not (member x!7488 (content!21 (left!576 lt!1891)))) (< x!7488 (value!1459 lt!1891))))))

(assert (=> m!16609 s!436))

(declare-fun bs!3703 () Bool)

(assert (= bs!3703 (and neg-inst!56 b!13198)))

(assert (=> bs!3703 (= true inst!68)))

(declare-fun bs!3704 () Bool)

(assert (= bs!3704 (and neg-inst!56 b!13194)))

(assert (=> (and bs!3704 (= (content!21 (left!576 lt!1891)) (content!21 (left!576 (left!576 tree!73)))) (= (value!1459 lt!1891) (value!1459 (left!576 tree!73)))) (= true inst!66)))

(declare-fun bs!3705 () Bool)

(assert (= bs!3705 (and neg-inst!56 b!13174)))

(assert (=> (and bs!3705 (= (content!21 (left!576 lt!1891)) (content!21 (left!576 tree!73))) (= (value!1459 lt!1891) (value!1459 tree!73))) (= true inst!62)))

(declare-fun bs!3706 () Bool)

(assert (= bs!3706 (and neg-inst!56 neg-inst!50)))

(assert (=> (and bs!3706 (= (content!21 (left!576 lt!1891)) (content!21 (left!576 tree!73))) (= (value!1459 lt!1891) (value!1459 tree!73))) (= true true)))

(declare-fun bs!3707 () Bool)

(assert (= bs!3707 (and neg-inst!56 neg-inst!54)))

(assert (=> (and bs!3707 (= (content!21 (left!576 lt!1891)) (content!21 (left!576 (left!576 tree!73)))) (= (value!1459 lt!1891) (value!1459 (left!576 tree!73)))) (= true true)))

(declare-fun bs!3708 () Bool)

(assert (= bs!3708 (and neg-inst!56 neg-inst!52)))

(assert (=> (and bs!3708 (= (content!21 (left!576 lt!1891)) (content!21 (left!576 res!4801))) (= (value!1459 lt!1891) (value!1459 res!4801))) (= true true)))

(declare-fun bs!3709 () Bool)

(assert (= bs!3709 (and neg-inst!56 b!13186)))

(assert (=> (and bs!3709 (= (content!21 (left!576 lt!1891)) (content!21 (left!576 res!4801))) (= (value!1459 lt!1891) (value!1459 res!4801))) (= true inst!64)))

(declare-fun bs!3710 () Bool)

(declare-fun neg-inst!57 () Bool)

(assert (= bs!3710 neg-inst!57))

(assert (=> bs!3710 m!16611))

(declare-fun bs!3711 () Bool)

(declare-fun s!438 () Bool)

(assert (= bs!3711 (and neg-inst!57 s!438)))

(assert (=> bs!3711 (=> true (or (not (member x!7489 (content!21 (right!579 lt!1891)))) (< (value!1459 lt!1891) x!7489)))))

(assert (=> m!16613 s!438))

(declare-fun bs!3712 () Bool)

(assert (= bs!3712 (and neg-inst!57 neg-inst!51)))

(assert (=> (and bs!3712 (= (content!21 (right!579 lt!1891)) (content!21 (right!579 tree!73))) (= (value!1459 lt!1891) (value!1459 tree!73))) (= true true)))

(declare-fun bs!3713 () Bool)

(assert (= bs!3713 (and neg-inst!57 neg-inst!55)))

(assert (=> (and bs!3713 (= (content!21 (right!579 lt!1891)) (content!21 (right!579 (left!576 tree!73)))) (= (value!1459 lt!1891) (value!1459 (left!576 tree!73)))) (= true true)))

(declare-fun bs!3714 () Bool)

(assert (= bs!3714 (and neg-inst!57 b!13175)))

(assert (=> (and bs!3714 (= (content!21 (right!579 lt!1891)) (content!21 (right!579 tree!73))) (= (value!1459 lt!1891) (value!1459 tree!73))) (= true inst!63)))

(declare-fun bs!3715 () Bool)

(assert (= bs!3715 (and neg-inst!57 neg-inst!53)))

(assert (=> (and bs!3715 (= (content!21 (right!579 lt!1891)) (content!21 (right!579 res!4801))) (= (value!1459 lt!1891) (value!1459 res!4801))) (= true true)))

(declare-fun bs!3716 () Bool)

(assert (= bs!3716 (and neg-inst!57 b!13195)))

(assert (=> (and bs!3716 (= (content!21 (right!579 lt!1891)) (content!21 (right!579 (left!576 tree!73)))) (= (value!1459 lt!1891) (value!1459 (left!576 tree!73)))) (= true inst!67)))

(declare-fun bs!3717 () Bool)

(assert (= bs!3717 (and neg-inst!57 b!13187)))

(assert (=> (and bs!3717 (= (content!21 (right!579 lt!1891)) (content!21 (right!579 res!4801))) (= (value!1459 lt!1891) (value!1459 res!4801))) (= true inst!65)))

(declare-fun bs!3718 () Bool)

(assert (= bs!3718 (and neg-inst!57 b!13199)))

(assert (=> bs!3718 (= true inst!69)))

(declare-fun e!7237 () Bool)

(assert (=> b!13199 (= e!7237 inst!69)))

(declare-fun res!4936 () Bool)

(assert (=> b!13198 (=> (not res!4936) (not e!7237))))

(assert (=> b!13198 (= res!4936 inst!68)))

(declare-fun b!13197 () Bool)

(declare-fun res!4938 () Bool)

(assert (=> b!13197 (=> (not res!4938) (not e!7237))))

(assert (=> b!13197 (= res!4938 (isBST!0 (right!579 lt!1891)))))

(declare-fun d!10255 () Bool)

(declare-fun res!4939 () Bool)

(declare-fun e!7238 () Bool)

(assert (=> d!10255 (=> res!4939 e!7238)))

(assert (=> d!10255 (= res!4939 (is-Leaf!166 lt!1891))))

(assert (=> d!10255 (= (isBST!0 lt!1891) e!7238)))

(declare-fun b!13196 () Bool)

(assert (=> b!13196 (= e!7238 e!7237)))

(declare-fun res!4937 () Bool)

(assert (=> b!13196 (=> (not res!4937) (not e!7237))))

(assert (=> b!13196 (= res!4937 (isBST!0 (left!576 lt!1891)))))

(assert (= (and d!10255 (not res!4939)) b!13196))

(assert (= (and b!13196 res!4937) b!13197))

(assert (= (and b!13197 res!4938) b!13198))

(assert (= neg-inst!56 inst!68))

(assert (= (and b!13198 res!4936) b!13199))

(assert (= neg-inst!57 inst!69))

(declare-fun m!16615 () Bool)

(assert (=> b!13197 m!16615))

(declare-fun m!16617 () Bool)

(assert (=> b!13196 m!16617))

(assert (=> b!13161 d!10255))

(declare-fun b!13202 () Bool)

(declare-fun m!16619 () Bool)

(assert (=> b!13202 m!16619))

(declare-fun inst!70 () Bool)

(declare-fun x!7490 () Int)

(assert (=> b!13202 (= inst!70 (=> true (or (not (member x!7490 (content!21 (left!576 (right!579 res!4801))))) (< x!7490 (value!1459 (right!579 res!4801))))))))

(declare-fun m!16621 () Bool)

(assert (=> b!13202 m!16621))

(declare-fun bs!3719 () Bool)

(assert (= bs!3719 (and b!13202 b!13198)))

(assert (=> (and bs!3719 (= (content!21 (left!576 (right!579 res!4801))) (content!21 (left!576 lt!1891))) (= (value!1459 (right!579 res!4801)) (value!1459 lt!1891))) (= inst!70 inst!68)))

(declare-fun bs!3720 () Bool)

(assert (= bs!3720 (and b!13202 b!13194)))

(assert (=> (and bs!3720 (= (content!21 (left!576 (right!579 res!4801))) (content!21 (left!576 (left!576 tree!73)))) (= (value!1459 (right!579 res!4801)) (value!1459 (left!576 tree!73)))) (= inst!70 inst!66)))

(declare-fun bs!3721 () Bool)

(assert (= bs!3721 (and b!13202 b!13174)))

(assert (=> (and bs!3721 (= (content!21 (left!576 (right!579 res!4801))) (content!21 (left!576 tree!73))) (= (value!1459 (right!579 res!4801)) (value!1459 tree!73))) (= inst!70 inst!62)))

(declare-fun bs!3722 () Bool)

(assert (= bs!3722 (and b!13202 neg-inst!50)))

(assert (=> (and bs!3722 (= (content!21 (left!576 (right!579 res!4801))) (content!21 (left!576 tree!73))) (= (value!1459 (right!579 res!4801)) (value!1459 tree!73))) (= inst!70 true)))

(declare-fun bs!3723 () Bool)

(assert (= bs!3723 (and b!13202 neg-inst!54)))

(assert (=> (and bs!3723 (= (content!21 (left!576 (right!579 res!4801))) (content!21 (left!576 (left!576 tree!73)))) (= (value!1459 (right!579 res!4801)) (value!1459 (left!576 tree!73)))) (= inst!70 true)))

(declare-fun bs!3724 () Bool)

(assert (= bs!3724 (and b!13202 neg-inst!52)))

(assert (=> (and bs!3724 (= (content!21 (left!576 (right!579 res!4801))) (content!21 (left!576 res!4801))) (= (value!1459 (right!579 res!4801)) (value!1459 res!4801))) (= inst!70 true)))

(declare-fun bs!3725 () Bool)

(assert (= bs!3725 (and b!13202 neg-inst!56)))

(assert (=> (and bs!3725 (= (content!21 (left!576 (right!579 res!4801))) (content!21 (left!576 lt!1891))) (= (value!1459 (right!579 res!4801)) (value!1459 lt!1891))) (= inst!70 true)))

(declare-fun bs!3726 () Bool)

(assert (= bs!3726 (and b!13202 b!13186)))

(assert (=> (and bs!3726 (= (content!21 (left!576 (right!579 res!4801))) (content!21 (left!576 res!4801))) (= (value!1459 (right!579 res!4801)) (value!1459 res!4801))) (= inst!70 inst!64)))

(declare-fun b!13203 () Bool)

(declare-fun m!16623 () Bool)

(assert (=> b!13203 m!16623))

(declare-fun inst!71 () Bool)

(declare-fun x!7491 () Int)

(assert (=> b!13203 (= inst!71 (=> true (or (not (member x!7491 (content!21 (right!579 (right!579 res!4801))))) (< (value!1459 (right!579 res!4801)) x!7491))))))

(declare-fun m!16625 () Bool)

(assert (=> b!13203 m!16625))

(declare-fun bs!3727 () Bool)

(assert (= bs!3727 (and b!13203 neg-inst!57)))

(assert (=> (and bs!3727 (= (content!21 (right!579 (right!579 res!4801))) (content!21 (right!579 lt!1891))) (= (value!1459 (right!579 res!4801)) (value!1459 lt!1891))) (= inst!71 true)))

(declare-fun bs!3728 () Bool)

(assert (= bs!3728 (and b!13203 neg-inst!51)))

(assert (=> (and bs!3728 (= (content!21 (right!579 (right!579 res!4801))) (content!21 (right!579 tree!73))) (= (value!1459 (right!579 res!4801)) (value!1459 tree!73))) (= inst!71 true)))

(declare-fun bs!3729 () Bool)

(assert (= bs!3729 (and b!13203 neg-inst!55)))

(assert (=> (and bs!3729 (= (content!21 (right!579 (right!579 res!4801))) (content!21 (right!579 (left!576 tree!73)))) (= (value!1459 (right!579 res!4801)) (value!1459 (left!576 tree!73)))) (= inst!71 true)))

(declare-fun bs!3730 () Bool)

(assert (= bs!3730 (and b!13203 b!13175)))

(assert (=> (and bs!3730 (= (content!21 (right!579 (right!579 res!4801))) (content!21 (right!579 tree!73))) (= (value!1459 (right!579 res!4801)) (value!1459 tree!73))) (= inst!71 inst!63)))

(declare-fun bs!3731 () Bool)

(assert (= bs!3731 (and b!13203 neg-inst!53)))

(assert (=> (and bs!3731 (= (content!21 (right!579 (right!579 res!4801))) (content!21 (right!579 res!4801))) (= (value!1459 (right!579 res!4801)) (value!1459 res!4801))) (= inst!71 true)))

(declare-fun bs!3732 () Bool)

(assert (= bs!3732 (and b!13203 b!13195)))

(assert (=> (and bs!3732 (= (content!21 (right!579 (right!579 res!4801))) (content!21 (right!579 (left!576 tree!73)))) (= (value!1459 (right!579 res!4801)) (value!1459 (left!576 tree!73)))) (= inst!71 inst!67)))

(declare-fun bs!3733 () Bool)

(assert (= bs!3733 (and b!13203 b!13187)))

(assert (=> (and bs!3733 (= (content!21 (right!579 (right!579 res!4801))) (content!21 (right!579 res!4801))) (= (value!1459 (right!579 res!4801)) (value!1459 res!4801))) (= inst!71 inst!65)))

(declare-fun bs!3734 () Bool)

(assert (= bs!3734 (and b!13203 b!13199)))

(assert (=> (and bs!3734 (= (content!21 (right!579 (right!579 res!4801))) (content!21 (right!579 lt!1891))) (= (value!1459 (right!579 res!4801)) (value!1459 lt!1891))) (= inst!71 inst!69)))

(declare-fun bs!3735 () Bool)

(declare-fun neg-inst!58 () Bool)

(assert (= bs!3735 neg-inst!58))

(assert (=> bs!3735 m!16619))

(declare-fun bs!3736 () Bool)

(declare-fun s!440 () Bool)

(assert (= bs!3736 (and neg-inst!58 s!440)))

(assert (=> bs!3736 (=> true (or (not (member x!7490 (content!21 (left!576 (right!579 res!4801))))) (< x!7490 (value!1459 (right!579 res!4801)))))))

(assert (=> m!16621 s!440))

(declare-fun bs!3737 () Bool)

(assert (= bs!3737 (and neg-inst!58 b!13198)))

(assert (=> (and bs!3737 (= (content!21 (left!576 (right!579 res!4801))) (content!21 (left!576 lt!1891))) (= (value!1459 (right!579 res!4801)) (value!1459 lt!1891))) (= true inst!68)))

(declare-fun bs!3738 () Bool)

(assert (= bs!3738 (and neg-inst!58 b!13202)))

(assert (=> bs!3738 (= true inst!70)))

(declare-fun bs!3739 () Bool)

(assert (= bs!3739 (and neg-inst!58 b!13194)))

(assert (=> (and bs!3739 (= (content!21 (left!576 (right!579 res!4801))) (content!21 (left!576 (left!576 tree!73)))) (= (value!1459 (right!579 res!4801)) (value!1459 (left!576 tree!73)))) (= true inst!66)))

(declare-fun bs!3740 () Bool)

(assert (= bs!3740 (and neg-inst!58 b!13174)))

(assert (=> (and bs!3740 (= (content!21 (left!576 (right!579 res!4801))) (content!21 (left!576 tree!73))) (= (value!1459 (right!579 res!4801)) (value!1459 tree!73))) (= true inst!62)))

(declare-fun bs!3741 () Bool)

(assert (= bs!3741 (and neg-inst!58 neg-inst!50)))

(assert (=> (and bs!3741 (= (content!21 (left!576 (right!579 res!4801))) (content!21 (left!576 tree!73))) (= (value!1459 (right!579 res!4801)) (value!1459 tree!73))) (= true true)))

(declare-fun bs!3742 () Bool)

(assert (= bs!3742 (and neg-inst!58 neg-inst!54)))

(assert (=> (and bs!3742 (= (content!21 (left!576 (right!579 res!4801))) (content!21 (left!576 (left!576 tree!73)))) (= (value!1459 (right!579 res!4801)) (value!1459 (left!576 tree!73)))) (= true true)))

(declare-fun bs!3743 () Bool)

(assert (= bs!3743 (and neg-inst!58 neg-inst!52)))

(assert (=> (and bs!3743 (= (content!21 (left!576 (right!579 res!4801))) (content!21 (left!576 res!4801))) (= (value!1459 (right!579 res!4801)) (value!1459 res!4801))) (= true true)))

(declare-fun bs!3744 () Bool)

(assert (= bs!3744 (and neg-inst!58 neg-inst!56)))

(assert (=> (and bs!3744 (= (content!21 (left!576 (right!579 res!4801))) (content!21 (left!576 lt!1891))) (= (value!1459 (right!579 res!4801)) (value!1459 lt!1891))) (= true true)))

(declare-fun bs!3745 () Bool)

(assert (= bs!3745 (and neg-inst!58 b!13186)))

(assert (=> (and bs!3745 (= (content!21 (left!576 (right!579 res!4801))) (content!21 (left!576 res!4801))) (= (value!1459 (right!579 res!4801)) (value!1459 res!4801))) (= true inst!64)))

(declare-fun bs!3746 () Bool)

(declare-fun neg-inst!59 () Bool)

(assert (= bs!3746 neg-inst!59))

(assert (=> bs!3746 m!16623))

(declare-fun bs!3747 () Bool)

(declare-fun s!442 () Bool)

(assert (= bs!3747 (and neg-inst!59 s!442)))

(assert (=> bs!3747 (=> true (or (not (member x!7491 (content!21 (right!579 (right!579 res!4801))))) (< (value!1459 (right!579 res!4801)) x!7491)))))

(assert (=> m!16625 s!442))

(declare-fun bs!3748 () Bool)

(assert (= bs!3748 (and neg-inst!59 neg-inst!57)))

(assert (=> (and bs!3748 (= (content!21 (right!579 (right!579 res!4801))) (content!21 (right!579 lt!1891))) (= (value!1459 (right!579 res!4801)) (value!1459 lt!1891))) (= true true)))

(declare-fun bs!3749 () Bool)

(assert (= bs!3749 (and neg-inst!59 neg-inst!51)))

(assert (=> (and bs!3749 (= (content!21 (right!579 (right!579 res!4801))) (content!21 (right!579 tree!73))) (= (value!1459 (right!579 res!4801)) (value!1459 tree!73))) (= true true)))

(declare-fun bs!3750 () Bool)

(assert (= bs!3750 (and neg-inst!59 neg-inst!55)))

(assert (=> (and bs!3750 (= (content!21 (right!579 (right!579 res!4801))) (content!21 (right!579 (left!576 tree!73)))) (= (value!1459 (right!579 res!4801)) (value!1459 (left!576 tree!73)))) (= true true)))

(declare-fun bs!3751 () Bool)

(assert (= bs!3751 (and neg-inst!59 b!13203)))

(assert (=> bs!3751 (= true inst!71)))

(declare-fun bs!3752 () Bool)

(assert (= bs!3752 (and neg-inst!59 b!13175)))

(assert (=> (and bs!3752 (= (content!21 (right!579 (right!579 res!4801))) (content!21 (right!579 tree!73))) (= (value!1459 (right!579 res!4801)) (value!1459 tree!73))) (= true inst!63)))

(declare-fun bs!3753 () Bool)

(assert (= bs!3753 (and neg-inst!59 neg-inst!53)))

(assert (=> (and bs!3753 (= (content!21 (right!579 (right!579 res!4801))) (content!21 (right!579 res!4801))) (= (value!1459 (right!579 res!4801)) (value!1459 res!4801))) (= true true)))

(declare-fun bs!3754 () Bool)

(assert (= bs!3754 (and neg-inst!59 b!13195)))

(assert (=> (and bs!3754 (= (content!21 (right!579 (right!579 res!4801))) (content!21 (right!579 (left!576 tree!73)))) (= (value!1459 (right!579 res!4801)) (value!1459 (left!576 tree!73)))) (= true inst!67)))

(declare-fun bs!3755 () Bool)

(assert (= bs!3755 (and neg-inst!59 b!13187)))

(assert (=> (and bs!3755 (= (content!21 (right!579 (right!579 res!4801))) (content!21 (right!579 res!4801))) (= (value!1459 (right!579 res!4801)) (value!1459 res!4801))) (= true inst!65)))

(declare-fun bs!3756 () Bool)

(assert (= bs!3756 (and neg-inst!59 b!13199)))

(assert (=> (and bs!3756 (= (content!21 (right!579 (right!579 res!4801))) (content!21 (right!579 lt!1891))) (= (value!1459 (right!579 res!4801)) (value!1459 lt!1891))) (= true inst!69)))

(declare-fun e!7239 () Bool)

(assert (=> b!13203 (= e!7239 inst!71)))

(declare-fun res!4940 () Bool)

(assert (=> b!13202 (=> (not res!4940) (not e!7239))))

(assert (=> b!13202 (= res!4940 inst!70)))

(declare-fun b!13201 () Bool)

(declare-fun res!4942 () Bool)

(assert (=> b!13201 (=> (not res!4942) (not e!7239))))

(assert (=> b!13201 (= res!4942 (isBST!0 (right!579 (right!579 res!4801))))))

(declare-fun d!10257 () Bool)

(declare-fun res!4943 () Bool)

(declare-fun e!7240 () Bool)

(assert (=> d!10257 (=> res!4943 e!7240)))

(assert (=> d!10257 (= res!4943 (is-Leaf!166 (right!579 res!4801)))))

(assert (=> d!10257 (= (isBST!0 (right!579 res!4801)) e!7240)))

(declare-fun b!13200 () Bool)

(assert (=> b!13200 (= e!7240 e!7239)))

(declare-fun res!4941 () Bool)

(assert (=> b!13200 (=> (not res!4941) (not e!7239))))

(assert (=> b!13200 (= res!4941 (isBST!0 (left!576 (right!579 res!4801))))))

(assert (= (and d!10257 (not res!4943)) b!13200))

(assert (= (and b!13200 res!4941) b!13201))

(assert (= (and b!13201 res!4942) b!13202))

(assert (= neg-inst!58 inst!70))

(assert (= (and b!13202 res!4940) b!13203))

(assert (= neg-inst!59 inst!71))

(declare-fun m!16627 () Bool)

(assert (=> b!13201 m!16627))

(declare-fun m!16629 () Bool)

(assert (=> b!13200 m!16629))

(assert (=> b!13185 d!10257))

(declare-fun d!10259 () Bool)

(declare-fun c!3711 () Bool)

(assert (=> d!10259 (= c!3711 (is-Leaf!166 (left!576 tree!73)))))

(declare-fun e!7241 () (Set Int))

(assert (=> d!10259 (= (content!21 (left!576 tree!73)) e!7241)))

(declare-fun b!13204 () Bool)

(assert (=> b!13204 (= e!7241 (as emptyset (Set Int)))))

(declare-fun b!13205 () Bool)

(assert (=> b!13205 (= e!7241 (union (union (content!21 (left!576 (left!576 tree!73))) (insert (value!1459 (left!576 tree!73)) (as emptyset (Set Int)))) (content!21 (right!579 (left!576 tree!73)))))))

(assert (= (and d!10259 c!3711) b!13204))

(assert (= (and d!10259 (not c!3711)) b!13205))

(assert (=> b!13205 m!16595))

(declare-fun m!16631 () Bool)

(assert (=> b!13205 m!16631))

(assert (=> b!13205 m!16599))

(assert (=> neg-inst!50 d!10259))

(declare-fun b!13208 () Bool)

(assert (=> b!13208 m!16589))

(declare-fun inst!72 () Bool)

(declare-fun x!7492 () Int)

(assert (=> b!13208 (= inst!72 (=> true (or (not (member x!7492 (content!21 (left!576 (right!579 tree!73))))) (< x!7492 (value!1459 (right!579 tree!73))))))))

(declare-fun m!16633 () Bool)

(assert (=> b!13208 m!16633))

(declare-fun bs!3757 () Bool)

(assert (= bs!3757 (and b!13208 b!13198)))

(assert (=> (and bs!3757 (= (content!21 (left!576 (right!579 tree!73))) (content!21 (left!576 lt!1891))) (= (value!1459 (right!579 tree!73)) (value!1459 lt!1891))) (= inst!72 inst!68)))

(declare-fun bs!3758 () Bool)

(assert (= bs!3758 (and b!13208 b!13202)))

(assert (=> (and bs!3758 (= (content!21 (left!576 (right!579 tree!73))) (content!21 (left!576 (right!579 res!4801)))) (= (value!1459 (right!579 tree!73)) (value!1459 (right!579 res!4801)))) (= inst!72 inst!70)))

(declare-fun bs!3759 () Bool)

(assert (= bs!3759 (and b!13208 b!13194)))

(assert (=> (and bs!3759 (= (content!21 (left!576 (right!579 tree!73))) (content!21 (left!576 (left!576 tree!73)))) (= (value!1459 (right!579 tree!73)) (value!1459 (left!576 tree!73)))) (= inst!72 inst!66)))

(declare-fun bs!3760 () Bool)

(assert (= bs!3760 (and b!13208 b!13174)))

(assert (=> (and bs!3760 (= (content!21 (left!576 (right!579 tree!73))) (content!21 (left!576 tree!73))) (= (value!1459 (right!579 tree!73)) (value!1459 tree!73))) (= inst!72 inst!62)))

(declare-fun bs!3761 () Bool)

(assert (= bs!3761 (and b!13208 neg-inst!50)))

(assert (=> (and bs!3761 (= (content!21 (left!576 (right!579 tree!73))) (content!21 (left!576 tree!73))) (= (value!1459 (right!579 tree!73)) (value!1459 tree!73))) (= inst!72 true)))

(declare-fun bs!3762 () Bool)

(assert (= bs!3762 (and b!13208 neg-inst!58)))

(assert (=> (and bs!3762 (= (content!21 (left!576 (right!579 tree!73))) (content!21 (left!576 (right!579 res!4801)))) (= (value!1459 (right!579 tree!73)) (value!1459 (right!579 res!4801)))) (= inst!72 true)))

(declare-fun bs!3763 () Bool)

(assert (= bs!3763 (and b!13208 neg-inst!54)))

(assert (=> (and bs!3763 (= (content!21 (left!576 (right!579 tree!73))) (content!21 (left!576 (left!576 tree!73)))) (= (value!1459 (right!579 tree!73)) (value!1459 (left!576 tree!73)))) (= inst!72 true)))

(declare-fun bs!3764 () Bool)

(assert (= bs!3764 (and b!13208 neg-inst!52)))

(assert (=> (and bs!3764 (= (content!21 (left!576 (right!579 tree!73))) (content!21 (left!576 res!4801))) (= (value!1459 (right!579 tree!73)) (value!1459 res!4801))) (= inst!72 true)))

(declare-fun bs!3765 () Bool)

(assert (= bs!3765 (and b!13208 neg-inst!56)))

(assert (=> (and bs!3765 (= (content!21 (left!576 (right!579 tree!73))) (content!21 (left!576 lt!1891))) (= (value!1459 (right!579 tree!73)) (value!1459 lt!1891))) (= inst!72 true)))

(declare-fun bs!3766 () Bool)

(assert (= bs!3766 (and b!13208 b!13186)))

(assert (=> (and bs!3766 (= (content!21 (left!576 (right!579 tree!73))) (content!21 (left!576 res!4801))) (= (value!1459 (right!579 tree!73)) (value!1459 res!4801))) (= inst!72 inst!64)))

(declare-fun b!13209 () Bool)

(assert (=> b!13209 m!16593))

(declare-fun inst!73 () Bool)

(declare-fun x!7493 () Int)

(assert (=> b!13209 (= inst!73 (=> true (or (not (member x!7493 (content!21 (right!579 (right!579 tree!73))))) (< (value!1459 (right!579 tree!73)) x!7493))))))

(declare-fun m!16635 () Bool)

(assert (=> b!13209 m!16635))

(declare-fun bs!3767 () Bool)

(assert (= bs!3767 (and b!13209 neg-inst!59)))

(assert (=> (and bs!3767 (= (content!21 (right!579 (right!579 tree!73))) (content!21 (right!579 (right!579 res!4801)))) (= (value!1459 (right!579 tree!73)) (value!1459 (right!579 res!4801)))) (= inst!73 true)))

(declare-fun bs!3768 () Bool)

(assert (= bs!3768 (and b!13209 neg-inst!57)))

(assert (=> (and bs!3768 (= (content!21 (right!579 (right!579 tree!73))) (content!21 (right!579 lt!1891))) (= (value!1459 (right!579 tree!73)) (value!1459 lt!1891))) (= inst!73 true)))

(declare-fun bs!3769 () Bool)

(assert (= bs!3769 (and b!13209 neg-inst!51)))

(assert (=> (and bs!3769 (= (content!21 (right!579 (right!579 tree!73))) (content!21 (right!579 tree!73))) (= (value!1459 (right!579 tree!73)) (value!1459 tree!73))) (= inst!73 true)))

(declare-fun bs!3770 () Bool)

(assert (= bs!3770 (and b!13209 neg-inst!55)))

(assert (=> (and bs!3770 (= (content!21 (right!579 (right!579 tree!73))) (content!21 (right!579 (left!576 tree!73)))) (= (value!1459 (right!579 tree!73)) (value!1459 (left!576 tree!73)))) (= inst!73 true)))

(declare-fun bs!3771 () Bool)

(assert (= bs!3771 (and b!13209 b!13203)))

(assert (=> (and bs!3771 (= (content!21 (right!579 (right!579 tree!73))) (content!21 (right!579 (right!579 res!4801)))) (= (value!1459 (right!579 tree!73)) (value!1459 (right!579 res!4801)))) (= inst!73 inst!71)))

(declare-fun bs!3772 () Bool)

(assert (= bs!3772 (and b!13209 b!13175)))

(assert (=> (and bs!3772 (= (content!21 (right!579 (right!579 tree!73))) (content!21 (right!579 tree!73))) (= (value!1459 (right!579 tree!73)) (value!1459 tree!73))) (= inst!73 inst!63)))

(declare-fun bs!3773 () Bool)

(assert (= bs!3773 (and b!13209 neg-inst!53)))

(assert (=> (and bs!3773 (= (content!21 (right!579 (right!579 tree!73))) (content!21 (right!579 res!4801))) (= (value!1459 (right!579 tree!73)) (value!1459 res!4801))) (= inst!73 true)))

(declare-fun bs!3774 () Bool)

(assert (= bs!3774 (and b!13209 b!13195)))

(assert (=> (and bs!3774 (= (content!21 (right!579 (right!579 tree!73))) (content!21 (right!579 (left!576 tree!73)))) (= (value!1459 (right!579 tree!73)) (value!1459 (left!576 tree!73)))) (= inst!73 inst!67)))

(declare-fun bs!3775 () Bool)

(assert (= bs!3775 (and b!13209 b!13187)))

(assert (=> (and bs!3775 (= (content!21 (right!579 (right!579 tree!73))) (content!21 (right!579 res!4801))) (= (value!1459 (right!579 tree!73)) (value!1459 res!4801))) (= inst!73 inst!65)))

(declare-fun bs!3776 () Bool)

(assert (= bs!3776 (and b!13209 b!13199)))

(assert (=> (and bs!3776 (= (content!21 (right!579 (right!579 tree!73))) (content!21 (right!579 lt!1891))) (= (value!1459 (right!579 tree!73)) (value!1459 lt!1891))) (= inst!73 inst!69)))

(declare-fun bs!3777 () Bool)

(declare-fun neg-inst!60 () Bool)

(assert (= bs!3777 neg-inst!60))

(assert (=> bs!3777 m!16589))

(declare-fun bs!3778 () Bool)

(declare-fun s!444 () Bool)

(assert (= bs!3778 (and neg-inst!60 s!444)))

(assert (=> bs!3778 (=> true (or (not (member x!7492 (content!21 (left!576 (right!579 tree!73))))) (< x!7492 (value!1459 (right!579 tree!73)))))))

(assert (=> m!16633 s!444))

(declare-fun bs!3779 () Bool)

(assert (= bs!3779 (and neg-inst!60 b!13208)))

(assert (=> bs!3779 (= true inst!72)))

(declare-fun bs!3780 () Bool)

(assert (= bs!3780 (and neg-inst!60 b!13198)))

(assert (=> (and bs!3780 (= (content!21 (left!576 (right!579 tree!73))) (content!21 (left!576 lt!1891))) (= (value!1459 (right!579 tree!73)) (value!1459 lt!1891))) (= true inst!68)))

(declare-fun bs!3781 () Bool)

(assert (= bs!3781 (and neg-inst!60 b!13202)))

(assert (=> (and bs!3781 (= (content!21 (left!576 (right!579 tree!73))) (content!21 (left!576 (right!579 res!4801)))) (= (value!1459 (right!579 tree!73)) (value!1459 (right!579 res!4801)))) (= true inst!70)))

(declare-fun bs!3782 () Bool)

(assert (= bs!3782 (and neg-inst!60 b!13194)))

(assert (=> (and bs!3782 (= (content!21 (left!576 (right!579 tree!73))) (content!21 (left!576 (left!576 tree!73)))) (= (value!1459 (right!579 tree!73)) (value!1459 (left!576 tree!73)))) (= true inst!66)))

(declare-fun bs!3783 () Bool)

(assert (= bs!3783 (and neg-inst!60 b!13174)))

(assert (=> (and bs!3783 (= (content!21 (left!576 (right!579 tree!73))) (content!21 (left!576 tree!73))) (= (value!1459 (right!579 tree!73)) (value!1459 tree!73))) (= true inst!62)))

(declare-fun bs!3784 () Bool)

(assert (= bs!3784 (and neg-inst!60 neg-inst!50)))

(assert (=> (and bs!3784 (= (content!21 (left!576 (right!579 tree!73))) (content!21 (left!576 tree!73))) (= (value!1459 (right!579 tree!73)) (value!1459 tree!73))) (= true true)))

(declare-fun bs!3785 () Bool)

(assert (= bs!3785 (and neg-inst!60 neg-inst!58)))

(assert (=> (and bs!3785 (= (content!21 (left!576 (right!579 tree!73))) (content!21 (left!576 (right!579 res!4801)))) (= (value!1459 (right!579 tree!73)) (value!1459 (right!579 res!4801)))) (= true true)))

(declare-fun bs!3786 () Bool)

(assert (= bs!3786 (and neg-inst!60 neg-inst!54)))

(assert (=> (and bs!3786 (= (content!21 (left!576 (right!579 tree!73))) (content!21 (left!576 (left!576 tree!73)))) (= (value!1459 (right!579 tree!73)) (value!1459 (left!576 tree!73)))) (= true true)))

(declare-fun bs!3787 () Bool)

(assert (= bs!3787 (and neg-inst!60 neg-inst!52)))

(assert (=> (and bs!3787 (= (content!21 (left!576 (right!579 tree!73))) (content!21 (left!576 res!4801))) (= (value!1459 (right!579 tree!73)) (value!1459 res!4801))) (= true true)))

(declare-fun bs!3788 () Bool)

(assert (= bs!3788 (and neg-inst!60 neg-inst!56)))

(assert (=> (and bs!3788 (= (content!21 (left!576 (right!579 tree!73))) (content!21 (left!576 lt!1891))) (= (value!1459 (right!579 tree!73)) (value!1459 lt!1891))) (= true true)))

(declare-fun bs!3789 () Bool)

(assert (= bs!3789 (and neg-inst!60 b!13186)))

(assert (=> (and bs!3789 (= (content!21 (left!576 (right!579 tree!73))) (content!21 (left!576 res!4801))) (= (value!1459 (right!579 tree!73)) (value!1459 res!4801))) (= true inst!64)))

(declare-fun bs!3790 () Bool)

(declare-fun neg-inst!61 () Bool)

(assert (= bs!3790 neg-inst!61))

(assert (=> bs!3790 m!16593))

(declare-fun bs!3791 () Bool)

(declare-fun s!446 () Bool)

(assert (= bs!3791 (and neg-inst!61 s!446)))

(assert (=> bs!3791 (=> true (or (not (member x!7493 (content!21 (right!579 (right!579 tree!73))))) (< (value!1459 (right!579 tree!73)) x!7493)))))

(assert (=> m!16635 s!446))

(declare-fun bs!3792 () Bool)

(assert (= bs!3792 (and neg-inst!61 neg-inst!59)))

(assert (=> (and bs!3792 (= (content!21 (right!579 (right!579 tree!73))) (content!21 (right!579 (right!579 res!4801)))) (= (value!1459 (right!579 tree!73)) (value!1459 (right!579 res!4801)))) (= true true)))

(declare-fun bs!3793 () Bool)

(assert (= bs!3793 (and neg-inst!61 neg-inst!57)))

(assert (=> (and bs!3793 (= (content!21 (right!579 (right!579 tree!73))) (content!21 (right!579 lt!1891))) (= (value!1459 (right!579 tree!73)) (value!1459 lt!1891))) (= true true)))

(declare-fun bs!3794 () Bool)

(assert (= bs!3794 (and neg-inst!61 neg-inst!51)))

(assert (=> (and bs!3794 (= (content!21 (right!579 (right!579 tree!73))) (content!21 (right!579 tree!73))) (= (value!1459 (right!579 tree!73)) (value!1459 tree!73))) (= true true)))

(declare-fun bs!3795 () Bool)

(assert (= bs!3795 (and neg-inst!61 neg-inst!55)))

(assert (=> (and bs!3795 (= (content!21 (right!579 (right!579 tree!73))) (content!21 (right!579 (left!576 tree!73)))) (= (value!1459 (right!579 tree!73)) (value!1459 (left!576 tree!73)))) (= true true)))

(declare-fun bs!3796 () Bool)

(assert (= bs!3796 (and neg-inst!61 b!13203)))

(assert (=> (and bs!3796 (= (content!21 (right!579 (right!579 tree!73))) (content!21 (right!579 (right!579 res!4801)))) (= (value!1459 (right!579 tree!73)) (value!1459 (right!579 res!4801)))) (= true inst!71)))

(declare-fun bs!3797 () Bool)

(assert (= bs!3797 (and neg-inst!61 b!13175)))

(assert (=> (and bs!3797 (= (content!21 (right!579 (right!579 tree!73))) (content!21 (right!579 tree!73))) (= (value!1459 (right!579 tree!73)) (value!1459 tree!73))) (= true inst!63)))

(declare-fun bs!3798 () Bool)

(assert (= bs!3798 (and neg-inst!61 neg-inst!53)))

(assert (=> (and bs!3798 (= (content!21 (right!579 (right!579 tree!73))) (content!21 (right!579 res!4801))) (= (value!1459 (right!579 tree!73)) (value!1459 res!4801))) (= true true)))

(declare-fun bs!3799 () Bool)

(assert (= bs!3799 (and neg-inst!61 b!13195)))

(assert (=> (and bs!3799 (= (content!21 (right!579 (right!579 tree!73))) (content!21 (right!579 (left!576 tree!73)))) (= (value!1459 (right!579 tree!73)) (value!1459 (left!576 tree!73)))) (= true inst!67)))

(declare-fun bs!3800 () Bool)

(assert (= bs!3800 (and neg-inst!61 b!13187)))

(assert (=> (and bs!3800 (= (content!21 (right!579 (right!579 tree!73))) (content!21 (right!579 res!4801))) (= (value!1459 (right!579 tree!73)) (value!1459 res!4801))) (= true inst!65)))

(declare-fun bs!3801 () Bool)

(assert (= bs!3801 (and neg-inst!61 b!13209)))

(assert (=> bs!3801 (= true inst!73)))

(declare-fun bs!3802 () Bool)

(assert (= bs!3802 (and neg-inst!61 b!13199)))

(assert (=> (and bs!3802 (= (content!21 (right!579 (right!579 tree!73))) (content!21 (right!579 lt!1891))) (= (value!1459 (right!579 tree!73)) (value!1459 lt!1891))) (= true inst!69)))

(declare-fun e!7242 () Bool)

(assert (=> b!13209 (= e!7242 inst!73)))

(declare-fun res!4944 () Bool)

(assert (=> b!13208 (=> (not res!4944) (not e!7242))))

(assert (=> b!13208 (= res!4944 inst!72)))

(declare-fun b!13207 () Bool)

(declare-fun res!4946 () Bool)

(assert (=> b!13207 (=> (not res!4946) (not e!7242))))

(assert (=> b!13207 (= res!4946 (isBST!0 (right!579 (right!579 tree!73))))))

(declare-fun d!10261 () Bool)

(declare-fun res!4947 () Bool)

(declare-fun e!7243 () Bool)

(assert (=> d!10261 (=> res!4947 e!7243)))

(assert (=> d!10261 (= res!4947 (is-Leaf!166 (right!579 tree!73)))))

(assert (=> d!10261 (= (isBST!0 (right!579 tree!73)) e!7243)))

(declare-fun b!13206 () Bool)

(assert (=> b!13206 (= e!7243 e!7242)))

(declare-fun res!4945 () Bool)

(assert (=> b!13206 (=> (not res!4945) (not e!7242))))

(assert (=> b!13206 (= res!4945 (isBST!0 (left!576 (right!579 tree!73))))))

(assert (= (and d!10261 (not res!4947)) b!13206))

(assert (= (and b!13206 res!4945) b!13207))

(assert (= (and b!13207 res!4946) b!13208))

(assert (= neg-inst!60 inst!72))

(assert (= (and b!13208 res!4944) b!13209))

(assert (= neg-inst!61 inst!73))

(declare-fun m!16637 () Bool)

(assert (=> b!13207 m!16637))

(declare-fun m!16639 () Bool)

(assert (=> b!13206 m!16639))

(assert (=> b!13173 d!10261))

(declare-fun b!13212 () Bool)

(assert (=> b!13212 m!16583))

(declare-fun inst!74 () Bool)

(declare-fun x!7494 () Int)

(assert (=> b!13212 (= inst!74 (=> true (or (not (member x!7494 (content!21 (left!576 (left!576 res!4801))))) (< x!7494 (value!1459 (left!576 res!4801))))))))

(declare-fun m!16641 () Bool)

(assert (=> b!13212 m!16641))

(declare-fun bs!3803 () Bool)

(assert (= bs!3803 (and b!13212 b!13208)))

(assert (=> (and bs!3803 (= (content!21 (left!576 (left!576 res!4801))) (content!21 (left!576 (right!579 tree!73)))) (= (value!1459 (left!576 res!4801)) (value!1459 (right!579 tree!73)))) (= inst!74 inst!72)))

(declare-fun bs!3804 () Bool)

(assert (= bs!3804 (and b!13212 b!13198)))

(assert (=> (and bs!3804 (= (content!21 (left!576 (left!576 res!4801))) (content!21 (left!576 lt!1891))) (= (value!1459 (left!576 res!4801)) (value!1459 lt!1891))) (= inst!74 inst!68)))

(declare-fun bs!3805 () Bool)

(assert (= bs!3805 (and b!13212 b!13202)))

(assert (=> (and bs!3805 (= (content!21 (left!576 (left!576 res!4801))) (content!21 (left!576 (right!579 res!4801)))) (= (value!1459 (left!576 res!4801)) (value!1459 (right!579 res!4801)))) (= inst!74 inst!70)))

(declare-fun bs!3806 () Bool)

(assert (= bs!3806 (and b!13212 b!13194)))

(assert (=> (and bs!3806 (= (content!21 (left!576 (left!576 res!4801))) (content!21 (left!576 (left!576 tree!73)))) (= (value!1459 (left!576 res!4801)) (value!1459 (left!576 tree!73)))) (= inst!74 inst!66)))

(declare-fun bs!3807 () Bool)

(assert (= bs!3807 (and b!13212 b!13174)))

(assert (=> (and bs!3807 (= (content!21 (left!576 (left!576 res!4801))) (content!21 (left!576 tree!73))) (= (value!1459 (left!576 res!4801)) (value!1459 tree!73))) (= inst!74 inst!62)))

(declare-fun bs!3808 () Bool)

(assert (= bs!3808 (and b!13212 neg-inst!50)))

(assert (=> (and bs!3808 (= (content!21 (left!576 (left!576 res!4801))) (content!21 (left!576 tree!73))) (= (value!1459 (left!576 res!4801)) (value!1459 tree!73))) (= inst!74 true)))

(declare-fun bs!3809 () Bool)

(assert (= bs!3809 (and b!13212 neg-inst!58)))

(assert (=> (and bs!3809 (= (content!21 (left!576 (left!576 res!4801))) (content!21 (left!576 (right!579 res!4801)))) (= (value!1459 (left!576 res!4801)) (value!1459 (right!579 res!4801)))) (= inst!74 true)))

(declare-fun bs!3810 () Bool)

(assert (= bs!3810 (and b!13212 neg-inst!54)))

(assert (=> (and bs!3810 (= (content!21 (left!576 (left!576 res!4801))) (content!21 (left!576 (left!576 tree!73)))) (= (value!1459 (left!576 res!4801)) (value!1459 (left!576 tree!73)))) (= inst!74 true)))

(declare-fun bs!3811 () Bool)

(assert (= bs!3811 (and b!13212 neg-inst!52)))

(assert (=> (and bs!3811 (= (content!21 (left!576 (left!576 res!4801))) (content!21 (left!576 res!4801))) (= (value!1459 (left!576 res!4801)) (value!1459 res!4801))) (= inst!74 true)))

(declare-fun bs!3812 () Bool)

(assert (= bs!3812 (and b!13212 neg-inst!60)))

(assert (=> (and bs!3812 (= (content!21 (left!576 (left!576 res!4801))) (content!21 (left!576 (right!579 tree!73)))) (= (value!1459 (left!576 res!4801)) (value!1459 (right!579 tree!73)))) (= inst!74 true)))

(declare-fun bs!3813 () Bool)

(assert (= bs!3813 (and b!13212 neg-inst!56)))

(assert (=> (and bs!3813 (= (content!21 (left!576 (left!576 res!4801))) (content!21 (left!576 lt!1891))) (= (value!1459 (left!576 res!4801)) (value!1459 lt!1891))) (= inst!74 true)))

(declare-fun bs!3814 () Bool)

(assert (= bs!3814 (and b!13212 b!13186)))

(assert (=> (and bs!3814 (= (content!21 (left!576 (left!576 res!4801))) (content!21 (left!576 res!4801))) (= (value!1459 (left!576 res!4801)) (value!1459 res!4801))) (= inst!74 inst!64)))

(declare-fun b!13213 () Bool)

(assert (=> b!13213 m!16587))

(declare-fun inst!75 () Bool)

(declare-fun x!7495 () Int)

(assert (=> b!13213 (= inst!75 (=> true (or (not (member x!7495 (content!21 (right!579 (left!576 res!4801))))) (< (value!1459 (left!576 res!4801)) x!7495))))))

(declare-fun m!16643 () Bool)

(assert (=> b!13213 m!16643))

(declare-fun bs!3815 () Bool)

(assert (= bs!3815 (and b!13213 neg-inst!59)))

(assert (=> (and bs!3815 (= (content!21 (right!579 (left!576 res!4801))) (content!21 (right!579 (right!579 res!4801)))) (= (value!1459 (left!576 res!4801)) (value!1459 (right!579 res!4801)))) (= inst!75 true)))

(declare-fun bs!3816 () Bool)

(assert (= bs!3816 (and b!13213 neg-inst!57)))

(assert (=> (and bs!3816 (= (content!21 (right!579 (left!576 res!4801))) (content!21 (right!579 lt!1891))) (= (value!1459 (left!576 res!4801)) (value!1459 lt!1891))) (= inst!75 true)))

(declare-fun bs!3817 () Bool)

(assert (= bs!3817 (and b!13213 neg-inst!51)))

(assert (=> (and bs!3817 (= (content!21 (right!579 (left!576 res!4801))) (content!21 (right!579 tree!73))) (= (value!1459 (left!576 res!4801)) (value!1459 tree!73))) (= inst!75 true)))

(declare-fun bs!3818 () Bool)

(assert (= bs!3818 (and b!13213 neg-inst!55)))

(assert (=> (and bs!3818 (= (content!21 (right!579 (left!576 res!4801))) (content!21 (right!579 (left!576 tree!73)))) (= (value!1459 (left!576 res!4801)) (value!1459 (left!576 tree!73)))) (= inst!75 true)))

(declare-fun bs!3819 () Bool)

(assert (= bs!3819 (and b!13213 b!13203)))

(assert (=> (and bs!3819 (= (content!21 (right!579 (left!576 res!4801))) (content!21 (right!579 (right!579 res!4801)))) (= (value!1459 (left!576 res!4801)) (value!1459 (right!579 res!4801)))) (= inst!75 inst!71)))

(declare-fun bs!3820 () Bool)

(assert (= bs!3820 (and b!13213 neg-inst!53)))

(assert (=> (and bs!3820 (= (content!21 (right!579 (left!576 res!4801))) (content!21 (right!579 res!4801))) (= (value!1459 (left!576 res!4801)) (value!1459 res!4801))) (= inst!75 true)))

(declare-fun bs!3821 () Bool)

(assert (= bs!3821 (and b!13213 b!13175)))

(assert (=> (and bs!3821 (= (content!21 (right!579 (left!576 res!4801))) (content!21 (right!579 tree!73))) (= (value!1459 (left!576 res!4801)) (value!1459 tree!73))) (= inst!75 inst!63)))

(declare-fun bs!3822 () Bool)

(assert (= bs!3822 (and b!13213 b!13195)))

(assert (=> (and bs!3822 (= (content!21 (right!579 (left!576 res!4801))) (content!21 (right!579 (left!576 tree!73)))) (= (value!1459 (left!576 res!4801)) (value!1459 (left!576 tree!73)))) (= inst!75 inst!67)))

(declare-fun bs!3823 () Bool)

(assert (= bs!3823 (and b!13213 b!13187)))

(assert (=> (and bs!3823 (= (content!21 (right!579 (left!576 res!4801))) (content!21 (right!579 res!4801))) (= (value!1459 (left!576 res!4801)) (value!1459 res!4801))) (= inst!75 inst!65)))

(declare-fun bs!3824 () Bool)

(assert (= bs!3824 (and b!13213 neg-inst!61)))

(assert (=> (and bs!3824 (= (content!21 (right!579 (left!576 res!4801))) (content!21 (right!579 (right!579 tree!73)))) (= (value!1459 (left!576 res!4801)) (value!1459 (right!579 tree!73)))) (= inst!75 true)))

(declare-fun bs!3825 () Bool)

(assert (= bs!3825 (and b!13213 b!13209)))

(assert (=> (and bs!3825 (= (content!21 (right!579 (left!576 res!4801))) (content!21 (right!579 (right!579 tree!73)))) (= (value!1459 (left!576 res!4801)) (value!1459 (right!579 tree!73)))) (= inst!75 inst!73)))

(declare-fun bs!3826 () Bool)

(assert (= bs!3826 (and b!13213 b!13199)))

(assert (=> (and bs!3826 (= (content!21 (right!579 (left!576 res!4801))) (content!21 (right!579 lt!1891))) (= (value!1459 (left!576 res!4801)) (value!1459 lt!1891))) (= inst!75 inst!69)))

(declare-fun bs!3827 () Bool)

(declare-fun neg-inst!62 () Bool)

(assert (= bs!3827 neg-inst!62))

(assert (=> bs!3827 m!16583))

(declare-fun bs!3828 () Bool)

(declare-fun s!448 () Bool)

(assert (= bs!3828 (and neg-inst!62 s!448)))

(assert (=> bs!3828 (=> true (or (not (member x!7494 (content!21 (left!576 (left!576 res!4801))))) (< x!7494 (value!1459 (left!576 res!4801)))))))

(assert (=> m!16641 s!448))

(declare-fun bs!3829 () Bool)

(assert (= bs!3829 (and neg-inst!62 b!13208)))

(assert (=> (and bs!3829 (= (content!21 (left!576 (left!576 res!4801))) (content!21 (left!576 (right!579 tree!73)))) (= (value!1459 (left!576 res!4801)) (value!1459 (right!579 tree!73)))) (= true inst!72)))

(declare-fun bs!3830 () Bool)

(assert (= bs!3830 (and neg-inst!62 b!13212)))

(assert (=> bs!3830 (= true inst!74)))

(declare-fun bs!3831 () Bool)

(assert (= bs!3831 (and neg-inst!62 b!13198)))

(assert (=> (and bs!3831 (= (content!21 (left!576 (left!576 res!4801))) (content!21 (left!576 lt!1891))) (= (value!1459 (left!576 res!4801)) (value!1459 lt!1891))) (= true inst!68)))

(declare-fun bs!3832 () Bool)

(assert (= bs!3832 (and neg-inst!62 b!13202)))

(assert (=> (and bs!3832 (= (content!21 (left!576 (left!576 res!4801))) (content!21 (left!576 (right!579 res!4801)))) (= (value!1459 (left!576 res!4801)) (value!1459 (right!579 res!4801)))) (= true inst!70)))

(declare-fun bs!3833 () Bool)

(assert (= bs!3833 (and neg-inst!62 b!13194)))

(assert (=> (and bs!3833 (= (content!21 (left!576 (left!576 res!4801))) (content!21 (left!576 (left!576 tree!73)))) (= (value!1459 (left!576 res!4801)) (value!1459 (left!576 tree!73)))) (= true inst!66)))

(declare-fun bs!3834 () Bool)

(assert (= bs!3834 (and neg-inst!62 b!13174)))

(assert (=> (and bs!3834 (= (content!21 (left!576 (left!576 res!4801))) (content!21 (left!576 tree!73))) (= (value!1459 (left!576 res!4801)) (value!1459 tree!73))) (= true inst!62)))

(declare-fun bs!3835 () Bool)

(assert (= bs!3835 (and neg-inst!62 neg-inst!50)))

(assert (=> (and bs!3835 (= (content!21 (left!576 (left!576 res!4801))) (content!21 (left!576 tree!73))) (= (value!1459 (left!576 res!4801)) (value!1459 tree!73))) (= true true)))

(declare-fun bs!3836 () Bool)

(assert (= bs!3836 (and neg-inst!62 neg-inst!58)))

(assert (=> (and bs!3836 (= (content!21 (left!576 (left!576 res!4801))) (content!21 (left!576 (right!579 res!4801)))) (= (value!1459 (left!576 res!4801)) (value!1459 (right!579 res!4801)))) (= true true)))

(declare-fun bs!3837 () Bool)

(assert (= bs!3837 (and neg-inst!62 neg-inst!54)))

(assert (=> (and bs!3837 (= (content!21 (left!576 (left!576 res!4801))) (content!21 (left!576 (left!576 tree!73)))) (= (value!1459 (left!576 res!4801)) (value!1459 (left!576 tree!73)))) (= true true)))

(declare-fun bs!3838 () Bool)

(assert (= bs!3838 (and neg-inst!62 neg-inst!52)))

(assert (=> (and bs!3838 (= (content!21 (left!576 (left!576 res!4801))) (content!21 (left!576 res!4801))) (= (value!1459 (left!576 res!4801)) (value!1459 res!4801))) (= true true)))

(declare-fun bs!3839 () Bool)

(assert (= bs!3839 (and neg-inst!62 neg-inst!60)))

(assert (=> (and bs!3839 (= (content!21 (left!576 (left!576 res!4801))) (content!21 (left!576 (right!579 tree!73)))) (= (value!1459 (left!576 res!4801)) (value!1459 (right!579 tree!73)))) (= true true)))

(declare-fun bs!3840 () Bool)

(assert (= bs!3840 (and neg-inst!62 neg-inst!56)))

(assert (=> (and bs!3840 (= (content!21 (left!576 (left!576 res!4801))) (content!21 (left!576 lt!1891))) (= (value!1459 (left!576 res!4801)) (value!1459 lt!1891))) (= true true)))

(declare-fun bs!3841 () Bool)

(assert (= bs!3841 (and neg-inst!62 b!13186)))

(assert (=> (and bs!3841 (= (content!21 (left!576 (left!576 res!4801))) (content!21 (left!576 res!4801))) (= (value!1459 (left!576 res!4801)) (value!1459 res!4801))) (= true inst!64)))

(declare-fun bs!3842 () Bool)

(declare-fun neg-inst!63 () Bool)

(assert (= bs!3842 neg-inst!63))

(assert (=> bs!3842 m!16587))

(declare-fun bs!3843 () Bool)

(declare-fun s!450 () Bool)

(assert (= bs!3843 (and neg-inst!63 s!450)))

(assert (=> bs!3843 (=> true (or (not (member x!7495 (content!21 (right!579 (left!576 res!4801))))) (< (value!1459 (left!576 res!4801)) x!7495)))))

(assert (=> m!16643 s!450))

(declare-fun bs!3844 () Bool)

(assert (= bs!3844 (and neg-inst!63 neg-inst!59)))

(assert (=> (and bs!3844 (= (content!21 (right!579 (left!576 res!4801))) (content!21 (right!579 (right!579 res!4801)))) (= (value!1459 (left!576 res!4801)) (value!1459 (right!579 res!4801)))) (= true true)))

(declare-fun bs!3845 () Bool)

(assert (= bs!3845 (and neg-inst!63 neg-inst!57)))

(assert (=> (and bs!3845 (= (content!21 (right!579 (left!576 res!4801))) (content!21 (right!579 lt!1891))) (= (value!1459 (left!576 res!4801)) (value!1459 lt!1891))) (= true true)))

(declare-fun bs!3846 () Bool)

(assert (= bs!3846 (and neg-inst!63 neg-inst!51)))

(assert (=> (and bs!3846 (= (content!21 (right!579 (left!576 res!4801))) (content!21 (right!579 tree!73))) (= (value!1459 (left!576 res!4801)) (value!1459 tree!73))) (= true true)))

(declare-fun bs!3847 () Bool)

(assert (= bs!3847 (and neg-inst!63 neg-inst!55)))

(assert (=> (and bs!3847 (= (content!21 (right!579 (left!576 res!4801))) (content!21 (right!579 (left!576 tree!73)))) (= (value!1459 (left!576 res!4801)) (value!1459 (left!576 tree!73)))) (= true true)))

(declare-fun bs!3848 () Bool)

(assert (= bs!3848 (and neg-inst!63 b!13213)))

(assert (=> bs!3848 (= true inst!75)))

(declare-fun bs!3849 () Bool)

(assert (= bs!3849 (and neg-inst!63 b!13203)))

(assert (=> (and bs!3849 (= (content!21 (right!579 (left!576 res!4801))) (content!21 (right!579 (right!579 res!4801)))) (= (value!1459 (left!576 res!4801)) (value!1459 (right!579 res!4801)))) (= true inst!71)))

(declare-fun bs!3850 () Bool)

(assert (= bs!3850 (and neg-inst!63 neg-inst!53)))

(assert (=> (and bs!3850 (= (content!21 (right!579 (left!576 res!4801))) (content!21 (right!579 res!4801))) (= (value!1459 (left!576 res!4801)) (value!1459 res!4801))) (= true true)))

(declare-fun bs!3851 () Bool)

(assert (= bs!3851 (and neg-inst!63 b!13175)))

(assert (=> (and bs!3851 (= (content!21 (right!579 (left!576 res!4801))) (content!21 (right!579 tree!73))) (= (value!1459 (left!576 res!4801)) (value!1459 tree!73))) (= true inst!63)))

(declare-fun bs!3852 () Bool)

(assert (= bs!3852 (and neg-inst!63 b!13195)))

(assert (=> (and bs!3852 (= (content!21 (right!579 (left!576 res!4801))) (content!21 (right!579 (left!576 tree!73)))) (= (value!1459 (left!576 res!4801)) (value!1459 (left!576 tree!73)))) (= true inst!67)))

(declare-fun bs!3853 () Bool)

(assert (= bs!3853 (and neg-inst!63 b!13187)))

(assert (=> (and bs!3853 (= (content!21 (right!579 (left!576 res!4801))) (content!21 (right!579 res!4801))) (= (value!1459 (left!576 res!4801)) (value!1459 res!4801))) (= true inst!65)))

(declare-fun bs!3854 () Bool)

(assert (= bs!3854 (and neg-inst!63 neg-inst!61)))

(assert (=> (and bs!3854 (= (content!21 (right!579 (left!576 res!4801))) (content!21 (right!579 (right!579 tree!73)))) (= (value!1459 (left!576 res!4801)) (value!1459 (right!579 tree!73)))) (= true true)))

(declare-fun bs!3855 () Bool)

(assert (= bs!3855 (and neg-inst!63 b!13209)))

(assert (=> (and bs!3855 (= (content!21 (right!579 (left!576 res!4801))) (content!21 (right!579 (right!579 tree!73)))) (= (value!1459 (left!576 res!4801)) (value!1459 (right!579 tree!73)))) (= true inst!73)))

(declare-fun bs!3856 () Bool)

(assert (= bs!3856 (and neg-inst!63 b!13199)))

(assert (=> (and bs!3856 (= (content!21 (right!579 (left!576 res!4801))) (content!21 (right!579 lt!1891))) (= (value!1459 (left!576 res!4801)) (value!1459 lt!1891))) (= true inst!69)))

(declare-fun e!7244 () Bool)

(assert (=> b!13213 (= e!7244 inst!75)))

(declare-fun res!4948 () Bool)

(assert (=> b!13212 (=> (not res!4948) (not e!7244))))

(assert (=> b!13212 (= res!4948 inst!74)))

(declare-fun b!13211 () Bool)

(declare-fun res!4950 () Bool)

(assert (=> b!13211 (=> (not res!4950) (not e!7244))))

(assert (=> b!13211 (= res!4950 (isBST!0 (right!579 (left!576 res!4801))))))

(declare-fun d!10263 () Bool)

(declare-fun res!4951 () Bool)

(declare-fun e!7245 () Bool)

(assert (=> d!10263 (=> res!4951 e!7245)))

(assert (=> d!10263 (= res!4951 (is-Leaf!166 (left!576 res!4801)))))

(assert (=> d!10263 (= (isBST!0 (left!576 res!4801)) e!7245)))

(declare-fun b!13210 () Bool)

(assert (=> b!13210 (= e!7245 e!7244)))

(declare-fun res!4949 () Bool)

(assert (=> b!13210 (=> (not res!4949) (not e!7244))))

(assert (=> b!13210 (= res!4949 (isBST!0 (left!576 (left!576 res!4801))))))

(assert (= (and d!10263 (not res!4951)) b!13210))

(assert (= (and b!13210 res!4949) b!13211))

(assert (= (and b!13211 res!4950) b!13212))

(assert (= neg-inst!62 inst!74))

(assert (= (and b!13212 res!4948) b!13213))

(assert (= neg-inst!63 inst!75))

(declare-fun m!16645 () Bool)

(assert (=> b!13211 m!16645))

(declare-fun m!16647 () Bool)

(assert (=> b!13210 m!16647))

(assert (=> b!13184 d!10263))

(assert (=> d!10239 d!10261))

(assert (=> b!13181 d!10249))

(declare-fun d!10265 () Bool)

(declare-fun c!3712 () Bool)

(assert (=> d!10265 (= c!3712 (is-Leaf!166 (right!579 res!4801)))))

(declare-fun e!7246 () (Set Int))

(assert (=> d!10265 (= (content!21 (right!579 res!4801)) e!7246)))

(declare-fun b!13214 () Bool)

(assert (=> b!13214 (= e!7246 (as emptyset (Set Int)))))

(declare-fun b!13215 () Bool)

(assert (=> b!13215 (= e!7246 (union (union (content!21 (left!576 (right!579 res!4801))) (insert (value!1459 (right!579 res!4801)) (as emptyset (Set Int)))) (content!21 (right!579 (right!579 res!4801)))))))

(assert (= (and d!10265 c!3712) b!13214))

(assert (= (and d!10265 (not c!3712)) b!13215))

(assert (=> b!13215 m!16619))

(declare-fun m!16649 () Bool)

(assert (=> b!13215 m!16649))

(assert (=> b!13215 m!16623))

(assert (=> b!13181 d!10265))

(declare-fun b!13216 () Bool)

(declare-fun e!7248 () Tree!86)

(declare-fun lt!1896 () Bool)

(assert (=> b!13216 (= e!7248 (insert!10 (ite lt!1896 (right!579 (ite lt!1893 (right!579 (right!579 tree!73)) (left!576 (right!579 tree!73)))) (left!576 (ite lt!1893 (right!579 (right!579 tree!73)) (left!576 (right!579 tree!73))))) value!1445))))

(declare-fun b!13217 () Bool)

(declare-fun e!7247 () Tree!86)

(assert (=> b!13217 (= e!7247 (Node!18 Leaf!166 value!1445 Leaf!166))))

(declare-fun b!13218 () Bool)

(declare-fun res!4952 () Tree!86)

(assert (=> b!13218 (= e!7248 res!4952)))

(assert (=> b!13218 true))

(assert (=> b!13218 true))

(declare-fun b!13219 () Bool)

(declare-fun res!4954 () Bool)

(declare-fun e!7249 () Bool)

(assert (=> b!13219 (=> (not res!4954) (not e!7249))))

(declare-fun lt!1894 () Tree!86)

(assert (=> b!13219 (= res!4954 (isBST!0 lt!1894))))

(declare-fun b!13220 () Bool)

(assert (=> b!13220 (= e!7249 (= (content!21 lt!1894) (union (content!21 (ite lt!1893 (right!579 (right!579 tree!73)) (left!576 (right!579 tree!73)))) (insert value!1445 (as emptyset (Set Int))))))))

(declare-fun d!10267 () Bool)

(assert (=> d!10267 e!7249))

(declare-fun res!4953 () Bool)

(assert (=> d!10267 (=> (not res!4953) (not e!7249))))

(assert (=> d!10267 (= res!4953 (is-Node!18 lt!1894))))

(assert (=> d!10267 (= lt!1894 e!7247)))

(declare-fun c!3713 () Bool)

(assert (=> d!10267 (= c!3713 (is-Leaf!166 (ite lt!1893 (right!579 (right!579 tree!73)) (left!576 (right!579 tree!73)))))))

(assert (=> d!10267 (isBST!0 (ite lt!1893 (right!579 (right!579 tree!73)) (left!576 (right!579 tree!73))))))

(assert (=> d!10267 (= (insert!10 (ite lt!1893 (right!579 (right!579 tree!73)) (left!576 (right!579 tree!73))) value!1445) lt!1894)))

(declare-fun b!13221 () Bool)

(declare-fun lt!1895 () Tree!86)

(assert (=> b!13221 (= e!7247 (ite lt!1896 (Node!18 (left!576 (ite lt!1893 (right!579 (right!579 tree!73)) (left!576 (right!579 tree!73)))) (value!1459 (ite lt!1893 (right!579 (right!579 tree!73)) (left!576 (right!579 tree!73)))) lt!1895) (ite (> (value!1459 (ite lt!1893 (right!579 (right!579 tree!73)) (left!576 (right!579 tree!73)))) value!1445) (Node!18 lt!1895 (value!1459 (ite lt!1893 (right!579 (right!579 tree!73)) (left!576 (right!579 tree!73)))) (right!579 (ite lt!1893 (right!579 (right!579 tree!73)) (left!576 (right!579 tree!73))))) (Node!18 (left!576 (ite lt!1893 (right!579 (right!579 tree!73)) (left!576 (right!579 tree!73)))) (value!1459 (ite lt!1893 (right!579 (right!579 tree!73)) (left!576 (right!579 tree!73)))) (right!579 (ite lt!1893 (right!579 (right!579 tree!73)) (left!576 (right!579 tree!73))))))))))

(assert (=> b!13221 (= lt!1895 e!7248)))

(declare-fun c!3714 () Bool)

(assert (=> b!13221 (= c!3714 (or lt!1896 (> (value!1459 (ite lt!1893 (right!579 (right!579 tree!73)) (left!576 (right!579 tree!73)))) value!1445)))))

(assert (=> b!13221 (= lt!1896 (< (value!1459 (ite lt!1893 (right!579 (right!579 tree!73)) (left!576 (right!579 tree!73)))) value!1445))))

(assert (= (and b!13221 c!3714) b!13216))

(assert (= (and b!13221 (not c!3714)) b!13218))

(assert (= (and d!10267 c!3713) b!13217))

(assert (= (and d!10267 (not c!3713)) b!13221))

(assert (= (and d!10267 res!4953) b!13219))

(assert (= (and b!13219 res!4954) b!13220))

(declare-fun m!16651 () Bool)

(assert (=> b!13216 m!16651))

(declare-fun m!16653 () Bool)

(assert (=> b!13219 m!16653))

(declare-fun m!16655 () Bool)

(assert (=> b!13220 m!16655))

(declare-fun m!16657 () Bool)

(assert (=> b!13220 m!16657))

(assert (=> b!13220 m!16541))

(declare-fun m!16659 () Bool)

(assert (=> d!10267 m!16659))

(assert (=> b!13158 d!10267))

(assert (=> b!13186 d!10249))

(assert (=> b!13174 d!10259))

(assert (=> neg-inst!53 d!10265))

(assert (=> b!13183 d!10259))

(assert (=> b!13183 d!10251))

(assert (=> neg-inst!51 d!10251))

(declare-fun d!10269 () Bool)

(declare-fun c!3715 () Bool)

(assert (=> d!10269 (= c!3715 (is-Leaf!166 lt!1891))))

(declare-fun e!7250 () (Set Int))

(assert (=> d!10269 (= (content!21 lt!1891) e!7250)))

(declare-fun b!13222 () Bool)

(assert (=> b!13222 (= e!7250 (as emptyset (Set Int)))))

(declare-fun b!13223 () Bool)

(assert (=> b!13223 (= e!7250 (union (union (content!21 (left!576 lt!1891)) (insert (value!1459 lt!1891) (as emptyset (Set Int)))) (content!21 (right!579 lt!1891))))))

(assert (= (and d!10269 c!3715) b!13222))

(assert (= (and d!10269 (not c!3715)) b!13223))

(assert (=> b!13223 m!16607))

(declare-fun m!16661 () Bool)

(assert (=> b!13223 m!16661))

(assert (=> b!13223 m!16611))

(assert (=> b!13162 d!10269))

(assert (=> b!13162 d!10251))

(assert (=> b!13187 d!10265))

(push 1)

(assert (not b!13211))

(assert (not neg-inst!59))

(assert (not b!13220))

(assert (not neg-inst!58))

(assert (not neg-inst!57))

(assert (not b!13208))

(assert (not neg-inst!55))

(assert (not d!10267))

(assert (not b!13201))

(assert (not b!13215))

(assert (not neg-inst!63))

(assert (not b!13199))

(assert (not neg-inst!61))

(assert (not b!13219))

(assert (not b!13191))

(assert (not b!13212))

(assert (not b!13209))

(assert (not neg-inst!60))

(assert (not b!13189))

(assert (not b!13193))

(assert (not neg-inst!62))

(assert (not b!13194))

(assert (not b!13205))

(assert (not neg-inst!54))

(assert (not b!13210))

(assert (not b!13195))

(assert (not b!13198))

(assert (not b!13203))

(assert (not b!13206))

(assert (not b!13196))

(assert (not b!13192))

(assert (not b!13202))

(assert (not b!13216))

(assert (not neg-inst!56))

(assert (not b!13200))

(assert (not b!13213))

(assert (not b!13223))

(assert (not b!13197))

(assert (not b!13207))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!3857 () Bool)

(declare-fun s!452 () Bool)

(assert (= bs!3857 (and neg-inst!50 s!452)))

(assert (=> bs!3857 (=> true (or (not (member x!7484 (content!21 (left!576 tree!73)))) (< x!7484 (value!1459 tree!73))))))

(declare-fun m!16663 () Bool)

(assert (=> m!16575 m!16663))

(assert (=> m!16575 s!452))

(declare-fun bs!3858 () Bool)

(declare-fun s!454 () Bool)

(assert (= bs!3858 (and neg-inst!50 s!454)))

(assert (=> bs!3858 (=> true (or (not (member (value!1459 tree!73) (content!21 (left!576 tree!73)))) (< (value!1459 tree!73) (value!1459 tree!73))))))

(declare-fun m!16665 () Bool)

(assert (=> m!16573 m!16665))

(assert (=> m!16573 s!454))

(declare-fun bs!3859 () Bool)

(declare-fun s!456 () Bool)

(assert (= bs!3859 (and neg-inst!50 s!456)))

(assert (=> bs!3859 (=> true (or (not (member x!7483 (content!21 (left!576 tree!73)))) (< x!7483 (value!1459 tree!73))))))

(declare-fun m!16667 () Bool)

(assert (=> m!16563 m!16667))

(assert (=> m!16563 s!456))

(declare-fun bs!3860 () Bool)

(declare-fun s!458 () Bool)

(assert (= bs!3860 (and neg-inst!50 s!458)))

(assert (=> bs!3860 (=> true (or (not (member (value!1459 res!4801) (content!21 (left!576 tree!73)))) (< (value!1459 res!4801) (value!1459 tree!73))))))

(declare-fun m!16669 () Bool)

(assert (=> m!16569 m!16669))

(assert (=> m!16569 s!458))

(declare-fun bs!3861 () Bool)

(declare-fun s!460 () Bool)

(assert (= bs!3861 (and neg-inst!50 s!460)))

(assert (=> bs!3861 (=> true (or (not (member x!7485 (content!21 (left!576 tree!73)))) (< x!7485 (value!1459 tree!73))))))

(declare-fun m!16671 () Bool)

(assert (=> m!16577 m!16671))

(assert (=> m!16577 s!460))

(declare-fun bs!3862 () Bool)

(declare-fun s!462 () Bool)

(assert (= bs!3862 (and neg-inst!50 s!462)))

(assert (=> bs!3862 (=> true (or (not (member value!1445 (content!21 (left!576 tree!73)))) (< value!1445 (value!1459 tree!73))))))

(declare-fun m!16673 () Bool)

(assert (=> m!16541 m!16673))

(assert (=> m!16541 s!462))

(declare-fun bs!3863 () Bool)

(declare-fun s!464 () Bool)

(assert (= bs!3863 (and neg-inst!51 s!464)))

(assert (=> bs!3863 (=> true (or (not (member (value!1459 res!4801) (content!21 (right!579 tree!73)))) (< (value!1459 tree!73) (value!1459 res!4801))))))

(declare-fun m!16675 () Bool)

(assert (=> m!16569 m!16675))

(assert (=> m!16569 s!464))

(declare-fun bs!3864 () Bool)

(declare-fun s!466 () Bool)

(assert (= bs!3864 (and neg-inst!51 s!466)))

(assert (=> bs!3864 (=> true (or (not (member value!1445 (content!21 (right!579 tree!73)))) (< (value!1459 tree!73) value!1445)))))

(declare-fun m!16677 () Bool)

(assert (=> m!16541 m!16677))

(assert (=> m!16541 s!466))

(declare-fun bs!3865 () Bool)

(declare-fun s!468 () Bool)

(assert (= bs!3865 (and neg-inst!51 s!468)))

(assert (=> bs!3865 (=> true (or (not (member x!7484 (content!21 (right!579 tree!73)))) (< (value!1459 tree!73) x!7484)))))

(declare-fun m!16679 () Bool)

(assert (=> m!16575 m!16679))

(assert (=> m!16575 s!468))

(declare-fun bs!3866 () Bool)

(declare-fun s!470 () Bool)

(assert (= bs!3866 (and neg-inst!51 s!470)))

(assert (=> bs!3866 (=> true (or (not (member (value!1459 tree!73) (content!21 (right!579 tree!73)))) (< (value!1459 tree!73) (value!1459 tree!73))))))

(declare-fun m!16681 () Bool)

(assert (=> m!16573 m!16681))

(assert (=> m!16573 s!470))

(declare-fun bs!3867 () Bool)

(declare-fun s!472 () Bool)

(assert (= bs!3867 (and neg-inst!51 s!472)))

(assert (=> bs!3867 (=> true (or (not (member x!7482 (content!21 (right!579 tree!73)))) (< (value!1459 tree!73) x!7482)))))

(declare-fun m!16683 () Bool)

(assert (=> m!16561 m!16683))

(assert (=> m!16561 s!472))

(declare-fun bs!3868 () Bool)

(declare-fun s!474 () Bool)

(assert (= bs!3868 (and neg-inst!51 s!474)))

(assert (=> bs!3868 (=> true (or (not (member x!7485 (content!21 (right!579 tree!73)))) (< (value!1459 tree!73) x!7485)))))

(declare-fun m!16685 () Bool)

(assert (=> m!16577 m!16685))

(assert (=> m!16577 s!474))

(declare-fun bs!3869 () Bool)

(declare-fun s!476 () Bool)

(assert (= bs!3869 (and neg-inst!52 s!476)))

(assert (=> bs!3869 (=> true (or (not (member (value!1459 tree!73) (content!21 (left!576 res!4801)))) (< (value!1459 tree!73) (value!1459 res!4801))))))

(declare-fun m!16687 () Bool)

(assert (=> m!16573 m!16687))

(assert (=> m!16573 s!476))

(declare-fun bs!3870 () Bool)

(declare-fun s!478 () Bool)

(assert (= bs!3870 (and neg-inst!52 s!478)))

(assert (=> bs!3870 (=> true (or (not (member x!7483 (content!21 (left!576 res!4801)))) (< x!7483 (value!1459 res!4801))))))

(declare-fun m!16689 () Bool)

(assert (=> m!16563 m!16689))

(assert (=> m!16563 s!478))

(declare-fun bs!3871 () Bool)

(declare-fun s!480 () Bool)

(assert (= bs!3871 (and neg-inst!52 s!480)))

(assert (=> bs!3871 (=> true (or (not (member (value!1459 res!4801) (content!21 (left!576 res!4801)))) (< (value!1459 res!4801) (value!1459 res!4801))))))

(declare-fun m!16691 () Bool)

(assert (=> m!16569 m!16691))

(assert (=> m!16569 s!480))

(declare-fun bs!3872 () Bool)

(declare-fun s!482 () Bool)

(assert (= bs!3872 (and neg-inst!52 s!482)))

(assert (=> bs!3872 (=> true (or (not (member x!7485 (content!21 (left!576 res!4801)))) (< x!7485 (value!1459 res!4801))))))

(declare-fun m!16693 () Bool)

(assert (=> m!16577 m!16693))

(assert (=> m!16577 s!482))

(declare-fun bs!3873 () Bool)

(declare-fun s!484 () Bool)

(assert (= bs!3873 (and neg-inst!52 s!484)))

(assert (=> bs!3873 (=> true (or (not (member value!1445 (content!21 (left!576 res!4801)))) (< value!1445 (value!1459 res!4801))))))

(declare-fun m!16695 () Bool)

(assert (=> m!16541 m!16695))

(assert (=> m!16541 s!484))

(declare-fun bs!3874 () Bool)

(declare-fun s!486 () Bool)

(assert (= bs!3874 (and neg-inst!52 s!486)))

(assert (=> bs!3874 (=> true (or (not (member x!7482 (content!21 (left!576 res!4801)))) (< x!7482 (value!1459 res!4801))))))

(declare-fun m!16697 () Bool)

(assert (=> m!16561 m!16697))

(assert (=> m!16561 s!486))

(declare-fun bs!3875 () Bool)

(declare-fun s!488 () Bool)

(assert (= bs!3875 (and neg-inst!53 s!488)))

(assert (=> bs!3875 (=> true (or (not (member (value!1459 res!4801) (content!21 (right!579 res!4801)))) (< (value!1459 res!4801) (value!1459 res!4801))))))

(declare-fun m!16699 () Bool)

(assert (=> m!16569 m!16699))

(assert (=> m!16569 s!488))

(declare-fun bs!3876 () Bool)

(declare-fun s!490 () Bool)

(assert (= bs!3876 (and neg-inst!53 s!490)))

(assert (=> bs!3876 (=> true (or (not (member value!1445 (content!21 (right!579 res!4801)))) (< (value!1459 res!4801) value!1445)))))

(declare-fun m!16701 () Bool)

(assert (=> m!16541 m!16701))

(assert (=> m!16541 s!490))

(declare-fun bs!3877 () Bool)

(declare-fun s!492 () Bool)

(assert (= bs!3877 (and neg-inst!53 s!492)))

(assert (=> bs!3877 (=> true (or (not (member x!7483 (content!21 (right!579 res!4801)))) (< (value!1459 res!4801) x!7483)))))

(declare-fun m!16703 () Bool)

(assert (=> m!16563 m!16703))

(assert (=> m!16563 s!492))

(declare-fun bs!3878 () Bool)

(declare-fun s!494 () Bool)

(assert (= bs!3878 (and neg-inst!53 s!494)))

(assert (=> bs!3878 (=> true (or (not (member x!7484 (content!21 (right!579 res!4801)))) (< (value!1459 res!4801) x!7484)))))

(declare-fun m!16705 () Bool)

(assert (=> m!16575 m!16705))

(assert (=> m!16575 s!494))

(declare-fun bs!3879 () Bool)

(declare-fun s!496 () Bool)

(assert (= bs!3879 (and neg-inst!53 s!496)))

(assert (=> bs!3879 (=> true (or (not (member (value!1459 tree!73) (content!21 (right!579 res!4801)))) (< (value!1459 res!4801) (value!1459 tree!73))))))

(declare-fun m!16707 () Bool)

(assert (=> m!16573 m!16707))

(assert (=> m!16573 s!496))

(declare-fun bs!3880 () Bool)

(declare-fun s!498 () Bool)

(assert (= bs!3880 (and neg-inst!53 s!498)))

(assert (=> bs!3880 (=> true (or (not (member x!7482 (content!21 (right!579 res!4801)))) (< (value!1459 res!4801) x!7482)))))

(declare-fun m!16709 () Bool)

(assert (=> m!16561 m!16709))

(assert (=> m!16561 s!498))

(push 1)

(assert (not b!13211))

(assert (not neg-inst!59))

(assert (not b!13220))

(assert (not neg-inst!58))

(assert (not neg-inst!57))

(assert (not b!13208))

(assert (not neg-inst!55))

(assert (not d!10267))

(assert (not b!13201))

(assert (not b!13215))

(assert (not neg-inst!63))

(assert (not b!13199))

(assert (not neg-inst!61))

(assert (not b!13219))

(assert (not b!13191))

(assert (not b!13212))

(assert (not b!13209))

(assert (not neg-inst!60))

(assert (not b!13189))

(assert (not b!13193))

(assert (not neg-inst!62))

(assert (not b!13194))

(assert (not b!13205))

(assert (not neg-inst!54))

(assert (not b!13210))

(assert (not b!13195))

(assert (not b!13198))

(assert (not b!13203))

(assert (not b!13206))

(assert (not b!13196))

(assert (not b!13192))

(assert (not b!13202))

(assert (not b!13216))

(assert (not neg-inst!56))

(assert (not b!13200))

(assert (not b!13213))

(assert (not b!13223))

(assert (not b!13197))

(assert (not b!13207))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

