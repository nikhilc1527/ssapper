; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8374 () Bool)

(assert start!8374)

(declare-fun res!27223 () Bool)

(declare-fun e!31274 () Bool)

(assert (=> start!8374 (=> (not res!27223) (not e!31274))))

(declare-datatypes () ((List!498 (Cons!472 (head!749 (_ BitVec 32)) (tail!775 List!498)) (Nil!473))))

(declare-fun l1!311 () List!498)

(declare-fun l2!304 () List!498)

(assert (=> start!8374 (= res!27223 (and (is-Nil!473 l1!311) (is-Nil!473 l2!304)))))

(assert (=> start!8374 e!31274))

(assert (=> start!8374 true))

(declare-fun b!58769 () Bool)

(declare-fun res!27224 () Bool)

(assert (=> b!58769 (=> (not res!27224) (not e!31274))))

(declare-fun x$8!60 () List!498)

(declare-fun l3!44 () List!498)

(declare-fun reverse!2 (List!498) List!498)

(assert (=> b!58769 (= res!27224 (= x$8!60 (reverse!2 l3!44)))))

(declare-fun b!58770 () Bool)

(declare-fun content!16 (List!498) (Set (_ BitVec 32)))

(assert (=> b!58770 (= e!31274 (not (= (content!16 x$8!60) (union (union (content!16 l1!311) (content!16 l2!304)) (content!16 l3!44)))))))

(assert (= (and start!8374 res!27223) b!58769))

(assert (= (and b!58769 res!27224) b!58770))

(declare-fun m!63354 () Bool)

(assert (=> b!58769 m!63354))

(declare-fun m!63356 () Bool)

(assert (=> b!58770 m!63356))

(declare-fun m!63358 () Bool)

(assert (=> b!58770 m!63358))

(declare-fun m!63360 () Bool)

(assert (=> b!58770 m!63360))

(declare-fun m!63362 () Bool)

(assert (=> b!58770 m!63362))

(push 1)

(assert (not b!58770))

(assert (not b!58769))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!50742 () Bool)

(declare-fun c!12626 () Bool)

(assert (=> d!50742 (= c!12626 (is-Nil!473 x$8!60))))

(declare-fun e!31277 () (Set (_ BitVec 32)))

(assert (=> d!50742 (= (content!16 x$8!60) e!31277)))

(declare-fun b!58775 () Bool)

(assert (=> b!58775 (= e!31277 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!58776 () Bool)

(assert (=> b!58776 (= e!31277 (union (insert (head!749 x$8!60) (as emptyset (Set (_ BitVec 32)))) (content!16 (tail!775 x$8!60))))))

(assert (= (and d!50742 c!12626) b!58775))

(assert (= (and d!50742 (not c!12626)) b!58776))

(declare-fun m!63364 () Bool)

(assert (=> b!58776 m!63364))

(declare-fun m!63366 () Bool)

(assert (=> b!58776 m!63366))

(assert (=> b!58770 d!50742))

(declare-fun d!50744 () Bool)

(declare-fun c!12627 () Bool)

(assert (=> d!50744 (= c!12627 (is-Nil!473 l1!311))))

(declare-fun e!31278 () (Set (_ BitVec 32)))

(assert (=> d!50744 (= (content!16 l1!311) e!31278)))

(declare-fun b!58777 () Bool)

(assert (=> b!58777 (= e!31278 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!58778 () Bool)

(assert (=> b!58778 (= e!31278 (union (insert (head!749 l1!311) (as emptyset (Set (_ BitVec 32)))) (content!16 (tail!775 l1!311))))))

(assert (= (and d!50744 c!12627) b!58777))

(assert (= (and d!50744 (not c!12627)) b!58778))

(declare-fun m!63368 () Bool)

(assert (=> b!58778 m!63368))

(declare-fun m!63370 () Bool)

(assert (=> b!58778 m!63370))

(assert (=> b!58770 d!50744))

(declare-fun d!50746 () Bool)

(declare-fun c!12628 () Bool)

(assert (=> d!50746 (= c!12628 (is-Nil!473 l2!304))))

(declare-fun e!31279 () (Set (_ BitVec 32)))

(assert (=> d!50746 (= (content!16 l2!304) e!31279)))

(declare-fun b!58779 () Bool)

(assert (=> b!58779 (= e!31279 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!58780 () Bool)

(assert (=> b!58780 (= e!31279 (union (insert (head!749 l2!304) (as emptyset (Set (_ BitVec 32)))) (content!16 (tail!775 l2!304))))))

(assert (= (and d!50746 c!12628) b!58779))

(assert (= (and d!50746 (not c!12628)) b!58780))

(declare-fun m!63372 () Bool)

(assert (=> b!58780 m!63372))

(declare-fun m!63374 () Bool)

(assert (=> b!58780 m!63374))

(assert (=> b!58770 d!50746))

(declare-fun d!50748 () Bool)

(declare-fun c!12629 () Bool)

(assert (=> d!50748 (= c!12629 (is-Nil!473 l3!44))))

(declare-fun e!31280 () (Set (_ BitVec 32)))

(assert (=> d!50748 (= (content!16 l3!44) e!31280)))

(declare-fun b!58781 () Bool)

(assert (=> b!58781 (= e!31280 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!58782 () Bool)

(assert (=> b!58782 (= e!31280 (union (insert (head!749 l3!44) (as emptyset (Set (_ BitVec 32)))) (content!16 (tail!775 l3!44))))))

(assert (= (and d!50748 c!12629) b!58781))

(assert (= (and d!50748 (not c!12629)) b!58782))

(declare-fun m!63376 () Bool)

(assert (=> b!58782 m!63376))

(declare-fun m!63378 () Bool)

(assert (=> b!58782 m!63378))

(assert (=> b!58770 d!50748))

(declare-fun d!50750 () Bool)

(declare-fun lt!10781 () List!498)

(assert (=> d!50750 (= (content!16 lt!10781) (content!16 l3!44))))

(declare-fun reverse0!1 (List!498 List!498) List!498)

(assert (=> d!50750 (= lt!10781 (reverse0!1 l3!44 Nil!473))))

(assert (=> d!50750 (= (reverse!2 l3!44) lt!10781)))

(declare-fun bs!36382 () Bool)

(assert (= bs!36382 d!50750))

(declare-fun m!63380 () Bool)

(assert (=> bs!36382 m!63380))

(assert (=> bs!36382 m!63362))

(declare-fun m!63382 () Bool)

(assert (=> bs!36382 m!63382))

(assert (=> b!58769 d!50750))

(push 1)

(assert (not b!58778))

(assert (not d!50750))

(assert (not b!58782))

(assert (not b!58780))

(assert (not b!58776))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

