; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8402 () Bool)

(assert start!8402)

(declare-fun res!27258 () Bool)

(declare-fun e!31343 () Bool)

(assert (=> start!8402 (=> (not res!27258) (not e!31343))))

(declare-datatypes () ((List!502 (Cons!476 (head!753 (_ BitVec 32)) (tail!779 List!502)) (Nil!477))))

(declare-fun l1!308 () List!502)

(assert (=> start!8402 (= res!27258 (not (is-Nil!477 l1!308)))))

(assert (=> start!8402 e!31343))

(assert (=> start!8402 true))

(declare-fun b!58904 () Bool)

(declare-fun res!27259 () Bool)

(assert (=> b!58904 (=> (not res!27259) (not e!31343))))

(declare-fun l2!301 () List!502)

(declare-fun x$5!61 () List!502)

(declare-fun reverse0!1 (List!502 List!502) List!502)

(assert (=> b!58904 (= res!27259 (= x$5!61 (reverse0!1 (tail!779 l1!308) (Cons!476 (head!753 l1!308) l2!301))))))

(declare-fun b!58905 () Bool)

(declare-fun content!16 (List!502) (Set (_ BitVec 32)))

(assert (=> b!58905 (= e!31343 (not (= (content!16 x$5!61) (union (content!16 l1!308) (content!16 l2!301)))))))

(assert (= (and start!8402 res!27258) b!58904))

(assert (= (and b!58904 res!27259) b!58905))

(declare-fun m!63572 () Bool)

(assert (=> b!58904 m!63572))

(declare-fun m!63574 () Bool)

(assert (=> b!58905 m!63574))

(declare-fun m!63576 () Bool)

(assert (=> b!58905 m!63576))

(declare-fun m!63578 () Bool)

(assert (=> b!58905 m!63578))

(push 1)

(assert (not b!58905))

(assert (not b!58904))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!50822 () Bool)

(declare-fun c!12683 () Bool)

(assert (=> d!50822 (= c!12683 (is-Nil!477 x$5!61))))

(declare-fun e!31346 () (Set (_ BitVec 32)))

(assert (=> d!50822 (= (content!16 x$5!61) e!31346)))

(declare-fun b!58910 () Bool)

(assert (=> b!58910 (= e!31346 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!58911 () Bool)

(assert (=> b!58911 (= e!31346 (union (insert (head!753 x$5!61) (as emptyset (Set (_ BitVec 32)))) (content!16 (tail!779 x$5!61))))))

(assert (= (and d!50822 c!12683) b!58910))

(assert (= (and d!50822 (not c!12683)) b!58911))

(declare-fun m!63580 () Bool)

(assert (=> b!58911 m!63580))

(declare-fun m!63582 () Bool)

(assert (=> b!58911 m!63582))

(assert (=> b!58905 d!50822))

(declare-fun d!50824 () Bool)

(declare-fun c!12684 () Bool)

(assert (=> d!50824 (= c!12684 (is-Nil!477 l1!308))))

(declare-fun e!31347 () (Set (_ BitVec 32)))

(assert (=> d!50824 (= (content!16 l1!308) e!31347)))

(declare-fun b!58912 () Bool)

(assert (=> b!58912 (= e!31347 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!58913 () Bool)

(assert (=> b!58913 (= e!31347 (union (insert (head!753 l1!308) (as emptyset (Set (_ BitVec 32)))) (content!16 (tail!779 l1!308))))))

(assert (= (and d!50824 c!12684) b!58912))

(assert (= (and d!50824 (not c!12684)) b!58913))

(declare-fun m!63584 () Bool)

(assert (=> b!58913 m!63584))

(declare-fun m!63586 () Bool)

(assert (=> b!58913 m!63586))

(assert (=> b!58905 d!50824))

(declare-fun d!50826 () Bool)

(declare-fun c!12685 () Bool)

(assert (=> d!50826 (= c!12685 (is-Nil!477 l2!301))))

(declare-fun e!31348 () (Set (_ BitVec 32)))

(assert (=> d!50826 (= (content!16 l2!301) e!31348)))

(declare-fun b!58914 () Bool)

(assert (=> b!58914 (= e!31348 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!58915 () Bool)

(assert (=> b!58915 (= e!31348 (union (insert (head!753 l2!301) (as emptyset (Set (_ BitVec 32)))) (content!16 (tail!779 l2!301))))))

(assert (= (and d!50826 c!12685) b!58914))

(assert (= (and d!50826 (not c!12685)) b!58915))

(declare-fun m!63588 () Bool)

(assert (=> b!58915 m!63588))

(declare-fun m!63590 () Bool)

(assert (=> b!58915 m!63590))

(assert (=> b!58905 d!50826))

(declare-fun d!50828 () Bool)

(declare-fun lt!10826 () List!502)

(assert (=> d!50828 (= (content!16 lt!10826) (union (content!16 (tail!779 l1!308)) (content!16 (Cons!476 (head!753 l1!308) l2!301))))))

(declare-fun e!31351 () List!502)

(assert (=> d!50828 (= lt!10826 e!31351)))

(declare-fun c!12688 () Bool)

(assert (=> d!50828 (= c!12688 (is-Nil!477 (tail!779 l1!308)))))

(assert (=> d!50828 (= (reverse0!1 (tail!779 l1!308) (Cons!476 (head!753 l1!308) l2!301)) lt!10826)))

(declare-fun b!58920 () Bool)

(assert (=> b!58920 (= e!31351 (Cons!476 (head!753 l1!308) l2!301))))

(declare-fun b!58921 () Bool)

(assert (=> b!58921 (= e!31351 (reverse0!1 (tail!779 (tail!779 l1!308)) (Cons!476 (head!753 (tail!779 l1!308)) (Cons!476 (head!753 l1!308) l2!301))))))

(assert (= (and d!50828 c!12688) b!58920))

(assert (= (and d!50828 (not c!12688)) b!58921))

(declare-fun m!63592 () Bool)

(assert (=> d!50828 m!63592))

(assert (=> d!50828 m!63586))

(declare-fun m!63594 () Bool)

(assert (=> d!50828 m!63594))

(declare-fun m!63596 () Bool)

(assert (=> b!58921 m!63596))

(assert (=> b!58904 d!50828))

(push 1)

(assert (not b!58913))

(assert (not b!58911))

(assert (not b!58921))

(assert (not b!58915))

(assert (not d!50828))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!50830 () Bool)

(declare-fun lt!10827 () List!502)

(assert (=> d!50830 (= (content!16 lt!10827) (union (content!16 (tail!779 (tail!779 l1!308))) (content!16 (Cons!476 (head!753 (tail!779 l1!308)) (Cons!476 (head!753 l1!308) l2!301)))))))

(declare-fun e!31352 () List!502)

(assert (=> d!50830 (= lt!10827 e!31352)))

(declare-fun c!12689 () Bool)

(assert (=> d!50830 (= c!12689 (is-Nil!477 (tail!779 (tail!779 l1!308))))))

(assert (=> d!50830 (= (reverse0!1 (tail!779 (tail!779 l1!308)) (Cons!476 (head!753 (tail!779 l1!308)) (Cons!476 (head!753 l1!308) l2!301))) lt!10827)))

(declare-fun b!58922 () Bool)

(assert (=> b!58922 (= e!31352 (Cons!476 (head!753 (tail!779 l1!308)) (Cons!476 (head!753 l1!308) l2!301)))))

(declare-fun b!58923 () Bool)

(assert (=> b!58923 (= e!31352 (reverse0!1 (tail!779 (tail!779 (tail!779 l1!308))) (Cons!476 (head!753 (tail!779 (tail!779 l1!308))) (Cons!476 (head!753 (tail!779 l1!308)) (Cons!476 (head!753 l1!308) l2!301)))))))

(assert (= (and d!50830 c!12689) b!58922))

(assert (= (and d!50830 (not c!12689)) b!58923))

(declare-fun m!63598 () Bool)

(assert (=> d!50830 m!63598))

(declare-fun m!63600 () Bool)

(assert (=> d!50830 m!63600))

(declare-fun m!63602 () Bool)

(assert (=> d!50830 m!63602))

(declare-fun m!63604 () Bool)

(assert (=> b!58923 m!63604))

(assert (=> b!58921 d!50830))

(declare-fun d!50832 () Bool)

(declare-fun c!12690 () Bool)

(assert (=> d!50832 (= c!12690 (is-Nil!477 (tail!779 x$5!61)))))

(declare-fun e!31353 () (Set (_ BitVec 32)))

(assert (=> d!50832 (= (content!16 (tail!779 x$5!61)) e!31353)))

(declare-fun b!58924 () Bool)

(assert (=> b!58924 (= e!31353 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!58925 () Bool)

(assert (=> b!58925 (= e!31353 (union (insert (head!753 (tail!779 x$5!61)) (as emptyset (Set (_ BitVec 32)))) (content!16 (tail!779 (tail!779 x$5!61)))))))

(assert (= (and d!50832 c!12690) b!58924))

(assert (= (and d!50832 (not c!12690)) b!58925))

(declare-fun m!63606 () Bool)

(assert (=> b!58925 m!63606))

(declare-fun m!63608 () Bool)

(assert (=> b!58925 m!63608))

(assert (=> b!58911 d!50832))

(declare-fun d!50834 () Bool)

(declare-fun c!12691 () Bool)

(assert (=> d!50834 (= c!12691 (is-Nil!477 (tail!779 l1!308)))))

(declare-fun e!31354 () (Set (_ BitVec 32)))

(assert (=> d!50834 (= (content!16 (tail!779 l1!308)) e!31354)))

(declare-fun b!58926 () Bool)

(assert (=> b!58926 (= e!31354 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!58927 () Bool)

(assert (=> b!58927 (= e!31354 (union (insert (head!753 (tail!779 l1!308)) (as emptyset (Set (_ BitVec 32)))) (content!16 (tail!779 (tail!779 l1!308)))))))

(assert (= (and d!50834 c!12691) b!58926))

(assert (= (and d!50834 (not c!12691)) b!58927))

(declare-fun m!63610 () Bool)

(assert (=> b!58927 m!63610))

(assert (=> b!58927 m!63600))

(assert (=> b!58913 d!50834))

(declare-fun d!50836 () Bool)

(declare-fun c!12692 () Bool)

(assert (=> d!50836 (= c!12692 (is-Nil!477 lt!10826))))

(declare-fun e!31355 () (Set (_ BitVec 32)))

(assert (=> d!50836 (= (content!16 lt!10826) e!31355)))

(declare-fun b!58928 () Bool)

(assert (=> b!58928 (= e!31355 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!58929 () Bool)

(assert (=> b!58929 (= e!31355 (union (insert (head!753 lt!10826) (as emptyset (Set (_ BitVec 32)))) (content!16 (tail!779 lt!10826))))))

(assert (= (and d!50836 c!12692) b!58928))

(assert (= (and d!50836 (not c!12692)) b!58929))

(declare-fun m!63612 () Bool)

(assert (=> b!58929 m!63612))

(declare-fun m!63614 () Bool)

(assert (=> b!58929 m!63614))

(assert (=> d!50828 d!50836))

(assert (=> d!50828 d!50834))

(declare-fun d!50838 () Bool)

(declare-fun c!12693 () Bool)

(assert (=> d!50838 (= c!12693 (is-Nil!477 (Cons!476 (head!753 l1!308) l2!301)))))

(declare-fun e!31356 () (Set (_ BitVec 32)))

(assert (=> d!50838 (= (content!16 (Cons!476 (head!753 l1!308) l2!301)) e!31356)))

(declare-fun b!58930 () Bool)

(assert (=> b!58930 (= e!31356 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!58931 () Bool)

(assert (=> b!58931 (= e!31356 (union (insert (head!753 (Cons!476 (head!753 l1!308) l2!301)) (as emptyset (Set (_ BitVec 32)))) (content!16 (tail!779 (Cons!476 (head!753 l1!308) l2!301)))))))

(assert (= (and d!50838 c!12693) b!58930))

(assert (= (and d!50838 (not c!12693)) b!58931))

(declare-fun m!63616 () Bool)

(assert (=> b!58931 m!63616))

(declare-fun m!63618 () Bool)

(assert (=> b!58931 m!63618))

(assert (=> d!50828 d!50838))

(declare-fun d!50840 () Bool)

(declare-fun c!12694 () Bool)

(assert (=> d!50840 (= c!12694 (is-Nil!477 (tail!779 l2!301)))))

(declare-fun e!31357 () (Set (_ BitVec 32)))

(assert (=> d!50840 (= (content!16 (tail!779 l2!301)) e!31357)))

(declare-fun b!58932 () Bool)

(assert (=> b!58932 (= e!31357 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!58933 () Bool)

(assert (=> b!58933 (= e!31357 (union (insert (head!753 (tail!779 l2!301)) (as emptyset (Set (_ BitVec 32)))) (content!16 (tail!779 (tail!779 l2!301)))))))

(assert (= (and d!50840 c!12694) b!58932))

(assert (= (and d!50840 (not c!12694)) b!58933))

(declare-fun m!63620 () Bool)

(assert (=> b!58933 m!63620))

(declare-fun m!63622 () Bool)

(assert (=> b!58933 m!63622))

(assert (=> b!58915 d!50840))

(push 1)

(assert (not b!58931))

(assert (not b!58929))

(assert (not b!58925))

(assert (not b!58927))

(assert (not d!50830))

(assert (not b!58933))

(assert (not b!58923))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

