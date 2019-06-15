Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A15A8470BC
	for <lists+openwrt-devel@lfdr.de>; Sat, 15 Jun 2019 17:13:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RcN58MU5AZWWWDt3dBTFJ76J02a1YzlJghP6TbeeYdE=; b=GVm+sJlq6Gs8n+
	G8qOFvskWTLjEMJQnI1pV+ClbXYLs+EyzNhjbfufJvdNtEtwkoMANQQiIJY+UI/UZAvrw4V6DWawX
	8gaycuu6NdRkbZcLTRzE4kPjTQC9JsvGVqwdnIeZhjcDZcRuLI5M2oGckdyT1XoPF5dGbKZ+fcYW2
	VjurkYyIZCd5QdlaEh4JsY0FmulD/zrZYWewBBXJKwljdr8cyUJwrfdrrs+sSWDt1q4ujVipB/sDt
	ee7qzkp7WEFjkVNNneAHfOM1OVus85PPbWAuy0P63v2f6Bm584J+AMREdtNXCoCbiDlBana4XSfTk
	eg8UewLarwGRaoAj71EA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcAMv-0000Lk-CD; Sat, 15 Jun 2019 15:13:25 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcAMa-0000LN-Vm
 for openwrt-devel@lists.openwrt.org; Sat, 15 Jun 2019 15:13:07 +0000
Received: by mail-pg1-x541.google.com with SMTP id p10so3279421pgn.1
 for <openwrt-devel@lists.openwrt.org>; Sat, 15 Jun 2019 08:13:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2h83mRRBT/Pf2Hjg+EP407ex7dGYvBsxmPb3xx+Lric=;
 b=vPB9wvfIDY6GlNbbvA3Wfb3LVC6NoIWBOxvyGJFJKDHOPsVtgsd5b2WJ53lo2pSmdb
 jLQ5boCxdAXzQ9xb0lQiLuI6OnkWmMLqpjHorEnlw2KBZkakY2Cdvas4+ixvF3bL2ZA9
 u9ZiyUzxw8lvmbv0r3ysb5wmFxIvVmPl2rf845/yWpvZwm8h9bXJS1ZkG7Vc/J6TsG0t
 9I4nUibd+b1qDmpG5+5yZRll9dbZd2ocdLu/zuUYeNMVirqqFV7s29kZ6hTU6zcAHxPa
 CRKSrny9Hcrlji6PkR9fe5mreX3zIJQraYEEpCitb0o+VRaS7ZiaZL1kPe8MKOMn8euu
 3zoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2h83mRRBT/Pf2Hjg+EP407ex7dGYvBsxmPb3xx+Lric=;
 b=mwAkCQrftls5Qu/xgmKij7mRFwTlgDFPbL6f4AUbBo74rZMbEAmHGuLV/UYUWoZJrX
 583aQwNV7cxMrE3aEQ95UDkr3qeQb/ZnbeCCatVRmmSa83ML1/B/wBH0axOn/Jh4M4WV
 SuEyLQJrIpbARQhXV+VmKfs23AdqehWT6YVNTVmIRwv6GKUCTWscYQ1vCjuco8GwFwDw
 v+iFVb5Y5Cg0LWcXgM+UKS/TTFwdrp0YdZBJe675pnShZ63EbkxgSsj4YjywFP7RFoQM
 k+qJUdAYVyX6RiSGOUGNICRMo2SRB0+oY6xercpJxqk3cisTaOJEzqeZPIWLTuRXOgGp
 he7g==
X-Gm-Message-State: APjAAAW+G4HL0ekpdFSKG5uui+gy2X7T/qbUW2SdNLHRozHV8yCqywOR
 rTAd5S931dMu+MfzFf7TkZw=
X-Google-Smtp-Source: APXvYqwuvURLFO/wZnorY/xcHjf3EokA59Whmri12CeymE7G9sN2xLaxAOA2xjjRUXCPX2DF5uHgdw==
X-Received: by 2002:a17:90a:9f0b:: with SMTP id
 n11mr16370214pjp.98.1560611582213; 
 Sat, 15 Jun 2019 08:13:02 -0700 (PDT)
Received: from titan.hq.cloud.yunionyun.com
 (165.116.92.34.bc.googleusercontent.com. [34.92.116.165])
 by smtp.gmail.com with ESMTPSA id p43sm6470806pjp.4.2019.06.15.08.12.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 15 Jun 2019 08:13:01 -0700 (PDT)
From: Yousong Zhou <yszhou4tech@gmail.com>
To: chunkeey@gmail.com
Date: Sat, 15 Jun 2019 15:12:47 +0000
Message-Id: <20190615151248.87950-1-yszhou4tech@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190615_081305_255109_50AC451E 
X-CRM114-Status: UNSURE (   9.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yszhou4tech[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] build: do not deref symlinks when INSTALL_XX
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
Cc: Yousong Zhou <yszhou4tech@gmail.com>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This intends to serve as a guard against future use of the following
that may lead to multiple copies of the same binary be packaged and
installed to the target system

	$(INSTALL_DATA) $(PKG_INSTALL_DIR)/usr/lib/libyy.so.* $(1)

Signed-off-by: Yousong Zhou <yszhou4tech@gmail.com>
---
If this got accepted, pull requests like openwrt/packages#9233 will no
longer be necessary

 include/shell.sh | 29 +++++++++++++++++++++++++++++
 rules.mk         |  8 ++++----
 2 files changed, 33 insertions(+), 4 deletions(-)

diff --git a/include/shell.sh b/include/shell.sh
index 6ee0cf6030..fe72056099 100644
--- a/include/shell.sh
+++ b/include/shell.sh
@@ -13,3 +13,32 @@ isset() {
 	eval "var=\"\${$1}\""
 	[ -n "$var" ]
 }
+
+install() {
+	local arg
+	local dest
+	local args=()
+	local symlinks=()
+	local n=0
+
+	for arg in "$@"; do
+		if [ "${arg#-}" = "$arg" ]; then
+			dest="$arg"
+			if [ -h "$arg" ]; then
+				symlinks+=("$arg")
+			else
+				args+=("$arg")
+				n=$((n+1))
+			fi
+		else
+			args+=("$arg")
+		fi
+	done
+
+	if [ "$n" -ge 2 ]; then
+		command install "${args[@]}" || return 1
+	fi
+	if [ "${#symlinks[@]}" -ge 1 ]; then
+		cp --force --preserve --no-dereference "${symlinks[@]}" "$dest" || return 1
+	fi
+}
diff --git a/rules.mk b/rules.mk
index 80cb3d63f4..2b7f9ec873 100644
--- a/rules.mk
+++ b/rules.mk
@@ -278,11 +278,11 @@ FIND:=find
 PATCH:=patch
 PYTHON:=python
 
-INSTALL_BIN:=install -m0755
-INSTALL_SUID:=install -m4755
 INSTALL_DIR:=install -d -m0755
-INSTALL_DATA:=install -m0644
-INSTALL_CONF:=install -m0600
+INSTALL_BIN:=$(SH_FUNC) install -m0755
+INSTALL_SUID:=$(SH_FUNC) install -m4755
+INSTALL_DATA:=$(SH_FUNC) install -m0644
+INSTALL_CONF:=$(SH_FUNC) install -m0600
 
 TARGET_CC_NOCACHE:=$(TARGET_CC)
 TARGET_CXX_NOCACHE:=$(TARGET_CXX)

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
