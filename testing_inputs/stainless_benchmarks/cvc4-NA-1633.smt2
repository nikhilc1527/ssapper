; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11382 () Bool)

(assert start!11382)

(declare-fun res!45561 () Bool)

(declare-fun e!47424 () Bool)

(assert (=> start!11382 (=> (not res!45561) (not e!47424))))

(declare-fun x!30387 () Int)

(declare-datatypes () ((Color!17 (Red!16) (Black!16))))

(declare-datatypes () ((Tree!114 (Empty!197) (Node!158 (color!47 Color!17) (left!1657 Tree!114) (value!6804 Int) (right!1660 Tree!114)))))

(declare-fun b!85880 () Tree!114)

(declare-fun res!44627 () Tree!114)

(declare-fun a!1013 () Tree!114)

(declare-fun c!21309 () Color!17)

(assert (=> start!11382 (= res!45561 (and (or (not (is-Black!16 c!21309)) (not (is-Node!158 a!1013)) (not (is-Red!16 (color!47 a!1013))) (not (is-Node!158 (left!1657 a!1013))) (not (is-Red!16 (color!47 (left!1657 a!1013))))) (or (not (is-Black!16 c!21309)) (not (is-Node!158 a!1013)) (not (is-Red!16 (color!47 a!1013))) (not (is-Node!158 (right!1660 a!1013))) (not (is-Red!16 (color!47 (right!1660 a!1013))))) (or (not (is-Black!16 c!21309)) (not (is-Node!158 b!85880)) (not (is-Red!16 (color!47 b!85880))) (not (is-Node!158 (left!1657 b!85880))) (not (is-Red!16 (color!47 (left!1657 b!85880))))) (is-Black!16 c!21309) (is-Node!158 b!85880) (is-Red!16 (color!47 b!85880)) (is-Node!158 (right!1660 b!85880)) (is-Red!16 (color!47 (right!1660 b!85880))) (= res!44627 (Node!158 Red!16 (Node!158 Black!16 a!1013 x!30387 (left!1657 b!85880)) (value!6804 b!85880) (Node!158 Black!16 (left!1657 (right!1660 b!85880)) (value!6804 (right!1660 b!85880)) (right!1660 (right!1660 b!85880)))))))))

(assert (=> start!11382 e!47424))

(assert (=> start!11382 true))

(declare-fun b!87413 () Bool)

(declare-fun content!8 (Tree!114) (Set Int))

(assert (=> b!87413 (= e!47424 (not (= (content!8 res!44627) (content!8 (Node!158 c!21309 a!1013 x!30387 b!85880)))))))

(assert (=> b!87413 (is-Node!158 res!44627)))

(assert (= (and start!11382 res!45561) b!87413))

(declare-fun m!83762 () Bool)

(assert (=> b!87413 m!83762))

(declare-fun m!83764 () Bool)

(assert (=> b!87413 m!83764))

(push 1)

(assert (not b!87413))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!58253 () Bool)

(declare-fun c!21663 () Bool)

(assert (=> d!58253 (= c!21663 (is-Empty!197 res!44627))))

(declare-fun e!47427 () (Set Int))

(assert (=> d!58253 (= (content!8 res!44627) e!47427)))

(declare-fun b!87418 () Bool)

(assert (=> b!87418 (= e!47427 (as emptyset (Set Int)))))

(declare-fun b!87419 () Bool)

(assert (=> b!87419 (= e!47427 (union (union (content!8 (left!1657 res!44627)) (insert (value!6804 res!44627) (as emptyset (Set Int)))) (content!8 (right!1660 res!44627))))))

(assert (= (and d!58253 c!21663) b!87418))

(assert (= (and d!58253 (not c!21663)) b!87419))

(declare-fun m!83766 () Bool)

(assert (=> b!87419 m!83766))

(declare-fun m!83768 () Bool)

(assert (=> b!87419 m!83768))

(declare-fun m!83770 () Bool)

(assert (=> b!87419 m!83770))

(assert (=> b!87413 d!58253))

(declare-fun d!58255 () Bool)

(declare-fun c!21664 () Bool)

(assert (=> d!58255 (= c!21664 (is-Empty!197 (Node!158 c!21309 a!1013 x!30387 b!85880)))))

(declare-fun e!47428 () (Set Int))

(assert (=> d!58255 (= (content!8 (Node!158 c!21309 a!1013 x!30387 b!85880)) e!47428)))

(declare-fun b!87420 () Bool)

(assert (=> b!87420 (= e!47428 (as emptyset (Set Int)))))

(declare-fun b!87421 () Bool)

(assert (=> b!87421 (= e!47428 (union (union (content!8 (left!1657 (Node!158 c!21309 a!1013 x!30387 b!85880))) (insert (value!6804 (Node!158 c!21309 a!1013 x!30387 b!85880)) (as emptyset (Set Int)))) (content!8 (right!1660 (Node!158 c!21309 a!1013 x!30387 b!85880)))))))

(assert (= (and d!58255 c!21664) b!87420))

(assert (= (and d!58255 (not c!21664)) b!87421))

(declare-fun m!83772 () Bool)

(assert (=> b!87421 m!83772))

(declare-fun m!83774 () Bool)

(assert (=> b!87421 m!83774))

(declare-fun m!83776 () Bool)

(assert (=> b!87421 m!83776))

(assert (=> b!87413 d!58255))

(push 1)

(assert (not b!87419))

(assert (not b!87421))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!58257 () Bool)

(declare-fun c!21665 () Bool)

(assert (=> d!58257 (= c!21665 (is-Empty!197 (left!1657 res!44627)))))

(declare-fun e!47429 () (Set Int))

(assert (=> d!58257 (= (content!8 (left!1657 res!44627)) e!47429)))

(declare-fun b!87422 () Bool)

(assert (=> b!87422 (= e!47429 (as emptyset (Set Int)))))

(declare-fun b!87423 () Bool)

(assert (=> b!87423 (= e!47429 (union (union (content!8 (left!1657 (left!1657 res!44627))) (insert (value!6804 (left!1657 res!44627)) (as emptyset (Set Int)))) (content!8 (right!1660 (left!1657 res!44627)))))))

(assert (= (and d!58257 c!21665) b!87422))

(assert (= (and d!58257 (not c!21665)) b!87423))

(declare-fun m!83778 () Bool)

(assert (=> b!87423 m!83778))

(declare-fun m!83780 () Bool)

(assert (=> b!87423 m!83780))

(declare-fun m!83782 () Bool)

(assert (=> b!87423 m!83782))

(assert (=> b!87419 d!58257))

(declare-fun d!58259 () Bool)

(declare-fun c!21666 () Bool)

(assert (=> d!58259 (= c!21666 (is-Empty!197 (right!1660 res!44627)))))

(declare-fun e!47430 () (Set Int))

(assert (=> d!58259 (= (content!8 (right!1660 res!44627)) e!47430)))

(declare-fun b!87424 () Bool)

(assert (=> b!87424 (= e!47430 (as emptyset (Set Int)))))

(declare-fun b!87425 () Bool)

(assert (=> b!87425 (= e!47430 (union (union (content!8 (left!1657 (right!1660 res!44627))) (insert (value!6804 (right!1660 res!44627)) (as emptyset (Set Int)))) (content!8 (right!1660 (right!1660 res!44627)))))))

(assert (= (and d!58259 c!21666) b!87424))

(assert (= (and d!58259 (not c!21666)) b!87425))

(declare-fun m!83784 () Bool)

(assert (=> b!87425 m!83784))

(declare-fun m!83786 () Bool)

(assert (=> b!87425 m!83786))

(declare-fun m!83788 () Bool)

(assert (=> b!87425 m!83788))

(assert (=> b!87419 d!58259))

(declare-fun c!21667 () Bool)

(declare-fun d!58261 () Bool)

(assert (=> d!58261 (= c!21667 (is-Empty!197 (left!1657 (Node!158 c!21309 a!1013 x!30387 b!85880))))))

(declare-fun e!47431 () (Set Int))

(assert (=> d!58261 (= (content!8 (left!1657 (Node!158 c!21309 a!1013 x!30387 b!85880))) e!47431)))

(declare-fun b!87426 () Bool)

(assert (=> b!87426 (= e!47431 (as emptyset (Set Int)))))

(declare-fun b!87427 () Bool)

(assert (=> b!87427 (= e!47431 (union (union (content!8 (left!1657 (left!1657 (Node!158 c!21309 a!1013 x!30387 b!85880)))) (insert (value!6804 (left!1657 (Node!158 c!21309 a!1013 x!30387 b!85880))) (as emptyset (Set Int)))) (content!8 (right!1660 (left!1657 (Node!158 c!21309 a!1013 x!30387 b!85880))))))))

(assert (= (and d!58261 c!21667) b!87426))

(assert (= (and d!58261 (not c!21667)) b!87427))

(declare-fun m!83790 () Bool)

(assert (=> b!87427 m!83790))

(declare-fun m!83792 () Bool)

(assert (=> b!87427 m!83792))

(declare-fun m!83794 () Bool)

(assert (=> b!87427 m!83794))

(assert (=> b!87421 d!58261))

(declare-fun c!21668 () Bool)

(declare-fun d!58263 () Bool)

(assert (=> d!58263 (= c!21668 (is-Empty!197 (right!1660 (Node!158 c!21309 a!1013 x!30387 b!85880))))))

(declare-fun e!47432 () (Set Int))

(assert (=> d!58263 (= (content!8 (right!1660 (Node!158 c!21309 a!1013 x!30387 b!85880))) e!47432)))

(declare-fun b!87428 () Bool)

(assert (=> b!87428 (= e!47432 (as emptyset (Set Int)))))

(declare-fun b!87429 () Bool)

(assert (=> b!87429 (= e!47432 (union (union (content!8 (left!1657 (right!1660 (Node!158 c!21309 a!1013 x!30387 b!85880)))) (insert (value!6804 (right!1660 (Node!158 c!21309 a!1013 x!30387 b!85880))) (as emptyset (Set Int)))) (content!8 (right!1660 (right!1660 (Node!158 c!21309 a!1013 x!30387 b!85880))))))))

(assert (= (and d!58263 c!21668) b!87428))

(assert (= (and d!58263 (not c!21668)) b!87429))

(declare-fun m!83796 () Bool)

(assert (=> b!87429 m!83796))

(declare-fun m!83798 () Bool)

(assert (=> b!87429 m!83798))

(declare-fun m!83800 () Bool)

(assert (=> b!87429 m!83800))

(assert (=> b!87421 d!58263))

(push 1)

(assert (not b!87423))

(assert (not b!87425))

(assert (not b!87427))

(assert (not b!87429))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!58265 () Bool)

(declare-fun c!21669 () Bool)

(assert (=> d!58265 (= c!21669 (is-Empty!197 (left!1657 (left!1657 res!44627))))))

(declare-fun e!47433 () (Set Int))

(assert (=> d!58265 (= (content!8 (left!1657 (left!1657 res!44627))) e!47433)))

(declare-fun b!87430 () Bool)

(assert (=> b!87430 (= e!47433 (as emptyset (Set Int)))))

(declare-fun b!87431 () Bool)

(assert (=> b!87431 (= e!47433 (union (union (content!8 (left!1657 (left!1657 (left!1657 res!44627)))) (insert (value!6804 (left!1657 (left!1657 res!44627))) (as emptyset (Set Int)))) (content!8 (right!1660 (left!1657 (left!1657 res!44627))))))))

(assert (= (and d!58265 c!21669) b!87430))

(assert (= (and d!58265 (not c!21669)) b!87431))

(declare-fun m!83802 () Bool)

(assert (=> b!87431 m!83802))

(declare-fun m!83804 () Bool)

(assert (=> b!87431 m!83804))

(declare-fun m!83806 () Bool)

(assert (=> b!87431 m!83806))

(assert (=> b!87423 d!58265))

(declare-fun d!58267 () Bool)

(declare-fun c!21670 () Bool)

(assert (=> d!58267 (= c!21670 (is-Empty!197 (right!1660 (left!1657 res!44627))))))

(declare-fun e!47434 () (Set Int))

(assert (=> d!58267 (= (content!8 (right!1660 (left!1657 res!44627))) e!47434)))

(declare-fun b!87432 () Bool)

(assert (=> b!87432 (= e!47434 (as emptyset (Set Int)))))

(declare-fun b!87433 () Bool)

(assert (=> b!87433 (= e!47434 (union (union (content!8 (left!1657 (right!1660 (left!1657 res!44627)))) (insert (value!6804 (right!1660 (left!1657 res!44627))) (as emptyset (Set Int)))) (content!8 (right!1660 (right!1660 (left!1657 res!44627))))))))

(assert (= (and d!58267 c!21670) b!87432))

(assert (= (and d!58267 (not c!21670)) b!87433))

(declare-fun m!83808 () Bool)

(assert (=> b!87433 m!83808))

(declare-fun m!83810 () Bool)

(assert (=> b!87433 m!83810))

(declare-fun m!83812 () Bool)

(assert (=> b!87433 m!83812))

(assert (=> b!87423 d!58267))

(declare-fun d!58269 () Bool)

(declare-fun c!21671 () Bool)

(assert (=> d!58269 (= c!21671 (is-Empty!197 (left!1657 (right!1660 res!44627))))))

(declare-fun e!47435 () (Set Int))

(assert (=> d!58269 (= (content!8 (left!1657 (right!1660 res!44627))) e!47435)))

(declare-fun b!87434 () Bool)

(assert (=> b!87434 (= e!47435 (as emptyset (Set Int)))))

(declare-fun b!87435 () Bool)

(assert (=> b!87435 (= e!47435 (union (union (content!8 (left!1657 (left!1657 (right!1660 res!44627)))) (insert (value!6804 (left!1657 (right!1660 res!44627))) (as emptyset (Set Int)))) (content!8 (right!1660 (left!1657 (right!1660 res!44627))))))))

(assert (= (and d!58269 c!21671) b!87434))

(assert (= (and d!58269 (not c!21671)) b!87435))

(declare-fun m!83814 () Bool)

(assert (=> b!87435 m!83814))

(declare-fun m!83816 () Bool)

(assert (=> b!87435 m!83816))

(declare-fun m!83818 () Bool)

(assert (=> b!87435 m!83818))

(assert (=> b!87425 d!58269))

(declare-fun d!58271 () Bool)

(declare-fun c!21672 () Bool)

(assert (=> d!58271 (= c!21672 (is-Empty!197 (right!1660 (right!1660 res!44627))))))

(declare-fun e!47436 () (Set Int))

(assert (=> d!58271 (= (content!8 (right!1660 (right!1660 res!44627))) e!47436)))

(declare-fun b!87436 () Bool)

(assert (=> b!87436 (= e!47436 (as emptyset (Set Int)))))

(declare-fun b!87437 () Bool)

(assert (=> b!87437 (= e!47436 (union (union (content!8 (left!1657 (right!1660 (right!1660 res!44627)))) (insert (value!6804 (right!1660 (right!1660 res!44627))) (as emptyset (Set Int)))) (content!8 (right!1660 (right!1660 (right!1660 res!44627))))))))

(assert (= (and d!58271 c!21672) b!87436))

(assert (= (and d!58271 (not c!21672)) b!87437))

(declare-fun m!83820 () Bool)

(assert (=> b!87437 m!83820))

(declare-fun m!83822 () Bool)

(assert (=> b!87437 m!83822))

(declare-fun m!83824 () Bool)

(assert (=> b!87437 m!83824))

(assert (=> b!87425 d!58271))

(declare-fun d!58273 () Bool)

(declare-fun c!21673 () Bool)

(assert (=> d!58273 (= c!21673 (is-Empty!197 (left!1657 (left!1657 (Node!158 c!21309 a!1013 x!30387 b!85880)))))))

(declare-fun e!47437 () (Set Int))

(assert (=> d!58273 (= (content!8 (left!1657 (left!1657 (Node!158 c!21309 a!1013 x!30387 b!85880)))) e!47437)))

(declare-fun b!87438 () Bool)

(assert (=> b!87438 (= e!47437 (as emptyset (Set Int)))))

(declare-fun b!87439 () Bool)

(assert (=> b!87439 (= e!47437 (union (union (content!8 (left!1657 (left!1657 (left!1657 (Node!158 c!21309 a!1013 x!30387 b!85880))))) (insert (value!6804 (left!1657 (left!1657 (Node!158 c!21309 a!1013 x!30387 b!85880)))) (as emptyset (Set Int)))) (content!8 (right!1660 (left!1657 (left!1657 (Node!158 c!21309 a!1013 x!30387 b!85880)))))))))

(assert (= (and d!58273 c!21673) b!87438))

(assert (= (and d!58273 (not c!21673)) b!87439))

(declare-fun m!83826 () Bool)

(assert (=> b!87439 m!83826))

(declare-fun m!83828 () Bool)

(assert (=> b!87439 m!83828))

(declare-fun m!83830 () Bool)

(assert (=> b!87439 m!83830))

(assert (=> b!87427 d!58273))

(declare-fun c!21674 () Bool)

(declare-fun d!58275 () Bool)

(assert (=> d!58275 (= c!21674 (is-Empty!197 (right!1660 (left!1657 (Node!158 c!21309 a!1013 x!30387 b!85880)))))))

(declare-fun e!47438 () (Set Int))

(assert (=> d!58275 (= (content!8 (right!1660 (left!1657 (Node!158 c!21309 a!1013 x!30387 b!85880)))) e!47438)))

(declare-fun b!87440 () Bool)

(assert (=> b!87440 (= e!47438 (as emptyset (Set Int)))))

(declare-fun b!87441 () Bool)

(assert (=> b!87441 (= e!47438 (union (union (content!8 (left!1657 (right!1660 (left!1657 (Node!158 c!21309 a!1013 x!30387 b!85880))))) (insert (value!6804 (right!1660 (left!1657 (Node!158 c!21309 a!1013 x!30387 b!85880)))) (as emptyset (Set Int)))) (content!8 (right!1660 (right!1660 (left!1657 (Node!158 c!21309 a!1013 x!30387 b!85880)))))))))

(assert (= (and d!58275 c!21674) b!87440))

(assert (= (and d!58275 (not c!21674)) b!87441))

(declare-fun m!83832 () Bool)

(assert (=> b!87441 m!83832))

(declare-fun m!83834 () Bool)

(assert (=> b!87441 m!83834))

(declare-fun m!83836 () Bool)

(assert (=> b!87441 m!83836))

(assert (=> b!87427 d!58275))

(declare-fun d!58277 () Bool)

(declare-fun c!21675 () Bool)

(assert (=> d!58277 (= c!21675 (is-Empty!197 (left!1657 (right!1660 (Node!158 c!21309 a!1013 x!30387 b!85880)))))))

(declare-fun e!47439 () (Set Int))

(assert (=> d!58277 (= (content!8 (left!1657 (right!1660 (Node!158 c!21309 a!1013 x!30387 b!85880)))) e!47439)))

(declare-fun b!87442 () Bool)

(assert (=> b!87442 (= e!47439 (as emptyset (Set Int)))))

(declare-fun b!87443 () Bool)

(assert (=> b!87443 (= e!47439 (union (union (content!8 (left!1657 (left!1657 (right!1660 (Node!158 c!21309 a!1013 x!30387 b!85880))))) (insert (value!6804 (left!1657 (right!1660 (Node!158 c!21309 a!1013 x!30387 b!85880)))) (as emptyset (Set Int)))) (content!8 (right!1660 (left!1657 (right!1660 (Node!158 c!21309 a!1013 x!30387 b!85880)))))))))

(assert (= (and d!58277 c!21675) b!87442))

(assert (= (and d!58277 (not c!21675)) b!87443))

(declare-fun m!83838 () Bool)

(assert (=> b!87443 m!83838))

(declare-fun m!83840 () Bool)

(assert (=> b!87443 m!83840))

(declare-fun m!83842 () Bool)

(assert (=> b!87443 m!83842))

(assert (=> b!87429 d!58277))

(declare-fun d!58279 () Bool)

(declare-fun c!21676 () Bool)

(assert (=> d!58279 (= c!21676 (is-Empty!197 (right!1660 (right!1660 (Node!158 c!21309 a!1013 x!30387 b!85880)))))))

(declare-fun e!47440 () (Set Int))

(assert (=> d!58279 (= (content!8 (right!1660 (right!1660 (Node!158 c!21309 a!1013 x!30387 b!85880)))) e!47440)))

(declare-fun b!87444 () Bool)

(assert (=> b!87444 (= e!47440 (as emptyset (Set Int)))))

(declare-fun b!87445 () Bool)

(assert (=> b!87445 (= e!47440 (union (union (content!8 (left!1657 (right!1660 (right!1660 (Node!158 c!21309 a!1013 x!30387 b!85880))))) (insert (value!6804 (right!1660 (right!1660 (Node!158 c!21309 a!1013 x!30387 b!85880)))) (as emptyset (Set Int)))) (content!8 (right!1660 (right!1660 (right!1660 (Node!158 c!21309 a!1013 x!30387 b!85880)))))))))

(assert (= (and d!58279 c!21676) b!87444))

(assert (= (and d!58279 (not c!21676)) b!87445))

(declare-fun m!83844 () Bool)

(assert (=> b!87445 m!83844))

(declare-fun m!83846 () Bool)

(assert (=> b!87445 m!83846))

(declare-fun m!83848 () Bool)

(assert (=> b!87445 m!83848))

(assert (=> b!87429 d!58279))

(push 1)

(assert (not b!87435))

(assert (not b!87441))

(assert (not b!87445))

(assert (not b!87437))

(assert (not b!87443))

(assert (not b!87433))

(assert (not b!87439))

(assert (not b!87431))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

