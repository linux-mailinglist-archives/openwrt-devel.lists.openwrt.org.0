Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E6E8115F57
	for <lists+openwrt-devel@lfdr.de>; Sat,  7 Dec 2019 23:42:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MEGQQGo3kgZI22oLNNHcgs9OWECDlarhBiNzPb2Vy6w=; b=loE/T/QWv+Z+Zy
	BjDzUP9wfzAnZKmYkmcalw04rSue5JKUD9abR4HRcfrLSebegM/5H1ujGlZRvxFskMQ1MOo9YUthC
	bPbB8Bv1jF2UFzndys3dq7q4nWI+XaOCUr4ktvxyYqDNnSG95uqA6R/7sfbILixmxQsBdlr6VuccA
	7mKs3I3C7XuruXsM/sBFTwzISQGxCk9Yq5xsr5nkYmT9B4ATAgxZauai7/WBW/RREyOgPV5PvkiJr
	TgFCWHKcru0KTfb9OS76HCoDgReh07p78fgmAPhvPJtSOiy05Fl/Lq5xLzvkTmBk2m4if3V/R0e/k
	BkFW4nFg2Y0IF3AdYrrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idimO-0001LW-4F; Sat, 07 Dec 2019 22:42:24 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idimF-0001LE-1Q
 for openwrt-devel@lists.openwrt.org; Sat, 07 Dec 2019 22:42:16 +0000
Received: from buildfff.adridolf.com ([188.193.231.72]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MRC7g-1iPVoX1beO-00N77m for <openwrt-devel@lists.openwrt.org>; Sat, 07
 Dec 2019 23:42:13 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat,  7 Dec 2019 23:41:29 +0100
Message-Id: <20191207224129.47882-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:cx6Cob+8keXUteaxCodbFKeAqR5Ud8jBx/cORn4VDDXqbrqHUtQ
 mNMcMgVpsaI0OXQ8izpMi+XLADCu2HF1RX4Lq9sxxzUSOW/urzcaWpp5vWrZGnqFhWTk/bo
 5J64Ba9oPnfisuaRae21G2HKONSqAFKwEYojdPvF3+IKHcMLp0nl66iRtYXruVrbauKNs/z
 /CWv2HxHljDESopHUNqIw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Kyn6CKN66/o=:YkHbCEkHld+zuUZZCEfcrc
 HuLUr/lJLH4xyoVR2hyQRHJhPeJdFemcb77kLMCwiRz5nF/suIyrzltRrxMkI40M9clEmPy1k
 W6Jr6skBW2HXTshv8dzgfCW6I75wQbipf6+JE/ul9W/dsk6hEN4HHMF0p1eNKbF8SOn5g95Ew
 Qa2vN3bgqWbCzHgV1gB6xfxRCpcw8XzmhW89HDjMFhwPIQs/B0hdjqoCTeAn5CWFneQChtCLl
 UlWDfmx12W8G6AoafWqg1qf3xDRf0Pd8XYo36ttdHtxRuZFOvuhax7fAysKzz5nENQNOmRzzR
 4nNcjCzE/h12WUBe04bx4GBv1i1M4FN7qd46LY9XSFCsfzp8njogRhm9TqCrNm4KSeA78WaSM
 89ld9Yc/qK6jsoW7sXNwAV95Oa3FXfoOxEEyKqGD/v6/E04/2f58JpLMJjdQpE+bSkv0ka+xn
 J5MTJgT7HY7XSwDsUTZ/JWvPglTNdl8viSYt/1P0+Er7fQuFnwyd9H21h78XmXmXRPuL4eT/Z
 7PYG0Miye+4UjlyQPShK9shsrMmcNmO1ySQbjLpR/zIpsqS98tXQljNfrujIWNw7bcpyj7Adf
 gogVOsYtzEWuodeCIAN7CXuJWiz5xBVueFO8vTLqN5CAyziv7g/4sbRf520QTFcL/Mvr0YyZs
 ZBV7we4L2RZN50Md5q8ByuCMWA8oDy9/sj3NSqUV103LBNK/8N3tBXbRuNWoVxxqtBDLJ4jj6
 ogvMx4kYxw1P5pTOiCmhic2vKUSSxAAXjl+Y81JQ1py2U1WYp0rG09xxWPWfZolNv8KFG0jg2
 61lz01/04T2PJrLl155u7VOpD5L1ondY2jNcgCEWvM/aX6KfhWH0lPgSXGnWjqxaNlDF/VyKf
 8OrgUC/JmBf23O3hBdZF5/VZcAZ5vLLii5Wv6m+T4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191207_144215_369804_233EE9FD 
X-CRM114-Status: UNSURE (   7.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
Subject: [OpenWrt-Devel] [PATCH] ramips: remove unused DTS from DEVICE_VARS
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

The DTS variable has been removed in 402138d12dca ("ramips: Derive
DTS name from device name in Makefile"), but the DEVICE_VARS entry
has been overlooked.

Remove it now since we are not using this variable.

This must _not_ be backported to 19.07, where the variable is still
in use.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/ramips/image/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/ramips/image/Makefile b/target/linux/ramips/image/Makefile
index 16748b8260..d700e69440 100644
--- a/target/linux/ramips/image/Makefile
+++ b/target/linux/ramips/image/Makefile
@@ -7,7 +7,7 @@
 include $(TOPDIR)/rules.mk
 include $(INCLUDE_DIR)/image.mk
 
-DEVICE_VARS += DTS IMAGE_SIZE NETGEAR_BOARD_ID NETGEAR_HW_ID
+DEVICE_VARS += IMAGE_SIZE NETGEAR_BOARD_ID NETGEAR_HW_ID
 DEVICE_VARS += BUFFALO_TAG_PLATFORM BUFFALO_TAG_VERSION BUFFALO_TAG_MINOR
 DEVICE_VARS += SEAMA_SIGNATURE SEAMA_MTDBLOCK
 DEVICE_VARS += SERCOMM_HWID SERCOMM_HWVER SERCOMM_SWVER
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
