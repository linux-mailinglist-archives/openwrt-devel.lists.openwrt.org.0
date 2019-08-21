Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9293E983C6
	for <lists+openwrt-devel@lfdr.de>; Wed, 21 Aug 2019 20:57:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hL30WXFaqjQvUkngvh55hIuY71WZs7UHU9ws6LtzOY0=; b=MZSQOHaJ/kT6GS
	RPaP3j6ivbOXF7CmDBHZr9Yg+Y3Mp/fCNdZCNt79wi+ubJBkmxTSNp9fy0FmUqdwf1EiKP6zyLUlx
	lLHb0W3J4Uq/Me56x/aBmSL+nQFhhh5xc7HTwjyk58n1u4dO7bgeCu4mpyILPtEmewjKB27+MGFh9
	PIQ15Z1otRm9IyGiLt8tq79+6Pd9o2ev22X3+Vk0Q6ntJ37WPGmDIW/fhT5apKQ0nj5E316w1eVCG
	LuWIGpSMDkLT1NW6EIpQDXUI4hyrJrJ6wuk+O+3dc9X00pqlMxMgiFPy1VCoIEYUzTgEhgRjQ+pfK
	1NuwaY5cA0XWJacjbEvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0VnZ-0003Nt-Ef; Wed, 21 Aug 2019 18:57:33 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0VnS-0003Lr-8T
 for openwrt-devel@lists.openwrt.org; Wed, 21 Aug 2019 18:57:27 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 10so3179916wmp.3
 for <openwrt-devel@lists.openwrt.org>; Wed, 21 Aug 2019 11:57:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xiVPXZ82d/sFvosOVpYOnD7JmgqWSEUrspbBMNVmHa0=;
 b=daSi/qZOkfN1PwigdZexIDDJP/INzwcD3P1a5dEvr51fK1jlrMP6EYIQaTk4HsUBNj
 /gPcITYEpJ6QoVDdlR+b9bzxsrw1A48lqrLsdJbLvHQ9Oc3c8e+je8QAE17xkAxEpbHD
 lxEJQdM8TVpNVS9OanHmK/G67Ib9u9Y8H03h9u1T2nPm0CyltpJmEM7X9hLjj4IVBZly
 VnMVgral7PhN4YfOutlHlh/3IF2DeqW6DcDyandvg1tBxXbm8qzpasBGKU0EpwnrKtRP
 CLEVmNOgefQg6frNA3c2hYyv1E47yxS2/vrMCfSyakAgX5joefxA0lGETXnoH++5BYI+
 EcYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xiVPXZ82d/sFvosOVpYOnD7JmgqWSEUrspbBMNVmHa0=;
 b=Inc/QDhrO44t15ihupUk11mxQ4L1We5YDXySDzxbOCuQoRjs7/71dE5W0b2JBFFruC
 Zy+pELbllKqnncI0pNw+M3q6AYF48OrRkk6VhcgLYqCkKZztKt5qdjYs3EakT7BzmIoK
 6WwFpOtzEh8mZTpb0iXxgy2Xuj9zbkeSSNi762L6QhtX0DoMpDcQwxj0OFq9Kmsvr7M/
 Lzfa7p+DEetJMA5BG8JYvcpI0zWRVW5vGY9Ce0lSJElhjPMcAScVxH7/T4UAwgAqRSXw
 lBOGfFgEbSJ2VcNQ92f1fdLVs9Hzn2fEYXhVEn10Bcj7pV4fwLQb+FN5pSnyRY/FqZvX
 8+2g==
X-Gm-Message-State: APjAAAXIJwCGaYII56FhSOYInl6kmPYS9xqFe3oNx7x7/EHSPNCTKDet
 fhC+5moo0cHn3DgkJyc7w6FCtiKv
X-Google-Smtp-Source: APXvYqy+IIHOW9W2msEnX/oN8/3sgY3Cu9cwTyORoKJVVlmdJ6NxuEwywUoMPAoCdGcoQ6Ndji4QfA==
X-Received: by 2002:a7b:c3d0:: with SMTP id t16mr1803792wmj.25.1566413844763; 
 Wed, 21 Aug 2019 11:57:24 -0700 (PDT)
Received: from tool.localnet (180.151.117.91.dynamic.reverse-mundo-r.com.
 [91.117.151.180])
 by smtp.googlemail.com with ESMTPSA id l62sm871575wml.13.2019.08.21.11.57.23
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 11:57:24 -0700 (PDT)
From: Daniel Gonzalez Cabanelas <dgcbueu@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 21 Aug 2019 20:57:22 +0200
Message-ID: <2306678.c9ocJjGFzm@tool>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_115726_328132_41576B68 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32b listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dgcbueu[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH v2] brcm63xx: R5010UNv2: fix flash
 partitions for 16MB flash
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

The router Nucom R5010UN v2 has the partitions defined for a 8MB flash, but the 
flash chip is 16MB size. Fix it

Fixes: 474cde61234c ("brcm63xx: probe SPI flash through DT")
---
Changes in v2: 
- the mail client truncated the patch header, fixed

 target/linux/brcm63xx/dts/r5010unv2.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/target/linux/brcm63xx/dts/r5010unv2.dts b/target/linux/brcm63xx/dts/r5010unv2.dts
index a782126300..89d9b763bd 100644
--- a/target/linux/brcm63xx/dts/r5010unv2.dts
+++ b/target/linux/brcm63xx/dts/r5010unv2.dts
@@ -95,13 +95,13 @@
 			};
 
 			linux@10000 {
-				reg = <0x010000 0x7e0000>;
+				reg = <0x010000 0xfe0000>;
 				label = "linux";
 				compatible = "brcm,bcm963xx-imagetag";
 			};
 
-			nvram@7f0000 {
-				reg = <0x7f0000 0x010000>;
+			nvram@ff0000 {
+				reg = <0xff0000 0x010000>;
 				label = "nvram";
 			};
 		};
-- 
2.23.0





_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
