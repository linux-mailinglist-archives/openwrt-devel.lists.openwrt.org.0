Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D459B12DD58
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 Jan 2020 03:08:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Eik5eut8QpUpbHsZDmf2vH2nXsAuzUXRM9JqXaC3mnQ=; b=oenUh/iv2PVdt30aelwvDO0IMW
	muXvpEFqjAJrIS5G+Ne5jXbJXnumAzw5I5sofbtM3rbMNc3v6fpZjhYdFbwGkuk6lWsB0jfhc/zeJ
	WMy3gzdbIFDcqbUP+6SHD/zyDY4VaBnMcZu/P7OwsBlvAefaheqYDNyalMbDXL+vjxT9ed5+B6soW
	rL5bZ0NHCmjUr3vcZgyjwAcIA8fz7WW0eqszVa9guqR2xCcQ1HYgkujYJFJz5JSNQxCCpMrtd4rVu
	T5kAXnNL5X3yPRI0OP0WIBrvq8QFtFAMRQLSH2Gday7HxatmYB9acVlB98xLa22dQh1zf/tolxVzM
	i/Qup7ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imTRG-0006FY-B4; Wed, 01 Jan 2020 02:08:46 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imTQv-00062g-Cr
 for openwrt-devel@lists.openwrt.org; Wed, 01 Jan 2020 02:08:26 +0000
Received: by mail-pf1-x441.google.com with SMTP id n9so12465346pff.13
 for <openwrt-devel@lists.openwrt.org>; Tue, 31 Dec 2019 18:08:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=Xt7efNF1YO8mVJTALL60L7haFB7miaKzIIxR0nlAFzw=;
 b=vhOzbBNGxx1gKGvjwiVtLUoh/JqdrKOIFkvLSTEX/jr0YJ07v3orJQIWQTpfISZuE0
 H2Md51uYOdYIZ39OMrTrO06tUEC25obQfTWscxSmDdbfdzRIt2PUJqFomezX+MwQ+NWm
 6EyYoNzFM5HE7/2YrSnhx9f/23rgAluiNqEe2c/Q57DDc7TA0CTNqCS/H6O9aculPPpB
 6o60D5PXCOpYwibjBfGJMjhRqNgIfUxHgCkYvSW8lpwrQ+HUdgOWohleJabY93auZgKw
 1eU+gteEc39u+7JD/NuHhg75XjixDsBWNCtUrIsnIcYOQ2p9jHwp2mxsLGdGCaettq4/
 ozug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Xt7efNF1YO8mVJTALL60L7haFB7miaKzIIxR0nlAFzw=;
 b=d4yGE5UcejlMnH1xl+a78uSteqXvt1Zf+HIdnqLO/lbnZ4gY2NO7EjltvY6PwJSRco
 hm4ZnWXhH3Q08lPK+AhqigUWg6THd6Jj99rnhMz2Wi4k+Cd8O7ItjL4Fcyyj4jnXPBV8
 xd2XatJsQOQgwcY3yiKXqKmgGdAErPl0PEfPNfN8vBP7cCn1aeOwX2y4nv181xSrl1hH
 XqJgGmTbxyVHLctTO1u6eQNY4S0Iarom8Hpm7VeoxhFaE7UDobhASST0cydvEQ8YExj6
 OMCKKJaaoUv8kfVmtKi18V4YYHYDUqgmjRay5yDUei3DkNHYXryEUyNnE+peaU+n7ABq
 ZVSQ==
X-Gm-Message-State: APjAAAXAtqwQSPROuvVLEN4FudrdKUL0HDJBKki4jx3XYBa/aSt1MNhx
 tRO1wglP4HTYZoh7iCTYuRuJo7qWz5I=
X-Google-Smtp-Source: APXvYqz06Fb1TK1aO8PGIpmXMJ8BaqD5xsDy7EGjuwwyqV4/xz9mTY+bUAIA0YKV7w+yhUcEDkcDOQ==
X-Received: by 2002:a63:4e22:: with SMTP id c34mr80067792pgb.214.1577844504683; 
 Tue, 31 Dec 2019 18:08:24 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id 17sm58788189pfv.142.2019.12.31.18.08.24
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Dec 2019 18:08:24 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 31 Dec 2019 18:08:22 -0800
Message-Id: <20200101020822.21784-2-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200101020822.21784-1-rosenp@gmail.com>
References: <20200101020822.21784-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_180825_433161_CAE88A83 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH 2/2] wireguard.sh: Run through shellcheck
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
 .../network/utils/wireguard-tools/files/wireguard.sh   | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/package/network/utils/wireguard-tools/files/wireguard.sh b/package/network/utils/wireguard-tools/files/wireguard.sh
index 1e424e7959..561a304ef3 100644
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
