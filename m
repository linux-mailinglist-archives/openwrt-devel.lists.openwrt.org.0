Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B2A7E0280
	for <lists+openwrt-devel@lfdr.de>; Tue, 22 Oct 2019 13:09:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=D0fXMBaUv4jxTlsLt3VCW+q9j4D5BdG5Qf+4fo2jjwI=; b=Lpze6hyAK39cyphVmD2UEZvEDx
	2I+BOMjmDksTMzV1BKXUSOtqXWSpkvbVcgBf3qYcBWMVesZIoq16xSfdq+NwZlkFKC/GTs+keXSDI
	vT07unopcegYDx/d+pvTmK9YfajF7nAJFnObTKMUQWi4wS8Ky1+vFOcr4gs2k5V1IwEB5W1EJieS3
	KXkPfX4YMQwCwZ0kY5PomyfMGH9tCGrPXj7w6iLwTUBj8UUcqb2moEW4rMYlS6zrNoCZpW5gxVfNZ
	G5i/bsDm1/uWWFZRjsUYKxa2qAhB+veF8FbEg+K9S6w8u+cOD9GfkL7ZLm0Fkh9/oWkQiGX54u3gm
	9f4n5Bng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMs2B-0004FD-Ko; Tue, 22 Oct 2019 11:09:03 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMs1g-0003lF-Uu
 for openwrt-devel@lists.openwrt.org; Tue, 22 Oct 2019 11:08:35 +0000
Received: from buildfff.adridolf.com ([188.192.135.195]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MuDTn-1i23Ll30OL-00udcq for <openwrt-devel@lists.openwrt.org>; Tue, 22
 Oct 2019 13:08:28 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 22 Oct 2019 13:08:25 +0200
Message-Id: <20191022110825.54574-3-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191022110825.54574-1-freifunk@adrianschmutzler.de>
References: <20191022110825.54574-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:4ghJbKkC3ZCb5ycniHFRgpYFz6NWNq4Mkg13W5JYuOAVLWcYZOD
 0eOP5bUXVIiN1thsiY0VOwafHr5MVH+/IT11s+GmLXorW45CnaSm9zuwrOp3X9xwai+uIsx
 4Tnx/qi6OQjBIP7lpHf0Z8HPNRVqgouILFZDdEK2ETP+I9y0bpVTi4mma1i+lNccFh0qGRz
 34DWTYrW/8fHqQvEOgLuA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:RIWChvQBvzo=:oQHOyL71BgwTH/VBKG4Jss
 PDE/4aRYj7eUwzApaXrdCACmRzb0mNR2tjK+fl6GEL6+2vYdKernNNi7FNFQToCSvvaXdA5E6
 zyppQ+WwFxzMZOKMthnFO7fGTfg9J7tb3Z/qSOq+vwEC5iX4880ReUAzVmDVm/porgBuoDIf/
 BwUIB55D5St/05ddFxvVIgPy7kL6XFlo+cVMRVqSwdRXB6LlL4NTli2hbrtn+WqE2DrIsnIUX
 ULwy0MnLJRXSZanyc8NiMhJ8QEXpSW1iyZc4U16O08YeqfiE0O0Oh+Ans04Cvb6wMNgIBR/X8
 c5blRZFsFIKpvrMSDQIii3XpnogSPnz8jwb1VkrAkEvP11A/XkfYLfaWbcdcA1criMeN+WHls
 zM9AOcyntZ1ux8UVh2AbVOI9RlQMYoxNhsZSrHNPfZkf0/8OZ+CFKtVGQNe5quL05z7j0at0t
 GPRtMC6b11g7D+AIRN91sdyUcvP3I8vKA5drvWFvs5cskIY5NT0DVkJzTQ7/DtWPtFNx63ifH
 WFI73EpqcQ9leLCt6xynHLuEeYAIZl7of2rNGm88aO+20Y5HfQ/sTBwH+kgpVInyElr1Bz/Q/
 K8zFMXQe8uBejTz16K96eoD+yq3A7RlPgTqJJ7/lKbHzjRa+/3HFiZikw5EBB3QwmVAwCUhx6
 x3XsplcRWA4NpvMGG5C7MlKXpJJC4lqa5ChETop3fOoIipovevlXdKzkNpFwzP8mVtFl8XP0P
 0kLaWMDXtald+PT77JECg7bZU/aHWmDuauxom7IvGM/feNIVNtenyTnrYBGW2o8nXUX95Frzs
 BHgCZlea1QHFA752mf9Pnv9KraXGaEu4kkjQdbPrTmSGjb0c9DtDpw4wt7j6l7+LPGI1c+gmq
 IuI7HEpn7ky0whS9M46hgKUY9Rc51QSAqGVZZ5w1k=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_040833_284521_D62F67CB 
X-CRM114-Status: UNSURE (   9.89  )
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
Subject: [OpenWrt-Devel] [PATCH v2 3/3] ath79: fix remaining IMAGE_SIZE
 issues
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

This fixes the remaining IMAGE_SIZE issues in ath79 target.
All devices in target have been checked, so together with
previous patches this target should be "clean" afterwards.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/ath79/image/generic.mk      | 2 +-
 target/linux/ath79/image/tiny-tp-link.mk | 1 +
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/target/linux/ath79/image/generic.mk b/target/linux/ath79/image/generic.mk
index e82e125166..aba47bbe5f 100644
--- a/target/linux/ath79/image/generic.mk
+++ b/target/linux/ath79/image/generic.mk
@@ -199,7 +199,7 @@ define Device/buffalo_wzr-hp-ag300h
   ATH_SOC := ar7161
   DEVICE_VENDOR := Buffalo
   DEVICE_MODEL := WZR-HP-AG300H
-  IMAGE_SIZE := 32256k
+  IMAGE_SIZE := 32320k
   IMAGES += factory.bin tftp.bin
   IMAGE/default := append-kernel | pad-to $$$$(BLOCKSIZE) | append-rootfs | pad-rootfs | check-size $$$$(IMAGE_SIZE)
   IMAGE/factory.bin := $$(IMAGE/default) | buffalo-enc WZR-HP-AG300H 1.99 | buffalo-tag WZR-HP-AG300H 3
diff --git a/target/linux/ath79/image/tiny-tp-link.mk b/target/linux/ath79/image/tiny-tp-link.mk
index b6b085fc93..3d1b26d17f 100644
--- a/target/linux/ath79/image/tiny-tp-link.mk
+++ b/target/linux/ath79/image/tiny-tp-link.mk
@@ -12,6 +12,7 @@ TARGET_DEVICES += tplink_tl-mr10u
 
 define Device/tplink_tl-mr3020-v1
   $(Device/tplink-4mlzma)
+  IMAGE_SIZE := 3840k
   ATH_SOC := ar9331
   DEVICE_MODEL := TL-MR3020
   DEVICE_VARIANT := v1
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
