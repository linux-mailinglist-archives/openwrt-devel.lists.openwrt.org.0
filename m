Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 551A6C040F
	for <lists+openwrt-devel@lfdr.de>; Fri, 27 Sep 2019 13:23:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NS1tRrQZAAk2763ZXpeQ5X3Gm9eW/7aSEyM9fCpqyRs=; b=sbHmrJQ0xzeTzU
	ukqqVIO95a/xM5+ng4bHYWeoMKcczhA8AvaSZsNRPhjwx8VXPJl1xcBDlrixrjYsgMzvYRtCG8xnq
	UylpcSf+QNPEFhbrH5++y/FPNk3xd1o56I1JRYTmgwMzs1/0Fx/oGnrxffDMkTxSLQr3elWhA2HTv
	yzcjyOBhDv8g2hiotebpki5gGEPUhetSVtgT9TGcULWro3tMbMWuNrF+ePlwBUxZfXAwFbZ4Xdbu/
	oqF9HAdHwy3J2oOk07p2EHPn1Fz4M4toqYveserLdm5dYvvpwlJm/kAstd2rYgxgGi5t+LdYPA9qm
	189lAesGycHgzvdX9UTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDoLo-0006IJ-FS; Fri, 27 Sep 2019 11:23:52 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDoLe-0006Hm-Mn
 for openwrt-devel@lists.openwrt.org; Fri, 27 Sep 2019 11:23:44 +0000
Received: from buildfff.adridolf.com ([188.192.136.78]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MRBac-1iYd1326cO-00N6O0 for <openwrt-devel@lists.openwrt.org>; Fri, 27
 Sep 2019 13:23:37 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 27 Sep 2019 13:23:30 +0200
Message-Id: <20190927112330.1690-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:9bg7hGSk9+5/v43sj3X/1QzIUqyds+fo3xaOte4uE+C9WtGlMGH
 o4CbBGjGQBmFrhO8ht8XRKbYpa8MohzX8p3+w6cGQasDgdXbr6peWwyO9fDmIYA190jLsB3
 AcZ+RNzUbLiP8tTrdurNh6nszIeQVzMAL9424JwnleGAC+zmTEQ26Hse31+m3BSRuJD6N7E
 2W5lXokk0zfW4rbXWtxnQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:NGfLMRmbcOQ=:Zq5srBoAlTpffPjMbPi875
 XTPgNai1IYpmg3P8XjFdRFl0XzMUBPbUSspk8BKUyw4uHs8dgsSloSfcNQ3PXxhsTwH/I//aE
 dyEj0nuaY8eMmSbfddVccNmX0UJAhGSoiLZnzZ6/dfQ0R5ioioU6RIJSxR3cnsY6PYBozswHX
 WMtVCmMAmgMxrofuZ81I9kS8nR73xVc90vgiLokx8jTPB7CtF7JAuV0JOmoqc7Hr/Dm1gRrPz
 S+TYWMf96xiQ3toA38V24pqDLtUe3BHkoiwKFmrffqaLbL1mt5U5O8EEU6RYVtFCnzGZb7qjA
 rnbIciy9mAdZ4vdfRWh1KrKR0l1jyc+5Arnfo2npRG2Mn6uo6niShJMo44cMQQPG3e8gkfUcH
 HAgqvxAy+gIy4lHc+RCP+vcqCM9ACgkX9x0RXLHa5GZjC/z97WMcnV1B5NFoLytNeYkpJvYHu
 4Xu5ECJeByMfZzMsxkRuUqSpWyK97zZCoSEuALU6aPisXCNauT5GheSFggIklxZmaMtYwRIWW
 l7vQvvFoUOZSLuYPPo9argfrTkrPcZx9mowDPnUl1d6tjjzeDc0jYStEIxihEf06P3Yt+fXgD
 AG1SC+hU68VX/95NB4YafYcHRbnT9vewbgZdYGNnYHeQ+ZFgK90HVQKlAIKhvp2jGFeXcojzm
 /6F3KNmk+cG74DgVcCc9hPsLIFcKnLTQVgUIxoJGfiqriBNibCt9+QHhL0WrDuz6n9VxACLm8
 zfAEtparMlAWEYW8KB8UWoaNPVdw+vxGE1FNZeQosVTyMGBeGOZWs9YYNUo1k9Gc8juM/+Y1G
 XWTulUNACtRy7bHrZogjHbK/Z3KqVH2RHIdb4CgsN0OZYC9KFXwzLoegNxL+V9luvHiwB2MHQ
 XBy6Rjp5nf3LW+gtP4qtc1eLpHDDfFQbxiueWNqsQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_042343_040016_9236E9F4 
X-CRM114-Status: UNSURE (   7.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] ramips: add label MAC address for Asus
 RT-AC85P
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The label shows the MAC address of 2.4 GHz WiFi.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/ramips/base-files/etc/board.d/02_network | 1 +
 1 file changed, 1 insertion(+)

diff --git a/target/linux/ramips/base-files/etc/board.d/02_network b/target/linux/ramips/base-files/etc/board.d/02_network
index 947bf1428d..80dd267c43 100755
--- a/target/linux/ramips/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/base-files/etc/board.d/02_network
@@ -564,6 +564,7 @@ ramips_setup_macs()
 		;;
 	asus,rt-ac85p)
 		wan_mac=$(mtd_get_mac_ascii u-boot-env et1macaddr)
+		label_mac=$(cat /sys/class/ieee80211/phy0/macaddress)
 		;;
 	asus,rt-n56u)
 		lan_mac=$(macaddr_setbit_la "$(cat /sys/class/net/eth0/address)")
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
