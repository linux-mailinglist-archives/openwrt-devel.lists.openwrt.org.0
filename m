Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E86D2A064
	for <lists+openwrt-devel@lfdr.de>; Fri, 24 May 2019 23:28:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J0T9rm3F77jQ1aMYYV1By5xS07Vkk02kV27Wi1Nfo3Q=; b=tRPVXhYBAHDyd0
	+6vInOQMZ8qXBnWyU+MNRsVK9s3QvdDDHbJ3hV2+zHAGoAPD2VCPxxbQgkoPyfxJSDGhxrrF3Sp2X
	eS3TEW/TAryteItOEL99PjZOMIo/yk8WevOT0UT4ys+BUzo1rf6kZL4/MVMAkezZNggXw1rSRDAgt
	FcRCgt8C5z8Pm3KZJv3doEFr6s77fdIBNA/kC6QPpjbtkrXOQuC+HfnHn1hwF1nPtaeQbuLQIhV1y
	diIXNOSZJQ5meCyBAluxPzHz3MJAVjgDANHpevihF7XNEUdgWonzgLncFvCpHH1sZu9iCfI5+Decr
	2xsANs1391w5SVhpKu8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUHk1-0002E6-UL; Fri, 24 May 2019 21:28:42 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUHjo-00021y-0o
 for openwrt-devel@lists.openwrt.org; Fri, 24 May 2019 21:28:31 +0000
Received: by mail-lf1-x143.google.com with SMTP id f1so8115497lfl.6
 for <openwrt-devel@lists.openwrt.org>; Fri, 24 May 2019 14:28:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WTlHt6vOUQ76TokGbNQR8ocW+rj0BO5Uuavv2jXUuWQ=;
 b=QtYwDlLzRu0rF8lOARlor0P/cY8gBWZVNN0kyOeGwDaMfZ3f85GdCOXZ1hCU4A5jen
 f+KDSC01AaKC20uKdwk7PvenF+OqHmmvP8gsX8dxiKlhB+iW+dcYT+7UBtTJ5TJShbSY
 46gjuFuhN0UPLDh4/t9qqfV5UaucRIsoOlJKqEs5m+H9UFn80CLfWGELb7nkEjzu0Tij
 lbt9TZVFOBhJ0lRIdkeHU7mOYKb/XIsMmjdRJ5gobThnIVnqI9xci3eTAJMWksj/OlVH
 2TdbUIbSpxaUw0SoEXQfKjlw2pQpdP0/WBDqCHz5PZ8UL1rnNl3vSH/F4/bUI55z7cEb
 I4Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WTlHt6vOUQ76TokGbNQR8ocW+rj0BO5Uuavv2jXUuWQ=;
 b=JQnDVk3P88guifvkbqCQ2Zk7Wxq9lXYfUDiJks7lAuczzDnyHVhdZNp7xYlhpZ8coX
 tgYr0E20c5XqVAkzpdr894Gca2adrA34jNIJEo0guifr41NQSUAh52aVbyc8OSxAsxNS
 V8zo8ZbPL13i1f94+XC8qPJ2/fTRiNP+JuoJZPXZG+dZQdDIml1Oy8ciYbPY2gGUR6m5
 cLKYVtpO4akjGrKYqXfvrjHm/36DTR19ce9tuQm3zUYbwHlnTZLUZlVdISjdAhpE01tW
 f+xD/1Y2KNkWL1WAq8ecOjeKmakwMrC8Tr/gIg94wxRL1Q4Z1Wj2Qy7hGhAzOrcf4vb4
 dhYA==
X-Gm-Message-State: APjAAAX6ERH8vx0hrTaK0dmkwMVhRdb+XeH4FNv5N3gCq2JR9XAZSX4q
 FYUVsLpTD21PZ/joG4OAcLDAn2QJLIw=
X-Google-Smtp-Source: APXvYqwy9Vzq45iGZfqyDRDOuH4fvRtM/WcPcL/DuzbRkPCfs9TV6zsZW2T3iF77kmzslpE06w+jFA==
X-Received: by 2002:a19:750b:: with SMTP id y11mr152925lfe.6.1558733306264;
 Fri, 24 May 2019 14:28:26 -0700 (PDT)
Received: from localhost.bredbandsbolaget
 (c-d2cd225c.014-348-6c756e10.bbcust.telenor.se. [92.34.205.210])
 by smtp.gmail.com with ESMTPSA id k20sm784450lfm.30.2019.05.24.14.28.24
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 24 May 2019 14:28:25 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: Roman Yeryomin <roman@advem.lv>, Sebastian Luft <sebastian.luft@gmail.com>,
 Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Christian Lamparter <chunkeey@gmail.com>
Date: Fri, 24 May 2019 23:27:19 +0200
Message-Id: <20190524212719.30694-3-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190524212719.30694-1-linus.walleij@linaro.org>
References: <20190524212719.30694-1-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_142828_085477_C8FCCBAE 
X-CRM114-Status: UNSURE (   8.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH 3/3] gemini: Fix MAC address assignment for
 DIR-685
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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

The DIR-685 has the MAC addresses in the RedBoot code just like
DNS-313. Check some magic numbers to determine that the MAC
address is where we want it and extract it from RedBoot.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 .../lib/preinit/05_set_ether_mac_gemini           | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/target/linux/gemini/base-files/lib/preinit/05_set_ether_mac_gemini b/target/linux/gemini/base-files/lib/preinit/05_set_ether_mac_gemini
index 6072e828c678..ecf4a8238143 100644
--- a/target/linux/gemini/base-files/lib/preinit/05_set_ether_mac_gemini
+++ b/target/linux/gemini/base-files/lib/preinit/05_set_ether_mac_gemini
@@ -18,6 +18,21 @@ set_ether_mac() {
 			fi
 		fi
 		;;
+	dlink,dir-685)
+		# The DIR-685 has a special field in its RedBoot
+		# binary that we need to check
+		CONFIG_PARTITION="$(grep "RedBoot" /proc/mtd | cut -d: -f1)"
+		if [ ! -z $CONFIG_PARTITION ] ; then
+			DEVID="$(dd if=/dev/mtdblock0 bs=1 skip=81516 count=7 2>/dev/null)"
+			if [ "x$DEVID" = "xILI9322" ] ; then
+				MAC1="$(dd if=/dev/mtdblock0 bs=1 skip=95040 count=6 2>/dev/null | hexdump -n6 -v -e '/1 ":%02X"' | sed s/^://g)"
+				MAC2="$(dd if=/dev/mtdblock0 bs=1 skip=95046 count=6 2>/dev/null | hexdump -n6 -v -e '/1 ":%02X"' | sed s/^://g)"
+				ifconfig eth0 hw ether $MAC1 2>/dev/null
+				ifconfig eth1 hw ether $MAC2 2>/dev/null
+				return 0
+			fi
+		fi
+		;;
 	esac
 
 	# Most devices have a standard "VCTL" partition
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
