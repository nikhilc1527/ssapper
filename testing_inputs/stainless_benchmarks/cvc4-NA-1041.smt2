; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7668 () Bool)

(assert start!7668)

(declare-fun res!25177 () Bool)

(declare-fun e!28895 () Bool)

(assert (=> start!7668 (=> (not res!25177) (not e!28895))))

(declare-fun x!21411 () (_ BitVec 32))

(declare-datatypes () ((IntSet!44 (Empty!169) (Node!130 (left!1160 IntSet!44) (elem!230 (_ BitVec 32)) (right!1163 IntSet!44)))))

(declare-fun res!24729 () IntSet!44)

(declare-fun thiss!7690 () IntSet!44)

(assert (=> start!7668 (= res!25177 (and (not (is-Empty!169 thiss!7690)) (bvsge x!21411 (elem!230 thiss!7690)) (bvsle x!21411 (elem!230 thiss!7690)) (= res!24729 thiss!7690)))))

(assert (=> start!7668 e!28895))

(declare-fun e!28894 () Bool)

(declare-fun inv!977 (IntSet!44) Bool)

(assert (=> start!7668 (and (inv!977 thiss!7690) e!28894)))

(assert (=> start!7668 true))

(declare-fun e!28896 () Bool)

(assert (=> start!7668 (and (inv!977 res!24729) e!28896)))

(declare-fun b!54914 () Bool)

(declare-fun content!17 (IntSet!44) (Set (_ BitVec 32)))

(assert (=> b!54914 (= e!28895 (not (= (content!17 res!24729) (union (content!17 thiss!7690) (insert x!21411 (as emptyset (Set (_ BitVec 32))))))))))

(declare-fun b!54915 () Bool)

(declare-fun tp!15578 () Bool)

(declare-fun tp!15577 () Bool)

(assert (=> b!54915 (= e!28894 (and (inv!977 (left!1160 thiss!7690)) tp!15577 (inv!977 (right!1163 thiss!7690)) tp!15578))))

(declare-fun b!54916 () Bool)

(declare-fun tp!15579 () Bool)

(declare-fun tp!15580 () Bool)

(assert (=> b!54916 (= e!28896 (and (inv!977 (left!1160 res!24729)) tp!15579 (inv!977 (right!1163 res!24729)) tp!15580))))

(assert (= (and start!7668 res!25177) b!54914))

(assert (= (and start!7668 (is-Node!130 thiss!7690)) b!54915))

(assert (= (and start!7668 (is-Node!130 res!24729)) b!54916))

(declare-fun m!59800 () Bool)

(assert (=> start!7668 m!59800))

(declare-fun m!59802 () Bool)

(assert (=> start!7668 m!59802))

(declare-fun m!59804 () Bool)

(assert (=> b!54914 m!59804))

(declare-fun m!59806 () Bool)

(assert (=> b!54914 m!59806))

(declare-fun m!59808 () Bool)

(assert (=> b!54914 m!59808))

(declare-fun m!59810 () Bool)

(assert (=> b!54915 m!59810))

(declare-fun m!59812 () Bool)

(assert (=> b!54915 m!59812))

(declare-fun m!59814 () Bool)

(assert (=> b!54916 m!59814))

(declare-fun m!59816 () Bool)

(assert (=> b!54916 m!59816))

(push 1)

(assert (not b!54914))

(assert (not start!7668))

(assert (not b!54916))

(assert (not b!54915))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!45162 () Bool)

(declare-fun c!11909 () Bool)

(assert (=> d!45162 (= c!11909 (is-Empty!169 res!24729))))

(declare-fun e!28899 () (Set (_ BitVec 32)))

(assert (=> d!45162 (= (content!17 res!24729) e!28899)))

(declare-fun b!54921 () Bool)

(assert (=> b!54921 (= e!28899 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!54922 () Bool)

(assert (=> b!54922 (= e!28899 (union (union (content!17 (left!1160 res!24729)) (insert (elem!230 res!24729) (as emptyset (Set (_ BitVec 32))))) (content!17 (right!1163 res!24729))))))

(assert (= (and d!45162 c!11909) b!54921))

(assert (= (and d!45162 (not c!11909)) b!54922))

(declare-fun m!59818 () Bool)

(assert (=> b!54922 m!59818))

(declare-fun m!59820 () Bool)

(assert (=> b!54922 m!59820))

(declare-fun m!59822 () Bool)

(assert (=> b!54922 m!59822))

(assert (=> b!54914 d!45162))

(declare-fun d!45164 () Bool)

(declare-fun c!11910 () Bool)

(assert (=> d!45164 (= c!11910 (is-Empty!169 thiss!7690))))

(declare-fun e!28900 () (Set (_ BitVec 32)))

(assert (=> d!45164 (= (content!17 thiss!7690) e!28900)))

(declare-fun b!54923 () Bool)

(assert (=> b!54923 (= e!28900 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!54924 () Bool)

(assert (=> b!54924 (= e!28900 (union (union (content!17 (left!1160 thiss!7690)) (insert (elem!230 thiss!7690) (as emptyset (Set (_ BitVec 32))))) (content!17 (right!1163 thiss!7690))))))

(assert (= (and d!45164 c!11910) b!54923))

(assert (= (and d!45164 (not c!11910)) b!54924))

(declare-fun m!59824 () Bool)

(assert (=> b!54924 m!59824))

(declare-fun m!59826 () Bool)

(assert (=> b!54924 m!59826))

(declare-fun m!59828 () Bool)

(assert (=> b!54924 m!59828))

(assert (=> b!54914 d!45164))

(declare-fun b!54929 () Bool)

(assert (=> b!54929 m!59824))

(declare-fun inst!426 () Bool)

(declare-fun x!21955 () (_ BitVec 32))

(assert (=> b!54929 (= inst!426 (=> true (or (not (member x!21955 (content!17 (left!1160 thiss!7690)))) (bvslt x!21955 (elem!230 thiss!7690)))))))

(declare-fun m!59830 () Bool)

(assert (=> b!54929 m!59830))

(declare-fun b!54930 () Bool)

(assert (=> b!54930 m!59828))

(declare-fun inst!427 () Bool)

(declare-fun x!21956 () (_ BitVec 32))

(assert (=> b!54930 (= inst!427 (=> true (or (not (member x!21956 (content!17 (right!1163 thiss!7690)))) (bvslt (elem!230 thiss!7690) x!21956))))))

(declare-fun m!59832 () Bool)

(assert (=> b!54930 m!59832))

(declare-fun bs!27369 () Bool)

(declare-fun neg-inst!414 () Bool)

(assert (= bs!27369 neg-inst!414))

(assert (=> bs!27369 m!59824))

(declare-fun bs!27370 () Bool)

(declare-fun s!1721 () Bool)

(assert (= bs!27370 (and neg-inst!414 s!1721)))

(assert (=> bs!27370 (=> true (or (not (member x!21955 (content!17 (left!1160 thiss!7690)))) (bvslt x!21955 (elem!230 thiss!7690))))))

(assert (=> m!59830 s!1721))

(declare-fun bs!27371 () Bool)

(assert (= bs!27371 (and neg-inst!414 b!54929)))

(assert (=> bs!27371 (= true inst!426)))

(declare-fun bs!27372 () Bool)

(declare-fun neg-inst!415 () Bool)

(assert (= bs!27372 neg-inst!415))

(assert (=> bs!27372 m!59828))

(declare-fun bs!27373 () Bool)

(declare-fun s!1723 () Bool)

(assert (= bs!27373 (and neg-inst!415 s!1723)))

(assert (=> bs!27373 (=> true (or (not (member x!21956 (content!17 (right!1163 thiss!7690)))) (bvslt (elem!230 thiss!7690) x!21956)))))

(assert (=> m!59832 s!1723))

(declare-fun bs!27374 () Bool)

(assert (= bs!27374 (and neg-inst!415 b!54930)))

(assert (=> bs!27374 (= true inst!427)))

(declare-fun d!45166 () Bool)

(declare-fun res!25182 () Bool)

(declare-fun e!28906 () Bool)

(assert (=> d!45166 (=> res!25182 e!28906)))

(assert (=> d!45166 (= res!25182 (not (is-Node!130 thiss!7690)))))

(assert (=> d!45166 (= (inv!977 thiss!7690) e!28906)))

(declare-fun e!28905 () Bool)

(assert (=> b!54929 (= e!28906 e!28905)))

(declare-fun res!25183 () Bool)

(assert (=> b!54929 (=> (not res!25183) (not e!28905))))

(assert (=> b!54929 (= res!25183 inst!426)))

(assert (=> b!54930 (= e!28905 inst!427)))

(assert (= (and d!45166 (not res!25182)) b!54929))

(assert (= neg-inst!414 inst!426))

(assert (= (and b!54929 res!25183) b!54930))

(assert (= neg-inst!415 inst!427))

(assert (=> start!7668 d!45166))

(declare-fun b!54931 () Bool)

(assert (=> b!54931 m!59818))

(declare-fun inst!428 () Bool)

(declare-fun x!21957 () (_ BitVec 32))

(assert (=> b!54931 (= inst!428 (=> true (or (not (member x!21957 (content!17 (left!1160 res!24729)))) (bvslt x!21957 (elem!230 res!24729)))))))

(declare-fun m!59834 () Bool)

(assert (=> b!54931 m!59834))

(declare-fun bs!27375 () Bool)

(assert (= bs!27375 (and b!54931 neg-inst!414)))

(assert (=> (and bs!27375 (= (content!17 (left!1160 res!24729)) (content!17 (left!1160 thiss!7690))) (= (elem!230 res!24729) (elem!230 thiss!7690))) (= inst!428 true)))

(declare-fun bs!27376 () Bool)

(assert (= bs!27376 (and b!54931 b!54929)))

(assert (=> (and bs!27376 (= (content!17 (left!1160 res!24729)) (content!17 (left!1160 thiss!7690))) (= (elem!230 res!24729) (elem!230 thiss!7690))) (= inst!428 inst!426)))

(declare-fun b!54932 () Bool)

(assert (=> b!54932 m!59822))

(declare-fun inst!429 () Bool)

(declare-fun x!21958 () (_ BitVec 32))

(assert (=> b!54932 (= inst!429 (=> true (or (not (member x!21958 (content!17 (right!1163 res!24729)))) (bvslt (elem!230 res!24729) x!21958))))))

(declare-fun m!59836 () Bool)

(assert (=> b!54932 m!59836))

(declare-fun bs!27377 () Bool)

(assert (= bs!27377 (and b!54932 b!54930)))

(assert (=> (and bs!27377 (= (content!17 (right!1163 res!24729)) (content!17 (right!1163 thiss!7690))) (= (elem!230 res!24729) (elem!230 thiss!7690))) (= inst!429 inst!427)))

(declare-fun bs!27378 () Bool)

(assert (= bs!27378 (and b!54932 neg-inst!415)))

(assert (=> (and bs!27378 (= (content!17 (right!1163 res!24729)) (content!17 (right!1163 thiss!7690))) (= (elem!230 res!24729) (elem!230 thiss!7690))) (= inst!429 true)))

(declare-fun bs!27379 () Bool)

(declare-fun neg-inst!416 () Bool)

(assert (= bs!27379 neg-inst!416))

(assert (=> bs!27379 m!59818))

(declare-fun bs!27380 () Bool)

(declare-fun s!1725 () Bool)

(assert (= bs!27380 (and neg-inst!416 s!1725)))

(assert (=> bs!27380 (=> true (or (not (member x!21957 (content!17 (left!1160 res!24729)))) (bvslt x!21957 (elem!230 res!24729))))))

(assert (=> m!59834 s!1725))

(declare-fun bs!27381 () Bool)

(assert (= bs!27381 (and neg-inst!416 b!54931)))

(assert (=> bs!27381 (= true inst!428)))

(declare-fun bs!27382 () Bool)

(assert (= bs!27382 (and neg-inst!416 neg-inst!414)))

(assert (=> (and bs!27382 (= (content!17 (left!1160 res!24729)) (content!17 (left!1160 thiss!7690))) (= (elem!230 res!24729) (elem!230 thiss!7690))) (= true true)))

(declare-fun bs!27383 () Bool)

(assert (= bs!27383 (and neg-inst!416 b!54929)))

(assert (=> (and bs!27383 (= (content!17 (left!1160 res!24729)) (content!17 (left!1160 thiss!7690))) (= (elem!230 res!24729) (elem!230 thiss!7690))) (= true inst!426)))

(declare-fun bs!27384 () Bool)

(declare-fun neg-inst!417 () Bool)

(assert (= bs!27384 neg-inst!417))

(assert (=> bs!27384 m!59822))

(declare-fun bs!27385 () Bool)

(declare-fun s!1727 () Bool)

(assert (= bs!27385 (and neg-inst!417 s!1727)))

(assert (=> bs!27385 (=> true (or (not (member x!21958 (content!17 (right!1163 res!24729)))) (bvslt (elem!230 res!24729) x!21958)))))

(assert (=> m!59836 s!1727))

(declare-fun bs!27386 () Bool)

(assert (= bs!27386 (and neg-inst!417 b!54932)))

(assert (=> bs!27386 (= true inst!429)))

(declare-fun bs!27387 () Bool)

(assert (= bs!27387 (and neg-inst!417 b!54930)))

(assert (=> (and bs!27387 (= (content!17 (right!1163 res!24729)) (content!17 (right!1163 thiss!7690))) (= (elem!230 res!24729) (elem!230 thiss!7690))) (= true inst!427)))

(declare-fun bs!27388 () Bool)

(assert (= bs!27388 (and neg-inst!417 neg-inst!415)))

(assert (=> (and bs!27388 (= (content!17 (right!1163 res!24729)) (content!17 (right!1163 thiss!7690))) (= (elem!230 res!24729) (elem!230 thiss!7690))) (= true true)))

(declare-fun d!45168 () Bool)

(declare-fun res!25184 () Bool)

(declare-fun e!28908 () Bool)

(assert (=> d!45168 (=> res!25184 e!28908)))

(assert (=> d!45168 (= res!25184 (not (is-Node!130 res!24729)))))

(assert (=> d!45168 (= (inv!977 res!24729) e!28908)))

(declare-fun e!28907 () Bool)

(assert (=> b!54931 (= e!28908 e!28907)))

(declare-fun res!25185 () Bool)

(assert (=> b!54931 (=> (not res!25185) (not e!28907))))

(assert (=> b!54931 (= res!25185 inst!428)))

(assert (=> b!54932 (= e!28907 inst!429)))

(assert (= (and d!45168 (not res!25184)) b!54931))

(assert (= neg-inst!416 inst!428))

(assert (= (and b!54931 res!25185) b!54932))

(assert (= neg-inst!417 inst!429))

(assert (=> start!7668 d!45168))

(declare-fun b!54933 () Bool)

(declare-fun m!59838 () Bool)

(assert (=> b!54933 m!59838))

(declare-fun inst!430 () Bool)

(declare-fun x!21959 () (_ BitVec 32))

(assert (=> b!54933 (= inst!430 (=> true (or (not (member x!21959 (content!17 (left!1160 (left!1160 res!24729))))) (bvslt x!21959 (elem!230 (left!1160 res!24729))))))))

(declare-fun m!59840 () Bool)

(assert (=> b!54933 m!59840))

(declare-fun bs!27389 () Bool)

(assert (= bs!27389 (and b!54933 neg-inst!416)))

(assert (=> (and bs!27389 (= (content!17 (left!1160 (left!1160 res!24729))) (content!17 (left!1160 res!24729))) (= (elem!230 (left!1160 res!24729)) (elem!230 res!24729))) (= inst!430 true)))

(declare-fun bs!27390 () Bool)

(assert (= bs!27390 (and b!54933 b!54931)))

(assert (=> (and bs!27390 (= (content!17 (left!1160 (left!1160 res!24729))) (content!17 (left!1160 res!24729))) (= (elem!230 (left!1160 res!24729)) (elem!230 res!24729))) (= inst!430 inst!428)))

(declare-fun bs!27391 () Bool)

(assert (= bs!27391 (and b!54933 neg-inst!414)))

(assert (=> (and bs!27391 (= (content!17 (left!1160 (left!1160 res!24729))) (content!17 (left!1160 thiss!7690))) (= (elem!230 (left!1160 res!24729)) (elem!230 thiss!7690))) (= inst!430 true)))

(declare-fun bs!27392 () Bool)

(assert (= bs!27392 (and b!54933 b!54929)))

(assert (=> (and bs!27392 (= (content!17 (left!1160 (left!1160 res!24729))) (content!17 (left!1160 thiss!7690))) (= (elem!230 (left!1160 res!24729)) (elem!230 thiss!7690))) (= inst!430 inst!426)))

(declare-fun b!54934 () Bool)

(declare-fun m!59842 () Bool)

(assert (=> b!54934 m!59842))

(declare-fun inst!431 () Bool)

(declare-fun x!21960 () (_ BitVec 32))

(assert (=> b!54934 (= inst!431 (=> true (or (not (member x!21960 (content!17 (right!1163 (left!1160 res!24729))))) (bvslt (elem!230 (left!1160 res!24729)) x!21960))))))

(declare-fun m!59844 () Bool)

(assert (=> b!54934 m!59844))

(declare-fun bs!27393 () Bool)

(assert (= bs!27393 (and b!54934 b!54932)))

(assert (=> (and bs!27393 (= (content!17 (right!1163 (left!1160 res!24729))) (content!17 (right!1163 res!24729))) (= (elem!230 (left!1160 res!24729)) (elem!230 res!24729))) (= inst!431 inst!429)))

(declare-fun bs!27394 () Bool)

(assert (= bs!27394 (and b!54934 neg-inst!417)))

(assert (=> (and bs!27394 (= (content!17 (right!1163 (left!1160 res!24729))) (content!17 (right!1163 res!24729))) (= (elem!230 (left!1160 res!24729)) (elem!230 res!24729))) (= inst!431 true)))

(declare-fun bs!27395 () Bool)

(assert (= bs!27395 (and b!54934 b!54930)))

(assert (=> (and bs!27395 (= (content!17 (right!1163 (left!1160 res!24729))) (content!17 (right!1163 thiss!7690))) (= (elem!230 (left!1160 res!24729)) (elem!230 thiss!7690))) (= inst!431 inst!427)))

(declare-fun bs!27396 () Bool)

(assert (= bs!27396 (and b!54934 neg-inst!415)))

(assert (=> (and bs!27396 (= (content!17 (right!1163 (left!1160 res!24729))) (content!17 (right!1163 thiss!7690))) (= (elem!230 (left!1160 res!24729)) (elem!230 thiss!7690))) (= inst!431 true)))

(declare-fun bs!27397 () Bool)

(declare-fun neg-inst!418 () Bool)

(assert (= bs!27397 neg-inst!418))

(assert (=> bs!27397 m!59838))

(declare-fun bs!27398 () Bool)

(declare-fun s!1729 () Bool)

(assert (= bs!27398 (and neg-inst!418 s!1729)))

(assert (=> bs!27398 (=> true (or (not (member x!21959 (content!17 (left!1160 (left!1160 res!24729))))) (bvslt x!21959 (elem!230 (left!1160 res!24729)))))))

(assert (=> m!59840 s!1729))

(declare-fun bs!27399 () Bool)

(assert (= bs!27399 (and neg-inst!418 b!54933)))

(assert (=> bs!27399 (= true inst!430)))

(declare-fun bs!27400 () Bool)

(assert (= bs!27400 (and neg-inst!418 neg-inst!416)))

(assert (=> (and bs!27400 (= (content!17 (left!1160 (left!1160 res!24729))) (content!17 (left!1160 res!24729))) (= (elem!230 (left!1160 res!24729)) (elem!230 res!24729))) (= true true)))

(declare-fun bs!27401 () Bool)

(assert (= bs!27401 (and neg-inst!418 b!54931)))

(assert (=> (and bs!27401 (= (content!17 (left!1160 (left!1160 res!24729))) (content!17 (left!1160 res!24729))) (= (elem!230 (left!1160 res!24729)) (elem!230 res!24729))) (= true inst!428)))

(declare-fun bs!27402 () Bool)

(assert (= bs!27402 (and neg-inst!418 neg-inst!414)))

(assert (=> (and bs!27402 (= (content!17 (left!1160 (left!1160 res!24729))) (content!17 (left!1160 thiss!7690))) (= (elem!230 (left!1160 res!24729)) (elem!230 thiss!7690))) (= true true)))

(declare-fun bs!27403 () Bool)

(assert (= bs!27403 (and neg-inst!418 b!54929)))

(assert (=> (and bs!27403 (= (content!17 (left!1160 (left!1160 res!24729))) (content!17 (left!1160 thiss!7690))) (= (elem!230 (left!1160 res!24729)) (elem!230 thiss!7690))) (= true inst!426)))

(declare-fun bs!27404 () Bool)

(declare-fun neg-inst!419 () Bool)

(assert (= bs!27404 neg-inst!419))

(assert (=> bs!27404 m!59842))

(declare-fun bs!27405 () Bool)

(declare-fun s!1731 () Bool)

(assert (= bs!27405 (and neg-inst!419 s!1731)))

(assert (=> bs!27405 (=> true (or (not (member x!21960 (content!17 (right!1163 (left!1160 res!24729))))) (bvslt (elem!230 (left!1160 res!24729)) x!21960)))))

(assert (=> m!59844 s!1731))

(declare-fun bs!27406 () Bool)

(assert (= bs!27406 (and neg-inst!419 b!54932)))

(assert (=> (and bs!27406 (= (content!17 (right!1163 (left!1160 res!24729))) (content!17 (right!1163 res!24729))) (= (elem!230 (left!1160 res!24729)) (elem!230 res!24729))) (= true inst!429)))

(declare-fun bs!27407 () Bool)

(assert (= bs!27407 (and neg-inst!419 b!54934)))

(assert (=> bs!27407 (= true inst!431)))

(declare-fun bs!27408 () Bool)

(assert (= bs!27408 (and neg-inst!419 neg-inst!417)))

(assert (=> (and bs!27408 (= (content!17 (right!1163 (left!1160 res!24729))) (content!17 (right!1163 res!24729))) (= (elem!230 (left!1160 res!24729)) (elem!230 res!24729))) (= true true)))

(declare-fun bs!27409 () Bool)

(assert (= bs!27409 (and neg-inst!419 b!54930)))

(assert (=> (and bs!27409 (= (content!17 (right!1163 (left!1160 res!24729))) (content!17 (right!1163 thiss!7690))) (= (elem!230 (left!1160 res!24729)) (elem!230 thiss!7690))) (= true inst!427)))

(declare-fun bs!27410 () Bool)

(assert (= bs!27410 (and neg-inst!419 neg-inst!415)))

(assert (=> (and bs!27410 (= (content!17 (right!1163 (left!1160 res!24729))) (content!17 (right!1163 thiss!7690))) (= (elem!230 (left!1160 res!24729)) (elem!230 thiss!7690))) (= true true)))

(declare-fun d!45170 () Bool)

(declare-fun res!25186 () Bool)

(declare-fun e!28910 () Bool)

(assert (=> d!45170 (=> res!25186 e!28910)))

(assert (=> d!45170 (= res!25186 (not (is-Node!130 (left!1160 res!24729))))))

(assert (=> d!45170 (= (inv!977 (left!1160 res!24729)) e!28910)))

(declare-fun e!28909 () Bool)

(assert (=> b!54933 (= e!28910 e!28909)))

(declare-fun res!25187 () Bool)

(assert (=> b!54933 (=> (not res!25187) (not e!28909))))

(assert (=> b!54933 (= res!25187 inst!430)))

(assert (=> b!54934 (= e!28909 inst!431)))

(assert (= (and d!45170 (not res!25186)) b!54933))

(assert (= neg-inst!418 inst!430))

(assert (= (and b!54933 res!25187) b!54934))

(assert (= neg-inst!419 inst!431))

(assert (=> b!54916 d!45170))

(declare-fun b!54935 () Bool)

(declare-fun m!59846 () Bool)

(assert (=> b!54935 m!59846))

(declare-fun inst!432 () Bool)

(declare-fun x!21961 () (_ BitVec 32))

(assert (=> b!54935 (= inst!432 (=> true (or (not (member x!21961 (content!17 (left!1160 (right!1163 res!24729))))) (bvslt x!21961 (elem!230 (right!1163 res!24729))))))))

(declare-fun m!59848 () Bool)

(assert (=> b!54935 m!59848))

(declare-fun bs!27411 () Bool)

(assert (= bs!27411 (and b!54935 b!54933)))

(assert (=> (and bs!27411 (= (content!17 (left!1160 (right!1163 res!24729))) (content!17 (left!1160 (left!1160 res!24729)))) (= (elem!230 (right!1163 res!24729)) (elem!230 (left!1160 res!24729)))) (= inst!432 inst!430)))

(declare-fun bs!27412 () Bool)

(assert (= bs!27412 (and b!54935 neg-inst!416)))

(assert (=> (and bs!27412 (= (content!17 (left!1160 (right!1163 res!24729))) (content!17 (left!1160 res!24729))) (= (elem!230 (right!1163 res!24729)) (elem!230 res!24729))) (= inst!432 true)))

(declare-fun bs!27413 () Bool)

(assert (= bs!27413 (and b!54935 b!54931)))

(assert (=> (and bs!27413 (= (content!17 (left!1160 (right!1163 res!24729))) (content!17 (left!1160 res!24729))) (= (elem!230 (right!1163 res!24729)) (elem!230 res!24729))) (= inst!432 inst!428)))

(declare-fun bs!27414 () Bool)

(assert (= bs!27414 (and b!54935 neg-inst!414)))

(assert (=> (and bs!27414 (= (content!17 (left!1160 (right!1163 res!24729))) (content!17 (left!1160 thiss!7690))) (= (elem!230 (right!1163 res!24729)) (elem!230 thiss!7690))) (= inst!432 true)))

(declare-fun bs!27415 () Bool)

(assert (= bs!27415 (and b!54935 neg-inst!418)))

(assert (=> (and bs!27415 (= (content!17 (left!1160 (right!1163 res!24729))) (content!17 (left!1160 (left!1160 res!24729)))) (= (elem!230 (right!1163 res!24729)) (elem!230 (left!1160 res!24729)))) (= inst!432 true)))

(declare-fun bs!27416 () Bool)

(assert (= bs!27416 (and b!54935 b!54929)))

(assert (=> (and bs!27416 (= (content!17 (left!1160 (right!1163 res!24729))) (content!17 (left!1160 thiss!7690))) (= (elem!230 (right!1163 res!24729)) (elem!230 thiss!7690))) (= inst!432 inst!426)))

(declare-fun b!54936 () Bool)

(declare-fun m!59850 () Bool)

(assert (=> b!54936 m!59850))

(declare-fun inst!433 () Bool)

(declare-fun x!21962 () (_ BitVec 32))

(assert (=> b!54936 (= inst!433 (=> true (or (not (member x!21962 (content!17 (right!1163 (right!1163 res!24729))))) (bvslt (elem!230 (right!1163 res!24729)) x!21962))))))

(declare-fun m!59852 () Bool)

(assert (=> b!54936 m!59852))

(declare-fun bs!27417 () Bool)

(assert (= bs!27417 (and b!54936 neg-inst!419)))

(assert (=> (and bs!27417 (= (content!17 (right!1163 (right!1163 res!24729))) (content!17 (right!1163 (left!1160 res!24729)))) (= (elem!230 (right!1163 res!24729)) (elem!230 (left!1160 res!24729)))) (= inst!433 true)))

(declare-fun bs!27418 () Bool)

(assert (= bs!27418 (and b!54936 b!54932)))

(assert (=> (and bs!27418 (= (content!17 (right!1163 (right!1163 res!24729))) (content!17 (right!1163 res!24729))) (= (elem!230 (right!1163 res!24729)) (elem!230 res!24729))) (= inst!433 inst!429)))

(declare-fun bs!27419 () Bool)

(assert (= bs!27419 (and b!54936 b!54934)))

(assert (=> (and bs!27419 (= (content!17 (right!1163 (right!1163 res!24729))) (content!17 (right!1163 (left!1160 res!24729)))) (= (elem!230 (right!1163 res!24729)) (elem!230 (left!1160 res!24729)))) (= inst!433 inst!431)))

(declare-fun bs!27420 () Bool)

(assert (= bs!27420 (and b!54936 neg-inst!417)))

(assert (=> (and bs!27420 (= (content!17 (right!1163 (right!1163 res!24729))) (content!17 (right!1163 res!24729))) (= (elem!230 (right!1163 res!24729)) (elem!230 res!24729))) (= inst!433 true)))

(declare-fun bs!27421 () Bool)

(assert (= bs!27421 (and b!54936 b!54930)))

(assert (=> (and bs!27421 (= (content!17 (right!1163 (right!1163 res!24729))) (content!17 (right!1163 thiss!7690))) (= (elem!230 (right!1163 res!24729)) (elem!230 thiss!7690))) (= inst!433 inst!427)))

(declare-fun bs!27422 () Bool)

(assert (= bs!27422 (and b!54936 neg-inst!415)))

(assert (=> (and bs!27422 (= (content!17 (right!1163 (right!1163 res!24729))) (content!17 (right!1163 thiss!7690))) (= (elem!230 (right!1163 res!24729)) (elem!230 thiss!7690))) (= inst!433 true)))

(declare-fun bs!27423 () Bool)

(declare-fun neg-inst!420 () Bool)

(assert (= bs!27423 neg-inst!420))

(assert (=> bs!27423 m!59846))

(declare-fun bs!27424 () Bool)

(declare-fun s!1733 () Bool)

(assert (= bs!27424 (and neg-inst!420 s!1733)))

(assert (=> bs!27424 (=> true (or (not (member x!21961 (content!17 (left!1160 (right!1163 res!24729))))) (bvslt x!21961 (elem!230 (right!1163 res!24729)))))))

(assert (=> m!59848 s!1733))

(declare-fun bs!27425 () Bool)

(assert (= bs!27425 (and neg-inst!420 b!54931)))

(assert (=> (and bs!27425 (= (content!17 (left!1160 (right!1163 res!24729))) (content!17 (left!1160 res!24729))) (= (elem!230 (right!1163 res!24729)) (elem!230 res!24729))) (= true inst!428)))

(declare-fun bs!27426 () Bool)

(assert (= bs!27426 (and neg-inst!420 neg-inst!416)))

(assert (=> (and bs!27426 (= (content!17 (left!1160 (right!1163 res!24729))) (content!17 (left!1160 res!24729))) (= (elem!230 (right!1163 res!24729)) (elem!230 res!24729))) (= true true)))

(declare-fun bs!27427 () Bool)

(assert (= bs!27427 (and neg-inst!420 b!54933)))

(assert (=> (and bs!27427 (= (content!17 (left!1160 (right!1163 res!24729))) (content!17 (left!1160 (left!1160 res!24729)))) (= (elem!230 (right!1163 res!24729)) (elem!230 (left!1160 res!24729)))) (= true inst!430)))

(declare-fun bs!27428 () Bool)

(assert (= bs!27428 (and neg-inst!420 neg-inst!414)))

(assert (=> (and bs!27428 (= (content!17 (left!1160 (right!1163 res!24729))) (content!17 (left!1160 thiss!7690))) (= (elem!230 (right!1163 res!24729)) (elem!230 thiss!7690))) (= true true)))

(declare-fun bs!27429 () Bool)

(assert (= bs!27429 (and neg-inst!420 neg-inst!418)))

(assert (=> (and bs!27429 (= (content!17 (left!1160 (right!1163 res!24729))) (content!17 (left!1160 (left!1160 res!24729)))) (= (elem!230 (right!1163 res!24729)) (elem!230 (left!1160 res!24729)))) (= true true)))

(declare-fun bs!27430 () Bool)

(assert (= bs!27430 (and neg-inst!420 b!54935)))

(assert (=> bs!27430 (= true inst!432)))

(declare-fun bs!27431 () Bool)

(assert (= bs!27431 (and neg-inst!420 b!54929)))

(assert (=> (and bs!27431 (= (content!17 (left!1160 (right!1163 res!24729))) (content!17 (left!1160 thiss!7690))) (= (elem!230 (right!1163 res!24729)) (elem!230 thiss!7690))) (= true inst!426)))

(declare-fun bs!27432 () Bool)

(declare-fun neg-inst!421 () Bool)

(assert (= bs!27432 neg-inst!421))

(assert (=> bs!27432 m!59850))

(declare-fun bs!27433 () Bool)

(declare-fun s!1735 () Bool)

(assert (= bs!27433 (and neg-inst!421 s!1735)))

(assert (=> bs!27433 (=> true (or (not (member x!21962 (content!17 (right!1163 (right!1163 res!24729))))) (bvslt (elem!230 (right!1163 res!24729)) x!21962)))))

(assert (=> m!59852 s!1735))

(declare-fun bs!27434 () Bool)

(assert (= bs!27434 (and neg-inst!421 neg-inst!419)))

(assert (=> (and bs!27434 (= (content!17 (right!1163 (right!1163 res!24729))) (content!17 (right!1163 (left!1160 res!24729)))) (= (elem!230 (right!1163 res!24729)) (elem!230 (left!1160 res!24729)))) (= true true)))

(declare-fun bs!27435 () Bool)

(assert (= bs!27435 (and neg-inst!421 b!54932)))

(assert (=> (and bs!27435 (= (content!17 (right!1163 (right!1163 res!24729))) (content!17 (right!1163 res!24729))) (= (elem!230 (right!1163 res!24729)) (elem!230 res!24729))) (= true inst!429)))

(declare-fun bs!27436 () Bool)

(assert (= bs!27436 (and neg-inst!421 b!54934)))

(assert (=> (and bs!27436 (= (content!17 (right!1163 (right!1163 res!24729))) (content!17 (right!1163 (left!1160 res!24729)))) (= (elem!230 (right!1163 res!24729)) (elem!230 (left!1160 res!24729)))) (= true inst!431)))

(declare-fun bs!27437 () Bool)

(assert (= bs!27437 (and neg-inst!421 b!54936)))

(assert (=> bs!27437 (= true inst!433)))

(declare-fun bs!27438 () Bool)

(assert (= bs!27438 (and neg-inst!421 neg-inst!417)))

(assert (=> (and bs!27438 (= (content!17 (right!1163 (right!1163 res!24729))) (content!17 (right!1163 res!24729))) (= (elem!230 (right!1163 res!24729)) (elem!230 res!24729))) (= true true)))

(declare-fun bs!27439 () Bool)

(assert (= bs!27439 (and neg-inst!421 b!54930)))

(assert (=> (and bs!27439 (= (content!17 (right!1163 (right!1163 res!24729))) (content!17 (right!1163 thiss!7690))) (= (elem!230 (right!1163 res!24729)) (elem!230 thiss!7690))) (= true inst!427)))

(declare-fun bs!27440 () Bool)

(assert (= bs!27440 (and neg-inst!421 neg-inst!415)))

(assert (=> (and bs!27440 (= (content!17 (right!1163 (right!1163 res!24729))) (content!17 (right!1163 thiss!7690))) (= (elem!230 (right!1163 res!24729)) (elem!230 thiss!7690))) (= true true)))

(declare-fun d!45172 () Bool)

(declare-fun res!25188 () Bool)

(declare-fun e!28912 () Bool)

(assert (=> d!45172 (=> res!25188 e!28912)))

(assert (=> d!45172 (= res!25188 (not (is-Node!130 (right!1163 res!24729))))))

(assert (=> d!45172 (= (inv!977 (right!1163 res!24729)) e!28912)))

(declare-fun e!28911 () Bool)

(assert (=> b!54935 (= e!28912 e!28911)))

(declare-fun res!25189 () Bool)

(assert (=> b!54935 (=> (not res!25189) (not e!28911))))

(assert (=> b!54935 (= res!25189 inst!432)))

(assert (=> b!54936 (= e!28911 inst!433)))

(assert (= (and d!45172 (not res!25188)) b!54935))

(assert (= neg-inst!420 inst!432))

(assert (= (and b!54935 res!25189) b!54936))

(assert (= neg-inst!421 inst!433))

(assert (=> b!54916 d!45172))

(declare-fun b!54937 () Bool)

(declare-fun m!59854 () Bool)

(assert (=> b!54937 m!59854))

(declare-fun inst!434 () Bool)

(declare-fun x!21963 () (_ BitVec 32))

(assert (=> b!54937 (= inst!434 (=> true (or (not (member x!21963 (content!17 (left!1160 (left!1160 thiss!7690))))) (bvslt x!21963 (elem!230 (left!1160 thiss!7690))))))))

(declare-fun m!59856 () Bool)

(assert (=> b!54937 m!59856))

(declare-fun bs!27441 () Bool)

(assert (= bs!27441 (and b!54937 b!54931)))

(assert (=> (and bs!27441 (= (content!17 (left!1160 (left!1160 thiss!7690))) (content!17 (left!1160 res!24729))) (= (elem!230 (left!1160 thiss!7690)) (elem!230 res!24729))) (= inst!434 inst!428)))

(declare-fun bs!27442 () Bool)

(assert (= bs!27442 (and b!54937 neg-inst!416)))

(assert (=> (and bs!27442 (= (content!17 (left!1160 (left!1160 thiss!7690))) (content!17 (left!1160 res!24729))) (= (elem!230 (left!1160 thiss!7690)) (elem!230 res!24729))) (= inst!434 true)))

(declare-fun bs!27443 () Bool)

(assert (= bs!27443 (and b!54937 b!54933)))

(assert (=> (and bs!27443 (= (content!17 (left!1160 (left!1160 thiss!7690))) (content!17 (left!1160 (left!1160 res!24729)))) (= (elem!230 (left!1160 thiss!7690)) (elem!230 (left!1160 res!24729)))) (= inst!434 inst!430)))

(declare-fun bs!27444 () Bool)

(assert (= bs!27444 (and b!54937 neg-inst!414)))

(assert (=> (and bs!27444 (= (content!17 (left!1160 (left!1160 thiss!7690))) (content!17 (left!1160 thiss!7690))) (= (elem!230 (left!1160 thiss!7690)) (elem!230 thiss!7690))) (= inst!434 true)))

(declare-fun bs!27445 () Bool)

(assert (= bs!27445 (and b!54937 neg-inst!418)))

(assert (=> (and bs!27445 (= (content!17 (left!1160 (left!1160 thiss!7690))) (content!17 (left!1160 (left!1160 res!24729)))) (= (elem!230 (left!1160 thiss!7690)) (elem!230 (left!1160 res!24729)))) (= inst!434 true)))

(declare-fun bs!27446 () Bool)

(assert (= bs!27446 (and b!54937 neg-inst!420)))

(assert (=> (and bs!27446 (= (content!17 (left!1160 (left!1160 thiss!7690))) (content!17 (left!1160 (right!1163 res!24729)))) (= (elem!230 (left!1160 thiss!7690)) (elem!230 (right!1163 res!24729)))) (= inst!434 true)))

(declare-fun bs!27447 () Bool)

(assert (= bs!27447 (and b!54937 b!54935)))

(assert (=> (and bs!27447 (= (content!17 (left!1160 (left!1160 thiss!7690))) (content!17 (left!1160 (right!1163 res!24729)))) (= (elem!230 (left!1160 thiss!7690)) (elem!230 (right!1163 res!24729)))) (= inst!434 inst!432)))

(declare-fun bs!27448 () Bool)

(assert (= bs!27448 (and b!54937 b!54929)))

(assert (=> (and bs!27448 (= (content!17 (left!1160 (left!1160 thiss!7690))) (content!17 (left!1160 thiss!7690))) (= (elem!230 (left!1160 thiss!7690)) (elem!230 thiss!7690))) (= inst!434 inst!426)))

(declare-fun b!54938 () Bool)

(declare-fun m!59858 () Bool)

(assert (=> b!54938 m!59858))

(declare-fun inst!435 () Bool)

(declare-fun x!21964 () (_ BitVec 32))

(assert (=> b!54938 (= inst!435 (=> true (or (not (member x!21964 (content!17 (right!1163 (left!1160 thiss!7690))))) (bvslt (elem!230 (left!1160 thiss!7690)) x!21964))))))

(declare-fun m!59860 () Bool)

(assert (=> b!54938 m!59860))

(declare-fun bs!27449 () Bool)

(assert (= bs!27449 (and b!54938 neg-inst!419)))

(assert (=> (and bs!27449 (= (content!17 (right!1163 (left!1160 thiss!7690))) (content!17 (right!1163 (left!1160 res!24729)))) (= (elem!230 (left!1160 thiss!7690)) (elem!230 (left!1160 res!24729)))) (= inst!435 true)))

(declare-fun bs!27450 () Bool)

(assert (= bs!27450 (and b!54938 neg-inst!421)))

(assert (=> (and bs!27450 (= (content!17 (right!1163 (left!1160 thiss!7690))) (content!17 (right!1163 (right!1163 res!24729)))) (= (elem!230 (left!1160 thiss!7690)) (elem!230 (right!1163 res!24729)))) (= inst!435 true)))

(declare-fun bs!27451 () Bool)

(assert (= bs!27451 (and b!54938 b!54932)))

(assert (=> (and bs!27451 (= (content!17 (right!1163 (left!1160 thiss!7690))) (content!17 (right!1163 res!24729))) (= (elem!230 (left!1160 thiss!7690)) (elem!230 res!24729))) (= inst!435 inst!429)))

(declare-fun bs!27452 () Bool)

(assert (= bs!27452 (and b!54938 b!54934)))

(assert (=> (and bs!27452 (= (content!17 (right!1163 (left!1160 thiss!7690))) (content!17 (right!1163 (left!1160 res!24729)))) (= (elem!230 (left!1160 thiss!7690)) (elem!230 (left!1160 res!24729)))) (= inst!435 inst!431)))

(declare-fun bs!27453 () Bool)

(assert (= bs!27453 (and b!54938 b!54936)))

(assert (=> (and bs!27453 (= (content!17 (right!1163 (left!1160 thiss!7690))) (content!17 (right!1163 (right!1163 res!24729)))) (= (elem!230 (left!1160 thiss!7690)) (elem!230 (right!1163 res!24729)))) (= inst!435 inst!433)))

(declare-fun bs!27454 () Bool)

(assert (= bs!27454 (and b!54938 neg-inst!417)))

(assert (=> (and bs!27454 (= (content!17 (right!1163 (left!1160 thiss!7690))) (content!17 (right!1163 res!24729))) (= (elem!230 (left!1160 thiss!7690)) (elem!230 res!24729))) (= inst!435 true)))

(declare-fun bs!27455 () Bool)

(assert (= bs!27455 (and b!54938 b!54930)))

(assert (=> (and bs!27455 (= (content!17 (right!1163 (left!1160 thiss!7690))) (content!17 (right!1163 thiss!7690))) (= (elem!230 (left!1160 thiss!7690)) (elem!230 thiss!7690))) (= inst!435 inst!427)))

(declare-fun bs!27456 () Bool)

(assert (= bs!27456 (and b!54938 neg-inst!415)))

(assert (=> (and bs!27456 (= (content!17 (right!1163 (left!1160 thiss!7690))) (content!17 (right!1163 thiss!7690))) (= (elem!230 (left!1160 thiss!7690)) (elem!230 thiss!7690))) (= inst!435 true)))

(declare-fun bs!27457 () Bool)

(declare-fun neg-inst!422 () Bool)

(assert (= bs!27457 neg-inst!422))

(assert (=> bs!27457 m!59854))

(declare-fun bs!27458 () Bool)

(declare-fun s!1737 () Bool)

(assert (= bs!27458 (and neg-inst!422 s!1737)))

(assert (=> bs!27458 (=> true (or (not (member x!21963 (content!17 (left!1160 (left!1160 thiss!7690))))) (bvslt x!21963 (elem!230 (left!1160 thiss!7690)))))))

(assert (=> m!59856 s!1737))

(declare-fun bs!27459 () Bool)

(assert (= bs!27459 (and neg-inst!422 b!54931)))

(assert (=> (and bs!27459 (= (content!17 (left!1160 (left!1160 thiss!7690))) (content!17 (left!1160 res!24729))) (= (elem!230 (left!1160 thiss!7690)) (elem!230 res!24729))) (= true inst!428)))

(declare-fun bs!27460 () Bool)

(assert (= bs!27460 (and neg-inst!422 neg-inst!416)))

(assert (=> (and bs!27460 (= (content!17 (left!1160 (left!1160 thiss!7690))) (content!17 (left!1160 res!24729))) (= (elem!230 (left!1160 thiss!7690)) (elem!230 res!24729))) (= true true)))

(declare-fun bs!27461 () Bool)

(assert (= bs!27461 (and neg-inst!422 b!54933)))

(assert (=> (and bs!27461 (= (content!17 (left!1160 (left!1160 thiss!7690))) (content!17 (left!1160 (left!1160 res!24729)))) (= (elem!230 (left!1160 thiss!7690)) (elem!230 (left!1160 res!24729)))) (= true inst!430)))

(declare-fun bs!27462 () Bool)

(assert (= bs!27462 (and neg-inst!422 neg-inst!414)))

(assert (=> (and bs!27462 (= (content!17 (left!1160 (left!1160 thiss!7690))) (content!17 (left!1160 thiss!7690))) (= (elem!230 (left!1160 thiss!7690)) (elem!230 thiss!7690))) (= true true)))

(declare-fun bs!27463 () Bool)

(assert (= bs!27463 (and neg-inst!422 neg-inst!418)))

(assert (=> (and bs!27463 (= (content!17 (left!1160 (left!1160 thiss!7690))) (content!17 (left!1160 (left!1160 res!24729)))) (= (elem!230 (left!1160 thiss!7690)) (elem!230 (left!1160 res!24729)))) (= true true)))

(declare-fun bs!27464 () Bool)

(assert (= bs!27464 (and neg-inst!422 b!54937)))

(assert (=> bs!27464 (= true inst!434)))

(declare-fun bs!27465 () Bool)

(assert (= bs!27465 (and neg-inst!422 neg-inst!420)))

(assert (=> (and bs!27465 (= (content!17 (left!1160 (left!1160 thiss!7690))) (content!17 (left!1160 (right!1163 res!24729)))) (= (elem!230 (left!1160 thiss!7690)) (elem!230 (right!1163 res!24729)))) (= true true)))

(declare-fun bs!27466 () Bool)

(assert (= bs!27466 (and neg-inst!422 b!54935)))

(assert (=> (and bs!27466 (= (content!17 (left!1160 (left!1160 thiss!7690))) (content!17 (left!1160 (right!1163 res!24729)))) (= (elem!230 (left!1160 thiss!7690)) (elem!230 (right!1163 res!24729)))) (= true inst!432)))

(declare-fun bs!27467 () Bool)

(assert (= bs!27467 (and neg-inst!422 b!54929)))

(assert (=> (and bs!27467 (= (content!17 (left!1160 (left!1160 thiss!7690))) (content!17 (left!1160 thiss!7690))) (= (elem!230 (left!1160 thiss!7690)) (elem!230 thiss!7690))) (= true inst!426)))

(declare-fun bs!27468 () Bool)

(declare-fun neg-inst!423 () Bool)

(assert (= bs!27468 neg-inst!423))

(assert (=> bs!27468 m!59858))

(declare-fun bs!27469 () Bool)

(declare-fun s!1739 () Bool)

(assert (= bs!27469 (and neg-inst!423 s!1739)))

(assert (=> bs!27469 (=> true (or (not (member x!21964 (content!17 (right!1163 (left!1160 thiss!7690))))) (bvslt (elem!230 (left!1160 thiss!7690)) x!21964)))))

(assert (=> m!59860 s!1739))

(declare-fun bs!27470 () Bool)

(assert (= bs!27470 (and neg-inst!423 neg-inst!419)))

(assert (=> (and bs!27470 (= (content!17 (right!1163 (left!1160 thiss!7690))) (content!17 (right!1163 (left!1160 res!24729)))) (= (elem!230 (left!1160 thiss!7690)) (elem!230 (left!1160 res!24729)))) (= true true)))

(declare-fun bs!27471 () Bool)

(assert (= bs!27471 (and neg-inst!423 neg-inst!421)))

(assert (=> (and bs!27471 (= (content!17 (right!1163 (left!1160 thiss!7690))) (content!17 (right!1163 (right!1163 res!24729)))) (= (elem!230 (left!1160 thiss!7690)) (elem!230 (right!1163 res!24729)))) (= true true)))

(declare-fun bs!27472 () Bool)

(assert (= bs!27472 (and neg-inst!423 b!54932)))

(assert (=> (and bs!27472 (= (content!17 (right!1163 (left!1160 thiss!7690))) (content!17 (right!1163 res!24729))) (= (elem!230 (left!1160 thiss!7690)) (elem!230 res!24729))) (= true inst!429)))

(declare-fun bs!27473 () Bool)

(assert (= bs!27473 (and neg-inst!423 b!54934)))

(assert (=> (and bs!27473 (= (content!17 (right!1163 (left!1160 thiss!7690))) (content!17 (right!1163 (left!1160 res!24729)))) (= (elem!230 (left!1160 thiss!7690)) (elem!230 (left!1160 res!24729)))) (= true inst!431)))

(declare-fun bs!27474 () Bool)

(assert (= bs!27474 (and neg-inst!423 b!54936)))

(assert (=> (and bs!27474 (= (content!17 (right!1163 (left!1160 thiss!7690))) (content!17 (right!1163 (right!1163 res!24729)))) (= (elem!230 (left!1160 thiss!7690)) (elem!230 (right!1163 res!24729)))) (= true inst!433)))

(declare-fun bs!27475 () Bool)

(assert (= bs!27475 (and neg-inst!423 neg-inst!417)))

(assert (=> (and bs!27475 (= (content!17 (right!1163 (left!1160 thiss!7690))) (content!17 (right!1163 res!24729))) (= (elem!230 (left!1160 thiss!7690)) (elem!230 res!24729))) (= true true)))

(declare-fun bs!27476 () Bool)

(assert (= bs!27476 (and neg-inst!423 b!54930)))

(assert (=> (and bs!27476 (= (content!17 (right!1163 (left!1160 thiss!7690))) (content!17 (right!1163 thiss!7690))) (= (elem!230 (left!1160 thiss!7690)) (elem!230 thiss!7690))) (= true inst!427)))

(declare-fun bs!27477 () Bool)

(assert (= bs!27477 (and neg-inst!423 b!54938)))

(assert (=> bs!27477 (= true inst!435)))

(declare-fun bs!27478 () Bool)

(assert (= bs!27478 (and neg-inst!423 neg-inst!415)))

(assert (=> (and bs!27478 (= (content!17 (right!1163 (left!1160 thiss!7690))) (content!17 (right!1163 thiss!7690))) (= (elem!230 (left!1160 thiss!7690)) (elem!230 thiss!7690))) (= true true)))

(declare-fun d!45174 () Bool)

(declare-fun res!25190 () Bool)

(declare-fun e!28914 () Bool)

(assert (=> d!45174 (=> res!25190 e!28914)))

(assert (=> d!45174 (= res!25190 (not (is-Node!130 (left!1160 thiss!7690))))))

(assert (=> d!45174 (= (inv!977 (left!1160 thiss!7690)) e!28914)))

(declare-fun e!28913 () Bool)

(assert (=> b!54937 (= e!28914 e!28913)))

(declare-fun res!25191 () Bool)

(assert (=> b!54937 (=> (not res!25191) (not e!28913))))

(assert (=> b!54937 (= res!25191 inst!434)))

(assert (=> b!54938 (= e!28913 inst!435)))

(assert (= (and d!45174 (not res!25190)) b!54937))

(assert (= neg-inst!422 inst!434))

(assert (= (and b!54937 res!25191) b!54938))

(assert (= neg-inst!423 inst!435))

(assert (=> b!54915 d!45174))

(declare-fun b!54939 () Bool)

(declare-fun m!59862 () Bool)

(assert (=> b!54939 m!59862))

(declare-fun inst!436 () Bool)

(declare-fun x!21965 () (_ BitVec 32))

(assert (=> b!54939 (= inst!436 (=> true (or (not (member x!21965 (content!17 (left!1160 (right!1163 thiss!7690))))) (bvslt x!21965 (elem!230 (right!1163 thiss!7690))))))))

(declare-fun m!59864 () Bool)

(assert (=> b!54939 m!59864))

(declare-fun bs!27479 () Bool)

(assert (= bs!27479 (and b!54939 b!54931)))

(assert (=> (and bs!27479 (= (content!17 (left!1160 (right!1163 thiss!7690))) (content!17 (left!1160 res!24729))) (= (elem!230 (right!1163 thiss!7690)) (elem!230 res!24729))) (= inst!436 inst!428)))

(declare-fun bs!27480 () Bool)

(assert (= bs!27480 (and b!54939 neg-inst!416)))

(assert (=> (and bs!27480 (= (content!17 (left!1160 (right!1163 thiss!7690))) (content!17 (left!1160 res!24729))) (= (elem!230 (right!1163 thiss!7690)) (elem!230 res!24729))) (= inst!436 true)))

(declare-fun bs!27481 () Bool)

(assert (= bs!27481 (and b!54939 neg-inst!422)))

(assert (=> (and bs!27481 (= (content!17 (left!1160 (right!1163 thiss!7690))) (content!17 (left!1160 (left!1160 thiss!7690)))) (= (elem!230 (right!1163 thiss!7690)) (elem!230 (left!1160 thiss!7690)))) (= inst!436 true)))

(declare-fun bs!27482 () Bool)

(assert (= bs!27482 (and b!54939 b!54933)))

(assert (=> (and bs!27482 (= (content!17 (left!1160 (right!1163 thiss!7690))) (content!17 (left!1160 (left!1160 res!24729)))) (= (elem!230 (right!1163 thiss!7690)) (elem!230 (left!1160 res!24729)))) (= inst!436 inst!430)))

(declare-fun bs!27483 () Bool)

(assert (= bs!27483 (and b!54939 neg-inst!414)))

(assert (=> (and bs!27483 (= (content!17 (left!1160 (right!1163 thiss!7690))) (content!17 (left!1160 thiss!7690))) (= (elem!230 (right!1163 thiss!7690)) (elem!230 thiss!7690))) (= inst!436 true)))

(declare-fun bs!27484 () Bool)

(assert (= bs!27484 (and b!54939 neg-inst!418)))

(assert (=> (and bs!27484 (= (content!17 (left!1160 (right!1163 thiss!7690))) (content!17 (left!1160 (left!1160 res!24729)))) (= (elem!230 (right!1163 thiss!7690)) (elem!230 (left!1160 res!24729)))) (= inst!436 true)))

(declare-fun bs!27485 () Bool)

(assert (= bs!27485 (and b!54939 b!54937)))

(assert (=> (and bs!27485 (= (content!17 (left!1160 (right!1163 thiss!7690))) (content!17 (left!1160 (left!1160 thiss!7690)))) (= (elem!230 (right!1163 thiss!7690)) (elem!230 (left!1160 thiss!7690)))) (= inst!436 inst!434)))

(declare-fun bs!27486 () Bool)

(assert (= bs!27486 (and b!54939 neg-inst!420)))

(assert (=> (and bs!27486 (= (content!17 (left!1160 (right!1163 thiss!7690))) (content!17 (left!1160 (right!1163 res!24729)))) (= (elem!230 (right!1163 thiss!7690)) (elem!230 (right!1163 res!24729)))) (= inst!436 true)))

(declare-fun bs!27487 () Bool)

(assert (= bs!27487 (and b!54939 b!54935)))

(assert (=> (and bs!27487 (= (content!17 (left!1160 (right!1163 thiss!7690))) (content!17 (left!1160 (right!1163 res!24729)))) (= (elem!230 (right!1163 thiss!7690)) (elem!230 (right!1163 res!24729)))) (= inst!436 inst!432)))

(declare-fun bs!27488 () Bool)

(assert (= bs!27488 (and b!54939 b!54929)))

(assert (=> (and bs!27488 (= (content!17 (left!1160 (right!1163 thiss!7690))) (content!17 (left!1160 thiss!7690))) (= (elem!230 (right!1163 thiss!7690)) (elem!230 thiss!7690))) (= inst!436 inst!426)))

(declare-fun b!54940 () Bool)

(declare-fun m!59866 () Bool)

(assert (=> b!54940 m!59866))

(declare-fun inst!437 () Bool)

(declare-fun x!21966 () (_ BitVec 32))

(assert (=> b!54940 (= inst!437 (=> true (or (not (member x!21966 (content!17 (right!1163 (right!1163 thiss!7690))))) (bvslt (elem!230 (right!1163 thiss!7690)) x!21966))))))

(declare-fun m!59868 () Bool)

(assert (=> b!54940 m!59868))

(declare-fun bs!27489 () Bool)

(assert (= bs!27489 (and b!54940 neg-inst!419)))

(assert (=> (and bs!27489 (= (content!17 (right!1163 (right!1163 thiss!7690))) (content!17 (right!1163 (left!1160 res!24729)))) (= (elem!230 (right!1163 thiss!7690)) (elem!230 (left!1160 res!24729)))) (= inst!437 true)))

(declare-fun bs!27490 () Bool)

(assert (= bs!27490 (and b!54940 neg-inst!423)))

(assert (=> (and bs!27490 (= (content!17 (right!1163 (right!1163 thiss!7690))) (content!17 (right!1163 (left!1160 thiss!7690)))) (= (elem!230 (right!1163 thiss!7690)) (elem!230 (left!1160 thiss!7690)))) (= inst!437 true)))

(declare-fun bs!27491 () Bool)

(assert (= bs!27491 (and b!54940 neg-inst!421)))

(assert (=> (and bs!27491 (= (content!17 (right!1163 (right!1163 thiss!7690))) (content!17 (right!1163 (right!1163 res!24729)))) (= (elem!230 (right!1163 thiss!7690)) (elem!230 (right!1163 res!24729)))) (= inst!437 true)))

(declare-fun bs!27492 () Bool)

(assert (= bs!27492 (and b!54940 b!54932)))

(assert (=> (and bs!27492 (= (content!17 (right!1163 (right!1163 thiss!7690))) (content!17 (right!1163 res!24729))) (= (elem!230 (right!1163 thiss!7690)) (elem!230 res!24729))) (= inst!437 inst!429)))

(declare-fun bs!27493 () Bool)

(assert (= bs!27493 (and b!54940 b!54934)))

(assert (=> (and bs!27493 (= (content!17 (right!1163 (right!1163 thiss!7690))) (content!17 (right!1163 (left!1160 res!24729)))) (= (elem!230 (right!1163 thiss!7690)) (elem!230 (left!1160 res!24729)))) (= inst!437 inst!431)))

(declare-fun bs!27494 () Bool)

(assert (= bs!27494 (and b!54940 b!54936)))

(assert (=> (and bs!27494 (= (content!17 (right!1163 (right!1163 thiss!7690))) (content!17 (right!1163 (right!1163 res!24729)))) (= (elem!230 (right!1163 thiss!7690)) (elem!230 (right!1163 res!24729)))) (= inst!437 inst!433)))

(declare-fun bs!27495 () Bool)

(assert (= bs!27495 (and b!54940 neg-inst!417)))

(assert (=> (and bs!27495 (= (content!17 (right!1163 (right!1163 thiss!7690))) (content!17 (right!1163 res!24729))) (= (elem!230 (right!1163 thiss!7690)) (elem!230 res!24729))) (= inst!437 true)))

(declare-fun bs!27496 () Bool)

(assert (= bs!27496 (and b!54940 b!54930)))

(assert (=> (and bs!27496 (= (content!17 (right!1163 (right!1163 thiss!7690))) (content!17 (right!1163 thiss!7690))) (= (elem!230 (right!1163 thiss!7690)) (elem!230 thiss!7690))) (= inst!437 inst!427)))

(declare-fun bs!27497 () Bool)

(assert (= bs!27497 (and b!54940 b!54938)))

(assert (=> (and bs!27497 (= (content!17 (right!1163 (right!1163 thiss!7690))) (content!17 (right!1163 (left!1160 thiss!7690)))) (= (elem!230 (right!1163 thiss!7690)) (elem!230 (left!1160 thiss!7690)))) (= inst!437 inst!435)))

(declare-fun bs!27498 () Bool)

(assert (= bs!27498 (and b!54940 neg-inst!415)))

(assert (=> (and bs!27498 (= (content!17 (right!1163 (right!1163 thiss!7690))) (content!17 (right!1163 thiss!7690))) (= (elem!230 (right!1163 thiss!7690)) (elem!230 thiss!7690))) (= inst!437 true)))

(declare-fun bs!27499 () Bool)

(declare-fun neg-inst!424 () Bool)

(assert (= bs!27499 neg-inst!424))

(assert (=> bs!27499 m!59862))

(declare-fun bs!27500 () Bool)

(declare-fun s!1741 () Bool)

(assert (= bs!27500 (and neg-inst!424 s!1741)))

(assert (=> bs!27500 (=> true (or (not (member x!21965 (content!17 (left!1160 (right!1163 thiss!7690))))) (bvslt x!21965 (elem!230 (right!1163 thiss!7690)))))))

(assert (=> m!59864 s!1741))

(declare-fun bs!27501 () Bool)

(assert (= bs!27501 (and neg-inst!424 b!54931)))

(assert (=> (and bs!27501 (= (content!17 (left!1160 (right!1163 thiss!7690))) (content!17 (left!1160 res!24729))) (= (elem!230 (right!1163 thiss!7690)) (elem!230 res!24729))) (= true inst!428)))

(declare-fun bs!27502 () Bool)

(assert (= bs!27502 (and neg-inst!424 neg-inst!416)))

(assert (=> (and bs!27502 (= (content!17 (left!1160 (right!1163 thiss!7690))) (content!17 (left!1160 res!24729))) (= (elem!230 (right!1163 thiss!7690)) (elem!230 res!24729))) (= true true)))

(declare-fun bs!27503 () Bool)

(assert (= bs!27503 (and neg-inst!424 neg-inst!422)))

(assert (=> (and bs!27503 (= (content!17 (left!1160 (right!1163 thiss!7690))) (content!17 (left!1160 (left!1160 thiss!7690)))) (= (elem!230 (right!1163 thiss!7690)) (elem!230 (left!1160 thiss!7690)))) (= true true)))

(declare-fun bs!27504 () Bool)

(assert (= bs!27504 (and neg-inst!424 b!54933)))

(assert (=> (and bs!27504 (= (content!17 (left!1160 (right!1163 thiss!7690))) (content!17 (left!1160 (left!1160 res!24729)))) (= (elem!230 (right!1163 thiss!7690)) (elem!230 (left!1160 res!24729)))) (= true inst!430)))

(declare-fun bs!27505 () Bool)

(assert (= bs!27505 (and neg-inst!424 neg-inst!414)))

(assert (=> (and bs!27505 (= (content!17 (left!1160 (right!1163 thiss!7690))) (content!17 (left!1160 thiss!7690))) (= (elem!230 (right!1163 thiss!7690)) (elem!230 thiss!7690))) (= true true)))

(declare-fun bs!27506 () Bool)

(assert (= bs!27506 (and neg-inst!424 b!54939)))

(assert (=> bs!27506 (= true inst!436)))

(declare-fun bs!27507 () Bool)

(assert (= bs!27507 (and neg-inst!424 neg-inst!418)))

(assert (=> (and bs!27507 (= (content!17 (left!1160 (right!1163 thiss!7690))) (content!17 (left!1160 (left!1160 res!24729)))) (= (elem!230 (right!1163 thiss!7690)) (elem!230 (left!1160 res!24729)))) (= true true)))

(declare-fun bs!27508 () Bool)

(assert (= bs!27508 (and neg-inst!424 b!54937)))

(assert (=> (and bs!27508 (= (content!17 (left!1160 (right!1163 thiss!7690))) (content!17 (left!1160 (left!1160 thiss!7690)))) (= (elem!230 (right!1163 thiss!7690)) (elem!230 (left!1160 thiss!7690)))) (= true inst!434)))

(declare-fun bs!27509 () Bool)

(assert (= bs!27509 (and neg-inst!424 neg-inst!420)))

(assert (=> (and bs!27509 (= (content!17 (left!1160 (right!1163 thiss!7690))) (content!17 (left!1160 (right!1163 res!24729)))) (= (elem!230 (right!1163 thiss!7690)) (elem!230 (right!1163 res!24729)))) (= true true)))

(declare-fun bs!27510 () Bool)

(assert (= bs!27510 (and neg-inst!424 b!54935)))

(assert (=> (and bs!27510 (= (content!17 (left!1160 (right!1163 thiss!7690))) (content!17 (left!1160 (right!1163 res!24729)))) (= (elem!230 (right!1163 thiss!7690)) (elem!230 (right!1163 res!24729)))) (= true inst!432)))

(declare-fun bs!27511 () Bool)

(assert (= bs!27511 (and neg-inst!424 b!54929)))

(assert (=> (and bs!27511 (= (content!17 (left!1160 (right!1163 thiss!7690))) (content!17 (left!1160 thiss!7690))) (= (elem!230 (right!1163 thiss!7690)) (elem!230 thiss!7690))) (= true inst!426)))

(declare-fun bs!27512 () Bool)

(declare-fun neg-inst!425 () Bool)

(assert (= bs!27512 neg-inst!425))

(assert (=> bs!27512 m!59866))

(declare-fun bs!27513 () Bool)

(declare-fun s!1743 () Bool)

(assert (= bs!27513 (and neg-inst!425 s!1743)))

(assert (=> bs!27513 (=> true (or (not (member x!21966 (content!17 (right!1163 (right!1163 thiss!7690))))) (bvslt (elem!230 (right!1163 thiss!7690)) x!21966)))))

(assert (=> m!59868 s!1743))

(declare-fun bs!27514 () Bool)

(assert (= bs!27514 (and neg-inst!425 neg-inst!419)))

(assert (=> (and bs!27514 (= (content!17 (right!1163 (right!1163 thiss!7690))) (content!17 (right!1163 (left!1160 res!24729)))) (= (elem!230 (right!1163 thiss!7690)) (elem!230 (left!1160 res!24729)))) (= true true)))

(declare-fun bs!27515 () Bool)

(assert (= bs!27515 (and neg-inst!425 b!54940)))

(assert (=> bs!27515 (= true inst!437)))

(declare-fun bs!27516 () Bool)

(assert (= bs!27516 (and neg-inst!425 neg-inst!423)))

(assert (=> (and bs!27516 (= (content!17 (right!1163 (right!1163 thiss!7690))) (content!17 (right!1163 (left!1160 thiss!7690)))) (= (elem!230 (right!1163 thiss!7690)) (elem!230 (left!1160 thiss!7690)))) (= true true)))

(declare-fun bs!27517 () Bool)

(assert (= bs!27517 (and neg-inst!425 neg-inst!421)))

(assert (=> (and bs!27517 (= (content!17 (right!1163 (right!1163 thiss!7690))) (content!17 (right!1163 (right!1163 res!24729)))) (= (elem!230 (right!1163 thiss!7690)) (elem!230 (right!1163 res!24729)))) (= true true)))

(declare-fun bs!27518 () Bool)

(assert (= bs!27518 (and neg-inst!425 b!54932)))

(assert (=> (and bs!27518 (= (content!17 (right!1163 (right!1163 thiss!7690))) (content!17 (right!1163 res!24729))) (= (elem!230 (right!1163 thiss!7690)) (elem!230 res!24729))) (= true inst!429)))

(declare-fun bs!27519 () Bool)

(assert (= bs!27519 (and neg-inst!425 b!54934)))

(assert (=> (and bs!27519 (= (content!17 (right!1163 (right!1163 thiss!7690))) (content!17 (right!1163 (left!1160 res!24729)))) (= (elem!230 (right!1163 thiss!7690)) (elem!230 (left!1160 res!24729)))) (= true inst!431)))

(declare-fun bs!27520 () Bool)

(assert (= bs!27520 (and neg-inst!425 b!54936)))

(assert (=> (and bs!27520 (= (content!17 (right!1163 (right!1163 thiss!7690))) (content!17 (right!1163 (right!1163 res!24729)))) (= (elem!230 (right!1163 thiss!7690)) (elem!230 (right!1163 res!24729)))) (= true inst!433)))

(declare-fun bs!27521 () Bool)

(assert (= bs!27521 (and neg-inst!425 neg-inst!417)))

(assert (=> (and bs!27521 (= (content!17 (right!1163 (right!1163 thiss!7690))) (content!17 (right!1163 res!24729))) (= (elem!230 (right!1163 thiss!7690)) (elem!230 res!24729))) (= true true)))

(declare-fun bs!27522 () Bool)

(assert (= bs!27522 (and neg-inst!425 b!54930)))

(assert (=> (and bs!27522 (= (content!17 (right!1163 (right!1163 thiss!7690))) (content!17 (right!1163 thiss!7690))) (= (elem!230 (right!1163 thiss!7690)) (elem!230 thiss!7690))) (= true inst!427)))

(declare-fun bs!27523 () Bool)

(assert (= bs!27523 (and neg-inst!425 b!54938)))

(assert (=> (and bs!27523 (= (content!17 (right!1163 (right!1163 thiss!7690))) (content!17 (right!1163 (left!1160 thiss!7690)))) (= (elem!230 (right!1163 thiss!7690)) (elem!230 (left!1160 thiss!7690)))) (= true inst!435)))

(declare-fun bs!27524 () Bool)

(assert (= bs!27524 (and neg-inst!425 neg-inst!415)))

(assert (=> (and bs!27524 (= (content!17 (right!1163 (right!1163 thiss!7690))) (content!17 (right!1163 thiss!7690))) (= (elem!230 (right!1163 thiss!7690)) (elem!230 thiss!7690))) (= true true)))

(declare-fun d!45176 () Bool)

(declare-fun res!25192 () Bool)

(declare-fun e!28916 () Bool)

(assert (=> d!45176 (=> res!25192 e!28916)))

(assert (=> d!45176 (= res!25192 (not (is-Node!130 (right!1163 thiss!7690))))))

(assert (=> d!45176 (= (inv!977 (right!1163 thiss!7690)) e!28916)))

(declare-fun e!28915 () Bool)

(assert (=> b!54939 (= e!28916 e!28915)))

(declare-fun res!25193 () Bool)

(assert (=> b!54939 (=> (not res!25193) (not e!28915))))

(assert (=> b!54939 (= res!25193 inst!436)))

(assert (=> b!54940 (= e!28915 inst!437)))

(assert (= (and d!45176 (not res!25192)) b!54939))

(assert (= neg-inst!424 inst!436))

(assert (= (and b!54939 res!25193) b!54940))

(assert (= neg-inst!425 inst!437))

(assert (=> b!54915 d!45176))

(declare-fun e!28919 () Bool)

(declare-fun b!54945 () Bool)

(declare-fun tp!15586 () Bool)

(declare-fun tp!15585 () Bool)

(assert (=> b!54945 (= e!28919 (and (inv!977 (left!1160 (left!1160 res!24729))) tp!15585 (inv!977 (right!1163 (left!1160 res!24729))) tp!15586))))

(assert (=> b!54916 (= tp!15579 (and (inv!977 (left!1160 res!24729)) e!28919))))

(assert (= (and b!54916 (is-Node!130 (left!1160 res!24729))) b!54945))

(declare-fun m!59870 () Bool)

(assert (=> b!54945 m!59870))

(declare-fun m!59872 () Bool)

(assert (=> b!54945 m!59872))

(assert (=> b!54916 m!59814))

(declare-fun tp!15588 () Bool)

(declare-fun tp!15587 () Bool)

(declare-fun e!28920 () Bool)

(declare-fun b!54946 () Bool)

(assert (=> b!54946 (= e!28920 (and (inv!977 (left!1160 (right!1163 res!24729))) tp!15587 (inv!977 (right!1163 (right!1163 res!24729))) tp!15588))))

(assert (=> b!54916 (= tp!15580 (and (inv!977 (right!1163 res!24729)) e!28920))))

(assert (= (and b!54916 (is-Node!130 (right!1163 res!24729))) b!54946))

(declare-fun m!59874 () Bool)

(assert (=> b!54946 m!59874))

(declare-fun m!59876 () Bool)

(assert (=> b!54946 m!59876))

(assert (=> b!54916 m!59816))

(declare-fun b!54947 () Bool)

(declare-fun tp!15590 () Bool)

(declare-fun e!28921 () Bool)

(declare-fun tp!15589 () Bool)

(assert (=> b!54947 (= e!28921 (and (inv!977 (left!1160 (left!1160 thiss!7690))) tp!15589 (inv!977 (right!1163 (left!1160 thiss!7690))) tp!15590))))

(assert (=> b!54915 (= tp!15577 (and (inv!977 (left!1160 thiss!7690)) e!28921))))

(assert (= (and b!54915 (is-Node!130 (left!1160 thiss!7690))) b!54947))

(declare-fun m!59878 () Bool)

(assert (=> b!54947 m!59878))

(declare-fun m!59880 () Bool)

(assert (=> b!54947 m!59880))

(assert (=> b!54915 m!59810))

(declare-fun tp!15591 () Bool)

(declare-fun b!54948 () Bool)

(declare-fun e!28922 () Bool)

(declare-fun tp!15592 () Bool)

(assert (=> b!54948 (= e!28922 (and (inv!977 (left!1160 (right!1163 thiss!7690))) tp!15591 (inv!977 (right!1163 (right!1163 thiss!7690))) tp!15592))))

(assert (=> b!54915 (= tp!15578 (and (inv!977 (right!1163 thiss!7690)) e!28922))))

(assert (= (and b!54915 (is-Node!130 (right!1163 thiss!7690))) b!54948))

(declare-fun m!59882 () Bool)

(assert (=> b!54948 m!59882))

(declare-fun m!59884 () Bool)

(assert (=> b!54948 m!59884))

(assert (=> b!54915 m!59812))

(push 1)

(assert (not b!54924))

(assert (not neg-inst!424))

(assert (not neg-inst!414))

(assert (not b!54932))

(assert (not b!54929))

(assert (not b!54922))

(assert (not b!54936))

(assert (not b!54947))

(assert (not b!54946))

(assert (not b!54939))

(assert (not neg-inst!419))

(assert (not b!54938))

(assert (not b!54945))

(assert (not neg-inst!417))

(assert (not neg-inst!421))

(assert (not b!54940))

(assert (not b!54915))

(assert (not b!54935))

(assert (not b!54948))

(assert (not neg-inst!416))

(assert (not neg-inst!420))

(assert (not neg-inst!423))

(assert (not neg-inst!422))

(assert (not neg-inst!418))

(assert (not b!54930))

(assert (not b!54937))

(assert (not neg-inst!415))

(assert (not neg-inst!425))

(assert (not b!54916))

(assert (not b!54933))

(assert (not b!54934))

(assert (not b!54931))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

