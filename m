Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B56D9B806
	for <lists+openwrt-devel@lfdr.de>; Fri, 23 Aug 2019 23:06:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cbM5e9zn2K/0DtQONjsUpguLDovA7xOXgMwtrzYaRhY=; b=MNhyDNg9wSNwt3
	e+dBsHqOcx09Pip749rXxKLLiXeAGzl09/aPmlVYlsEiGN79tDJXxEXSvFrXE2/L4TNEeRfa8bzzA
	Dop7ir9qBqlH0RpPT/qO1r32nREIiRLaNJtlALvLqZIx1/fq4BXsCF/HbbF2Ciak8Gad7RUUfGS1a
	9ygtYysTiMNX60z4cN+2RxL9n2LPFQdCZFIK21BHBkFOK9Q0VU1Ef5tj9mBGnbIcvFPID8z7H9U13
	sC0bELMkWFi/dsBWvaWALrGq3/KUKCncckqGkiWxu6R+ra2z2715SQwdUJlAIUZbWNoTZnbs9iNRr
	QQqoYCv/RwM05hRSj4SA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1Gll-0003XF-Hc; Fri, 23 Aug 2019 21:06:49 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1GlX-0003MM-07
 for openwrt-devel@lists.openwrt.org; Fri, 23 Aug 2019 21:06:36 +0000
Received: by mail-wm1-x341.google.com with SMTP id 10so10025520wmp.3
 for <openwrt-devel@lists.openwrt.org>; Fri, 23 Aug 2019 14:06:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2Dqpa5qML0ko8r2Yy3aIwg779SaBn3b3leAczsxwc0Y=;
 b=ut2RlT55CTjKW+fm3kjca2umgkuqJxQjpNbh1KoYyKW07/5gah/fICGnkeocB97b+W
 520ArB7YTyJidN9lNG0XmMlC30YZHAe33Ec4Unvr+Rjmd6LhBG5nG7LYuUNa0h+64dJV
 gKdWkPf9r4SNVtAn0cl4U7C4aM9edpbTbpeIWFov/RSZy9Qm0++x82o48u2PaKQXCMit
 vEWsQ5nbOdgU5qICHk90ahpTiZ/4zdGWlKDj6q9QbsuYIsrqI3rv6IAfZOMFBctzg9xu
 LKQLQKHurSu4BqIGcJbT5qgzaZH+Qlg7vAq2T6ByHg7J/6GdglxStEMwg3LUEMzAZAE7
 T/FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2Dqpa5qML0ko8r2Yy3aIwg779SaBn3b3leAczsxwc0Y=;
 b=ddSubbr8fhSwaVJLKudrZNCxiVdRtnq15HHkU6kAIKKKRTtr/COhtywpzy2g+G4QTZ
 lKurG7SjtTambDOHLjfN1ZfmpXjLPz7GrKqXB4axURUEeH/pinbB9CGsyA3vfkuoeNCG
 SNduF2KhUCX9bficl6i6v8qy/Cg2Hw21DF4irMCqB0JHYXcWwqOFOoG8F3WzRrDe2NCy
 I7biCYuIyuZPaDMg/Q6WMsT7pwlPQe1b2vw+tGa0/kiF80D6waQawZkfTEHY2rxj08a3
 xRlqIxtPjSd2fGL+ObAzDwi+iJ8e7Ls+PzXlKsywmkpSYifthmI5as8qON1nDmKPvYTR
 dQ+g==
X-Gm-Message-State: APjAAAXwx1jT6NWtivCdtyE7wkan0dTo94mJVj8VE787AitNJdTxUAI0
 1LkKD52WcYM1xKh8KXS16n9ABxbw
X-Google-Smtp-Source: APXvYqzINyzMD/NBbbDx2vafqC/OIx63RzsRhlWGiOaFKIcP/nQbJSCIS6fRDSCoQ4j/rdsrBtq5GQ==
X-Received: by 2002:a7b:cbc6:: with SMTP id n6mr7724643wmi.6.1566594392977;
 Fri, 23 Aug 2019 14:06:32 -0700 (PDT)
Received: from debian64.daheim (p5B0D7455.dip0.t-ipconnect.de. [91.13.116.85])
 by smtp.gmail.com with ESMTPSA id
 t13sm4778230wrr.0.2019.08.23.14.06.32
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Aug 2019 14:06:32 -0700 (PDT)
Received: from chuck by debian64.daheim with local (Exim 4.92.1)
 (envelope-from <chunkeey@gmail.com>) id 1i1GlT-0006BY-Tf
 for openwrt-devel@lists.openwrt.org; Fri, 23 Aug 2019 23:06:31 +0200
From: Christian Lamparter <chunkeey@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 23 Aug 2019 23:06:30 +0200
Message-Id: <b58f9044226dcb23a2fc89def656d66b92ee00b1.1566587318.git.chunkeey@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_140635_045107_7F2FD05F 
X-CRM114-Status: GOOD (  13.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chunkeey[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [RFC PATCH 1/2] softoff: add softoff utility
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

The softoff package replaces the poweroff command with a
scripts that utilize the existing sysupgrade code to perform
a "soft" poweroff (in a way that the device is no longer
responsive). So this makes it safer to disconnect and
be moved.

By design, sysupgrade already stops services and closes
any running application, as well as unmounts any active
partition.
This scripts piggybacks on what's provided by sysupgrade,
but also puts all active SATA/SCSI/UAS/USB-attached HDDs
into standby by telling the kernel they are no longer
needed (and the kernel will do the rest) and tries to
switch all available LEDs to the off state (the trigger
"none" will only switch off managed LEDs) before causes
the device to enter a infinite loop.

This works especially well with embedded devices without a
real poweroff method (many SoC platform drivers just map
the shutdown() to reset()) or suffer because the platform
has a no-way-out watchdog that can trigger a hardware
reboot which can bring the device out of its "poweroff"
state.

Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
---
 package/utils/softoff/Makefile      | 36 +++++++++++++++++++++++++++++
 package/utils/softoff/files/softoff | 36 +++++++++++++++++++++++++++++
 2 files changed, 72 insertions(+)
 create mode 100644 package/utils/softoff/Makefile
 create mode 100644 package/utils/softoff/files/softoff

diff --git a/package/utils/softoff/Makefile b/package/utils/softoff/Makefile
new file mode 100644
index 0000000000..28930e9bde
--- /dev/null
+++ b/package/utils/softoff/Makefile
@@ -0,0 +1,36 @@
+include $(TOPDIR)/rules.mk
+
+PKG_NAME:=softoff
+PKG_RELEASE:=1
+PKG_LICENSE:=GPL-2.0
+PKG_MAINTAINER:=Christian Lamparter <chunkeey@gmail.com>
+
+include $(INCLUDE_DIR)/package.mk
+
+define Package/softoff
+	PKGARCH:=all
+	SECTION:=utils
+	CATEGORY:=Utilities
+	TITLE:=softoff utility
+endef
+
+define Package/softoff/description
+  the softoff package replaces the poweroff command with scripts that
+  utilize the sysupgrade code to perform a "softer" poweroff.
+  The script will try to close any running application, unmount any active
+  partition as well as putting any connected HDD to standby (for shutdown).
+  This allows embedded devices with out a working poweroff method to become
+  unavailable.
+endef
+
+define Build/Compile
+	true
+endef
+
+define Package/softoff/install-overlay
+	$(INSTALL_DIR)	$(1)/sbin
+	$(INSTALL_BIN)	./files/softoff	$(1)/sbin/softoff
+	$(LN) softoff $(1)/sbin/poweroff
+endef
+
+$(eval $(call BuildPackage,softoff))
diff --git a/package/utils/softoff/files/softoff b/package/utils/softoff/files/softoff
new file mode 100644
index 0000000000..e25bdba8f2
--- /dev/null
+++ b/package/utils/softoff/files/softoff
@@ -0,0 +1,36 @@
+#!/bin/sh
+
+. /lib/functions.sh
+. /lib/functions/system.sh
+. /lib/upgrade/common.sh
+
+case "$1" in
+stage2)
+	for dev in /sys/block/sd*[a-z]; do
+		[ -d "$dev" ] && echo "1" > "$dev/device/delete"
+	done
+
+	for led in /sys/class/leds/*; do
+		[ -d "$led" ] && {
+			echo "none" > "$led/trigger"
+			echo "0" > "$led/brightness"
+		}
+	done
+
+	while :; do
+		sleep 10000;
+	done
+	;;
+*)
+	install_bin /sbin/upgraded
+	install_bin "$0"
+
+	ifdown -a
+
+	ubus call system sysupgrade "{
+		\"prefix\": $(json_string "$RAM_ROOT"),
+		\"path\": $(json_string "badfile"),
+		\"command\": $(json_string "$0 stage2")
+	}"
+	;;
+esac
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
