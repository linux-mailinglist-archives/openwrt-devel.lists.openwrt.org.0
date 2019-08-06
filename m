Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AB8783261
	for <lists+openwrt-devel@lfdr.de>; Tue,  6 Aug 2019 15:11:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RCxZTifD4ZlHjEPmrVl1wgsWIanyuaQOgpQ4GWrD5dI=; b=H5BC8gU7hvhNVqHJW2XaUcfbd+
	YclSZPTLaLH/1yzoXRrqNT3QVtuASdK+9M42ujVp2QmMyFOluhlTONetZn616tulZRjbGx21TlmnG
	UTGjG4cGqqtfMzxtl8w1syFYQLWF9qboruV/KSRsUvaIyPHYWMVTsHvNJICfpKprgn5xsqt6TVHIW
	VpXPHYCdiCFYVM68Ue2J34sTvthJilKnMVSJXRYDnPMINbFuI6l0sYTsGQMOkr6muIxYrq+BdXcN1
	v8IOmzMADn5t5RhxITjxVZvJlotT9IVXz+0FS8Ch5Uf9lfxl1LSvDoy+MdunnM8EEuoxa/Y4JEEdq
	XWcmng4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huzF8-00059d-Sz; Tue, 06 Aug 2019 13:11:10 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huzEj-0004uG-LZ
 for openwrt-devel@lists.openwrt.org; Tue, 06 Aug 2019 13:10:47 +0000
Received: from buildfff.adridolf.com ([188.193.174.123]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1M7s1M-1hzvBB2oYU-0052YC for <openwrt-devel@lists.openwrt.org>; Tue, 06
 Aug 2019 15:10:43 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  6 Aug 2019 15:10:38 +0200
Message-Id: <20190806131039.51484-2-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190806131039.51484-1-freifunk@adrianschmutzler.de>
References: <20190806131039.51484-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:gFUL5mvw2QCx1CKuzTgKsT0K7C+DplBgh81PNr+gp20w6fgZeT0
 pmG0EJn3X+9HEqW9rsGWY95/cJxEFgdZOZOThkpqpXSMEc6jpjuOBxGJzS8Xk7Un6UY/dJa
 pgQWjz6xraJy8FJjmia6N0fFfNLsyZT6vS2Nzcb1fjTo9Mgd//Jf6EZWL0QsDKuJCCnoYxU
 yp7pbciZcYqptBGYnMUKQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:KkZdvSc2+qA=:u+VJ9wBItL7DDejt/BX0X2
 VJe+dc36MIT6/Vqcz8/tXC2IHJVeiFHA/5VGxT9cKNnPWN2Hb9N68ng7YoL+kOeJxVABq8uTI
 ZunGzdqbNgKPZgPtANyl7PBUV8EZGuPcxK5hsgFwgqCxO1wALbg/hVnFtO1jdLl3WBLR3cXes
 UQO/lcghYUBx5hf/aEVUwrpUdBrcOLDBPVwpuKFGnd8d0AWlGIIDTrA9DKZH/OVbzPp0x2ap8
 dYH/5RxpJzC2MdC8DGv2uPJL9sRQYRoHBaP/HFt7vP3iTEBrF4PkRZt8AI2vUYb4XFe68XJ/A
 0i6II5ixW9YnjeGAXajASscKlirE6OZe0WZ3WRRT8imx6p8VMJN/kljUyM15hLULOANsF74Sh
 C7lChaP4p/BFjAdrv55s7s8JVeQ9nCr64mRFyLqASXYIAYx9WlqG/CpFU7sHEJ10wTVDbTBs2
 Nd/r11ZC8TmWjFT+sLqsRn6KhfIHW9S+lFmvM2ADj777avRInKZfLVZXK8Yfg1/nZ6VbxuF+Y
 FAHZqObzVjrGFk6yHYv3eDxXWHEJ0o5lWq9KNkbmhS8iTaITxwZ48R06G0RlupIzonkqjq1dt
 uOxhJ3kG9bAgHzD2mo3xVno6fMJ+v01bNxwp3hrdx509Nknnk5JJ1ugbt2tWp3gIAihvMX0Kj
 mCiIWVAOA648STlUAD6F9j8JckdaMPLZy6imOOdZY9b2/OrLWV/M8CRZ6NR76Wo/In8p16O6R
 1USaKpTJp1+47N80DGXUnvJRXF/QgnpoeL+2AaCeriySFn9Nie+rvxMAFLQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_061046_044418_45E0BC80 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 2/3] ath79: fix IMAGE_SIZE for common
 TP-Link definitions
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

So far, IMAGE_SIZE is set as follows:
tplink-4m*   3904k  0x3d0000
tplink-8m*   7936k  0x7c0000
tplink-16m* 15872k  0xf80000

However, based on the size of firmware partitions in DTS it should
be:
tplink-4m*   3904k  0x3d0000
tplink-8m*   8000k  0x7d0000
tplink-16m* 16192k  0xfd0000

All (!) 8m*/16m* devices actually follow the latter scheme, which
is also consistent in terms of left free space for other
partitions. Thus, fix it.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/ath79/image/common-tp-link.mk | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/target/linux/ath79/image/common-tp-link.mk b/target/linux/ath79/image/common-tp-link.mk
index da4616482a..d05ac028c7 100644
--- a/target/linux/ath79/image/common-tp-link.mk
+++ b/target/linux/ath79/image/common-tp-link.mk
@@ -83,19 +83,19 @@ endef
 define Device/tplink-8m
   $(Device/tplink-nolzma)
   TPLINK_FLASHLAYOUT := 8M
-  IMAGE_SIZE := 7936k
+  IMAGE_SIZE := 8000k
 endef
 
 define Device/tplink-8mlzma
   $(Device/tplink)
   TPLINK_FLASHLAYOUT := 8Mlzma
-  IMAGE_SIZE := 7936k
+  IMAGE_SIZE := 8000k
 endef
 
 define Device/tplink-16mlzma
   $(Device/tplink)
   TPLINK_FLASHLAYOUT := 16Mlzma
-  IMAGE_SIZE := 15872k
+  IMAGE_SIZE := 16192k
 endef
 
 define Device/tplink-safeloader
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
