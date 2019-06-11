Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2013E4169D
	for <lists+openwrt-devel@lfdr.de>; Tue, 11 Jun 2019 23:08:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=odexexeiXnTsDiukjpbREtdWmg9VJM2sxMJhwlZoYXY=; b=NvvX1Gkw2btzjR
	vb93VCkI9oBdybsf3+RJ4SGuclQTu/0eSVdheBstJ6ok5HozgS/M28uUPgcFZvvlpO8zoArIfiSjx
	JV1cKI+wsJXuxxMYR/yPqLwc1RVcZF8oCY2gJ0y0o4FUFVn+mktildX2SeDlJUa51vNI1zeaD9DAi
	cX5bEVz1FkDOStB9hhnLZgHp+Z1gqtmV1DC0m1js0sHjtBkVd+9Tw6zgdo2hIzRQl8i6XvJlvkYre
	Z0WFSrFj9AxTH3v6DvXKoEr+g7burl4NECEf0sgsReGxOqEQY9rsL7Iq8CI97U0Egla3OJoik4AV4
	Uo3FYag1BNQy0tegQmZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hao08-0006Qs-Ht; Tue, 11 Jun 2019 21:08:16 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hanzl-00067Q-4l
 for openwrt-devel@lists.openwrt.org; Tue, 11 Jun 2019 21:07:54 +0000
Received: by mail-lf1-x141.google.com with SMTP id q26so10399506lfc.3
 for <openwrt-devel@lists.openwrt.org>; Tue, 11 Jun 2019 14:07:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cmu79ngBfE6/lWqcEO/iKCEjzMrMBWhXaNpjNXDS2BU=;
 b=u46b7VUDdHb7197DtNXuzXb44NR6FcQIdT5Xz5kyo8E6u/Ow4xyYdq5nZuq+2v4XVU
 OXq9G8SAh/uZUKya3ChItuPDmQR2Od38qRrP9kr4RSKHYggznzojuUF9LK0qvj4vziUI
 h5xEu1WaqadVTOczAFLd3O8DKqhh6g7c7iZYdIrp8Lvng6Fy6z9dNiXZVeXqeaukhDXk
 BYSmGkeneqWy3MbiPNtivgEgeYzPNdxIo8gQ7BhJl1m5jqpeNERQzo5R/Wr+/2yJcX+n
 2HP3OgfaI+ZA4R7EVUXN/AXJOWR5BpkDLbX5nPw5XFLUa7ZRdb2ZhdaCE3yctFhi6pyk
 Ie5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cmu79ngBfE6/lWqcEO/iKCEjzMrMBWhXaNpjNXDS2BU=;
 b=T/dlgrpmrQexIOYtsKkIE8hPPuq+6+eSwlZNqZJJ13xptjMFzPnL4s3ac4Z2XTqst7
 6/LNE3BS4fwLuJn2m55hdYw4910maL3Alx6l1finNwr6RCGXeVnmuCaXkPYsTIPSCac3
 2hq0p//DqG17tqPQHME3ECnSzHn3VRKD9h9W9HBL4V9rxYaD8mnrERtHH+nUcrCr8uXC
 YaWr1GLLtZmZOU+CoSu5DAL+dPBPj/beFG4NVnyVX4vy974+5Cxjj0NdSaVQ1ppkJ0E1
 uopuVfITV+SlAfMrU6QevZ39NaVmXd+dDc9sz4oXbSuGJ9yGPLB4T3wx7MHrIlHtWsmi
 CgFw==
X-Gm-Message-State: APjAAAUFNsAwA+5uIENhhDdjUhOWJhgz+Y8KGUvwC3UTxcWpS0Az8Hhi
 M7xu5z1ZGxD+mNOJR2bKV4Pc2Q==
X-Google-Smtp-Source: APXvYqyUSo963XbsyHd94+Y7Zw+soZVMYfRZwSuaaOeU61t/TiRXtPPbf5hIbb5GDHXaxdiPzU6DWA==
X-Received: by 2002:a05:6512:30a:: with SMTP id
 t10mr23302170lfp.22.1560287268569; 
 Tue, 11 Jun 2019 14:07:48 -0700 (PDT)
Received: from linux.local (c-d2cd225c.014-348-6c756e10.bbcust.telenor.se.
 [92.34.205.210])
 by smtp.gmail.com with ESMTPSA id h131sm2711757lfe.80.2019.06.11.14.07.47
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 11 Jun 2019 14:07:47 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: Roman Yeryomin <roman@advem.lv>, Sebastian Luft <sebastian.luft@gmail.com>,
 Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Christian Lamparter <chunkeey@gmail.com>
Date: Tue, 11 Jun 2019 23:06:54 +0200
Message-Id: <20190611210655.18652-2-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190611210655.18652-1-linus.walleij@linaro.org>
References: <20190611210655.18652-1-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_140753_207344_9C768F94 
X-CRM114-Status: GOOD (  10.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH 2/3 v2] gemini: Make a per-board case for
 ethernet MAC
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Florian Fainelli <f.fainelli@gmail.com>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The DNS-313 isn't the only special board so let's bite the
bullet and create a case ladder in preparation for DIR-685.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ChangeLog v1->v2:
- Rebase on the new patch using library functions
---
 .../lib/preinit/05_set_ether_mac_gemini       | 28 +++++++++++--------
 1 file changed, 16 insertions(+), 12 deletions(-)

diff --git a/target/linux/gemini/base-files/lib/preinit/05_set_ether_mac_gemini b/target/linux/gemini/base-files/lib/preinit/05_set_ether_mac_gemini
index a79ee5057ffc..a51c223d85c9 100644
--- a/target/linux/gemini/base-files/lib/preinit/05_set_ether_mac_gemini
+++ b/target/linux/gemini/base-files/lib/preinit/05_set_ether_mac_gemini
@@ -4,6 +4,22 @@
 . /lib/functions/system.sh
 
 set_ether_mac() {
+	case $(board_name) in
+	dlink,dns-313)
+		# The DNS-313 has a special field in its RedBoot
+		# binary that we need to check
+		part=$(find_mtd_part RedBoot)
+		if [ ! -z $part ] ; then
+			DEVID="$(dd if=$part bs=1 skip=119508 count=7 2>/dev/null)"
+			if [ "x$DEVID" = "xdns-313" ] ; then
+				MAC1=$(mtd_get_mac_binary RedBoot 119540)
+				ifconfig eth0 hw ether $MAC1 2>/dev/null
+				return 0
+			fi
+		fi
+		;;
+	esac
+
 	# Most devices have a standard "VCTL" partition
 	part=$(find_mtd_part VCTL)
 	if [ ! -z $part ] ; then
@@ -14,18 +30,6 @@ set_ether_mac() {
 		ifconfig eth1 hw ether $MAC2 2>/dev/null
 		return 0
 	fi
-
-	# The DNS-313 has a special field in its RedBoot
-	# binary that we need to check
-	part=$(find_mtd_part RedBoot)
-	if [ ! -z $part ] ; then
-		DEVID="$(dd if=$part bs=1 skip=119508 count=7 2>/dev/null)"
-		if [ "x$DEVID" = "xdns-313" ] ; then
-			MAC1=$(mtd_get_mac_binary RedBoot 119540)
-			ifconfig eth0 hw ether $MAC1 2>/dev/null
-			return 0
-		fi
-	fi
 }
 
 boot_hook_add preinit_main set_ether_mac
-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
