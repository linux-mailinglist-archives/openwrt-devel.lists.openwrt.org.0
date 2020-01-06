Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3455130C27
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 Jan 2020 03:35:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ePAAeWZzvUlydXzoyxRZREp31vpM6loZcf9gf0ZDEMQ=; b=uqVI8ttFK1GwEc/1YdHnMHikPh
	zo8pfLkxly89+Ln8uaR7oIFfpYT9DpOuKqdc2MeEzL2fZee0Rfpcrf/IE8iGBQahA0pHqNRYzelAv
	Ao7zPNvyalBn8I8CdE65i/ufbcqHOcwV91rEdU7WOK/KzCGJeXUsu0iQvADHhQiM8dc/9XDCQakzl
	hiWXG9PoIbSnVKGIFQPhkb78H91GFt3WcPXE7LlYgMWh9UCd2maa/RndRKePiTuzYMSx8tOHjTqRW
	mnd7+B06tZOgP+uxfUNWSaJEZshMzcz4UeFAioVVqoMUAQzcB5kwF6sLjoPxmaHUHMuGxAJT216bm
	aivuzXxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioIEk-0003lV-SB; Mon, 06 Jan 2020 02:35:22 +0000
Received: from mail-pj1-x102a.google.com ([2607:f8b0:4864:20::102a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioIEQ-0003WC-WB
 for openwrt-devel@lists.openwrt.org; Mon, 06 Jan 2020 02:35:04 +0000
Received: by mail-pj1-x102a.google.com with SMTP id d5so6933648pjz.5
 for <openwrt-devel@lists.openwrt.org>; Sun, 05 Jan 2020 18:35:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=/iz54XGjYJBpLfPirIduNyDIzrZ9KbFOstCEackRg6U=;
 b=u8kMlP/2rCy2NY9wCAJnLW9bUCEzR155edodIFvRMgmGuOmjTuGIGWj52WRUeoH83/
 3gitBrkV3mjvk0fxsMM+bYoTjH7+A86eBtPJ6DPi3ZTD+aDKlsheWY55o5dI5TNNLFhN
 H7MuR8gAdGjj4W+TrnlmWZ8tj+7tctAUXf1pK1ozGZmz8VRDcARePSEPyQlrov0lb9qS
 WqZoPlffrDWfgvLIIOQ7aUBgrXbmBcm8s9MQC58C50xQwZeJzVmHGy8gKSDQv4oAERuc
 eHdwW3+i+j73rvVOfQMtQ3oJ4kVIUUBwB122r7+XdSBn0bOLchNFacU7dAG5sd6xTKfw
 ZF3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/iz54XGjYJBpLfPirIduNyDIzrZ9KbFOstCEackRg6U=;
 b=pC+YnqJB5EyAWROWXSMAumUjJUkDjg7czws46AvnpBt9vAT2yazfMwoCWgQcLBK6Gg
 vNfdOK2b0NkLT1+xthptVG0zvxGzEg9kBLuINaSFFuy9+Czl2Bp0QOi/lQHb/wZXERgc
 a+aHA9bTUVPvWdF0oSYVMVf2f0Wr0c3TIgO/pj173wqS6AGqwUsMkDoc0Aow738DljFS
 UNcpQW7rZWhbeZo1WwOThiQq850af8ccW87/I2PPyNdhrNYL2TKjaKrKkG1zNv7NOM+0
 W3niyV/tm+PSaeEhyWzxQQQN2laOzPHekwbfNhO7xWnPikg6O4/PwJSuu39TxDkzoIjb
 ViJA==
X-Gm-Message-State: APjAAAVHhaelarw0ck40pGS7suqD/HEGO/oVSPBYcI4XgR5AxUp2y5Tj
 p/2ehkdoonIpEiTs7EFP1X4vOp/ETrE=
X-Google-Smtp-Source: APXvYqz9rkv5uDM5hMIDbUYjZSwald/SqCZXMaoubSfzVG23aXZtM+RvQ8nm7cN69rTcnsk/Qv6nLw==
X-Received: by 2002:a17:90a:2a06:: with SMTP id
 i6mr40810614pjd.97.1578278100984; 
 Sun, 05 Jan 2020 18:35:00 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id j14sm68885266pgs.57.2020.01.05.18.35.00
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Jan 2020 18:35:00 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  5 Jan 2020 18:34:57 -0800
Message-Id: <20200106023457.170813-2-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200106023457.170813-1-rosenp@gmail.com>
References: <20200106023457.170813-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_183503_039103_AE2D9DFE 
X-CRM114-Status: UNSURE (   9.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH 2/2] wireguard.sh: run through shellcheck
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

Missing local variables and quoting fixes.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 package/network/utils/wireguard-tools/Makefile         |  2 +-
 .../network/utils/wireguard-tools/files/wireguard.sh   | 10 +++++++---
 2 files changed, 8 insertions(+), 4 deletions(-)

diff --git a/package/network/utils/wireguard-tools/Makefile b/package/network/utils/wireguard-tools/Makefile
index 2f6d307094..3336353af1 100644
--- a/package/network/utils/wireguard-tools/Makefile
+++ b/package/network/utils/wireguard-tools/Makefile
@@ -12,7 +12,7 @@ include $(INCLUDE_DIR)/kernel.mk
 PKG_NAME:=wireguard-tools
 
 PKG_VERSION:=1.0.20191226
-PKG_RELEASE:=1
+PKG_RELEASE:=2
 
 PKG_SOURCE:=wireguard-tools-$(PKG_VERSION).tar.xz
 PKG_SOURCE_URL:=https://git.zx2c4.com/wireguard-tools/snapshot/
diff --git a/package/network/utils/wireguard-tools/files/wireguard.sh b/package/network/utils/wireguard-tools/files/wireguard.sh
index 4bea67e033..5a81bcc1fb 100644
--- a/package/network/utils/wireguard-tools/files/wireguard.sh
+++ b/package/network/utils/wireguard-tools/files/wireguard.sh
@@ -68,7 +68,7 @@ proto_wireguard_setup_peer() {
 		[ "${persistent_keepalive}" ] && echo "PersistentKeepalive=${persistent_keepalive}"
 	} >> "${wg_cfg}"
 
-	if [ ${route_allowed_ips} -ne 0 ]; then
+	if [ "${route_allowed_ips}" -ne 0 ]; then
 		for allowed_ip in ${allowed_ips}; do
 			case "${allowed_ip}" in
 				*:*/*)
@@ -95,7 +95,11 @@ proto_wireguard_setup() {
 
 	local private_key
 	local listen_port
+	local addresses
 	local mtu
+	local fwmark
+	local ip6prefix
+	local nohostroute
 
 	config_load network
 	config_get private_key "${config}" "private_key"
@@ -126,7 +130,7 @@ proto_wireguard_setup() {
 	config_foreach proto_wireguard_setup_peer "wireguard_${config}"
 
 	# apply configuration file
-	${WG} setconf ${config} "${wg_cfg}"
+	${WG} setconf "${config}" "${wg_cfg}"
 	WG_RETURN=$?
 
 	rm -f "${wg_cfg}"
@@ -162,7 +166,7 @@ proto_wireguard_setup() {
 	if [ "${nohostroute}" != "1" ]; then
 		wg show "${config}" endpoints | \
 		sed -E 's/\[?([0-9.:a-f]+)\]?:([0-9]+)/\1 \2/' | \
-		while IFS=$'\t ' read -r key address port; do
+		while IFS="$(printf '\t')" read -r address port; do
 			[ -n "${port}" ] || continue
 			proto_add_host_dependency "${config}" "${address}"
 		done
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
