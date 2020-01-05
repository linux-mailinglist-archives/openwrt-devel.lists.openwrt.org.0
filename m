Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 972CE1306C1
	for <lists+openwrt-devel@lfdr.de>; Sun,  5 Jan 2020 09:14:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hl5sC16gItloDG/GdFwiuRCXOzR1kCOtLaSOi+jfyx8=; b=ZdDvmVxWXU0K0t
	2RMMZtF3KZBtMuOwUgUnTxblZsEwa3XOWECTqqwk2wmdDUSftrXRcMtLCwAuUG26oMZoDNINyGbip
	QvPhv5/qbNooVZRTjX8QCZgISpgTp7EzNrpQSIwVr98/xVSq+RsUb3NsVtJGFFeHYpkEzMVapJzFg
	Ug+HpFzmt8xefEBU4HkDNGjFThicvXWEQ81Ib2uBxW6NhWD/aoDJdX1Ngpz9xvXn69pT4Uc1x1xuf
	+6mzBH8f6R3q5Q917rq4P0LfQlRLoBx8wyx/HVH8J1jSp/ZBWo8gZmYWE41OhI0kTAQCFdQAJ1l9Y
	092Kxm1rGPHeOYSHct6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1io13M-0003Ww-Mp; Sun, 05 Jan 2020 08:14:28 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1io135-0003QP-HH
 for openwrt-devel@lists.openwrt.org; Sun, 05 Jan 2020 08:14:14 +0000
Received: by mail-pg1-x541.google.com with SMTP id b137so25388811pga.6
 for <openwrt-devel@lists.openwrt.org>; Sun, 05 Jan 2020 00:14:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=okWEsrh2BPZfWlcIb2Qn0lTGMefZXkmC1RiRoPPWgiU=;
 b=jEE1N/Rl+9OhrY7Xu/aHdNYs5USosYQ1Cl8jWIOZvb45mNDzP9eYAYT+2r1/wy1X8D
 8Wnp+sn3wIxGAiHt7qjixMz0ByJft2bQDMWtclgYFuzXIin9IIv2q0p/5A+zl+FeBL+g
 BSvoMgqI/M0x2dkXoUJxCGyeudr9uD1ZaTDyfHuR3JvKmONd64wE0kXeuDcR5PWl6h02
 1z10xS96gldSyrIzwexcrYl0pbJJhno9f3rzsLG/9wYyY2y9/Z7qRDXhR93TxvnGNOTM
 z4B2hUERMEjqaJ4QO7xRrKnOdYye6lgbMBmL0xA/WCI8sIL4IVb1ywBTspi/90qkp82l
 MgPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=okWEsrh2BPZfWlcIb2Qn0lTGMefZXkmC1RiRoPPWgiU=;
 b=YRM6h0zPzyUs8wEzMEOso9+cii5ru+qlIyUo13ZMYqDiZsLOfxaeTC3IRh7hFyX+26
 Q19ZQvYihOCkiVpKUj7Vj8px5Cx8UJSXCwcylY+uFUBrCasqcfe4pNkpprlsQ6JO+E49
 Eg3J00eB1rk7CX1PVXrG9i+JX2OYZ91pPCS8LIZxViwdCihfhEZRfnLi2Dx5eDHRP2FE
 QV7Ql6y7kb/5rGdw+sLIKxwRnEYFkYNs/M5oYGAyOQAO3rViWTZuYWzp6cFxR4NwUa+b
 PQzTC1OkcNK/aFP8gm/vY/FZP5rFvAPy6B2XV3b67RH6TsybdOhtaQ/1xYbbeZT8eZ44
 maEA==
X-Gm-Message-State: APjAAAWQH4MJXpfvmlLuktfdWwHXUOkhFY5LWMHVS8wUz7fVcb2d62vn
 USmN1mMDE67iDS4Kqvbs5qdaqkur
X-Google-Smtp-Source: APXvYqwVcBYhyhNoSCeIVNX8JPy3Azro9S2dhC3s9S7902m7dkVOM/RJal5mqhrxBApQn829ScZT1Q==
X-Received: by 2002:a63:465b:: with SMTP id
 v27mr107309703pgk.257.1578212050422; 
 Sun, 05 Jan 2020 00:14:10 -0800 (PST)
Received: from localhost.localdomain (M106072039032.v4.enabler.ne.jp.
 [106.72.39.32])
 by smtp.gmail.com with ESMTPSA id y6sm19070688pjy.1.2020.01.05.00.14.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 05 Jan 2020 00:14:09 -0800 (PST)
From: Tokunori Ikegami <ikegami.t@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  5 Jan 2020 17:13:02 +0900
Message-Id: <20200105081303.1952-2-ikegami.t@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200105081303.1952-1-ikegami.t@gmail.com>
References: <20200105081303.1952-1-ikegami.t@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_001411_610793_8BD6C5DC 
X-CRM114-Status: GOOD (  13.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ikegami.t[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH v2 1/2] ar71xx: Remove mtd cfi_cmdset_0002
 status check patch
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
Cc: Tokunori Ikegami <ikegami.t@gmail.com>,
 Koen Vandeputte <koen.vandeputte@ncentric.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Currently the patch only changes break to use goto statement instead.
But not necessary acutually since the ret value checked after the for loop.
So it is okay for the break case before changed by the patch also.

This patch only reverts the following commit partially.
  https://github.com/openwrt/openwrt/commit/ddc11c3932c7b7b7df7d5fbd48f207e77619eaa7
    Note: The changes are mainly applied into the linux kernel upstream.

Signed-off-by: Tokunori Ikegami <ikegami.t@gmail.com>
Cc: Koen Vandeputte <koen.vandeputte@ncentric.com>
---
 .../403-mtd_fix_cfi_cmdset_0002_status_check.patch | 62 ----------------------
 1 file changed, 62 deletions(-)
 delete mode 100644 target/linux/ar71xx/patches-4.14/403-mtd_fix_cfi_cmdset_0002_status_check.patch

diff --git a/target/linux/ar71xx/patches-4.14/403-mtd_fix_cfi_cmdset_0002_status_check.patch b/target/linux/ar71xx/patches-4.14/403-mtd_fix_cfi_cmdset_0002_status_check.patch
deleted file mode 100644
index 4ef2303769..0000000000
--- a/target/linux/ar71xx/patches-4.14/403-mtd_fix_cfi_cmdset_0002_status_check.patch
+++ /dev/null
@@ -1,62 +0,0 @@
---- a/drivers/mtd/chips/cfi_cmdset_0002.c
-+++ b/drivers/mtd/chips/cfi_cmdset_0002.c
-@@ -1641,7 +1641,7 @@ static int __xipram do_write_oneword(str
- 		}
- 
- 		if (chip_good(map, adr, datum))
--			break;
-+			goto enable_xip;
- 
- 		/* Latency issues. Drop the lock, wait a while and retry */
- 		UDELAY(map, chip, adr, 1);
-@@ -1658,6 +1658,8 @@ static int __xipram do_write_oneword(str
- 			goto retry;
- 		}
- 	}
-+
-+ enable_xip:
- 	xip_enable(map, chip, adr);
-  op_done:
- 	if (mode == FL_OTP_WRITE)
-@@ -2236,7 +2238,6 @@ static int cfi_amdstd_panic_write(struct
- 	return 0;
- }
- 
--
- /*
-  * Handle devices with one erase region, that only implement
-  * the chip erase command.
-@@ -2304,7 +2305,7 @@ static int __xipram do_erase_chip(struct
- 		}
- 
- 		if (chip_good(map, adr, map_word_ff(map)))
--			break;
-+			goto op_done;
- 
- 		if (time_after(jiffies, timeo)) {
- 			printk(KERN_WARNING "MTD %s(): software timeout\n",
-@@ -2328,6 +2329,7 @@ static int __xipram do_erase_chip(struct
- 		}
- 	}
- 
-+ op_done:
- 	chip->state = FL_READY;
- 	xip_enable(map, chip, adr);
- 	DISABLE_VPP(map);
-@@ -2401,7 +2403,7 @@ static int __xipram do_erase_oneblock(st
- 
- 		if (chip_good(map, adr, map_word_ff(map))) {
- 			xip_enable(map, chip, adr);
--			break;
-+			goto op_done;
- 		}
- 
- 		if (time_after(jiffies, timeo)) {
-@@ -2427,6 +2429,7 @@ static int __xipram do_erase_oneblock(st
- 		}
- 	}
- 
-+ op_done:
- 	chip->state = FL_READY;
- 	DISABLE_VPP(map);
- 	put_chip(map, chip, adr);
-- 
2.11.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
