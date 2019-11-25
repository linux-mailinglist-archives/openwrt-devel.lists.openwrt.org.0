Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 895CD1095BB
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 Nov 2019 23:46:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=x4zZNFU/8wT3XCXnY5ooW6zWsEGzKrql1kYjdq8WKZg=; b=Xi83w/hgS4hQm6WDvKOPVV2lxY
	m2fD5aRyaB6CTQVYoBP3LNQRNX4zflcIeCV7G4qhn86BaQvKxMkcVuHUay3gEvIenTvn0Yk6nvN/G
	HhNzaYKOc4T0Zl9EunHfKmZDmPUkkZrkK5+GNeXrPNiy0/M0o6ZiPsXoVwYnOsn/WJio8+LHPomji
	MnbHhKhnEynunnJftpcWFsjJKLF4OUuAS4fDtyhWFfnzpONSFEJPi1Y+ym/sTArG7DjRLDjNRreFS
	BZ5VInwlg1/VuGlOkprMAYzGkY8vbykwN3ND9tWOQKXKOtjewTLihW1AhY0jdzB4qKR84kWFTda6B
	TCoI1Qpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZN7f-0007L1-La; Mon, 25 Nov 2019 22:46:23 +0000
Received: from mail-pg1-x52c.google.com ([2607:f8b0:4864:20::52c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZN6S-0005mW-KT
 for openwrt-devel@lists.openwrt.org; Mon, 25 Nov 2019 22:45:10 +0000
Received: by mail-pg1-x52c.google.com with SMTP id b1so7911531pgq.10
 for <openwrt-devel@lists.openwrt.org>; Mon, 25 Nov 2019 14:45:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=oAhxspPGNpxvRGhawAPm41HpIFzpb4OicYlzRJ3b+ew=;
 b=N2GF6tkXc3y518HNR371v0N/1K589e0sOZKI+Yv6CuTK3P0ka05xS1IIuXrqplWlTJ
 kpUHndpmbkIq8z9lctY4FBsPG1dtXiAPZB4honJbCo5g4MWS+4oxMHxQIumqPQGDPCaM
 hAuiqr91O1o1yck1fs5CVDQbHmPabKcfcPPCHPRAXCqpGsmBdIxU5WiFpZFigPf41AXo
 KfW0W2ZeTHDSI+GnlFWmGf/FPMP+8nI/YJMa01i7ulrC9fRI4Z66n7jiJ3LXhPX4sU8h
 77NfMfplOwY1GpwpSDcWmIWhQmnKisq7oSg9qF74F3zY6JupZ72x2Me7zMAlszkMJ7x9
 f9Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oAhxspPGNpxvRGhawAPm41HpIFzpb4OicYlzRJ3b+ew=;
 b=ceMpC+hy8jDfphEGrjkBJF6Spyp/I48NW4HEcrYMQCRDpD4v5MsnspYTSiv9Y+8c7w
 8jfCrtHAmFAE79XMHx9lYHnd95r7D3gdrwCaFNg69d55zkEX+veUUBtlLGjqxWqsEZDM
 qgvCrQ1yBJpLxUpB08TaA+/UXLUmgDxvbqzhUvp2Vs+9Kgmsdp0B+9Jy/dPQMvmvxm9B
 QlWIdUXqXj/zChYo6Xjkf2kF4vwtewzjcoVNUclhQ3Bc0LqDPls1FWcmLNNfw+OJp1Kt
 RL1wYLtdFkKCyH7qEUaRISuChuPmxIvzhgAROzohe0WFZkda75aTjTX75Akyn1+OC/Ku
 nElA==
X-Gm-Message-State: APjAAAUUMHfxI+Wn+aNr2o6mYM1FGxiz/1gLoDbIRHtrBo/LbIW+S/bl
 Vpx0PmySNTPENNcg20AuVVpe3h2aEsw=
X-Google-Smtp-Source: APXvYqx0QlTT9MI0DBWqgcW0H/BNF1PRZsLhd5Y5oHJo0+fdq04Lq4+bb0rcLQQWHtDvcdm+Cul95A==
X-Received: by 2002:a62:501:: with SMTP id 1mr38304859pff.69.1574721907376;
 Mon, 25 Nov 2019 14:45:07 -0800 (PST)
Received: from mangix-trapnet.lan ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id gx16sm393947pjb.10.2019.11.25.14.45.06
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Nov 2019 14:45:06 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 25 Nov 2019 14:44:49 -0800
Message-Id: <20191125224502.266177-4-rosenp@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191125224502.266177-1-rosenp@gmail.com>
References: <20191125224502.266177-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_144508_734859_6D9899D1 
X-CRM114-Status: UNSURE (   8.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52c listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH 04/17] gen_zynq_sdcard_img.sh: Switch to
 /bin/sh
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

This has nothing that needs bash.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 target/linux/zynq/image/gen_zynq_sdcard_img.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/zynq/image/gen_zynq_sdcard_img.sh b/target/linux/zynq/image/gen_zynq_sdcard_img.sh
index 460a336e69..9afe18713e 100755
--- a/target/linux/zynq/image/gen_zynq_sdcard_img.sh
+++ b/target/linux/zynq/image/gen_zynq_sdcard_img.sh
@@ -1,4 +1,4 @@
-#!/usr/bin/env bash
+#!/bin/sh
 
 set -ex
 [ $# -eq 5 ] || {
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
