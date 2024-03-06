; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7660 () Bool)

(assert start!7660)

(declare-fun tp!15549 () Bool)

(declare-fun e!28850 () Bool)

(declare-datatypes () ((IntSet!43 (Empty!168) (Node!129 (left!1159 IntSet!43) (elem!229 (_ BitVec 32)) (right!1162 IntSet!43)))))

(declare-fun thiss!7690 () IntSet!43)

(declare-fun tp!15548 () Bool)

(declare-fun b!54859 () Bool)

(declare-fun inv!977 (IntSet!43) Bool)

(assert (=> b!54859 (= e!28850 (and (inv!977 (left!1159 thiss!7690)) tp!15548 (inv!977 (right!1162 thiss!7690)) tp!15549))))

(declare-fun res!25150 () Bool)

(declare-fun e!28851 () Bool)

(assert (=> start!7660 (=> (not res!25150) (not e!28851))))

(declare-fun x!21411 () (_ BitVec 32))

(assert (=> start!7660 (= res!25150 (and (not (is-Empty!168 thiss!7690)) (bvsge x!21411 (elem!229 thiss!7690)) (bvsgt x!21411 (elem!229 thiss!7690))))))

(assert (=> start!7660 e!28851))

(assert (=> start!7660 (and (inv!977 thiss!7690) e!28850)))

(assert (=> start!7660 true))

(declare-fun res!24727 () IntSet!43)

(declare-fun e!28852 () Bool)

(assert (=> start!7660 (and (inv!977 res!24727) e!28852)))

(declare-fun b!54857 () Bool)

(declare-fun res!25151 () Bool)

(assert (=> b!54857 (=> (not res!25151) (not e!28851))))

(declare-fun incl!2 (IntSet!43 (_ BitVec 32)) IntSet!43)

(assert (=> b!54857 (= res!25151 (= res!24727 (Node!129 (left!1159 thiss!7690) (elem!229 thiss!7690) (incl!2 (right!1162 thiss!7690) x!21411))))))

(declare-fun tp!15547 () Bool)

(declare-fun b!54860 () Bool)

(declare-fun tp!15550 () Bool)

(assert (=> b!54860 (= e!28852 (and (inv!977 (left!1159 res!24727)) tp!15547 (inv!977 (right!1162 res!24727)) tp!15550))))

(declare-fun b!54858 () Bool)

(declare-fun content!17 (IntSet!43) (Set (_ BitVec 32)))

(assert (=> b!54858 (= e!28851 (not (= (content!17 res!24727) (union (content!17 thiss!7690) (insert x!21411 (as emptyset (Set (_ BitVec 32))))))))))

(assert (= (and start!7660 res!25150) b!54857))

(assert (= (and b!54857 res!25151) b!54858))

(assert (= (and start!7660 (is-Node!129 thiss!7690)) b!54859))

(assert (= (and start!7660 (is-Node!129 res!24727)) b!54860))

(declare-fun m!59702 () Bool)

(assert (=> b!54858 m!59702))

(declare-fun m!59704 () Bool)

(assert (=> b!54858 m!59704))

(declare-fun m!59706 () Bool)

(assert (=> b!54858 m!59706))

(declare-fun m!59708 () Bool)

(assert (=> b!54857 m!59708))

(declare-fun m!59710 () Bool)

(assert (=> b!54860 m!59710))

(declare-fun m!59712 () Bool)

(assert (=> b!54860 m!59712))

(declare-fun m!59714 () Bool)

(assert (=> b!54859 m!59714))

(declare-fun m!59716 () Bool)

(assert (=> b!54859 m!59716))

(declare-fun m!59718 () Bool)

(assert (=> start!7660 m!59718))

(declare-fun m!59720 () Bool)

(assert (=> start!7660 m!59720))

(push 1)

(assert (not start!7660))

(assert (not b!54858))

(assert (not b!54860))

(assert (not b!54859))

(assert (not b!54857))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!45144 () Bool)

(declare-fun c!11899 () Bool)

(assert (=> d!45144 (= c!11899 (is-Empty!168 res!24727))))

(declare-fun e!28855 () (Set (_ BitVec 32)))

(assert (=> d!45144 (= (content!17 res!24727) e!28855)))

(declare-fun b!54865 () Bool)

(assert (=> b!54865 (= e!28855 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!54866 () Bool)

(assert (=> b!54866 (= e!28855 (union (union (content!17 (left!1159 res!24727)) (insert (elem!229 res!24727) (as emptyset (Set (_ BitVec 32))))) (content!17 (right!1162 res!24727))))))

(assert (= (and d!45144 c!11899) b!54865))

(assert (= (and d!45144 (not c!11899)) b!54866))

(declare-fun m!59722 () Bool)

(assert (=> b!54866 m!59722))

(declare-fun m!59724 () Bool)

(assert (=> b!54866 m!59724))

(declare-fun m!59726 () Bool)

(assert (=> b!54866 m!59726))

(assert (=> b!54858 d!45144))

(declare-fun d!45146 () Bool)

(declare-fun c!11900 () Bool)

(assert (=> d!45146 (= c!11900 (is-Empty!168 thiss!7690))))

(declare-fun e!28856 () (Set (_ BitVec 32)))

(assert (=> d!45146 (= (content!17 thiss!7690) e!28856)))

(declare-fun b!54867 () Bool)

(assert (=> b!54867 (= e!28856 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!54868 () Bool)

(assert (=> b!54868 (= e!28856 (union (union (content!17 (left!1159 thiss!7690)) (insert (elem!229 thiss!7690) (as emptyset (Set (_ BitVec 32))))) (content!17 (right!1162 thiss!7690))))))

(assert (= (and d!45146 c!11900) b!54867))

(assert (= (and d!45146 (not c!11900)) b!54868))

(declare-fun m!59728 () Bool)

(assert (=> b!54868 m!59728))

(declare-fun m!59730 () Bool)

(assert (=> b!54868 m!59730))

(declare-fun m!59732 () Bool)

(assert (=> b!54868 m!59732))

(assert (=> b!54858 d!45146))

(declare-fun d!45148 () Bool)

(declare-fun lt!9644 () IntSet!43)

(assert (=> d!45148 (= (content!17 lt!9644) (union (content!17 (right!1162 thiss!7690)) (insert x!21411 (as emptyset (Set (_ BitVec 32))))))))

(declare-fun e!28864 () IntSet!43)

(assert (=> d!45148 (= lt!9644 e!28864)))

(declare-fun c!11905 () Bool)

(assert (=> d!45148 (= c!11905 (is-Empty!168 (right!1162 thiss!7690)))))

(assert (=> d!45148 (= (incl!2 (right!1162 thiss!7690) x!21411) lt!9644)))

(declare-fun b!54879 () Bool)

(declare-fun e!28863 () IntSet!43)

(declare-fun res!25158 () IntSet!43)

(assert (=> b!54879 (= e!28863 res!25158)))

(assert (=> b!54879 true))

(declare-fun e!28865 () Bool)

(assert (=> b!54879 (and (inv!977 res!25158) e!28865)))

(declare-fun b!54880 () Bool)

(assert (=> b!54880 (= e!28864 (Node!129 Empty!168 x!21411 Empty!168))))

(declare-fun b!54881 () Bool)

(declare-fun lt!9645 () IntSet!43)

(declare-fun lt!9646 () Bool)

(assert (=> b!54881 (= e!28864 (ite lt!9646 (Node!129 lt!9645 (elem!229 (right!1162 thiss!7690)) (right!1162 (right!1162 thiss!7690))) (ite (bvsgt x!21411 (elem!229 (right!1162 thiss!7690))) (Node!129 (left!1159 (right!1162 thiss!7690)) (elem!229 (right!1162 thiss!7690)) lt!9645) (right!1162 thiss!7690))))))

(assert (=> b!54881 (= lt!9645 e!28863)))

(declare-fun c!11906 () Bool)

(assert (=> b!54881 (= c!11906 (or lt!9646 (bvsgt x!21411 (elem!229 (right!1162 thiss!7690)))))))

(assert (=> b!54881 (= lt!9646 (bvslt x!21411 (elem!229 (right!1162 thiss!7690))))))

(declare-fun b!54882 () Bool)

(assert (=> b!54882 (= e!28863 (incl!2 (ite lt!9646 (left!1159 (right!1162 thiss!7690)) (right!1162 (right!1162 thiss!7690))) x!21411))))

(declare-fun tp!15556 () Bool)

(declare-fun b!54883 () Bool)

(declare-fun tp!15555 () Bool)

(assert (=> b!54883 (= e!28865 (and (inv!977 (left!1159 res!25158)) tp!15556 (inv!977 (right!1162 res!25158)) tp!15555))))

(assert (= (and b!54879 (is-Node!129 res!25158)) b!54883))

(assert (= (and b!54881 c!11906) b!54882))

(assert (= (and b!54881 (not c!11906)) b!54879))

(assert (= (and d!45148 c!11905) b!54880))

(assert (= (and d!45148 (not c!11905)) b!54881))

(declare-fun m!59734 () Bool)

(assert (=> d!45148 m!59734))

(assert (=> d!45148 m!59732))

(assert (=> d!45148 m!59706))

(declare-fun m!59736 () Bool)

(assert (=> b!54879 m!59736))

(declare-fun m!59738 () Bool)

(assert (=> b!54882 m!59738))

(declare-fun m!59740 () Bool)

(assert (=> b!54883 m!59740))

(declare-fun m!59742 () Bool)

(assert (=> b!54883 m!59742))

(assert (=> b!54857 d!45148))

(declare-fun b!54888 () Bool)

(assert (=> b!54888 m!59728))

(declare-fun inst!410 () Bool)

(declare-fun x!21923 () (_ BitVec 32))

(assert (=> b!54888 (= inst!410 (=> true (or (not (member x!21923 (content!17 (left!1159 thiss!7690)))) (bvslt x!21923 (elem!229 thiss!7690)))))))

(declare-fun m!59744 () Bool)

(assert (=> b!54888 m!59744))

(declare-fun b!54889 () Bool)

(assert (=> b!54889 m!59732))

(declare-fun inst!411 () Bool)

(declare-fun x!21924 () (_ BitVec 32))

(assert (=> b!54889 (= inst!411 (=> true (or (not (member x!21924 (content!17 (right!1162 thiss!7690)))) (bvslt (elem!229 thiss!7690) x!21924))))))

(declare-fun m!59746 () Bool)

(assert (=> b!54889 m!59746))

(declare-fun bs!27212 () Bool)

(declare-fun neg-inst!398 () Bool)

(assert (= bs!27212 neg-inst!398))

(assert (=> bs!27212 m!59728))

(declare-fun bs!27213 () Bool)

(declare-fun s!1697 () Bool)

(assert (= bs!27213 (and neg-inst!398 s!1697)))

(assert (=> bs!27213 (=> true (or (not (member x!21923 (content!17 (left!1159 thiss!7690)))) (bvslt x!21923 (elem!229 thiss!7690))))))

(assert (=> m!59744 s!1697))

(declare-fun bs!27214 () Bool)

(assert (= bs!27214 (and neg-inst!398 b!54888)))

(assert (=> bs!27214 (= true inst!410)))

(declare-fun bs!27215 () Bool)

(declare-fun neg-inst!399 () Bool)

(assert (= bs!27215 neg-inst!399))

(assert (=> bs!27215 m!59732))

(declare-fun bs!27216 () Bool)

(declare-fun s!1699 () Bool)

(assert (= bs!27216 (and neg-inst!399 s!1699)))

(assert (=> bs!27216 (=> true (or (not (member x!21924 (content!17 (right!1162 thiss!7690)))) (bvslt (elem!229 thiss!7690) x!21924)))))

(assert (=> m!59746 s!1699))

(declare-fun bs!27217 () Bool)

(assert (= bs!27217 (and neg-inst!399 b!54889)))

(assert (=> bs!27217 (= true inst!411)))

(declare-fun d!45150 () Bool)

(declare-fun res!25164 () Bool)

(declare-fun e!28870 () Bool)

(assert (=> d!45150 (=> res!25164 e!28870)))

(assert (=> d!45150 (= res!25164 (not (is-Node!129 thiss!7690)))))

(assert (=> d!45150 (= (inv!977 thiss!7690) e!28870)))

(declare-fun e!28871 () Bool)

(assert (=> b!54888 (= e!28870 e!28871)))

(declare-fun res!25163 () Bool)

(assert (=> b!54888 (=> (not res!25163) (not e!28871))))

(assert (=> b!54888 (= res!25163 inst!410)))

(assert (=> b!54889 (= e!28871 inst!411)))

(assert (= (and d!45150 (not res!25164)) b!54888))

(assert (= neg-inst!398 inst!410))

(assert (= (and b!54888 res!25163) b!54889))

(assert (= neg-inst!399 inst!411))

(assert (=> start!7660 d!45150))

(declare-fun b!54890 () Bool)

(assert (=> b!54890 m!59722))

(declare-fun inst!412 () Bool)

(declare-fun x!21925 () (_ BitVec 32))

(assert (=> b!54890 (= inst!412 (=> true (or (not (member x!21925 (content!17 (left!1159 res!24727)))) (bvslt x!21925 (elem!229 res!24727)))))))

(declare-fun m!59748 () Bool)

(assert (=> b!54890 m!59748))

(declare-fun bs!27218 () Bool)

(assert (= bs!27218 (and b!54890 b!54888)))

(assert (=> (and bs!27218 (= (content!17 (left!1159 res!24727)) (content!17 (left!1159 thiss!7690))) (= (elem!229 res!24727) (elem!229 thiss!7690))) (= inst!412 inst!410)))

(declare-fun bs!27219 () Bool)

(assert (= bs!27219 (and b!54890 neg-inst!398)))

(assert (=> (and bs!27219 (= (content!17 (left!1159 res!24727)) (content!17 (left!1159 thiss!7690))) (= (elem!229 res!24727) (elem!229 thiss!7690))) (= inst!412 true)))

(declare-fun b!54891 () Bool)

(assert (=> b!54891 m!59726))

(declare-fun inst!413 () Bool)

(declare-fun x!21926 () (_ BitVec 32))

(assert (=> b!54891 (= inst!413 (=> true (or (not (member x!21926 (content!17 (right!1162 res!24727)))) (bvslt (elem!229 res!24727) x!21926))))))

(declare-fun m!59750 () Bool)

(assert (=> b!54891 m!59750))

(declare-fun bs!27220 () Bool)

(assert (= bs!27220 (and b!54891 b!54889)))

(assert (=> (and bs!27220 (= (content!17 (right!1162 res!24727)) (content!17 (right!1162 thiss!7690))) (= (elem!229 res!24727) (elem!229 thiss!7690))) (= inst!413 inst!411)))

(declare-fun bs!27221 () Bool)

(assert (= bs!27221 (and b!54891 neg-inst!399)))

(assert (=> (and bs!27221 (= (content!17 (right!1162 res!24727)) (content!17 (right!1162 thiss!7690))) (= (elem!229 res!24727) (elem!229 thiss!7690))) (= inst!413 true)))

(declare-fun bs!27222 () Bool)

(declare-fun neg-inst!400 () Bool)

(assert (= bs!27222 neg-inst!400))

(assert (=> bs!27222 m!59722))

(declare-fun bs!27223 () Bool)

(declare-fun s!1701 () Bool)

(assert (= bs!27223 (and neg-inst!400 s!1701)))

(assert (=> bs!27223 (=> true (or (not (member x!21925 (content!17 (left!1159 res!24727)))) (bvslt x!21925 (elem!229 res!24727))))))

(assert (=> m!59748 s!1701))

(declare-fun bs!27224 () Bool)

(assert (= bs!27224 (and neg-inst!400 b!54888)))

(assert (=> (and bs!27224 (= (content!17 (left!1159 res!24727)) (content!17 (left!1159 thiss!7690))) (= (elem!229 res!24727) (elem!229 thiss!7690))) (= true inst!410)))

(declare-fun bs!27225 () Bool)

(assert (= bs!27225 (and neg-inst!400 neg-inst!398)))

(assert (=> (and bs!27225 (= (content!17 (left!1159 res!24727)) (content!17 (left!1159 thiss!7690))) (= (elem!229 res!24727) (elem!229 thiss!7690))) (= true true)))

(declare-fun bs!27226 () Bool)

(assert (= bs!27226 (and neg-inst!400 b!54890)))

(assert (=> bs!27226 (= true inst!412)))

(declare-fun bs!27227 () Bool)

(declare-fun neg-inst!401 () Bool)

(assert (= bs!27227 neg-inst!401))

(assert (=> bs!27227 m!59726))

(declare-fun bs!27228 () Bool)

(declare-fun s!1703 () Bool)

(assert (= bs!27228 (and neg-inst!401 s!1703)))

(assert (=> bs!27228 (=> true (or (not (member x!21926 (content!17 (right!1162 res!24727)))) (bvslt (elem!229 res!24727) x!21926)))))

(assert (=> m!59750 s!1703))

(declare-fun bs!27229 () Bool)

(assert (= bs!27229 (and neg-inst!401 b!54891)))

(assert (=> bs!27229 (= true inst!413)))

(declare-fun bs!27230 () Bool)

(assert (= bs!27230 (and neg-inst!401 b!54889)))

(assert (=> (and bs!27230 (= (content!17 (right!1162 res!24727)) (content!17 (right!1162 thiss!7690))) (= (elem!229 res!24727) (elem!229 thiss!7690))) (= true inst!411)))

(declare-fun bs!27231 () Bool)

(assert (= bs!27231 (and neg-inst!401 neg-inst!399)))

(assert (=> (and bs!27231 (= (content!17 (right!1162 res!24727)) (content!17 (right!1162 thiss!7690))) (= (elem!229 res!24727) (elem!229 thiss!7690))) (= true true)))

(declare-fun d!45152 () Bool)

(declare-fun res!25166 () Bool)

(declare-fun e!28872 () Bool)

(assert (=> d!45152 (=> res!25166 e!28872)))

(assert (=> d!45152 (= res!25166 (not (is-Node!129 res!24727)))))

(assert (=> d!45152 (= (inv!977 res!24727) e!28872)))

(declare-fun e!28873 () Bool)

(assert (=> b!54890 (= e!28872 e!28873)))

(declare-fun res!25165 () Bool)

(assert (=> b!54890 (=> (not res!25165) (not e!28873))))

(assert (=> b!54890 (= res!25165 inst!412)))

(assert (=> b!54891 (= e!28873 inst!413)))

(assert (= (and d!45152 (not res!25166)) b!54890))

(assert (= neg-inst!400 inst!412))

(assert (= (and b!54890 res!25165) b!54891))

(assert (= neg-inst!401 inst!413))

(assert (=> start!7660 d!45152))

(declare-fun b!54892 () Bool)

(declare-fun m!59752 () Bool)

(assert (=> b!54892 m!59752))

(declare-fun inst!414 () Bool)

(declare-fun x!21927 () (_ BitVec 32))

(assert (=> b!54892 (= inst!414 (=> true (or (not (member x!21927 (content!17 (left!1159 (left!1159 res!24727))))) (bvslt x!21927 (elem!229 (left!1159 res!24727))))))))

(declare-fun m!59754 () Bool)

(assert (=> b!54892 m!59754))

(declare-fun bs!27232 () Bool)

(assert (= bs!27232 (and b!54892 b!54888)))

(assert (=> (and bs!27232 (= (content!17 (left!1159 (left!1159 res!24727))) (content!17 (left!1159 thiss!7690))) (= (elem!229 (left!1159 res!24727)) (elem!229 thiss!7690))) (= inst!414 inst!410)))

(declare-fun bs!27233 () Bool)

(assert (= bs!27233 (and b!54892 neg-inst!398)))

(assert (=> (and bs!27233 (= (content!17 (left!1159 (left!1159 res!24727))) (content!17 (left!1159 thiss!7690))) (= (elem!229 (left!1159 res!24727)) (elem!229 thiss!7690))) (= inst!414 true)))

(declare-fun bs!27234 () Bool)

(assert (= bs!27234 (and b!54892 neg-inst!400)))

(assert (=> (and bs!27234 (= (content!17 (left!1159 (left!1159 res!24727))) (content!17 (left!1159 res!24727))) (= (elem!229 (left!1159 res!24727)) (elem!229 res!24727))) (= inst!414 true)))

(declare-fun bs!27235 () Bool)

(assert (= bs!27235 (and b!54892 b!54890)))

(assert (=> (and bs!27235 (= (content!17 (left!1159 (left!1159 res!24727))) (content!17 (left!1159 res!24727))) (= (elem!229 (left!1159 res!24727)) (elem!229 res!24727))) (= inst!414 inst!412)))

(declare-fun b!54893 () Bool)

(declare-fun m!59756 () Bool)

(assert (=> b!54893 m!59756))

(declare-fun inst!415 () Bool)

(declare-fun x!21928 () (_ BitVec 32))

(assert (=> b!54893 (= inst!415 (=> true (or (not (member x!21928 (content!17 (right!1162 (left!1159 res!24727))))) (bvslt (elem!229 (left!1159 res!24727)) x!21928))))))

(declare-fun m!59758 () Bool)

(assert (=> b!54893 m!59758))

(declare-fun bs!27236 () Bool)

(assert (= bs!27236 (and b!54893 b!54891)))

(assert (=> (and bs!27236 (= (content!17 (right!1162 (left!1159 res!24727))) (content!17 (right!1162 res!24727))) (= (elem!229 (left!1159 res!24727)) (elem!229 res!24727))) (= inst!415 inst!413)))

(declare-fun bs!27237 () Bool)

(assert (= bs!27237 (and b!54893 neg-inst!401)))

(assert (=> (and bs!27237 (= (content!17 (right!1162 (left!1159 res!24727))) (content!17 (right!1162 res!24727))) (= (elem!229 (left!1159 res!24727)) (elem!229 res!24727))) (= inst!415 true)))

(declare-fun bs!27238 () Bool)

(assert (= bs!27238 (and b!54893 b!54889)))

(assert (=> (and bs!27238 (= (content!17 (right!1162 (left!1159 res!24727))) (content!17 (right!1162 thiss!7690))) (= (elem!229 (left!1159 res!24727)) (elem!229 thiss!7690))) (= inst!415 inst!411)))

(declare-fun bs!27239 () Bool)

(assert (= bs!27239 (and b!54893 neg-inst!399)))

(assert (=> (and bs!27239 (= (content!17 (right!1162 (left!1159 res!24727))) (content!17 (right!1162 thiss!7690))) (= (elem!229 (left!1159 res!24727)) (elem!229 thiss!7690))) (= inst!415 true)))

(declare-fun bs!27240 () Bool)

(declare-fun neg-inst!402 () Bool)

(assert (= bs!27240 neg-inst!402))

(assert (=> bs!27240 m!59752))

(declare-fun bs!27241 () Bool)

(declare-fun s!1705 () Bool)

(assert (= bs!27241 (and neg-inst!402 s!1705)))

(assert (=> bs!27241 (=> true (or (not (member x!21927 (content!17 (left!1159 (left!1159 res!24727))))) (bvslt x!21927 (elem!229 (left!1159 res!24727)))))))

(assert (=> m!59754 s!1705))

(declare-fun bs!27242 () Bool)

(assert (= bs!27242 (and neg-inst!402 b!54892)))

(assert (=> bs!27242 (= true inst!414)))

(declare-fun bs!27243 () Bool)

(assert (= bs!27243 (and neg-inst!402 b!54888)))

(assert (=> (and bs!27243 (= (content!17 (left!1159 (left!1159 res!24727))) (content!17 (left!1159 thiss!7690))) (= (elem!229 (left!1159 res!24727)) (elem!229 thiss!7690))) (= true inst!410)))

(declare-fun bs!27244 () Bool)

(assert (= bs!27244 (and neg-inst!402 neg-inst!398)))

(assert (=> (and bs!27244 (= (content!17 (left!1159 (left!1159 res!24727))) (content!17 (left!1159 thiss!7690))) (= (elem!229 (left!1159 res!24727)) (elem!229 thiss!7690))) (= true true)))

(declare-fun bs!27245 () Bool)

(assert (= bs!27245 (and neg-inst!402 neg-inst!400)))

(assert (=> (and bs!27245 (= (content!17 (left!1159 (left!1159 res!24727))) (content!17 (left!1159 res!24727))) (= (elem!229 (left!1159 res!24727)) (elem!229 res!24727))) (= true true)))

(declare-fun bs!27246 () Bool)

(assert (= bs!27246 (and neg-inst!402 b!54890)))

(assert (=> (and bs!27246 (= (content!17 (left!1159 (left!1159 res!24727))) (content!17 (left!1159 res!24727))) (= (elem!229 (left!1159 res!24727)) (elem!229 res!24727))) (= true inst!412)))

(declare-fun bs!27247 () Bool)

(declare-fun neg-inst!403 () Bool)

(assert (= bs!27247 neg-inst!403))

(assert (=> bs!27247 m!59756))

(declare-fun bs!27248 () Bool)

(declare-fun s!1707 () Bool)

(assert (= bs!27248 (and neg-inst!403 s!1707)))

(assert (=> bs!27248 (=> true (or (not (member x!21928 (content!17 (right!1162 (left!1159 res!24727))))) (bvslt (elem!229 (left!1159 res!24727)) x!21928)))))

(assert (=> m!59758 s!1707))

(declare-fun bs!27249 () Bool)

(assert (= bs!27249 (and neg-inst!403 b!54893)))

(assert (=> bs!27249 (= true inst!415)))

(declare-fun bs!27250 () Bool)

(assert (= bs!27250 (and neg-inst!403 b!54891)))

(assert (=> (and bs!27250 (= (content!17 (right!1162 (left!1159 res!24727))) (content!17 (right!1162 res!24727))) (= (elem!229 (left!1159 res!24727)) (elem!229 res!24727))) (= true inst!413)))

(declare-fun bs!27251 () Bool)

(assert (= bs!27251 (and neg-inst!403 neg-inst!401)))

(assert (=> (and bs!27251 (= (content!17 (right!1162 (left!1159 res!24727))) (content!17 (right!1162 res!24727))) (= (elem!229 (left!1159 res!24727)) (elem!229 res!24727))) (= true true)))

(declare-fun bs!27252 () Bool)

(assert (= bs!27252 (and neg-inst!403 b!54889)))

(assert (=> (and bs!27252 (= (content!17 (right!1162 (left!1159 res!24727))) (content!17 (right!1162 thiss!7690))) (= (elem!229 (left!1159 res!24727)) (elem!229 thiss!7690))) (= true inst!411)))

(declare-fun bs!27253 () Bool)

(assert (= bs!27253 (and neg-inst!403 neg-inst!399)))

(assert (=> (and bs!27253 (= (content!17 (right!1162 (left!1159 res!24727))) (content!17 (right!1162 thiss!7690))) (= (elem!229 (left!1159 res!24727)) (elem!229 thiss!7690))) (= true true)))

(declare-fun d!45154 () Bool)

(declare-fun res!25168 () Bool)

(declare-fun e!28874 () Bool)

(assert (=> d!45154 (=> res!25168 e!28874)))

(assert (=> d!45154 (= res!25168 (not (is-Node!129 (left!1159 res!24727))))))

(assert (=> d!45154 (= (inv!977 (left!1159 res!24727)) e!28874)))

(declare-fun e!28875 () Bool)

(assert (=> b!54892 (= e!28874 e!28875)))

(declare-fun res!25167 () Bool)

(assert (=> b!54892 (=> (not res!25167) (not e!28875))))

(assert (=> b!54892 (= res!25167 inst!414)))

(assert (=> b!54893 (= e!28875 inst!415)))

(assert (= (and d!45154 (not res!25168)) b!54892))

(assert (= neg-inst!402 inst!414))

(assert (= (and b!54892 res!25167) b!54893))

(assert (= neg-inst!403 inst!415))

(assert (=> b!54860 d!45154))

(declare-fun b!54894 () Bool)

(declare-fun m!59760 () Bool)

(assert (=> b!54894 m!59760))

(declare-fun inst!416 () Bool)

(declare-fun x!21929 () (_ BitVec 32))

(assert (=> b!54894 (= inst!416 (=> true (or (not (member x!21929 (content!17 (left!1159 (right!1162 res!24727))))) (bvslt x!21929 (elem!229 (right!1162 res!24727))))))))

(declare-fun m!59762 () Bool)

(assert (=> b!54894 m!59762))

(declare-fun bs!27254 () Bool)

(assert (= bs!27254 (and b!54894 b!54892)))

(assert (=> (and bs!27254 (= (content!17 (left!1159 (right!1162 res!24727))) (content!17 (left!1159 (left!1159 res!24727)))) (= (elem!229 (right!1162 res!24727)) (elem!229 (left!1159 res!24727)))) (= inst!416 inst!414)))

(declare-fun bs!27255 () Bool)

(assert (= bs!27255 (and b!54894 b!54888)))

(assert (=> (and bs!27255 (= (content!17 (left!1159 (right!1162 res!24727))) (content!17 (left!1159 thiss!7690))) (= (elem!229 (right!1162 res!24727)) (elem!229 thiss!7690))) (= inst!416 inst!410)))

(declare-fun bs!27256 () Bool)

(assert (= bs!27256 (and b!54894 neg-inst!402)))

(assert (=> (and bs!27256 (= (content!17 (left!1159 (right!1162 res!24727))) (content!17 (left!1159 (left!1159 res!24727)))) (= (elem!229 (right!1162 res!24727)) (elem!229 (left!1159 res!24727)))) (= inst!416 true)))

(declare-fun bs!27257 () Bool)

(assert (= bs!27257 (and b!54894 neg-inst!398)))

(assert (=> (and bs!27257 (= (content!17 (left!1159 (right!1162 res!24727))) (content!17 (left!1159 thiss!7690))) (= (elem!229 (right!1162 res!24727)) (elem!229 thiss!7690))) (= inst!416 true)))

(declare-fun bs!27258 () Bool)

(assert (= bs!27258 (and b!54894 neg-inst!400)))

(assert (=> (and bs!27258 (= (content!17 (left!1159 (right!1162 res!24727))) (content!17 (left!1159 res!24727))) (= (elem!229 (right!1162 res!24727)) (elem!229 res!24727))) (= inst!416 true)))

(declare-fun bs!27259 () Bool)

(assert (= bs!27259 (and b!54894 b!54890)))

(assert (=> (and bs!27259 (= (content!17 (left!1159 (right!1162 res!24727))) (content!17 (left!1159 res!24727))) (= (elem!229 (right!1162 res!24727)) (elem!229 res!24727))) (= inst!416 inst!412)))

(declare-fun b!54895 () Bool)

(declare-fun m!59764 () Bool)

(assert (=> b!54895 m!59764))

(declare-fun inst!417 () Bool)

(declare-fun x!21930 () (_ BitVec 32))

(assert (=> b!54895 (= inst!417 (=> true (or (not (member x!21930 (content!17 (right!1162 (right!1162 res!24727))))) (bvslt (elem!229 (right!1162 res!24727)) x!21930))))))

(declare-fun m!59766 () Bool)

(assert (=> b!54895 m!59766))

(declare-fun bs!27260 () Bool)

(assert (= bs!27260 (and b!54895 b!54891)))

(assert (=> (and bs!27260 (= (content!17 (right!1162 (right!1162 res!24727))) (content!17 (right!1162 res!24727))) (= (elem!229 (right!1162 res!24727)) (elem!229 res!24727))) (= inst!417 inst!413)))

(declare-fun bs!27261 () Bool)

(assert (= bs!27261 (and b!54895 b!54893)))

(assert (=> (and bs!27261 (= (content!17 (right!1162 (right!1162 res!24727))) (content!17 (right!1162 (left!1159 res!24727)))) (= (elem!229 (right!1162 res!24727)) (elem!229 (left!1159 res!24727)))) (= inst!417 inst!415)))

(declare-fun bs!27262 () Bool)

(assert (= bs!27262 (and b!54895 neg-inst!401)))

(assert (=> (and bs!27262 (= (content!17 (right!1162 (right!1162 res!24727))) (content!17 (right!1162 res!24727))) (= (elem!229 (right!1162 res!24727)) (elem!229 res!24727))) (= inst!417 true)))

(declare-fun bs!27263 () Bool)

(assert (= bs!27263 (and b!54895 b!54889)))

(assert (=> (and bs!27263 (= (content!17 (right!1162 (right!1162 res!24727))) (content!17 (right!1162 thiss!7690))) (= (elem!229 (right!1162 res!24727)) (elem!229 thiss!7690))) (= inst!417 inst!411)))

(declare-fun bs!27264 () Bool)

(assert (= bs!27264 (and b!54895 neg-inst!399)))

(assert (=> (and bs!27264 (= (content!17 (right!1162 (right!1162 res!24727))) (content!17 (right!1162 thiss!7690))) (= (elem!229 (right!1162 res!24727)) (elem!229 thiss!7690))) (= inst!417 true)))

(declare-fun bs!27265 () Bool)

(assert (= bs!27265 (and b!54895 neg-inst!403)))

(assert (=> (and bs!27265 (= (content!17 (right!1162 (right!1162 res!24727))) (content!17 (right!1162 (left!1159 res!24727)))) (= (elem!229 (right!1162 res!24727)) (elem!229 (left!1159 res!24727)))) (= inst!417 true)))

(declare-fun bs!27266 () Bool)

(declare-fun neg-inst!404 () Bool)

(assert (= bs!27266 neg-inst!404))

(assert (=> bs!27266 m!59760))

(declare-fun bs!27267 () Bool)

(declare-fun s!1709 () Bool)

(assert (= bs!27267 (and neg-inst!404 s!1709)))

(assert (=> bs!27267 (=> true (or (not (member x!21929 (content!17 (left!1159 (right!1162 res!24727))))) (bvslt x!21929 (elem!229 (right!1162 res!24727)))))))

(assert (=> m!59762 s!1709))

(declare-fun bs!27268 () Bool)

(assert (= bs!27268 (and neg-inst!404 b!54892)))

(assert (=> (and bs!27268 (= (content!17 (left!1159 (right!1162 res!24727))) (content!17 (left!1159 (left!1159 res!24727)))) (= (elem!229 (right!1162 res!24727)) (elem!229 (left!1159 res!24727)))) (= true inst!414)))

(declare-fun bs!27269 () Bool)

(assert (= bs!27269 (and neg-inst!404 b!54888)))

(assert (=> (and bs!27269 (= (content!17 (left!1159 (right!1162 res!24727))) (content!17 (left!1159 thiss!7690))) (= (elem!229 (right!1162 res!24727)) (elem!229 thiss!7690))) (= true inst!410)))

(declare-fun bs!27270 () Bool)

(assert (= bs!27270 (and neg-inst!404 neg-inst!398)))

(assert (=> (and bs!27270 (= (content!17 (left!1159 (right!1162 res!24727))) (content!17 (left!1159 thiss!7690))) (= (elem!229 (right!1162 res!24727)) (elem!229 thiss!7690))) (= true true)))

(declare-fun bs!27271 () Bool)

(assert (= bs!27271 (and neg-inst!404 neg-inst!402)))

(assert (=> (and bs!27271 (= (content!17 (left!1159 (right!1162 res!24727))) (content!17 (left!1159 (left!1159 res!24727)))) (= (elem!229 (right!1162 res!24727)) (elem!229 (left!1159 res!24727)))) (= true true)))

(declare-fun bs!27272 () Bool)

(assert (= bs!27272 (and neg-inst!404 neg-inst!400)))

(assert (=> (and bs!27272 (= (content!17 (left!1159 (right!1162 res!24727))) (content!17 (left!1159 res!24727))) (= (elem!229 (right!1162 res!24727)) (elem!229 res!24727))) (= true true)))

(declare-fun bs!27273 () Bool)

(assert (= bs!27273 (and neg-inst!404 b!54894)))

(assert (=> bs!27273 (= true inst!416)))

(declare-fun bs!27274 () Bool)

(assert (= bs!27274 (and neg-inst!404 b!54890)))

(assert (=> (and bs!27274 (= (content!17 (left!1159 (right!1162 res!24727))) (content!17 (left!1159 res!24727))) (= (elem!229 (right!1162 res!24727)) (elem!229 res!24727))) (= true inst!412)))

(declare-fun bs!27275 () Bool)

(declare-fun neg-inst!405 () Bool)

(assert (= bs!27275 neg-inst!405))

(assert (=> bs!27275 m!59764))

(declare-fun bs!27276 () Bool)

(declare-fun s!1711 () Bool)

(assert (= bs!27276 (and neg-inst!405 s!1711)))

(assert (=> bs!27276 (=> true (or (not (member x!21930 (content!17 (right!1162 (right!1162 res!24727))))) (bvslt (elem!229 (right!1162 res!24727)) x!21930)))))

(assert (=> m!59766 s!1711))

(declare-fun bs!27277 () Bool)

(assert (= bs!27277 (and neg-inst!405 b!54891)))

(assert (=> (and bs!27277 (= (content!17 (right!1162 (right!1162 res!24727))) (content!17 (right!1162 res!24727))) (= (elem!229 (right!1162 res!24727)) (elem!229 res!24727))) (= true inst!413)))

(declare-fun bs!27278 () Bool)

(assert (= bs!27278 (and neg-inst!405 b!54893)))

(assert (=> (and bs!27278 (= (content!17 (right!1162 (right!1162 res!24727))) (content!17 (right!1162 (left!1159 res!24727)))) (= (elem!229 (right!1162 res!24727)) (elem!229 (left!1159 res!24727)))) (= true inst!415)))

(declare-fun bs!27279 () Bool)

(assert (= bs!27279 (and neg-inst!405 neg-inst!401)))

(assert (=> (and bs!27279 (= (content!17 (right!1162 (right!1162 res!24727))) (content!17 (right!1162 res!24727))) (= (elem!229 (right!1162 res!24727)) (elem!229 res!24727))) (= true true)))

(declare-fun bs!27280 () Bool)

(assert (= bs!27280 (and neg-inst!405 b!54889)))

(assert (=> (and bs!27280 (= (content!17 (right!1162 (right!1162 res!24727))) (content!17 (right!1162 thiss!7690))) (= (elem!229 (right!1162 res!24727)) (elem!229 thiss!7690))) (= true inst!411)))

(declare-fun bs!27281 () Bool)

(assert (= bs!27281 (and neg-inst!405 neg-inst!399)))

(assert (=> (and bs!27281 (= (content!17 (right!1162 (right!1162 res!24727))) (content!17 (right!1162 thiss!7690))) (= (elem!229 (right!1162 res!24727)) (elem!229 thiss!7690))) (= true true)))

(declare-fun bs!27282 () Bool)

(assert (= bs!27282 (and neg-inst!405 neg-inst!403)))

(assert (=> (and bs!27282 (= (content!17 (right!1162 (right!1162 res!24727))) (content!17 (right!1162 (left!1159 res!24727)))) (= (elem!229 (right!1162 res!24727)) (elem!229 (left!1159 res!24727)))) (= true true)))

(declare-fun bs!27283 () Bool)

(assert (= bs!27283 (and neg-inst!405 b!54895)))

(assert (=> bs!27283 (= true inst!417)))

(declare-fun d!45156 () Bool)

(declare-fun res!25170 () Bool)

(declare-fun e!28876 () Bool)

(assert (=> d!45156 (=> res!25170 e!28876)))

(assert (=> d!45156 (= res!25170 (not (is-Node!129 (right!1162 res!24727))))))

(assert (=> d!45156 (= (inv!977 (right!1162 res!24727)) e!28876)))

(declare-fun e!28877 () Bool)

(assert (=> b!54894 (= e!28876 e!28877)))

(declare-fun res!25169 () Bool)

(assert (=> b!54894 (=> (not res!25169) (not e!28877))))

(assert (=> b!54894 (= res!25169 inst!416)))

(assert (=> b!54895 (= e!28877 inst!417)))

(assert (= (and d!45156 (not res!25170)) b!54894))

(assert (= neg-inst!404 inst!416))

(assert (= (and b!54894 res!25169) b!54895))

(assert (= neg-inst!405 inst!417))

(assert (=> b!54860 d!45156))

(declare-fun b!54896 () Bool)

(declare-fun m!59768 () Bool)

(assert (=> b!54896 m!59768))

(declare-fun inst!418 () Bool)

(declare-fun x!21931 () (_ BitVec 32))

(assert (=> b!54896 (= inst!418 (=> true (or (not (member x!21931 (content!17 (left!1159 (left!1159 thiss!7690))))) (bvslt x!21931 (elem!229 (left!1159 thiss!7690))))))))

(declare-fun m!59770 () Bool)

(assert (=> b!54896 m!59770))

(declare-fun bs!27284 () Bool)

(assert (= bs!27284 (and b!54896 b!54892)))

(assert (=> (and bs!27284 (= (content!17 (left!1159 (left!1159 thiss!7690))) (content!17 (left!1159 (left!1159 res!24727)))) (= (elem!229 (left!1159 thiss!7690)) (elem!229 (left!1159 res!24727)))) (= inst!418 inst!414)))

(declare-fun bs!27285 () Bool)

(assert (= bs!27285 (and b!54896 b!54888)))

(assert (=> (and bs!27285 (= (content!17 (left!1159 (left!1159 thiss!7690))) (content!17 (left!1159 thiss!7690))) (= (elem!229 (left!1159 thiss!7690)) (elem!229 thiss!7690))) (= inst!418 inst!410)))

(declare-fun bs!27286 () Bool)

(assert (= bs!27286 (and b!54896 neg-inst!398)))

(assert (=> (and bs!27286 (= (content!17 (left!1159 (left!1159 thiss!7690))) (content!17 (left!1159 thiss!7690))) (= (elem!229 (left!1159 thiss!7690)) (elem!229 thiss!7690))) (= inst!418 true)))

(declare-fun bs!27287 () Bool)

(assert (= bs!27287 (and b!54896 neg-inst!402)))

(assert (=> (and bs!27287 (= (content!17 (left!1159 (left!1159 thiss!7690))) (content!17 (left!1159 (left!1159 res!24727)))) (= (elem!229 (left!1159 thiss!7690)) (elem!229 (left!1159 res!24727)))) (= inst!418 true)))

(declare-fun bs!27288 () Bool)

(assert (= bs!27288 (and b!54896 neg-inst!400)))

(assert (=> (and bs!27288 (= (content!17 (left!1159 (left!1159 thiss!7690))) (content!17 (left!1159 res!24727))) (= (elem!229 (left!1159 thiss!7690)) (elem!229 res!24727))) (= inst!418 true)))

(declare-fun bs!27289 () Bool)

(assert (= bs!27289 (and b!54896 neg-inst!404)))

(assert (=> (and bs!27289 (= (content!17 (left!1159 (left!1159 thiss!7690))) (content!17 (left!1159 (right!1162 res!24727)))) (= (elem!229 (left!1159 thiss!7690)) (elem!229 (right!1162 res!24727)))) (= inst!418 true)))

(declare-fun bs!27290 () Bool)

(assert (= bs!27290 (and b!54896 b!54894)))

(assert (=> (and bs!27290 (= (content!17 (left!1159 (left!1159 thiss!7690))) (content!17 (left!1159 (right!1162 res!24727)))) (= (elem!229 (left!1159 thiss!7690)) (elem!229 (right!1162 res!24727)))) (= inst!418 inst!416)))

(declare-fun bs!27291 () Bool)

(assert (= bs!27291 (and b!54896 b!54890)))

(assert (=> (and bs!27291 (= (content!17 (left!1159 (left!1159 thiss!7690))) (content!17 (left!1159 res!24727))) (= (elem!229 (left!1159 thiss!7690)) (elem!229 res!24727))) (= inst!418 inst!412)))

(declare-fun b!54897 () Bool)

(declare-fun m!59772 () Bool)

(assert (=> b!54897 m!59772))

(declare-fun inst!419 () Bool)

(declare-fun x!21932 () (_ BitVec 32))

(assert (=> b!54897 (= inst!419 (=> true (or (not (member x!21932 (content!17 (right!1162 (left!1159 thiss!7690))))) (bvslt (elem!229 (left!1159 thiss!7690)) x!21932))))))

(declare-fun m!59774 () Bool)

(assert (=> b!54897 m!59774))

(declare-fun bs!27292 () Bool)

(assert (= bs!27292 (and b!54897 b!54891)))

(assert (=> (and bs!27292 (= (content!17 (right!1162 (left!1159 thiss!7690))) (content!17 (right!1162 res!24727))) (= (elem!229 (left!1159 thiss!7690)) (elem!229 res!24727))) (= inst!419 inst!413)))

(declare-fun bs!27293 () Bool)

(assert (= bs!27293 (and b!54897 b!54893)))

(assert (=> (and bs!27293 (= (content!17 (right!1162 (left!1159 thiss!7690))) (content!17 (right!1162 (left!1159 res!24727)))) (= (elem!229 (left!1159 thiss!7690)) (elem!229 (left!1159 res!24727)))) (= inst!419 inst!415)))

(declare-fun bs!27294 () Bool)

(assert (= bs!27294 (and b!54897 neg-inst!405)))

(assert (=> (and bs!27294 (= (content!17 (right!1162 (left!1159 thiss!7690))) (content!17 (right!1162 (right!1162 res!24727)))) (= (elem!229 (left!1159 thiss!7690)) (elem!229 (right!1162 res!24727)))) (= inst!419 true)))

(declare-fun bs!27295 () Bool)

(assert (= bs!27295 (and b!54897 neg-inst!401)))

(assert (=> (and bs!27295 (= (content!17 (right!1162 (left!1159 thiss!7690))) (content!17 (right!1162 res!24727))) (= (elem!229 (left!1159 thiss!7690)) (elem!229 res!24727))) (= inst!419 true)))

(declare-fun bs!27296 () Bool)

(assert (= bs!27296 (and b!54897 b!54889)))

(assert (=> (and bs!27296 (= (content!17 (right!1162 (left!1159 thiss!7690))) (content!17 (right!1162 thiss!7690))) (= (elem!229 (left!1159 thiss!7690)) (elem!229 thiss!7690))) (= inst!419 inst!411)))

(declare-fun bs!27297 () Bool)

(assert (= bs!27297 (and b!54897 neg-inst!399)))

(assert (=> (and bs!27297 (= (content!17 (right!1162 (left!1159 thiss!7690))) (content!17 (right!1162 thiss!7690))) (= (elem!229 (left!1159 thiss!7690)) (elem!229 thiss!7690))) (= inst!419 true)))

(declare-fun bs!27298 () Bool)

(assert (= bs!27298 (and b!54897 neg-inst!403)))

(assert (=> (and bs!27298 (= (content!17 (right!1162 (left!1159 thiss!7690))) (content!17 (right!1162 (left!1159 res!24727)))) (= (elem!229 (left!1159 thiss!7690)) (elem!229 (left!1159 res!24727)))) (= inst!419 true)))

(declare-fun bs!27299 () Bool)

(assert (= bs!27299 (and b!54897 b!54895)))

(assert (=> (and bs!27299 (= (content!17 (right!1162 (left!1159 thiss!7690))) (content!17 (right!1162 (right!1162 res!24727)))) (= (elem!229 (left!1159 thiss!7690)) (elem!229 (right!1162 res!24727)))) (= inst!419 inst!417)))

(declare-fun bs!27300 () Bool)

(declare-fun neg-inst!406 () Bool)

(assert (= bs!27300 neg-inst!406))

(assert (=> bs!27300 m!59768))

(declare-fun bs!27301 () Bool)

(declare-fun s!1713 () Bool)

(assert (= bs!27301 (and neg-inst!406 s!1713)))

(assert (=> bs!27301 (=> true (or (not (member x!21931 (content!17 (left!1159 (left!1159 thiss!7690))))) (bvslt x!21931 (elem!229 (left!1159 thiss!7690)))))))

(assert (=> m!59770 s!1713))

(declare-fun bs!27302 () Bool)

(assert (= bs!27302 (and neg-inst!406 b!54892)))

(assert (=> (and bs!27302 (= (content!17 (left!1159 (left!1159 thiss!7690))) (content!17 (left!1159 (left!1159 res!24727)))) (= (elem!229 (left!1159 thiss!7690)) (elem!229 (left!1159 res!24727)))) (= true inst!414)))

(declare-fun bs!27303 () Bool)

(assert (= bs!27303 (and neg-inst!406 b!54888)))

(assert (=> (and bs!27303 (= (content!17 (left!1159 (left!1159 thiss!7690))) (content!17 (left!1159 thiss!7690))) (= (elem!229 (left!1159 thiss!7690)) (elem!229 thiss!7690))) (= true inst!410)))

(declare-fun bs!27304 () Bool)

(assert (= bs!27304 (and neg-inst!406 neg-inst!398)))

(assert (=> (and bs!27304 (= (content!17 (left!1159 (left!1159 thiss!7690))) (content!17 (left!1159 thiss!7690))) (= (elem!229 (left!1159 thiss!7690)) (elem!229 thiss!7690))) (= true true)))

(declare-fun bs!27305 () Bool)

(assert (= bs!27305 (and neg-inst!406 neg-inst!402)))

(assert (=> (and bs!27305 (= (content!17 (left!1159 (left!1159 thiss!7690))) (content!17 (left!1159 (left!1159 res!24727)))) (= (elem!229 (left!1159 thiss!7690)) (elem!229 (left!1159 res!24727)))) (= true true)))

(declare-fun bs!27306 () Bool)

(assert (= bs!27306 (and neg-inst!406 neg-inst!400)))

(assert (=> (and bs!27306 (= (content!17 (left!1159 (left!1159 thiss!7690))) (content!17 (left!1159 res!24727))) (= (elem!229 (left!1159 thiss!7690)) (elem!229 res!24727))) (= true true)))

(declare-fun bs!27307 () Bool)

(assert (= bs!27307 (and neg-inst!406 neg-inst!404)))

(assert (=> (and bs!27307 (= (content!17 (left!1159 (left!1159 thiss!7690))) (content!17 (left!1159 (right!1162 res!24727)))) (= (elem!229 (left!1159 thiss!7690)) (elem!229 (right!1162 res!24727)))) (= true true)))

(declare-fun bs!27308 () Bool)

(assert (= bs!27308 (and neg-inst!406 b!54894)))

(assert (=> (and bs!27308 (= (content!17 (left!1159 (left!1159 thiss!7690))) (content!17 (left!1159 (right!1162 res!24727)))) (= (elem!229 (left!1159 thiss!7690)) (elem!229 (right!1162 res!24727)))) (= true inst!416)))

(declare-fun bs!27309 () Bool)

(assert (= bs!27309 (and neg-inst!406 b!54896)))

(assert (=> bs!27309 (= true inst!418)))

(declare-fun bs!27310 () Bool)

(assert (= bs!27310 (and neg-inst!406 b!54890)))

(assert (=> (and bs!27310 (= (content!17 (left!1159 (left!1159 thiss!7690))) (content!17 (left!1159 res!24727))) (= (elem!229 (left!1159 thiss!7690)) (elem!229 res!24727))) (= true inst!412)))

(declare-fun bs!27311 () Bool)

(declare-fun neg-inst!407 () Bool)

(assert (= bs!27311 neg-inst!407))

(assert (=> bs!27311 m!59772))

(declare-fun bs!27312 () Bool)

(declare-fun s!1715 () Bool)

(assert (= bs!27312 (and neg-inst!407 s!1715)))

(assert (=> bs!27312 (=> true (or (not (member x!21932 (content!17 (right!1162 (left!1159 thiss!7690))))) (bvslt (elem!229 (left!1159 thiss!7690)) x!21932)))))

(assert (=> m!59774 s!1715))

(declare-fun bs!27313 () Bool)

(assert (= bs!27313 (and neg-inst!407 b!54891)))

(assert (=> (and bs!27313 (= (content!17 (right!1162 (left!1159 thiss!7690))) (content!17 (right!1162 res!24727))) (= (elem!229 (left!1159 thiss!7690)) (elem!229 res!24727))) (= true inst!413)))

(declare-fun bs!27314 () Bool)

(assert (= bs!27314 (and neg-inst!407 b!54893)))

(assert (=> (and bs!27314 (= (content!17 (right!1162 (left!1159 thiss!7690))) (content!17 (right!1162 (left!1159 res!24727)))) (= (elem!229 (left!1159 thiss!7690)) (elem!229 (left!1159 res!24727)))) (= true inst!415)))

(declare-fun bs!27315 () Bool)

(assert (= bs!27315 (and neg-inst!407 neg-inst!405)))

(assert (=> (and bs!27315 (= (content!17 (right!1162 (left!1159 thiss!7690))) (content!17 (right!1162 (right!1162 res!24727)))) (= (elem!229 (left!1159 thiss!7690)) (elem!229 (right!1162 res!24727)))) (= true true)))

(declare-fun bs!27316 () Bool)

(assert (= bs!27316 (and neg-inst!407 neg-inst!401)))

(assert (=> (and bs!27316 (= (content!17 (right!1162 (left!1159 thiss!7690))) (content!17 (right!1162 res!24727))) (= (elem!229 (left!1159 thiss!7690)) (elem!229 res!24727))) (= true true)))

(declare-fun bs!27317 () Bool)

(assert (= bs!27317 (and neg-inst!407 b!54889)))

(assert (=> (and bs!27317 (= (content!17 (right!1162 (left!1159 thiss!7690))) (content!17 (right!1162 thiss!7690))) (= (elem!229 (left!1159 thiss!7690)) (elem!229 thiss!7690))) (= true inst!411)))

(declare-fun bs!27318 () Bool)

(assert (= bs!27318 (and neg-inst!407 neg-inst!399)))

(assert (=> (and bs!27318 (= (content!17 (right!1162 (left!1159 thiss!7690))) (content!17 (right!1162 thiss!7690))) (= (elem!229 (left!1159 thiss!7690)) (elem!229 thiss!7690))) (= true true)))

(declare-fun bs!27319 () Bool)

(assert (= bs!27319 (and neg-inst!407 b!54897)))

(assert (=> bs!27319 (= true inst!419)))

(declare-fun bs!27320 () Bool)

(assert (= bs!27320 (and neg-inst!407 neg-inst!403)))

(assert (=> (and bs!27320 (= (content!17 (right!1162 (left!1159 thiss!7690))) (content!17 (right!1162 (left!1159 res!24727)))) (= (elem!229 (left!1159 thiss!7690)) (elem!229 (left!1159 res!24727)))) (= true true)))

(declare-fun bs!27321 () Bool)

(assert (= bs!27321 (and neg-inst!407 b!54895)))

(assert (=> (and bs!27321 (= (content!17 (right!1162 (left!1159 thiss!7690))) (content!17 (right!1162 (right!1162 res!24727)))) (= (elem!229 (left!1159 thiss!7690)) (elem!229 (right!1162 res!24727)))) (= true inst!417)))

(declare-fun d!45158 () Bool)

(declare-fun res!25172 () Bool)

(declare-fun e!28878 () Bool)

(assert (=> d!45158 (=> res!25172 e!28878)))

(assert (=> d!45158 (= res!25172 (not (is-Node!129 (left!1159 thiss!7690))))))

(assert (=> d!45158 (= (inv!977 (left!1159 thiss!7690)) e!28878)))

(declare-fun e!28879 () Bool)

(assert (=> b!54896 (= e!28878 e!28879)))

(declare-fun res!25171 () Bool)

(assert (=> b!54896 (=> (not res!25171) (not e!28879))))

(assert (=> b!54896 (= res!25171 inst!418)))

(assert (=> b!54897 (= e!28879 inst!419)))

(assert (= (and d!45158 (not res!25172)) b!54896))

(assert (= neg-inst!406 inst!418))

(assert (= (and b!54896 res!25171) b!54897))

(assert (= neg-inst!407 inst!419))

(assert (=> b!54859 d!45158))

(declare-fun b!54898 () Bool)

(declare-fun m!59776 () Bool)

(assert (=> b!54898 m!59776))

(declare-fun inst!420 () Bool)

(declare-fun x!21933 () (_ BitVec 32))

(assert (=> b!54898 (= inst!420 (=> true (or (not (member x!21933 (content!17 (left!1159 (right!1162 thiss!7690))))) (bvslt x!21933 (elem!229 (right!1162 thiss!7690))))))))

(declare-fun m!59778 () Bool)

(assert (=> b!54898 m!59778))

(declare-fun bs!27322 () Bool)

(assert (= bs!27322 (and b!54898 b!54892)))

(assert (=> (and bs!27322 (= (content!17 (left!1159 (right!1162 thiss!7690))) (content!17 (left!1159 (left!1159 res!24727)))) (= (elem!229 (right!1162 thiss!7690)) (elem!229 (left!1159 res!24727)))) (= inst!420 inst!414)))

(declare-fun bs!27323 () Bool)

(assert (= bs!27323 (and b!54898 b!54888)))

(assert (=> (and bs!27323 (= (content!17 (left!1159 (right!1162 thiss!7690))) (content!17 (left!1159 thiss!7690))) (= (elem!229 (right!1162 thiss!7690)) (elem!229 thiss!7690))) (= inst!420 inst!410)))

(declare-fun bs!27324 () Bool)

(assert (= bs!27324 (and b!54898 neg-inst!398)))

(assert (=> (and bs!27324 (= (content!17 (left!1159 (right!1162 thiss!7690))) (content!17 (left!1159 thiss!7690))) (= (elem!229 (right!1162 thiss!7690)) (elem!229 thiss!7690))) (= inst!420 true)))

(declare-fun bs!27325 () Bool)

(assert (= bs!27325 (and b!54898 neg-inst!402)))

(assert (=> (and bs!27325 (= (content!17 (left!1159 (right!1162 thiss!7690))) (content!17 (left!1159 (left!1159 res!24727)))) (= (elem!229 (right!1162 thiss!7690)) (elem!229 (left!1159 res!24727)))) (= inst!420 true)))

(declare-fun bs!27326 () Bool)

(assert (= bs!27326 (and b!54898 neg-inst!400)))

(assert (=> (and bs!27326 (= (content!17 (left!1159 (right!1162 thiss!7690))) (content!17 (left!1159 res!24727))) (= (elem!229 (right!1162 thiss!7690)) (elem!229 res!24727))) (= inst!420 true)))

(declare-fun bs!27327 () Bool)

(assert (= bs!27327 (and b!54898 neg-inst!404)))

(assert (=> (and bs!27327 (= (content!17 (left!1159 (right!1162 thiss!7690))) (content!17 (left!1159 (right!1162 res!24727)))) (= (elem!229 (right!1162 thiss!7690)) (elem!229 (right!1162 res!24727)))) (= inst!420 true)))

(declare-fun bs!27328 () Bool)

(assert (= bs!27328 (and b!54898 neg-inst!406)))

(assert (=> (and bs!27328 (= (content!17 (left!1159 (right!1162 thiss!7690))) (content!17 (left!1159 (left!1159 thiss!7690)))) (= (elem!229 (right!1162 thiss!7690)) (elem!229 (left!1159 thiss!7690)))) (= inst!420 true)))

(declare-fun bs!27329 () Bool)

(assert (= bs!27329 (and b!54898 b!54894)))

(assert (=> (and bs!27329 (= (content!17 (left!1159 (right!1162 thiss!7690))) (content!17 (left!1159 (right!1162 res!24727)))) (= (elem!229 (right!1162 thiss!7690)) (elem!229 (right!1162 res!24727)))) (= inst!420 inst!416)))

(declare-fun bs!27330 () Bool)

(assert (= bs!27330 (and b!54898 b!54896)))

(assert (=> (and bs!27330 (= (content!17 (left!1159 (right!1162 thiss!7690))) (content!17 (left!1159 (left!1159 thiss!7690)))) (= (elem!229 (right!1162 thiss!7690)) (elem!229 (left!1159 thiss!7690)))) (= inst!420 inst!418)))

(declare-fun bs!27331 () Bool)

(assert (= bs!27331 (and b!54898 b!54890)))

(assert (=> (and bs!27331 (= (content!17 (left!1159 (right!1162 thiss!7690))) (content!17 (left!1159 res!24727))) (= (elem!229 (right!1162 thiss!7690)) (elem!229 res!24727))) (= inst!420 inst!412)))

(declare-fun b!54899 () Bool)

(declare-fun m!59780 () Bool)

(assert (=> b!54899 m!59780))

(declare-fun inst!421 () Bool)

(declare-fun x!21934 () (_ BitVec 32))

(assert (=> b!54899 (= inst!421 (=> true (or (not (member x!21934 (content!17 (right!1162 (right!1162 thiss!7690))))) (bvslt (elem!229 (right!1162 thiss!7690)) x!21934))))))

(declare-fun m!59782 () Bool)

(assert (=> b!54899 m!59782))

(declare-fun bs!27332 () Bool)

(assert (= bs!27332 (and b!54899 b!54891)))

(assert (=> (and bs!27332 (= (content!17 (right!1162 (right!1162 thiss!7690))) (content!17 (right!1162 res!24727))) (= (elem!229 (right!1162 thiss!7690)) (elem!229 res!24727))) (= inst!421 inst!413)))

(declare-fun bs!27333 () Bool)

(assert (= bs!27333 (and b!54899 b!54893)))

(assert (=> (and bs!27333 (= (content!17 (right!1162 (right!1162 thiss!7690))) (content!17 (right!1162 (left!1159 res!24727)))) (= (elem!229 (right!1162 thiss!7690)) (elem!229 (left!1159 res!24727)))) (= inst!421 inst!415)))

(declare-fun bs!27334 () Bool)

(assert (= bs!27334 (and b!54899 neg-inst!405)))

(assert (=> (and bs!27334 (= (content!17 (right!1162 (right!1162 thiss!7690))) (content!17 (right!1162 (right!1162 res!24727)))) (= (elem!229 (right!1162 thiss!7690)) (elem!229 (right!1162 res!24727)))) (= inst!421 true)))

(declare-fun bs!27335 () Bool)

(assert (= bs!27335 (and b!54899 neg-inst!401)))

(assert (=> (and bs!27335 (= (content!17 (right!1162 (right!1162 thiss!7690))) (content!17 (right!1162 res!24727))) (= (elem!229 (right!1162 thiss!7690)) (elem!229 res!24727))) (= inst!421 true)))

(declare-fun bs!27336 () Bool)

(assert (= bs!27336 (and b!54899 b!54889)))

(assert (=> (and bs!27336 (= (content!17 (right!1162 (right!1162 thiss!7690))) (content!17 (right!1162 thiss!7690))) (= (elem!229 (right!1162 thiss!7690)) (elem!229 thiss!7690))) (= inst!421 inst!411)))

(declare-fun bs!27337 () Bool)

(assert (= bs!27337 (and b!54899 neg-inst!407)))

(assert (=> (and bs!27337 (= (content!17 (right!1162 (right!1162 thiss!7690))) (content!17 (right!1162 (left!1159 thiss!7690)))) (= (elem!229 (right!1162 thiss!7690)) (elem!229 (left!1159 thiss!7690)))) (= inst!421 true)))

(declare-fun bs!27338 () Bool)

(assert (= bs!27338 (and b!54899 neg-inst!399)))

(assert (=> (and bs!27338 (= (content!17 (right!1162 (right!1162 thiss!7690))) (content!17 (right!1162 thiss!7690))) (= (elem!229 (right!1162 thiss!7690)) (elem!229 thiss!7690))) (= inst!421 true)))

(declare-fun bs!27339 () Bool)

(assert (= bs!27339 (and b!54899 b!54897)))

(assert (=> (and bs!27339 (= (content!17 (right!1162 (right!1162 thiss!7690))) (content!17 (right!1162 (left!1159 thiss!7690)))) (= (elem!229 (right!1162 thiss!7690)) (elem!229 (left!1159 thiss!7690)))) (= inst!421 inst!419)))

(declare-fun bs!27340 () Bool)

(assert (= bs!27340 (and b!54899 neg-inst!403)))

(assert (=> (and bs!27340 (= (content!17 (right!1162 (right!1162 thiss!7690))) (content!17 (right!1162 (left!1159 res!24727)))) (= (elem!229 (right!1162 thiss!7690)) (elem!229 (left!1159 res!24727)))) (= inst!421 true)))

(declare-fun bs!27341 () Bool)

(assert (= bs!27341 (and b!54899 b!54895)))

(assert (=> (and bs!27341 (= (content!17 (right!1162 (right!1162 thiss!7690))) (content!17 (right!1162 (right!1162 res!24727)))) (= (elem!229 (right!1162 thiss!7690)) (elem!229 (right!1162 res!24727)))) (= inst!421 inst!417)))

(declare-fun bs!27342 () Bool)

(declare-fun neg-inst!408 () Bool)

(assert (= bs!27342 neg-inst!408))

(assert (=> bs!27342 m!59776))

(declare-fun bs!27343 () Bool)

(declare-fun s!1717 () Bool)

(assert (= bs!27343 (and neg-inst!408 s!1717)))

(assert (=> bs!27343 (=> true (or (not (member x!21933 (content!17 (left!1159 (right!1162 thiss!7690))))) (bvslt x!21933 (elem!229 (right!1162 thiss!7690)))))))

(assert (=> m!59778 s!1717))

(declare-fun bs!27344 () Bool)

(assert (= bs!27344 (and neg-inst!408 b!54898)))

(assert (=> bs!27344 (= true inst!420)))

(declare-fun bs!27345 () Bool)

(assert (= bs!27345 (and neg-inst!408 b!54892)))

(assert (=> (and bs!27345 (= (content!17 (left!1159 (right!1162 thiss!7690))) (content!17 (left!1159 (left!1159 res!24727)))) (= (elem!229 (right!1162 thiss!7690)) (elem!229 (left!1159 res!24727)))) (= true inst!414)))

(declare-fun bs!27346 () Bool)

(assert (= bs!27346 (and neg-inst!408 b!54888)))

(assert (=> (and bs!27346 (= (content!17 (left!1159 (right!1162 thiss!7690))) (content!17 (left!1159 thiss!7690))) (= (elem!229 (right!1162 thiss!7690)) (elem!229 thiss!7690))) (= true inst!410)))

(declare-fun bs!27347 () Bool)

(assert (= bs!27347 (and neg-inst!408 neg-inst!398)))

(assert (=> (and bs!27347 (= (content!17 (left!1159 (right!1162 thiss!7690))) (content!17 (left!1159 thiss!7690))) (= (elem!229 (right!1162 thiss!7690)) (elem!229 thiss!7690))) (= true true)))

(declare-fun bs!27348 () Bool)

(assert (= bs!27348 (and neg-inst!408 neg-inst!402)))

(assert (=> (and bs!27348 (= (content!17 (left!1159 (right!1162 thiss!7690))) (content!17 (left!1159 (left!1159 res!24727)))) (= (elem!229 (right!1162 thiss!7690)) (elem!229 (left!1159 res!24727)))) (= true true)))

(declare-fun bs!27349 () Bool)

(assert (= bs!27349 (and neg-inst!408 neg-inst!400)))

(assert (=> (and bs!27349 (= (content!17 (left!1159 (right!1162 thiss!7690))) (content!17 (left!1159 res!24727))) (= (elem!229 (right!1162 thiss!7690)) (elem!229 res!24727))) (= true true)))

(declare-fun bs!27350 () Bool)

(assert (= bs!27350 (and neg-inst!408 neg-inst!404)))

(assert (=> (and bs!27350 (= (content!17 (left!1159 (right!1162 thiss!7690))) (content!17 (left!1159 (right!1162 res!24727)))) (= (elem!229 (right!1162 thiss!7690)) (elem!229 (right!1162 res!24727)))) (= true true)))

(declare-fun bs!27351 () Bool)

(assert (= bs!27351 (and neg-inst!408 neg-inst!406)))

(assert (=> (and bs!27351 (= (content!17 (left!1159 (right!1162 thiss!7690))) (content!17 (left!1159 (left!1159 thiss!7690)))) (= (elem!229 (right!1162 thiss!7690)) (elem!229 (left!1159 thiss!7690)))) (= true true)))

(declare-fun bs!27352 () Bool)

(assert (= bs!27352 (and neg-inst!408 b!54894)))

(assert (=> (and bs!27352 (= (content!17 (left!1159 (right!1162 thiss!7690))) (content!17 (left!1159 (right!1162 res!24727)))) (= (elem!229 (right!1162 thiss!7690)) (elem!229 (right!1162 res!24727)))) (= true inst!416)))

(declare-fun bs!27353 () Bool)

(assert (= bs!27353 (and neg-inst!408 b!54896)))

(assert (=> (and bs!27353 (= (content!17 (left!1159 (right!1162 thiss!7690))) (content!17 (left!1159 (left!1159 thiss!7690)))) (= (elem!229 (right!1162 thiss!7690)) (elem!229 (left!1159 thiss!7690)))) (= true inst!418)))

(declare-fun bs!27354 () Bool)

(assert (= bs!27354 (and neg-inst!408 b!54890)))

(assert (=> (and bs!27354 (= (content!17 (left!1159 (right!1162 thiss!7690))) (content!17 (left!1159 res!24727))) (= (elem!229 (right!1162 thiss!7690)) (elem!229 res!24727))) (= true inst!412)))

(declare-fun bs!27355 () Bool)

(declare-fun neg-inst!409 () Bool)

(assert (= bs!27355 neg-inst!409))

(assert (=> bs!27355 m!59780))

(declare-fun bs!27356 () Bool)

(declare-fun s!1719 () Bool)

(assert (= bs!27356 (and neg-inst!409 s!1719)))

(assert (=> bs!27356 (=> true (or (not (member x!21934 (content!17 (right!1162 (right!1162 thiss!7690))))) (bvslt (elem!229 (right!1162 thiss!7690)) x!21934)))))

(assert (=> m!59782 s!1719))

(declare-fun bs!27357 () Bool)

(assert (= bs!27357 (and neg-inst!409 b!54891)))

(assert (=> (and bs!27357 (= (content!17 (right!1162 (right!1162 thiss!7690))) (content!17 (right!1162 res!24727))) (= (elem!229 (right!1162 thiss!7690)) (elem!229 res!24727))) (= true inst!413)))

(declare-fun bs!27358 () Bool)

(assert (= bs!27358 (and neg-inst!409 b!54893)))

(assert (=> (and bs!27358 (= (content!17 (right!1162 (right!1162 thiss!7690))) (content!17 (right!1162 (left!1159 res!24727)))) (= (elem!229 (right!1162 thiss!7690)) (elem!229 (left!1159 res!24727)))) (= true inst!415)))

(declare-fun bs!27359 () Bool)

(assert (= bs!27359 (and neg-inst!409 neg-inst!405)))

(assert (=> (and bs!27359 (= (content!17 (right!1162 (right!1162 thiss!7690))) (content!17 (right!1162 (right!1162 res!24727)))) (= (elem!229 (right!1162 thiss!7690)) (elem!229 (right!1162 res!24727)))) (= true true)))

(declare-fun bs!27360 () Bool)

(assert (= bs!27360 (and neg-inst!409 b!54899)))

(assert (=> bs!27360 (= true inst!421)))

(declare-fun bs!27361 () Bool)

(assert (= bs!27361 (and neg-inst!409 neg-inst!401)))

(assert (=> (and bs!27361 (= (content!17 (right!1162 (right!1162 thiss!7690))) (content!17 (right!1162 res!24727))) (= (elem!229 (right!1162 thiss!7690)) (elem!229 res!24727))) (= true true)))

(declare-fun bs!27362 () Bool)

(assert (= bs!27362 (and neg-inst!409 b!54889)))

(assert (=> (and bs!27362 (= (content!17 (right!1162 (right!1162 thiss!7690))) (content!17 (right!1162 thiss!7690))) (= (elem!229 (right!1162 thiss!7690)) (elem!229 thiss!7690))) (= true inst!411)))

(declare-fun bs!27363 () Bool)

(assert (= bs!27363 (and neg-inst!409 neg-inst!407)))

(assert (=> (and bs!27363 (= (content!17 (right!1162 (right!1162 thiss!7690))) (content!17 (right!1162 (left!1159 thiss!7690)))) (= (elem!229 (right!1162 thiss!7690)) (elem!229 (left!1159 thiss!7690)))) (= true true)))

(declare-fun bs!27364 () Bool)

(assert (= bs!27364 (and neg-inst!409 neg-inst!399)))

(assert (=> (and bs!27364 (= (content!17 (right!1162 (right!1162 thiss!7690))) (content!17 (right!1162 thiss!7690))) (= (elem!229 (right!1162 thiss!7690)) (elem!229 thiss!7690))) (= true true)))

(declare-fun bs!27365 () Bool)

(assert (= bs!27365 (and neg-inst!409 b!54897)))

(assert (=> (and bs!27365 (= (content!17 (right!1162 (right!1162 thiss!7690))) (content!17 (right!1162 (left!1159 thiss!7690)))) (= (elem!229 (right!1162 thiss!7690)) (elem!229 (left!1159 thiss!7690)))) (= true inst!419)))

(declare-fun bs!27366 () Bool)

(assert (= bs!27366 (and neg-inst!409 neg-inst!403)))

(assert (=> (and bs!27366 (= (content!17 (right!1162 (right!1162 thiss!7690))) (content!17 (right!1162 (left!1159 res!24727)))) (= (elem!229 (right!1162 thiss!7690)) (elem!229 (left!1159 res!24727)))) (= true true)))

(declare-fun bs!27367 () Bool)

(assert (= bs!27367 (and neg-inst!409 b!54895)))

(assert (=> (and bs!27367 (= (content!17 (right!1162 (right!1162 thiss!7690))) (content!17 (right!1162 (right!1162 res!24727)))) (= (elem!229 (right!1162 thiss!7690)) (elem!229 (right!1162 res!24727)))) (= true inst!417)))

(declare-fun d!45160 () Bool)

(declare-fun res!25174 () Bool)

(declare-fun e!28880 () Bool)

(assert (=> d!45160 (=> res!25174 e!28880)))

(assert (=> d!45160 (= res!25174 (not (is-Node!129 (right!1162 thiss!7690))))))

(assert (=> d!45160 (= (inv!977 (right!1162 thiss!7690)) e!28880)))

(declare-fun e!28881 () Bool)

(assert (=> b!54898 (= e!28880 e!28881)))

(declare-fun res!25173 () Bool)

(assert (=> b!54898 (=> (not res!25173) (not e!28881))))

(assert (=> b!54898 (= res!25173 inst!420)))

(assert (=> b!54899 (= e!28881 inst!421)))

(assert (= (and d!45160 (not res!25174)) b!54898))

(assert (= neg-inst!408 inst!420))

(assert (= (and b!54898 res!25173) b!54899))

(assert (= neg-inst!409 inst!421))

(assert (=> b!54859 d!45160))

(declare-fun e!28884 () Bool)

(declare-fun b!54904 () Bool)

(declare-fun tp!15562 () Bool)

(declare-fun tp!15561 () Bool)

(assert (=> b!54904 (= e!28884 (and (inv!977 (left!1159 (left!1159 thiss!7690))) tp!15561 (inv!977 (right!1162 (left!1159 thiss!7690))) tp!15562))))

(assert (=> b!54859 (= tp!15548 (and (inv!977 (left!1159 thiss!7690)) e!28884))))

(assert (= (and b!54859 (is-Node!129 (left!1159 thiss!7690))) b!54904))

(declare-fun m!59784 () Bool)

(assert (=> b!54904 m!59784))

(declare-fun m!59786 () Bool)

(assert (=> b!54904 m!59786))

(assert (=> b!54859 m!59714))

(declare-fun tp!15563 () Bool)

(declare-fun tp!15564 () Bool)

(declare-fun e!28885 () Bool)

(declare-fun b!54905 () Bool)

(assert (=> b!54905 (= e!28885 (and (inv!977 (left!1159 (right!1162 thiss!7690))) tp!15563 (inv!977 (right!1162 (right!1162 thiss!7690))) tp!15564))))

(assert (=> b!54859 (= tp!15549 (and (inv!977 (right!1162 thiss!7690)) e!28885))))

(assert (= (and b!54859 (is-Node!129 (right!1162 thiss!7690))) b!54905))

(declare-fun m!59788 () Bool)

(assert (=> b!54905 m!59788))

(declare-fun m!59790 () Bool)

(assert (=> b!54905 m!59790))

(assert (=> b!54859 m!59716))

(declare-fun e!28886 () Bool)

(declare-fun tp!15566 () Bool)

(declare-fun tp!15565 () Bool)

(declare-fun b!54906 () Bool)

(assert (=> b!54906 (= e!28886 (and (inv!977 (left!1159 (left!1159 res!24727))) tp!15565 (inv!977 (right!1162 (left!1159 res!24727))) tp!15566))))

(assert (=> b!54860 (= tp!15547 (and (inv!977 (left!1159 res!24727)) e!28886))))

(assert (= (and b!54860 (is-Node!129 (left!1159 res!24727))) b!54906))

(declare-fun m!59792 () Bool)

(assert (=> b!54906 m!59792))

(declare-fun m!59794 () Bool)

(assert (=> b!54906 m!59794))

(assert (=> b!54860 m!59710))

(declare-fun tp!15567 () Bool)

(declare-fun e!28887 () Bool)

(declare-fun tp!15568 () Bool)

(declare-fun b!54907 () Bool)

(assert (=> b!54907 (= e!28887 (and (inv!977 (left!1159 (right!1162 res!24727))) tp!15567 (inv!977 (right!1162 (right!1162 res!24727))) tp!15568))))

(assert (=> b!54860 (= tp!15550 (and (inv!977 (right!1162 res!24727)) e!28887))))

(assert (= (and b!54860 (is-Node!129 (right!1162 res!24727))) b!54907))

(declare-fun m!59796 () Bool)

(assert (=> b!54907 m!59796))

(declare-fun m!59798 () Bool)

(assert (=> b!54907 m!59798))

(assert (=> b!54860 m!59712))

(push 1)

(assert (not neg-inst!408))

(assert (not neg-inst!403))

(assert (not b!54889))

(assert (not b!54891))

(assert (not neg-inst!404))

(assert (not neg-inst!401))

(assert (not b!54899))

(assert (not b!54879))

(assert (not neg-inst!405))

(assert (not b!54904))

(assert (not neg-inst!398))

(assert (not neg-inst!409))

(assert (not b!54888))

(assert (not d!45148))

(assert (not b!54866))

(assert (not b!54860))

(assert (not b!54896))

(assert (not neg-inst!406))

(assert (not b!54882))

(assert (not b!54906))

(assert (not b!54895))

(assert (not neg-inst!400))

(assert (not b!54905))

(assert (not b!54859))

(assert (not b!54894))

(assert (not b!54898))

(assert (not b!54890))

(assert (not b!54893))

(assert (not b!54892))

(assert (not neg-inst!402))

(assert (not neg-inst!407))

(assert (not b!54897))

(assert (not neg-inst!399))

(assert (not b!54907))

(assert (not b!54883))

(assert (not b!54868))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

