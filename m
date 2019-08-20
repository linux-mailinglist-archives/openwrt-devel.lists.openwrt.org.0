Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60EDB95E3A
	for <lists+openwrt-devel@lfdr.de>; Tue, 20 Aug 2019 14:19:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bZko9p0L2REXdEh0njE6J0606kIocJmf+u5YGciV+Gw=; b=IhYEsshRLj+WW0
	7XNK2R7UDDwpAv8XYBfUUHHqlPMBxJj6mxlOa9sK0yTWl4zMUQV5t/aNpN35RHka/MgoT5eoLDcOi
	dLljkoR6ozhoDLKA8r02onGbQZvkd30Zn+27St4W6BHFEs3MAlt45LK9UAYcWrsxeRh/7SPsWHw7e
	0+mgjBixsSwXwFPCJ9wxiKi1CqIWWbhouUARFNgmqohvadeuP+6m+L/ziCMM9/aVmwc9Hqzd0Ak0Q
	gLZiUU0/rRIkTFOXPooJQJTOkjOBlNNGgl3WG2+Vb5w1ffsu/o6By6BCqfkeBYU4St0GhQwp+cW4H
	QZi09y+4Ygi5h3JeF14Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0366-0005yg-Hd; Tue, 20 Aug 2019 12:18:46 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i035k-0005nd-KO
 for openwrt-devel@lists.openwrt.org; Tue, 20 Aug 2019 12:18:26 +0000
Received: by mail-wm1-x341.google.com with SMTP id e8so2277005wme.1
 for <openwrt-devel@lists.openwrt.org>; Tue, 20 Aug 2019 05:18:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lRBqEhjqDHt1ulHio9LXv6mm8ebgjcY7EgXZEehyyAw=;
 b=gbTnWyzCGY11gMgsOW4CHPMCZBejL/5Qk6KSnEtsW63lniEvDBOsHZNleXXo2aKREv
 xe4l9J+dxPqrVHYMBiJr9g3RgMf9t084v+FjBgcLcu0hTXtLMg9dBbtLHmjZgKeK5Zk2
 W80dpjRa6Qt7WnhreHu384gN2WTVXgy103sCGRRN5rF5RchZWksb1nXuUtREyTr9JBVu
 D11nh/rpSP6IgsGOdBcNZA9FzEpM3+XPYytR8bYcoKJTEhqTvcVREQqyaK7z68Zd/+FT
 RylZZJ2URv3W7zT1fgLBZRkj+W2m9voci8uNJAQOdnBcYP8bwENbUJ2wGaGvTPq7yyoj
 qLzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lRBqEhjqDHt1ulHio9LXv6mm8ebgjcY7EgXZEehyyAw=;
 b=FAlfE2qaY7Xc3UxMHHOyuUzDTB//n2TqMmOAQeITvGGSyDBsj9qrNtLyzBn6Q1tDOV
 Eqr1DrUBCIAHpcFjX8mJ97Lha/6J02KcVw0jf6GkZm+ifklF5pQLcUYg1AZCpjyZbS0Y
 jDM9Ak6hZ5q24QtGYFkPHqmLoTNi2bpaJObGlEvoD/77Se6o3oiYmLhe/RuT2SnW7+sn
 /0bmG/fk3dS2Jp/1UzIcHFAHxGxQWH3JuAvzNRiM2JvUlDv4UZ5mFJxK7bl8vl+MP0V5
 73yO0fbdf9dST1iwwen7Hr1imWnVFR63L/TVUgsnkVCa00BVSy6+xkZy70ehZJ9G7vfQ
 Y6xQ==
X-Gm-Message-State: APjAAAWfdQBEumz8SPNh0NQrM3/VROBdVEpx9zNjQ4VA/zZcQqlyohD3
 JxWdJkMipKk0T+5gLfiGlXzvG2lI
X-Google-Smtp-Source: APXvYqyDC0zFG/eUisfbhd1d9uNFv/vD5f8E/BvQFWXvB+wCfLex9HWk+8nKdachrdLAPUilPsRlXg==
X-Received: by 2002:a1c:9648:: with SMTP id y69mr23933555wmd.122.1566303500770; 
 Tue, 20 Aug 2019 05:18:20 -0700 (PDT)
Received: from localhost.localdomain (93-143-205-50.adsl.net.t-com.hr.
 [93.143.205.50])
 by smtp.gmail.com with ESMTPSA id 7sm12527493wmj.46.2019.08.20.05.18.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 05:18:19 -0700 (PDT)
From: Robert Marko <robimarko@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 20 Aug 2019 14:18:16 +0200
Message-Id: <20190820121816.1102-1-robimarko@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_051824_700531_D05EF8E3 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robimarko[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] iwinfo: Add support for WPA3
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
Cc: Robert Marko <robimarko@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This patch adds support for WPA3, meaning SAE and OWE are now properly identified.
This fixes iwinfo and LuCi showing WPA2 NONE for WPA3 SAE and OWE.

Signed-off-by: Robert Marko <robimarko@gmail.com>
---
 include/iwinfo.h |  4 +++-
 iwinfo_cli.c     | 12 ++++++++++++
 iwinfo_lua.c     | 13 +++++++++++++
 iwinfo_nl80211.c | 10 ++++++++++
 4 files changed, 38 insertions(+), 1 deletion(-)

diff --git a/include/iwinfo.h b/include/iwinfo.h
index 9b2ffd1..d035c9c 100644
--- a/include/iwinfo.h
+++ b/include/iwinfo.h
@@ -43,7 +43,9 @@
 #define IWINFO_KMGMT_NONE    (1 << 0)
 #define IWINFO_KMGMT_8021x   (1 << 1)
 #define IWINFO_KMGMT_PSK     (1 << 2)
-#define IWINFO_KMGMT_COUNT   3
+#define IWINFO_KMGMT_SAE     (1 << 3)
+#define IWINFO_KMGMT_OWE     (1 << 4)
+#define IWINFO_KMGMT_COUNT   5
 
 #define IWINFO_AUTH_OPEN     (1 << 0)
 #define IWINFO_AUTH_SHARED   (1 << 1)
diff --git a/iwinfo_cli.c b/iwinfo_cli.c
index dba7529..4a4727b 100644
--- a/iwinfo_cli.c
+++ b/iwinfo_cli.c
@@ -186,6 +186,12 @@ static char * format_enc_suites(int suites)
 	if (suites & IWINFO_KMGMT_8021x)
 		pos += sprintf(pos, "802.1X/");
 
+	if (suites & IWINFO_KMGMT_SAE)
+		pos += sprintf(pos, "SAE/");
+
+	if (suites & IWINFO_KMGMT_OWE)
+		pos += sprintf(pos, "OWE/");
+
 	if (!suites || (suites & IWINFO_KMGMT_NONE))
 		pos += sprintf(pos, "NONE/");
 
@@ -229,6 +235,12 @@ static char * format_encryption(struct iwinfo_crypto_entry *c)
 		else if (c->wpa_version)
 		{
 			switch (c->wpa_version) {
+				case 4:
+					snprintf(buf, sizeof(buf), "WPA3 %s (%s)",
+						format_enc_suites(c->auth_suites),
+						format_enc_ciphers(c->pair_ciphers | c->group_ciphers));
+					break;
+
 				case 3:
 					snprintf(buf, sizeof(buf), "mixed WPA/WPA2 %s (%s)",
 						format_enc_suites(c->auth_suites),
diff --git a/iwinfo_lua.c b/iwinfo_lua.c
index bb43438..3d9d95e 100644
--- a/iwinfo_lua.c
+++ b/iwinfo_lua.c
@@ -89,6 +89,12 @@ static char * iwinfo_crypto_print_suites(int suites)
 	if (suites & IWINFO_KMGMT_8021x)
 		pos += sprintf(pos, "802.1X/");
 
+	if (suites & IWINFO_KMGMT_SAE)
+		pos += sprintf(pos, "SAE/");
+
+	if (suites & IWINFO_KMGMT_OWE)
+		pos += sprintf(pos, "OWE/");
+
 	if (!suites || (suites & IWINFO_KMGMT_NONE))
 		pos += sprintf(pos, "NONE/");
 
@@ -130,6 +136,13 @@ static char * iwinfo_crypto_desc(struct iwinfo_crypto_entry *c)
 			else if (c->wpa_version)
 			{
 				switch (c->wpa_version) {
+					case 4:
+						sprintf(desc, "WPA3 %s (%s)",
+							iwinfo_crypto_print_suites(c->auth_suites),
+							iwinfo_crypto_print_ciphers(
+								c->pair_ciphers | c->group_ciphers));
+						break;
+
 					case 3:
 						sprintf(desc, "mixed WPA/WPA2 %s (%s)",
 							iwinfo_crypto_print_suites(c->auth_suites),
diff --git a/iwinfo_nl80211.c b/iwinfo_nl80211.c
index 200be28..cf86b05 100644
--- a/iwinfo_nl80211.c
+++ b/iwinfo_nl80211.c
@@ -1588,6 +1588,16 @@ static int nl80211_get_encryption(const char *ifname, char *buf)
 			if (strstr(wpa_key_mgmt, "EAP"))
 				c->auth_suites |= IWINFO_KMGMT_8021x;
 
+			if (strstr(wpa_key_mgmt, "SAE")){
+				c->auth_suites |= IWINFO_KMGMT_SAE;
+				c->wpa_version = 4;
+			}
+
+			if (strstr(wpa_key_mgmt, "OWE")){
+				c->auth_suites |= IWINFO_KMGMT_OWE;
+				c->wpa_version = 4;
+			}
+
 			if (strstr(wpa_key_mgmt, "NONE"))
 				c->auth_suites |= IWINFO_KMGMT_NONE;
 		}
-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
