Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73D2BE8E01
	for <lists+openwrt-devel@lfdr.de>; Tue, 29 Oct 2019 18:23:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lhZQEZgdzrn/d5xr5BBhvhcQtipHpSZ7Liaj01l47E4=; b=bIHZ1KaINjPBCL
	pcWaj64BS60D2wsZtLVTaMN5lQTTreyW8aHQwzBMlUVV2msaYrl+wcqmaLxTnU2B5DdwyczuYBFCx
	Thi76YmVaV79ddibz/KZQfJiyUcZ+1pLYVGsek1VCycxH9nGDqnlsdXTfsq2s3pi75XaP8fOKlJ9M
	ILzTRB/j3M+ONP5+976SvPhnjRSd1skRC/swWTlqmCrxcKeqeBxNsW0uItcup9uz7XcMtIfV2rO94
	KAYL0c7Cpj5WrObB9LNcu7aaKB9myKjpzEn0RT1NpPA2rUIwOzTMkAIKh3PFlmpCrkKdEJ8Mj6d3C
	HG6U6ObRVLC9u2nHNqww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPVDX-0003mj-KI; Tue, 29 Oct 2019 17:23:39 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPVDQ-0003m4-3T
 for openwrt-devel@lists.openwrt.org; Tue, 29 Oct 2019 17:23:33 +0000
Received: by mail-pg1-x544.google.com with SMTP id p12so10034992pgn.6
 for <openwrt-devel@lists.openwrt.org>; Tue, 29 Oct 2019 10:23:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CHFtDHxIlDkFZBVZom8pdqVIa+2CpTO+PVVZyiH7X/I=;
 b=gy+JIB0Jq0oPceteudtobrvvcTVKykdSS1yD9wvFeL46DKQgI8quBGO6ulI2npt0jT
 5a5f5JjtThdsq/D7WTe2oslcTHpuDRL/0SRpXS2L/j6C21MWxJDDzqbFzdPQamQC/qMU
 1KWtNbGOGx8AbcVit8sqL10B4aqHzTfVRErWyEsiXqJbhn/TwfjZRfVh8ov79JGar4FJ
 EtN/M5qCtUdWioaqW5HN66u+BXuwS70MV4yz7TUfHMklLgl/OKV7kbqrR+Pv04xW3k1E
 pBwr03mG2qMwGb3xCQjM4aytbInV+BIpb/6Q2unwzwrtarHocfMEXxP0qFj3dBzwrQBz
 fScw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CHFtDHxIlDkFZBVZom8pdqVIa+2CpTO+PVVZyiH7X/I=;
 b=SImcYNjozTxUN6LWmJK3hxRn4g4ZYkhBWtfjH4a6UhcWWbUoPf7pFeV8kqWmogqVyo
 y2PUm7h+0ElwwxMr1IcEtPzILu9dJvRHgx0xU3mvSM7RrSyAG8zWyE5Dk8WuqUXvyNvF
 PtNo/OOqHOjMERuMwfM8kOTQOvGnLeM4hG0/5A1FOfxBAVycMoaH+YsPbyZUbh3rQoqi
 MgEx2SiGU9ZZBkvQdD34GNLP6/fyd6KknR5EGjfnPBSPUOgh4oNx9lRChzW7TD982w3c
 HHifaBTn/T/1rsukkuqBG7Om77OhRm7KDnJmrrhQAcOqkS/Xaoxxtcmywb8qhIZ/PhJ7
 ju/A==
X-Gm-Message-State: APjAAAVyE/Izth5VBtoIeRnWDUcXukJ8WtOOpZ8851lgBpHaxpgaJKhJ
 wLkhdOyRp4HOr+t5flOkwWeFy8RwAxg=
X-Google-Smtp-Source: APXvYqwO/t9Y/kp+g/pogxiwO8RT+sTcv3Cg54rC3TC2vVq52ZqmJnF+5/GTul3pxEOiNLEak0zNIg==
X-Received: by 2002:a17:90a:1a52:: with SMTP id
 18mr7782898pjl.26.1572369810878; 
 Tue, 29 Oct 2019 10:23:30 -0700 (PDT)
Received: from localhost.localdomain (astound-69-42-4-171.ca.astound.net.
 [69.42.4.171])
 by smtp.gmail.com with ESMTPSA id h186sm17619793pfb.63.2019.10.29.10.23.29
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 10:23:29 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 29 Oct 2019 10:23:27 -0700
Message-Id: <20191029172328.85861-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_102332_170563_7B24DC99 
X-CRM114-Status: UNSURE (   9.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCHv2 1/2] ramips: ethernet: Fix NAPI weight for
 non mt7621 devices
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

My original fix was to make the code do 16 * 4 as 64 is the limit for NAPI
weight. However this also reduces the weight for non mt7621 devices.

Changed the multiplier to 2 instead.

Fixes: dcdc2880b6

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 v2: Added Fixes comment.
 .../drivers/net/ethernet/mediatek/mtk_eth_soc.c           | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/mtk_eth_soc.c b/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/mtk_eth_soc.c
index 00e84bbcfb..91974a461c 100644
--- a/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/mtk_eth_soc.c
+++ b/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/mtk_eth_soc.c
@@ -1663,11 +1663,11 @@ static int fe_probe(struct platform_device *pdev)
 	INIT_WORK(&priv->pending_work, fe_pending_work);
 	u64_stats_init(&priv->hw_stats->syncp);
 
-	napi_weight = 16;
+	napi_weight = 32;
 	if (priv->flags & FE_FLAG_NAPI_WEIGHT) {
-		napi_weight *= 4;
-		priv->tx_ring.tx_ring_size *= 4;
-		priv->rx_ring.rx_ring_size *= 4;
+		napi_weight *= 2;
+		priv->tx_ring.tx_ring_size *= 2;
+		priv->rx_ring.rx_ring_size *= 2;
 	}
 	netif_napi_add(netdev, &priv->rx_napi, fe_poll, napi_weight);
 	fe_set_ethtool_ops(netdev);
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
