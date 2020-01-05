Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CFAC1306C2
	for <lists+openwrt-devel@lfdr.de>; Sun,  5 Jan 2020 09:14:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kuNCm/SHkFNwn/7skOK97ziH4u6WNWhBfMm99QaTzgc=; b=hlOWoutOFUSyWe
	Z5kwrDTDMSwUADKNxLrxzw4Mb0WAzwnX2YE+acynNCUzQIH+SyvLAqS0gZcjAw84hxd9qVWY4xheD
	PB7M4duNO9YZQWG1LH8QjId5M09KSf7iAMapnftQQS8tKK9ryOZZe6/Z2iBildFgSpAIg41TQk3M+
	/aQjGACZ1O0ABMDX6i9wskTiUXOSv7JN1nJLnikzqmYQyIcM353I/KELwvVUHpeAaCBUoDUkpp8sf
	xm9h/UKm8cVUHTie1X8xaGAuocMbiHwmft+cDI5yn9dXxlHCktex/kk6EiKYGMGJ3lZtgxhHqzxYU
	Sh1jbzMUJeCXV1538IUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1io13d-0003p7-1U; Sun, 05 Jan 2020 08:14:45 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1io138-0003VI-Sr
 for openwrt-devel@lists.openwrt.org; Sun, 05 Jan 2020 08:14:16 +0000
Received: by mail-pf1-x442.google.com with SMTP id w62so25484922pfw.8
 for <openwrt-devel@lists.openwrt.org>; Sun, 05 Jan 2020 00:14:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=imCnA79QdkAcr9o7zCSm/BsQnMDsXgifhttBfAv96Mo=;
 b=bntNW503IShfzWVSBetG8Ej2p1QF9zU87GHNY5ir2PCBg073R0GtEnFNc0rZKvTQWC
 RSthymZRxWMqOJL7ox7GcNIwgXB6qvYtVLW06Q9Wq63iiKa0FmUhE9SKkA3N8Duhc5XN
 0hKaZrOjWM7osyb88Trqnlb6rc892JYBAjLetzfkuBaahPi96nXvLCLjVhXkNlJg3jhl
 3qzRuY8lsJBgu8/CbsvNsIVNxEbTUgxvzucYTj+Xf8/M3XRVC68OdKz3mXVw5Dw617/t
 v3KsHznvpBC4LpXrIy0a12urtYxfg90ts2O5aaG41t0JSWr6ygC1dS7YB9VhgLRldDgT
 /qHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=imCnA79QdkAcr9o7zCSm/BsQnMDsXgifhttBfAv96Mo=;
 b=FZ1PDUkhVMYl281Vm7L0kYypocn2qhilF07s24WJUu2J1nF2uHjVge32pQAo8jd6jP
 LWCRfQvx6NKBS0XEAdD8+dPzSOnLtgevu2aHwXAZuBGpGo3O1YfHByN79832+LbcAFbA
 7+DfME4vyCWkKHrQ+CwuCrJ5JqUHEsIJrRtV4bt7T5w+HBT13kyXdGqlO6fFO1qVsrzT
 +yFzFTsduAik8I7fpIYajBmnREpyN0S5vdHXOEe69vnV6HXtbhNgUvBUZUTOmi+GReCC
 wJELrA8NKkyESarh7ge48E/DvcwYolGCVZbdY1oU8tJNwEpvOAPmmRNNDBfPuLrcAeyB
 hyIA==
X-Gm-Message-State: APjAAAUEEk+YLBzSdk9zogmfst0wgOADrDl3Gp/TRLmH/xF5ny9p6tIF
 NpW8ZuY3xA1N9JLJ7gKavgTHMaUB
X-Google-Smtp-Source: APXvYqwgVajW14U898Ze5EFyWF2Va2sHGwjY45qaA7F9EXRYbanogBaXjY74IHWt6K/sE7idH/568w==
X-Received: by 2002:a65:4344:: with SMTP id k4mr103928463pgq.193.1578212053667; 
 Sun, 05 Jan 2020 00:14:13 -0800 (PST)
Received: from localhost.localdomain (M106072039032.v4.enabler.ne.jp.
 [106.72.39.32])
 by smtp.gmail.com with ESMTPSA id y6sm19070688pjy.1.2020.01.05.00.14.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 05 Jan 2020 00:14:13 -0800 (PST)
From: Tokunori Ikegami <ikegami.t@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  5 Jan 2020 17:13:03 +0900
Message-Id: <20200105081303.1952-3-ikegami.t@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200105081303.1952-1-ikegami.t@gmail.com>
References: <20200105081303.1952-1-ikegami.t@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_001414_957847_D5C3B9DC 
X-CRM114-Status: GOOD (  13.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ikegami.t[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH v2 2/2] ath79: Remove mtd cfi_cmdset_0002
 status check patches
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
  https://github.com/openwrt/openwrt/commit/ddc11c3932c7b7b7df7d5fbd48f207e7
    Note: The changes are mainly applied into the linux kernel upstream.

Signed-off-by: Tokunori Ikegami <ikegami.t@gmail.com>
Cc: Koen Vandeputte <koen.vandeputte@ncentric.com>
---
 .../403-mtd_fix_cfi_cmdset_0002_status_check.patch | 62 ----------------------
 .../403-mtd_fix_cfi_cmdset_0002_status_check.patch | 62 ----------------------
 2 files changed, 124 deletions(-)
 delete mode 100644 target/linux/ath79/patches-4.14/403-mtd_fix_cfi_cmdset_0002_status_check.patch
 delete mode 100644 target/linux/ath79/patches-4.19/403-mtd_fix_cfi_cmdset_0002_status_check.patch

diff --git a/target/linux/ath79/patches-4.14/403-mtd_fix_cfi_cmdset_0002_status_check.patch b/target/linux/ath79/patches-4.14/403-mtd_fix_cfi_cmdset_0002_status_check.patch
deleted file mode 100644
index 4ef2303769..0000000000
--- a/target/linux/ath79/patches-4.14/403-mtd_fix_cfi_cmdset_0002_status_check.patch
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
diff --git a/target/linux/ath79/patches-4.19/403-mtd_fix_cfi_cmdset_0002_status_check.patch b/target/linux/ath79/patches-4.19/403-mtd_fix_cfi_cmdset_0002_status_check.patch
deleted file mode 100644
index 702e2a5b09..0000000000
--- a/target/linux/ath79/patches-4.19/403-mtd_fix_cfi_cmdset_0002_status_check.patch
+++ /dev/null
@@ -1,62 +0,0 @@
---- a/drivers/mtd/chips/cfi_cmdset_0002.c
-+++ b/drivers/mtd/chips/cfi_cmdset_0002.c
-@@ -1640,7 +1640,7 @@ static int __xipram do_write_oneword(str
- 		}
- 
- 		if (chip_good(map, adr, datum))
--			break;
-+			goto enable_xip;
- 
- 		/* Latency issues. Drop the lock, wait a while and retry */
- 		UDELAY(map, chip, adr, 1);
-@@ -1657,6 +1657,8 @@ static int __xipram do_write_oneword(str
- 			goto retry;
- 		}
- 	}
-+
-+ enable_xip:
- 	xip_enable(map, chip, adr);
-  op_done:
- 	if (mode == FL_OTP_WRITE)
-@@ -2235,7 +2237,6 @@ static int cfi_amdstd_panic_write(struct
- 	return 0;
- }
- 
--
- /*
-  * Handle devices with one erase region, that only implement
-  * the chip erase command.
-@@ -2303,7 +2304,7 @@ static int __xipram do_erase_chip(struct
- 		}
- 
- 		if (chip_good(map, adr, map_word_ff(map)))
--			break;
-+			goto op_done;
- 
- 		if (time_after(jiffies, timeo)) {
- 			printk(KERN_WARNING "MTD %s(): software timeout\n",
-@@ -2327,6 +2328,7 @@ static int __xipram do_erase_chip(struct
- 		}
- 	}
- 
-+ op_done:
- 	chip->state = FL_READY;
- 	xip_enable(map, chip, adr);
- 	DISABLE_VPP(map);
-@@ -2399,7 +2401,7 @@ static int __xipram do_erase_oneblock(st
- 		}
- 
- 		if (chip_good(map, adr, map_word_ff(map)))
--			break;
-+			goto op_done;
- 
- 		if (time_after(jiffies, timeo)) {
- 			printk(KERN_WARNING "MTD %s(): software timeout\n",
-@@ -2423,6 +2425,7 @@ static int __xipram do_erase_oneblock(st
- 		}
- 	}
- 
-+ op_done:
- 	chip->state = FL_READY;
- 	xip_enable(map, chip, adr);
- 	DISABLE_VPP(map);
-- 
2.11.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
