Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 922FB67F28
	for <lists+openwrt-devel@lfdr.de>; Sun, 14 Jul 2019 15:51:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0Bag3VhoOXKXx4dWOvvio7mCv1OlBQZiEK3p4GpfWwE=; b=m/uB0nYKq8AIF0
	DezQh73BEAw8ld18nBoDT7PBrLvKsaUPrEO2tTY7MdZ7CYm3lXRMbUIQrk/XkedKvfhuHDOdsCIHY
	i8tdPFDNXjr8H7NJsUpdgDpW4JEqDH/hHZ8MwDzM5GSCPEDjpHES/5lxC3x5G8EdYwNc5mUaEHndv
	ePeAPIgkjhPUKr+qgdb3Tx9KfsVAyRMDSQT3ILyMMBtdCvdq3hrnMRS92IjUJeeT2n4g4f8mUSq4v
	UvkGRZGDcqPESgXX/coTURQoMboAD4S4/QZz2V1jZXvNKk2mT1EOzQZMkbYYDdIhtAOOYjr3I3uMU
	ChlmSeDZsWHNeMc6iTBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmeuP-000526-Ia; Sun, 14 Jul 2019 13:51:21 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmeuG-00051S-M9
 for openwrt-devel@lists.openwrt.org; Sun, 14 Jul 2019 13:51:14 +0000
Received: by mail-lj1-x241.google.com with SMTP id d24so13575867ljg.8
 for <openwrt-devel@lists.openwrt.org>; Sun, 14 Jul 2019 06:51:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TXLJxA+SGJWjBTHbC/2XzcVc9bCHgy3Td4XpBA3qw7E=;
 b=m5SQw4v3A25/OA1TVaqM1kwx9zY6lfRouMVvq7dpxEd2Eu0uUYI7olE7PqyTYu+vHP
 npZTHZIMtq5eBoxFYN7DVHOyU72MIdYVEhHAhEvFOGom15aRHTFQTtWlOgTovOc0T5Co
 6aksZMniJkxMtY8w8VGCKJVQ2TqEfbEehASk7wyJFXQghxpYfGQEOyGdjO9ypZKvyCiM
 dc+vv5LHwfMTxpkNZn4k74WLMGuX+dFyvm6RBcOY312PJ5DkdlJ0W71s7+9wSXkLf4ho
 10/61+kLt/cmXJtzlR9zsWp11j/s2OvFjNMGAqVuBvGnzvDnvgiCoPKTA0wu2ddWwCHE
 11RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TXLJxA+SGJWjBTHbC/2XzcVc9bCHgy3Td4XpBA3qw7E=;
 b=Jamj3ySuFKbqb0qN4UcluR6Gvm+25ESRZF/Z1XuruyOd3sdB0iEvkVAK1r22ZTMtBQ
 cIQVDmr1/CKwH2SYCVEQYYhWJiaiFKZdk7OBxgHK+XRgsh/4aa5Tl5pxIml4Dg+eZF1J
 /3Z9W+gUyFizP7U40CkR5XpkMTIC8Tvpa9gNcWOCmvXZyOz2x4WXo6Lf+gtrOT3EW5kU
 G76RaFE4tFlJRh6XZu5sY4quPBfUqV0WlMNuo91UuRAwaKsov2SomcJRGvXxLfb0ap7m
 YgZ6kJtTGqIywL6rD/eiLEQqiDvQkZ173llWGOX7SixEl93pX+aLFhHCbo7J8LtLq5IQ
 gXHg==
X-Gm-Message-State: APjAAAWB6+fAP8lXGycC0Y8zBkgkjxo5lkAnzVTpCpx4QtrtSg0eomBK
 +VlEyxnQ7TV8ONLbN3AjN5yZjA==
X-Google-Smtp-Source: APXvYqzlX50PWEpba1ZIYUiCEy5avzDhzHEyo7xObRgA/1WAl+LGjOu5QdHQT/BBJdIqiGqqKAjFTw==
X-Received: by 2002:a2e:3602:: with SMTP id d2mr11415830lja.112.1563112265465; 
 Sun, 14 Jul 2019 06:51:05 -0700 (PDT)
Received: from localhost.bredbandsbolaget
 (c-22cd225c.014-348-6c756e10.bbcust.telenor.se. [92.34.205.34])
 by smtp.gmail.com with ESMTPSA id z30sm2117324lfj.63.2019.07.14.06.51.03
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 14 Jul 2019 06:51:04 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: Roman Yeryomin <roman@advem.lv>, Sebastian Luft <sebastian.luft@gmail.com>,
 Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Christian Lamparter <chunkeey@gmail.com>
Date: Sun, 14 Jul 2019 15:50:37 +0200
Message-Id: <20190714135037.18471-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190714_065112_787468_1A245104 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH v2] gemini: Bring up DSA switches
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
Cc: Pawel Dembicki <paweldembicki@gmail.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Florian Fainelli <f.fainelli@gmail.com>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

First group the interfaces on the DSA switch into the
right LAN/WAN groups. Tested successfully on the Itian
Square One SQ201 and the SL93512 reference design
with the Vitesse DSA switches.

As discussed on the mailing list, these switches are
untagged (DSA_TAG_PROTO_NONE) so the DSA slave devices
are only slave devices with not datapath control.
This means each of the CPU-facing interfaces need to
be brought up with the "none" protocol before any
slave devices are brought up. (The sequence matters
here.)

Tested on each of the three affected devices.

Cc: Pawel Dembicki <paweldembicki@gmail.com>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ChangeLog v1->v2:
- Remove the eth1 from the LAN bridge in both the
  Vitesse switch devices, instead bring up each ethernet
  master interface independently with "none" protocol.
---
 .../gemini/base-files/etc/board.d/02_network  | 27 +++++++++++++++++++
 1 file changed, 27 insertions(+)
 create mode 100755 target/linux/gemini/base-files/etc/board.d/02_network

diff --git a/target/linux/gemini/base-files/etc/board.d/02_network b/target/linux/gemini/base-files/etc/board.d/02_network
new file mode 100755
index 000000000000..b5c486666c82
--- /dev/null
+++ b/target/linux/gemini/base-files/etc/board.d/02_network
@@ -0,0 +1,27 @@
+#!/bin/sh
+
+. /lib/functions/uci-defaults.sh
+
+board_config_update
+
+case "$(board_name)" in
+storlink,gemini324)
+	# These are all connected to eth1 thru VSC7385
+	ucidef_set_interface "eth" ifname "eth1" protocol "none"
+	ucidef_set_interfaces_lan_wan "eth1 lan1 lan2 lan3 lan4" "eth0"
+	;;
+itian,sq201)
+	# These are all connected to eth1 thru VSC7395
+	ucidef_set_interface "eth" ifname "eth1" protocol "none"
+	ucidef_set_interfaces_lan_wan "lan1 lan2 lan3 lan4" "eth0"
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
