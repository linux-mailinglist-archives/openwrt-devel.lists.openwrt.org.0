Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 036EF1C7B7D
	for <lists+openwrt-devel@lfdr.de>; Wed,  6 May 2020 22:49:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=q87MrMzJpK70OAFLrXkfostJJFechcExk0HD5/5XBXU=; b=KDlqdk9sB1pJZ/
	DzFSVYysPp7aS7uq71fl/83chZHuyAlg7teWhCiLvrY8+7IDZWSM3h7uaSoEyIW/YPe6Z2zAORs7l
	v/kHEWDTOrBxp4IMuLsGWx0xVprcYCftGuaQxIuUi6ZFYlqHHcyt8g8RQM4FLiZGdZN/v96ftacDY
	Zj1CYVHxRul/V/AUzpz1mv3gRSHJHYKwYMoHB1w+TnkFA80fAM8JKtaSKRVlP3vlpSXw5p47fPtPc
	jC58+g3dgMg/6mbr51JdUrefzpM3FQePsdMcJNXql1edeWtDsDgY9fL44T7LOMmW/V91jTvIrHqYS
	Kvdt67Nr57lhwt7j80OQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWQyg-0001sY-9N; Wed, 06 May 2020 20:49:14 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWQyZ-0001s7-LP
 for openwrt-devel@lists.openwrt.org; Wed, 06 May 2020 20:49:08 +0000
Received: by mail-wm1-x343.google.com with SMTP id v8so5863252wma.0
 for <openwrt-devel@lists.openwrt.org>; Wed, 06 May 2020 13:49:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=IhNRUR8Ia4B1vElX1nBz51Z0fN5gyvEwFkko0Z6F1J0=;
 b=mPk0m7+Vp52ie6JO7WW23owpcd8awD0guxnJ+usas+TiTrKGOrBBhLpp9PGdKorS3q
 4yvpxJFP0LNd7STqi0IkXmiKx6SJwgTmwSqB4xsB0L7hl2wif41n8kfcMt0jSockXOuw
 qtgjinlGTCjsCY9hszVrUeuM+bV58d2U2SOWwmtVA50WPHU6GFWfE0PTTs1n1B7k+6A7
 GC1DGjKZueS33ow3DxRMeG9RfRaKdXvx3wgQvi3Ba0oC7EftXf+rcsSm8y1wUW24kInm
 P7Lch3ijWduetQRQgb8z8/Py2F2MqWLmmDvQicl1KXEllW2zfolSNVcOpKvdQEb9UP3T
 vWIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=IhNRUR8Ia4B1vElX1nBz51Z0fN5gyvEwFkko0Z6F1J0=;
 b=pujt3Ko2oboMWrp9GDm3V/IQBdtoL1D7NAGwM+tLO9qnaXlBjr0yQJkar2pF/EYzc1
 pKPj4kDL/zv78RvHp15r/YHLSjFPkFptt6AdgXRRrUn9LX820KditmL4InWUum4wbvN0
 4uaWoSaBMJb3krX4MEnxIqAOsuLja2MA2epoZfQryqpT5C/BGcEGlyiNVqKtrw1qd29B
 ubZO0ycC+4BTZl0bqzNvLPlgyfUkeykF4BQoNUYpdocTGXwVH8IqT+aDRKXokPbUe77k
 yp5MPMezQ5bXJJlHiDhqCHZN+gE0SqD+IfihT8l9DulHy13q3UkGNeHv0QEWeiFyYX3d
 /Lyg==
X-Gm-Message-State: AGi0PuaFaNV/8gXtWPf0YBGiTwcWhkZeCxhvt6oyezg6hTWaMz7Q/IuR
 FDEE+AB5YGFwyQ9zTo/3mHY5qmpiFRs=
X-Google-Smtp-Source: APiQypLG5bYDis2D7MRvPk0c/1XbyIXd7F3lk+ymwb/pWmWnE3IdwNEcreaIR7/O831Nvm9t6eo6FA==
X-Received: by 2002:a7b:c0d5:: with SMTP id s21mr6273898wmh.107.1588798142393; 
 Wed, 06 May 2020 13:49:02 -0700 (PDT)
Received: from localhost.localdomain (ip-95-220-39-251.bb.netbynet.ru.
 [95.220.39.251])
 by smtp.gmail.com with ESMTPSA id j13sm4364398wrx.5.2020.05.06.13.49.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 May 2020 13:49:01 -0700 (PDT)
From: Alexey Dobrovolsky <dobrovolskiy.alexey@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  6 May 2020 23:48:15 +0300
Message-Id: <20200506204815.1776-1-dobrovolskiy.alexey@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_134907_724515_3C3F3A66 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dobrovolskiy.alexey[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] ramips: kernel: fix awake-rt305x-dwc2 patch
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
Cc: Alexey Dobrovolsky <dobrovolskiy.alexey@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

At this point in v5.4 kernel we cannot use dwc2_readl() and
dwc2_writel() since they rely on the value hsotg->needs_byte_swap
which cannot be obtained before the controller wakes up.
We should use readl() and writel() to wake up the controller before
calling dwc2_check_core_endianness().

Fixes:
- 0069-awake-rt305x-dwc2-controller.patch

Signed-off-by: Alexey Dobrovolsky <dobrovolskiy.alexey@gmail.com>
---
 .../0069-awake-rt305x-dwc2-controller.patch        | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/target/linux/ramips/patches-5.4/0069-awake-rt305x-dwc2-controller.patch b/target/linux/ramips/patches-5.4/0069-awake-rt305x-dwc2-controller.patch
index 1ce8fac682..1ce7102a4e 100644
--- a/target/linux/ramips/patches-5.4/0069-awake-rt305x-dwc2-controller.patch
+++ b/target/linux/ramips/patches-5.4/0069-awake-rt305x-dwc2-controller.patch
@@ -1,15 +1,15 @@
 --- a/drivers/usb/dwc2/platform.c
 +++ b/drivers/usb/dwc2/platform.c
-@@ -432,6 +432,12 @@ static int dwc2_driver_probe(struct plat
- 
- 	hsotg->needs_byte_swap = dwc2_check_core_endianness(hsotg);
+@@ -430,6 +430,12 @@ static int dwc2_driver_probe(struct plat
+	if (retval)
+		return retval;
  
 +	/* Enable USB port before any regs access */
-+	if (dwc2_readl(hsotg, PCGCTL) & 0x0f) {
-+		dwc2_writel(0x00, hsotg, PCGCTL);
++	if (readl(hsotg->regs + PCGCTL) & 0x0f) {
++		writel(0x00, hsotg->regs + PCGCTL);
 +		/* TODO: mdelay(25) here? vendor driver don't use it */
 +	}
 +
+ 	hsotg->needs_byte_swap = dwc2_check_core_endianness(hsotg);
+
  	retval = dwc2_get_dr_mode(hsotg);
- 	if (retval)
- 		goto error;
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
