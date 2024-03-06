; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10654 () Bool)

(assert start!10654)

(declare-fun b!80882 () Bool)

(assert (=> b!80882 true))

(declare-fun bs!38429 () Bool)

(declare-fun b!80885 () Bool)

(assert (= bs!38429 (and b!80885 b!80882)))

(declare-fun lambda!9400 () Int)

(declare-fun lambda!9399 () Int)

(assert (=> bs!38429 (not (= lambda!9400 lambda!9399))))

(assert (=> b!80885 true))

(declare-fun bs!38430 () Bool)

(declare-fun b!80877 () Bool)

(assert (= bs!38430 (and b!80877 b!80882)))

(declare-fun lambda!9401 () Int)

(assert (=> bs!38430 (not (= lambda!9401 lambda!9399))))

(declare-fun bs!38431 () Bool)

(assert (= bs!38431 (and b!80877 b!80885)))

(assert (=> bs!38431 (not (= lambda!9401 lambda!9400))))

(assert (=> b!80877 true))

(declare-fun bs!38432 () Bool)

(declare-fun b!80878 () Bool)

(assert (= bs!38432 (and b!80878 b!80882)))

(declare-fun lambda!9402 () Int)

(assert (=> bs!38432 (not (= lambda!9402 lambda!9399))))

(declare-fun bs!38433 () Bool)

(assert (= bs!38433 (and b!80878 b!80885)))

(assert (=> bs!38433 (not (= lambda!9402 lambda!9400))))

(declare-fun bs!38434 () Bool)

(assert (= bs!38434 (and b!80878 b!80877)))

(assert (=> bs!38434 (not (= lambda!9402 lambda!9401))))

(assert (=> b!80878 true))

(declare-fun bs!38435 () Bool)

(declare-fun b!80887 () Bool)

(assert (= bs!38435 (and b!80887 b!80882)))

(declare-fun lambda!9403 () Int)

(assert (=> bs!38435 (not (= lambda!9403 lambda!9399))))

(declare-fun bs!38436 () Bool)

(assert (= bs!38436 (and b!80887 b!80885)))

(declare-fun x!29308 () Int)

(declare-datatypes () ((List!662 (Cons!619 (h!988 Int) (t!47808 List!662)) (Nil!621))))

(declare-fun ls!96 () List!662)

(assert (=> bs!38436 (= (= x!29308 (h!988 ls!96)) (= lambda!9403 lambda!9400))))

(declare-fun bs!38437 () Bool)

(assert (= bs!38437 (and b!80887 b!80877)))

(assert (=> bs!38437 (not (= lambda!9403 lambda!9401))))

(declare-fun bs!38438 () Bool)

(assert (= bs!38438 (and b!80887 b!80878)))

(assert (=> bs!38438 (not (= lambda!9403 lambda!9402))))

(assert (=> b!80887 true))

(declare-fun b!80876 () Bool)

(declare-fun res!41250 () Bool)

(declare-fun e!43863 () Bool)

(assert (=> b!80876 (=> (not res!41250) (not e!43863))))

(declare-fun less!5 () List!662)

(declare-fun equal!10 () List!662)

(declare-fun append_sorted!0 (List!662 List!662) Bool)

(declare-fun quickSort!0 (List!662) List!662)

(assert (=> b!80876 (= res!41250 (append_sorted!0 (quickSort!0 less!5) equal!10))))

(declare-fun res!41252 () Bool)

(assert (=> b!80877 (=> (not res!41252) (not e!43863))))

(declare-fun more!5 () List!662)

(declare-fun filter!15 (List!662 Int) List!662)

(assert (=> b!80877 (= res!41252 (= more!5 (filter!15 (t!47808 ls!96) lambda!9401)))))

(declare-fun res!41245 () Bool)

(assert (=> b!80878 (=> (not res!41245) (not e!43863))))

(declare-fun sort_preserves_forall!0 (List!662 Int) Bool)

(assert (=> b!80878 (= res!41245 (sort_preserves_forall!0 less!5 lambda!9402))))

(declare-fun b!80879 () Bool)

(declare-fun res!41251 () Bool)

(assert (=> b!80879 (=> (not res!41251) (not e!43863))))

(declare-fun forall_lt_implies_le!0 (List!662 Int) Bool)

(assert (=> b!80879 (= res!41251 (forall_lt_implies_le!0 less!5 (h!988 ls!96)))))

(declare-fun res!41243 () Bool)

(assert (=> start!10654 (=> (not res!41243) (not e!43863))))

(assert (=> start!10654 (= res!41243 (and (not (is-Nil!621 ls!96)) (not (is-Nil!621 (t!47808 ls!96)))))))

(assert (=> start!10654 e!43863))

(assert (=> start!10654 true))

(declare-fun b!80880 () Bool)

(declare-fun res!41244 () Bool)

(assert (=> b!80880 (=> (not res!41244) (not e!43863))))

(assert (=> b!80880 (= res!41244 (sort_preserves_forall!0 less!5 lambda!9399))))

(declare-fun b!80881 () Bool)

(declare-fun res!41253 () Bool)

(assert (=> b!80881 (=> (not res!41253) (not e!43863))))

(declare-fun forall_last!0 (List!662 Int) Bool)

(assert (=> b!80881 (= res!41253 (forall_last!0 (quickSort!0 less!5) lambda!9399))))

(declare-fun res!41246 () Bool)

(assert (=> b!80882 (=> (not res!41246) (not e!43863))))

(assert (=> b!80882 (= res!41246 (= less!5 (filter!15 (t!47808 ls!96) lambda!9399)))))

(declare-fun b!80883 () Bool)

(declare-fun res!41242 () Bool)

(assert (=> b!80883 (=> (not res!41242) (not e!43863))))

(declare-fun ls!113 () List!662)

(assert (=> b!80883 (= res!41242 (and (= ls!113 equal!10) (= x!29308 (h!988 ls!96))))))

(declare-fun b!80884 () Bool)

(declare-fun res!41248 () Bool)

(assert (=> b!80884 (=> (not res!41248) (not e!43863))))

(declare-fun cons_filter_equal_sorted!0 (List!662 Int) Bool)

(assert (=> b!80884 (= res!41248 (cons_filter_equal_sorted!0 (t!47808 ls!96) (h!988 ls!96)))))

(declare-fun res!41249 () Bool)

(assert (=> b!80885 (=> (not res!41249) (not e!43863))))

(assert (=> b!80885 (= res!41249 (= equal!10 (Cons!619 (h!988 ls!96) (filter!15 (t!47808 ls!96) lambda!9400))))))

(declare-fun b!80886 () Bool)

(declare-fun res!41247 () Bool)

(assert (=> b!80886 (=> (not res!41247) (not e!43863))))

(declare-fun sorted_lemma!0 (List!662) Bool)

(assert (=> b!80886 (= res!41247 (sorted_lemma!0 less!5))))

(declare-fun forall!17 (List!662 Int) Bool)

(assert (=> b!80887 (= e!43863 (not (forall!17 ls!113 lambda!9403)))))

(assert (= (and start!10654 res!41243) b!80882))

(assert (= (and b!80882 res!41246) b!80885))

(assert (= (and b!80885 res!41249) b!80877))

(assert (= (and b!80877 res!41252) b!80886))

(assert (= (and b!80886 res!41247) b!80880))

(assert (= (and b!80880 res!41244) b!80881))

(assert (= (and b!80881 res!41253) b!80884))

(assert (= (and b!80884 res!41248) b!80876))

(assert (= (and b!80876 res!41250) b!80879))

(assert (= (and b!80879 res!41251) b!80878))

(assert (= (and b!80878 res!41245) b!80883))

(assert (= (and b!80883 res!41242) b!80887))

(declare-fun m!75660 () Bool)

(assert (=> b!80887 m!75660))

(declare-fun m!75662 () Bool)

(assert (=> b!80885 m!75662))

(declare-fun m!75664 () Bool)

(assert (=> b!80880 m!75664))

(declare-fun m!75666 () Bool)

(assert (=> b!80877 m!75666))

(declare-fun m!75668 () Bool)

(assert (=> b!80884 m!75668))

(declare-fun m!75670 () Bool)

(assert (=> b!80876 m!75670))

(assert (=> b!80876 m!75670))

(declare-fun m!75672 () Bool)

(assert (=> b!80876 m!75672))

(assert (=> b!80881 m!75670))

(assert (=> b!80881 m!75670))

(declare-fun m!75674 () Bool)

(assert (=> b!80881 m!75674))

(declare-fun m!75676 () Bool)

(assert (=> b!80878 m!75676))

(declare-fun m!75678 () Bool)

(assert (=> b!80886 m!75678))

(declare-fun m!75680 () Bool)

(assert (=> b!80882 m!75680))

(declare-fun m!75682 () Bool)

(assert (=> b!80879 m!75682))

(push 1)

(assert (not b!80876))

(assert (not b!80879))

(assert (not b!80886))

(assert (not b!80877))

(assert (not b!80884))

(assert (not b!80881))

(assert (not b!80885))

(assert (not b!80880))

(assert (not b!80878))

(assert (not b!80882))

(assert (not b!80887))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!38439 () Bool)

(declare-fun b!80896 () Bool)

(assert (= bs!38439 (and b!80896 b!80877)))

(declare-fun lambda!9410 () Int)

(assert (=> bs!38439 (not (= lambda!9410 lambda!9401))))

(declare-fun bs!38440 () Bool)

(assert (= bs!38440 (and b!80896 b!80885)))

(assert (=> bs!38440 (not (= lambda!9410 lambda!9400))))

(declare-fun bs!38441 () Bool)

(assert (= bs!38441 (and b!80896 b!80882)))

(assert (=> bs!38441 (= (= (h!988 less!5) (h!988 ls!96)) (= lambda!9410 lambda!9399))))

(declare-fun bs!38442 () Bool)

(assert (= bs!38442 (and b!80896 b!80878)))

(assert (=> bs!38442 (not (= lambda!9410 lambda!9402))))

(declare-fun bs!38443 () Bool)

(assert (= bs!38443 (and b!80896 b!80887)))

(assert (=> bs!38443 (not (= lambda!9410 lambda!9403))))

(assert (=> b!80896 true))

(declare-fun lambda!9411 () Int)

(assert (=> bs!38439 (not (= lambda!9411 lambda!9401))))

(assert (=> bs!38440 (= (= (h!988 less!5) (h!988 ls!96)) (= lambda!9411 lambda!9400))))

(assert (=> bs!38441 (not (= lambda!9411 lambda!9399))))

(assert (=> b!80896 (not (= lambda!9411 lambda!9410))))

(assert (=> bs!38442 (not (= lambda!9411 lambda!9402))))

(assert (=> bs!38443 (= (= (h!988 less!5) x!29308) (= lambda!9411 lambda!9403))))

(assert (=> b!80896 true))

(declare-fun lambda!9412 () Int)

(assert (=> bs!38439 (= (= (h!988 less!5) (h!988 ls!96)) (= lambda!9412 lambda!9401))))

(assert (=> bs!38440 (not (= lambda!9412 lambda!9400))))

(assert (=> bs!38441 (not (= lambda!9412 lambda!9399))))

(assert (=> b!80896 (not (= lambda!9412 lambda!9411))))

(assert (=> b!80896 (not (= lambda!9412 lambda!9410))))

(assert (=> bs!38442 (not (= lambda!9412 lambda!9402))))

(assert (=> bs!38443 (not (= lambda!9412 lambda!9403))))

(assert (=> b!80896 true))

(declare-fun d!55599 () Bool)

(declare-fun isSorted!1 (List!662) Bool)

(assert (=> d!55599 (isSorted!1 (quickSort!0 less!5))))

(declare-fun lt!18526 () Bool)

(declare-fun e!43868 () Bool)

(assert (=> d!55599 (= lt!18526 e!43868)))

(declare-fun res!41261 () Bool)

(assert (=> d!55599 (=> res!41261 e!43868)))

(assert (=> d!55599 (= res!41261 (or (is-Nil!621 less!5) (and (is-Cons!619 less!5) (is-Nil!621 (t!47808 less!5)))))))

(assert (=> d!55599 (= (sorted_lemma!0 less!5) true)))

(declare-fun e!43869 () Bool)

(assert (=> b!80896 (= e!43868 e!43869)))

(declare-fun res!41260 () Bool)

(assert (=> b!80896 (=> (not res!41260) (not e!43869))))

(declare-fun lt!18527 () List!662)

(declare-fun lt!18525 () List!662)

(assert (=> b!80896 (= res!41260 (append_sorted!0 (quickSort!0 lt!18527) lt!18525))))

(declare-fun lt!18524 () List!662)

(assert (=> b!80896 (= lt!18524 (filter!15 (t!47808 less!5) lambda!9412))))

(assert (=> b!80896 (= lt!18525 (Cons!619 (h!988 less!5) (filter!15 (t!47808 less!5) lambda!9411)))))

(assert (=> b!80896 (= lt!18527 (filter!15 (t!47808 less!5) lambda!9410))))

(declare-fun b!80897 () Bool)

(declare-fun ++!70 (List!662 List!662) List!662)

(assert (=> b!80897 (= e!43869 (append_sorted!0 (++!70 (quickSort!0 lt!18527) lt!18525) (quickSort!0 lt!18524)))))

(assert (= (and d!55599 (not res!41261)) b!80896))

(assert (= (and b!80896 res!41260) b!80897))

(assert (=> d!55599 m!75670))

(assert (=> d!55599 m!75670))

(declare-fun m!75684 () Bool)

(assert (=> d!55599 m!75684))

(declare-fun m!75686 () Bool)

(assert (=> b!80896 m!75686))

(declare-fun m!75688 () Bool)

(assert (=> b!80896 m!75688))

(declare-fun m!75690 () Bool)

(assert (=> b!80896 m!75690))

(declare-fun m!75692 () Bool)

(assert (=> b!80896 m!75692))

(declare-fun m!75694 () Bool)

(assert (=> b!80896 m!75694))

(assert (=> b!80896 m!75692))

(assert (=> b!80897 m!75692))

(assert (=> b!80897 m!75692))

(declare-fun m!75696 () Bool)

(assert (=> b!80897 m!75696))

(declare-fun m!75698 () Bool)

(assert (=> b!80897 m!75698))

(assert (=> b!80897 m!75696))

(assert (=> b!80897 m!75698))

(declare-fun m!75700 () Bool)

(assert (=> b!80897 m!75700))

(assert (=> b!80886 d!55599))

(declare-fun bs!38444 () Bool)

(declare-fun b!80909 () Bool)

(assert (= bs!38444 (and b!80909 b!80877)))

(declare-fun lambda!9425 () Int)

(assert (=> bs!38444 (not (= lambda!9425 lambda!9401))))

(declare-fun bs!38445 () Bool)

(assert (= bs!38445 (and b!80909 b!80885)))

(assert (=> bs!38445 (not (= lambda!9425 lambda!9400))))

(declare-fun bs!38446 () Bool)

(assert (= bs!38446 (and b!80909 b!80882)))

(assert (=> bs!38446 (= (= (h!988 less!5) (h!988 ls!96)) (= lambda!9425 lambda!9399))))

(declare-fun bs!38447 () Bool)

(assert (= bs!38447 (and b!80909 b!80896)))

(assert (=> bs!38447 (not (= lambda!9425 lambda!9412))))

(assert (=> bs!38447 (not (= lambda!9425 lambda!9411))))

(assert (=> bs!38447 (= lambda!9425 lambda!9410)))

(declare-fun bs!38448 () Bool)

(assert (= bs!38448 (and b!80909 b!80878)))

(assert (=> bs!38448 (not (= lambda!9425 lambda!9402))))

(declare-fun bs!38449 () Bool)

(assert (= bs!38449 (and b!80909 b!80887)))

(assert (=> bs!38449 (not (= lambda!9425 lambda!9403))))

(assert (=> b!80909 true))

(declare-fun lambda!9426 () Int)

(assert (=> bs!38444 (not (= lambda!9426 lambda!9401))))

(assert (=> bs!38445 (= (= (h!988 less!5) (h!988 ls!96)) (= lambda!9426 lambda!9400))))

(assert (=> bs!38446 (not (= lambda!9426 lambda!9399))))

(assert (=> bs!38447 (not (= lambda!9426 lambda!9412))))

(assert (=> bs!38447 (= lambda!9426 lambda!9411)))

(assert (=> bs!38447 (not (= lambda!9426 lambda!9410))))

(assert (=> bs!38448 (not (= lambda!9426 lambda!9402))))

(assert (=> b!80909 (not (= lambda!9426 lambda!9425))))

(assert (=> bs!38449 (= (= (h!988 less!5) x!29308) (= lambda!9426 lambda!9403))))

(assert (=> b!80909 true))

(declare-fun lambda!9427 () Int)

(assert (=> bs!38444 (= (= (h!988 less!5) (h!988 ls!96)) (= lambda!9427 lambda!9401))))

(assert (=> bs!38445 (not (= lambda!9427 lambda!9400))))

(assert (=> bs!38446 (not (= lambda!9427 lambda!9399))))

(assert (=> bs!38447 (= lambda!9427 lambda!9412)))

(assert (=> bs!38447 (not (= lambda!9427 lambda!9411))))

(assert (=> bs!38447 (not (= lambda!9427 lambda!9410))))

(assert (=> bs!38448 (not (= lambda!9427 lambda!9402))))

(assert (=> b!80909 (not (= lambda!9427 lambda!9426))))

(assert (=> b!80909 (not (= lambda!9427 lambda!9425))))

(assert (=> bs!38449 (not (= lambda!9427 lambda!9403))))

(assert (=> b!80909 true))

(declare-fun d!55601 () Bool)

(assert (=> d!55601 (forall!17 (quickSort!0 less!5) lambda!9402)))

(declare-fun lt!18543 () Bool)

(declare-fun e!43882 () Bool)

(assert (=> d!55601 (= lt!18543 e!43882)))

(declare-fun res!41279 () Bool)

(assert (=> d!55601 (=> res!41279 e!43882)))

(assert (=> d!55601 (= res!41279 (or (is-Nil!621 less!5) (and (is-Cons!619 less!5) (is-Nil!621 (t!47808 less!5)))))))

(assert (=> d!55601 (forall!17 less!5 lambda!9402)))

(assert (=> d!55601 (= (sort_preserves_forall!0 less!5 lambda!9402) true)))

(declare-fun lt!18541 () List!662)

(declare-fun lt!18544 () List!662)

(declare-fun b!80908 () Bool)

(declare-fun lt!18540 () List!662)

(declare-fun e!43883 () Bool)

(declare-fun append_preserves_forall!0 (List!662 List!662 Int) Bool)

(assert (=> b!80908 (= e!43883 (append_preserves_forall!0 (++!70 (quickSort!0 lt!18544) lt!18541) (quickSort!0 lt!18540) lambda!9402))))

(assert (=> b!80909 (= e!43882 e!43883)))

(declare-fun res!41280 () Bool)

(assert (=> b!80909 (=> (not res!41280) (not e!43883))))

(assert (=> b!80909 (= res!41280 (append_preserves_forall!0 (quickSort!0 lt!18544) lt!18541 lambda!9402))))

(declare-fun lt!18542 () Bool)

(declare-fun e!43881 () Bool)

(assert (=> b!80909 (= lt!18542 e!43881)))

(declare-fun res!41277 () Bool)

(assert (=> b!80909 (=> (not res!41277) (not e!43881))))

(assert (=> b!80909 (= res!41277 (sort_preserves_forall!0 lt!18544 lambda!9402))))

(declare-fun lt!18545 () Bool)

(declare-fun e!43884 () Bool)

(assert (=> b!80909 (= lt!18545 e!43884)))

(declare-fun res!41278 () Bool)

(assert (=> b!80909 (=> (not res!41278) (not e!43884))))

(declare-fun e!43880 () Bool)

(assert (=> b!80909 (= res!41278 e!43880)))

(declare-fun res!41281 () Bool)

(assert (=> b!80909 (=> (not res!41281) (not e!43880))))

(declare-fun filter_preserves_forall!0 (List!662 Int Int) Bool)

(assert (=> b!80909 (= res!41281 (filter_preserves_forall!0 (t!47808 less!5) lambda!9425 lambda!9402))))

(assert (=> b!80909 (= lt!18540 (filter!15 (t!47808 less!5) lambda!9427))))

(assert (=> b!80909 (= lt!18541 (Cons!619 (h!988 less!5) (filter!15 (t!47808 less!5) lambda!9426)))))

(assert (=> b!80909 (= lt!18544 (filter!15 (t!47808 less!5) lambda!9425))))

(declare-fun b!80910 () Bool)

(assert (=> b!80910 (= e!43880 (filter_preserves_forall!0 (t!47808 less!5) lambda!9426 lambda!9402))))

(declare-fun b!80911 () Bool)

(assert (=> b!80911 (= e!43884 (filter_preserves_forall!0 (t!47808 less!5) lambda!9427 lambda!9402))))

(declare-fun b!80912 () Bool)

(assert (=> b!80912 (= e!43881 (sort_preserves_forall!0 lt!18540 lambda!9402))))

(assert (= (and d!55601 (not res!41279)) b!80909))

(assert (= (and b!80909 res!41281) b!80910))

(assert (= (and b!80909 res!41278) b!80911))

(assert (= (and b!80909 res!41277) b!80912))

(assert (= (and b!80909 res!41280) b!80908))

(declare-fun m!75702 () Bool)

(assert (=> b!80909 m!75702))

(declare-fun m!75704 () Bool)

(assert (=> b!80909 m!75704))

(declare-fun m!75706 () Bool)

(assert (=> b!80909 m!75706))

(declare-fun m!75708 () Bool)

(assert (=> b!80909 m!75708))

(declare-fun m!75710 () Bool)

(assert (=> b!80909 m!75710))

(declare-fun m!75712 () Bool)

(assert (=> b!80909 m!75712))

(assert (=> b!80909 m!75712))

(declare-fun m!75714 () Bool)

(assert (=> b!80909 m!75714))

(declare-fun m!75716 () Bool)

(assert (=> b!80912 m!75716))

(declare-fun m!75718 () Bool)

(assert (=> b!80911 m!75718))

(declare-fun m!75720 () Bool)

(assert (=> b!80910 m!75720))

(assert (=> b!80908 m!75712))

(assert (=> b!80908 m!75712))

(declare-fun m!75722 () Bool)

(assert (=> b!80908 m!75722))

(declare-fun m!75724 () Bool)

(assert (=> b!80908 m!75724))

(assert (=> b!80908 m!75722))

(assert (=> b!80908 m!75724))

(declare-fun m!75726 () Bool)

(assert (=> b!80908 m!75726))

(assert (=> d!55601 m!75670))

(assert (=> d!55601 m!75670))

(declare-fun m!75728 () Bool)

(assert (=> d!55601 m!75728))

(declare-fun m!75730 () Bool)

(assert (=> d!55601 m!75730))

(assert (=> b!80878 d!55601))

(declare-fun bs!38450 () Bool)

(declare-fun b!80914 () Bool)

(assert (= bs!38450 (and b!80914 b!80877)))

(declare-fun lambda!9428 () Int)

(assert (=> bs!38450 (not (= lambda!9428 lambda!9401))))

(declare-fun bs!38451 () Bool)

(assert (= bs!38451 (and b!80914 b!80885)))

(assert (=> bs!38451 (not (= lambda!9428 lambda!9400))))

(declare-fun bs!38452 () Bool)

(assert (= bs!38452 (and b!80914 b!80882)))

(assert (=> bs!38452 (= (= (h!988 less!5) (h!988 ls!96)) (= lambda!9428 lambda!9399))))

(declare-fun bs!38453 () Bool)

(assert (= bs!38453 (and b!80914 b!80896)))

(assert (=> bs!38453 (not (= lambda!9428 lambda!9412))))

(assert (=> bs!38453 (not (= lambda!9428 lambda!9411))))

(assert (=> bs!38453 (= lambda!9428 lambda!9410)))

(declare-fun bs!38454 () Bool)

(assert (= bs!38454 (and b!80914 b!80878)))

(assert (=> bs!38454 (not (= lambda!9428 lambda!9402))))

(declare-fun bs!38455 () Bool)

(assert (= bs!38455 (and b!80914 b!80909)))

(assert (=> bs!38455 (not (= lambda!9428 lambda!9427))))

(assert (=> bs!38455 (not (= lambda!9428 lambda!9426))))

(assert (=> bs!38455 (= lambda!9428 lambda!9425)))

(declare-fun bs!38456 () Bool)

(assert (= bs!38456 (and b!80914 b!80887)))

(assert (=> bs!38456 (not (= lambda!9428 lambda!9403))))

(assert (=> b!80914 true))

(declare-fun lambda!9429 () Int)

(assert (=> bs!38450 (not (= lambda!9429 lambda!9401))))

(assert (=> bs!38451 (= (= (h!988 less!5) (h!988 ls!96)) (= lambda!9429 lambda!9400))))

(assert (=> bs!38452 (not (= lambda!9429 lambda!9399))))

(assert (=> bs!38453 (not (= lambda!9429 lambda!9412))))

(assert (=> bs!38453 (= lambda!9429 lambda!9411)))

(assert (=> bs!38453 (not (= lambda!9429 lambda!9410))))

(assert (=> bs!38454 (not (= lambda!9429 lambda!9402))))

(assert (=> bs!38455 (not (= lambda!9429 lambda!9427))))

(assert (=> bs!38455 (= lambda!9429 lambda!9426)))

(assert (=> bs!38455 (not (= lambda!9429 lambda!9425))))

(assert (=> bs!38456 (= (= (h!988 less!5) x!29308) (= lambda!9429 lambda!9403))))

(assert (=> b!80914 (not (= lambda!9429 lambda!9428))))

(assert (=> b!80914 true))

(declare-fun lambda!9430 () Int)

(assert (=> bs!38450 (= (= (h!988 less!5) (h!988 ls!96)) (= lambda!9430 lambda!9401))))

(assert (=> bs!38451 (not (= lambda!9430 lambda!9400))))

(assert (=> bs!38452 (not (= lambda!9430 lambda!9399))))

(assert (=> bs!38453 (= lambda!9430 lambda!9412)))

(assert (=> bs!38453 (not (= lambda!9430 lambda!9411))))

(assert (=> bs!38453 (not (= lambda!9430 lambda!9410))))

(assert (=> bs!38454 (not (= lambda!9430 lambda!9402))))

(assert (=> bs!38455 (= lambda!9430 lambda!9427)))

(assert (=> bs!38455 (not (= lambda!9430 lambda!9426))))

(assert (=> bs!38455 (not (= lambda!9430 lambda!9425))))

(assert (=> bs!38456 (not (= lambda!9430 lambda!9403))))

(assert (=> b!80914 (not (= lambda!9430 lambda!9429))))

(assert (=> b!80914 (not (= lambda!9430 lambda!9428))))

(assert (=> b!80914 true))

(declare-fun d!55603 () Bool)

(assert (=> d!55603 (forall!17 (quickSort!0 less!5) lambda!9399)))

(declare-fun lt!18549 () Bool)

(declare-fun e!43887 () Bool)

(assert (=> d!55603 (= lt!18549 e!43887)))

(declare-fun res!41284 () Bool)

(assert (=> d!55603 (=> res!41284 e!43887)))

(assert (=> d!55603 (= res!41284 (or (is-Nil!621 less!5) (and (is-Cons!619 less!5) (is-Nil!621 (t!47808 less!5)))))))

(assert (=> d!55603 (forall!17 less!5 lambda!9399)))

(assert (=> d!55603 (= (sort_preserves_forall!0 less!5 lambda!9399) true)))

(declare-fun lt!18546 () List!662)

(declare-fun e!43888 () Bool)

(declare-fun lt!18550 () List!662)

(declare-fun b!80913 () Bool)

(declare-fun lt!18547 () List!662)

(assert (=> b!80913 (= e!43888 (append_preserves_forall!0 (++!70 (quickSort!0 lt!18550) lt!18547) (quickSort!0 lt!18546) lambda!9399))))

(assert (=> b!80914 (= e!43887 e!43888)))

(declare-fun res!41285 () Bool)

(assert (=> b!80914 (=> (not res!41285) (not e!43888))))

(assert (=> b!80914 (= res!41285 (append_preserves_forall!0 (quickSort!0 lt!18550) lt!18547 lambda!9399))))

(declare-fun lt!18548 () Bool)

(declare-fun e!43886 () Bool)

(assert (=> b!80914 (= lt!18548 e!43886)))

(declare-fun res!41282 () Bool)

(assert (=> b!80914 (=> (not res!41282) (not e!43886))))

(assert (=> b!80914 (= res!41282 (sort_preserves_forall!0 lt!18550 lambda!9399))))

(declare-fun lt!18551 () Bool)

(declare-fun e!43889 () Bool)

(assert (=> b!80914 (= lt!18551 e!43889)))

(declare-fun res!41283 () Bool)

(assert (=> b!80914 (=> (not res!41283) (not e!43889))))

(declare-fun e!43885 () Bool)

(assert (=> b!80914 (= res!41283 e!43885)))

(declare-fun res!41286 () Bool)

(assert (=> b!80914 (=> (not res!41286) (not e!43885))))

(assert (=> b!80914 (= res!41286 (filter_preserves_forall!0 (t!47808 less!5) lambda!9428 lambda!9399))))

(assert (=> b!80914 (= lt!18546 (filter!15 (t!47808 less!5) lambda!9430))))

(assert (=> b!80914 (= lt!18547 (Cons!619 (h!988 less!5) (filter!15 (t!47808 less!5) lambda!9429)))))

(assert (=> b!80914 (= lt!18550 (filter!15 (t!47808 less!5) lambda!9428))))

(declare-fun b!80915 () Bool)

(assert (=> b!80915 (= e!43885 (filter_preserves_forall!0 (t!47808 less!5) lambda!9429 lambda!9399))))

(declare-fun b!80916 () Bool)

(assert (=> b!80916 (= e!43889 (filter_preserves_forall!0 (t!47808 less!5) lambda!9430 lambda!9399))))

(declare-fun b!80917 () Bool)

(assert (=> b!80917 (= e!43886 (sort_preserves_forall!0 lt!18546 lambda!9399))))

(assert (= (and d!55603 (not res!41284)) b!80914))

(assert (= (and b!80914 res!41286) b!80915))

(assert (= (and b!80914 res!41283) b!80916))

(assert (= (and b!80914 res!41282) b!80917))

(assert (= (and b!80914 res!41285) b!80913))

(declare-fun m!75732 () Bool)

(assert (=> b!80914 m!75732))

(declare-fun m!75734 () Bool)

(assert (=> b!80914 m!75734))

(declare-fun m!75736 () Bool)

(assert (=> b!80914 m!75736))

(declare-fun m!75738 () Bool)

(assert (=> b!80914 m!75738))

(declare-fun m!75740 () Bool)

(assert (=> b!80914 m!75740))

(declare-fun m!75742 () Bool)

(assert (=> b!80914 m!75742))

(assert (=> b!80914 m!75742))

(declare-fun m!75744 () Bool)

(assert (=> b!80914 m!75744))

(declare-fun m!75746 () Bool)

(assert (=> b!80917 m!75746))

(declare-fun m!75748 () Bool)

(assert (=> b!80916 m!75748))

(declare-fun m!75750 () Bool)

(assert (=> b!80915 m!75750))

(assert (=> b!80913 m!75742))

(assert (=> b!80913 m!75742))

(declare-fun m!75752 () Bool)

(assert (=> b!80913 m!75752))

(declare-fun m!75754 () Bool)

(assert (=> b!80913 m!75754))

(assert (=> b!80913 m!75752))

(assert (=> b!80913 m!75754))

(declare-fun m!75756 () Bool)

(assert (=> b!80913 m!75756))

(assert (=> d!55603 m!75670))

(assert (=> d!55603 m!75670))

(declare-fun m!75758 () Bool)

(assert (=> d!55603 m!75758))

(declare-fun m!75760 () Bool)

(assert (=> d!55603 m!75760))

(assert (=> b!80880 d!55603))

(declare-fun b!80930 () Bool)

(declare-fun res!41296 () Bool)

(declare-fun e!43898 () Bool)

(assert (=> b!80930 (=> res!41296 e!43898)))

(declare-fun isEmpty!674 (List!662) Bool)

(assert (=> b!80930 (= res!41296 (isEmpty!674 equal!10))))

(declare-fun b!80931 () Bool)

(declare-fun e!43896 () Bool)

(assert (=> b!80931 (= e!43896 e!43898)))

(declare-fun res!41295 () Bool)

(assert (=> b!80931 (=> res!41295 e!43898)))

(assert (=> b!80931 (= res!41295 (isEmpty!674 (quickSort!0 less!5)))))

(declare-fun b!80932 () Bool)

(declare-fun last!14 (List!662) Int)

(declare-fun head!1052 (List!662) Int)

(assert (=> b!80932 (= e!43898 (<= (last!14 (quickSort!0 less!5)) (head!1052 equal!10)))))

(declare-fun b!80933 () Bool)

(declare-fun res!41298 () Bool)

(assert (=> b!80933 (=> (not res!41298) (not e!43896))))

(assert (=> b!80933 (= res!41298 (isSorted!1 equal!10))))

(declare-fun d!55605 () Bool)

(declare-fun e!43897 () Bool)

(assert (=> d!55605 e!43897))

(declare-fun c!20414 () Bool)

(assert (=> d!55605 (= c!20414 (is-Cons!619 (quickSort!0 less!5)))))

(assert (=> d!55605 e!43896))

(declare-fun res!41297 () Bool)

(assert (=> d!55605 (=> (not res!41297) (not e!43896))))

(assert (=> d!55605 (= res!41297 (isSorted!1 (quickSort!0 less!5)))))

(assert (=> d!55605 (= (append_sorted!0 (quickSort!0 less!5) equal!10) true)))

(declare-fun b!80934 () Bool)

(assert (=> b!80934 (= e!43897 (isSorted!1 (++!70 (quickSort!0 less!5) equal!10)))))

(declare-fun lt!18554 () Bool)

(assert (=> b!80934 (= lt!18554 (append_sorted!0 (t!47808 (quickSort!0 less!5)) equal!10))))

(declare-fun b!80935 () Bool)

(assert (=> b!80935 (= e!43897 (isSorted!1 (++!70 (quickSort!0 less!5) equal!10)))))

(assert (= (and d!55605 res!41297) b!80933))

(assert (= (and b!80933 res!41298) b!80931))

(assert (= (and b!80931 (not res!41295)) b!80930))

(assert (= (and b!80930 (not res!41296)) b!80932))

(assert (= (and d!55605 c!20414) b!80934))

(assert (= (and d!55605 (not c!20414)) b!80935))

(assert (=> b!80934 m!75670))

(declare-fun m!75762 () Bool)

(assert (=> b!80934 m!75762))

(assert (=> b!80934 m!75762))

(declare-fun m!75764 () Bool)

(assert (=> b!80934 m!75764))

(declare-fun m!75766 () Bool)

(assert (=> b!80934 m!75766))

(assert (=> b!80932 m!75670))

(declare-fun m!75768 () Bool)

(assert (=> b!80932 m!75768))

(declare-fun m!75770 () Bool)

(assert (=> b!80932 m!75770))

(assert (=> d!55605 m!75670))

(assert (=> d!55605 m!75684))

(assert (=> b!80935 m!75670))

(assert (=> b!80935 m!75762))

(assert (=> b!80935 m!75762))

(assert (=> b!80935 m!75764))

(declare-fun m!75772 () Bool)

(assert (=> b!80933 m!75772))

(declare-fun m!75774 () Bool)

(assert (=> b!80930 m!75774))

(assert (=> b!80931 m!75670))

(declare-fun m!75776 () Bool)

(assert (=> b!80931 m!75776))

(assert (=> b!80876 d!55605))

(declare-fun bs!38457 () Bool)

(declare-fun b!80947 () Bool)

(assert (= bs!38457 (and b!80947 b!80877)))

(declare-fun lambda!9437 () Int)

(assert (=> bs!38457 (not (= lambda!9437 lambda!9401))))

(declare-fun bs!38458 () Bool)

(assert (= bs!38458 (and b!80947 b!80885)))

(assert (=> bs!38458 (not (= lambda!9437 lambda!9400))))

(declare-fun bs!38459 () Bool)

(assert (= bs!38459 (and b!80947 b!80882)))

(assert (=> bs!38459 (= (= (h!988 less!5) (h!988 ls!96)) (= lambda!9437 lambda!9399))))

(declare-fun bs!38460 () Bool)

(assert (= bs!38460 (and b!80947 b!80896)))

(assert (=> bs!38460 (not (= lambda!9437 lambda!9412))))

(assert (=> bs!38460 (not (= lambda!9437 lambda!9411))))

(assert (=> bs!38460 (= lambda!9437 lambda!9410)))

(declare-fun bs!38461 () Bool)

(assert (= bs!38461 (and b!80947 b!80878)))

(assert (=> bs!38461 (not (= lambda!9437 lambda!9402))))

(declare-fun bs!38462 () Bool)

(assert (= bs!38462 (and b!80947 b!80909)))

(assert (=> bs!38462 (not (= lambda!9437 lambda!9427))))

(assert (=> bs!38462 (not (= lambda!9437 lambda!9426))))

(assert (=> bs!38462 (= lambda!9437 lambda!9425)))

(declare-fun bs!38463 () Bool)

(assert (= bs!38463 (and b!80947 b!80887)))

(assert (=> bs!38463 (not (= lambda!9437 lambda!9403))))

(declare-fun bs!38464 () Bool)

(assert (= bs!38464 (and b!80947 b!80914)))

(assert (=> bs!38464 (not (= lambda!9437 lambda!9430))))

(assert (=> bs!38464 (not (= lambda!9437 lambda!9429))))

(assert (=> bs!38464 (= lambda!9437 lambda!9428)))

(assert (=> b!80947 true))

(declare-fun lambda!9438 () Int)

(assert (=> bs!38457 (not (= lambda!9438 lambda!9401))))

(assert (=> bs!38458 (= (= (h!988 less!5) (h!988 ls!96)) (= lambda!9438 lambda!9400))))

(assert (=> b!80947 (not (= lambda!9438 lambda!9437))))

(assert (=> bs!38459 (not (= lambda!9438 lambda!9399))))

(assert (=> bs!38460 (not (= lambda!9438 lambda!9412))))

(assert (=> bs!38460 (= lambda!9438 lambda!9411)))

(assert (=> bs!38460 (not (= lambda!9438 lambda!9410))))

(assert (=> bs!38461 (not (= lambda!9438 lambda!9402))))

(assert (=> bs!38462 (not (= lambda!9438 lambda!9427))))

(assert (=> bs!38462 (= lambda!9438 lambda!9426)))

(assert (=> bs!38462 (not (= lambda!9438 lambda!9425))))

(assert (=> bs!38463 (= (= (h!988 less!5) x!29308) (= lambda!9438 lambda!9403))))

(assert (=> bs!38464 (not (= lambda!9438 lambda!9430))))

(assert (=> bs!38464 (= lambda!9438 lambda!9429)))

(assert (=> bs!38464 (not (= lambda!9438 lambda!9428))))

(assert (=> b!80947 true))

(declare-fun lambda!9439 () Int)

(assert (=> bs!38457 (= (= (h!988 less!5) (h!988 ls!96)) (= lambda!9439 lambda!9401))))

(assert (=> bs!38458 (not (= lambda!9439 lambda!9400))))

(assert (=> b!80947 (not (= lambda!9439 lambda!9438))))

(assert (=> b!80947 (not (= lambda!9439 lambda!9437))))

(assert (=> bs!38459 (not (= lambda!9439 lambda!9399))))

(assert (=> bs!38460 (= lambda!9439 lambda!9412)))

(assert (=> bs!38460 (not (= lambda!9439 lambda!9411))))

(assert (=> bs!38460 (not (= lambda!9439 lambda!9410))))

(assert (=> bs!38461 (not (= lambda!9439 lambda!9402))))

(assert (=> bs!38462 (= lambda!9439 lambda!9427)))

(assert (=> bs!38462 (not (= lambda!9439 lambda!9426))))

(assert (=> bs!38462 (not (= lambda!9439 lambda!9425))))

(assert (=> bs!38463 (not (= lambda!9439 lambda!9403))))

(assert (=> bs!38464 (= lambda!9439 lambda!9430)))

(assert (=> bs!38464 (not (= lambda!9439 lambda!9429))))

(assert (=> bs!38464 (not (= lambda!9439 lambda!9428))))

(assert (=> b!80947 true))

(declare-fun d!55607 () Bool)

(declare-fun c!20419 () Bool)

(assert (=> d!55607 (= c!20419 (is-Nil!621 less!5))))

(declare-fun e!43903 () List!662)

(assert (=> d!55607 (= (quickSort!0 less!5) e!43903)))

(declare-fun b!80946 () Bool)

(declare-fun e!43904 () List!662)

(assert (=> b!80946 (= e!43904 less!5)))

(declare-fun b!80945 () Bool)

(assert (=> b!80945 (= e!43903 e!43904)))

(declare-fun c!20420 () Bool)

(assert (=> b!80945 (= c!20420 (and (is-Cons!619 less!5) (is-Nil!621 (t!47808 less!5))))))

(assert (=> b!80947 (= e!43904 (++!70 (++!70 (quickSort!0 (filter!15 (t!47808 less!5) lambda!9437)) (Cons!619 (h!988 less!5) (filter!15 (t!47808 less!5) lambda!9438))) (quickSort!0 (filter!15 (t!47808 less!5) lambda!9439))))))

(declare-fun b!80944 () Bool)

(assert (=> b!80944 (= e!43903 Nil!621)))

(assert (= (and b!80945 c!20420) b!80946))

(assert (= (and b!80945 (not c!20420)) b!80947))

(assert (= (and d!55607 c!20419) b!80944))

(assert (= (and d!55607 (not c!20419)) b!80945))

(declare-fun m!75778 () Bool)

(assert (=> b!80947 m!75778))

(declare-fun m!75780 () Bool)

(assert (=> b!80947 m!75780))

(declare-fun m!75782 () Bool)

(assert (=> b!80947 m!75782))

(declare-fun m!75784 () Bool)

(assert (=> b!80947 m!75784))

(declare-fun m!75786 () Bool)

(assert (=> b!80947 m!75786))

(declare-fun m!75788 () Bool)

(assert (=> b!80947 m!75788))

(assert (=> b!80947 m!75786))

(assert (=> b!80947 m!75778))

(assert (=> b!80947 m!75780))

(assert (=> b!80947 m!75782))

(assert (=> b!80947 m!75788))

(declare-fun m!75790 () Bool)

(assert (=> b!80947 m!75790))

(assert (=> b!80876 d!55607))

(declare-fun b!80960 () Bool)

(declare-fun e!43913 () Bool)

(declare-fun e!43911 () Bool)

(assert (=> b!80960 (= e!43913 e!43911)))

(declare-fun res!41310 () Bool)

(assert (=> b!80960 (=> res!41310 e!43911)))

(assert (=> b!80960 (= res!41310 (not (forall!17 (quickSort!0 less!5) lambda!9399)))))

(declare-fun b!80961 () Bool)

(declare-fun e!43912 () Bool)

(assert (=> b!80961 (= e!43913 e!43912)))

(declare-fun res!41307 () Bool)

(assert (=> b!80961 (=> res!41307 e!43912)))

(assert (=> b!80961 (= res!41307 (not (forall!17 (quickSort!0 less!5) lambda!9399)))))

(declare-fun lt!18557 () Bool)

(assert (=> b!80961 (= lt!18557 (forall_last!0 (t!47808 (quickSort!0 less!5)) lambda!9399))))

(declare-fun b!80962 () Bool)

(declare-fun dynLambda!981 (Int Int) Bool)

(assert (=> b!80962 (= e!43912 (dynLambda!981 lambda!9399 (last!14 (quickSort!0 less!5))))))

(declare-fun b!80963 () Bool)

(assert (=> b!80963 (= e!43911 (dynLambda!981 lambda!9399 (last!14 (quickSort!0 less!5))))))

(declare-fun b!80964 () Bool)

(declare-fun res!41308 () Bool)

(assert (=> b!80964 (=> res!41308 e!43911)))

(assert (=> b!80964 (= res!41308 (isEmpty!674 (quickSort!0 less!5)))))

(declare-fun d!55609 () Bool)

(assert (=> d!55609 e!43913))

(declare-fun c!20423 () Bool)

(assert (=> d!55609 (= c!20423 (is-Cons!619 (quickSort!0 less!5)))))

(assert (=> d!55609 (= (forall_last!0 (quickSort!0 less!5) lambda!9399) true)))

(declare-fun b!80965 () Bool)

(declare-fun res!41309 () Bool)

(assert (=> b!80965 (=> res!41309 e!43912)))

(assert (=> b!80965 (= res!41309 (isEmpty!674 (quickSort!0 less!5)))))

(assert (= (and b!80961 (not res!41307)) b!80965))

(assert (= (and b!80965 (not res!41309)) b!80962))

(assert (= (and b!80960 (not res!41310)) b!80964))

(assert (= (and b!80964 (not res!41308)) b!80963))

(assert (= (and d!55609 c!20423) b!80961))

(assert (= (and d!55609 (not c!20423)) b!80960))

(declare-fun b_lambda!15991 () Bool)

(assert (=> (not b_lambda!15991) (not b!80962)))

(declare-fun b_lambda!15993 () Bool)

(assert (=> (not b_lambda!15993) (not b!80963)))

(assert (=> b!80965 m!75670))

(assert (=> b!80965 m!75776))

(assert (=> b!80960 m!75670))

(assert (=> b!80960 m!75758))

(assert (=> b!80962 m!75670))

(assert (=> b!80962 m!75768))

(assert (=> b!80962 m!75768))

(declare-fun m!75792 () Bool)

(assert (=> b!80962 m!75792))

(assert (=> b!80961 m!75670))

(assert (=> b!80961 m!75758))

(declare-fun m!75794 () Bool)

(assert (=> b!80961 m!75794))

(assert (=> b!80964 m!75670))

(assert (=> b!80964 m!75776))

(assert (=> b!80963 m!75670))

(assert (=> b!80963 m!75768))

(assert (=> b!80963 m!75768))

(assert (=> b!80963 m!75792))

(assert (=> b!80881 d!55609))

(assert (=> b!80881 d!55607))

(declare-fun b!80980 () Bool)

(declare-fun e!43925 () List!662)

(assert (=> b!80980 (= e!43925 Nil!621)))

(declare-fun b!80981 () Bool)

(declare-fun e!43923 () List!662)

(assert (=> b!80981 (= e!43925 e!43923)))

(declare-fun c!20429 () Bool)

(declare-fun e!43922 () Bool)

(assert (=> b!80981 (= c!20429 e!43922)))

(declare-fun res!41321 () Bool)

(assert (=> b!80981 (=> (not res!41321) (not e!43922))))

(assert (=> b!80981 (= res!41321 (is-Cons!619 (t!47808 ls!96)))))

(declare-fun lt!18563 () List!662)

(assert (=> b!80981 (= lt!18563 (filter!15 (t!47808 (t!47808 ls!96)) lambda!9401))))

(declare-fun b!80982 () Bool)

(assert (=> b!80982 (= e!43922 (dynLambda!981 lambda!9401 (h!988 (t!47808 ls!96))))))

(declare-fun b!80983 () Bool)

(declare-fun res!41322 () Bool)

(declare-fun e!43924 () Bool)

(assert (=> b!80983 (=> (not res!41322) (not e!43924))))

(declare-fun lt!18562 () List!662)

(declare-fun content!121 (List!662) (Set Int))

(assert (=> b!80983 (= res!41322 (subset (content!121 lt!18562) (content!121 (t!47808 ls!96))))))

(declare-fun b!80984 () Bool)

(assert (=> b!80984 (= e!43924 (forall!17 lt!18562 lambda!9401))))

(declare-fun d!55611 () Bool)

(assert (=> d!55611 e!43924))

(declare-fun res!41323 () Bool)

(assert (=> d!55611 (=> (not res!41323) (not e!43924))))

(declare-fun size!650 (List!662) Int)

(assert (=> d!55611 (= res!41323 (<= (size!650 lt!18562) (size!650 (t!47808 ls!96))))))

(assert (=> d!55611 (= lt!18562 e!43925)))

(declare-fun c!20428 () Bool)

(assert (=> d!55611 (= c!20428 (is-Nil!621 (t!47808 ls!96)))))

(assert (=> d!55611 (= (filter!15 (t!47808 ls!96) lambda!9401) lt!18562)))

(declare-fun b!80985 () Bool)

(assert (=> b!80985 (= e!43923 (Cons!619 (h!988 (t!47808 ls!96)) lt!18563))))

(declare-fun b!80986 () Bool)

(assert (=> b!80986 (= e!43923 lt!18563)))

(assert (= (and b!80981 res!41321) b!80982))

(assert (= (and b!80981 c!20429) b!80985))

(assert (= (and b!80981 (not c!20429)) b!80986))

(assert (= (and d!55611 c!20428) b!80980))

(assert (= (and d!55611 (not c!20428)) b!80981))

(assert (= (and d!55611 res!41323) b!80983))

(assert (= (and b!80983 res!41322) b!80984))

(declare-fun b_lambda!15995 () Bool)

(assert (=> (not b_lambda!15995) (not b!80982)))

(declare-fun m!75796 () Bool)

(assert (=> b!80982 m!75796))

(declare-fun m!75798 () Bool)

(assert (=> b!80983 m!75798))

(declare-fun m!75800 () Bool)

(assert (=> b!80983 m!75800))

(declare-fun m!75802 () Bool)

(assert (=> b!80984 m!75802))

(declare-fun m!75804 () Bool)

(assert (=> d!55611 m!75804))

(declare-fun m!75806 () Bool)

(assert (=> d!55611 m!75806))

(declare-fun m!75808 () Bool)

(assert (=> b!80981 m!75808))

(assert (=> b!80877 d!55611))

(declare-fun bs!38465 () Bool)

(declare-fun d!55613 () Bool)

(assert (= bs!38465 (and d!55613 b!80877)))

(declare-fun lambda!9446 () Int)

(assert (=> bs!38465 (not (= lambda!9446 lambda!9401))))

(declare-fun bs!38466 () Bool)

(assert (= bs!38466 (and d!55613 b!80885)))

(assert (=> bs!38466 (not (= lambda!9446 lambda!9400))))

(declare-fun bs!38467 () Bool)

(assert (= bs!38467 (and d!55613 b!80947)))

(assert (=> bs!38467 (not (= lambda!9446 lambda!9439))))

(assert (=> bs!38467 (not (= lambda!9446 lambda!9438))))

(assert (=> bs!38467 (= (= (h!988 ls!96) (h!988 less!5)) (= lambda!9446 lambda!9437))))

(declare-fun bs!38468 () Bool)

(assert (= bs!38468 (and d!55613 b!80882)))

(assert (=> bs!38468 (= lambda!9446 lambda!9399)))

(declare-fun bs!38469 () Bool)

(assert (= bs!38469 (and d!55613 b!80896)))

(assert (=> bs!38469 (not (= lambda!9446 lambda!9412))))

(assert (=> bs!38469 (not (= lambda!9446 lambda!9411))))

(assert (=> bs!38469 (= (= (h!988 ls!96) (h!988 less!5)) (= lambda!9446 lambda!9410))))

(declare-fun bs!38470 () Bool)

(assert (= bs!38470 (and d!55613 b!80878)))

(assert (=> bs!38470 (not (= lambda!9446 lambda!9402))))

(declare-fun bs!38471 () Bool)

(assert (= bs!38471 (and d!55613 b!80909)))

(assert (=> bs!38471 (not (= lambda!9446 lambda!9427))))

(assert (=> bs!38471 (not (= lambda!9446 lambda!9426))))

(assert (=> bs!38471 (= (= (h!988 ls!96) (h!988 less!5)) (= lambda!9446 lambda!9425))))

(declare-fun bs!38472 () Bool)

(assert (= bs!38472 (and d!55613 b!80887)))

(assert (=> bs!38472 (not (= lambda!9446 lambda!9403))))

(declare-fun bs!38473 () Bool)

(assert (= bs!38473 (and d!55613 b!80914)))

(assert (=> bs!38473 (not (= lambda!9446 lambda!9430))))

(assert (=> bs!38473 (not (= lambda!9446 lambda!9429))))

(assert (=> bs!38473 (= (= (h!988 ls!96) (h!988 less!5)) (= lambda!9446 lambda!9428))))

(assert (=> d!55613 true))

(declare-fun bs!38474 () Bool)

(declare-fun b!80991 () Bool)

(assert (= bs!38474 (and b!80991 b!80877)))

(declare-fun lambda!9447 () Int)

(assert (=> bs!38474 (not (= lambda!9447 lambda!9401))))

(declare-fun bs!38475 () Bool)

(assert (= bs!38475 (and b!80991 b!80885)))

(assert (=> bs!38475 (not (= lambda!9447 lambda!9400))))

(declare-fun bs!38476 () Bool)

(assert (= bs!38476 (and b!80991 b!80947)))

(assert (=> bs!38476 (not (= lambda!9447 lambda!9439))))

(assert (=> bs!38476 (not (= lambda!9447 lambda!9438))))

(assert (=> bs!38476 (not (= lambda!9447 lambda!9437))))

(declare-fun bs!38477 () Bool)

(assert (= bs!38477 (and b!80991 b!80882)))

(assert (=> bs!38477 (not (= lambda!9447 lambda!9399))))

(declare-fun bs!38478 () Bool)

(assert (= bs!38478 (and b!80991 d!55613)))

(assert (=> bs!38478 (not (= lambda!9447 lambda!9446))))

(declare-fun bs!38479 () Bool)

(assert (= bs!38479 (and b!80991 b!80896)))

(assert (=> bs!38479 (not (= lambda!9447 lambda!9412))))

(assert (=> bs!38479 (not (= lambda!9447 lambda!9411))))

(assert (=> bs!38479 (not (= lambda!9447 lambda!9410))))

(declare-fun bs!38480 () Bool)

(assert (= bs!38480 (and b!80991 b!80878)))

(assert (=> bs!38480 (= lambda!9447 lambda!9402)))

(declare-fun bs!38481 () Bool)

(assert (= bs!38481 (and b!80991 b!80909)))

(assert (=> bs!38481 (not (= lambda!9447 lambda!9427))))

(assert (=> bs!38481 (not (= lambda!9447 lambda!9426))))

(assert (=> bs!38481 (not (= lambda!9447 lambda!9425))))

(declare-fun bs!38482 () Bool)

(assert (= bs!38482 (and b!80991 b!80887)))

(assert (=> bs!38482 (not (= lambda!9447 lambda!9403))))

(declare-fun bs!38483 () Bool)

(assert (= bs!38483 (and b!80991 b!80914)))

(assert (=> bs!38483 (not (= lambda!9447 lambda!9430))))

(assert (=> bs!38483 (not (= lambda!9447 lambda!9429))))

(assert (=> bs!38483 (not (= lambda!9447 lambda!9428))))

(assert (=> b!80991 true))

(declare-fun bs!38484 () Bool)

(declare-fun b!80992 () Bool)

(assert (= bs!38484 (and b!80992 b!80877)))

(declare-fun lambda!9448 () Int)

(assert (=> bs!38484 (not (= lambda!9448 lambda!9401))))

(declare-fun bs!38485 () Bool)

(assert (= bs!38485 (and b!80992 b!80885)))

(assert (=> bs!38485 (not (= lambda!9448 lambda!9400))))

(declare-fun bs!38486 () Bool)

(assert (= bs!38486 (and b!80992 b!80947)))

(assert (=> bs!38486 (not (= lambda!9448 lambda!9439))))

(assert (=> bs!38486 (not (= lambda!9448 lambda!9438))))

(assert (=> bs!38486 (not (= lambda!9448 lambda!9437))))

(declare-fun bs!38487 () Bool)

(assert (= bs!38487 (and b!80992 b!80882)))

(assert (=> bs!38487 (not (= lambda!9448 lambda!9399))))

(declare-fun bs!38488 () Bool)

(assert (= bs!38488 (and b!80992 d!55613)))

(assert (=> bs!38488 (not (= lambda!9448 lambda!9446))))

(declare-fun bs!38489 () Bool)

(assert (= bs!38489 (and b!80992 b!80896)))

(assert (=> bs!38489 (not (= lambda!9448 lambda!9412))))

(assert (=> bs!38489 (not (= lambda!9448 lambda!9411))))

(assert (=> bs!38489 (not (= lambda!9448 lambda!9410))))

(declare-fun bs!38490 () Bool)

(assert (= bs!38490 (and b!80992 b!80991)))

(assert (=> bs!38490 (= lambda!9448 lambda!9447)))

(declare-fun bs!38491 () Bool)

(assert (= bs!38491 (and b!80992 b!80878)))

(assert (=> bs!38491 (= lambda!9448 lambda!9402)))

(declare-fun bs!38492 () Bool)

(assert (= bs!38492 (and b!80992 b!80909)))

(assert (=> bs!38492 (not (= lambda!9448 lambda!9427))))

(assert (=> bs!38492 (not (= lambda!9448 lambda!9426))))

(assert (=> bs!38492 (not (= lambda!9448 lambda!9425))))

(declare-fun bs!38493 () Bool)

(assert (= bs!38493 (and b!80992 b!80887)))

(assert (=> bs!38493 (not (= lambda!9448 lambda!9403))))

(declare-fun bs!38494 () Bool)

(assert (= bs!38494 (and b!80992 b!80914)))

(assert (=> bs!38494 (not (= lambda!9448 lambda!9430))))

(assert (=> bs!38494 (not (= lambda!9448 lambda!9429))))

(assert (=> bs!38494 (not (= lambda!9448 lambda!9428))))

(assert (=> b!80992 true))

(declare-fun e!43928 () Bool)

(assert (=> d!55613 e!43928))

(declare-fun c!20432 () Bool)

(assert (=> d!55613 (= c!20432 (is-Cons!619 less!5))))

(assert (=> d!55613 (forall!17 less!5 lambda!9446)))

(assert (=> d!55613 (= (forall_lt_implies_le!0 less!5 (h!988 ls!96)) true)))

(assert (=> b!80991 (= e!43928 (forall!17 less!5 lambda!9447))))

(declare-fun lt!18566 () Bool)

(assert (=> b!80991 (= lt!18566 (forall_lt_implies_le!0 (t!47808 less!5) (h!988 ls!96)))))

(assert (=> b!80992 (= e!43928 (forall!17 less!5 lambda!9448))))

(assert (= (and d!55613 c!20432) b!80991))

(assert (= (and d!55613 (not c!20432)) b!80992))

(declare-fun m!75810 () Bool)

(assert (=> d!55613 m!75810))

(declare-fun m!75812 () Bool)

(assert (=> b!80991 m!75812))

(declare-fun m!75814 () Bool)

(assert (=> b!80991 m!75814))

(declare-fun m!75816 () Bool)

(assert (=> b!80992 m!75816))

(assert (=> b!80879 d!55613))

(declare-fun d!55615 () Bool)

(declare-fun res!41328 () Bool)

(declare-fun e!43933 () Bool)

(assert (=> d!55615 (=> res!41328 e!43933)))

(assert (=> d!55615 (= res!41328 (is-Nil!621 ls!113))))

(assert (=> d!55615 (= (forall!17 ls!113 lambda!9403) e!43933)))

(declare-fun b!80997 () Bool)

(declare-fun e!43934 () Bool)

(assert (=> b!80997 (= e!43933 e!43934)))

(declare-fun res!41329 () Bool)

(assert (=> b!80997 (=> (not res!41329) (not e!43934))))

(assert (=> b!80997 (= res!41329 (dynLambda!981 lambda!9403 (h!988 ls!113)))))

(declare-fun b!80998 () Bool)

(assert (=> b!80998 (= e!43934 (forall!17 (t!47808 ls!113) lambda!9403))))

(assert (= (and d!55615 (not res!41328)) b!80997))

(assert (= (and b!80997 res!41329) b!80998))

(declare-fun b_lambda!15997 () Bool)

(assert (=> (not b_lambda!15997) (not b!80997)))

(declare-fun m!75818 () Bool)

(assert (=> b!80997 m!75818))

(declare-fun m!75820 () Bool)

(assert (=> b!80998 m!75820))

(assert (=> b!80887 d!55615))

(declare-fun b!80999 () Bool)

(declare-fun e!43938 () List!662)

(assert (=> b!80999 (= e!43938 Nil!621)))

(declare-fun b!81000 () Bool)

(declare-fun e!43936 () List!662)

(assert (=> b!81000 (= e!43938 e!43936)))

(declare-fun c!20434 () Bool)

(declare-fun e!43935 () Bool)

(assert (=> b!81000 (= c!20434 e!43935)))

(declare-fun res!41330 () Bool)

(assert (=> b!81000 (=> (not res!41330) (not e!43935))))

(assert (=> b!81000 (= res!41330 (is-Cons!619 (t!47808 ls!96)))))

(declare-fun lt!18568 () List!662)

(assert (=> b!81000 (= lt!18568 (filter!15 (t!47808 (t!47808 ls!96)) lambda!9399))))

(declare-fun b!81001 () Bool)

(assert (=> b!81001 (= e!43935 (dynLambda!981 lambda!9399 (h!988 (t!47808 ls!96))))))

(declare-fun b!81002 () Bool)

(declare-fun res!41331 () Bool)

(declare-fun e!43937 () Bool)

(assert (=> b!81002 (=> (not res!41331) (not e!43937))))

(declare-fun lt!18567 () List!662)

(assert (=> b!81002 (= res!41331 (subset (content!121 lt!18567) (content!121 (t!47808 ls!96))))))

(declare-fun b!81003 () Bool)

(assert (=> b!81003 (= e!43937 (forall!17 lt!18567 lambda!9399))))

(declare-fun d!55617 () Bool)

(assert (=> d!55617 e!43937))

(declare-fun res!41332 () Bool)

(assert (=> d!55617 (=> (not res!41332) (not e!43937))))

(assert (=> d!55617 (= res!41332 (<= (size!650 lt!18567) (size!650 (t!47808 ls!96))))))

(assert (=> d!55617 (= lt!18567 e!43938)))

(declare-fun c!20433 () Bool)

(assert (=> d!55617 (= c!20433 (is-Nil!621 (t!47808 ls!96)))))

(assert (=> d!55617 (= (filter!15 (t!47808 ls!96) lambda!9399) lt!18567)))

(declare-fun b!81004 () Bool)

(assert (=> b!81004 (= e!43936 (Cons!619 (h!988 (t!47808 ls!96)) lt!18568))))

(declare-fun b!81005 () Bool)

(assert (=> b!81005 (= e!43936 lt!18568)))

(assert (= (and b!81000 res!41330) b!81001))

(assert (= (and b!81000 c!20434) b!81004))

(assert (= (and b!81000 (not c!20434)) b!81005))

(assert (= (and d!55617 c!20433) b!80999))

(assert (= (and d!55617 (not c!20433)) b!81000))

(assert (= (and d!55617 res!41332) b!81002))

(assert (= (and b!81002 res!41331) b!81003))

(declare-fun b_lambda!15999 () Bool)

(assert (=> (not b_lambda!15999) (not b!81001)))

(declare-fun m!75822 () Bool)

(assert (=> b!81001 m!75822))

(declare-fun m!75824 () Bool)

(assert (=> b!81002 m!75824))

(assert (=> b!81002 m!75800))

(declare-fun m!75826 () Bool)

(assert (=> b!81003 m!75826))

(declare-fun m!75828 () Bool)

(assert (=> d!55617 m!75828))

(assert (=> d!55617 m!75806))

(declare-fun m!75830 () Bool)

(assert (=> b!81000 m!75830))

(assert (=> b!80882 d!55617))

(declare-fun b!81006 () Bool)

(declare-fun e!43942 () List!662)

(assert (=> b!81006 (= e!43942 Nil!621)))

(declare-fun b!81007 () Bool)

(declare-fun e!43940 () List!662)

(assert (=> b!81007 (= e!43942 e!43940)))

(declare-fun c!20436 () Bool)

(declare-fun e!43939 () Bool)

(assert (=> b!81007 (= c!20436 e!43939)))

(declare-fun res!41333 () Bool)

(assert (=> b!81007 (=> (not res!41333) (not e!43939))))

(assert (=> b!81007 (= res!41333 (is-Cons!619 (t!47808 ls!96)))))

(declare-fun lt!18570 () List!662)

(assert (=> b!81007 (= lt!18570 (filter!15 (t!47808 (t!47808 ls!96)) lambda!9400))))

(declare-fun b!81008 () Bool)

(assert (=> b!81008 (= e!43939 (dynLambda!981 lambda!9400 (h!988 (t!47808 ls!96))))))

(declare-fun b!81009 () Bool)

(declare-fun res!41334 () Bool)

(declare-fun e!43941 () Bool)

(assert (=> b!81009 (=> (not res!41334) (not e!43941))))

(declare-fun lt!18569 () List!662)

(assert (=> b!81009 (= res!41334 (subset (content!121 lt!18569) (content!121 (t!47808 ls!96))))))

(declare-fun b!81010 () Bool)

(assert (=> b!81010 (= e!43941 (forall!17 lt!18569 lambda!9400))))

(declare-fun d!55619 () Bool)

(assert (=> d!55619 e!43941))

(declare-fun res!41335 () Bool)

(assert (=> d!55619 (=> (not res!41335) (not e!43941))))

(assert (=> d!55619 (= res!41335 (<= (size!650 lt!18569) (size!650 (t!47808 ls!96))))))

(assert (=> d!55619 (= lt!18569 e!43942)))

(declare-fun c!20435 () Bool)

(assert (=> d!55619 (= c!20435 (is-Nil!621 (t!47808 ls!96)))))

(assert (=> d!55619 (= (filter!15 (t!47808 ls!96) lambda!9400) lt!18569)))

(declare-fun b!81011 () Bool)

(assert (=> b!81011 (= e!43940 (Cons!619 (h!988 (t!47808 ls!96)) lt!18570))))

(declare-fun b!81012 () Bool)

(assert (=> b!81012 (= e!43940 lt!18570)))

(assert (= (and b!81007 res!41333) b!81008))

(assert (= (and b!81007 c!20436) b!81011))

(assert (= (and b!81007 (not c!20436)) b!81012))

(assert (= (and d!55619 c!20435) b!81006))

(assert (= (and d!55619 (not c!20435)) b!81007))

(assert (= (and d!55619 res!41335) b!81009))

(assert (= (and b!81009 res!41334) b!81010))

(declare-fun b_lambda!16001 () Bool)

(assert (=> (not b_lambda!16001) (not b!81008)))

(declare-fun m!75832 () Bool)

(assert (=> b!81008 m!75832))

(declare-fun m!75834 () Bool)

(assert (=> b!81009 m!75834))

(assert (=> b!81009 m!75800))

(declare-fun m!75836 () Bool)

(assert (=> b!81010 m!75836))

(declare-fun m!75838 () Bool)

(assert (=> d!55619 m!75838))

(assert (=> d!55619 m!75806))

(declare-fun m!75840 () Bool)

(assert (=> b!81007 m!75840))

(assert (=> b!80885 d!55619))

(declare-fun bs!38495 () Bool)

(declare-fun d!55621 () Bool)

(assert (= bs!38495 (and d!55621 b!80877)))

(declare-fun lambda!9451 () Int)

(assert (=> bs!38495 (not (= lambda!9451 lambda!9401))))

(declare-fun bs!38496 () Bool)

(assert (= bs!38496 (and d!55621 b!80885)))

(assert (=> bs!38496 (= lambda!9451 lambda!9400)))

(declare-fun bs!38497 () Bool)

(assert (= bs!38497 (and d!55621 b!80947)))

(assert (=> bs!38497 (not (= lambda!9451 lambda!9439))))

(assert (=> bs!38497 (= (= (h!988 ls!96) (h!988 less!5)) (= lambda!9451 lambda!9438))))

(assert (=> bs!38497 (not (= lambda!9451 lambda!9437))))

(declare-fun bs!38498 () Bool)

(assert (= bs!38498 (and d!55621 b!80882)))

(assert (=> bs!38498 (not (= lambda!9451 lambda!9399))))

(declare-fun bs!38499 () Bool)

(assert (= bs!38499 (and d!55621 d!55613)))

(assert (=> bs!38499 (not (= lambda!9451 lambda!9446))))

(declare-fun bs!38500 () Bool)

(assert (= bs!38500 (and d!55621 b!80896)))

(assert (=> bs!38500 (not (= lambda!9451 lambda!9412))))

(assert (=> bs!38500 (= (= (h!988 ls!96) (h!988 less!5)) (= lambda!9451 lambda!9411))))

(assert (=> bs!38500 (not (= lambda!9451 lambda!9410))))

(declare-fun bs!38501 () Bool)

(assert (= bs!38501 (and d!55621 b!80991)))

(assert (=> bs!38501 (not (= lambda!9451 lambda!9447))))

(declare-fun bs!38502 () Bool)

(assert (= bs!38502 (and d!55621 b!80878)))

(assert (=> bs!38502 (not (= lambda!9451 lambda!9402))))

(declare-fun bs!38503 () Bool)

(assert (= bs!38503 (and d!55621 b!80909)))

(assert (=> bs!38503 (not (= lambda!9451 lambda!9427))))

(assert (=> bs!38503 (= (= (h!988 ls!96) (h!988 less!5)) (= lambda!9451 lambda!9426))))

(assert (=> bs!38503 (not (= lambda!9451 lambda!9425))))

(declare-fun bs!38504 () Bool)

(assert (= bs!38504 (and d!55621 b!80992)))

(assert (=> bs!38504 (not (= lambda!9451 lambda!9448))))

(declare-fun bs!38505 () Bool)

(assert (= bs!38505 (and d!55621 b!80887)))

(assert (=> bs!38505 (= (= (h!988 ls!96) x!29308) (= lambda!9451 lambda!9403))))

(declare-fun bs!38506 () Bool)

(assert (= bs!38506 (and d!55621 b!80914)))

(assert (=> bs!38506 (not (= lambda!9451 lambda!9430))))

(assert (=> bs!38506 (= (= (h!988 ls!96) (h!988 less!5)) (= lambda!9451 lambda!9429))))

(assert (=> bs!38506 (not (= lambda!9451 lambda!9428))))

(assert (=> d!55621 true))

(assert (=> d!55621 (isSorted!1 (Cons!619 (h!988 ls!96) (filter!15 (t!47808 ls!96) lambda!9451)))))

(declare-datatypes () ((Unit!1169 (Unit!1170))))

(declare-fun lt!18573 () Unit!1169)

(declare-fun Unit!1171 () Unit!1169)

(assert (=> d!55621 (= lt!18573 Unit!1171)))

(declare-fun filter_equal_sorted!0 (List!662 Int) Bool)

(assert (=> d!55621 (filter_equal_sorted!0 (t!47808 ls!96) (h!988 ls!96))))

(assert (=> d!55621 (= (cons_filter_equal_sorted!0 (t!47808 ls!96) (h!988 ls!96)) true)))

(declare-fun bs!38507 () Bool)

(assert (= bs!38507 d!55621))

(declare-fun m!75842 () Bool)

(assert (=> bs!38507 m!75842))

(declare-fun m!75844 () Bool)

(assert (=> bs!38507 m!75844))

(declare-fun m!75846 () Bool)

(assert (=> bs!38507 m!75846))

(assert (=> b!80884 d!55621))

(declare-fun b_lambda!16003 () Bool)

(assert (= b_lambda!15997 (or b!80887 b_lambda!16003)))

(declare-fun bs!38508 () Bool)

(declare-fun d!55623 () Bool)

(assert (= bs!38508 (and d!55623 b!80887)))

(assert (=> bs!38508 (= (dynLambda!981 lambda!9403 (h!988 ls!113)) (= (h!988 ls!113) x!29308))))

(assert (=> b!80997 d!55623))

(declare-fun b_lambda!16005 () Bool)

(assert (= b_lambda!15993 (or b!80882 b_lambda!16005)))

(declare-fun bs!38509 () Bool)

(declare-fun d!55625 () Bool)

(assert (= bs!38509 (and d!55625 b!80882)))

(assert (=> bs!38509 (= (dynLambda!981 lambda!9399 (last!14 (quickSort!0 less!5))) (< (last!14 (quickSort!0 less!5)) (h!988 ls!96)))))

(assert (=> b!80963 d!55625))

(declare-fun b_lambda!16007 () Bool)

(assert (= b_lambda!15991 (or b!80882 b_lambda!16007)))

(assert (=> b!80962 d!55625))

(declare-fun b_lambda!16009 () Bool)

(assert (= b_lambda!16001 (or b!80885 b_lambda!16009)))

(declare-fun bs!38510 () Bool)

(declare-fun d!55627 () Bool)

(assert (= bs!38510 (and d!55627 b!80885)))

(assert (=> bs!38510 (= (dynLambda!981 lambda!9400 (h!988 (t!47808 ls!96))) (= (h!988 (t!47808 ls!96)) (h!988 ls!96)))))

(assert (=> b!81008 d!55627))

(declare-fun b_lambda!16011 () Bool)

(assert (= b_lambda!15995 (or b!80877 b_lambda!16011)))

(declare-fun bs!38511 () Bool)

(declare-fun d!55629 () Bool)

(assert (= bs!38511 (and d!55629 b!80877)))

(assert (=> bs!38511 (= (dynLambda!981 lambda!9401 (h!988 (t!47808 ls!96))) (> (h!988 (t!47808 ls!96)) (h!988 ls!96)))))

(assert (=> b!80982 d!55629))

(declare-fun b_lambda!16013 () Bool)

(assert (= b_lambda!15999 (or b!80882 b_lambda!16013)))

(declare-fun bs!38512 () Bool)

(declare-fun d!55631 () Bool)

(assert (= bs!38512 (and d!55631 b!80882)))

(assert (=> bs!38512 (= (dynLambda!981 lambda!9399 (h!988 (t!47808 ls!96))) (< (h!988 (t!47808 ls!96)) (h!988 ls!96)))))

(assert (=> b!81001 d!55631))

(push 1)

(assert (not d!55605))

(assert (not b!80983))

(assert (not b!80984))

(assert (not b_lambda!16013))

(assert (not d!55599))

(assert (not b!81010))

(assert (not b!81002))

(assert (not b!80947))

(assert (not d!55619))

(assert (not b!80913))

(assert (not b!80964))

(assert (not b!80934))

(assert (not d!55613))

(assert (not b!81007))

(assert (not b!80933))

(assert (not b!80961))

(assert (not b!80932))

(assert (not d!55621))

(assert (not b!80910))

(assert (not d!55617))

(assert (not b!80998))

(assert (not d!55603))

(assert (not b!80930))

(assert (not b!81000))

(assert (not d!55611))

(assert (not b!81009))

(assert (not b_lambda!16009))

(assert (not b!80992))

(assert (not b!80911))

(assert (not b!80917))

(assert (not b!80963))

(assert (not b_lambda!16011))

(assert (not b!80912))

(assert (not b!80965))

(assert (not b_lambda!16005))

(assert (not b!80991))

(assert (not b!80981))

(assert (not b!80935))

(assert (not b!80931))

(assert (not b_lambda!16003))

(assert (not b!80915))

(assert (not b!80909))

(assert (not b!80897))

(assert (not b_lambda!16007))

(assert (not d!55601))

(assert (not b!80896))

(assert (not b!81003))

(assert (not b!80908))

(assert (not b!80960))

(assert (not b!80916))

(assert (not b!80962))

(assert (not b!80914))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

