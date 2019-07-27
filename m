Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C5AD775EC
	for <lists+openwrt-devel@lfdr.de>; Sat, 27 Jul 2019 04:23:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3XIN7juqJ5P8MkQW2UzMFKLmJFlPoPEwjcvXBWXMSwY=; b=Inc6KNrrCYNyci
	pzN3PuajSoggc7G/1p5pGSASAI3tQ54CozH2fSXS9YLorwTcsYVQ3RzFf2fYLqa8dOp2vYzEeGNcZ
	mFLs16bOSlEsqoJjByEffxcklzR16zFGbmh2E7qnQG+GGsVlpGDlTlSyPYLt+f6mvGKrh413YszZu
	cQ1zl2pEIugfPST7rHQwddg9t4Av+9A3BFeJhMhD8yKwWA98jfxP97GMgQnykGiV61VDISB9Xckp3
	2HbFJ/F4mIbl0ZhxRuhepfzq85reUx0WiaV/FDNaf6kb7/rBPqM2qj1brs7bii4BaFG+ZBq9lVYFc
	nUEQwCcIbxRR52MjlGBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrCN5-0003mJ-TJ; Sat, 27 Jul 2019 02:23:44 +0000
Received: from mail-pg1-x52f.google.com ([2607:f8b0:4864:20::52f])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrCMw-0003ly-U9
 for openwrt-devel@lists.openwrt.org; Sat, 27 Jul 2019 02:23:36 +0000
Received: by mail-pg1-x52f.google.com with SMTP id f25so25567132pgv.10
 for <openwrt-devel@lists.openwrt.org>; Fri, 26 Jul 2019 19:23:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5Y8HJX6NVveMdTA4BuAfjloTfhz7ULQb1DX7PazWllk=;
 b=IuTWybSTvkbvbXuz2FLxZ8/1Gnl7n2b7SfqL+KfTCscsiEn2F644Ysk6vu7wl05JwK
 1D+9wKc0MlZDj1mTfmVZ/np6ZBdN/skd2PApAg0mx++I22lhzc2k90KAFX8VKCt3TJDm
 zhS1JVCKo+n8g6vRGMXgjacTZFOEGlehIKDCU26IuHVaOXC7sbTUfOYg+xZi3Yz82CZ7
 sGR15h0WazaDUwj+Bae+pNApKfSeEQ8+TmXT8cb4sGObK8NCxCLT28e4/r/4APgOS9PN
 qcSdaEAQcPfd2xpg2Gqng84h2kCcX6zby8HHKrrxayyfJiUWJm/yw7b/C1t8zTuijxTs
 xeIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5Y8HJX6NVveMdTA4BuAfjloTfhz7ULQb1DX7PazWllk=;
 b=A7kKKm0p/pdj+HwGtEoUJeLdqE7KNVNjYlOepju6CkEM+uc2ItMc9dBUxxik7XyGsY
 1sE4IvciZI/c9JA/bHOX9/sPx3I7PMGn8sdWjO5rcrlIl7c4sb+wQApzIMFj9G0FVI+u
 FqxB6bbl6RnVwLMHaKbdg42tZWp958FV56OhOs8PrBXbWLc7cJuIZLgQxmWUYIThhAf8
 XGbWNqkEgic9UyCxABgHgtTL49ifGUpVuyM+6ydnuh7JPqPY2tSJUQRIxDSry/3OUTWO
 l40P3D9KDv73PmP1ls9iqXmOsmbB2V30z5ROr6Fa9nLwJK22HDAhujvYvfbdmgkaGeIt
 xbZQ==
X-Gm-Message-State: APjAAAUOzawica2L26yc+hoFvpP93ngf9CSrhEe002OTDn3UMvYSLjEy
 FXWqg6r99QTbdvxmkkDN4MZ+6MAG
X-Google-Smtp-Source: APXvYqyzCbj151HXUqqaEavSnceRpO1H5jROSWiJrwPKkzErGnlDP4ulGmm4s7vjOK2NEFYWd7cRxA==
X-Received: by 2002:aa7:9210:: with SMTP id 16mr26118947pfo.11.1564194213266; 
 Fri, 26 Jul 2019 19:23:33 -0700 (PDT)
Received: from echampetier.lab1.anevia.com ([73.93.154.227])
 by smtp.gmail.com with ESMTPSA id s24sm5592112pgm.3.2019.07.26.19.23.32
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 26 Jul 2019 19:23:32 -0700 (PDT)
From: Etienne Champetier <champetier.etienne@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 26 Jul 2019 19:23:02 -0700
Message-Id: <20190727022302.12656-1-champetier.etienne@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_192334_998782_E57AB554 
X-CRM114-Status: UNSURE (   8.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52f listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (champetier.etienne[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] [RFC] kernel: disable EAP local hack when
 using group_fwd_mask
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
Cc: Etienne Champetier <champetier.etienne@gmail.com>,
 Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

By default bridges will not forward frame with destination 01-80-C2-00-00-03
(ie wired EAP frames). You can allow forward using:
echo 8 > /sys/class/net/brX/bridge/group_fwd_mask

EAP frames over wireless are using the AP MAC address as destination,
and 640-bridge-only-accept-EAP-locally.patch hack is there to prevent
bridges from forwarding these EAP frames

Disable this hack when the administrator allow 01-80-C2-00-00-03 forward,
so that all EAP frames are allowed to be forwarded

Signed-off-by: Etienne Champetier <champetier.etienne@gmail.com>
---
 .../generic/hack-4.14/640-bridge-only-accept-EAP-locally.patch  | 2 +-
 .../generic/hack-4.19/640-bridge-only-accept-EAP-locally.patch  | 2 +-
 .../generic/hack-4.9/640-bridge-only-accept-EAP-locally.patch   | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/target/linux/generic/hack-4.14/640-bridge-only-accept-EAP-locally.patch b/target/linux/generic/hack-4.14/640-bridge-only-accept-EAP-locally.patch
index 0dbb8ee3c0..2dfd88f3aa 100644
--- a/target/linux/generic/hack-4.14/640-bridge-only-accept-EAP-locally.patch
+++ b/target/linux/generic/hack-4.14/640-bridge-only-accept-EAP-locally.patch
@@ -19,7 +19,7 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
  
 +	BR_INPUT_SKB_CB(skb)->brdev = br->dev;
 +
-+	if (skb->protocol == htons(ETH_P_PAE))
++	if (skb->protocol == htons(ETH_P_PAE) && !(br->group_fwd_mask & (1u << 3)))
 +		return br_pass_frame_up(skb);
 +
  	if (p->state == BR_STATE_LEARNING)
diff --git a/target/linux/generic/hack-4.19/640-bridge-only-accept-EAP-locally.patch b/target/linux/generic/hack-4.19/640-bridge-only-accept-EAP-locally.patch
index 981d49b9c0..31d5b09ac6 100644
--- a/target/linux/generic/hack-4.19/640-bridge-only-accept-EAP-locally.patch
+++ b/target/linux/generic/hack-4.19/640-bridge-only-accept-EAP-locally.patch
@@ -19,7 +19,7 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
  
 +	BR_INPUT_SKB_CB(skb)->brdev = br->dev;
 +
-+	if (skb->protocol == htons(ETH_P_PAE))
++	if (skb->protocol == htons(ETH_P_PAE) && !(br->group_fwd_mask & (1u << 3)))
 +		return br_pass_frame_up(skb);
 +
  	if (p->state == BR_STATE_LEARNING)
diff --git a/target/linux/generic/hack-4.9/640-bridge-only-accept-EAP-locally.patch b/target/linux/generic/hack-4.9/640-bridge-only-accept-EAP-locally.patch
index ba87420b32..c65b8ac611 100644
--- a/target/linux/generic/hack-4.9/640-bridge-only-accept-EAP-locally.patch
+++ b/target/linux/generic/hack-4.9/640-bridge-only-accept-EAP-locally.patch
@@ -19,7 +19,7 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
  
 +	BR_INPUT_SKB_CB(skb)->brdev = br->dev;
 +
-+	if (skb->protocol == htons(ETH_P_PAE))
++	if (skb->protocol == htons(ETH_P_PAE) && !(br->group_fwd_mask & (1u << 3)))
 +		return br_pass_frame_up(skb);
 +
  	if (p->state == BR_STATE_LEARNING)
-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
