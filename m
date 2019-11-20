Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C744104234
	for <lists+openwrt-devel@lfdr.de>; Wed, 20 Nov 2019 18:35:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oj89b9m1L/1sQ1/pM7moe2NC/iU7s2k6LrGb2ar2hks=; b=Isr+LcivvTg94q
	PEkONEo5vv4+VLF9wklo7+0wUjmcdXxNG4mpd9QJrftaKeRi0YHZsVCBd+v5fs/BIMgwS0rkE1JP/
	PtEA483cKJ2yxEwJwnXeTfH2SWJcVbza0todoIo1KBmFfQk7FHukFRFd25At6HAmE6n2+IUI456mA
	5CuWqTajpWA/pGAgRPDEM96nfKV3nWX1xDA7ZtLJPTS+FdU8/Ts1lWnttpN/N9dc7E5xgsK6k2QHk
	4ayy1Vf6JUwODYrkQiMzOlHR6KRdi0KWLe8RZcb/nw/xB+nPRTAXhUAzqo9sSQWefKBWcreFFXbJX
	agVXj3K+mjiJJMIvuJzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXTtR-0004iy-52; Wed, 20 Nov 2019 17:35:53 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXTtK-0004ie-Pj
 for openwrt-devel@lists.openwrt.org; Wed, 20 Nov 2019 17:35:48 +0000
Received: by mail-pj1-x1042.google.com with SMTP id f7so137877pjw.5
 for <openwrt-devel@lists.openwrt.org>; Wed, 20 Nov 2019 09:35:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=GzU4O0u+ph9Cv588t7AXiiQI/T+IION8XpPF7oAKgE4=;
 b=biJ+oaUCis091kRbJhvbg8dRt4OcM+nTZejlwW6kcz+lyy2ei49TFHXcBC5hzBkqgv
 FPayIkBL9fMj0cZEND4lyZYTyYV0W6qDkqsjmqYhM/+Kp/KctwAWm8ml3TF+BHpOeCxm
 lwLsyURFQfhFaPViQfJvHM8KbVMK+jJU9WyzeYL39Iu7wg2D1eY+BbcaaZpadIfa6dP0
 brkklJYwEkm2vhPqIUzvDWmnxMHDcyjEpQ7+UIX+WYRfh+w5YLaz1Wk2va8BJ6XvvbcJ
 r0vV0p1OYv4dT+N9NbYxgrqQ6sf9i5E/QV+jiqtUgtUn8AWw2GyjubPsq0jP6rZXX8uf
 QheA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=GzU4O0u+ph9Cv588t7AXiiQI/T+IION8XpPF7oAKgE4=;
 b=MQWi/knbgRE+mC3AJmCd+JBCmf35KEgivpvxjp4yw4p8Kgr2ebsR6GDQwvkSjxPo/g
 2EVsrczvusKHyHgwPccSjMrvOCWlDWEh4A+fz0plD1WZZWRNtvAdBmykZW5K+ODgIDZX
 eBIJct2TODmydChXPTBIokhYi3AyRBdbLd0DEAKjtCshz6MmI7XIRwxcDLSJJIGbIi/V
 Btm/XUyyJ0IW+e0dwj0MVeZ/YNU3gliWbKYwFkf998q10Aa/tizguT41XndDHev+Lfm7
 97DDwtpChKMx0Uzc7rgjuMEIEChzwsr6GJGxS805jSOmswtMgpc+5oXroLxx/FCFiq0c
 uzmw==
X-Gm-Message-State: APjAAAWQYlr3cmm4r468Bu8GTm6Ih+LKWMp0SzdAo3bFIQw7zEUQLKQw
 jIfOxcV99dGN2jTkBWvBYrFbUAsi1XA=
X-Google-Smtp-Source: APXvYqyvCx53jzUEX4VtJ3Y8YoBaBm6ek6vsxfsSL+YfVy/cHEan/MD41ab1q6nslAVadZqgJaNj3g==
X-Received: by 2002:a17:90a:2c1:: with SMTP id
 d1mr5395527pjd.137.1574271345253; 
 Wed, 20 Nov 2019 09:35:45 -0800 (PST)
Received: from localhost.localdomain (M106072039032.v4.enabler.ne.jp.
 [106.72.39.32])
 by smtp.gmail.com with ESMTPSA id h9sm14250801pgk.84.2019.11.20.09.35.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 20 Nov 2019 09:35:44 -0800 (PST)
From: Tokunori Ikegami <ikegami.t@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 21 Nov 2019 02:34:51 +0900
Message-Id: <20191120173451.14364-1-ikegami.t@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_093546_862457_383912F6 
X-CRM114-Status: GOOD (  10.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ikegami.t[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] ar71xx: Remove mtd cfi_cmdset_0002 status
 check patch
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
Cc: Tokunori Ikegami <ikegami.t@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Currently the patch only changes break to use goto statement instead.
But not necessary acutually since the ret value checked after the for loop.
So it is okay for the break case before changed by the patch also.

Signed-off-by: Tokunori Ikegami <ikegami.t@gmail.com>
Cc: openwrt-devel@lists.openwrt.org
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
