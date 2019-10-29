Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AA6FE8E02
	for <lists+openwrt-devel@lfdr.de>; Tue, 29 Oct 2019 18:24:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mlPqyc7czRqUMvALAaMj0+m77xO60wrx/A4PuVIvQqY=; b=KI5g5EIiLk2fz79hEfOCnECeVG
	f2rVDYU20BYADSrL+hqsKL3yUINnGO3GBNFaNVlLoZx320mQLE2kBhQIpCmP/hKNuANrG0rtYBF7Y
	tMelPTSY0BEutNoLlHoRInmQLAV3L0gT7vVdVK/ZG0ObqnCp0TPjFlKiZrRnth/QkdRLGG+D5xUaP
	DVmekJbYyOP1LH2mNSS6cY7Auc1f/l9RSnWnuZ9xDr+8H6e579tRLG864avb1EMmGfcp7ClsypOha
	fIBF7JqMjI3j6jhBv08hAVf97s5zYHr69jZdbecWfHWCaxAyZGxxa30D3My9n193JQ89OV2/p0IvB
	ABs8qdEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPVDp-0003wO-Lp; Tue, 29 Oct 2019 17:23:57 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPVDQ-0003mK-OF
 for openwrt-devel@lists.openwrt.org; Tue, 29 Oct 2019 17:23:34 +0000
Received: by mail-pf1-x443.google.com with SMTP id v19so10055102pfm.3
 for <openwrt-devel@lists.openwrt.org>; Tue, 29 Oct 2019 10:23:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=11Gan/3IiZoCjN9jL/tW49lkwIfOL8LOntPm6lF+lG4=;
 b=SKlamcTfC5wAE0aATTd9gjV6QC8TWsrVZponoxO+BqziPp/DUSg7HuYwySObmADeeC
 eBcOg1zcfX78DwQkM12FGBoP77C+uXrJf8+z7olhTI/zBu3VCJiZoBz5NR9GdzYrwcjH
 XkUKA6/U2Yghkq3pTk7PeGJVhEJql7CtFW6d3jQQAJXKcEdaXZz3+fkM37oh7mM5NLgd
 yy+3LHzq35H5R9I++OL7LfmKxGYKzD4rVPrQWFm0ceU2pHZSyzImDN7HhCLWN8b9qGH1
 KvK9GOpi2DnHrUci1k9ppvoLUa2DVCdv8IXmFX3Oevfca3xZZwtE3Gy1HrL9t+jmAdC8
 GwWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=11Gan/3IiZoCjN9jL/tW49lkwIfOL8LOntPm6lF+lG4=;
 b=qTdlzjhPa7nmBbxoZDpZDy55SRT2cEC9J9sCxAso/mIHEI032i9cAEsb2Hht5u1Mqc
 Dbg1vLrBYEKce4dpIAaYaTUcr24JbttoCNz+zzulpSoamdvEdDSxI6frC/SAHnr2cdod
 5zNFXgG05y7OHvfdqLuRgxSjU6JLlUMmv62LOU4hat0CuB30pR43QL/kwOwASMNgUvLa
 5nmjMeTP99o4QsCSOucbgra4Tu3WFYUJg8/Bkmj4rvbjmgnJlPYPL/eHwOE4HEz3hGks
 5ooW+E/aNCFdltQXzjhwdnTcaG9im0b03ujcMibeNZdcqL3k9DRT2UNI+G1XiTFzTpky
 kvtg==
X-Gm-Message-State: APjAAAXJuIAPqxhKOuueeUlKN8wOH1Za8JCnwmv49Iou7InEB/pVKfky
 /5szNYPNNLLoPqxr0Rh+GdEM7xce/nY=
X-Google-Smtp-Source: APXvYqx8eopbtj0jP9h+53neAVoty9JyJMh7vCdb4rHADqdipYvKwGA8Y8JV+mJqXw1TNxkDkyk4/A==
X-Received: by 2002:a65:6781:: with SMTP id e1mr28915518pgr.173.1572369811765; 
 Tue, 29 Oct 2019 10:23:31 -0700 (PDT)
Received: from localhost.localdomain (astound-69-42-4-171.ca.astound.net.
 [69.42.4.171])
 by smtp.gmail.com with ESMTPSA id h186sm17619793pfb.63.2019.10.29.10.23.30
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 10:23:31 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 29 Oct 2019 10:23:28 -0700
Message-Id: <20191029172328.85861-2-rosenp@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191029172328.85861-1-rosenp@gmail.com>
References: <20191029172328.85861-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_102332_784706_F3114182 
X-CRM114-Status: GOOD (  11.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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
Subject: [OpenWrt-Devel] [PATCHv2 2/2] ramips: ethernet: fix to interrupt
 handling
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

From: NeilBrown <neil@brown.name>

The current code acknowledged interrupts *after* polling.
This is the wrong way around, and could cause an interrupt to
be missed.
This is not likely to be fatal as another packet, and so another
interrupt, should come along soon.  But maybe it is causing
problems, so let's fix it anyway.

Signed-off-by: NeilBrown <neil@brown.name>
(Note that this matches the upstream driver.)
Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 v2: Added comment.
 .../drivers/net/ethernet/mediatek/mtk_eth_soc.c       | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/mtk_eth_soc.c b/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/mtk_eth_soc.c
index 91974a461c..5612e64eb1 100644
--- a/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/mtk_eth_soc.c
+++ b/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/mtk_eth_soc.c
@@ -879,6 +879,8 @@ static int fe_poll_rx(struct napi_struct *napi, int budget,
 	struct fe_rx_dma *rxd, trxd;
 	int done = 0, pad;
 
+	fe_reg_w32(rx_intr, FE_REG_FE_INT_STATUS);
+
 	if (netdev->features & NETIF_F_RXCSUM)
 		checksum_bit = soc->checksum_bit;
 	else
@@ -971,9 +973,6 @@ release_desc:
 		done++;
 	}
 
-	if (done < budget)
-		fe_reg_w32(rx_intr, FE_REG_FE_INT_STATUS);
-
 	return done;
 }
 
@@ -989,6 +988,8 @@ static int fe_poll_tx(struct fe_priv *priv, int budget, u32 tx_intr,
 	u32 idx, hwidx;
 	struct fe_tx_ring *ring = &priv->tx_ring;
 
+	fe_reg_w32(tx_intr, FE_REG_FE_INT_STATUS);
+
 	idx = ring->tx_free_idx;
 	hwidx = fe_reg_r32(FE_REG_TX_DTX_IDX0);
 
@@ -1012,9 +1013,7 @@ static int fe_poll_tx(struct fe_priv *priv, int budget, u32 tx_intr,
 	if (idx == hwidx) {
 		/* read hw index again make sure no new tx packet */
 		hwidx = fe_reg_r32(FE_REG_TX_DTX_IDX0);
-		if (idx == hwidx)
-			fe_reg_w32(tx_intr, FE_REG_FE_INT_STATUS);
-		else
+		if (idx != hwidx)
 			*tx_again = 1;
 	} else {
 		*tx_again = 1;
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
