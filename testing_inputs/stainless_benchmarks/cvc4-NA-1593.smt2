; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11074 () Bool)

(assert start!11074)

(declare-fun b_free!7389 () Bool)

(declare-fun b_next!39449 () Bool)

(assert (=> start!11074 (= b_free!7389 (not b_next!39449))))

(declare-fun tp!16998 () Bool)

(declare-fun b_and!58983 () Bool)

(assert (=> start!11074 (= tp!16998 b_and!58983)))

(declare-fun b_free!7391 () Bool)

(declare-fun b_next!39451 () Bool)

(assert (=> start!11074 (= b_free!7391 (not b_next!39451))))

(declare-fun tp!16999 () Bool)

(declare-fun b_and!58985 () Bool)

(assert (=> start!11074 (= tp!16999 b_and!58985)))

(declare-fun b!84698 () Bool)

(assert (=> b!84698 true))

(declare-fun p!836 () Int)

(declare-fun b_next!39453 () Bool)

(declare-fun lambda!10597 () Int)

(assert (=> start!11074 (= b_next!39449 (or (and b!84698 (= lambda!10597 p!836)) b_next!39453))))

(declare-fun b_next!39455 () Bool)

(declare-fun p!821 () Int)

(assert (=> start!11074 (= b_next!39451 (or (and b!84698 (= lambda!10597 p!821)) b_next!39455))))

(declare-fun bs!40855 () Bool)

(declare-fun b!84686 () Bool)

(assert (= bs!40855 (and b!84686 b!84698)))

(declare-fun lambda!10598 () Int)

(assert (=> bs!40855 (not (= lambda!10598 lambda!10597))))

(assert (=> b!84686 true))

(declare-fun b_next!39457 () Bool)

(assert (=> start!11074 (= b_next!39453 (or (and b!84686 (= lambda!10598 p!836)) b_next!39457))))

(declare-fun b_next!39459 () Bool)

(assert (=> start!11074 (= b_next!39455 (or (and b!84686 (= lambda!10598 p!821)) b_next!39459))))

(declare-fun bs!40856 () Bool)

(declare-fun b!84690 () Bool)

(assert (= bs!40856 (and b!84690 b!84698)))

(declare-fun lambda!10599 () Int)

(assert (=> bs!40856 (not (= lambda!10599 lambda!10597))))

(declare-fun bs!40857 () Bool)

(assert (= bs!40857 (and b!84690 b!84686)))

(assert (=> bs!40857 (not (= lambda!10599 lambda!10598))))

(assert (=> b!84690 true))

(declare-fun b_next!39461 () Bool)

(assert (=> start!11074 (= b_next!39457 (or (and b!84690 (= lambda!10599 p!836)) b_next!39461))))

(declare-fun b_next!39463 () Bool)

(assert (=> start!11074 (= b_next!39459 (or (and b!84690 (= lambda!10599 p!821)) b_next!39463))))

(declare-fun b!84684 () Bool)

(declare-fun res!43824 () Bool)

(declare-fun e!45881 () Bool)

(assert (=> b!84684 (=> (not res!43824) (not e!45881))))

(assert (=> b!84684 (= res!43824 (= p!836 p!821))))

(declare-fun e!45878 () Bool)

(declare-datatypes () ((List!691 (Cons!648 (h!1021 Int) (t!48017 List!691)) (Nil!650))))

(declare-fun ls!77 () List!691)

(declare-fun b!84685 () Bool)

(declare-fun filter_preserves_forall!0 (List!691 Int Int) Bool)

(assert (=> b!84685 (= e!45878 (filter_preserves_forall!0 (t!48017 ls!77) lambda!10598 p!821))))

(declare-fun res!43820 () Bool)

(assert (=> b!84686 (=> (not res!43820) (not e!45881))))

(declare-fun equal!4 () List!691)

(declare-fun filter!38 (List!691 Int) List!691)

(assert (=> b!84686 (= res!43820 (= equal!4 (Cons!648 (h!1021 ls!77) (filter!38 (t!48017 ls!77) lambda!10598))))))

(declare-fun b!84687 () Bool)

(declare-fun res!43831 () Bool)

(assert (=> b!84687 (=> (not res!43831) (not e!45881))))

(declare-fun l2!431 () List!691)

(declare-fun more!2 () List!691)

(declare-fun quickSort!0 (List!691) List!691)

(assert (=> b!84687 (= res!43831 (= l2!431 (quickSort!0 more!2)))))

(declare-fun b!84688 () Bool)

(declare-fun res!43830 () Bool)

(assert (=> b!84688 (=> (not res!43830) (not e!45881))))

(declare-fun t!47721 () Bool)

(assert (=> b!84688 (= res!43830 (= t!47721 e!45878))))

(declare-fun res!43825 () Bool)

(assert (=> b!84688 (=> (not res!43825) (not e!45878))))

(assert (=> b!84688 (= res!43825 (filter_preserves_forall!0 (t!48017 ls!77) lambda!10597 p!821))))

(declare-fun b!84689 () Bool)

(declare-fun res!43815 () Bool)

(assert (=> b!84689 (=> (not res!43815) (not e!45881))))

(declare-fun res!40793 () Bool)

(assert (=> b!84689 (= res!43815 (= res!40793 t!47721))))

(declare-fun res!43823 () Bool)

(assert (=> b!84690 (=> (not res!43823) (not e!45881))))

(assert (=> b!84690 (= res!43823 (= more!2 (filter!38 (t!48017 ls!77) lambda!10599)))))

(declare-fun b!84691 () Bool)

(declare-fun e!45882 () Bool)

(declare-fun forall!39 (List!691 Int) Bool)

(assert (=> b!84691 (= e!45882 (not (forall!39 l2!431 p!836)))))

(declare-fun b!84692 () Bool)

(declare-fun res!43817 () Bool)

(assert (=> b!84692 (=> (not res!43817) (not e!45881))))

(declare-fun t!47724 () Bool)

(declare-fun e!45879 () Bool)

(assert (=> b!84692 (= res!43817 (= t!47724 e!45879))))

(declare-fun res!43828 () Bool)

(assert (=> b!84692 (=> (not res!43828) (not e!45879))))

(assert (=> b!84692 (= res!43828 res!40793)))

(declare-fun b!84693 () Bool)

(assert (=> b!84693 (= e!45879 (filter_preserves_forall!0 (t!48017 ls!77) lambda!10599 p!821))))

(declare-fun b!84694 () Bool)

(declare-fun res!43832 () Bool)

(assert (=> b!84694 (=> (not res!43832) (not e!45881))))

(declare-fun less!2 () List!691)

(declare-fun l1!438 () List!691)

(declare-fun ++!90 (List!691 List!691) List!691)

(assert (=> b!84694 (= res!43832 (= l1!438 (++!90 (quickSort!0 less!2) equal!4)))))

(declare-fun res!43827 () Bool)

(assert (=> start!11074 (=> (not res!43827) (not e!45881))))

(assert (=> start!11074 (= res!43827 (forall!39 ls!77 p!821))))

(assert (=> start!11074 e!45881))

(assert (=> start!11074 true))

(assert (=> start!11074 tp!16998))

(assert (=> start!11074 tp!16999))

(declare-fun b!84695 () Bool)

(assert (=> b!84695 (= e!45881 e!45882)))

(declare-fun res!43819 () Bool)

(assert (=> b!84695 (=> res!43819 e!45882)))

(assert (=> b!84695 (= res!43819 (not (forall!39 l1!438 p!836)))))

(declare-fun b!84696 () Bool)

(declare-fun res!43822 () Bool)

(assert (=> b!84696 (=> (not res!43822) (not e!45881))))

(declare-fun res!40794 () Bool)

(assert (=> b!84696 (= res!43822 (and (= res!40794 t!47724) res!40794))))

(declare-fun b!84697 () Bool)

(declare-fun res!43816 () Bool)

(assert (=> b!84697 (=> (not res!43816) (not e!45881))))

(assert (=> b!84697 (= res!43816 (and (not (is-Nil!650 ls!77)) (not (is-Nil!650 (t!48017 ls!77)))))))

(declare-fun res!43814 () Bool)

(assert (=> b!84698 (=> (not res!43814) (not e!45881))))

(assert (=> b!84698 (= res!43814 (= less!2 (filter!38 (t!48017 ls!77) lambda!10597)))))

(declare-fun b!84699 () Bool)

(declare-fun res!43821 () Bool)

(assert (=> b!84699 (=> (not res!43821) (not e!45881))))

(declare-fun append_preserves_forall!0 (List!691 List!691 Int) Bool)

(assert (=> b!84699 (= res!43821 (append_preserves_forall!0 (quickSort!0 less!2) equal!4 p!821))))

(declare-fun b!84700 () Bool)

(declare-fun e!45880 () Bool)

(declare-fun sort_preserves_forall!0 (List!691 Int) Bool)

(assert (=> b!84700 (= e!45880 (sort_preserves_forall!0 more!2 p!821))))

(declare-fun b!84701 () Bool)

(declare-fun res!43818 () Bool)

(assert (=> b!84701 (=> (not res!43818) (not e!45881))))

(declare-fun t!47726 () Bool)

(assert (=> b!84701 (= res!43818 (= t!47726 e!45880))))

(declare-fun res!43829 () Bool)

(assert (=> b!84701 (=> (not res!43829) (not e!45880))))

(assert (=> b!84701 (= res!43829 (sort_preserves_forall!0 less!2 p!821))))

(declare-fun b!84702 () Bool)

(declare-fun res!43826 () Bool)

(assert (=> b!84702 (=> (not res!43826) (not e!45881))))

(declare-fun res!40805 () Bool)

(assert (=> b!84702 (= res!43826 (and (= res!40805 t!47726) res!40805))))

(assert (= (and start!11074 res!43827) b!84697))

(assert (= (and b!84697 res!43816) b!84698))

(assert (= (and b!84698 res!43814) b!84686))

(assert (= (and b!84686 res!43820) b!84690))

(assert (= (and b!84690 res!43823) b!84688))

(assert (= (and b!84688 res!43825) b!84685))

(assert (= (and b!84688 res!43830) b!84689))

(assert (= (and b!84689 res!43815) b!84692))

(assert (= (and b!84692 res!43828) b!84693))

(assert (= (and b!84692 res!43817) b!84696))

(assert (= (and b!84696 res!43822) b!84701))

(assert (= (and b!84701 res!43829) b!84700))

(assert (= (and b!84701 res!43818) b!84702))

(assert (= (and b!84702 res!43826) b!84699))

(assert (= (and b!84699 res!43821) b!84694))

(assert (= (and b!84694 res!43832) b!84687))

(assert (= (and b!84687 res!43831) b!84684))

(assert (= (and b!84684 res!43824) b!84695))

(assert (= (and b!84695 (not res!43819)) b!84691))

(declare-fun m!80442 () Bool)

(assert (=> b!84694 m!80442))

(assert (=> b!84694 m!80442))

(declare-fun m!80444 () Bool)

(assert (=> b!84694 m!80444))

(assert (=> b!84699 m!80442))

(assert (=> b!84699 m!80442))

(declare-fun m!80446 () Bool)

(assert (=> b!84699 m!80446))

(declare-fun m!80448 () Bool)

(assert (=> b!84691 m!80448))

(declare-fun m!80450 () Bool)

(assert (=> b!84701 m!80450))

(declare-fun m!80452 () Bool)

(assert (=> b!84685 m!80452))

(declare-fun m!80454 () Bool)

(assert (=> b!84687 m!80454))

(declare-fun m!80456 () Bool)

(assert (=> b!84695 m!80456))

(declare-fun m!80458 () Bool)

(assert (=> b!84686 m!80458))

(declare-fun m!80460 () Bool)

(assert (=> b!84688 m!80460))

(declare-fun m!80462 () Bool)

(assert (=> b!84693 m!80462))

(declare-fun m!80464 () Bool)

(assert (=> b!84690 m!80464))

(declare-fun m!80466 () Bool)

(assert (=> start!11074 m!80466))

(declare-fun m!80468 () Bool)

(assert (=> b!84700 m!80468))

(declare-fun m!80470 () Bool)

(assert (=> b!84698 m!80470))

(push 1)

(assert b_and!58985)

(assert (not b!84698))

(assert (not start!11074))

(assert (not b!84694))

(assert b_and!58983)

(assert (not b!84688))

(assert (not b!84693))

(assert (not b!84690))

(assert (not b!84687))

(assert (not b_next!39463))

(assert (not b!84686))

(assert (not b!84700))

(assert (not b!84701))

(assert (not b!84691))

(assert (not b!84685))

(assert (not b!84695))

(assert (not b_next!39461))

(assert (not b!84699))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58983)

(assert b_and!58985)

(assert (not b_next!39463))

(assert (not b_next!39461))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!56979 () Bool)

(declare-fun e!45888 () Bool)

(assert (=> d!56979 e!45888))

(declare-fun c!21100 () Bool)

(assert (=> d!56979 (= c!21100 (is-Cons!648 (quickSort!0 less!2)))))

(declare-fun e!45887 () Bool)

(assert (=> d!56979 e!45887))

(declare-fun res!43835 () Bool)

(assert (=> d!56979 (=> (not res!43835) (not e!45887))))

(assert (=> d!56979 (= res!43835 (forall!39 (quickSort!0 less!2) p!821))))

(assert (=> d!56979 (= (append_preserves_forall!0 (quickSort!0 less!2) equal!4 p!821) true)))

(declare-fun b!84711 () Bool)

(assert (=> b!84711 (= e!45887 (forall!39 equal!4 p!821))))

(declare-fun b!84712 () Bool)

(assert (=> b!84712 (= e!45888 (forall!39 (++!90 (quickSort!0 less!2) equal!4) p!821))))

(declare-fun lt!19715 () Bool)

(assert (=> b!84712 (= lt!19715 (append_preserves_forall!0 (t!48017 (quickSort!0 less!2)) equal!4 p!821))))

(declare-fun b!84713 () Bool)

(assert (=> b!84713 (= e!45888 (forall!39 (++!90 (quickSort!0 less!2) equal!4) p!821))))

(assert (= (and d!56979 res!43835) b!84711))

(assert (= (and d!56979 c!21100) b!84712))

(assert (= (and d!56979 (not c!21100)) b!84713))

(assert (=> d!56979 m!80442))

(declare-fun m!80472 () Bool)

(assert (=> d!56979 m!80472))

(declare-fun m!80474 () Bool)

(assert (=> b!84711 m!80474))

(assert (=> b!84712 m!80442))

(assert (=> b!84712 m!80444))

(assert (=> b!84712 m!80444))

(declare-fun m!80476 () Bool)

(assert (=> b!84712 m!80476))

(declare-fun m!80478 () Bool)

(assert (=> b!84712 m!80478))

(assert (=> b!84713 m!80442))

(assert (=> b!84713 m!80444))

(assert (=> b!84713 m!80444))

(assert (=> b!84713 m!80476))

(assert (=> b!84699 d!56979))

(declare-fun bs!40858 () Bool)

(declare-fun b!84725 () Bool)

(assert (= bs!40858 (and b!84725 b!84698)))

(declare-fun lambda!10606 () Int)

(assert (=> bs!40858 (= (= (h!1021 less!2) (h!1021 ls!77)) (= lambda!10606 lambda!10597))))

(declare-fun bs!40859 () Bool)

(assert (= bs!40859 (and b!84725 b!84686)))

(assert (=> bs!40859 (not (= lambda!10606 lambda!10598))))

(declare-fun bs!40860 () Bool)

(assert (= bs!40860 (and b!84725 b!84690)))

(assert (=> bs!40860 (not (= lambda!10606 lambda!10599))))

(assert (=> b!84725 true))

(declare-fun b_next!39465 () Bool)

(assert (=> start!11074 (= b_next!39461 (or (and b!84725 (= lambda!10606 p!836)) b_next!39465))))

(declare-fun b_next!39467 () Bool)

(assert (=> start!11074 (= b_next!39463 (or (and b!84725 (= lambda!10606 p!821)) b_next!39467))))

(declare-fun lambda!10607 () Int)

(assert (=> bs!40858 (not (= lambda!10607 lambda!10597))))

(assert (=> bs!40859 (= (= (h!1021 less!2) (h!1021 ls!77)) (= lambda!10607 lambda!10598))))

(assert (=> bs!40860 (not (= lambda!10607 lambda!10599))))

(assert (=> b!84725 (not (= lambda!10607 lambda!10606))))

(assert (=> b!84725 true))

(declare-fun b_next!39469 () Bool)

(assert (=> start!11074 (= b_next!39465 (or (and b!84725 (= lambda!10607 p!836)) b_next!39469))))

(declare-fun b_next!39471 () Bool)

(assert (=> start!11074 (= b_next!39467 (or (and b!84725 (= lambda!10607 p!821)) b_next!39471))))

(declare-fun lambda!10608 () Int)

(assert (=> b!84725 (not (= lambda!10608 lambda!10607))))

(assert (=> b!84725 (not (= lambda!10608 lambda!10606))))

(assert (=> bs!40858 (not (= lambda!10608 lambda!10597))))

(assert (=> bs!40859 (not (= lambda!10608 lambda!10598))))

(assert (=> bs!40860 (= (= (h!1021 less!2) (h!1021 ls!77)) (= lambda!10608 lambda!10599))))

(assert (=> b!84725 true))

(declare-fun b_next!39473 () Bool)

(assert (=> start!11074 (= b_next!39469 (or (and b!84725 (= lambda!10608 p!836)) b_next!39473))))

(declare-fun b_next!39475 () Bool)

(assert (=> start!11074 (= b_next!39471 (or (and b!84725 (= lambda!10608 p!821)) b_next!39475))))

(declare-fun b!84723 () Bool)

(declare-fun e!45893 () List!691)

(declare-fun e!45894 () List!691)

(assert (=> b!84723 (= e!45893 e!45894)))

(declare-fun c!21106 () Bool)

(assert (=> b!84723 (= c!21106 (and (is-Cons!648 less!2) (is-Nil!650 (t!48017 less!2))))))

(declare-fun b!84722 () Bool)

(assert (=> b!84722 (= e!45893 Nil!650)))

(declare-fun b!84724 () Bool)

(assert (=> b!84724 (= e!45894 less!2)))

(assert (=> b!84725 (= e!45894 (++!90 (++!90 (quickSort!0 (filter!38 (t!48017 less!2) lambda!10606)) (Cons!648 (h!1021 less!2) (filter!38 (t!48017 less!2) lambda!10607))) (quickSort!0 (filter!38 (t!48017 less!2) lambda!10608))))))

(declare-fun d!56981 () Bool)

(declare-fun c!21105 () Bool)

(assert (=> d!56981 (= c!21105 (is-Nil!650 less!2))))

(assert (=> d!56981 (= (quickSort!0 less!2) e!45893)))

(assert (= (and b!84723 c!21106) b!84724))

(assert (= (and b!84723 (not c!21106)) b!84725))

(assert (= (and d!56981 c!21105) b!84722))

(assert (= (and d!56981 (not c!21105)) b!84723))

(declare-fun m!80480 () Bool)

(assert (=> b!84725 m!80480))

(declare-fun m!80482 () Bool)

(assert (=> b!84725 m!80482))

(declare-fun m!80484 () Bool)

(assert (=> b!84725 m!80484))

(declare-fun m!80486 () Bool)

(assert (=> b!84725 m!80486))

(assert (=> b!84725 m!80486))

(declare-fun m!80488 () Bool)

(assert (=> b!84725 m!80488))

(declare-fun m!80490 () Bool)

(assert (=> b!84725 m!80490))

(declare-fun m!80492 () Bool)

(assert (=> b!84725 m!80492))

(assert (=> b!84725 m!80482))

(assert (=> b!84725 m!80488))

(assert (=> b!84725 m!80480))

(assert (=> b!84725 m!80484))

(assert (=> b!84699 d!56981))

(declare-fun b!84736 () Bool)

(declare-fun res!43842 () Bool)

(declare-fun e!45900 () Bool)

(assert (=> b!84736 (=> (not res!43842) (not e!45900))))

(declare-fun lt!19718 () List!691)

(declare-fun size!674 (List!691) Int)

(assert (=> b!84736 (= res!43842 (= (size!674 lt!19718) (+ (size!674 (quickSort!0 less!2)) (size!674 equal!4))))))

(declare-fun d!56983 () Bool)

(assert (=> d!56983 e!45900))

(declare-fun res!43841 () Bool)

(assert (=> d!56983 (=> (not res!43841) (not e!45900))))

(declare-fun content!145 (List!691) (Set Int))

(assert (=> d!56983 (= res!43841 (= (content!145 lt!19718) (union (content!145 (quickSort!0 less!2)) (content!145 equal!4))))))

(declare-fun e!45899 () List!691)

(assert (=> d!56983 (= lt!19718 e!45899)))

(declare-fun c!21109 () Bool)

(assert (=> d!56983 (= c!21109 (is-Nil!650 (quickSort!0 less!2)))))

(assert (=> d!56983 (= (++!90 (quickSort!0 less!2) equal!4) lt!19718)))

(declare-fun b!84734 () Bool)

(assert (=> b!84734 (= e!45899 equal!4)))

(declare-fun b!84735 () Bool)

(assert (=> b!84735 (= e!45899 (Cons!648 (h!1021 (quickSort!0 less!2)) (++!90 (t!48017 (quickSort!0 less!2)) equal!4)))))

(declare-fun b!84737 () Bool)

(assert (=> b!84737 (= e!45900 (or (not (= equal!4 Nil!650)) (= lt!19718 (quickSort!0 less!2))))))

(assert (= (and d!56983 c!21109) b!84734))

(assert (= (and d!56983 (not c!21109)) b!84735))

(assert (= (and d!56983 res!43841) b!84736))

(assert (= (and b!84736 res!43842) b!84737))

(declare-fun m!80494 () Bool)

(assert (=> b!84736 m!80494))

(assert (=> b!84736 m!80442))

(declare-fun m!80496 () Bool)

(assert (=> b!84736 m!80496))

(declare-fun m!80498 () Bool)

(assert (=> b!84736 m!80498))

(declare-fun m!80500 () Bool)

(assert (=> d!56983 m!80500))

(assert (=> d!56983 m!80442))

(declare-fun m!80502 () Bool)

(assert (=> d!56983 m!80502))

(declare-fun m!80504 () Bool)

(assert (=> d!56983 m!80504))

(declare-fun m!80506 () Bool)

(assert (=> b!84735 m!80506))

(assert (=> b!84694 d!56983))

(assert (=> b!84694 d!56981))

(declare-fun d!56985 () Bool)

(declare-fun res!43847 () Bool)

(declare-fun e!45905 () Bool)

(assert (=> d!56985 (=> res!43847 e!45905)))

(assert (=> d!56985 (= res!43847 (is-Nil!650 l1!438))))

(assert (=> d!56985 (= (forall!39 l1!438 p!836) e!45905)))

(declare-fun b!84742 () Bool)

(declare-fun e!45906 () Bool)

(assert (=> b!84742 (= e!45905 e!45906)))

(declare-fun res!43848 () Bool)

(assert (=> b!84742 (=> (not res!43848) (not e!45906))))

(declare-fun dynLambda!1003 (Int Int) Bool)

(assert (=> b!84742 (= res!43848 (dynLambda!1003 p!836 (h!1021 l1!438)))))

(declare-fun b!84743 () Bool)

(assert (=> b!84743 (= e!45906 (forall!39 (t!48017 l1!438) p!836))))

(assert (= (and d!56985 (not res!43847)) b!84742))

(assert (= (and b!84742 res!43848) b!84743))

(declare-fun b_lambda!16651 () Bool)

(assert (=> (not b_lambda!16651) (not b!84742)))

(declare-fun t!48019 () Bool)

(declare-fun tb!46273 () Bool)

(assert (=> (and start!11074 (= p!836 p!836) t!48019) tb!46273))

(declare-fun result!46703 () Bool)

(assert (=> tb!46273 (= result!46703 true)))

(assert (=> b!84742 t!48019))

(declare-fun b_and!58987 () Bool)

(assert (= b_and!58983 (and (=> t!48019 result!46703) b_and!58987)))

(declare-fun t!48021 () Bool)

(declare-fun tb!46275 () Bool)

(assert (=> (and start!11074 (= p!821 p!836) t!48021) tb!46275))

(declare-fun result!46705 () Bool)

(assert (=> tb!46275 (= result!46705 true)))

(assert (=> b!84742 t!48021))

(declare-fun b_and!58989 () Bool)

(assert (= b_and!58985 (and (=> t!48021 result!46705) b_and!58989)))

(declare-fun m!80508 () Bool)

(assert (=> b!84742 m!80508))

(declare-fun m!80510 () Bool)

(assert (=> b!84743 m!80510))

(assert (=> b!84695 d!56985))

(declare-fun bs!40861 () Bool)

(declare-fun b!84747 () Bool)

(assert (= bs!40861 (and b!84747 b!84725)))

(declare-fun lambda!10609 () Int)

(assert (=> bs!40861 (not (= lambda!10609 lambda!10608))))

(assert (=> bs!40861 (not (= lambda!10609 lambda!10607))))

(assert (=> bs!40861 (= (= (h!1021 more!2) (h!1021 less!2)) (= lambda!10609 lambda!10606))))

(declare-fun bs!40862 () Bool)

(assert (= bs!40862 (and b!84747 b!84698)))

(assert (=> bs!40862 (= (= (h!1021 more!2) (h!1021 ls!77)) (= lambda!10609 lambda!10597))))

(declare-fun bs!40863 () Bool)

(assert (= bs!40863 (and b!84747 b!84686)))

(assert (=> bs!40863 (not (= lambda!10609 lambda!10598))))

(declare-fun bs!40864 () Bool)

(assert (= bs!40864 (and b!84747 b!84690)))

(assert (=> bs!40864 (not (= lambda!10609 lambda!10599))))

(assert (=> b!84747 true))

(declare-fun b_next!39477 () Bool)

(assert (=> start!11074 (= b_next!39473 (or (and b!84747 (= lambda!10609 p!836)) b_next!39477))))

(declare-fun b_next!39479 () Bool)

(assert (=> start!11074 (= b_next!39475 (or (and b!84747 (= lambda!10609 p!821)) b_next!39479))))

(declare-fun lambda!10610 () Int)

(assert (=> bs!40861 (not (= lambda!10610 lambda!10608))))

(assert (=> bs!40861 (= (= (h!1021 more!2) (h!1021 less!2)) (= lambda!10610 lambda!10607))))

(assert (=> bs!40861 (not (= lambda!10610 lambda!10606))))

(assert (=> bs!40862 (not (= lambda!10610 lambda!10597))))

(assert (=> bs!40863 (= (= (h!1021 more!2) (h!1021 ls!77)) (= lambda!10610 lambda!10598))))

(assert (=> bs!40864 (not (= lambda!10610 lambda!10599))))

(assert (=> b!84747 (not (= lambda!10610 lambda!10609))))

(assert (=> b!84747 true))

(declare-fun b_next!39481 () Bool)

(assert (=> start!11074 (= b_next!39477 (or (and b!84747 (= lambda!10610 p!836)) b_next!39481))))

(declare-fun b_next!39483 () Bool)

(assert (=> start!11074 (= b_next!39479 (or (and b!84747 (= lambda!10610 p!821)) b_next!39483))))

(declare-fun lambda!10611 () Int)

(assert (=> bs!40861 (= (= (h!1021 more!2) (h!1021 less!2)) (= lambda!10611 lambda!10608))))

(assert (=> bs!40861 (not (= lambda!10611 lambda!10607))))

(assert (=> bs!40861 (not (= lambda!10611 lambda!10606))))

(assert (=> bs!40862 (not (= lambda!10611 lambda!10597))))

(assert (=> bs!40863 (not (= lambda!10611 lambda!10598))))

(assert (=> bs!40864 (= (= (h!1021 more!2) (h!1021 ls!77)) (= lambda!10611 lambda!10599))))

(assert (=> b!84747 (not (= lambda!10611 lambda!10610))))

(assert (=> b!84747 (not (= lambda!10611 lambda!10609))))

(assert (=> b!84747 true))

(declare-fun b_next!39485 () Bool)

(assert (=> start!11074 (= b_next!39481 (or (and b!84747 (= lambda!10611 p!836)) b_next!39485))))

(declare-fun b_next!39487 () Bool)

(assert (=> start!11074 (= b_next!39483 (or (and b!84747 (= lambda!10611 p!821)) b_next!39487))))

(declare-fun b!84745 () Bool)

(declare-fun e!45907 () List!691)

(declare-fun e!45908 () List!691)

(assert (=> b!84745 (= e!45907 e!45908)))

(declare-fun c!21111 () Bool)

(assert (=> b!84745 (= c!21111 (and (is-Cons!648 more!2) (is-Nil!650 (t!48017 more!2))))))

(declare-fun b!84744 () Bool)

(assert (=> b!84744 (= e!45907 Nil!650)))

(declare-fun b!84746 () Bool)

(assert (=> b!84746 (= e!45908 more!2)))

(assert (=> b!84747 (= e!45908 (++!90 (++!90 (quickSort!0 (filter!38 (t!48017 more!2) lambda!10609)) (Cons!648 (h!1021 more!2) (filter!38 (t!48017 more!2) lambda!10610))) (quickSort!0 (filter!38 (t!48017 more!2) lambda!10611))))))

(declare-fun d!56987 () Bool)

(declare-fun c!21110 () Bool)

(assert (=> d!56987 (= c!21110 (is-Nil!650 more!2))))

(assert (=> d!56987 (= (quickSort!0 more!2) e!45907)))

(assert (= (and b!84745 c!21111) b!84746))

(assert (= (and b!84745 (not c!21111)) b!84747))

(assert (= (and d!56987 c!21110) b!84744))

(assert (= (and d!56987 (not c!21110)) b!84745))

(declare-fun m!80512 () Bool)

(assert (=> b!84747 m!80512))

(declare-fun m!80514 () Bool)

(assert (=> b!84747 m!80514))

(declare-fun m!80516 () Bool)

(assert (=> b!84747 m!80516))

(declare-fun m!80518 () Bool)

(assert (=> b!84747 m!80518))

(assert (=> b!84747 m!80518))

(declare-fun m!80520 () Bool)

(assert (=> b!84747 m!80520))

(declare-fun m!80522 () Bool)

(assert (=> b!84747 m!80522))

(declare-fun m!80524 () Bool)

(assert (=> b!84747 m!80524))

(assert (=> b!84747 m!80514))

(assert (=> b!84747 m!80520))

(assert (=> b!84747 m!80512))

(assert (=> b!84747 m!80516))

(assert (=> b!84687 d!56987))

(declare-fun d!56989 () Bool)

(declare-fun res!43849 () Bool)

(declare-fun e!45909 () Bool)

(assert (=> d!56989 (=> res!43849 e!45909)))

(assert (=> d!56989 (= res!43849 (is-Nil!650 l2!431))))

(assert (=> d!56989 (= (forall!39 l2!431 p!836) e!45909)))

(declare-fun b!84748 () Bool)

(declare-fun e!45910 () Bool)

(assert (=> b!84748 (= e!45909 e!45910)))

(declare-fun res!43850 () Bool)

(assert (=> b!84748 (=> (not res!43850) (not e!45910))))

(assert (=> b!84748 (= res!43850 (dynLambda!1003 p!836 (h!1021 l2!431)))))

(declare-fun b!84749 () Bool)

(assert (=> b!84749 (= e!45910 (forall!39 (t!48017 l2!431) p!836))))

(assert (= (and d!56989 (not res!43849)) b!84748))

(assert (= (and b!84748 res!43850) b!84749))

(declare-fun b_lambda!16653 () Bool)

(assert (=> (not b_lambda!16653) (not b!84748)))

(declare-fun t!48023 () Bool)

(declare-fun tb!46277 () Bool)

(assert (=> (and start!11074 (= p!836 p!836) t!48023) tb!46277))

(declare-fun result!46707 () Bool)

(assert (=> tb!46277 (= result!46707 true)))

(assert (=> b!84748 t!48023))

(declare-fun b_and!58991 () Bool)

(assert (= b_and!58987 (and (=> t!48023 result!46707) b_and!58991)))

(declare-fun t!48025 () Bool)

(declare-fun tb!46279 () Bool)

(assert (=> (and start!11074 (= p!821 p!836) t!48025) tb!46279))

(declare-fun result!46709 () Bool)

(assert (=> tb!46279 (= result!46709 true)))

(assert (=> b!84748 t!48025))

(declare-fun b_and!58993 () Bool)

(assert (= b_and!58989 (and (=> t!48025 result!46709) b_and!58993)))

(declare-fun m!80526 () Bool)

(assert (=> b!84748 m!80526))

(declare-fun m!80528 () Bool)

(assert (=> b!84749 m!80528))

(assert (=> b!84691 d!56989))

(declare-fun d!56991 () Bool)

(declare-fun e!45913 () Bool)

(assert (=> d!56991 e!45913))

(declare-fun c!21114 () Bool)

(assert (=> d!56991 (= c!21114 (is-Cons!648 (t!48017 ls!77)))))

(assert (=> d!56991 (forall!39 (t!48017 ls!77) p!821)))

(assert (=> d!56991 (= (filter_preserves_forall!0 (t!48017 ls!77) lambda!10597 p!821) true)))

(declare-fun b!84754 () Bool)

(assert (=> b!84754 (= e!45913 (forall!39 (filter!38 (t!48017 ls!77) lambda!10597) p!821))))

(declare-fun lt!19721 () Bool)

(assert (=> b!84754 (= lt!19721 (filter_preserves_forall!0 (t!48017 (t!48017 ls!77)) lambda!10597 p!821))))

(declare-fun b!84755 () Bool)

(assert (=> b!84755 (= e!45913 (forall!39 (filter!38 (t!48017 ls!77) lambda!10597) p!821))))

(assert (= (and d!56991 c!21114) b!84754))

(assert (= (and d!56991 (not c!21114)) b!84755))

(declare-fun m!80530 () Bool)

(assert (=> d!56991 m!80530))

(assert (=> b!84754 m!80470))

(assert (=> b!84754 m!80470))

(declare-fun m!80532 () Bool)

(assert (=> b!84754 m!80532))

(declare-fun m!80534 () Bool)

(assert (=> b!84754 m!80534))

(assert (=> b!84755 m!80470))

(assert (=> b!84755 m!80470))

(assert (=> b!84755 m!80532))

(assert (=> b!84688 d!56991))

(declare-fun d!56993 () Bool)

(declare-fun e!45914 () Bool)

(assert (=> d!56993 e!45914))

(declare-fun c!21115 () Bool)

(assert (=> d!56993 (= c!21115 (is-Cons!648 (t!48017 ls!77)))))

(assert (=> d!56993 (forall!39 (t!48017 ls!77) p!821)))

(assert (=> d!56993 (= (filter_preserves_forall!0 (t!48017 ls!77) lambda!10599 p!821) true)))

(declare-fun b!84756 () Bool)

(assert (=> b!84756 (= e!45914 (forall!39 (filter!38 (t!48017 ls!77) lambda!10599) p!821))))

(declare-fun lt!19722 () Bool)

(assert (=> b!84756 (= lt!19722 (filter_preserves_forall!0 (t!48017 (t!48017 ls!77)) lambda!10599 p!821))))

(declare-fun b!84757 () Bool)

(assert (=> b!84757 (= e!45914 (forall!39 (filter!38 (t!48017 ls!77) lambda!10599) p!821))))

(assert (= (and d!56993 c!21115) b!84756))

(assert (= (and d!56993 (not c!21115)) b!84757))

(assert (=> d!56993 m!80530))

(assert (=> b!84756 m!80464))

(assert (=> b!84756 m!80464))

(declare-fun m!80536 () Bool)

(assert (=> b!84756 m!80536))

(declare-fun m!80538 () Bool)

(assert (=> b!84756 m!80538))

(assert (=> b!84757 m!80464))

(assert (=> b!84757 m!80464))

(assert (=> b!84757 m!80536))

(assert (=> b!84693 d!56993))

(declare-fun bs!40865 () Bool)

(declare-fun b!84768 () Bool)

(assert (= bs!40865 (and b!84768 b!84725)))

(declare-fun lambda!10624 () Int)

(assert (=> bs!40865 (not (= lambda!10624 lambda!10608))))

(assert (=> bs!40865 (not (= lambda!10624 lambda!10607))))

(assert (=> bs!40865 (= (= (h!1021 more!2) (h!1021 less!2)) (= lambda!10624 lambda!10606))))

(declare-fun bs!40866 () Bool)

(assert (= bs!40866 (and b!84768 b!84698)))

(assert (=> bs!40866 (= (= (h!1021 more!2) (h!1021 ls!77)) (= lambda!10624 lambda!10597))))

(declare-fun bs!40867 () Bool)

(assert (= bs!40867 (and b!84768 b!84686)))

(assert (=> bs!40867 (not (= lambda!10624 lambda!10598))))

(declare-fun bs!40868 () Bool)

(assert (= bs!40868 (and b!84768 b!84690)))

(assert (=> bs!40868 (not (= lambda!10624 lambda!10599))))

(declare-fun bs!40869 () Bool)

(assert (= bs!40869 (and b!84768 b!84747)))

(assert (=> bs!40869 (not (= lambda!10624 lambda!10611))))

(assert (=> bs!40869 (not (= lambda!10624 lambda!10610))))

(assert (=> bs!40869 (= lambda!10624 lambda!10609)))

(assert (=> b!84768 true))

(declare-fun b_next!39489 () Bool)

(assert (=> start!11074 (= b_next!39485 (or (and b!84768 (= lambda!10624 p!836)) b_next!39489))))

(declare-fun b_next!39491 () Bool)

(assert (=> start!11074 (= b_next!39487 (or (and b!84768 (= lambda!10624 p!821)) b_next!39491))))

(declare-fun lambda!10625 () Int)

(assert (=> bs!40865 (not (= lambda!10625 lambda!10608))))

(assert (=> bs!40865 (= (= (h!1021 more!2) (h!1021 less!2)) (= lambda!10625 lambda!10607))))

(assert (=> bs!40865 (not (= lambda!10625 lambda!10606))))

(assert (=> bs!40866 (not (= lambda!10625 lambda!10597))))

(assert (=> bs!40867 (= (= (h!1021 more!2) (h!1021 ls!77)) (= lambda!10625 lambda!10598))))

(assert (=> b!84768 (not (= lambda!10625 lambda!10624))))

(assert (=> bs!40868 (not (= lambda!10625 lambda!10599))))

(assert (=> bs!40869 (not (= lambda!10625 lambda!10611))))

(assert (=> bs!40869 (= lambda!10625 lambda!10610)))

(assert (=> bs!40869 (not (= lambda!10625 lambda!10609))))

(assert (=> b!84768 true))

(declare-fun b_next!39493 () Bool)

(assert (=> start!11074 (= b_next!39489 (or (and b!84768 (= lambda!10625 p!836)) b_next!39493))))

(declare-fun b_next!39495 () Bool)

(assert (=> start!11074 (= b_next!39491 (or (and b!84768 (= lambda!10625 p!821)) b_next!39495))))

(declare-fun lambda!10626 () Int)

(assert (=> bs!40865 (= (= (h!1021 more!2) (h!1021 less!2)) (= lambda!10626 lambda!10608))))

(assert (=> bs!40865 (not (= lambda!10626 lambda!10607))))

(assert (=> bs!40865 (not (= lambda!10626 lambda!10606))))

(assert (=> bs!40866 (not (= lambda!10626 lambda!10597))))

(assert (=> bs!40867 (not (= lambda!10626 lambda!10598))))

(assert (=> b!84768 (not (= lambda!10626 lambda!10625))))

(assert (=> b!84768 (not (= lambda!10626 lambda!10624))))

(assert (=> bs!40868 (= (= (h!1021 more!2) (h!1021 ls!77)) (= lambda!10626 lambda!10599))))

(assert (=> bs!40869 (= lambda!10626 lambda!10611)))

(assert (=> bs!40869 (not (= lambda!10626 lambda!10610))))

(assert (=> bs!40869 (not (= lambda!10626 lambda!10609))))

(assert (=> b!84768 true))

(declare-fun b_next!39497 () Bool)

(assert (=> start!11074 (= b_next!39493 (or (and b!84768 (= lambda!10626 p!836)) b_next!39497))))

(declare-fun b_next!39499 () Bool)

(assert (=> start!11074 (= b_next!39495 (or (and b!84768 (= lambda!10626 p!821)) b_next!39499))))

(declare-fun e!45927 () Bool)

(declare-fun e!45928 () Bool)

(assert (=> b!84768 (= e!45927 e!45928)))

(declare-fun res!43870 () Bool)

(assert (=> b!84768 (=> (not res!43870) (not e!45928))))

(declare-fun lt!19739 () List!691)

(declare-fun lt!19738 () List!691)

(assert (=> b!84768 (= res!43870 (append_preserves_forall!0 (quickSort!0 lt!19739) lt!19738 p!821))))

(declare-fun lt!19735 () Bool)

(declare-fun e!45926 () Bool)

(assert (=> b!84768 (= lt!19735 e!45926)))

(declare-fun res!43867 () Bool)

(assert (=> b!84768 (=> (not res!43867) (not e!45926))))

(assert (=> b!84768 (= res!43867 (sort_preserves_forall!0 lt!19739 p!821))))

(declare-fun lt!19737 () Bool)

(declare-fun e!45929 () Bool)

(assert (=> b!84768 (= lt!19737 e!45929)))

(declare-fun res!43868 () Bool)

(assert (=> b!84768 (=> (not res!43868) (not e!45929))))

(declare-fun e!45925 () Bool)

(assert (=> b!84768 (= res!43868 e!45925)))

(declare-fun res!43866 () Bool)

(assert (=> b!84768 (=> (not res!43866) (not e!45925))))

(assert (=> b!84768 (= res!43866 (filter_preserves_forall!0 (t!48017 more!2) lambda!10624 p!821))))

(declare-fun lt!19740 () List!691)

(assert (=> b!84768 (= lt!19740 (filter!38 (t!48017 more!2) lambda!10626))))

(assert (=> b!84768 (= lt!19738 (Cons!648 (h!1021 more!2) (filter!38 (t!48017 more!2) lambda!10625)))))

(assert (=> b!84768 (= lt!19739 (filter!38 (t!48017 more!2) lambda!10624))))

(declare-fun b!84769 () Bool)

(assert (=> b!84769 (= e!45929 (filter_preserves_forall!0 (t!48017 more!2) lambda!10626 p!821))))

(declare-fun b!84770 () Bool)

(assert (=> b!84770 (= e!45926 (sort_preserves_forall!0 lt!19740 p!821))))

(declare-fun b!84771 () Bool)

(assert (=> b!84771 (= e!45928 (append_preserves_forall!0 (++!90 (quickSort!0 lt!19739) lt!19738) (quickSort!0 lt!19740) p!821))))

(declare-fun d!56995 () Bool)

(assert (=> d!56995 (forall!39 (quickSort!0 more!2) p!821)))

(declare-fun lt!19736 () Bool)

(assert (=> d!56995 (= lt!19736 e!45927)))

(declare-fun res!43869 () Bool)

(assert (=> d!56995 (=> res!43869 e!45927)))

(assert (=> d!56995 (= res!43869 (or (is-Nil!650 more!2) (and (is-Cons!648 more!2) (is-Nil!650 (t!48017 more!2)))))))

(assert (=> d!56995 (forall!39 more!2 p!821)))

(assert (=> d!56995 (= (sort_preserves_forall!0 more!2 p!821) true)))

(declare-fun b!84772 () Bool)

(assert (=> b!84772 (= e!45925 (filter_preserves_forall!0 (t!48017 more!2) lambda!10625 p!821))))

(assert (= (and d!56995 (not res!43869)) b!84768))

(assert (= (and b!84768 res!43866) b!84772))

(assert (= (and b!84768 res!43868) b!84769))

(assert (= (and b!84768 res!43867) b!84770))

(assert (= (and b!84768 res!43870) b!84771))

(declare-fun m!80540 () Bool)

(assert (=> b!84772 m!80540))

(assert (=> d!56995 m!80454))

(assert (=> d!56995 m!80454))

(declare-fun m!80542 () Bool)

(assert (=> d!56995 m!80542))

(declare-fun m!80544 () Bool)

(assert (=> d!56995 m!80544))

(declare-fun m!80546 () Bool)

(assert (=> b!84768 m!80546))

(declare-fun m!80548 () Bool)

(assert (=> b!84768 m!80548))

(declare-fun m!80550 () Bool)

(assert (=> b!84768 m!80550))

(declare-fun m!80552 () Bool)

(assert (=> b!84768 m!80552))

(declare-fun m!80554 () Bool)

(assert (=> b!84768 m!80554))

(declare-fun m!80556 () Bool)

(assert (=> b!84768 m!80556))

(declare-fun m!80558 () Bool)

(assert (=> b!84768 m!80558))

(assert (=> b!84768 m!80554))

(declare-fun m!80560 () Bool)

(assert (=> b!84770 m!80560))

(declare-fun m!80562 () Bool)

(assert (=> b!84769 m!80562))

(assert (=> b!84771 m!80554))

(assert (=> b!84771 m!80554))

(declare-fun m!80564 () Bool)

(assert (=> b!84771 m!80564))

(declare-fun m!80566 () Bool)

(assert (=> b!84771 m!80566))

(assert (=> b!84771 m!80564))

(assert (=> b!84771 m!80566))

(declare-fun m!80568 () Bool)

(assert (=> b!84771 m!80568))

(assert (=> b!84700 d!56995))

(declare-fun b!84787 () Bool)

(declare-fun e!45939 () Bool)

(assert (=> b!84787 (= e!45939 (dynLambda!1003 lambda!10598 (h!1021 (t!48017 ls!77))))))

(declare-fun b!84788 () Bool)

(declare-fun e!45941 () List!691)

(declare-fun lt!19746 () List!691)

(assert (=> b!84788 (= e!45941 (Cons!648 (h!1021 (t!48017 ls!77)) lt!19746))))

(declare-fun b!84789 () Bool)

(declare-fun e!45938 () Bool)

(declare-fun lt!19745 () List!691)

(assert (=> b!84789 (= e!45938 (forall!39 lt!19745 lambda!10598))))

(declare-fun b!84790 () Bool)

(declare-fun e!45940 () List!691)

(assert (=> b!84790 (= e!45940 e!45941)))

(declare-fun c!21120 () Bool)

(assert (=> b!84790 (= c!21120 e!45939)))

(declare-fun res!43883 () Bool)

(assert (=> b!84790 (=> (not res!43883) (not e!45939))))

(assert (=> b!84790 (= res!43883 (is-Cons!648 (t!48017 ls!77)))))

(assert (=> b!84790 (= lt!19746 (filter!38 (t!48017 (t!48017 ls!77)) lambda!10598))))

(declare-fun d!56997 () Bool)

(assert (=> d!56997 e!45938))

(declare-fun res!43882 () Bool)

(assert (=> d!56997 (=> (not res!43882) (not e!45938))))

(assert (=> d!56997 (= res!43882 (<= (size!674 lt!19745) (size!674 (t!48017 ls!77))))))

(assert (=> d!56997 (= lt!19745 e!45940)))

(declare-fun c!21121 () Bool)

(assert (=> d!56997 (= c!21121 (is-Nil!650 (t!48017 ls!77)))))

(assert (=> d!56997 (= (filter!38 (t!48017 ls!77) lambda!10598) lt!19745)))

(declare-fun b!84791 () Bool)

(declare-fun res!43881 () Bool)

(assert (=> b!84791 (=> (not res!43881) (not e!45938))))

(assert (=> b!84791 (= res!43881 (subset (content!145 lt!19745) (content!145 (t!48017 ls!77))))))

(declare-fun b!84792 () Bool)

(assert (=> b!84792 (= e!45941 lt!19746)))

(declare-fun b!84793 () Bool)

(assert (=> b!84793 (= e!45940 Nil!650)))

(assert (= (and b!84790 res!43883) b!84787))

(assert (= (and b!84790 c!21120) b!84788))

(assert (= (and b!84790 (not c!21120)) b!84792))

(assert (= (and d!56997 c!21121) b!84793))

(assert (= (and d!56997 (not c!21121)) b!84790))

(assert (= (and d!56997 res!43882) b!84791))

(assert (= (and b!84791 res!43881) b!84789))

(declare-fun b_lambda!16655 () Bool)

(assert (=> (not b_lambda!16655) (not b!84787)))

(declare-fun m!80570 () Bool)

(assert (=> b!84790 m!80570))

(declare-fun m!80572 () Bool)

(assert (=> b!84791 m!80572))

(declare-fun m!80574 () Bool)

(assert (=> b!84791 m!80574))

(declare-fun m!80576 () Bool)

(assert (=> d!56997 m!80576))

(declare-fun m!80578 () Bool)

(assert (=> d!56997 m!80578))

(declare-fun m!80580 () Bool)

(assert (=> b!84787 m!80580))

(declare-fun m!80582 () Bool)

(assert (=> b!84789 m!80582))

(assert (=> b!84686 d!56997))

(declare-fun d!56999 () Bool)

(declare-fun res!43884 () Bool)

(declare-fun e!45942 () Bool)

(assert (=> d!56999 (=> res!43884 e!45942)))

(assert (=> d!56999 (= res!43884 (is-Nil!650 ls!77))))

(assert (=> d!56999 (= (forall!39 ls!77 p!821) e!45942)))

(declare-fun b!84794 () Bool)

(declare-fun e!45943 () Bool)

(assert (=> b!84794 (= e!45942 e!45943)))

(declare-fun res!43885 () Bool)

(assert (=> b!84794 (=> (not res!43885) (not e!45943))))

(assert (=> b!84794 (= res!43885 (dynLambda!1003 p!821 (h!1021 ls!77)))))

(declare-fun b!84795 () Bool)

(assert (=> b!84795 (= e!45943 (forall!39 (t!48017 ls!77) p!821))))

(assert (= (and d!56999 (not res!43884)) b!84794))

(assert (= (and b!84794 res!43885) b!84795))

(declare-fun b_lambda!16657 () Bool)

(assert (=> (not b_lambda!16657) (not b!84794)))

(declare-fun tb!46281 () Bool)

(declare-fun t!48032 () Bool)

(assert (=> (and start!11074 (= p!836 p!821) t!48032) tb!46281))

(declare-fun result!46711 () Bool)

(assert (=> tb!46281 (= result!46711 true)))

(assert (=> b!84794 t!48032))

(declare-fun b_and!58995 () Bool)

(assert (= b_and!58991 (and (=> t!48032 result!46711) b_and!58995)))

(declare-fun t!48034 () Bool)

(declare-fun tb!46283 () Bool)

(assert (=> (and start!11074 (= p!821 p!821) t!48034) tb!46283))

(declare-fun result!46713 () Bool)

(assert (=> tb!46283 (= result!46713 true)))

(assert (=> b!84794 t!48034))

(declare-fun b_and!58997 () Bool)

(assert (= b_and!58993 (and (=> t!48034 result!46713) b_and!58997)))

(declare-fun m!80584 () Bool)

(assert (=> b!84794 m!80584))

(assert (=> b!84795 m!80530))

(assert (=> start!11074 d!56999))

(declare-fun b!84796 () Bool)

(declare-fun e!45945 () Bool)

(assert (=> b!84796 (= e!45945 (dynLambda!1003 lambda!10599 (h!1021 (t!48017 ls!77))))))

(declare-fun b!84797 () Bool)

(declare-fun e!45947 () List!691)

(declare-fun lt!19748 () List!691)

(assert (=> b!84797 (= e!45947 (Cons!648 (h!1021 (t!48017 ls!77)) lt!19748))))

(declare-fun b!84798 () Bool)

(declare-fun e!45944 () Bool)

(declare-fun lt!19747 () List!691)

(assert (=> b!84798 (= e!45944 (forall!39 lt!19747 lambda!10599))))

(declare-fun b!84799 () Bool)

(declare-fun e!45946 () List!691)

(assert (=> b!84799 (= e!45946 e!45947)))

(declare-fun c!21122 () Bool)

(assert (=> b!84799 (= c!21122 e!45945)))

(declare-fun res!43888 () Bool)

(assert (=> b!84799 (=> (not res!43888) (not e!45945))))

(assert (=> b!84799 (= res!43888 (is-Cons!648 (t!48017 ls!77)))))

(assert (=> b!84799 (= lt!19748 (filter!38 (t!48017 (t!48017 ls!77)) lambda!10599))))

(declare-fun d!57001 () Bool)

(assert (=> d!57001 e!45944))

(declare-fun res!43887 () Bool)

(assert (=> d!57001 (=> (not res!43887) (not e!45944))))

(assert (=> d!57001 (= res!43887 (<= (size!674 lt!19747) (size!674 (t!48017 ls!77))))))

(assert (=> d!57001 (= lt!19747 e!45946)))

(declare-fun c!21123 () Bool)

(assert (=> d!57001 (= c!21123 (is-Nil!650 (t!48017 ls!77)))))

(assert (=> d!57001 (= (filter!38 (t!48017 ls!77) lambda!10599) lt!19747)))

(declare-fun b!84800 () Bool)

(declare-fun res!43886 () Bool)

(assert (=> b!84800 (=> (not res!43886) (not e!45944))))

(assert (=> b!84800 (= res!43886 (subset (content!145 lt!19747) (content!145 (t!48017 ls!77))))))

(declare-fun b!84801 () Bool)

(assert (=> b!84801 (= e!45947 lt!19748)))

(declare-fun b!84802 () Bool)

(assert (=> b!84802 (= e!45946 Nil!650)))

(assert (= (and b!84799 res!43888) b!84796))

(assert (= (and b!84799 c!21122) b!84797))

(assert (= (and b!84799 (not c!21122)) b!84801))

(assert (= (and d!57001 c!21123) b!84802))

(assert (= (and d!57001 (not c!21123)) b!84799))

(assert (= (and d!57001 res!43887) b!84800))

(assert (= (and b!84800 res!43886) b!84798))

(declare-fun b_lambda!16659 () Bool)

(assert (=> (not b_lambda!16659) (not b!84796)))

(declare-fun m!80586 () Bool)

(assert (=> b!84799 m!80586))

(declare-fun m!80588 () Bool)

(assert (=> b!84800 m!80588))

(assert (=> b!84800 m!80574))

(declare-fun m!80590 () Bool)

(assert (=> d!57001 m!80590))

(assert (=> d!57001 m!80578))

(declare-fun m!80592 () Bool)

(assert (=> b!84796 m!80592))

(declare-fun m!80594 () Bool)

(assert (=> b!84798 m!80594))

(assert (=> b!84690 d!57001))

(declare-fun bs!40870 () Bool)

(declare-fun b!84803 () Bool)

(assert (= bs!40870 (and b!84803 b!84725)))

(declare-fun lambda!10627 () Int)

(assert (=> bs!40870 (not (= lambda!10627 lambda!10608))))

(assert (=> bs!40870 (not (= lambda!10627 lambda!10607))))

(assert (=> bs!40870 (= lambda!10627 lambda!10606)))

(declare-fun bs!40871 () Bool)

(assert (= bs!40871 (and b!84803 b!84698)))

(assert (=> bs!40871 (= (= (h!1021 less!2) (h!1021 ls!77)) (= lambda!10627 lambda!10597))))

(declare-fun bs!40872 () Bool)

(assert (= bs!40872 (and b!84803 b!84686)))

(assert (=> bs!40872 (not (= lambda!10627 lambda!10598))))

(declare-fun bs!40873 () Bool)

(assert (= bs!40873 (and b!84803 b!84768)))

(assert (=> bs!40873 (not (= lambda!10627 lambda!10626))))

(assert (=> bs!40873 (not (= lambda!10627 lambda!10625))))

(assert (=> bs!40873 (= (= (h!1021 less!2) (h!1021 more!2)) (= lambda!10627 lambda!10624))))

(declare-fun bs!40874 () Bool)

(assert (= bs!40874 (and b!84803 b!84690)))

(assert (=> bs!40874 (not (= lambda!10627 lambda!10599))))

(declare-fun bs!40875 () Bool)

(assert (= bs!40875 (and b!84803 b!84747)))

(assert (=> bs!40875 (not (= lambda!10627 lambda!10611))))

(assert (=> bs!40875 (not (= lambda!10627 lambda!10610))))

(assert (=> bs!40875 (= (= (h!1021 less!2) (h!1021 more!2)) (= lambda!10627 lambda!10609))))

(assert (=> b!84803 true))

(declare-fun b_next!39501 () Bool)

(assert (=> start!11074 (= b_next!39497 (or (and b!84803 (= lambda!10627 p!836)) b_next!39501))))

(declare-fun b_next!39503 () Bool)

(assert (=> start!11074 (= b_next!39499 (or (and b!84803 (= lambda!10627 p!821)) b_next!39503))))

(declare-fun lambda!10628 () Int)

(assert (=> bs!40870 (not (= lambda!10628 lambda!10608))))

(assert (=> bs!40870 (= lambda!10628 lambda!10607)))

(assert (=> bs!40870 (not (= lambda!10628 lambda!10606))))

(assert (=> b!84803 (not (= lambda!10628 lambda!10627))))

(assert (=> bs!40871 (not (= lambda!10628 lambda!10597))))

(assert (=> bs!40872 (= (= (h!1021 less!2) (h!1021 ls!77)) (= lambda!10628 lambda!10598))))

(assert (=> bs!40873 (not (= lambda!10628 lambda!10626))))

(assert (=> bs!40873 (= (= (h!1021 less!2) (h!1021 more!2)) (= lambda!10628 lambda!10625))))

(assert (=> bs!40873 (not (= lambda!10628 lambda!10624))))

(assert (=> bs!40874 (not (= lambda!10628 lambda!10599))))

(assert (=> bs!40875 (not (= lambda!10628 lambda!10611))))

(assert (=> bs!40875 (= (= (h!1021 less!2) (h!1021 more!2)) (= lambda!10628 lambda!10610))))

(assert (=> bs!40875 (not (= lambda!10628 lambda!10609))))

(assert (=> b!84803 true))

(declare-fun b_next!39505 () Bool)

(assert (=> start!11074 (= b_next!39501 (or (and b!84803 (= lambda!10628 p!836)) b_next!39505))))

(declare-fun b_next!39507 () Bool)

(assert (=> start!11074 (= b_next!39503 (or (and b!84803 (= lambda!10628 p!821)) b_next!39507))))

(declare-fun lambda!10629 () Int)

(assert (=> bs!40870 (= lambda!10629 lambda!10608)))

(assert (=> bs!40870 (not (= lambda!10629 lambda!10607))))

(assert (=> bs!40870 (not (= lambda!10629 lambda!10606))))

(assert (=> b!84803 (not (= lambda!10629 lambda!10628))))

(assert (=> b!84803 (not (= lambda!10629 lambda!10627))))

(assert (=> bs!40871 (not (= lambda!10629 lambda!10597))))

(assert (=> bs!40872 (not (= lambda!10629 lambda!10598))))

(assert (=> bs!40873 (= (= (h!1021 less!2) (h!1021 more!2)) (= lambda!10629 lambda!10626))))

(assert (=> bs!40873 (not (= lambda!10629 lambda!10625))))

(assert (=> bs!40873 (not (= lambda!10629 lambda!10624))))

(assert (=> bs!40874 (= (= (h!1021 less!2) (h!1021 ls!77)) (= lambda!10629 lambda!10599))))

(assert (=> bs!40875 (= (= (h!1021 less!2) (h!1021 more!2)) (= lambda!10629 lambda!10611))))

(assert (=> bs!40875 (not (= lambda!10629 lambda!10610))))

(assert (=> bs!40875 (not (= lambda!10629 lambda!10609))))

(assert (=> b!84803 true))

(declare-fun b_next!39509 () Bool)

(assert (=> start!11074 (= b_next!39505 (or (and b!84803 (= lambda!10629 p!836)) b_next!39509))))

(declare-fun b_next!39511 () Bool)

(assert (=> start!11074 (= b_next!39507 (or (and b!84803 (= lambda!10629 p!821)) b_next!39511))))

(declare-fun e!45950 () Bool)

(declare-fun e!45951 () Bool)

(assert (=> b!84803 (= e!45950 e!45951)))

(declare-fun res!43893 () Bool)

(assert (=> b!84803 (=> (not res!43893) (not e!45951))))

(declare-fun lt!19753 () List!691)

(declare-fun lt!19752 () List!691)

(assert (=> b!84803 (= res!43893 (append_preserves_forall!0 (quickSort!0 lt!19753) lt!19752 p!821))))

(declare-fun lt!19749 () Bool)

(declare-fun e!45949 () Bool)

(assert (=> b!84803 (= lt!19749 e!45949)))

(declare-fun res!43890 () Bool)

(assert (=> b!84803 (=> (not res!43890) (not e!45949))))

(assert (=> b!84803 (= res!43890 (sort_preserves_forall!0 lt!19753 p!821))))

(declare-fun lt!19751 () Bool)

(declare-fun e!45952 () Bool)

(assert (=> b!84803 (= lt!19751 e!45952)))

(declare-fun res!43891 () Bool)

(assert (=> b!84803 (=> (not res!43891) (not e!45952))))

(declare-fun e!45948 () Bool)

(assert (=> b!84803 (= res!43891 e!45948)))

(declare-fun res!43889 () Bool)

(assert (=> b!84803 (=> (not res!43889) (not e!45948))))

(assert (=> b!84803 (= res!43889 (filter_preserves_forall!0 (t!48017 less!2) lambda!10627 p!821))))

(declare-fun lt!19754 () List!691)

(assert (=> b!84803 (= lt!19754 (filter!38 (t!48017 less!2) lambda!10629))))

(assert (=> b!84803 (= lt!19752 (Cons!648 (h!1021 less!2) (filter!38 (t!48017 less!2) lambda!10628)))))

(assert (=> b!84803 (= lt!19753 (filter!38 (t!48017 less!2) lambda!10627))))

(declare-fun b!84804 () Bool)

(assert (=> b!84804 (= e!45952 (filter_preserves_forall!0 (t!48017 less!2) lambda!10629 p!821))))

(declare-fun b!84805 () Bool)

(assert (=> b!84805 (= e!45949 (sort_preserves_forall!0 lt!19754 p!821))))

(declare-fun b!84806 () Bool)

(assert (=> b!84806 (= e!45951 (append_preserves_forall!0 (++!90 (quickSort!0 lt!19753) lt!19752) (quickSort!0 lt!19754) p!821))))

(declare-fun d!57003 () Bool)

(assert (=> d!57003 (forall!39 (quickSort!0 less!2) p!821)))

(declare-fun lt!19750 () Bool)

(assert (=> d!57003 (= lt!19750 e!45950)))

(declare-fun res!43892 () Bool)

(assert (=> d!57003 (=> res!43892 e!45950)))

(assert (=> d!57003 (= res!43892 (or (is-Nil!650 less!2) (and (is-Cons!648 less!2) (is-Nil!650 (t!48017 less!2)))))))

(assert (=> d!57003 (forall!39 less!2 p!821)))

(assert (=> d!57003 (= (sort_preserves_forall!0 less!2 p!821) true)))

(declare-fun b!84807 () Bool)

(assert (=> b!84807 (= e!45948 (filter_preserves_forall!0 (t!48017 less!2) lambda!10628 p!821))))

(assert (= (and d!57003 (not res!43892)) b!84803))

(assert (= (and b!84803 res!43889) b!84807))

(assert (= (and b!84803 res!43891) b!84804))

(assert (= (and b!84803 res!43890) b!84805))

(assert (= (and b!84803 res!43893) b!84806))

(declare-fun m!80596 () Bool)

(assert (=> b!84807 m!80596))

(assert (=> d!57003 m!80442))

(assert (=> d!57003 m!80442))

(assert (=> d!57003 m!80472))

(declare-fun m!80598 () Bool)

(assert (=> d!57003 m!80598))

(declare-fun m!80600 () Bool)

(assert (=> b!84803 m!80600))

(declare-fun m!80602 () Bool)

(assert (=> b!84803 m!80602))

(declare-fun m!80604 () Bool)

(assert (=> b!84803 m!80604))

(declare-fun m!80606 () Bool)

(assert (=> b!84803 m!80606))

(declare-fun m!80608 () Bool)

(assert (=> b!84803 m!80608))

(declare-fun m!80610 () Bool)

(assert (=> b!84803 m!80610))

(declare-fun m!80612 () Bool)

(assert (=> b!84803 m!80612))

(assert (=> b!84803 m!80608))

(declare-fun m!80614 () Bool)

(assert (=> b!84805 m!80614))

(declare-fun m!80616 () Bool)

(assert (=> b!84804 m!80616))

(assert (=> b!84806 m!80608))

(assert (=> b!84806 m!80608))

(declare-fun m!80618 () Bool)

(assert (=> b!84806 m!80618))

(declare-fun m!80620 () Bool)

(assert (=> b!84806 m!80620))

(assert (=> b!84806 m!80618))

(assert (=> b!84806 m!80620))

(declare-fun m!80622 () Bool)

(assert (=> b!84806 m!80622))

(assert (=> b!84701 d!57003))

(declare-fun d!57005 () Bool)

(declare-fun e!45953 () Bool)

(assert (=> d!57005 e!45953))

(declare-fun c!21124 () Bool)

(assert (=> d!57005 (= c!21124 (is-Cons!648 (t!48017 ls!77)))))

(assert (=> d!57005 (forall!39 (t!48017 ls!77) p!821)))

(assert (=> d!57005 (= (filter_preserves_forall!0 (t!48017 ls!77) lambda!10598 p!821) true)))

(declare-fun b!84808 () Bool)

(assert (=> b!84808 (= e!45953 (forall!39 (filter!38 (t!48017 ls!77) lambda!10598) p!821))))

(declare-fun lt!19755 () Bool)

(assert (=> b!84808 (= lt!19755 (filter_preserves_forall!0 (t!48017 (t!48017 ls!77)) lambda!10598 p!821))))

(declare-fun b!84809 () Bool)

(assert (=> b!84809 (= e!45953 (forall!39 (filter!38 (t!48017 ls!77) lambda!10598) p!821))))

(assert (= (and d!57005 c!21124) b!84808))

(assert (= (and d!57005 (not c!21124)) b!84809))

(assert (=> d!57005 m!80530))

(assert (=> b!84808 m!80458))

(assert (=> b!84808 m!80458))

(declare-fun m!80624 () Bool)

(assert (=> b!84808 m!80624))

(declare-fun m!80626 () Bool)

(assert (=> b!84808 m!80626))

(assert (=> b!84809 m!80458))

(assert (=> b!84809 m!80458))

(assert (=> b!84809 m!80624))

(assert (=> b!84685 d!57005))

(declare-fun b!84810 () Bool)

(declare-fun e!45955 () Bool)

(assert (=> b!84810 (= e!45955 (dynLambda!1003 lambda!10597 (h!1021 (t!48017 ls!77))))))

(declare-fun b!84811 () Bool)

(declare-fun e!45957 () List!691)

(declare-fun lt!19757 () List!691)

(assert (=> b!84811 (= e!45957 (Cons!648 (h!1021 (t!48017 ls!77)) lt!19757))))

(declare-fun b!84812 () Bool)

(declare-fun e!45954 () Bool)

(declare-fun lt!19756 () List!691)

(assert (=> b!84812 (= e!45954 (forall!39 lt!19756 lambda!10597))))

(declare-fun b!84813 () Bool)

(declare-fun e!45956 () List!691)

(assert (=> b!84813 (= e!45956 e!45957)))

(declare-fun c!21125 () Bool)

(assert (=> b!84813 (= c!21125 e!45955)))

(declare-fun res!43896 () Bool)

(assert (=> b!84813 (=> (not res!43896) (not e!45955))))

(assert (=> b!84813 (= res!43896 (is-Cons!648 (t!48017 ls!77)))))

(assert (=> b!84813 (= lt!19757 (filter!38 (t!48017 (t!48017 ls!77)) lambda!10597))))

(declare-fun d!57007 () Bool)

(assert (=> d!57007 e!45954))

(declare-fun res!43895 () Bool)

(assert (=> d!57007 (=> (not res!43895) (not e!45954))))

(assert (=> d!57007 (= res!43895 (<= (size!674 lt!19756) (size!674 (t!48017 ls!77))))))

(assert (=> d!57007 (= lt!19756 e!45956)))

(declare-fun c!21126 () Bool)

(assert (=> d!57007 (= c!21126 (is-Nil!650 (t!48017 ls!77)))))

(assert (=> d!57007 (= (filter!38 (t!48017 ls!77) lambda!10597) lt!19756)))

(declare-fun b!84814 () Bool)

(declare-fun res!43894 () Bool)

(assert (=> b!84814 (=> (not res!43894) (not e!45954))))

(assert (=> b!84814 (= res!43894 (subset (content!145 lt!19756) (content!145 (t!48017 ls!77))))))

(declare-fun b!84815 () Bool)

(assert (=> b!84815 (= e!45957 lt!19757)))

(declare-fun b!84816 () Bool)

(assert (=> b!84816 (= e!45956 Nil!650)))

(assert (= (and b!84813 res!43896) b!84810))

(assert (= (and b!84813 c!21125) b!84811))

(assert (= (and b!84813 (not c!21125)) b!84815))

(assert (= (and d!57007 c!21126) b!84816))

(assert (= (and d!57007 (not c!21126)) b!84813))

(assert (= (and d!57007 res!43895) b!84814))

(assert (= (and b!84814 res!43894) b!84812))

(declare-fun b_lambda!16661 () Bool)

(assert (=> (not b_lambda!16661) (not b!84810)))

(declare-fun m!80628 () Bool)

(assert (=> b!84813 m!80628))

(declare-fun m!80630 () Bool)

(assert (=> b!84814 m!80630))

(assert (=> b!84814 m!80574))

(declare-fun m!80632 () Bool)

(assert (=> d!57007 m!80632))

(assert (=> d!57007 m!80578))

(declare-fun m!80634 () Bool)

(assert (=> b!84810 m!80634))

(declare-fun m!80636 () Bool)

(assert (=> b!84812 m!80636))

(assert (=> b!84698 d!57007))

(declare-fun b_lambda!16663 () Bool)

(assert (= b_lambda!16655 (or b!84686 b_lambda!16663)))

(declare-fun bs!40876 () Bool)

(declare-fun d!57009 () Bool)

(assert (= bs!40876 (and d!57009 b!84686)))

(assert (=> bs!40876 (= (dynLambda!1003 lambda!10598 (h!1021 (t!48017 ls!77))) (= (h!1021 (t!48017 ls!77)) (h!1021 ls!77)))))

(assert (=> b!84787 d!57009))

(declare-fun b_lambda!16665 () Bool)

(assert (= b_lambda!16653 (or (and start!11074 b_free!7389) (and b!84768 (= lambda!10624 p!836)) (and b!84803 (= lambda!10628 p!836)) (and b!84725 (= lambda!10608 p!836)) (and start!11074 b_free!7391 (= p!821 p!836)) (and b!84747 (= lambda!10611 p!836)) (and b!84768 (= lambda!10626 p!836)) (and b!84803 (= lambda!10627 p!836)) (and b!84690 (= lambda!10599 p!836)) (and b!84803 (= lambda!10629 p!836)) (and b!84747 (= lambda!10609 p!836)) (and b!84747 (= lambda!10610 p!836)) (and b!84686 (= lambda!10598 p!836)) (and b!84768 (= lambda!10625 p!836)) (and b!84725 (= lambda!10606 p!836)) (and b!84698 (= lambda!10597 p!836)) (and b!84725 (= lambda!10607 p!836)) b_lambda!16665)))

(declare-fun bs!40877 () Bool)

(declare-fun d!57011 () Bool)

(assert (= bs!40877 (and d!57011 b!84768)))

(assert (=> bs!40877 (= (dynLambda!1003 lambda!10624 (h!1021 l2!431)) (< (h!1021 l2!431) (h!1021 more!2)))))

(assert (=> (and b!84768 (= lambda!10624 p!836) b!84748) d!57011))

(declare-fun bs!40878 () Bool)

(declare-fun d!57013 () Bool)

(assert (= bs!40878 (and d!57013 b!84747)))

(assert (=> bs!40878 (= (dynLambda!1003 lambda!10609 (h!1021 l2!431)) (< (h!1021 l2!431) (h!1021 more!2)))))

(assert (=> (and b!84747 (= lambda!10609 p!836) b!84748) d!57013))

(declare-fun bs!40879 () Bool)

(declare-fun d!57015 () Bool)

(assert (= bs!40879 (and d!57015 b!84725)))

(assert (=> bs!40879 (= (dynLambda!1003 lambda!10606 (h!1021 l2!431)) (< (h!1021 l2!431) (h!1021 less!2)))))

(assert (=> (and b!84725 (= lambda!10606 p!836) b!84748) d!57015))

(declare-fun bs!40880 () Bool)

(declare-fun d!57017 () Bool)

(assert (= bs!40880 (and d!57017 b!84698)))

(assert (=> bs!40880 (= (dynLambda!1003 lambda!10597 (h!1021 l2!431)) (< (h!1021 l2!431) (h!1021 ls!77)))))

(assert (=> (and b!84698 (= lambda!10597 p!836) b!84748) d!57017))

(declare-fun bs!40881 () Bool)

(declare-fun d!57019 () Bool)

(assert (= bs!40881 (and d!57019 b!84690)))

(assert (=> bs!40881 (= (dynLambda!1003 lambda!10599 (h!1021 l2!431)) (> (h!1021 l2!431) (h!1021 ls!77)))))

(assert (=> (and b!84690 (= lambda!10599 p!836) b!84748) d!57019))

(declare-fun bs!40882 () Bool)

(declare-fun d!57021 () Bool)

(assert (= bs!40882 (and d!57021 b!84747)))

(assert (=> bs!40882 (= (dynLambda!1003 lambda!10611 (h!1021 l2!431)) (> (h!1021 l2!431) (h!1021 more!2)))))

(assert (=> (and b!84747 (= lambda!10611 p!836) b!84748) d!57021))

(declare-fun bs!40883 () Bool)

(declare-fun d!57023 () Bool)

(assert (= bs!40883 (and d!57023 b!84686)))

(assert (=> bs!40883 (= (dynLambda!1003 lambda!10598 (h!1021 l2!431)) (= (h!1021 l2!431) (h!1021 ls!77)))))

(assert (=> (and b!84686 (= lambda!10598 p!836) b!84748) d!57023))

(declare-fun bs!40884 () Bool)

(declare-fun d!57025 () Bool)

(assert (= bs!40884 (and d!57025 b!84803)))

(assert (=> bs!40884 (= (dynLambda!1003 lambda!10629 (h!1021 l2!431)) (> (h!1021 l2!431) (h!1021 less!2)))))

(assert (=> (and b!84803 (= lambda!10629 p!836) b!84748) d!57025))

(declare-fun bs!40885 () Bool)

(declare-fun d!57027 () Bool)

(assert (= bs!40885 (and d!57027 b!84725)))

(assert (=> bs!40885 (= (dynLambda!1003 lambda!10608 (h!1021 l2!431)) (> (h!1021 l2!431) (h!1021 less!2)))))

(assert (=> (and b!84725 (= lambda!10608 p!836) b!84748) d!57027))

(declare-fun bs!40886 () Bool)

(declare-fun d!57029 () Bool)

(assert (= bs!40886 (and d!57029 b!84747)))

(assert (=> bs!40886 (= (dynLambda!1003 lambda!10610 (h!1021 l2!431)) (= (h!1021 l2!431) (h!1021 more!2)))))

(assert (=> (and b!84747 (= lambda!10610 p!836) b!84748) d!57029))

(declare-fun bs!40887 () Bool)

(declare-fun d!57031 () Bool)

(assert (= bs!40887 (and d!57031 b!84803)))

(assert (=> bs!40887 (= (dynLambda!1003 lambda!10628 (h!1021 l2!431)) (= (h!1021 l2!431) (h!1021 less!2)))))

(assert (=> (and b!84803 (= lambda!10628 p!836) b!84748) d!57031))

(declare-fun bs!40888 () Bool)

(declare-fun d!57033 () Bool)

(assert (= bs!40888 (and d!57033 b!84803)))

(assert (=> bs!40888 (= (dynLambda!1003 lambda!10627 (h!1021 l2!431)) (< (h!1021 l2!431) (h!1021 less!2)))))

(assert (=> (and b!84803 (= lambda!10627 p!836) b!84748) d!57033))

(declare-fun bs!40889 () Bool)

(declare-fun d!57035 () Bool)

(assert (= bs!40889 (and d!57035 b!84725)))

(assert (=> bs!40889 (= (dynLambda!1003 lambda!10607 (h!1021 l2!431)) (= (h!1021 l2!431) (h!1021 less!2)))))

(assert (=> (and b!84725 (= lambda!10607 p!836) b!84748) d!57035))

(declare-fun bs!40890 () Bool)

(declare-fun d!57037 () Bool)

(assert (= bs!40890 (and d!57037 b!84768)))

(assert (=> bs!40890 (= (dynLambda!1003 lambda!10626 (h!1021 l2!431)) (> (h!1021 l2!431) (h!1021 more!2)))))

(assert (=> (and b!84768 (= lambda!10626 p!836) b!84748) d!57037))

(declare-fun bs!40891 () Bool)

(declare-fun d!57039 () Bool)

(assert (= bs!40891 (and d!57039 b!84768)))

(assert (=> bs!40891 (= (dynLambda!1003 lambda!10625 (h!1021 l2!431)) (= (h!1021 l2!431) (h!1021 more!2)))))

(assert (=> (and b!84768 (= lambda!10625 p!836) b!84748) d!57039))

(declare-fun b_lambda!16667 () Bool)

(assert (= b_lambda!16659 (or b!84690 b_lambda!16667)))

(declare-fun bs!40892 () Bool)

(declare-fun d!57041 () Bool)

(assert (= bs!40892 (and d!57041 b!84690)))

(assert (=> bs!40892 (= (dynLambda!1003 lambda!10599 (h!1021 (t!48017 ls!77))) (> (h!1021 (t!48017 ls!77)) (h!1021 ls!77)))))

(assert (=> b!84796 d!57041))

(declare-fun b_lambda!16669 () Bool)

(assert (= b_lambda!16661 (or b!84698 b_lambda!16669)))

(declare-fun bs!40893 () Bool)

(declare-fun d!57043 () Bool)

(assert (= bs!40893 (and d!57043 b!84698)))

(assert (=> bs!40893 (= (dynLambda!1003 lambda!10597 (h!1021 (t!48017 ls!77))) (< (h!1021 (t!48017 ls!77)) (h!1021 ls!77)))))

(assert (=> b!84810 d!57043))

(declare-fun b_lambda!16671 () Bool)

(assert (= b_lambda!16657 (or (and b!84803 (= lambda!10629 p!821)) (and start!11074 b_free!7391) (and b!84747 (= lambda!10609 p!821)) (and b!84725 (= lambda!10608 p!821)) (and b!84803 (= lambda!10628 p!821)) (and b!84690 (= lambda!10599 p!821)) (and start!11074 b_free!7389 (= p!836 p!821)) (and b!84725 (= lambda!10606 p!821)) (and b!84686 (= lambda!10598 p!821)) (and b!84803 (= lambda!10627 p!821)) (and b!84747 (= lambda!10610 p!821)) (and b!84725 (= lambda!10607 p!821)) (and b!84768 (= lambda!10625 p!821)) (and b!84768 (= lambda!10626 p!821)) (and b!84698 (= lambda!10597 p!821)) (and b!84747 (= lambda!10611 p!821)) (and b!84768 (= lambda!10624 p!821)) b_lambda!16671)))

(declare-fun bs!40894 () Bool)

(declare-fun d!57045 () Bool)

(assert (= bs!40894 (and d!57045 b!84768)))

(assert (=> bs!40894 (= (dynLambda!1003 lambda!10626 (h!1021 ls!77)) (> (h!1021 ls!77) (h!1021 more!2)))))

(assert (=> (and b!84768 (= lambda!10626 p!821) b!84794) d!57045))

(declare-fun bs!40895 () Bool)

(declare-fun d!57047 () Bool)

(assert (= bs!40895 (and d!57047 b!84768)))

(assert (=> bs!40895 (= (dynLambda!1003 lambda!10625 (h!1021 ls!77)) (= (h!1021 ls!77) (h!1021 more!2)))))

(assert (=> (and b!84768 (= lambda!10625 p!821) b!84794) d!57047))

(declare-fun bs!40896 () Bool)

(declare-fun d!57049 () Bool)

(assert (= bs!40896 (and d!57049 b!84725)))

(assert (=> bs!40896 (= (dynLambda!1003 lambda!10608 (h!1021 ls!77)) (> (h!1021 ls!77) (h!1021 less!2)))))

(assert (=> (and b!84725 (= lambda!10608 p!821) b!84794) d!57049))

(declare-fun bs!40897 () Bool)

(declare-fun d!57051 () Bool)

(assert (= bs!40897 (and d!57051 b!84803)))

(assert (=> bs!40897 (= (dynLambda!1003 lambda!10629 (h!1021 ls!77)) (> (h!1021 ls!77) (h!1021 less!2)))))

(assert (=> (and b!84803 (= lambda!10629 p!821) b!84794) d!57051))

(declare-fun bs!40898 () Bool)

(declare-fun d!57053 () Bool)

(assert (= bs!40898 (and d!57053 b!84747)))

(assert (=> bs!40898 (= (dynLambda!1003 lambda!10610 (h!1021 ls!77)) (= (h!1021 ls!77) (h!1021 more!2)))))

(assert (=> (and b!84747 (= lambda!10610 p!821) b!84794) d!57053))

(declare-fun bs!40899 () Bool)

(declare-fun d!57055 () Bool)

(assert (= bs!40899 (and d!57055 b!84725)))

(assert (=> bs!40899 (= (dynLambda!1003 lambda!10607 (h!1021 ls!77)) (= (h!1021 ls!77) (h!1021 less!2)))))

(assert (=> (and b!84725 (= lambda!10607 p!821) b!84794) d!57055))

(declare-fun bs!40900 () Bool)

(declare-fun d!57057 () Bool)

(assert (= bs!40900 (and d!57057 b!84698)))

(assert (=> bs!40900 (= (dynLambda!1003 lambda!10597 (h!1021 ls!77)) (< (h!1021 ls!77) (h!1021 ls!77)))))

(assert (=> (and b!84698 (= lambda!10597 p!821) b!84794) d!57057))

(declare-fun bs!40901 () Bool)

(declare-fun d!57059 () Bool)

(assert (= bs!40901 (and d!57059 b!84690)))

(assert (=> bs!40901 (= (dynLambda!1003 lambda!10599 (h!1021 ls!77)) (> (h!1021 ls!77) (h!1021 ls!77)))))

(assert (=> (and b!84690 (= lambda!10599 p!821) b!84794) d!57059))

(declare-fun bs!40902 () Bool)

(declare-fun d!57061 () Bool)

(assert (= bs!40902 (and d!57061 b!84725)))

(assert (=> bs!40902 (= (dynLambda!1003 lambda!10606 (h!1021 ls!77)) (< (h!1021 ls!77) (h!1021 less!2)))))

(assert (=> (and b!84725 (= lambda!10606 p!821) b!84794) d!57061))

(declare-fun bs!40903 () Bool)

(declare-fun d!57063 () Bool)

(assert (= bs!40903 (and d!57063 b!84686)))

(assert (=> bs!40903 (= (dynLambda!1003 lambda!10598 (h!1021 ls!77)) (= (h!1021 ls!77) (h!1021 ls!77)))))

(assert (=> (and b!84686 (= lambda!10598 p!821) b!84794) d!57063))

(declare-fun bs!40904 () Bool)

(declare-fun d!57065 () Bool)

(assert (= bs!40904 (and d!57065 b!84747)))

(assert (=> bs!40904 (= (dynLambda!1003 lambda!10611 (h!1021 ls!77)) (> (h!1021 ls!77) (h!1021 more!2)))))

(assert (=> (and b!84747 (= lambda!10611 p!821) b!84794) d!57065))

(declare-fun bs!40905 () Bool)

(declare-fun d!57067 () Bool)

(assert (= bs!40905 (and d!57067 b!84747)))

(assert (=> bs!40905 (= (dynLambda!1003 lambda!10609 (h!1021 ls!77)) (< (h!1021 ls!77) (h!1021 more!2)))))

(assert (=> (and b!84747 (= lambda!10609 p!821) b!84794) d!57067))

(declare-fun bs!40906 () Bool)

(declare-fun d!57069 () Bool)

(assert (= bs!40906 (and d!57069 b!84768)))

(assert (=> bs!40906 (= (dynLambda!1003 lambda!10624 (h!1021 ls!77)) (< (h!1021 ls!77) (h!1021 more!2)))))

(assert (=> (and b!84768 (= lambda!10624 p!821) b!84794) d!57069))

(declare-fun bs!40907 () Bool)

(declare-fun d!57071 () Bool)

(assert (= bs!40907 (and d!57071 b!84803)))

(assert (=> bs!40907 (= (dynLambda!1003 lambda!10627 (h!1021 ls!77)) (< (h!1021 ls!77) (h!1021 less!2)))))

(assert (=> (and b!84803 (= lambda!10627 p!821) b!84794) d!57071))

(declare-fun bs!40908 () Bool)

(declare-fun d!57073 () Bool)

(assert (= bs!40908 (and d!57073 b!84803)))

(assert (=> bs!40908 (= (dynLambda!1003 lambda!10628 (h!1021 ls!77)) (= (h!1021 ls!77) (h!1021 less!2)))))

(assert (=> (and b!84803 (= lambda!10628 p!821) b!84794) d!57073))

(declare-fun b_lambda!16673 () Bool)

(assert (= b_lambda!16651 (or (and start!11074 b_free!7389) (and b!84768 (= lambda!10624 p!836)) (and b!84803 (= lambda!10628 p!836)) (and b!84725 (= lambda!10608 p!836)) (and start!11074 b_free!7391 (= p!821 p!836)) (and b!84747 (= lambda!10611 p!836)) (and b!84768 (= lambda!10626 p!836)) (and b!84803 (= lambda!10627 p!836)) (and b!84690 (= lambda!10599 p!836)) (and b!84803 (= lambda!10629 p!836)) (and b!84747 (= lambda!10609 p!836)) (and b!84747 (= lambda!10610 p!836)) (and b!84686 (= lambda!10598 p!836)) (and b!84768 (= lambda!10625 p!836)) (and b!84725 (= lambda!10606 p!836)) (and b!84698 (= lambda!10597 p!836)) (and b!84725 (= lambda!10607 p!836)) b_lambda!16673)))

(declare-fun bs!40909 () Bool)

(declare-fun d!57075 () Bool)

(assert (= bs!40909 (and d!57075 b!84690)))

(assert (=> bs!40909 (= (dynLambda!1003 lambda!10599 (h!1021 l1!438)) (> (h!1021 l1!438) (h!1021 ls!77)))))

(assert (=> (and b!84690 (= lambda!10599 p!836) b!84742) d!57075))

(declare-fun bs!40910 () Bool)

(declare-fun d!57077 () Bool)

(assert (= bs!40910 (and d!57077 b!84725)))

(assert (=> bs!40910 (= (dynLambda!1003 lambda!10608 (h!1021 l1!438)) (> (h!1021 l1!438) (h!1021 less!2)))))

(assert (=> (and b!84725 (= lambda!10608 p!836) b!84742) d!57077))

(declare-fun bs!40911 () Bool)

(declare-fun d!57079 () Bool)

(assert (= bs!40911 (and d!57079 b!84747)))

(assert (=> bs!40911 (= (dynLambda!1003 lambda!10609 (h!1021 l1!438)) (< (h!1021 l1!438) (h!1021 more!2)))))

(assert (=> (and b!84747 (= lambda!10609 p!836) b!84742) d!57079))

(declare-fun bs!40912 () Bool)

(declare-fun d!57081 () Bool)

(assert (= bs!40912 (and d!57081 b!84747)))

(assert (=> bs!40912 (= (dynLambda!1003 lambda!10611 (h!1021 l1!438)) (> (h!1021 l1!438) (h!1021 more!2)))))

(assert (=> (and b!84747 (= lambda!10611 p!836) b!84742) d!57081))

(declare-fun bs!40913 () Bool)

(declare-fun d!57083 () Bool)

(assert (= bs!40913 (and d!57083 b!84768)))

(assert (=> bs!40913 (= (dynLambda!1003 lambda!10624 (h!1021 l1!438)) (< (h!1021 l1!438) (h!1021 more!2)))))

(assert (=> (and b!84768 (= lambda!10624 p!836) b!84742) d!57083))

(declare-fun bs!40914 () Bool)

(declare-fun d!57085 () Bool)

(assert (= bs!40914 (and d!57085 b!84803)))

(assert (=> bs!40914 (= (dynLambda!1003 lambda!10627 (h!1021 l1!438)) (< (h!1021 l1!438) (h!1021 less!2)))))

(assert (=> (and b!84803 (= lambda!10627 p!836) b!84742) d!57085))

(declare-fun bs!40915 () Bool)

(declare-fun d!57087 () Bool)

(assert (= bs!40915 (and d!57087 b!84747)))

(assert (=> bs!40915 (= (dynLambda!1003 lambda!10610 (h!1021 l1!438)) (= (h!1021 l1!438) (h!1021 more!2)))))

(assert (=> (and b!84747 (= lambda!10610 p!836) b!84742) d!57087))

(declare-fun bs!40916 () Bool)

(declare-fun d!57089 () Bool)

(assert (= bs!40916 (and d!57089 b!84768)))

(assert (=> bs!40916 (= (dynLambda!1003 lambda!10625 (h!1021 l1!438)) (= (h!1021 l1!438) (h!1021 more!2)))))

(assert (=> (and b!84768 (= lambda!10625 p!836) b!84742) d!57089))

(declare-fun bs!40917 () Bool)

(declare-fun d!57091 () Bool)

(assert (= bs!40917 (and d!57091 b!84725)))

(assert (=> bs!40917 (= (dynLambda!1003 lambda!10606 (h!1021 l1!438)) (< (h!1021 l1!438) (h!1021 less!2)))))

(assert (=> (and b!84725 (= lambda!10606 p!836) b!84742) d!57091))

(declare-fun bs!40918 () Bool)

(declare-fun d!57093 () Bool)

(assert (= bs!40918 (and d!57093 b!84725)))

(assert (=> bs!40918 (= (dynLambda!1003 lambda!10607 (h!1021 l1!438)) (= (h!1021 l1!438) (h!1021 less!2)))))

(assert (=> (and b!84725 (= lambda!10607 p!836) b!84742) d!57093))

(declare-fun bs!40919 () Bool)

(declare-fun d!57095 () Bool)

(assert (= bs!40919 (and d!57095 b!84698)))

(assert (=> bs!40919 (= (dynLambda!1003 lambda!10597 (h!1021 l1!438)) (< (h!1021 l1!438) (h!1021 ls!77)))))

(assert (=> (and b!84698 (= lambda!10597 p!836) b!84742) d!57095))

(declare-fun bs!40920 () Bool)

(declare-fun d!57097 () Bool)

(assert (= bs!40920 (and d!57097 b!84686)))

(assert (=> bs!40920 (= (dynLambda!1003 lambda!10598 (h!1021 l1!438)) (= (h!1021 l1!438) (h!1021 ls!77)))))

(assert (=> (and b!84686 (= lambda!10598 p!836) b!84742) d!57097))

(declare-fun bs!40921 () Bool)

(declare-fun d!57099 () Bool)

(assert (= bs!40921 (and d!57099 b!84768)))

(assert (=> bs!40921 (= (dynLambda!1003 lambda!10626 (h!1021 l1!438)) (> (h!1021 l1!438) (h!1021 more!2)))))

(assert (=> (and b!84768 (= lambda!10626 p!836) b!84742) d!57099))

(declare-fun bs!40922 () Bool)

(declare-fun d!57101 () Bool)

(assert (= bs!40922 (and d!57101 b!84803)))

(assert (=> bs!40922 (= (dynLambda!1003 lambda!10628 (h!1021 l1!438)) (= (h!1021 l1!438) (h!1021 less!2)))))

(assert (=> (and b!84803 (= lambda!10628 p!836) b!84742) d!57101))

(declare-fun bs!40923 () Bool)

(declare-fun d!57103 () Bool)

(assert (= bs!40923 (and d!57103 b!84803)))

(assert (=> bs!40923 (= (dynLambda!1003 lambda!10629 (h!1021 l1!438)) (> (h!1021 l1!438) (h!1021 less!2)))))

(assert (=> (and b!84803 (= lambda!10629 p!836) b!84742) d!57103))

(push 1)

(assert b_and!58995)

(assert (not b!84789))

(assert (not b!84735))

(assert (not b!84711))

(assert (not b!84813))

(assert (not b_next!39511))

(assert (not b!84771))

(assert (not b!84803))

(assert (not b!84772))

(assert (not b_lambda!16671))

(assert (not d!57001))

(assert (not b!84808))

(assert (not b!84806))

(assert (not d!56979))

(assert (not b!84756))

(assert (not b_next!39509))

(assert (not b_lambda!16665))

(assert (not b!84790))

(assert (not b!84755))

(assert (not b!84804))

(assert (not b!84747))

(assert (not b!84736))

(assert (not d!56993))

(assert (not b!84807))

(assert (not b!84757))

(assert (not b!84799))

(assert (not b!84798))

(assert (not b!84814))

(assert (not d!56997))

(assert (not d!56995))

(assert (not b!84768))

(assert (not d!56983))

(assert (not b_lambda!16673))

(assert (not b!84725))

(assert (not b!84713))

(assert (not b!84805))

(assert (not b!84809))

(assert (not b_lambda!16663))

(assert (not b!84795))

(assert b_and!58997)

(assert (not b_lambda!16667))

(assert (not d!57007))

(assert (not d!57003))

(assert (not b!84812))

(assert (not b!84749))

(assert (not b!84769))

(assert (not b!84800))

(assert (not b!84791))

(assert (not b!84770))

(assert (not b!84743))

(assert (not d!57005))

(assert (not d!56991))

(assert (not b_lambda!16669))

(assert (not b!84712))

(assert (not b!84754))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58995)

(assert b_and!58997)

(assert (not b_next!39511))

(assert (not b_next!39509))

(check-sat)

(pop 1)

