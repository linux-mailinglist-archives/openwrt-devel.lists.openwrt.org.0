Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (unknown [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8CE5141567
	for <lists+openwrt-devel@lfdr.de>; Sat, 18 Jan 2020 02:20:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rwTgtwYcL370g3I5LRQOlk87JuIrsvrfwDwSz00gzow=; b=XVplyNsNt/666o
	C/Bhpmx89uPupmbNvE252579gpMXS5Rp3BereVK5BHPEmJ+UL6qCRLurrfW5NC+E2LakEgLgcDL7t
	PK8NLLpuow9Dd6ss9sLNl4VjMe9q78FVNB934F8LgPWWh0mHMwGM4058M10dggExFtVo26R5uqfUN
	F+KkzMTt6zZGiiUzT9vuoBm/+GqO/eYzmmATBgZtuQmTvjWv0yt1+0AdCAuuCXCoO9gBuUFNkgLkM
	aGgz49wLBAyWczrTw1Zdf/KFx21G4bN47NCJhcwr44UTXq6DBMHFlj9UCztaL7U3nD8q0cmOMZm9X
	O8R9SwsPRXgGz41jIyyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iscmD-00059w-7m; Sat, 18 Jan 2020 01:19:49 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iscm5-00059B-68
 for openwrt-devel@lists.openwrt.org; Sat, 18 Jan 2020 01:19:42 +0000
Received: from buildfff.adridolf.com ([188.194.105.26]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MLRgp-1j9sfz2jRL-00IShG for <openwrt-devel@lists.openwrt.org>; Sat, 18
 Jan 2020 02:19:36 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 18 Jan 2020 02:18:49 +0100
Message-Id: <20200118011849.45820-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:kv9dcSbsB/njjIMO70Yir0Kitngwro24SEqoo2lNzurxootBQfg
 7JPKa9kg3a0tygERvdifwiIHpV0glpNez/JXNSSuBA3QEqlbU6E0dtBzT/82h2V1XsKV11K
 deI7k/f0SiNzcA5iAJFRpHAoNcRRuZEEAXOtVjEbKuv0e5pKDryarfoT0xWXzmF0NhG+Fq0
 eZrfdZFPmVY1HzwSMV+hQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:SUW64E3E1Bs=:VP6oop4kYxS6mIQ+i4h1pb
 TYOLPVgdgBmSEtnv1AS7vX0YqWSD4gwIeaD2ZE9xWkCY+jN5J1MXWSuWGaXkd6a2WqFSQBY6I
 fMSF2nIgfGTSfA5JudcExhJ1F746wlnQVIg+TTBHRRV8eerw4V4N636O5pAI0wH/vhlzQSMWL
 0AM7tRRCJHsPYW7no0Aub3R11hlubVcZY19tzBy34dSHZ1P6f+VWdeQ0NdORgf6MTuhJERzcw
 Ve4gjNTfpkK5LmPb6qECZWHyVNetQNwkol1hOokeiekXTOxJrsEmSgxfNjEx4YM+ZbWgJNXZZ
 w+LxopD6rSvQknLynqa+BuhMP2gL9QkGmES0pDVsIH8ZMXuBBSIFpa6sy+li/HYTVqyJ2nrDp
 olwQoBqc6M9WM3ryd14zZp8WwEqCpdRhRBA566Jz9OZrfngZDV8a3+YT1IYNf0uUeJinrFvzJ
 A1DlLnBmvvGQGee+Ql3oBIEt+VHkFj2FRiZw72A79Yzat/TfXOfYRq2xtrfhH/Jq69jCHOsi9
 AwUNnAo3avjweFCe8VeXFNBiCZMn8BOgpwfNi3KFf19MIBgzPsjObgtm82KSnAWZN4GBjhQXJ
 Sng8QuciBr8d43D727LPjMUjnpptMn3YaznJIqxGrvK5vZNVSEmZb8hmdbtTA0d6+PMINZYBI
 7xa04/aAztEKfCq5a47Rhh4XMWi1dkLtqhWuUyOdQA0WYRsF9/FoBc9XpZ509a56tp58+Dwiu
 qgFobuwxRHxmst+FwyVFza92u+6Pop1T93x/v758xc9wFcdYCCSEOmCeL4KFR0FvxwpVIuW4/
 rS8nyV0keFe49jo7STuB1aNgoacbZKdRm/uOc0AzvUxSu/Yg3XwLN4fiY+NlBTqXsaWNm1VXB
 veYUCaEb15ZFpr1hUprRXVnfYr2AOOzxRjIH7QTfg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_171941_518301_8F6092F8 
X-CRM114-Status: UNSURE (   6.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.135 listed in wl.mailspike.net]
Subject: [OpenWrt-Devel] [PATCH] octeon: apply vendor_model scheme to device
 definition/image name
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

This updates the device definition name for octeon target to provide
more useful names for the images and be consistent with the increasing
number of targets following that scheme.

Since the target is not using device tree yet, this does not touch
board_name and thus sets BOARD_NAME in image Makefile to ensure
sysupgrade is still working.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/octeon/image/Makefile | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/target/linux/octeon/image/Makefile b/target/linux/octeon/image/Makefile
index 42bd5df1da..cb79a9ddf5 100644
--- a/target/linux/octeon/image/Makefile
+++ b/target/linux/octeon/image/Makefile
@@ -30,19 +30,21 @@ endef
 TARGET_DEVICES += generic
 
 ER_CMDLINE:=-mtdparts=phys_mapped_flash:640k(boot0)ro,640k(boot1)ro,64k(eeprom)ro root=/dev/mmcblk0p2 rootfstype=squashfs,ext4 rootwait
-define Device/er
+define Device/ubnt_edgerouter
   DEVICE_VENDOR := Ubiquiti
   DEVICE_MODEL := EdgeRouter
-  CMDLINE := $(ER_CMDLINE) 
+  BOARD_NAME := er
+  CMDLINE := $(ER_CMDLINE)
 endef
-TARGET_DEVICES += er
+TARGET_DEVICES += ubnt_edgerouter
 
 ERLITE_CMDLINE:=-mtdparts=phys_mapped_flash:512k(boot0)ro,512k(boot1)ro,64k(eeprom)ro root=/dev/sda2 rootfstype=squashfs,ext4 rootwait
-define Device/erlite
+define Device/ubnt_edgerouter-lite
   DEVICE_VENDOR := Ubiquiti
   DEVICE_MODEL := EdgeRouter Lite
-  CMDLINE := $(ERLITE_CMDLINE) 
+  BOARD_NAME := erlite
+  CMDLINE := $(ERLITE_CMDLINE)
 endef
-TARGET_DEVICES += erlite
+TARGET_DEVICES += ubnt_edgerouter-lite
 
 $(eval $(call BuildImage))
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
