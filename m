Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81963666C0
	for <lists+openwrt-devel@lfdr.de>; Fri, 12 Jul 2019 08:08:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HfCIMnGj5GdQL+TS4RypqQkINfzre8TzBGHbO0whz+s=; b=I8SnZzk0KdRVKk
	nA+bZuEMWSnyXkIQjR6670JjzDq6lHSJRM8K0urAextDkv+0LxUyruYwh26N8gYaPVo8Jczdktpxb
	yRyR2/N4jc3VlCCUEDOd2L2ICGf/EWXmM78q5geHnz92QQDhgkpmYV3KShS/Wn08NkstyZjqAdfg8
	G9wNirkF35j98XOtQ/HJndamZGz7ujS+6Zj8eazBIH/RlW6RQC50JKshXwm6hq5BfPDdIb7kxSoxQ
	Q4XhwkHkbZhNLqmHNtrfBSl+53PX5AqZ/xnhGZiSiO+Y5L+gL4KuVVpazUcJGEvM3Hn9KPHguCswE
	9bNXCvti2Cv3ylSrNFhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hloiu-0006jr-8m; Fri, 12 Jul 2019 06:08:00 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hloia-0006jO-MT
 for openwrt-devel@lists.openwrt.org; Fri, 12 Jul 2019 06:07:42 +0000
Received: by mail-lf1-x143.google.com with SMTP id c19so5658258lfm.10
 for <openwrt-devel@lists.openwrt.org>; Thu, 11 Jul 2019 23:07:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ECY8ra7+0TlOgPHFMM89fQivWvhIF4YLVk0bbxjOCU8=;
 b=rdTUxuZvBMbxScu/DBBF8VJ1iDjoaCE+8t/CcqUar5mq7RgenpSSKX6dK1tKx3N4kA
 vkQYC2t64TA4CQENfM9BgEGlh0D230/92n+ZK9655P425dl0S9KMEJete+Nb8AOJmwf3
 GGZ8guV+FwgXI3hMfK3YGhMi3cqqgnhJRK96pmUrsSFWwRvPnljOxGduHcDCnWcnvixW
 /Q7OzoOTNdjXA3pG3h1xihiTlu7lnRMZPiSKsfSXYeyz5cwAoPuvWnnrdwIddrXIGq+4
 m+YC5ol/yulwBzMSRrnpYHZU0skOQmgD6bb36ADdtzJC98KsDwbKuYT6mTaEAXD0vFlg
 HteA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ECY8ra7+0TlOgPHFMM89fQivWvhIF4YLVk0bbxjOCU8=;
 b=dwC5UowF0aZD/1rjYwp4IRpPoxYEcOEzxuU1PSc7wrh2mm8O52Xn+QMsH1LKyZB3Qy
 v4+3/7s6Hg7ahwd5cKOE4TBhHHxUq0YbDSuj7k54S6llgLUEo4+mpcuWDpaVlzncwYkE
 QHPZofdyMZCZF866D9JjxYVvEFmTZfQGA/FSbFp8mBkVhHK7Gmtqlf+3tUT5PYB0erC3
 j2V3zk6RHL4t3ZrYnmFqR+9UP1bjzNMBitY1mL7dA50FJfp1tLVWxbgrWHj2TJH90Lyx
 E5FFb8WuKdvDYbab9G24l43NQncdqbeWtaYlyjScWgEAWzEm3KaXjey99fjtaKDsT2pj
 YNQw==
X-Gm-Message-State: APjAAAWmZfnkp4rC/g5mpzhJKzdU2JekKDvwGPAy7SB14lzKSYFIhi38
 hfWn2H8Px4V/oGuGD+jXnLT7rg==
X-Google-Smtp-Source: APXvYqy9/5GXz18c1f0WRN5Tm28gqzA84vObnnMo4DwGat81sGBd1h49DF0Kixl0OerQpFycIUl5PQ==
X-Received: by 2002:a19:4f4a:: with SMTP id a10mr3796063lfk.30.1562911657442; 
 Thu, 11 Jul 2019 23:07:37 -0700 (PDT)
Received: from localhost.bredbandsbolaget
 (c-22cd225c.014-348-6c756e10.bbcust.telenor.se. [92.34.205.34])
 by smtp.gmail.com with ESMTPSA id c30sm978420lfp.70.2019.07.11.23.07.35
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 11 Jul 2019 23:07:36 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: Roman Yeryomin <roman@advem.lv>, Sebastian Luft <sebastian.luft@gmail.com>,
 Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Christian Lamparter <chunkeey@gmail.com>
Date: Fri, 12 Jul 2019 08:07:34 +0200
Message-Id: <20190712060734.9824-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_230740_750341_2E982F61 
X-CRM114-Status: UNSURE (   9.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
Subject: [OpenWrt-Devel] [PATCH] gemini: Bring up DSA switches
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

First group the interfaces on the DSA switch into the
right LAN/WAN groups. Tested successfully on the Itian
Square One SQ201 and the SL93512 reference design
with the Vitesse DSA switches.

The RTL8366RB on the DIR-685 is still under development
but this setup is a starting point but since the WAN
and the LAN ports share the same ethernet CPU port
the ethernet port should not be part of either WAN or
LAN.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 .../gemini/base-files/etc/board.d/02_network  | 25 +++++++++++++++++++
 1 file changed, 25 insertions(+)
 create mode 100755 target/linux/gemini/base-files/etc/board.d/02_network

diff --git a/target/linux/gemini/base-files/etc/board.d/02_network b/target/linux/gemini/base-files/etc/board.d/02_network
new file mode 100755
index 000000000000..87f888e92c28
--- /dev/null
+++ b/target/linux/gemini/base-files/etc/board.d/02_network
@@ -0,0 +1,25 @@
+#!/bin/sh
+
+. /lib/functions/uci-defaults.sh
+
+board_config_update
+
+case "$(board_name)" in
+storlink,gemini324)
+	# These are all connected to eth1 thru VSC7385
+	ucidef_set_interfaces_lan_wan "eth1 lan1 lan2 lan3 lan4" "eth0"
+	;;
+itian,sq201)
+	# These are all connected to eth1 thru VSC7395
+	ucidef_set_interfaces_lan_wan "eth1 lan1 lan2 lan3 lan4" "eth0"
+	;;
+dlink,dir-685)
+	# These are all connected to eth0 thru RTL8366RB
+	ucidef_set_interface "eth" ifname "eth0" protocol "none"
+	ucidef_set_interfaces_lan_wan "lan0 lan1 lan2 lan3" "wan"
+	;;
+esac
+
+board_config_flush
+
+exit 0
-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
