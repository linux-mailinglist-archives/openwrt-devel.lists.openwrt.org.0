Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 517DA136F50
	for <lists+openwrt-devel@lfdr.de>; Fri, 10 Jan 2020 15:28:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YY03sSA4qYoj5NtjWTsqSFhtpA8R9sXm7SN4IMhHyTE=; b=Ek0xBDZF59rRJl
	yRaRb27EUkq9kpurwPYe11pQsuaLypGS/G2tl6srDL9uEpbtp7kQuXS0pzSdRYQrrChvP+l3kPoUE
	zwZXbty92IVvzF/MXre6C6MTUwZ+j/UgcHgSiG3slX9mvkxUphOWEClqpq2whrkAWD3hkSsZ6+fzd
	y5IxT5ZnFHs5XnT4Bq5bMNH5hrvgPpHo/9xxNROsOUgvuM3sGpINNloRRmHZHr2u1ZQh/92I9SxGh
	Wfz9skeEvEHli9EjSkj4fUcRqpm+LUEWnRxkaEI7ucOxmcVH6J5b+8gELBAHn2RHFiQlbAmIkuFvr
	F9RDBTSLDnnwwMWjwH0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipvGd-0006ii-1A; Fri, 10 Jan 2020 14:28:03 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipvGU-0006i8-RG
 for openwrt-devel@lists.openwrt.org; Fri, 10 Jan 2020 14:27:56 +0000
Received: by mail-lf1-x141.google.com with SMTP id n12so1623681lfe.3
 for <openwrt-devel@lists.openwrt.org>; Fri, 10 Jan 2020 06:27:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5fKtXXbqczjGcTCF1Al7MSOhugvNutUY1M5VIFUkEJo=;
 b=UzgMjr3HmDvnxhVCdzrAmVX/2oI4VePvfABPt8fFQNkIB0Q4mue75DSFm3QzhL50Gc
 PjWL1N+Ki3Nx+Bb51lG7WkHYjOpEMtpl1VbXfWSdEOx3TI2zw1wop5YO4F7hAAoodLr9
 AYJXNhQQHsTzRwwwfOYtzJeb3j2+HcNXL5CFatqkMxNxeOPJqutk+Zt60RjmxP07tsr8
 0dWeVzw7QdPbm0W9XNcjJLMKEl40QbHNTMkRlPy/hO8zh3cBNYUw/CeZh0KnGqAMMelt
 f2WhALGzwG5COeZLpB77OZJXk2exGiVx2byHQCwLGMOQKczDlvEO777h72jDQaCndXcx
 +YAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5fKtXXbqczjGcTCF1Al7MSOhugvNutUY1M5VIFUkEJo=;
 b=C2Z5QmBXI22X1ULspQ6OwoG2hHEqFJyVUG6jG9Ge3sAILL4cSrc3U/angaiecXzbSH
 GRwT3iWJGsVph+q7PsJ77Pn6Vmu580sI7R7FwhfkYlaI9wFxWxzfX3nrPLrHU8wTXBlF
 Qicx+2HN9KsWdboMLh4wa073Gq/s472H+vWlnt3UbBckhfHvAxUz+Vuv4n8UBNb8Wgsy
 hNKEu69BQcmjKsrmEpAuYYkg5y/v1Ekb7BHQyJCNwGOMAp2GD9upDFzJR3Q54foRrrEG
 2J8XZPuiMddpHbZ2lA5L05BtxcUKJnRGSVbBXmz4AhsMSlSXMzML1B3/V7PfsnzT5c5u
 /VaQ==
X-Gm-Message-State: APjAAAUMEte0s2YVyz0CdrapE0VpsntaDqdAQqJlW6N5j3ruFWoElppe
 uyOFp5tVbnqdjSFpYIyHbKinTxR/
X-Google-Smtp-Source: APXvYqzqv0qcEHyDeSjsnRXaVILCcc7iTbKxR54PxbLA7W2cl6FHrlu0oLmbc5wOzhicOM/JZEj4qA==
X-Received: by 2002:a05:6512:3ab:: with SMTP id
 v11mr596576lfp.203.1578666472275; 
 Fri, 10 Jan 2020 06:27:52 -0800 (PST)
Received: from DJ-Precision.corp.ubnt.com
 ([2a02:2880:3:1ff:34f6:2eba:7a3:8599])
 by smtp.gmail.com with ESMTPSA id y8sm1060206lji.56.2020.01.10.06.27.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Jan 2020 06:27:51 -0800 (PST)
From: Dainis Jonitis <jonitis@gmail.com>
X-Google-Original-From: Dainis Jonitis <dainis.jonitis@ubnt.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Date: Fri, 10 Jan 2020 16:27:26 +0200
Message-Id: <20200110142726.25148-1-dainis.jonitis@ubnt.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_062754_882033_CF178CFD 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jonitis[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] iwinfo: 64-bit byte counters for assoclist
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
Cc: Jo-Philipp Wich <jo@mein.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

When available, use 64-bit byte counters rx/tx_bytes64. New 32-bit
counters rx/tx_bytes32 are guaranteed to clamp to max 32-bit value
and never wrap around. For compatibility with legacy clients the old
values rx/tx_bytes are just aliases of new rx/tx_bytes32.

Signed-off-by: Dainis Jonitis <dainis.jonitis@ubnt.com>
---
 include/iwinfo.h | 12 ++++++++++--
 iwinfo_nl80211.c | 24 ++++++++++++++++++++----
 2 files changed, 30 insertions(+), 6 deletions(-)

diff --git a/include/iwinfo.h b/include/iwinfo.h
index 5e64294..8610fcb 100644
--- a/include/iwinfo.h
+++ b/include/iwinfo.h
@@ -119,8 +119,16 @@ struct iwinfo_assoclist_entry {
 	uint64_t rx_drop_misc;
 	struct iwinfo_rate_entry rx_rate;
 	struct iwinfo_rate_entry tx_rate;
-	uint32_t rx_bytes;
-	uint32_t tx_bytes;
+	uint64_t rx_bytes64;
+	uint64_t tx_bytes64;
+	union {
+		uint32_t rx_bytes32;    /* clamped to max uint32_t */
+		uint32_t rx_bytes;      /* OBSOLETED: alias for legacy clients*/
+	};
+	union {
+		uint32_t tx_bytes32;    /* clamped to max uint32_t */
+		uint32_t tx_bytes;      /* OBSOLETED: alias for legacy clients*/
+	};
 	uint32_t tx_retries;
 	uint32_t tx_failed;
 	uint64_t t_offset;
diff --git a/iwinfo_nl80211.c b/iwinfo_nl80211.c
index 2b2a043..6b35888 100644
--- a/iwinfo_nl80211.c
+++ b/iwinfo_nl80211.c
@@ -1953,6 +1953,8 @@ static int nl80211_get_assoclist_cb(struct nl_msg *msg, void *arg)
 		[NL80211_STA_INFO_SIGNAL_AVG]    = { .type = NLA_U8     },
 		[NL80211_STA_INFO_RX_BYTES]      = { .type = NLA_U32    },
 		[NL80211_STA_INFO_TX_BYTES]      = { .type = NLA_U32    },
+		[NL80211_STA_INFO_RX_BYTES64]    = { .type = NLA_U64    },
+		[NL80211_STA_INFO_TX_BYTES64]    = { .type = NLA_U64    },
 		[NL80211_STA_INFO_TX_RETRIES]    = { .type = NLA_U32    },
 		[NL80211_STA_INFO_TX_FAILED]     = { .type = NLA_U32    },
 		[NL80211_STA_INFO_CONNECTED_TIME]= { .type = NLA_U32    },
@@ -2016,11 +2018,25 @@ static int nl80211_get_assoclist_cb(struct nl_msg *msg, void *arg)
 		                      sinfo[NL80211_STA_INFO_TX_BITRATE], rate_policy))
 			nl80211_parse_rateinfo(rinfo, &e->tx_rate);
 
-		if (sinfo[NL80211_STA_INFO_RX_BYTES])
-			e->rx_bytes = nla_get_u32(sinfo[NL80211_STA_INFO_RX_BYTES]);
+		if (sinfo[NL80211_STA_INFO_RX_BYTES64]) {
+			uint64_t u64 = nla_get_u64(sinfo[NL80211_STA_INFO_RX_BYTES64]);
+			e->rx_bytes64 = u64;
+			e->rx_bytes32 = (u64 <= UINT32_MAX) ? (uint32_t)u64 : UINT32_MAX;
+		} else if (sinfo[NL80211_STA_INFO_RX_BYTES]) {
+			uint32_t u32 = nla_get_u32(sinfo[NL80211_STA_INFO_RX_BYTES]);
+			e->rx_bytes32 = u32;
+			e->rx_bytes64 = u32;
+		}
 
-		if (sinfo[NL80211_STA_INFO_TX_BYTES])
-			e->tx_bytes = nla_get_u32(sinfo[NL80211_STA_INFO_TX_BYTES]);
+		if (sinfo[NL80211_STA_INFO_TX_BYTES64]) {
+			uint64_t u64 = nla_get_u64(sinfo[NL80211_STA_INFO_TX_BYTES64]);
+			e->tx_bytes64 = u64;
+			e->tx_bytes32 = (u64 <= UINT32_MAX) ? (uint32_t)u64 : UINT32_MAX;
+		} else if (sinfo[NL80211_STA_INFO_TX_BYTES]) {
+			uint32_t u32 = nla_get_u32(sinfo[NL80211_STA_INFO_TX_BYTES]);
+			e->tx_bytes32 = u32;
+			e->tx_bytes64 = u32;
+		}
 
 		if (sinfo[NL80211_STA_INFO_TX_RETRIES])
 			e->tx_retries = nla_get_u32(sinfo[NL80211_STA_INFO_TX_RETRIES]);
-- 
2.19.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
