Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB1F212E0ED
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 Jan 2020 23:52:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VO55f6+JPCB3DgbDfpMXCXXiEosR8KqsqSLGdyd9oyg=; b=YePawre6S488gser7JkeBmsqhO
	Vx5Jah5M5Wor0Cifg79YB5MF8+QnzEB4CCrigwKqPXpoyNF0BCnj7J64miR2h5/9ULps4lrGCnuS0
	tql5Zi6etUyZN+w3Potfjash/V5+OipNMBvMcSnFheD43P8jromaRD8K3YizmOEkdIiHAoRnh8VFK
	SOFQac6mql6P9lcUdaRGkML+sSrPor93wwE36Tblm0oBj0heIFDqrjOUzJvfCev8VTPEOlxEsdfM2
	x0mZU4Q7/Ix9Yb34/Mnbq5uGPVRs4dBvQHdL8ZP43EW1qXufW7Ri4iwTkryAKx/mVIdVEhSaSzUyU
	0U9353/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1immr3-0003Nr-4L; Wed, 01 Jan 2020 22:52:41 +0000
Received: from mail-pj1-x1032.google.com ([2607:f8b0:4864:20::1032])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1immqk-0003D2-Ov
 for openwrt-devel@lists.openwrt.org; Wed, 01 Jan 2020 22:52:24 +0000
Received: by mail-pj1-x1032.google.com with SMTP id bg7so2582226pjb.5
 for <openwrt-devel@lists.openwrt.org>; Wed, 01 Jan 2020 14:52:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=w/CG9IxFIW9MCvJ32L7ahJOXoGzcY15YvhEBjZNUcr4=;
 b=EBLWOkgjiFV7Q+Iz9gAV9d5h8AO9DmIhxoIS8ciMDSQwSC9b/Y5DgxRS47SpNGa7kU
 7omLRmtiD0z357IzQlbZdhp1hyJlqtdLR0nze325o/KkFH1Ek6FgJ43m7/bK0eALsNQ9
 2anHtTPdY9i6aHf8W18w8JD3A5BbF9KDVaK61d0GI/jyBAAZa5BgxWFteVxWsuYOWmqR
 z4z7LRQzQYbd/lvX13ySLraiDxPSn6mVcWYleM+ao5eYMa5SrcL0aHWb3t6nA5t11JZL
 FJPCGHlRreB9KNLR9eY32hH3tPDket3sff/Us/Vz8tazeWuCpiDQ6M6yyIz9fnJjTVNm
 vwFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=w/CG9IxFIW9MCvJ32L7ahJOXoGzcY15YvhEBjZNUcr4=;
 b=HD0F84CPywgydUN0VkccRgYIvuswPRXocneDc1Y4T9mXIyNrCJ/2pfjN1jIW+rkrBr
 cj4rauG0TzkR6dFIQ2+d5bMACIKRLZ2gtn9OrEJxWKSLKGttV4fiNQk57NHwy/TCsOMc
 l0jHa9Eg4mpXFmaa5h9C7D0fqXPCXO6sAkAaav2erYjt65knsVvY18yK47hLcTLuXHSu
 lQ9KQtowqIujM4d0JH7hh8HhL2MWl73biDGrE13nyhBgGZRtI3gq252YHgiBxy6Vjqgz
 p/Vu3jAm2yxlTVKWXvM2jjqr09pv4G7HevwSMIc7wsMqw6Wr4zuwE+ICD+1I2COPQ00z
 SMew==
X-Gm-Message-State: APjAAAWdFFVA1rPsUC5GTuwTtl860FIHXIUyFaEJwVslV/y8G2ww6qrB
 OFhbzm8CUtKuOCbecO+Th+gB+bJqvDc=
X-Google-Smtp-Source: APXvYqy9Ihfgt27CbIeTfNoFnFb5pvGToGCf1HT5rWtj4JbhgEwx9i2HLlAEJRxN/Xt+fFn3Sq0vSg==
X-Received: by 2002:a17:90a:9f84:: with SMTP id
 o4mr16218946pjp.88.1577919141778; 
 Wed, 01 Jan 2020 14:52:21 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id t187sm60471027pfd.21.2020.01.01.14.52.20
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Jan 2020 14:52:21 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  1 Jan 2020 14:52:17 -0800
Message-Id: <20200101225217.24240-2-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200101225217.24240-1-rosenp@gmail.com>
References: <20200101225217.24240-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_145222_805640_17EBD573 
X-CRM114-Status: UNSURE (   8.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCHv2 2/2] wireguard.sh: Run through shellcheck
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
 v2: Added PKG_RELEASE bump.
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
