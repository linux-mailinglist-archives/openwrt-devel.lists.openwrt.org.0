Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48F531E84BE
	for <lists+openwrt-devel@lfdr.de>; Fri, 29 May 2020 19:24:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OGwDvsOJ8KzvVtfhfOmzgczuoHbf5tb4DyLvQ0/F1z8=; b=Icp3O1JT0IueVP
	xGOmzZ3c/T2HoDCX9pt1Xafwie8fpnKEaiAObhnYOvht6p26bE8oU9cGcTl/T0pTgT7ITCom2Hpts
	I5d0mIH3BT8KsZGbQxzla+8GCUauy2vIkULYoJc7F+1JGldNLi/wt3F4Vhr9WliaKHJ9eWQF2O5Pu
	Lkoh5LOmNcWSvzWqwN3B8RsN1Xyeec1jCqnY9Hye1kzQ5C1J3+sHvsiqqsB47HiHjN9a3b/N/TIJG
	HBIVv/RlSCvKOoEQ4jPuylWQQpZHRzCK4AMqtojqtR0hF+1fwvATT6p8eNMXWgYu+89cTe1uvmGFb
	RYBpFjADhSgXA9orrDbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeijq-0004aG-Qe; Fri, 29 May 2020 17:24:10 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeijE-0003v4-LV
 for openwrt-devel@lists.openwrt.org; Fri, 29 May 2020 17:23:35 +0000
Received: from buildfff.adridolf.com ([188.192.133.27]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MBUuV-1jr8Oe2wcZ-00CzhY; Fri, 29 May 2020 19:23:27 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 29 May 2020 19:22:36 +0200
Message-Id: <20200529172238.43399-2-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200529172238.43399-1-freifunk@adrianschmutzler.de>
References: <20200529172238.43399-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:ChRiXxql03UQX83s6kScyexmYUDy+KNvf3V1F6fN81jalqF1z8Z
 Q94+F0iaI5YfqgYppkJTv9YQQgTE8KB3DmR+Xxbqii1RNiDcuXKc6JRIuenaJZwYkmEn5VG
 B2mpeAHCiWvluOB9IY46hlrY2wF3IJc+f0M5xuhsmZYrlGw83RYoPU/iCl0oQJOsAL68IAs
 czO6192Q7pOgvslZ2EC7g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:IsogdzDpV88=:tJ3fNlETCE8C53GDOzo4yf
 3jEXYun7FAiDsdFlCAo8zOeqvSAQEFGTk/gdEeZba3xdMVxAhFq/ArHBcM7T2ZfHrwbV7mGec
 npsDeu+katd+mlAIcO2oiuw7bYM6FFKwKP9mWfbcqIansoFAUZ7fWNM66aIv88OeGsLJC7WHF
 TFjAHH6YvEB24nDHswQVkf6PiTtElw71mb+zYmYRRjHEVsEj285AdJ46CzADxmQ2XSAJrineC
 c9xVe0VzMn0tnH09bEr/uirtTMuMYfT6tydOJodomtpbj40XRYih5wm0kj08X3ki8bJVOMDlq
 lTcd2LmE0gtneZysw7+riSmxHfacCmufu1IgnwiLvZXs2+eeGWruWKsbNzCMPbRj/5a9sZSwV
 ACfHyVsajlJWlcUpokTUZ+x9xhiXvTayms0Ze5yoBmRP7OFfbZi7ADU2hyHMGUhqR247zrylI
 pAm7tkKlDJOEFECr+kTlhm75SkAnLbVAynRJQR4Yk282L4m/hVeaY9weVzjrYfij/31GdGfMO
 6st/qhR6xaJrL0Rj+EeEfD8IBLNea8CfT0fRM7Z05gY+mJySFKMndRQQK9x67Iu55ZXU8i0LW
 fGEZRRse1KaU+goS/Pwkg+BC7FMg/5g92TQHRAkghZnXIe4RtnbO2n4Yujjl1mW9RgmqiyTkd
 6wTR1U8hOpOWBo5/KKXR7mNQLzqoAmjsy4nu4lDu4r6uY3j1VoStdt/HQrB8+EmtUpAJdI5Ae
 aHDMC2f2YvfkoMlUoQBCsav7YtRDKkoXbp+UGfuyvTsFUb30lDkgEsyvNW/83l6L3XQPVkgU5
 IZmUrgiJ3J4NWRswyoK70wJJRBWWSVGkzxc3tR8PvKXftZPPo/3o6OK7keImlxNRIOPU9r2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_102332_992951_FC832EFB 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.134 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 1/3] treewide: drop DEVICE_TYPE when used as
 device variable
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
Cc: Linus Walleij <linus.walleij@linaro.org>, Sungbo Eo <mans0n@gorani.run>,
 Christian Lamparter <chunkeey@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

DEVICE_TYPE is a target/subtarget variable, and it does not have
any effect when set in a device definition. It can only be set
in a target's or subtarget's Makefile.

Consequently, having it set anyway is misleading, so this drops
all cases.

This effectively reverts the following commits:
7a1497fd601d ("apm821xx: MBL: set DEVICE_TYPE to NAS")
5b4765c93a1b ("gemini: Classify Raidsonic NAS IB-4220-B as a NAS")
cdc6de460bb4 ("gemini: D-Link DNS-313 is a NAS")

For the following commit, the variable was set when adding device
support:
27b2f0fc0fc5 ("kirkwood: add support for Iomega Storcenter ix2-200")

Cc: Christian Lamparter <chunkeey@gmail.com>
Cc: Sungbo Eo <mans0n@gorani.run>
Cc: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/apm821xx/image/Makefile | 1 -
 target/linux/gemini/image/Makefile   | 2 --
 target/linux/kirkwood/image/Makefile | 1 -
 3 files changed, 4 deletions(-)

diff --git a/target/linux/apm821xx/image/Makefile b/target/linux/apm821xx/image/Makefile
index d732141c8f..c26c015751 100644
--- a/target/linux/apm821xx/image/Makefile
+++ b/target/linux/apm821xx/image/Makefile
@@ -230,7 +230,6 @@ define Device/wd_mybooklive
   DEVICE_VENDOR := Western Digital
   DEVICE_MODEL := My Book Live Series (Single + Duo)
   DEVICE_PACKAGES := kmod-usb-dwc2 kmod-usb-ledtrig-usbport kmod-usb-storage kmod-fs-vfat wpad-basic
-  DEVICE_TYPE := nas
   DEVICE_DTS := wd-mybooklive
   SUPPORTED_DEVICES += mbl wd,mybooklive-duo
   BLOCKSIZE := 1k
diff --git a/target/linux/gemini/image/Makefile b/target/linux/gemini/image/Makefile
index a155939b8c..83f3d222d9 100644
--- a/target/linux/gemini/image/Makefile
+++ b/target/linux/gemini/image/Makefile
@@ -171,7 +171,6 @@ define Device/dlink_dns-313
 	DEVICE_VENDOR := D-Link
 	DEVICE_MODEL := DNS-313 1-Bay Network Storage Enclosure
 	DEVICE_DTS := gemini-dlink-dns-313
-	DEVICE_TYPE := nas
 	DEVICE_PACKAGES := $(GEMINI_NAS_PACKAGES)
 	BLOCKSIZE := 1k
 	FILESYSTEMS := ext4
@@ -204,7 +203,6 @@ define Device/raidsonic_ib-4220-b
 	DEVICE_VENDOR := Raidsonic
 	DEVICE_MODEL := NAS IB-4220-B
 	DEVICE_DTS := gemini-nas4220b
-	DEVICE_TYPE := nas
 endef
 TARGET_DEVICES += raidsonic_ib-4220-b
 
diff --git a/target/linux/kirkwood/image/Makefile b/target/linux/kirkwood/image/Makefile
index e69e3f125d..552ee44ee4 100644
--- a/target/linux/kirkwood/image/Makefile
+++ b/target/linux/kirkwood/image/Makefile
@@ -66,7 +66,6 @@ define Device/iom_ix2-200
   DEVICE_MODEL := StorCenter ix2-200
   DEVICE_DTS := kirkwood-iomega_ix2_200
   DEVICE_PACKAGES := kmod-gpio-button-hotplug kmod-hwmon-lm63
-  DEVICE_TYPE:=nas
   PAGESIZE := 512
   SUBPAGESIZE := 256
   BLOCKSIZE := 16k
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
