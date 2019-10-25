Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72C90E55D1
	for <lists+openwrt-devel@lfdr.de>; Fri, 25 Oct 2019 23:27:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wsCImQwGKE6NWbsY1ozBU1PVq1np49GyCvsjMmR97+c=; b=lLgVSVVZbRIWOT
	topOBGwubN2Px2aavWTmJtyvio/FReN/Qh/kvpaZiCYmig8qPz06c18SwIIyI8ZWfOtHNLceZWiWr
	jIl4cPgL4REP42103s5pWXLu4OIcN8oirFopTsynJ80vhlJ8je6LWpbUFaivns8hGKqxDU31Q2+oz
	1ZlprNrRLhjNdzkNhxI3KmZTSdfBu7lZLTv6lWUcKmZLmWAxWXL/B5xCMQa5FJuoeGSlMgsZya4lA
	sdARQlLJOGK80NKQ1SLg+6vJmhbplkZomsW+nk44gbpqTztkntZnshSlK5EcYSbSiHS56n6dRMWzM
	vrk+5dO7g9mZxlz5RO6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO77f-000800-Ha; Fri, 25 Oct 2019 21:27:51 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO77Y-0007uZ-0w
 for openwrt-devel@lists.openwrt.org; Fri, 25 Oct 2019 21:27:45 +0000
Received: by mail-pf1-x441.google.com with SMTP id c184so2450198pfb.0
 for <openwrt-devel@lists.openwrt.org>; Fri, 25 Oct 2019 14:27:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gateworks-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=aXhkreDH3HfkPqZtU402+hJB+Kp8AzAgXMJnN2sp9Io=;
 b=0RAkuoLwzAdHg5qh4cnnGAuzwT/jZLOf7dvRdVAc28pluSzVXPmI/YbwWtBno3GUfB
 a/VK1VgAqMPO/DiFrJ8GjZu8T7TxWV3NK6VJYTVTcihOAHliFtnpvQls/lzFbOviT+GG
 H9+9FrKCO7ZeXgr5Hn4Ji1IUN6vg9NciBIuvjfeHYlebZnPBH/l7ztD59Onk2t/aFyic
 nLrH7C+HUx3vRphXvMTY+VZB1bYtmQFq0/cyl66LaP+oGQaic8yzpRCNW77OAzTg/Czi
 37UBdgikqxuiLHyJlpxQdeg7Oz98RHKVI2E+K8ctrvd6Ez7mm180oZJ+PtHbzKHVzOSp
 9v+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=aXhkreDH3HfkPqZtU402+hJB+Kp8AzAgXMJnN2sp9Io=;
 b=SonKwz+/gDOi/DlYbLa15wYrcoxvjtjIk3t+KS+Kg5fGDYCvIiujLV/Gjrnf5Bk/Ma
 An7qVpJM+eWTlAN0hz/L26/B8Vp55mplYLiQzS9yduPIqK/OsSTrkSMHbFrxUw8vbVyE
 hpCphk44yq1zPzLj0nElxm9uDLAEf6i51EQ/Z+01MwbjS0obzDTSrumT395WjsaXE2s7
 d+rYk0L+V2ZAcstoJMkVoT05joNA2F97oyx0BSgPnpqn1hJSZV04+LVDjFrosdp+UPQF
 nm35kRBxX5YUMY/Xuma3vhwMlPwNZh6PdYTsJ8ANM/RKm/namF9qoHmd1SGsH/jL7BZS
 xWjg==
X-Gm-Message-State: APjAAAWslAK1DLq1/Qx1YiOwu/RY4qWxz5OsS7nhgaD4xkKyCzXsA69i
 V6vqVIBVh689zEWI/2TLrajINdmPTHI=
X-Google-Smtp-Source: APXvYqxkRldS/qIWkbPS80ZI3Eq2Mi8A6VLOUBNCeaEM6QWGRACwriG9pXJC3Q8o1FdbYQXQF4cgBA==
X-Received: by 2002:aa7:8dd4:: with SMTP id j20mr6809163pfr.36.1572038862188; 
 Fri, 25 Oct 2019 14:27:42 -0700 (PDT)
Received: from tharvey.pdc.gateworks.com
 (68-189-91-139.static.snlo.ca.charter.com. [68.189.91.139])
 by smtp.gmail.com with ESMTPSA id u68sm3527990pfu.39.2019.10.25.14.27.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 25 Oct 2019 14:27:41 -0700 (PDT)
From: Tim Harvey <tharvey@gateworks.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 25 Oct 2019 14:27:31 -0700
Message-Id: <1572038851-4029-1-git-send-email-tharvey@gateworks.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_142744_096267_BEB50ABF 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] octeontx: fix thunderx BGX underflow irq
 name
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
Cc: Tim Harvey <tharvey@gateworks.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

request_irq requires irq names to be static/allocated and not on the stack

Signed-off-by: Tim Harvey <tharvey@gateworks.com>
---
 ...1-net-thunderx-workaround-BGX-TX-Underflow-issue.patch | 15 +++++++++++----
 1 file changed, 11 insertions(+), 4 deletions(-)

diff --git a/target/linux/octeontx/patches-4.14/0001-net-thunderx-workaround-BGX-TX-Underflow-issue.patch b/target/linux/octeontx/patches-4.14/0001-net-thunderx-workaround-BGX-TX-Underflow-issue.patch
index ef7aef3..5743745 100644
--- a/target/linux/octeontx/patches-4.14/0001-net-thunderx-workaround-BGX-TX-Underflow-issue.patch
+++ b/target/linux/octeontx/patches-4.14/0001-net-thunderx-workaround-BGX-TX-Underflow-issue.patch
@@ -15,7 +15,15 @@ Signed-off-by: Tim Harvey <tharvey@gateworks.com>
 
 --- a/drivers/net/ethernet/cavium/thunder/thunder_bgx.c
 +++ b/drivers/net/ethernet/cavium/thunder/thunder_bgx.c
-@@ -1344,6 +1344,54 @@ static int bgx_init_phy(struct bgx *bgx)
+@@ -56,6 +56,7 @@ struct bgx {
+ 	bool                    is_dlm;
+ 	bool                    is_rgx;
+ 	int			phy_mode;
++	char			irq_name[7];
+ };
+ 
+ static struct bgx *bgx_vnic[MAX_BGX_THUNDER];
+@@ -1344,6 +1345,53 @@ static int bgx_init_phy(struct bgx *bgx)
  	return bgx_init_of_phy(bgx);
  }
  
@@ -49,7 +57,6 @@ Signed-off-by: Tim Harvey <tharvey@gateworks.com>
 +	struct bgx *bgx = pci_get_drvdata(pdev);
 +	struct device *dev = &pdev->dev;
 +	int num_vec, ret;
-+	char irq_name[32];
 +
 +	/* Enable MSI-X */
 +	num_vec = pci_msix_vec_count(pdev);
@@ -58,9 +65,9 @@ Signed-off-by: Tim Harvey <tharvey@gateworks.com>
 +		dev_err(dev, "Req for #%d msix vectors failed\n", num_vec);
 +		return 1;
 +	}
-+	sprintf(irq_name, "BGX%d", bgx->bgx_id);
++	sprintf(bgx->irq_name, "BGX%d", bgx->bgx_id);
 +	ret = request_irq(pci_irq_vector(pdev, GMPX_GMI_TX_INT),
-+		bgx_intr_handler, 0, irq_name, bgx);
++		bgx_intr_handler, 0, bgx->irq_name, bgx);
 +	if (ret)
 +		return 1;
 +
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
