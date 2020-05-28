Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 407891E67C9
	for <lists+openwrt-devel@lfdr.de>; Thu, 28 May 2020 18:50:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5R5ro1KyJyjtGQ318pfDQ9m9s1vUmQ7Vcp60hRUSMuE=; b=f+cHuJE6zeFjIs
	i8uc3So4RvAiBbnBJfntvkvf5cB/4yhd7OQ3x8lLpwDQvXJUEO9EMF8kGJB97Bl5v9hFvvaUXvkBH
	jTxd8PttFt343q1g+gioUEItoI8dBZlxIlNFyXEd2eZbg0RPVk1mivFPLHm53x2SZwGqLN0z0nKln
	Gx/MHBmpTvluSZ+0FqxYlPyHPsH3bgXsY71DruwYHE+HozQrhlFhFfIzgof0Zak+P8QwfZ4fyS8y8
	+0be2VvS9gGch3fnkEWUHG6p3HksHwJETu5OFhOJVjnCAU0pOY6ISXvg17Sd4tdG8QJRBZF1f1Ukm
	Q0dclAgs39N/HLyu/Dag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeLju-0007BK-Nk; Thu, 28 May 2020 16:50:42 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeLjo-0007AP-5J
 for openwrt-devel@lists.openwrt.org; Thu, 28 May 2020 16:50:37 +0000
Received: from buildfff.adridolf.com ([188.192.136.103]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MORR2-1jNF5V1I4c-00PwGW for <openwrt-devel@lists.openwrt.org>; Thu, 28
 May 2020 18:50:31 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 28 May 2020 18:49:30 +0200
Message-Id: <20200528164930.61513-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:/GDjkS4NgGoegpn2YO41igZ6C4Qs7AX454vyOz6cakly/fyUvyB
 CeBcwextuJdqRasGemKUfFBBlE9rMgEY+Qg9z7iOwLr4YWHU5nDnapkHDzXQ0gGBRJtnkQh
 qTYLQtaNn/Ed4b2XKoHxfpYszQ2FBkeaVthZEC/gpgh+x55kvQEsLWMO5j5BdOkebEo1fWy
 pA+Vocv9+HIsGkw61S3MQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:d6jVZPtfF6g=:C3wvnHsjOj0hD6Fw4D8Ava
 JGUAO6eMEr8Z6oDCKeaszzyKXRKVlmRHVLavSdT+XgHEId2G90U5nJe0+ZK2W1ZNsxwyiqldd
 R1FcFTIgnuLuP5aXs/1dXLLP3yxCQTG+BwDjQSe4TpCHphLlrPapaLEVAdBO1TRj1SuqS/Tzh
 jK6bBdceDnVn7mGu8Rpi1swn8z6S10J60ApD4ptGDRzQYKndDzHwQCLo3X+PnIrNT8OL+KExM
 hfRIvtCIBIrsu3A5o7nookzqFxXfZEioR1+OX/yKrQGhE0sLEpnaBHJf6ok5b4WOVd09k4Cih
 fF0HJFheSxR2ghsuWrUfM00I886MrkgPU+YnIR1JRDzxT6IGuHO3kDLzJcYjUKzSJFk2f+6E/
 kFV8UP61i7+TR7gIP6xp07GFh3VhcQgnhBaM9M0IB8onvxdnbml//F+8xnYuY2Qa8vmj6pOT4
 xC9345hGj8zfvYnZzNsD0qZM09+F45EDqqP5u6CbFU/MnCMG8ajxNIr1BO5ugZfBruganw4ep
 2q8/n6yGzsSePAyabIvZYeIVCz0MVxafwyhPmqsLPoN4dKNN+DBkWmCS+Mz0PVFsvbzrbIm5e
 rtzGrrFiOIVkV/UhGkvCF1BaIzl9dY4T0kCqIGCwmLVKXUgUlKLOPMltwe4qGQXXZmSJPc2R3
 sqZOSWYAW81Jf1UK3umR/1t0MZ9pIRrkHzdlwrA8guZSdvqjIn7wF20o9WJ/DD8N3Fm2bhO2K
 pzDLzSNlbiipVtJVaQWCUIqoiC836djYjucuE+h73/N/8bFkUhGtudHC+vFS6IwcJhqDzpnYf
 B9kfvL7yenYuwTnOoLz9PcieD6L9AHK/QpIasC6kBlcTRMw6jN4xuRUaTyM0G2vf9wo7Q1v
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_095036_497398_B6325BA3 
X-CRM114-Status: UNSURE (   9.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.72.192.75 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] mvebu: switch to kernel 5.4
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

Last reports with kernel 5.4 have all been positive [1], so let's open
this to a wider range of testers.

[1] https://github.com/openwrt/openwrt/pull/2804

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

---

I consider merging the DSA PR shortly after the kernel bump:
https://github.com/openwrt/openwrt/pull/2935
---
 target/linux/mvebu/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/mvebu/Makefile b/target/linux/mvebu/Makefile
index b954a88f6d..b9a6a79fe5 100644
--- a/target/linux/mvebu/Makefile
+++ b/target/linux/mvebu/Makefile
@@ -11,7 +11,7 @@ BOARDNAME:=Marvell EBU Armada
 FEATURES:=fpu usb pci pcie gpio nand squashfs ramdisk boot-part rootfs-part
 SUBTARGETS:=cortexa9 cortexa53 cortexa72
 
-KERNEL_PATCHVER:=4.19
+KERNEL_PATCHVER:=5.4
 KERNEL_TESTING_PATCHVER:=5.4
 
 include $(INCLUDE_DIR)/target.mk
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
