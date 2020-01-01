Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C124A12E0EC
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 Jan 2020 23:52:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AOJZtF3VtUBnUb82desb4e4TqiOb05WgwDSzGOI7jjA=; b=S5JOMb5rNHDrzM
	wS2CbvchPHiAhBWdmXEYHdzEVL77rlbAG3o4eWeR61ouvOYZ8FJNmjpi9NpFpS3d1ydA9ts+u5vca
	AbC65wkFs4Ya2qqcfGvjLKn9EDwyiThY8AD8ymnAy0QFJvHuJ+KABCFYEJiGxKtX/abOmVKrapjwV
	gYfclsmv+S+qb00/Z4hwm5tX1cSWMfVVIxuNazBhs/GK3lUZokLlhCVgLFNlrAO0U6IaL+HervC+B
	RsLprIqTHYpMsKIM49b8WTkkNaCbDe4TNbPRiuDtNJulv/eAhY8qg+6jPG6zdYwauahn49LILNzcD
	uKlTJJDLfcpg707lBdNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1immqv-0003DW-63; Wed, 01 Jan 2020 22:52:33 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1immqk-0003Cs-73
 for openwrt-devel@lists.openwrt.org; Wed, 01 Jan 2020 22:52:23 +0000
Received: by mail-pj1-x1044.google.com with SMTP id u63so1500958pjb.0
 for <openwrt-devel@lists.openwrt.org>; Wed, 01 Jan 2020 14:52:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sxlay/1s9aywPRoyeMaHjRdmiwPcAG5KjYldNDUiZko=;
 b=tmT0zIjIklaCd52wshdkjByCP+KncIrN+R+22n4MhBDMnPaCM7sje2Yl0Gw9jw/Yko
 fi5kspsGOAHzQvN7O3iIS5DZQPGIffFzyEr+p9mkHOWq6KTzVqqHYW7ICEjRFVIKLNIu
 X07L/NInOzuDtmLDKWuD/7RD86xHrBE/yqqc7JACbJE8cOuQtfDrohA1RLaDCLbWBsPi
 +KjreAZkpCe+UzpY4zhdmDIgNuGAc3PIc2cq2K1Sd8hGxROJYPxk6tEbXW7qP1UryRw1
 9P2CfGnI8EjO/RDeev2+GZHbcgAldQev7dxXmIeMetdRk/VQPkjL1D9PRL4L9qCKgy0Y
 ndDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sxlay/1s9aywPRoyeMaHjRdmiwPcAG5KjYldNDUiZko=;
 b=fB9SoKFzZc/0yQK0+ZVkBidis452Otu6e7xDMjOAYJXQym6fwA2HkYDp5OIMTnsRMZ
 0a4H/YDJ/tY/ZcZXBp8ofZ8a16JQW85+JVUEUgKgiBJfUP3u3+zA8/joquAFooP7ymx8
 3mII+Gzb018v227b2pcLevRpJ3kMuN26SLyxoj00au3qPo4xr91H+G+gvT/U6njThbw8
 D3EMoGa1ogWav24WM0svlD9IHVyzAk5S1nIPeRUTH3bvHZRlOnOCnjPtWO2e8VEszrNc
 +2ujhDqqeBJcOFddiO+usIJQznV1worPqrq4GwjpLjw6CvpuukgikzFzI94SBU7poAxV
 frBw==
X-Gm-Message-State: APjAAAXBqjn9NKSC0aRNz5MAfE368G0JYS1N8RpBRJzZoT4ot6aka2+i
 ZFyjfo3euGCVyKL38BStrxu9jwwi4Y0=
X-Google-Smtp-Source: APXvYqzoBRZuFDb9SMv4+vy52EG+EPD+jly+dv493cW36GDjLmO/xkKZZITU2fUr5kufe0IlPkQH6A==
X-Received: by 2002:a17:90a:8685:: with SMTP id
 p5mr16125154pjn.92.1577919140890; 
 Wed, 01 Jan 2020 14:52:20 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id t187sm60471027pfd.21.2020.01.01.14.52.19
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Jan 2020 14:52:20 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  1 Jan 2020 14:52:16 -0800
Message-Id: <20200101225217.24240-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_145222_284593_CD09B395 
X-CRM114-Status: UNSURE (   8.52  )
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
Subject: [OpenWrt-Devel] [PATCHv2 1/2] wireguard.sh: Batch file writes
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
 v2: Indented first section
 .../utils/wireguard-tools/files/wireguard.sh  | 64 +++++++++----------
 1 file changed, 30 insertions(+), 34 deletions(-)

diff --git a/package/network/utils/wireguard-tools/files/wireguard.sh b/package/network/utils/wireguard-tools/files/wireguard.sh
index 4c811c6ba9..4bea67e033 100644
--- a/package/network/utils/wireguard-tools/files/wireguard.sh
+++ b/package/network/utils/wireguard-tools/files/wireguard.sh
@@ -42,33 +42,31 @@ proto_wireguard_setup_peer() {
 	config_get endpoint_port "${peer_config}" "endpoint_port"
 	config_get persistent_keepalive "${peer_config}" "persistent_keepalive"
 
-	echo "[Peer]" >> "${wg_cfg}"
-	echo "PublicKey=${public_key}" >> "${wg_cfg}"
-	if [ "${preshared_key}" ]; then
-		echo "PresharedKey=${preshared_key}" >> "${wg_cfg}"
-	fi
-	for allowed_ip in $allowed_ips; do
-		echo "AllowedIPs=${allowed_ip}" >> "${wg_cfg}"
-	done
-	if [ "${endpoint_host}" ]; then
-		case "${endpoint_host}" in
-			*:*)
-				endpoint="[${endpoint_host}]"
-				;;
-			*)
-				endpoint="${endpoint_host}"
-				;;
-		esac
-		if [ "${endpoint_port}" ]; then
-			endpoint="${endpoint}:${endpoint_port}"
-		else
-			endpoint="${endpoint}:51820"
+	{
+		echo "[Peer]"
+		echo "PublicKey=${public_key}"
+		[ "${preshared_key}" ] && echo "PresharedKey=${preshared_key}"
+		for allowed_ip in $allowed_ips; do
+			echo "AllowedIPs=${allowed_ip}"
+		done
+		if [ "${endpoint_host}" ]; then
+			case "${endpoint_host}" in
+				*:*)
+					endpoint="[${endpoint_host}]"
+					;;
+				*)
+					endpoint="${endpoint_host}"
+					;;
+			esac
+			if [ "${endpoint_port}" ]; then
+				endpoint="${endpoint}:${endpoint_port}"
+			else
+				endpoint="${endpoint}:51820"
+			fi
+			echo "Endpoint=${endpoint}"
 		fi
-		echo "Endpoint=${endpoint}" >> "${wg_cfg}"
-	fi
-	if [ "${persistent_keepalive}" ]; then
-		echo "PersistentKeepalive=${persistent_keepalive}" >> "${wg_cfg}"
-	fi
+		[ "${persistent_keepalive}" ] && echo "PersistentKeepalive=${persistent_keepalive}"
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
