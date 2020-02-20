Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74463166569
	for <lists+openwrt-devel@lfdr.de>; Thu, 20 Feb 2020 18:53:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6y4vcnxu2V7ZNBNs5Z/05xuMd3svJjYgIvEMWIid/Fo=; b=e0DGZhbJiPqpSPcznjwgfTLtEC
	ZnU/8W0bCGr+FxydEN2deqOtQ4eKDgb+0caamlAL28soRDi7tF4wagMT2IkKUuVrcpDOCMrcRjy38
	alv1PmzV16gR+mHuRKQ9wGkc0ysofX9vYcqDNDstwfjeaRioe0C2VwxlljfYyDxCVj39l4lUqyAjf
	an9H/0BONIIbqaHRnRDTcR76jZzW8aU7q4ZfFYeGYxO6QiqoA4mjX+ADN4AWikc+WMIizFusvCoMZ
	WqDOdRoIwzQhA+lJ78o+ryML4SCG2lIWQaWQAtSxzAGnyxaJqO4Pq/F+ansdPuAm4t5yJXphlzjcz
	GHqt05FA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4q10-0004OC-VH; Thu, 20 Feb 2020 17:53:34 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4q0b-0004JQ-4K
 for openwrt-devel@lists.openwrt.org; Thu, 20 Feb 2020 17:53:11 +0000
Received: from buildfff.adridolf.com ([188.193.230.10]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MUl4z-1iwHGg0bJp-00Qkyo for <openwrt-devel@lists.openwrt.org>; Thu, 20
 Feb 2020 18:53:03 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 20 Feb 2020 18:52:18 +0100
Message-Id: <20200220175218.33593-2-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200220175218.33593-1-freifunk@adrianschmutzler.de>
References: <20200220175218.33593-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:nmM/0WO1jiDgjaYgb+WoaXGxAYv8Rh1UpKMm2lHhSXagSFKvP9l
 0rQxg2Kr8zJzXxmz5b5kl7KGOsuIUBrzBpp1LUJgHEhNfnx5X4Y/5GITrefIFkOyfkWZ8qm
 nApwvTRltO9LfunmXw0vjg+Tql440LH01Awa1DsiSaGgiGg7pT9aKbUizT39Da3YTnYaUmk
 unBdJBLu6AOAkVeyzu0hg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ssefQNfwTSY=:tdPmDtdmzl+/kBp2r2oLBR
 7Ly9rsHDle1b21kauoqH0RXfg5dT5kBeN9HgeCu9M9rGPQ0kKPOFgPJ8NcF0TKXnnhNzCPsT1
 2bnYSrvqjpSvENBQ/jbAiGPsHLofZS9jW1eV6gI8KPlPumkp7n7JwyJP6x5scae01gjyYuLwj
 ezSZeBMOQlFVnyJxjNtMH9664a0vwrVrB7MBVmA/2eOEZqgRa+riNGu78cQxLhN1XYWVd7Rdv
 zoaY1IYF0hh/v+/PPCrHkogKkpr9FEYAzkSRiN1RT5qSGKLSLVkSDr97NVF8+VK+sDCK325Is
 MkG9AePyQCy7V8I5YccyS9s8Lo/C5HuwchrX8hVih6w5oKelNF5/FOFDQCEsbgA3dD5zSw5eA
 DBuyjCQxpN/adLSWYALYl6P00csX22wYpZk2eXqQRARCqBPM0My49jtt/EEJsbLrbpMNVYJCi
 yyXsvJEcjSraPUcgCkQUrZHBZRfMBftxzrDSYMMsnGIDtt0pYxvIDDAuq0NPcGnrwJpu/AihS
 eI+NyjIuD79pcjhuuVmTdvVCvZtmSorpp+l3763cIrsbraLbmVlNXEH8voWxvvdHRoNXPxYxx
 Hq+7o9NqSM9KyO/iUiS0sOH8V5TiOxQ+fR38wCvlH0/b9F3qdLrUyP9LnPu+DMG4mI2ygTv0j
 VvETID8k9asl/Y0cpC2hAI0l0b50w/2Hoo683+6aIjhOXfcCJaDN1bfTXWmJ6+mnGtu5OX3xc
 hggB/gqTtcx4QbeIZV4yYO2T3QRLMpikpcG63ZCEEJk7lnJLhhdC/XRCzJHsNaVw12NUlLBbZ
 UkTr/rwsG06Us9yZxgkFijiORrZ3O46nQ+iYgAUpRMRxbg5qX8F7RD4KnRrsRRUIjQPOyYB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_095309_468663_B7AE59AF 
X-CRM114-Status: UNSURE (   9.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
Subject: [OpenWrt-Devel] [PATCH 2/2] rssileds: restrict package to targets
 where it is used
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

It does not seem very sensible to provide the rssileds package
on targets without corresponding LEDs, so restrict it to the
targets where it is used at the moment.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 package/network/utils/rssileds/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/package/network/utils/rssileds/Makefile b/package/network/utils/rssileds/Makefile
index 7a59314693..c8e8f39de9 100644
--- a/package/network/utils/rssileds/Makefile
+++ b/package/network/utils/rssileds/Makefile
@@ -18,7 +18,7 @@ define Package/rssileds
   SECTION:=net
   CATEGORY:=Network
   TITLE:=RSSI real-time LED indicator
-  DEPENDS:=+libiwinfo +libnl-tiny +libubox +libuci
+  DEPENDS:=@(TARGET_ar71xx||TARGET_ath79||TARGET_ramips) +libiwinfo +libnl-tiny +libubox +libuci
   MAINTAINER:=Daniel Golle <dgolle@allnet.de>
 endef
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
