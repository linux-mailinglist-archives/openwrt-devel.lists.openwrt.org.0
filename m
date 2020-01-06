Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA9CF130C26
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 Jan 2020 03:35:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aNYcHS6tONYUDxo8r5dLGZYKmiDD1CWFrjTzNkf8SOI=; b=QJjlWGt7fnojBj
	5YQrhAxtPuuz1ggPuq2O7Jpt6wEjVBwzZj0YKwIYBOzHEA31nTN7q29yQlj9fl7u0mIEInszwpgB+
	66P5vdEiY8fUNLO0SnLy5lEDS13k2K4PJ+xKhv++B+V5nsCafeUAEjUFdpjIoxaYE2iUBBzNe45dm
	usavBFvHjTrwarjVDy9gy4VP9efQWmJqz76VF2JkdVPnZvv7T/gUOjpm1KhQYvfdr4DDILiDjUNtV
	aQlSzeq3LNg+hGgprmrwqNpzfPFlFAQPb4vh3qvl5LbzZ+vlhHtbVqwUjRUTTv7O0azDYJCl1nbcQ
	Dx9BXuZ6+CQqXddWtU0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioIEZ-0003YH-In; Mon, 06 Jan 2020 02:35:11 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioIEO-0003Vr-TD
 for openwrt-devel@lists.openwrt.org; Mon, 06 Jan 2020 02:35:02 +0000
Received: by mail-pf1-x441.google.com with SMTP id 4so26245784pfz.9
 for <openwrt-devel@lists.openwrt.org>; Sun, 05 Jan 2020 18:35:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3CMItsvthXZqrI/vk5X8wmnHSb/tCjNyWvqSZaRZG70=;
 b=ANGq1yU5Z4dy/ggVhCDGqf3VFMtBfPR0A9wjYsRCkXcrrd5rUzOeCgqnm7VaMWOgOr
 B43ZgUPRI0UP5jjF83TMftrlC9wgtEUunvpNs7git6Pek9+f3defvyx+Ur2FKDy+fIo6
 Vl3t7CCOiOM+luhT14AIUOl+XZJXC/uWfCykOKKM0jX6x69OtfASXnCsXognnRV2reBL
 qFW2tEWMvvHFqgGttsP7yLxx5SPmjwN5iMGnhBAYawSQPmB8Mr8VAEF4pmMd36AC1QwD
 NsdqHpHxo7Vnp1D5xf8DyencRoNN1hFYj2vqsf2QyD0mCIVXwbZNznr7fDi4Be8dnZQg
 r2ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3CMItsvthXZqrI/vk5X8wmnHSb/tCjNyWvqSZaRZG70=;
 b=JXnCeHRdsZIFPSDBLD+7GubApEDoqh2d1KFv9+7KbeEADGT1g7NjQ0/m6wtcPafwcl
 FuIWKOsJhgAaPKq/bGDXND6DyFDw0ZybKGFE8tHScKP9Ta8+KkKk46Qog2UDWLaQ9GfX
 XBf6JUtPJ8G6vRwRMcglb94kiJ+ZgsHeA7lXL+drGp1fO/zP1ZlmjJ2aBbaE0jMoBxw+
 GaUO04ik6OFmBBGb3EX/U442Gbxqj8Mn6x2RRoi/uVk4cQ4Xp45zeh8VeWVCmDvgkRsA
 C9ABiK71iTzIYgSrOmZVzy+NHnlogdtdFA/URZs7R/22VCgdzZhfTcfyAlX+wjFaE5S7
 a0Fw==
X-Gm-Message-State: APjAAAXcjlPOhmSM4ZH/oKDOnz1dUBKe+AkH5hQT/4z6RKDSYrdJX6N4
 ybT01EA7ivbb1w5GegbYVieiDjVWRLY=
X-Google-Smtp-Source: APXvYqxEuGLoXOwzCHtCqZ7ANNcsdBEdOHa4iGPs1V6t3juth2nTNubSYHE0rsko4Vs37xWILo+eqA==
X-Received: by 2002:a63:cf14:: with SMTP id
 j20mr107532849pgg.430.1578278099958; 
 Sun, 05 Jan 2020 18:34:59 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id j14sm68885266pgs.57.2020.01.05.18.34.59
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Jan 2020 18:34:59 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  5 Jan 2020 18:34:56 -0800
Message-Id: <20200106023457.170813-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_183500_944075_063137B7 
X-CRM114-Status: UNSURE (   8.73  )
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
Subject: [OpenWrt-Devel] [PATCH 1/2] wireguard.sh: batch file writes
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
 v3: Fix title
 v2: Added PKG_RELEASE bump.
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
