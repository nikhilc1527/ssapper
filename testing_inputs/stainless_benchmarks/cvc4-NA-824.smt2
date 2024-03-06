; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6200 () Bool)

(assert start!6200)

(declare-fun b!45973 () Bool)

(declare-fun b_free!5049 () Bool)

(declare-fun b_next!23657 () Bool)

(assert (=> b!45973 (= b_free!5049 (not b_next!23657))))

(declare-fun tp!11662 () Bool)

(declare-fun b_and!34797 () Bool)

(assert (=> b!45973 (= tp!11662 b_and!34797)))

(declare-fun b_free!5051 () Bool)

(declare-fun b_next!23659 () Bool)

(assert (=> b!45973 (= b_free!5051 (not b_next!23659))))

(declare-fun tp!11670 () Bool)

(declare-fun b_and!34799 () Bool)

(assert (=> b!45973 (= tp!11670 b_and!34799)))

(declare-fun b_free!5053 () Bool)

(declare-fun b_next!23661 () Bool)

(assert (=> b!45973 (= b_free!5053 (not b_next!23661))))

(declare-fun tp!11663 () Bool)

(declare-fun b_and!34801 () Bool)

(assert (=> b!45973 (= tp!11663 b_and!34801)))

(declare-fun b!45977 () Bool)

(declare-fun b_free!5055 () Bool)

(declare-fun b_next!23663 () Bool)

(assert (=> b!45977 (= b_free!5055 (not b_next!23663))))

(declare-fun tp!11669 () Bool)

(declare-fun b_and!34803 () Bool)

(assert (=> b!45977 (= tp!11669 b_and!34803)))

(declare-fun b_free!5057 () Bool)

(declare-fun b_next!23665 () Bool)

(assert (=> b!45977 (= b_free!5057 (not b_next!23665))))

(declare-fun tp!11664 () Bool)

(declare-fun b_and!34805 () Bool)

(assert (=> b!45977 (= tp!11664 b_and!34805)))

(declare-fun b_free!5059 () Bool)

(declare-fun b_next!23667 () Bool)

(assert (=> b!45977 (= b_free!5059 (not b_next!23667))))

(declare-fun tp!11671 () Bool)

(declare-fun b_and!34807 () Bool)

(assert (=> b!45977 (= tp!11671 b_and!34807)))

(declare-fun b!45982 () Bool)

(declare-fun b_free!5061 () Bool)

(declare-fun b_next!23669 () Bool)

(assert (=> b!45982 (= b_free!5061 (not b_next!23669))))

(declare-fun tp!11668 () Bool)

(declare-fun b_and!34809 () Bool)

(assert (=> b!45982 (= tp!11668 b_and!34809)))

(declare-fun b_free!5063 () Bool)

(declare-fun b_next!23671 () Bool)

(assert (=> b!45982 (= b_free!5063 (not b_next!23671))))

(declare-fun tp!11666 () Bool)

(declare-fun b_and!34811 () Bool)

(assert (=> b!45982 (= tp!11666 b_and!34811)))

(declare-fun b_free!5065 () Bool)

(declare-fun b_next!23673 () Bool)

(assert (=> b!45982 (= b_free!5065 (not b_next!23673))))

(declare-fun tp!11659 () Bool)

(declare-fun b_and!34813 () Bool)

(assert (=> b!45982 (= tp!11659 b_and!34813)))

(declare-fun b!45971 () Bool)

(declare-fun b_free!5067 () Bool)

(declare-fun b_next!23675 () Bool)

(assert (=> b!45971 (= b_free!5067 (not b_next!23675))))

(declare-fun tp!11667 () Bool)

(declare-fun b_and!34815 () Bool)

(assert (=> b!45971 (= tp!11667 b_and!34815)))

(declare-fun b_free!5069 () Bool)

(declare-fun b_next!23677 () Bool)

(assert (=> b!45971 (= b_free!5069 (not b_next!23677))))

(declare-fun tp!11665 () Bool)

(declare-fun b_and!34817 () Bool)

(assert (=> b!45971 (= tp!11665 b_and!34817)))

(declare-fun b_free!5071 () Bool)

(declare-fun b_next!23679 () Bool)

(assert (=> b!45971 (= b_free!5071 (not b_next!23679))))

(declare-fun tp!11660 () Bool)

(declare-fun b_and!34819 () Bool)

(assert (=> b!45971 (= tp!11660 b_and!34819)))

(declare-fun b!45981 () Bool)

(declare-fun b_free!5073 () Bool)

(declare-fun b_next!23681 () Bool)

(assert (=> b!45981 (= b_free!5073 (not b_next!23681))))

(declare-fun tp!11657 () Bool)

(declare-fun b_and!34821 () Bool)

(assert (=> b!45981 (= tp!11657 b_and!34821)))

(declare-fun b_free!5075 () Bool)

(declare-fun b_next!23683 () Bool)

(assert (=> b!45981 (= b_free!5075 (not b_next!23683))))

(declare-fun tp!11658 () Bool)

(declare-fun b_and!34823 () Bool)

(assert (=> b!45981 (= tp!11658 b_and!34823)))

(declare-fun b_free!5077 () Bool)

(declare-fun b_next!23685 () Bool)

(assert (=> b!45981 (= b_free!5077 (not b_next!23685))))

(declare-fun tp!11661 () Bool)

(declare-fun b_and!34825 () Bool)

(assert (=> b!45981 (= tp!11661 b_and!34825)))

(declare-fun b!45978 () Bool)

(assert (=> b!45978 true))

(assert (=> b!45978 true))

(assert (=> b!45978 true))

(declare-fun b_next!23687 () Bool)

(declare-fun lambda!6591 () Int)

(declare-datatypes () ((Nat!185 (Zero!169) (Succ!166 (n!1321 Nat!185)))))

(declare-datatypes () ((RAEqEvidence!288 (RAEqEvidence!289 (x!17036 Int) (y!1483 Int) (evidence!596 Int)))))

(declare-fun x$53!28 () RAEqEvidence!288)

(assert (=> b!45971 (= b_next!23675 (or (and b!45978 (= lambda!6591 (x!17036 x$53!28))) b_next!23687))))

(declare-fun b_next!23689 () Bool)

(declare-datatypes () ((Unit!583 (Unit!584))))

(declare-datatypes () ((RAEqEvidence!290 (RAEqEvidence!291 (x!17037 Int) (y!1484 Int) (evidence!597 Int)))))

(declare-fun x$54!34 () RAEqEvidence!290)

(assert (=> b!45981 (= b_next!23681 (or (and b!45978 (= lambda!6591 (x!17037 x$54!34))) b_next!23689))))

(declare-fun b_next!23691 () Bool)

(declare-fun thiss!5092 () RAEqEvidence!290)

(assert (=> b!45982 (= b_next!23669 (or (and b!45978 (= lambda!6591 (x!17037 thiss!5092))) b_next!23691))))

(declare-fun x$56!25 () RAEqEvidence!290)

(declare-fun b_next!23693 () Bool)

(assert (=> b!45973 (= b_next!23659 (or (and b!45978 (= lambda!6591 (y!1484 x$56!25))) b_next!23693))))

(declare-fun x$55!33 () RAEqEvidence!290)

(declare-fun b_next!23695 () Bool)

(assert (=> b!45977 (= b_next!23663 (or (and b!45978 (= lambda!6591 (x!17037 x$55!33))) b_next!23695))))

(declare-fun b_next!23697 () Bool)

(assert (=> b!45971 (= b_next!23677 (or (and b!45978 (= lambda!6591 (y!1483 x$53!28))) b_next!23697))))

(declare-fun b_next!23699 () Bool)

(assert (=> b!45981 (= b_next!23683 (or (and b!45978 (= lambda!6591 (y!1484 x$54!34))) b_next!23699))))

(declare-fun b_next!23701 () Bool)

(assert (=> b!45973 (= b_next!23657 (or (and b!45978 (= lambda!6591 (x!17037 x$56!25))) b_next!23701))))

(declare-fun b_next!23703 () Bool)

(assert (=> b!45977 (= b_next!23665 (or (and b!45978 (= lambda!6591 (y!1484 x$55!33))) b_next!23703))))

(declare-fun b_next!23705 () Bool)

(assert (=> b!45982 (= b_next!23671 (or (and b!45978 (= lambda!6591 (y!1484 thiss!5092))) b_next!23705))))

(assert (=> b!45978 true))

(declare-fun b_next!23707 () Bool)

(declare-fun lambda!6592 () Int)

(assert (=> b!45973 (= b_next!23661 (or (and b!45978 (= lambda!6592 (evidence!597 x$56!25))) b_next!23707))))

(declare-fun b_next!23709 () Bool)

(assert (=> b!45977 (= b_next!23667 (or (and b!45978 (= lambda!6592 (evidence!597 x$55!33))) b_next!23709))))

(declare-fun b_next!23711 () Bool)

(assert (=> b!45982 (= b_next!23673 (or (and b!45978 (= lambda!6592 (evidence!597 thiss!5092))) b_next!23711))))

(declare-fun b_next!23713 () Bool)

(assert (=> b!45981 (= b_next!23685 (or (and b!45978 (= lambda!6592 (evidence!597 x$54!34))) b_next!23713))))

(declare-fun bs!18099 () Bool)

(declare-fun b!45983 () Bool)

(assert (= bs!18099 (and b!45983 b!45978)))

(declare-fun lambda!6593 () Int)

(assert (=> bs!18099 (not (= lambda!6593 lambda!6591))))

(assert (=> b!45983 true))

(assert (=> b!45983 true))

(assert (=> b!45983 true))

(declare-fun b_next!23715 () Bool)

(assert (=> b!45971 (= b_next!23687 (or (and b!45983 (= lambda!6593 (x!17036 x$53!28))) b_next!23715))))

(declare-fun b_next!23717 () Bool)

(assert (=> b!45981 (= b_next!23689 (or (and b!45983 (= lambda!6593 (x!17037 x$54!34))) b_next!23717))))

(declare-fun b_next!23719 () Bool)

(assert (=> b!45982 (= b_next!23691 (or (and b!45983 (= lambda!6593 (x!17037 thiss!5092))) b_next!23719))))

(declare-fun b_next!23721 () Bool)

(assert (=> b!45973 (= b_next!23693 (or (and b!45983 (= lambda!6593 (y!1484 x$56!25))) b_next!23721))))

(declare-fun b_next!23723 () Bool)

(assert (=> b!45977 (= b_next!23695 (or (and b!45983 (= lambda!6593 (x!17037 x$55!33))) b_next!23723))))

(declare-fun b_next!23725 () Bool)

(assert (=> b!45971 (= b_next!23697 (or (and b!45983 (= lambda!6593 (y!1483 x$53!28))) b_next!23725))))

(declare-fun b_next!23727 () Bool)

(assert (=> b!45981 (= b_next!23699 (or (and b!45983 (= lambda!6593 (y!1484 x$54!34))) b_next!23727))))

(declare-fun b_next!23729 () Bool)

(assert (=> b!45973 (= b_next!23701 (or (and b!45983 (= lambda!6593 (x!17037 x$56!25))) b_next!23729))))

(declare-fun b_next!23731 () Bool)

(assert (=> b!45977 (= b_next!23703 (or (and b!45983 (= lambda!6593 (y!1484 x$55!33))) b_next!23731))))

(declare-fun b_next!23733 () Bool)

(assert (=> b!45982 (= b_next!23705 (or (and b!45983 (= lambda!6593 (y!1484 thiss!5092))) b_next!23733))))

(declare-fun lambda!6594 () Int)

(assert (=> bs!18099 (not (= lambda!6594 lambda!6592))))

(assert (=> b!45983 true))

(assert (=> b!45983 true))

(declare-fun b_next!23735 () Bool)

(assert (=> b!45973 (= b_next!23707 (or (and b!45983 (= lambda!6594 (evidence!597 x$56!25))) b_next!23735))))

(declare-fun b_next!23737 () Bool)

(assert (=> b!45977 (= b_next!23709 (or (and b!45983 (= lambda!6594 (evidence!597 x$55!33))) b_next!23737))))

(declare-fun b_next!23739 () Bool)

(assert (=> b!45982 (= b_next!23711 (or (and b!45983 (= lambda!6594 (evidence!597 thiss!5092))) b_next!23739))))

(declare-fun b_next!23741 () Bool)

(assert (=> b!45981 (= b_next!23713 (or (and b!45983 (= lambda!6594 (evidence!597 x$54!34))) b_next!23741))))

(declare-fun bs!18100 () Bool)

(declare-fun b!45979 () Bool)

(assert (= bs!18100 (and b!45979 b!45978)))

(declare-fun lambda!6595 () Int)

(assert (=> bs!18100 (not (= lambda!6595 lambda!6591))))

(declare-fun bs!18101 () Bool)

(assert (= bs!18101 (and b!45979 b!45983)))

(assert (=> bs!18101 (not (= lambda!6595 lambda!6593))))

(assert (=> b!45979 true))

(assert (=> b!45979 true))

(assert (=> b!45979 true))

(declare-fun b_next!23743 () Bool)

(assert (=> b!45971 (= b_next!23715 (or (and b!45979 (= lambda!6595 (x!17036 x$53!28))) b_next!23743))))

(declare-fun b_next!23745 () Bool)

(assert (=> b!45981 (= b_next!23717 (or (and b!45979 (= lambda!6595 (x!17037 x$54!34))) b_next!23745))))

(declare-fun b_next!23747 () Bool)

(assert (=> b!45982 (= b_next!23719 (or (and b!45979 (= lambda!6595 (x!17037 thiss!5092))) b_next!23747))))

(declare-fun b_next!23749 () Bool)

(assert (=> b!45973 (= b_next!23721 (or (and b!45979 (= lambda!6595 (y!1484 x$56!25))) b_next!23749))))

(declare-fun b_next!23751 () Bool)

(assert (=> b!45977 (= b_next!23723 (or (and b!45979 (= lambda!6595 (x!17037 x$55!33))) b_next!23751))))

(declare-fun b_next!23753 () Bool)

(assert (=> b!45971 (= b_next!23725 (or (and b!45979 (= lambda!6595 (y!1483 x$53!28))) b_next!23753))))

(declare-fun b_next!23755 () Bool)

(assert (=> b!45981 (= b_next!23727 (or (and b!45979 (= lambda!6595 (y!1484 x$54!34))) b_next!23755))))

(declare-fun b_next!23757 () Bool)

(assert (=> b!45973 (= b_next!23729 (or (and b!45979 (= lambda!6595 (x!17037 x$56!25))) b_next!23757))))

(declare-fun b_next!23759 () Bool)

(assert (=> b!45977 (= b_next!23731 (or (and b!45979 (= lambda!6595 (y!1484 x$55!33))) b_next!23759))))

(declare-fun b_next!23761 () Bool)

(assert (=> b!45982 (= b_next!23733 (or (and b!45979 (= lambda!6595 (y!1484 thiss!5092))) b_next!23761))))

(declare-fun lambda!6596 () Int)

(assert (=> bs!18100 (not (= lambda!6596 lambda!6592))))

(assert (=> bs!18101 (not (= lambda!6596 lambda!6594))))

(assert (=> b!45979 true))

(assert (=> b!45979 true))

(declare-fun b_next!23763 () Bool)

(assert (=> b!45973 (= b_next!23735 (or (and b!45979 (= lambda!6596 (evidence!597 x$56!25))) b_next!23763))))

(declare-fun b_next!23765 () Bool)

(assert (=> b!45977 (= b_next!23737 (or (and b!45979 (= lambda!6596 (evidence!597 x$55!33))) b_next!23765))))

(declare-fun b_next!23767 () Bool)

(assert (=> b!45982 (= b_next!23739 (or (and b!45979 (= lambda!6596 (evidence!597 thiss!5092))) b_next!23767))))

(declare-fun b_next!23769 () Bool)

(assert (=> b!45981 (= b_next!23741 (or (and b!45979 (= lambda!6596 (evidence!597 x$54!34))) b_next!23769))))

(declare-fun bs!18102 () Bool)

(declare-fun b!45976 () Bool)

(assert (= bs!18102 (and b!45976 b!45978)))

(declare-fun lambda!6597 () Int)

(assert (=> bs!18102 (not (= lambda!6597 lambda!6591))))

(declare-fun bs!18103 () Bool)

(assert (= bs!18103 (and b!45976 b!45983)))

(assert (=> bs!18103 (not (= lambda!6597 lambda!6593))))

(declare-fun bs!18104 () Bool)

(assert (= bs!18104 (and b!45976 b!45979)))

(assert (=> bs!18104 (not (= lambda!6597 lambda!6595))))

(assert (=> b!45976 true))

(assert (=> b!45976 true))

(assert (=> b!45976 true))

(declare-fun b_next!23771 () Bool)

(assert (=> b!45971 (= b_next!23743 (or (and b!45976 (= lambda!6597 (x!17036 x$53!28))) b_next!23771))))

(declare-fun b_next!23773 () Bool)

(assert (=> b!45981 (= b_next!23745 (or (and b!45976 (= lambda!6597 (x!17037 x$54!34))) b_next!23773))))

(declare-fun b_next!23775 () Bool)

(assert (=> b!45982 (= b_next!23747 (or (and b!45976 (= lambda!6597 (x!17037 thiss!5092))) b_next!23775))))

(declare-fun b_next!23777 () Bool)

(assert (=> b!45973 (= b_next!23749 (or (and b!45976 (= lambda!6597 (y!1484 x$56!25))) b_next!23777))))

(declare-fun b_next!23779 () Bool)

(assert (=> b!45977 (= b_next!23751 (or (and b!45976 (= lambda!6597 (x!17037 x$55!33))) b_next!23779))))

(declare-fun b_next!23781 () Bool)

(assert (=> b!45971 (= b_next!23753 (or (and b!45976 (= lambda!6597 (y!1483 x$53!28))) b_next!23781))))

(declare-fun b_next!23783 () Bool)

(assert (=> b!45981 (= b_next!23755 (or (and b!45976 (= lambda!6597 (y!1484 x$54!34))) b_next!23783))))

(declare-fun b_next!23785 () Bool)

(assert (=> b!45973 (= b_next!23757 (or (and b!45976 (= lambda!6597 (x!17037 x$56!25))) b_next!23785))))

(declare-fun b_next!23787 () Bool)

(assert (=> b!45977 (= b_next!23759 (or (and b!45976 (= lambda!6597 (y!1484 x$55!33))) b_next!23787))))

(declare-fun b_next!23789 () Bool)

(assert (=> b!45982 (= b_next!23761 (or (and b!45976 (= lambda!6597 (y!1484 thiss!5092))) b_next!23789))))

(declare-fun m!48819 () Bool)

(assert (=> b!45976 m!48819))

(declare-fun lambda!6598 () Int)

(declare-fun dynLambda!780 (Int) Bool)

(assert (=> (and b!45971 b!45976 (= (dynLambda!780 lambda!6598) (dynLambda!780 (evidence!596 x$53!28)))) (= lambda!6598 (evidence!596 x$53!28))))

(declare-fun b_next!23791 () Bool)

(assert (=> b!45971 (= b_next!23679 (or (and b!45976 (= lambda!6598 (evidence!596 x$53!28))) b_next!23791))))

(declare-fun bs!18105 () Bool)

(declare-fun b!45974 () Bool)

(assert (= bs!18105 (and b!45974 b!45978)))

(declare-fun lambda!6599 () Int)

(declare-fun n3!28 () Nat!185)

(declare-fun n2!101 () Nat!185)

(assert (=> bs!18105 (= (and (= (n!1321 n2!101) n2!101) (= (n!1321 n3!28) n3!28)) (= lambda!6599 lambda!6591))))

(declare-fun bs!18106 () Bool)

(assert (= bs!18106 (and b!45974 b!45983)))

(assert (=> bs!18106 (not (= lambda!6599 lambda!6593))))

(declare-fun bs!18107 () Bool)

(assert (= bs!18107 (and b!45974 b!45979)))

(assert (=> bs!18107 (not (= lambda!6599 lambda!6595))))

(declare-fun bs!18108 () Bool)

(assert (= bs!18108 (and b!45974 b!45976)))

(assert (=> bs!18108 (not (= lambda!6599 lambda!6597))))

(assert (=> b!45974 true))

(assert (=> b!45974 true))

(assert (=> b!45974 true))

(declare-fun b_next!23793 () Bool)

(assert (=> b!45971 (= b_next!23771 (or (and b!45974 (= lambda!6599 (x!17036 x$53!28))) b_next!23793))))

(declare-fun b_next!23795 () Bool)

(assert (=> b!45981 (= b_next!23773 (or (and b!45974 (= lambda!6599 (x!17037 x$54!34))) b_next!23795))))

(declare-fun b_next!23797 () Bool)

(assert (=> b!45982 (= b_next!23775 (or (and b!45974 (= lambda!6599 (x!17037 thiss!5092))) b_next!23797))))

(declare-fun b_next!23799 () Bool)

(assert (=> b!45973 (= b_next!23777 (or (and b!45974 (= lambda!6599 (y!1484 x$56!25))) b_next!23799))))

(declare-fun b_next!23801 () Bool)

(assert (=> b!45977 (= b_next!23779 (or (and b!45974 (= lambda!6599 (x!17037 x$55!33))) b_next!23801))))

(declare-fun b_next!23803 () Bool)

(assert (=> b!45971 (= b_next!23781 (or (and b!45974 (= lambda!6599 (y!1483 x$53!28))) b_next!23803))))

(declare-fun b_next!23805 () Bool)

(assert (=> b!45981 (= b_next!23783 (or (and b!45974 (= lambda!6599 (y!1484 x$54!34))) b_next!23805))))

(declare-fun b_next!23807 () Bool)

(assert (=> b!45973 (= b_next!23785 (or (and b!45974 (= lambda!6599 (x!17037 x$56!25))) b_next!23807))))

(declare-fun b_next!23809 () Bool)

(assert (=> b!45977 (= b_next!23787 (or (and b!45974 (= lambda!6599 (y!1484 x$55!33))) b_next!23809))))

(declare-fun b_next!23811 () Bool)

(assert (=> b!45982 (= b_next!23789 (or (and b!45974 (= lambda!6599 (y!1484 thiss!5092))) b_next!23811))))

(declare-fun lambda!6600 () Int)

(assert (=> bs!18105 (not (= lambda!6600 lambda!6592))))

(assert (=> bs!18106 (not (= lambda!6600 lambda!6594))))

(assert (=> bs!18107 (not (= lambda!6600 lambda!6596))))

(declare-fun dynLambda!781 (Int) Unit!583)

(assert (=> (and b!45973 b!45974 (= (dynLambda!781 lambda!6600) (dynLambda!781 (evidence!597 x$56!25)))) (= lambda!6600 (evidence!597 x$56!25))))

(assert (=> (and b!45977 b!45974 (= (dynLambda!781 lambda!6600) (dynLambda!781 (evidence!597 x$55!33)))) (= lambda!6600 (evidence!597 x$55!33))))

(assert (=> (and b!45982 b!45974 (= (dynLambda!781 lambda!6600) (dynLambda!781 (evidence!597 thiss!5092)))) (= lambda!6600 (evidence!597 thiss!5092))))

(assert (=> (and b!45981 b!45974 (= (dynLambda!781 lambda!6600) (dynLambda!781 (evidence!597 x$54!34)))) (= lambda!6600 (evidence!597 x$54!34))))

(declare-fun b_next!23813 () Bool)

(assert (=> b!45973 (= b_next!23763 (or (and b!45974 (= lambda!6600 (evidence!597 x$56!25))) b_next!23813))))

(declare-fun b_next!23815 () Bool)

(assert (=> b!45977 (= b_next!23765 (or (and b!45974 (= lambda!6600 (evidence!597 x$55!33))) b_next!23815))))

(declare-fun b_next!23817 () Bool)

(assert (=> b!45982 (= b_next!23767 (or (and b!45974 (= lambda!6600 (evidence!597 thiss!5092))) b_next!23817))))

(declare-fun b_next!23819 () Bool)

(assert (=> b!45981 (= b_next!23769 (or (and b!45974 (= lambda!6600 (evidence!597 x$54!34))) b_next!23819))))

(declare-fun e!23850 () Bool)

(assert (=> b!45971 (= e!23850 (and tp!11667 tp!11665 tp!11660))))

(declare-fun b!45972 () Bool)

(declare-fun res!21739 () Bool)

(declare-fun e!23851 () Bool)

(assert (=> b!45972 (=> (not res!21739) (not e!23851))))

(assert (=> b!45972 (= res!21739 (and (is-Succ!166 n2!101) (is-Succ!166 n3!28)))))

(declare-fun e!23852 () Bool)

(assert (=> b!45973 (= e!23852 (and tp!11662 tp!11670 tp!11663))))

(declare-fun res!21734 () Bool)

(assert (=> b!45974 (=> (not res!21734) (not e!23851))))

(assert (=> b!45974 (= res!21734 (= thiss!5092 (RAEqEvidence!291 lambda!6599 lambda!6599 lambda!6600)))))

(declare-fun b!45975 () Bool)

(declare-fun n2!113 () Nat!185)

(declare-fun n3!31 () Nat!185)

(declare-fun >=!2 (Nat!185 Nat!185) Bool)

(assert (=> b!45975 (= e!23851 (not (>=!2 n2!113 n3!31)))))

(declare-fun res!21737 () Bool)

(assert (=> b!45976 (=> (not res!21737) (not e!23851))))

(assert (=> b!45976 (= res!21737 (= x$53!28 (RAEqEvidence!289 lambda!6597 lambda!6597 lambda!6598)))))

(declare-fun e!23853 () Bool)

(assert (=> b!45977 (= e!23853 (and tp!11669 tp!11664 tp!11671))))

(declare-fun res!21733 () Bool)

(assert (=> b!45978 (=> (not res!21733) (not e!23851))))

(assert (=> b!45978 (= res!21733 (= x$56!25 (RAEqEvidence!291 lambda!6591 lambda!6591 lambda!6592)))))

(declare-fun res!21735 () Bool)

(assert (=> start!6200 (=> (not res!21735) (not e!23851))))

(assert (=> start!6200 (= res!21735 (>=!2 n2!101 n3!28))))

(assert (=> start!6200 e!23851))

(assert (=> start!6200 true))

(declare-fun inv!793 (RAEqEvidence!290) Bool)

(assert (=> start!6200 (and (inv!793 x$55!33) e!23853)))

(declare-fun e!23855 () Bool)

(assert (=> start!6200 (and (inv!793 x$54!34) e!23855)))

(declare-fun inv!794 (RAEqEvidence!288) Bool)

(assert (=> start!6200 (and (inv!794 x$53!28) e!23850)))

(assert (=> start!6200 (and (inv!793 x$56!25) e!23852)))

(declare-fun e!23854 () Bool)

(assert (=> start!6200 (and (inv!793 thiss!5092) e!23854)))

(declare-fun res!21740 () Bool)

(assert (=> b!45979 (=> (not res!21740) (not e!23851))))

(assert (=> b!45979 (= res!21740 (= x$54!34 (RAEqEvidence!291 lambda!6595 lambda!6595 lambda!6596)))))

(declare-fun b!45980 () Bool)

(declare-fun res!21736 () Bool)

(assert (=> b!45980 (=> (not res!21736) (not e!23851))))

(declare-fun n1!102 () Nat!185)

(declare-fun n1!90 () Nat!185)

(assert (=> b!45980 (= res!21736 (and (= n1!102 n1!90) (= n2!113 (n!1321 n2!101)) (= n3!31 (n!1321 n3!28))))))

(assert (=> b!45981 (= e!23855 (and tp!11657 tp!11658 tp!11661))))

(assert (=> b!45982 (= e!23854 (and tp!11668 tp!11666 tp!11659))))

(declare-fun res!21738 () Bool)

(assert (=> b!45983 (=> (not res!21738) (not e!23851))))

(assert (=> b!45983 (= res!21738 (= x$55!33 (RAEqEvidence!291 lambda!6593 lambda!6593 lambda!6594)))))

(assert (= (and start!6200 res!21735) b!45972))

(assert (= (and b!45972 res!21739) b!45978))

(assert (= (and b!45978 res!21733) b!45983))

(assert (= (and b!45983 res!21738) b!45979))

(assert (= (and b!45979 res!21740) b!45976))

(assert (= (and b!45976 res!21737) b!45974))

(assert (= (and b!45974 res!21734) b!45980))

(assert (= (and b!45980 res!21736) b!45975))

(assert (= start!6200 b!45977))

(assert (= start!6200 b!45981))

(assert (= start!6200 b!45971))

(assert (= start!6200 b!45973))

(assert (= start!6200 b!45982))

(declare-fun m!48821 () Bool)

(assert (=> b!45975 m!48821))

(declare-fun m!48823 () Bool)

(assert (=> start!6200 m!48823))

(declare-fun m!48825 () Bool)

(assert (=> start!6200 m!48825))

(declare-fun m!48827 () Bool)

(assert (=> start!6200 m!48827))

(declare-fun m!48829 () Bool)

(assert (=> start!6200 m!48829))

(declare-fun m!48831 () Bool)

(assert (=> start!6200 m!48831))

(declare-fun m!48833 () Bool)

(assert (=> start!6200 m!48833))

(push 1)

(assert b_and!34809)

(assert (not b_next!23819))

(assert (not b_next!23809))

(assert b_and!34825)

(assert (not b_next!23793))

(assert (not b_next!23807))

(assert b_and!34817)

(assert (not b_next!23803))

(assert b_and!34807)

(assert (not b_next!23817))

(assert (not b_next!23797))

(assert b_and!34821)

(assert b_and!34811)

(assert b_and!34801)

(assert b_and!34803)

(assert (not b!45976))

(assert (not b_next!23813))

(assert b_and!34815)

(assert (not start!6200))

(assert b_and!34813)

(assert (not b_next!23805))

(assert (not b_next!23815))

(assert (not b_next!23791))

(assert (not b_next!23799))

(assert b_and!34797)

(assert b_and!34823)

(assert b_and!34819)

(assert (not b_next!23795))

(assert b_and!34799)

(assert (not b_next!23801))

(assert (not b_next!23811))

(assert b_and!34805)

(assert (not b!45975))

(check-sat)

(pop 1)

(push 1)

(assert b_and!34809)

(assert (not b_next!23819))

(assert (not b_next!23809))

(assert b_and!34825)

(assert (not b_next!23793))

(assert (not b_next!23807))

(assert b_and!34817)

(assert (not b_next!23803))

(assert b_and!34807)

(assert (not b_next!23817))

(assert (not b_next!23797))

(assert b_and!34821)

(assert b_and!34811)

(assert b_and!34801)

(assert b_and!34803)

(assert (not b_next!23813))

(assert b_and!34815)

(assert b_and!34813)

(assert (not b_next!23805))

(assert (not b_next!23815))

(assert (not b_next!23791))

(assert (not b_next!23799))

(assert b_and!34797)

(assert b_and!34823)

(assert b_and!34819)

(assert (not b_next!23795))

(assert b_and!34799)

(assert (not b_next!23801))

(assert (not b_next!23811))

(assert b_and!34805)

(check-sat)

(pop 1)

