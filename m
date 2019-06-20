Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC3A74CD88
	for <lists+openwrt-devel@lfdr.de>; Thu, 20 Jun 2019 14:17:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EPjsDh+TFkREOl8sD3njQx5QWOp1LMw60NcHJJurCAE=; b=ijN7K3GlHQYglC
	risv4gVVGEj7KEoZlHViE8TZ7kmoLQWPSv7ZaAuxlB9pvc6JXARjclj2fYS3X4K5NKGYQbmDbGLxW
	rSa4VdL7XTvhs8xE1FNbalb1XWjNdcDoUz7Rv6MVExv2IHyCORmj+D/8xR6OtWDv4DlgjpCKZinpa
	WRvf81MafRrP9D8mb3MpLvEEi5QsHIdlwx9sT/JJNPMIbCcw4X1xN5V1YNZIU373f/UZek5W/YOC5
	3mBWHphpWnEDU7P6bF7A68EkIBf4uv+W9sA1FSiBfJ3V2Kb8kC0YbIwoXatL4cDh9ikLOGisHcgRj
	8xRko+g1lu3N0eZDdvMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdw0J-0005K3-1v; Thu, 20 Jun 2019 12:17:23 +0000
Received: from mail-pg1-x52c.google.com ([2607:f8b0:4864:20::52c])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdw06-0005Jf-Q9
 for openwrt-devel@lists.openwrt.org; Thu, 20 Jun 2019 12:17:15 +0000
Received: by mail-pg1-x52c.google.com with SMTP id 145so1506451pgh.4
 for <openwrt-devel@lists.openwrt.org>; Thu, 20 Jun 2019 05:17:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=tBJRhXN4Xh1EdspRN4l0luiSc4SuYeEqDhkowSrqVGU=;
 b=aiqwMdNdUscfZWyApe0x6r2wjqq2vIjDuIThLuvFBc5uKeMgAsX8LHAPv/KB7GrP0f
 lPi5wg3grdSXvLj59nRxV1dNHi3cWSt689jvLs+RjFJ1bzrq98LlOsnWTaEGcfyq3BYs
 XHG4deLKZZLZL2GZLjxij1FTE3vh9OUIw9bIJy/aGP/1/RsLpGn0WUJ1Fskt0LEwuj18
 vnI7Bnh0Pii8MtW3pOfUYovzCJxkW4S6+eDDG3IfY3kYC4SNY2LFhlPw8tyzH9JyPfqG
 Q7BRv182D+N6zch7dltl3Vz7Q3FNnNa+YwWm3vTHNlAa7EsN2bDRVEfGz0SVb2bF9QFD
 loSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=tBJRhXN4Xh1EdspRN4l0luiSc4SuYeEqDhkowSrqVGU=;
 b=eWg5TYsAYEEkPf6HLbMthYvwohEhT+9nXG5Fl40IBS2PzUVPRPTGXHlqMPxF4k66pH
 HFa3qs9zHPMEDYBsJtU+3KDAzIfzKWnGiIviHWOD1BrBRcgC18gVcKfGx2pYSjk0QywN
 JMOVsAFS4L4teZUokSjpPI0jMu2RbzTFw2UI3PHsIOrStqitErXcdOasrsauPrZVvb1H
 7oVBy6C1gNwYtSNj1tnSDtJqnWkOQWLUKsK891PaVTULxvJf+ES6px1xEX3PhrVUiOuO
 eNsD+yD90KJ94TO9FzqHw3wL4NwDqh0nkVFIdLNjyDOa5O1XO1T8stqhFMcXNYZhQOOF
 8POg==
X-Gm-Message-State: APjAAAUBz819mSeFDan4661Sl8a/Ln0ui+wkf4e/XkCTX8rK+CPxPDtQ
 vO0ui8zuQA9Xy01e+tjtqfg=
X-Google-Smtp-Source: APXvYqwmK/5vIK03EDO1GcmwoISZVoQB+0/09E104OLR+zqBBfWMVN+lI60bVNt1czLGLX2oqangcw==
X-Received: by 2002:a62:ed09:: with SMTP id u9mr15145957pfh.23.1561033028883; 
 Thu, 20 Jun 2019 05:17:08 -0700 (PDT)
Received: from titan.hq.cloud.yunionyun.com
 (165.116.92.34.bc.googleusercontent.com. [34.92.116.165])
 by smtp.gmail.com with ESMTPSA id a21sm4478461pjh.10.2019.06.20.05.17.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 20 Jun 2019 05:17:07 -0700 (PDT)
From: Yousong Zhou <yszhou4tech@gmail.com>
To: ynezz@true.cz
Date: Thu, 20 Jun 2019 12:16:54 +0000
Message-Id: <20190620121654.113862-1-yszhou4tech@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_051714_219752_C9C5AD4E 
X-CRM114-Status: UNSURE (   8.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52c listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yszhou4tech[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] base-files: apply new sysctl.conf at
 postinst
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
Cc: Yousong Zhou <yszhou4tech@gmail.com>,
 Marco Sartorius <tidbits@ormoorgmen.info>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is mainly for kmod-br-netfilter.  To turn off
bridge-netfilter-call-xxx immediately after installation

While at it

 - Define filelist="/usr/lib/opkg/info/${pkgname}.list"
 - Reuse "[ -z "$root" ]"
 - Grep with "-m1"

Fixes FS#2300

Reported-by: Marco Sartorius <tidbits@ormoorgmen.info>
Signed-off-by: Yousong Zhou <yszhou4tech@gmail.com>
---
 package/base-files/Makefile               |  2 +-
 package/base-files/files/lib/functions.sh | 33 ++++++++++++++---------
 2 files changed, 21 insertions(+), 14 deletions(-)

diff --git a/package/base-files/Makefile b/package/base-files/Makefile
index 91d677acb3..a6dee5aa5a 100644
--- a/package/base-files/Makefile
+++ b/package/base-files/Makefile
@@ -12,7 +12,7 @@ include $(INCLUDE_DIR)/version.mk
 include $(INCLUDE_DIR)/feeds.mk
 
 PKG_NAME:=base-files
-PKG_RELEASE:=198
+PKG_RELEASE:=199
 PKG_FLAGS:=nonshared
 
 PKG_FILE_DEPENDS:=$(PLATFORM_DIR)/ $(GENERIC_PLATFORM_DIR)/base-files/
diff --git a/package/base-files/files/lib/functions.sh b/package/base-files/files/lib/functions.sh
index edce75e8ff..59ef693db0 100755
--- a/package/base-files/files/lib/functions.sh
+++ b/package/base-files/files/lib/functions.sh
@@ -213,6 +213,7 @@ add_group_and_user() {
 default_postinst() {
 	local root="${IPKG_INSTROOT}"
 	local pkgname="$(basename ${1%.*})"
+	local filelist="/usr/lib/opkg/info/${pkgname}.list"
 	local ret=0
 
 	add_group_and_user "${pkgname}"
@@ -227,23 +228,29 @@ default_postinst() {
 		rm -fR $root/rootfs-overlay/
 	fi
 
-	if [ -z "$root" ] && grep -q -s "^/etc/modules.d/" "/usr/lib/opkg/info/${pkgname}.list"; then
-		kmodloader
-	fi
+	if [ -z "$root" ]; then
+		if grep -m1 -q -s "^/etc/modules.d/" "$filelist"; then
+			kmodloader
+		fi
 
-	if [ -z "$root" ] && grep -q -s "^/etc/uci-defaults/" "/usr/lib/opkg/info/${pkgname}.list"; then
-		. /lib/functions/system.sh
-		[ -d /tmp/.uci ] || mkdir -p /tmp/.uci
-		for i in $(grep -s "^/etc/uci-defaults/" "/usr/lib/opkg/info/${pkgname}.list"); do
-			( [ -f "$i" ] && cd "$(dirname $i)" && . "$i" ) && rm -f "$i"
-		done
-		uci commit
-	fi
+		if grep -m1 -q -s "^/etc/sysctl.d/" "$filelist"; then
+			/etc/init.d/sysctl restart
+		fi
 
-	[ -n "$root" ] || rm -f /tmp/luci-indexcache 2>/dev/null
+		if grep -m1 -q -s "^/etc/uci-defaults/" "$filelist"; then
+			. /lib/functions/system.sh
+			[ -d /tmp/.uci ] || mkdir -p /tmp/.uci
+			for i in $(grep -s "^/etc/uci-defaults/" "$filelist"); do
+				( [ -f "$i" ] && cd "$(dirname $i)" && . "$i" ) && rm -f "$i"
+			done
+			uci commit
+		fi
+
+		rm -f /tmp/luci-indexcache 2>/dev/null
+	fi
 
 	local shell="$(which bash)"
-	for i in $(grep -s "^/etc/init.d/" "$root/usr/lib/opkg/info/${pkgname}.list"); do
+	for i in $(grep -s "^/etc/init.d/" "$root$filelist"); do
 		if [ -n "$root" ]; then
 			${shell:-/bin/sh} "$root/etc/rc.common" "$root$i" enable
 		else

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
