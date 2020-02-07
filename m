Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42D391550FB
	for <lists+openwrt-devel@lfdr.de>; Fri,  7 Feb 2020 04:32:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vIP7kTZi4aSQvFzoZuTxFmJMANlObF89QQOHmiUdBK8=; b=f69VP4Mxf7Imkx
	PNNcglbpM9UFeo9xqqi7mj82TYfHl4aVt5j775Soj+/xfdL+QB/FaiGQYBqhcim5nsNyfx6fCIMRy
	WiJI75HBQb6G8LWPO4mQ+Id2fdRzyj7kU/RN+Jjad/LFRNIuRnReO3QiLiX4av1hsFJajjnGjDdUM
	DAu+hFKki3PEqGBIMAQIPCM98oyiTYMMnfuVvemv1ih1+IwbDUf3K6sdZ7VwETbCfutj34+G8IYv9
	NrkoKzbph6Lyjj5HWQje+uyJEwMtZwHxy/+72ocf6lqZOfTc05dZiZ7ygQUltMO3UiUcPxVKgl0Bv
	+RPLSn7AhndzYIOV5iQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izuMz-0003mo-P5; Fri, 07 Feb 2020 03:31:53 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izuMs-0003mX-MS
 for openwrt-devel@lists.openwrt.org; Fri, 07 Feb 2020 03:31:47 +0000
Received: by mail-pf1-x444.google.com with SMTP id 2so521339pfg.12
 for <openwrt-devel@lists.openwrt.org>; Thu, 06 Feb 2020 19:31:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=yEiFIIdw9JGz08Io0lHxxFzDWAqJyk9hmQ7gTnqS1mE=;
 b=UR2Fasez1FMVF4V3dOahcrb3sB6Mv3txywcWxDUo9h1nXctYyFjcrI4sDp+E/L8og7
 e6xtFjavcNoOWGTsOxB0E8STdNEfngr3co/efs8cJFGbOP3OSYOlXklNtUzf4Ze+ZcdY
 q+T77mTDF98hC2/r9Q4v4/fm+rzhKPUtsRWKbfPnQU4PDlyU28BMTWArqqvNkKLt/jm+
 tIPYvRNDs05c16c1vwCwGhqUTKF7gW7fZZ2lwXLAZdb5AWNFDEOQ/b3bhlWAxzv8Mea/
 BzDjubQ4UGl2PIg2NwGKiZ0wTXgloWUOFUmhutw+K/OEGJs+dDTJXDMG/z8o4Xai0IKV
 2tkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=yEiFIIdw9JGz08Io0lHxxFzDWAqJyk9hmQ7gTnqS1mE=;
 b=U4hPKnK5z3ynFLTUEIF003S/nm1GLfSzzzOAoL64t9THICYk8dIs3DUZmY6FQ1O63l
 0wc9Po8nAl5/Jb6xNUGQoLj9971YoAkYdRuF22GgPC/DAGmLIBPI9sk2xGhkWyBw1td7
 SGO4Gw1vkbkJ+s4qtaE6hO43BElkkvFrljz7t+2WtrBjerYHpVBHsEvuNyu4zTFKIENE
 WXsBhxnqfohudYah1ZFkwPBkJeUI/ntzDcmiR2FH7j0uqMH4snA0ZJizcjEqXcQhqwli
 Hs71KvWrdBF3DTZOQaIATbCRVtL6FnBUy4H1gNq0j18pUYIDpGKZoMigRNZLwhSELSzc
 tnjA==
X-Gm-Message-State: APjAAAU3Ighs/ohZeufdPL/QX+AMJJHEEwZsBuS54m1m8ilTnAj7Vg0U
 mpQUPYB27elv8Jw58BRqWq72iduUV68=
X-Google-Smtp-Source: APXvYqxzGlq4vQTa1doTgpuyiUT7oo8/gjL0Lz93PCHb4aZjrhYPZVvS7IxrRqZk6Mymn7c7L/GgfQ==
X-Received: by 2002:a65:690f:: with SMTP id s15mr6963924pgq.87.1581046305149; 
 Thu, 06 Feb 2020 19:31:45 -0800 (PST)
Received: from DESKTOP-VIRSTQA.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id r6sm813704pfh.91.2020.02.06.19.31.44
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Feb 2020 19:31:44 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu,  6 Feb 2020 19:31:40 -0800
Message-Id: <20200207033140.2623-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_193146_736092_03A2FF13 
X-CRM114-Status: UNSURE (   8.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] ag71xx: fix return value check in ag71xx_probe()
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Wei Yongjun <weiyongjun1@huawei.com>

In case of error, the function of_get_mac_address() returns ERR_PTR()
and never returns NULL. The NULL test in the return value check should
be replaced with IS_ERR().

Fixes: d51b6ce441d3 ("net: ethernet: add ag71xx driver")
Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
Reviewed-by: Oleksij Rempel <o.rempel@pengutronix.de>
Signed-off-by: David S. Miller <davem@davemloft.net>
---
 target/linux/ath79/files/drivers/net/ethernet/atheros/ag71xx/ag71xx_main.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/target/linux/ath79/files/drivers/net/ethernet/atheros/ag71xx/ag71xx_main.c b/target/linux/ath79/files/drivers/net/ethernet/atheros/ag71xx/ag71xx_main.c
index 31d27808ddee..8b69d0d7e726 100644
--- a/target/linux/ath79/files/drivers/net/ethernet/atheros/ag71xx/ag71xx_main.c
+++ b/target/linux/ath79/files/drivers/net/ethernet/atheros/ag71xx/ag71xx_main.c
@@ -1581,9 +1581,9 @@ static int ag71xx_probe(struct platform_device *pdev)
 	ag->stop_desc->next = (u32) ag->stop_desc_dma;
 
 	mac_addr = of_get_mac_address(np);
-	if (mac_addr)
+	if (!IS_ERR(mac_addr))
 		memcpy(dev->dev_addr, mac_addr, ETH_ALEN);
-	if (!mac_addr || !is_valid_ether_addr(dev->dev_addr)) {
+	if (IS_ERR(mac_addr) || !is_valid_ether_addr(dev->dev_addr)) {
 		dev_err(&pdev->dev, "invalid MAC address, using random address\n");
 		eth_random_addr(dev->dev_addr);
 	}


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
