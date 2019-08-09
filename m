Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BE7A87911
	for <lists+openwrt-devel@lfdr.de>; Fri,  9 Aug 2019 13:54:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=v5ykR8YI9Jnge53jWDcUT9tOTZ8PS4TSfAYFOCaIJ9Q=; b=Ssjn75nOuh+lXG
	w4SVy+cY2hE0eZUjkRVnHI8Zl9rA3B/rjYmLHeaFNhc9dAU9B11ooUfhFdiKksbSKoyI9yVwPNlhF
	bTqzfEA7HrQYfyX0dChReXEjBUDg2Eb2k+BF0SciMQplcPHL8Oq41+j37qfDAlmLNjz0YYWYxXEay
	xMd/DpQqFUS5zLXJtIveKwnjR6iSk7st4WNp9iHT3b0cPEm9b3mUdyWUd+4E5lS2qWltYmjyFMRbk
	OCa6tGtZ2fxKS8MwghiTusyBizBROMOsomzolZemDwjUvBNEk9bymmDUQDpEk6UEqrkNwg90jBS+p
	YKvACnJhpKlN+KpJpung==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw3TN-0002CO-NL; Fri, 09 Aug 2019 11:54:18 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw3T5-0002C0-6m
 for openwrt-devel@lists.openwrt.org; Fri, 09 Aug 2019 11:54:01 +0000
Received: from buildfff.adridolf.com ([188.193.174.123]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MysiI-1iIeUf2Aug-00vwvp for <openwrt-devel@lists.openwrt.org>; Fri, 09
 Aug 2019 13:53:51 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  9 Aug 2019 13:53:49 +0200
Message-Id: <20190809115349.1072-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:TNc0XxFsHAnwrVICM4b3MVee7zUFAyaNeiAScTScxm4kEHSCliZ
 WY9caCXUc31ZVgDaTFmwD14Y8/rTerosdOmrD09ApWYPzm1gWxpCi9fAc0uz43DBZVwDoaI
 BICdud0SyhhFzxlxEo2w66O9E+ig9l52f+FZrYYF66+levoFoWNWpzVZytpw2W2oh87SNbi
 TnTTFiSl9OTzxBYcaMyaA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:d2GWaaVh874=:AVQeYQQR+QXPkx3DzbBAR8
 PnjwYSBXrfp95AFmgUg2dJ6sYMnb+5QuBmbP5CBg3b0P5IZZiJC/W6k83VUbiHmY5nps2+sk2
 qt2B7BJ1nDBHtzNi+eBB8brZHvJJ1x+hes32AAqkWQeh0enURqHtfBLtRlaF9K7OV+NgGCM+t
 /WVVz142jJcKRHEUL8ClxsDItBrjSpQMsnrXU8Osl6XB4Xzn+44YDqH0nDyU7adcELRueGk4J
 58rMsWTHrZkikVQv/WTn/koydKqc4UR3/8aH6Pf4WC5+qLtnLY2awjXrtGu7IJ4hkurxYp3UM
 Imbtnn8U6PeK5yLOnb9Vnv9peQpnfuL6QoFbraJSxsYgequmTtqOW+aPhPa5TQ+sHfaYD8OL5
 BXrhp5kJLYPVXYl42vqvfmDmFDW79vsD5MtZROyaXxkStOXUXU73jcaz7OBAt4P2+bsh1ZH5V
 bOSYWaZutxDcTMMd1T1dtNZ8nB7aI3TkpzMq7z/AwtUCdw2mleuo2MGi1Q9WWNrvsg+a9CgoL
 tPlm02GZCmtlYGw4N5PqCwmzec0PrgsDWbsxWCLUfOYqO6kJSH1RgJWr+lGto4Db1wMXFVW+g
 uylYa+oYLcK6MboYLs2GHJ+IPO0qYWWvC4W3/6RC5ZD7ammbJA1D1DuSBp/TvFmAl1+yz7KyX
 Gs2L6BhsBaYyEXAySAS1+nACAZu1zWfQTf49iEc4ZwcyTxwFSOiALWOJ8mkIrkUtQvSaYKLrD
 RyE+o11P07VHcPvXQ8GSTdCDcmlPJbJF0mf29JT0CURzwvFbCEcoJ4AsH5k=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_045359_540648_5CE3E3ED 
X-CRM114-Status: UNSURE (   7.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
Subject: [OpenWrt-Devel] [PATCH] ath79: add missing IMAGE_SIZE for Comfast
 E314N-v2
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

When adding support in abbbecaa73dc ("ath79: add support for
Comfast E314N-v2"), IMAGE_SIZE has not been added to device
definition.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/ath79/image/generic.mk | 1 +
 1 file changed, 1 insertion(+)

diff --git a/target/linux/ath79/image/generic.mk b/target/linux/ath79/image/generic.mk
index 7ceb5a8867..41d078d305 100644
--- a/target/linux/ath79/image/generic.mk
+++ b/target/linux/ath79/image/generic.mk
@@ -262,6 +262,7 @@ define Device/comfast_cf-e314n-v2
   DEVICE_MODEL := CF-E314N
   DEVICE_VARIANT := v2
   DEVICE_PACKAGES := rssileds
+  IMAGE_SIZE := 7936k
 endef
 TARGET_DEVICES += comfast_cf-e314n-v2
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
