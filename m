Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA63A900DA
	for <lists+openwrt-devel@lfdr.de>; Fri, 16 Aug 2019 13:38:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bQwJkiBn1q641p719HJ7gaUQH2TEoDksxxWIOOme/JM=; b=jrValoboUyl3Di
	T1uBPb3MW/6J21IN+NlLzyFOiOqWD07Kq9GynZFI8yend/QiDvlWFjWZJBwABVVb0dnEVr5GENvIp
	0xcwk48EhUb+mUp9Zv4kYf8jNcu5GZr/UYMmR3+gzDDvwczj0hwBsIWQCQ6Ut5KuH7ftI+kbPCoFM
	GQIoXMTC3eyE3HMyo/pJwBdfrgbBiRE4+uhjSsXi7cfD9o+dtgtQ4kmBgLCFDdmRG3ZJzqsqj8INe
	K+jRX/ZPOa2D8WexgMd4B70/wEvnknOFOSCodGkXQWecpereDSFXz42nRnWcYMeC5VdPJ9/SzNZng
	3LlIjJ7u+jLezqZbIwGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyaYc-00034g-9k; Fri, 16 Aug 2019 11:38:10 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyaYO-00034P-Ei
 for openwrt-devel@lists.openwrt.org; Fri, 16 Aug 2019 11:37:58 +0000
Received: by mail-wr1-x444.google.com with SMTP id z1so1226452wru.13
 for <openwrt-devel@lists.openwrt.org>; Fri, 16 Aug 2019 04:37:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ncentric-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=X8sRsRt9ART46psXR0UPY40O761/4/ziHZpTazuoMCc=;
 b=nXOar199k84rwJMeg7hZ3c9rqduiImyi4ci0LVl53sf89ELLFit8jpXTanSht2VLLv
 66kV7owhuw6NEbfgr5AoncBJrX7RHnLTjBEvxDDFNdV0wBrnZDyB8fw0qNieqc+obSun
 3WMWKdYDXQTTsaZlInpF8GCG6EG724PWl25MhKrYaoCsG9rEJiRznVn94jLdUXL+5lIV
 GJayFQUIbJSwk2Ieisxx8+DlEX2KzUxj5MxWRCq9N9ucYsVgVGtZlpWSyrPnzRuzwK2t
 LvuP+1pTxr6gkeWPk3nq+mPw7VfrF76JGIzu8Wgt4dTiMydpnhj8KcgJGTULzNjTFVDQ
 PZZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=X8sRsRt9ART46psXR0UPY40O761/4/ziHZpTazuoMCc=;
 b=pXYtf/4EjmwTZ29wBMDZmfkhlBzS/sX1bKfao+gAH0tHWUGAL8BGhhebbYjrQYEmDw
 T8wxx4xoks6qiwKbYHhzslbW0nOcgIxy0um9VMR+mYofe7faZjEBQ5Nk57ZmEhfVA8xm
 4IAqe67Dxm4RaSoHP/jtId7YsU+5qEb/UkO3MRVQQPmnDDwt2BshZH41UhtZVkXAjBdS
 miTXdGxrooECUkY6FnSYuuXL2Y+y6Jf/+9am9uhA7UTLVY44nK4LqXJfTO3EDvvs70JC
 f6eMWtJUUvQx5aKG137nz0cDaTCyNW/dDagQKpoJ3QBD3rs+VwJUbsLH+Ssm2QSsitwP
 2a+w==
X-Gm-Message-State: APjAAAVYW4FRHd39HOwDyjkVJ5NbeTjNEo6zK24xp5UdNoRYdkGjZyWj
 Zq47g2msNy4Riw8eP5SMuKMubjBTLn0=
X-Google-Smtp-Source: APXvYqwJNS3/1gXPKgP7SxRZGqz3riiaAl14PTWR79Xi0uCr0MBVKUE/YH0sMTpioBDzBqyuGS1R+w==
X-Received: by 2002:adf:9b9d:: with SMTP id d29mr10353717wrc.132.1565955474453; 
 Fri, 16 Aug 2019 04:37:54 -0700 (PDT)
Received: from kvdp-BRIX.cmb.citymesh.com
 (138.114-243-81.adsl-dyn.isp.belgacom.be. [81.243.114.138])
 by smtp.gmail.com with ESMTPSA id s64sm8310996wmf.16.2019.08.16.04.37.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 Aug 2019 04:37:54 -0700 (PDT)
From: Koen Vandeputte <koen.vandeputte@ncentric.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 16 Aug 2019 13:37:43 +0200
Message-Id: <20190816113743.8135-1-koen.vandeputte@ncentric.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_043756_556481_38B7BBC2 
X-CRM114-Status: UNSURE (   9.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] ar71xx: ag71xx: add missing register writes
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
Cc: ynezz@true.cz, gch981213@gmail.com,
 Koen Vandeputte <koen.vandeputte@ncentric.com>, john@phrozen.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

These are added in ath79, but were not backported here

Signed-off-by: Koen Vandeputte <koen.vandeputte@ncentric.com>
---
 .../files/drivers/net/ethernet/atheros/ag71xx/ag71xx_main.c  | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/ag71xx_main.c b/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/ag71xx_main.c
index f0d8d46a18a1..e97317bd20ff 100644
--- a/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/ag71xx_main.c
+++ b/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/ag71xx_main.c
@@ -1274,6 +1274,9 @@ static int ag71xx_change_mtu(struct net_device *dev, int new_mtu)
 		return -EBUSY;
 
 	dev->mtu = new_mtu;
+	ag71xx_wr(ag, AG71XX_REG_MAC_MFL,
+		  ag71xx_max_frame_len(dev->mtu));
+
 	return 0;
 }
 
@@ -1413,6 +1416,8 @@ static int ag71xx_probe(struct platform_device *pdev)
 
 	ag71xx_dump_regs(ag);
 
+	ag71xx_wr(ag, AG71XX_REG_MAC_CFG1, 0);
+
 	ag71xx_hw_init(ag);
 
 	ag71xx_dump_regs(ag);
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
