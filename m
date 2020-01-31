Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E38414EDB1
	for <lists+openwrt-devel@lfdr.de>; Fri, 31 Jan 2020 14:45:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3p8i7qgkuRD8IUkLhCt1Nm/pEe0RY5dqIR/X1WnoJzU=; b=uY8CGQ8LetL/ZL
	XifUU89nl7lPGQQkmlo9+1xd7/LzH8PFHHcr7icL2MoNsaP3sMw42vDAvuONRJQ0U0i7UgHvuCqMg
	lIRs6dKqV/+1R4qzbi7LqKg+B9+3+W7lMn3FDM/hOr/fyp15zd8X3RG04wbryJQ7XdR+Dr8kcDEGz
	2yaA2gxucKTql+bG426lwtlUVx3yOg+Q+hTkXaU+DUQNqiXI4ANZs6TK/d4fn7cBuENNMhXQOQlXJ
	Qj73e9oSadV86/yQdeZWW33mdzs3Jsvut4CffSkZoYXNPmvTfNbdq9+SqdDW+U11Hhi3Y0oa0B/sJ
	58B15ui77m+oyyR6T96w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixWbw-0005ZL-3y; Fri, 31 Jan 2020 13:45:28 +0000
Received: from mars.blocktrron.ovh ([51.254.112.43] helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1ixWbl-0005Xa-NT
 for openwrt-devel@lists.openwrt.org; Fri, 31 Jan 2020 13:45:20 +0000
Received: from localhost.localdomain (unknown [46.183.103.8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id 5C15422ECE
 for <openwrt-devel@lists.openwrt.org>; Fri, 31 Jan 2020 14:45:12 +0100 (CET)
From: David Bauer <mail@david-bauer.net>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 31 Jan 2020 14:45:03 +0100
Message-Id: <20200131134503.10855-1-mail@david-bauer.net>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_054518_073141_DA21E98E 
X-CRM114-Status: GOOD (  13.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] iwinfo: add BSS load element to scan result
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

This adds support for the BSS load information element. With this patch,
the BSS load information is visible when using the CLI as well as when
accessing scan results using the LUA binding.

Signed-off-by: David Bauer <mail@david-bauer.net>
---
 include/iwinfo.h       |  6 ++++++
 include/iwinfo/utils.h |  2 ++
 iwinfo_cli.c           | 11 ++++++++++-
 iwinfo_lua.c           | 12 ++++++++++++
 iwinfo_nl80211.c       |  4 ++++
 iwinfo_utils.c         |  8 ++++++++
 6 files changed, 42 insertions(+), 1 deletion(-)

diff --git a/include/iwinfo.h b/include/iwinfo.h
index 5e64294..b07820d 100644
--- a/include/iwinfo.h
+++ b/include/iwinfo.h
@@ -179,6 +179,12 @@ struct iwinfo_scanlist_entry {
 	uint8_t quality;
 	uint8_t quality_max;
 	struct iwinfo_crypto_entry crypto;
+
+	/* BSS Load */
+	uint8_t has_bss_load;
+	uint8_t station_count;
+	uint8_t channel_utilization;
+	uint8_t admission_capacity;
 };
 
 struct iwinfo_country_entry {
diff --git a/include/iwinfo/utils.h b/include/iwinfo/utils.h
index 98b9c89..a71bc9b 100644
--- a/include/iwinfo/utils.h
+++ b/include/iwinfo/utils.h
@@ -53,6 +53,8 @@ struct iwinfo_hardware_entry * iwinfo_hardware(struct iwinfo_hardware_id *id);
 
 int iwinfo_hardware_id_from_mtd(struct iwinfo_hardware_id *id);
 
+void iwinfo_parse_bss_load(struct iwinfo_scanlist_entry *e, uint8_t *data);
+
 void iwinfo_parse_rsn(struct iwinfo_crypto_entry *c, uint8_t *data, uint8_t len,
 					  uint8_t defcipher, uint8_t defauth);
 
diff --git a/iwinfo_cli.c b/iwinfo_cli.c
index 0332bc2..5949004 100644
--- a/iwinfo_cli.c
+++ b/iwinfo_cli.c
@@ -612,8 +612,17 @@ static void print_scanlist(const struct iwinfo_ops *iw, const char *ifname)
 			format_signal(e->signal - 0x100),
 			format_quality(e->quality),
 			format_quality_max(e->quality_max));
-		printf("          Encryption: %s\n\n",
+		printf("          Encryption: %s\n",
 			format_encryption(&e->crypto));
+		if (e->has_bss_load) {
+			printf("          Station count: %u\n",
+				e->station_count);
+			printf("          Channel utilization: %u/255\n",
+				e->channel_utilization);
+			printf("          Available admission capacity: %u (*32us)\n",
+				e->admission_capacity);
+		}
+		printf("\n");
 	}
 }
 
diff --git a/iwinfo_lua.c b/iwinfo_lua.c
index 58a5537..76160b6 100644
--- a/iwinfo_lua.c
+++ b/iwinfo_lua.c
@@ -434,6 +434,18 @@ static int iwinfo_L_scanlist(lua_State *L, int (*func)(const char *, char *, int
 			lua_pushnumber(L, (e->signal - 0x100));
 			lua_setfield(L, -2, "signal");
 
+			/* BSS load */
+			if (e->has_bss_load) {
+				lua_pushnumber(L, e->station_count);
+				lua_setfield(L, -2, "station_count");
+
+				lua_pushnumber(L, e->channel_utilization);
+				lua_setfield(L, -2, "channel_utilization");
+
+				lua_pushnumber(L, e->admission_capacity);
+				lua_setfield(L, -2, "admission_capacity");
+			}
+
 			/* Crypto */
 			iwinfo_L_cryptotable(L, &e->crypto);
 			lua_setfield(L, -2, "encryption");
diff --git a/iwinfo_nl80211.c b/iwinfo_nl80211.c
index 2b2a043..7463fc7 100644
--- a/iwinfo_nl80211.c
+++ b/iwinfo_nl80211.c
@@ -2296,6 +2296,10 @@ static void nl80211_get_scanlist_ie(struct nlattr **bss,
 			}
 			break;
 
+		case 11: /* BSS Load */
+			iwinfo_parse_bss_load(e, ie + 2);
+			break;
+
 		case 48: /* RSN */
 			iwinfo_parse_rsn(&e->crypto, ie + 2, ie[1],
 			                 IWINFO_CIPHER_CCMP, IWINFO_KMGMT_8021x);
diff --git a/iwinfo_utils.c b/iwinfo_utils.c
index b4f98a9..425492e 100644
--- a/iwinfo_utils.c
+++ b/iwinfo_utils.c
@@ -324,6 +324,14 @@ static void iwinfo_parse_rsn_cipher(uint8_t idx, uint8_t *ciphers)
 	}
 }
 
+void iwinfo_parse_bss_load(struct iwinfo_scanlist_entry *e, uint8_t *data)
+{
+	e->has_bss_load = 1;
+	e->station_count = ((data[1] << 8) | data[0]);
+	e->channel_utilization = data[2];
+	e->admission_capacity = ((data[4] << 8) | data[3]);
+}
+
 void iwinfo_parse_rsn(struct iwinfo_crypto_entry *c, uint8_t *data, uint8_t len,
 					  uint8_t defcipher, uint8_t defauth)
 {
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
