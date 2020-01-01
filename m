Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8A1D12DD57
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 Jan 2020 03:08:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=d55HKA8DnAzmN9qSNst68FB87WPtHc5UDAcim8hPWR0=; b=dJUBNl4av4/HbR
	9XgJCFnSSWuHR8Bz61vJ20ojmYvYfk5VtkuceMPpszKBHpqAxnujy0dGBoAqLQ+6Q+KPBWAk9IcJk
	u1Q2GV4fs8h97vQxU2ECVf+9akwMtUPvoT29Eof5sUAH/Uam8iNChJnMTUwugGqsvdIXcYEv00L5v
	WEBKrRsU9dVHnw4fwXXXGnEOoQujHvEJs62I6bGJ+25gtKeeNUmxqjLZ8ntMICvR7+gTCVt/smVpn
	BLPAv3Etbx4Z4ivecTcWXt7EUnO55jeIc//4+BxLhps026XmcdeCxgC8ymF8NQb0+nu+5fyNndFok
	iFeK+Wv5hWDcbL7hJ+QQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imTR4-00063J-E5; Wed, 01 Jan 2020 02:08:34 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imTQu-00062N-TR
 for openwrt-devel@lists.openwrt.org; Wed, 01 Jan 2020 02:08:26 +0000
Received: by mail-pl1-x644.google.com with SMTP id b22so16396182pls.12
 for <openwrt-devel@lists.openwrt.org>; Tue, 31 Dec 2019 18:08:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZzYhx/S2lpNo+bKwEw5TrAQdv0qw9lohk4KE7ziLMVI=;
 b=YTJm8Mf6FaQZrGSb7VPyrauBl8VJIeW9W/GebM8y0bTw0HNdcJME1q5jaPs9WzcgBV
 vfEiPMHzhXMY4EEtspnfcHJEKN0vzz0q0UizpuVyDZ5hnGrQbzUrcb3kXxR9ZyqEWGGV
 7j+krfqsWK+p9ILhZNN+jVIqGlorUhCKeEt//u2+uGwWZ7JdQQilmWBeeEzq3uPejpV7
 Jj8VkuKRLPrZyRbv1lvg65EHXzn67ioZXeFM/e8yETgob8WNnC+Vhten95O4ZyfnUNbL
 iz+oxRKUr4ORhWQoPYtpQx6nI9/CSqxlIe+PhPw4Qc0axcP1CyYnThn9KTrS/syK890S
 /hmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZzYhx/S2lpNo+bKwEw5TrAQdv0qw9lohk4KE7ziLMVI=;
 b=Sfqf8AUgff2UWpxNsO5KdDMxy1nxKg64ngIoWxFXCx9BG2qjDByOxBkpfjh0DXR4kt
 98+BwZjIjuaLxtwDQEAtwEkzkGrmHIMXq4QrtkzSzrb286gTGwXvVBcduiG2LpDEY59B
 Jwsuuj6J5dae92PN4NqNsm/SYxOuXcUQwhIsyClCPUIQJx0cGM86Fju9MgrIcP2sqAM2
 ZSNTnwyHV/PsCRmkYuW3VJxvCbvfz45LJrOnF79OO8ykOQ/EVahVGor8f0e1+XjD2GG4
 X5R0L09cwo+qg3OW6TyAZaocKtiwOxj/HSygKrF1RRepGCZhPAUVHDeGAZIrd8XJmD2z
 23NQ==
X-Gm-Message-State: APjAAAWkV6VcvqDUS3OuRVmhJbYueD0JZ+dTDev5k+Lpu8ykFnXuBt0G
 9oawMFlCh/x9/WJrPoLCj7fwwqm+16M=
X-Google-Smtp-Source: APXvYqyUnMYjrFdq3DRRZcLgYcQgL4SfEQhi+rTo7V7t/6DgDQEwPhAng//+pyVICsnv7VSWdtbVRw==
X-Received: by 2002:a17:902:d686:: with SMTP id
 v6mr79122793ply.266.1577844503800; 
 Tue, 31 Dec 2019 18:08:23 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id 17sm58788189pfv.142.2019.12.31.18.08.22
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Dec 2019 18:08:23 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 31 Dec 2019 18:08:21 -0800
Message-Id: <20200101020822.21784-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_180824_950834_80CA71CD 
X-CRM114-Status: UNSURE (   8.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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
Subject: [OpenWrt-Devel] [PATCH 1/2] wireguard.sh: Batch file writes
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

Speeds up config generation.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 .../utils/wireguard-tools/files/wireguard.sh  | 32 ++++++++-----------
 1 file changed, 14 insertions(+), 18 deletions(-)

diff --git a/package/network/utils/wireguard-tools/files/wireguard.sh b/package/network/utils/wireguard-tools/files/wireguard.sh
index 4c811c6ba9..1e424e7959 100644
--- a/package/network/utils/wireguard-tools/files/wireguard.sh
+++ b/package/network/utils/wireguard-tools/files/wireguard.sh
@@ -42,13 +42,12 @@ proto_wireguard_setup_peer() {
 	config_get endpoint_port "${peer_config}" "endpoint_port"
 	config_get persistent_keepalive "${peer_config}" "persistent_keepalive"
 
-	echo "[Peer]" >> "${wg_cfg}"
-	echo "PublicKey=${public_key}" >> "${wg_cfg}"
-	if [ "${preshared_key}" ]; then
-		echo "PresharedKey=${preshared_key}" >> "${wg_cfg}"
-	fi
+	{
+	echo "[Peer]"
+	echo "PublicKey=${public_key}"
+	[ "${preshared_key}" ] && echo "PresharedKey=${preshared_key}"
 	for allowed_ip in $allowed_ips; do
-		echo "AllowedIPs=${allowed_ip}" >> "${wg_cfg}"
+		echo "AllowedIPs=${allowed_ip}"
 	done
 	if [ "${endpoint_host}" ]; then
 		case "${endpoint_host}" in
@@ -64,11 +63,10 @@ proto_wireguard_setup_peer() {
 		else
 			endpoint="${endpoint}:51820"
 		fi
-		echo "Endpoint=${endpoint}" >> "${wg_cfg}"
-	fi
-	if [ "${persistent_keepalive}" ]; then
-		echo "PersistentKeepalive=${persistent_keepalive}" >> "${wg_cfg}"
+		echo "Endpoint=${endpoint}"
 	fi
+	[ "${persistent_keepalive}" ] && echo "PersistentKeepalive=${persistent_keepalive}"
+	} >> "${wg_cfg}"
 
 	if [ ${route_allowed_ips} -ne 0 ]; then
 		for allowed_ip in ${allowed_ips}; do
@@ -119,14 +117,12 @@ proto_wireguard_setup() {
 
 	umask 077
 	mkdir -p "${wg_dir}"
-	echo "[Interface]" > "${wg_cfg}"
-	echo "PrivateKey=${private_key}" >> "${wg_cfg}"
-	if [ "${listen_port}" ]; then
-		echo "ListenPort=${listen_port}" >> "${wg_cfg}"
-	fi
-	if [ "${fwmark}" ]; then
-		echo "FwMark=${fwmark}" >> "${wg_cfg}"
-	fi
+	{
+		echo "[Interface]"
+		echo "PrivateKey=${private_key}"
+		[ "${listen_port}" ] && echo "ListenPort=${listen_port}"
+		[ "${fwmark}" ] && echo "FwMark=${fwmark}"
+	} > "${wg_cfg}"
 	config_foreach proto_wireguard_setup_peer "wireguard_${config}"
 
 	# apply configuration file
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
