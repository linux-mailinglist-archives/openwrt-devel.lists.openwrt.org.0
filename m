Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33FEDC30BD
	for <lists+openwrt-devel@lfdr.de>; Tue,  1 Oct 2019 11:59:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iFynMGJRy+dDt3o7Ip89LtYiYx6loS/CH7AWyh4fWw4=; b=uVvd5n1IxhroY4
	QS90DZOpaVghR8nNbo1O+WVCYg19XbWU0Xy41D0dxv+s2N7aFg8MiEOd/AZ9wB14krV8M2J+cJaUu
	o9708yFu4nO5gh0WNgHDyxylr3ELmk1j/iMD1surV35DPgp13FjDucUzY8Q3e+5K2j1A4RXQlWEf6
	B6Lzc0KF+pn/kYu1C8NaunrB4JYp5jE4AF0D7KTHG5Y31qel67hq3k6xwePS6jpGq8BRmZ4ZFQRU1
	bBJzaVC3rY3oA+dpncmOXmUtmH1SWzMDnrNHuZNtEHu0lkyN47wa/B2MHcy+fGUI3EVgJ1TkIKQRx
	4y9yhdPGD9HGeSwM7bLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFEwT-0002BJ-32; Tue, 01 Oct 2019 09:59:37 +0000
Received: from mail1.bemta23.messagelabs.com ([67.219.246.116])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFEwM-0002At-9z
 for openwrt-devel@lists.openwrt.org; Tue, 01 Oct 2019 09:59:31 +0000
Received: from [67.219.246.196] (using TLSv1.2 with cipher
 DHE-RSA-AES256-GCM-SHA384 (256 bits))
 by server-5.bemta.az-c.us-east-1.aws.symcld.net id BF/68-25447-F73239D5;
 Tue, 01 Oct 2019 09:59:27 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrALMWRWlGSWpSXmKPExsUyLfyHiG698uR
 Yg61LNC0uHX/O7MDosfnsD+YAxijWzLyk/IoE1ozPuwIKJgtV7N7ziK2BcYZAFyMXh5DAHEaJ
 K6cbWCCc/4wSa3efBHI4OdgETCSeXHjECGKLCChL7Fo/iwnEZhYwkrhw8hCYLSxgIPF1Vz8bi
 M0ioCrx699jsF5eAR+JVXd72EFsCQE5iZvnOpm7GDmAFmhKTPxRDREOlri37jbTBEbuBYwMqx
 jNkooy0zNKchMzc3QNDQx0DQ2NdE11jUyN9BKrdJP1Sot1UxOLS3QN9RLLi/WKK3OTc1L08lJ
 LNjECPZ9SwPpnB+PJWW/0DjFKcjApifLmzZwUK8SXlJ9SmZFYnBFfVJqTWnyIUYaDQ0mC95HC
 5FghwaLU9NSKtMwcYBDCpCU4eJREeONA0rzFBYm5xZnpEKlTjLocm+cuXcQsxJKXn5cqJc77D
 KRIAKQoozQPbgQsIi4xykoJ8zIyMDAI8RSkFuVmlqDKv2IU52BUEubtBZnCk5lXArfpFdARTE
 BHOKT2gxxRkoiQkmpgar1/OiFdssSLsyCbV/pGRVqw88Ku4m0Z5zdE37raeWF1qOsNx61WK2O
 umefui+l+6/ylOor/EON5idk/pCyWb7cSXWJ8SC7yj5fg6a3v1RXrrknwTDn7h5FPYoWc+EVN
 949sS/R2npJYmuyxj+3Rky3fz5gVLHBawfzx/t8pZWf3TrtfdLxyNptiu5TFscVFC0IPMS34v
 3P+k+kmBbt4393f5G2nVZ2VmVrwf5156wPrTXEm7ou71K1i6vxCJz0RfCNyoOevedm3OyZ3Lq
 znXXPg29bfS2efVGLblpyk+KEm4KvPzYrCUv7FHWX/n+Rtj3kY5u6XbVY4JafAg0nvOU/VS7c
 l315Mv9n2/sO+fCWW4oxEQy3mouJEANZyNhADAwAA
X-Env-Sender: mutsugi@allied-telesis.co.jp
X-Msg-Ref: server-9.tower-404.messagelabs.com!1569923966!169562!1
X-Originating-IP: [150.87.248.20]
X-SYMC-ESS-Client-Auth: outbound-route-from=pass
X-StarScan-Received: 
X-StarScan-Version: 9.43.12; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 7113 invoked from network); 1 Oct 2019 09:59:27 -0000
Received: from abricot-inet.allied-telesis.co.jp (HELO TKY-DS01.at.lc)
 (150.87.248.20)
 by server-9.tower-404.messagelabs.com with SMTP; 1 Oct 2019 09:59:27 -0000
Received: from swim-manx.rd.allied-telesis.co.jp ([150.87.21.50]) by
 TKY-DS01.at.lc with Microsoft SMTPSVC(8.0.9200.16384); 
 Tue, 1 Oct 2019 18:59:26 +0900
Received: from mutsugi-qsdk-dev.rd.allied-telesis.co.jp by
 swim-manx.rd.allied-telesis.co.jp
 (AlliedTelesis SMTPRS 1.3 pl 1 ++E6B86F8C687C6288D9B5559052954DC9) with ESMTP
 id <B0004557306@swim-manx.rd.allied-telesis.co.jp>; 
 Tue, 1 Oct 2019 18:59:25 +0900
From: Masafumi UTSUGI <mutsugi@allied-telesis.co.jp>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  1 Oct 2019 18:59:18 +0900
Message-Id: <1569923958-99413-1-git-send-email-mutsugi@allied-telesis.co.jp>
X-Mailer: git-send-email 2.7.4
X-OriginalArrivalTime: 01 Oct 2019 09:59:26.0444 (UTC)
 FILETIME=[E8AFD2C0:01D5783E]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_025930_411988_BF8CFD32 
X-CRM114-Status: UNSURE (   9.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [67.219.246.116 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] ipq40xx: essedma: Fix dead lock
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: Masafumi UTSUGI <mutsugi@allied-telesis.co.jp>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

edma_read_append_stats() is called from kernel timer
(Bottom half context) but it used spin_lock() to take a lock.
Using ethtool command rarely causes deadlock because of this.
Change lock function to spin_lock_bh() to avoid this.

Signed-off-by: Masafumi UTSUGI <mutsugi@allied-telesis.co.jp>
---
 .../patches-4.14/715-essedma-fix-dead-lock.patch     | 20 ++++++++++++++++++++
 .../patches-4.19/715-essedma-fix-dead-lock.patch     | 20 ++++++++++++++++++++
 2 files changed, 40 insertions(+)
 create mode 100644 target/linux/ipq40xx/patches-4.14/715-essedma-fix-dead-lock.patch
 create mode 100644 target/linux/ipq40xx/patches-4.19/715-essedma-fix-dead-lock.patch

diff --git a/target/linux/ipq40xx/patches-4.14/715-essedma-fix-dead-lock.patch b/target/linux/ipq40xx/patches-4.14/715-essedma-fix-dead-lock.patch
new file mode 100644
index 0000000..1c44924
--- /dev/null
+++ b/target/linux/ipq40xx/patches-4.14/715-essedma-fix-dead-lock.patch
@@ -0,0 +1,20 @@
+--- a/drivers/net/ethernet/qualcomm/essedma/edma_axi.c
++++ b/drivers/net/ethernet/qualcomm/essedma/edma_axi.c
+@@ -230,7 +230,7 @@
+ 	int i;
+ 	u32 stat;
+ 
+-	spin_lock(&edma_cinfo->stats_lock);
++	spin_lock_bh(&edma_cinfo->stats_lock);
+ 	p = (uint32_t *)&(edma_cinfo->edma_ethstats);
+ 
+ 	for (i = 0; i < EDMA_MAX_TRANSMIT_QUEUE; i++) {
+@@ -257,7 +257,7 @@
+ 		p++;
+ 	}
+ 
+-	spin_unlock(&edma_cinfo->stats_lock);
++	spin_unlock_bh(&edma_cinfo->stats_lock);
+ }
+ 
+ static void edma_statistics_timer(unsigned long data)
diff --git a/target/linux/ipq40xx/patches-4.19/715-essedma-fix-dead-lock.patch b/target/linux/ipq40xx/patches-4.19/715-essedma-fix-dead-lock.patch
new file mode 100644
index 0000000..1c44924
--- /dev/null
+++ b/target/linux/ipq40xx/patches-4.19/715-essedma-fix-dead-lock.patch
@@ -0,0 +1,20 @@
+--- a/drivers/net/ethernet/qualcomm/essedma/edma_axi.c
++++ b/drivers/net/ethernet/qualcomm/essedma/edma_axi.c
+@@ -230,7 +230,7 @@
+ 	int i;
+ 	u32 stat;
+ 
+-	spin_lock(&edma_cinfo->stats_lock);
++	spin_lock_bh(&edma_cinfo->stats_lock);
+ 	p = (uint32_t *)&(edma_cinfo->edma_ethstats);
+ 
+ 	for (i = 0; i < EDMA_MAX_TRANSMIT_QUEUE; i++) {
+@@ -257,7 +257,7 @@
+ 		p++;
+ 	}
+ 
+-	spin_unlock(&edma_cinfo->stats_lock);
++	spin_unlock_bh(&edma_cinfo->stats_lock);
+ }
+ 
+ static void edma_statistics_timer(unsigned long data)
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
