Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC54A1F420B
	for <lists+openwrt-devel@lfdr.de>; Tue,  9 Jun 2020 19:19:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GSYRW4e+od0jefKAOjXWmJkieAxPYJQ6QfGwV6NA7jA=; b=XnO7uvBK3EcLga
	UsDvidNcVUh6HploqBb1TUaIHTnJ9qn09dzAliGy0z96QC/Emtb5OK8h7p+47txuLewk1fMV15m9R
	MZLxXxgDuE4oGnBniHgvkZP8mpRc4/ZkXkNW3eyXZBVP8maRjlO6g5PRLGzR+FOjS0fKUtcwTCOs1
	rU3VPKNewqj12S2DbxdI+efGdcoAVzNgjXhnzX4sOvhqTKS0whcz5Gha+atg+I8oj3grFE2F+Y1pi
	Nf546dzmJB7N0IV4zM6WurdFxZWrQ4gm1Bjg0TajXoRFO5acVGxEsv6HHZRmohbhBq0MPR3Pjd68l
	AzpHNhXh6aNm7+jEdK/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jihu1-0002eJ-9z; Tue, 09 Jun 2020 17:19:09 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jihtt-0002dk-Gx
 for openwrt-devel@lists.openwrt.org; Tue, 09 Jun 2020 17:19:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1591723137;
 bh=C+xeG2qpPTDoBdl1r1+RROnknzZF6Vr6GRdnHiOGrNY=;
 h=X-UI-Sender-Class:Date:From:To:Cc:Subject;
 b=ST8QQGOid/SjUF/3yY6PzHcANIZ+9JIEgMz2S81IwSjUMtVmjXnEjjeC/dKwjlcGT
 yDnp14YTZwxuUtL9rBZLC9w9y4AFoXXQmulfSCZrAsAm8wKTwos+3QqgBV+lJOffB8
 9DSF/TqW8vDMXNnMCajJ1z/wkRduz0DdPUedejBU=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from darth.lan ([62.14.67.92]) by mail.gmx.com (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1Mel3t-1j7zdd3Xs5-00anW4; Tue, 09
 Jun 2020 19:18:57 +0200
Date: Tue, 9 Jun 2020 19:18:55 +0200
From: Sebastian Kemper <sebastian_ml@gmx.net>
To: openwrt-devel@lists.openwrt.org
Message-ID: <20200609171855.GA6432@darth.lan>
Mail-Followup-To: openwrt-devel@lists.openwrt.org,
 John Crispin <john@phrozen.org>
MIME-Version: 1.0
Content-Disposition: inline
X-Provags-ID: V03:K1:CwMlaDpr0L0zIbu0YZmmvthBvwXHvomfjG7fTBYZ1FOJJAXZD1z
 rfZAxAuwlPe2Bik2ZIeEfUOQApQeqIAh9MgnwEIbhPPZWw0Q3GP7207ETO7sEeth9EwR1Uw
 gVUvFgGJdtuF4EJnB9yqpATrqmYiqT4r0ciFcY+CSGgFayk+j94r5r29CWLxwNW3I2TofaF
 9T/LBSzeMxwe8JePGtNIg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:rnF2YLbynrU=:v4Iz50WoYFa2oSrW1kvYad
 w52D1Rnrcw4fePCSwKgEkSesR0v8MocBgEZk/sLo4MhriQkXzvaaC2L4pjLLed13IZVkP/2Ii
 WbyBbOWL9DhP/IcNmCQHjW4vKAIJc4HaCXnfmp5rdq2Yt1IN+rSqrRVOP9SM74C58zUbc4qjb
 /6msYdm9N1d7satXefUCeuR9BQNVflYBG1OzFaFkpzoIBUsCqFGKva/gMjkIrpIsVuydjgD9z
 cPm3aiIe9l9VaRLKKyP6MLr9zXRiuXdWlCcsUS9CFZsU9ONMqgWs+qyxcbOu6yrGx8o+mlhgM
 k6+WcckgF/zKYzsneMKuy97GQUAQlbn/mJqOxjOK/LnteEXSD+R3ftnm2oKH09+ZRewFaSOQA
 R1COQnM+C9/PvJHDA87/96bZpiQxPDHK2bDAn7nwJFSmh9kk/8L9FJmZ2w1R4kVnxf2/wS5NA
 Zs4EqnrNcfkV2VxhFyJ/Gj38MtzaM0G/i36x6RCg4rirXXDFWb1ulsULpweXL9sQsgnMSwqwZ
 xM9hKOP6oaiyxKF8kyAjOfYBchZQtW9zDhEFBnuJ0oFP0cd5HOnajnA+sNXOxZOTpsKncTqke
 eKK1Z+izQT7LTZkG9HRKISujwPsS0U+Cs68xNuyW8M/mpZclemt95artFEQujZOXovJguMNEy
 e+MplPdme0YwK5ycK09dr/WvmQk+VHTA5KXeCLb5je1F4ZPHNsT5IF/q0ZxQ07o4RBee1aVfu
 KEEqbDNv84Ut7VLd0Pe92bRFZ6JahM6E1cFYUaheoPRMjvqICxJqILVBZhTahz5g9dws02KrQ
 Y5lLJFUu/uFHbjFcHBOhxrr5ibcCaKr16eoWjbUKjHjIUPCDK9BqVsc1C2vfgZzb6qHYTwmHU
 XxgP7guik60PKRK60XLOuiQAjV8F4/IN1tVFMZnvTRVVvppPZJ9kcazAgCdYp4KrvO7RWWLeQ
 2vHIbxroAex23NHSbq+bSRG1qo83zy+aVOqvfKcFZwHNWTr5NZ42652ezfW0ahW8Df4BkyVU3
 ydCDWmoMHeHZDibK6FTmbW6MoWiSYTXKOIXZYlfsBMXY0eDH3te8mlMnVZlyoKBuvZrq7e0gN
 JK0c9m2up8kuspH5NYEZGO+hAXd8xtW5JapwsBa+DKwW03pHzchdwiqlkMAWNoWUi7ScVJS1Q
 z7ZGkAU86Bg/t5n9F5mHezuNzKjjrrgtfoDGqStYGWn29I8jWeWIylmCQ2CzubEChG/C/K8i7
 kqs331PKZ2vT/nMwY
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_101901_898941_3FBAEE3B 
X-CRM114-Status: GOOD (  15.46  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sebastian_ml[at]gmx.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.22 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] ltq-vmmc: update permission handling
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
Cc: John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This commit addresses two permission issues.

1. The firmware is currently just copied. It can end up with o= on the
   device (this is the case for voice_ar9_firmware.bin for instance).
   Instead of copying it the Makefile is changed to use the macro
   "$(INSTALL_DATA)" in order for the file to be world-readable.
2. A configuration file /etc/config/vmmc is added and the init script
   updated accordingly, to allow changing the group of the device nodes.
   Like this applications running as non-root may access the device
   nodes after the user changes the configuration to the appropriate
   group (for instance "asterisk"). Currently asterisk users update
   init scripts to fix the permissions. With a configuration option the
   user experience is easier and more straight-forward.

Signed-off-by: Sebastian Kemper <sebastian_ml@gmx.net>
---
 package/kernel/lantiq/ltq-vmmc/Makefile       |  7 +++---
 .../kernel/lantiq/ltq-vmmc/files/vmmc.conf    |  6 +++++
 .../kernel/lantiq/ltq-vmmc/files/vmmc.init    | 25 +++++++++++--------
 3 files changed, 24 insertions(+), 14 deletions(-)
 create mode 100644 package/kernel/lantiq/ltq-vmmc/files/vmmc.conf

diff --git a/package/kernel/lantiq/ltq-vmmc/Makefile b/package/kernel/lantiq/ltq-vmmc/Makefile
index 99263cce43..a1ea142925 100644
--- a/package/kernel/lantiq/ltq-vmmc/Makefile
+++ b/package/kernel/lantiq/ltq-vmmc/Makefile
@@ -10,7 +10,7 @@ include $(INCLUDE_DIR)/kernel.mk

 PKG_NAME:=drv_vmmc
 PKG_VERSION:=1.9.0
-PKG_RELEASE:=3
+PKG_RELEASE:=4

 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.bz2
 PKG_HASH:=707f515eb727c032418c4da67d7e86884bb56cdc2a606e8f6ded6057d8767e57
@@ -168,9 +168,10 @@ define Build/InstallDev
 endef

 define KernelPackage/ltq-vmmc/install
-	$(INSTALL_DIR) $(1)/etc/init.d $(1)/$(FW_DIR)
+	$(INSTALL_DIR) $(1)/etc/config $(1)/etc/init.d $(1)/$(FW_DIR)
 	$(INSTALL_BIN) ./files/vmmc.init $(1)/etc/init.d/vmmc
-	$(CP) $(PKG_BUILD_DIR)/firmware/$(FW_SOURCE) $(1)/$(FW_DIR)/$(FW_TARGET)
+	$(INSTALL_CONF) ./files/vmmc.conf $(1)/etc/config/vmmc
+	$(INSTALL_DATA) $(PKG_BUILD_DIR)/firmware/$(FW_SOURCE) $(1)/$(FW_DIR)/$(FW_TARGET)
 	ln -s /$(FW_DIR)/$(FW_TARGET) $(1)/$(FW_DIR)/$(FW_TARGET_GENERIC)
 	$(CP) $(PKG_BUILD_DIR)/coef/$(COEF_SRC) $(1)/$(FW_DIR)/$(COEF_TARGET)
 	$(CP) $(PKG_BUILD_DIR)/coef/$(COEF_SRC_FXO) $(1)/$(FW_DIR)/$(COEF_TARGET_FXO)
diff --git a/package/kernel/lantiq/ltq-vmmc/files/vmmc.conf b/package/kernel/lantiq/ltq-vmmc/files/vmmc.conf
new file mode 100644
index 0000000000..80abe58d79
--- /dev/null
+++ b/package/kernel/lantiq/ltq-vmmc/files/vmmc.conf
@@ -0,0 +1,6 @@
+# /dev/vmmc* nodes are by default created with ownership root:root. With
+# the below setting the group can be changed, so that software like
+# asterisk not running as root can properly access the hardware.
+
+config vmmc 'nodes'
+	#option group "asterisk"
diff --git a/package/kernel/lantiq/ltq-vmmc/files/vmmc.init b/package/kernel/lantiq/ltq-vmmc/files/vmmc.init
index 100a97dc45..3734fcecb3 100644
--- a/package/kernel/lantiq/ltq-vmmc/files/vmmc.init
+++ b/package/kernel/lantiq/ltq-vmmc/files/vmmc.init
@@ -5,15 +5,18 @@
 START=31

 start() {
-	[ ! -c /dev/vmmc10 ] && {
-		mknod /dev/vmmc10 c 122 10
-		mknod /dev/vmmc11 c 122 11
-		mknod /dev/vmmc12 c 122 12
-		mknod /dev/vmmc13 c 122 13
-		mknod /dev/vmmc14 c 122 14
-		mknod /dev/vmmc15 c 122 15
-		mknod /dev/vmmc16 c 122 16
-		mknod /dev/vmmc17 c 122 17
-		mknod /dev/vmmc18 c 122 18
-	}
+	config_load vmmc
+	config_get GROUP nodes group ""
+
+	if [ -n "$GROUP" ]; then
+		group_exists "$GROUP" || GROUP=
+	fi
+
+	for i in 10 11 12 13 14 15 16 17 18; do
+		if ! [ -e /dev/vmmc$i ]; then
+			mknod -m 664 /dev/vmmc$i c 122 $i
+			[ -n "$GROUP" ] && [ -c /dev/vmmc$i ] && \
+				chown :"$GROUP" /dev/vmmc$i
+		fi
+	done
 }
--
2.26.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
