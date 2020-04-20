Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2145D1B141F
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Apr 2020 20:13:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1P27h1KT0wEk9xS6jp3LJFgaDOQcTd0WP/TTfBRqiFE=; b=Zyx9WY2ZMuT/k3r0eJbdGHMcgt
	qjrdKNi59OIdavdApjQ+S2HRzyajIyEqtOGiP5QYeRM6oh7Ov6yPAnnpW5ZUUirff7C4RaVP+Qgg6
	UfmI3aErpavCg8ayNhkV9tH/ilsnaWIv1sfWvelJXcTcn/1/i8fFnclvxs6I1pyf62xE3xeF4UDwK
	SEJfFuVkqjGSo5lmRDO7AYgXQv0H6rkjKo7uvBgyIsLBS44Amh/EM3fXsBWwwxVqWlBRbrNNfRg+8
	e0QJeLuhTCFeXXchbBNgfoOBjMWaqSZC/vjpnIfReaOuI4u8wQWn4tUuzDvF5zEtbFQ+AFwpw08Ze
	HxVaR/7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQavZ-0005ay-J3; Mon, 20 Apr 2020 18:13:53 +0000
Received: from mx-out.tlen.pl ([193.222.135.145])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQauV-0004oj-Eu
 for openwrt-devel@lists.openwrt.org; Mon, 20 Apr 2020 18:12:49 +0000
Received: (wp-smtpd smtp.tlen.pl 8513 invoked from network);
 20 Apr 2020 20:12:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1587406365; bh=pw6EQckzzIP+QKNZmzeWlHr0ntTbX1LqWio1UZjoW4Y=;
 h=From:To:Subject;
 b=iF4ukKL0h90N2wDZxjbZopNGkbz0uKdLY2pJwNb6YGY04WggexLKJOVSuolfLFdmF
 jHnuOSvnQYicBpQcq/h2ZTPT01NG2oJmi6pEy3mkYCAHJ4i1q0cFFmeN7EvtPKohgL
 /Nbfx15A9bpc6N6T4IEezaOJ2RfUpYT5M+qwlTZg=
Received: from unknown (HELO localhost.localdomain)
 (tomek_n@o2.pl@[5.2.67.190]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 20 Apr 2020 20:12:44 +0200
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 20 Apr 2020 20:12:28 +0200
Message-Id: <20200420181228.52873-4-tomek_n@o2.pl>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200420181228.52873-1-tomek_n@o2.pl>
References: <20200420181228.52873-1-tomek_n@o2.pl>
MIME-Version: 1.0
X-WP-MailID: 947cf51b88bd65102f4ec27a02db4917
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [EdPU]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_111247_665829_32E42951 
X-CRM114-Status: UNSURE (   6.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tomek_n[at]o2.pl]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH v2 4/4] x86: move packages selection to
 profiles
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

This can be rather confusing for contributors, since there are three
layers in which packages can be added. As for now there are none profiles
other than generic (exception: geos) let's move packages to these profiles.
Being here this commit also removes packages in geode profiles already
enabled in kernel config.

Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
---

v1 -> v2
Really remove those packages.

 target/linux/x86/64/target.mk    |  2 --
 target/linux/x86/geode/target.mk | 10 ----------
 target/linux/x86/image/64.mk     |  2 ++
 target/linux/x86/image/geode.mk  |  7 +++----
 4 files changed, 5 insertions(+), 16 deletions(-)

diff --git a/target/linux/x86/64/target.mk b/target/linux/x86/64/target.mk
index 02b6c8debfe1..ece3d1bc9a16 100644
--- a/target/linux/x86/64/target.mk
+++ b/target/linux/x86/64/target.mk
@@ -1,7 +1,5 @@
 ARCH:=x86_64
 BOARDNAME:=x86_64
-DEFAULT_PACKAGES += kmod-e1000e kmod-e1000 kmod-r8169 kmod-igb kmod-bnx2 \
-	kmod-forcedeth
 
 define Target/Description
         Build images for 64 bit systems including virtualized guests.
diff --git a/target/linux/x86/geode/target.mk b/target/linux/x86/geode/target.mk
index 04ac926cfd95..a64d2baaeec2 100644
--- a/target/linux/x86/geode/target.mk
+++ b/target/linux/x86/geode/target.mk
@@ -1,15 +1,5 @@
 BOARDNAME:=AMD Geode based systems
 FEATURES += pci usb gpio
-DEFAULT_PACKAGES += \
-			kmod-crypto-hw-geode kmod-crypto-cbc \
-			kmod-ath5k kmod-ath9k \
-			kmod-ledtrig-heartbeat kmod-ledtrig-gpio \
-			kmod-ledtrig-netdev hwclock wpad-basic
-# Geos
-DEFAULT_PACKAGES += \
-		soloscli linux-atm br2684ctl ppp-mod-pppoa pppdump pppstats \
-		hwclock flashrom tc kmod-pppoa kmod-8139cp kmod-mppe \
-		kmod-usb-ohci-pci kmod-hwmon-lm90
 
 define Target/Description
 	Build firmware images for AMD Geode GX/LX based systems (net5501, alix, geos)
diff --git a/target/linux/x86/image/64.mk b/target/linux/x86/image/64.mk
index bde76ceba5dd..61e6d408d7ce 100644
--- a/target/linux/x86/image/64.mk
+++ b/target/linux/x86/image/64.mk
@@ -1,5 +1,7 @@
 define Device/generic
   DEVICE_TITLE := Generic x86/64
+  DEVICE_PACKAGES += kmod-bnx2 kmod-e1000e kmod-e1000 kmod-forcedeth kmod-igb \
+	kmod-r8169
   GRUB2_VARIANT := generic
 endef
 TARGET_DEVICES += generic
diff --git a/target/linux/x86/image/geode.mk b/target/linux/x86/image/geode.mk
index 0b463e36ed39..4ebb14888a8c 100644
--- a/target/linux/x86/image/geode.mk
+++ b/target/linux/x86/image/geode.mk
@@ -1,7 +1,7 @@
 define Device/generic
   DEVICE_TITLE := Generic x86/Geode
   DEVICE_PACKAGES += kmod-crypto-cbc kmod-crypto-hw-geode kmod-ledtrig-gpio \
-	kmod-ledtrig-heartbeat kmod-ledtrig-netdev kmod-via-rhine
+	kmod-ledtrig-heartbeat kmod-ledtrig-netdev
   GRUB2_VARIANT := legacy
 endef
 TARGET_DEVICES += generic
@@ -9,8 +9,7 @@ TARGET_DEVICES += generic
 define Device/geos
   $(call Device/generic)
   DEVICE_TITLE := Traverse Technologies Geos
-  DEVICE_PACKAGES += br2684ctl flashrom kmod-8139cp kmod-hwmon-lm90 kmod-mppe \
-	kmod-pppoa kmod-usb-ohci-pci linux-atm ppp-mod-pppoa pppdump pppstats \
-	soloscli tc
+  DEVICE_PACKAGES += br2684ctl flashrom kmod-hwmon-lm90 kmod-mppe kmod-pppoa \
+	kmod-usb-ohci-pci linux-atm ppp-mod-pppoa pppdump pppstats soloscli tc
 endef
 TARGET_DEVICES += geos
-- 
2.26.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
