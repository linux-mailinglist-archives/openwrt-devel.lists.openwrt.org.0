Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B8AA174B1B
	for <lists+openwrt-devel@lfdr.de>; Sun,  1 Mar 2020 06:06:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MviJTsfR2I4AHM3z74KNmZb9SE4GkRLtsH0rdt7nzKY=; b=N1IywAPJjijNQQ
	AShMy/bXoODVw16R2oNcQ+XDHU5TvjboZjFxJVDXDh7+BxDSbVR8XCnaKsRdXYFEEf2z4+2tZGPvt
	j4KliFIgmIvbo2nrNVwpGrlaYEP+f05ZNaeUix6Fm1+w5ECb8umujs0DTwMBYBq5tUJNv/Ur7V3F0
	EKQHeC/LY672hE1Zu1nA6DN4Lk/jksQpDe3oqXfSuvCNCGfeBFZtsbDf+pNVbxvQSQsz5lWlsicK0
	WohPHExxDhTnrDnGlQ6H1VmZucbjadDtcMfI2f0JmvJKgp72gWU8Zu+o5UjVo7b74l8/jWlHEJEXh
	sdKfm4C2EeEhDPd7iMCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8GoM-0000Ll-Px; Sun, 01 Mar 2020 05:06:42 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8GoE-0000L1-St
 for openwrt-devel@lists.openwrt.org; Sun, 01 Mar 2020 05:06:36 +0000
Received: by mail-pj1-x1042.google.com with SMTP id a16so2668041pju.3
 for <openwrt-devel@lists.openwrt.org>; Sat, 29 Feb 2020 21:06:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bev28eQGhW3LnvBwgZBVoggVxkhMApnRz7zxDbaBl9E=;
 b=pl0qZ1UTFfNq7ht2QZBdVEcdy+U0wAtVWpjA3WFID/M1gUUvLvy36LAXnsL7VZpnFB
 4mOLGR2Ty5dnIwgckzvXPTkwT6F+4yUGlxkCgeJEN9DBeYrtkfZlKhGIoO54Imvm4+dI
 9FzsCtRFHe4cBoS1KMC4Vi5d7l8KyjVWcQXGDYCi9jYViQsmDYeUJkQTa+sOETwiFtAg
 eo/DAcd0AaIj9C1eEzSuWRCi+ORspO1riCk5TAFABf2EcGhZa/QkPG+cG2hrVcqUwSqL
 tSrWuDE6QVdAWdJBV+vhZqdGKeFfa0rFLYALvgJyAGEuJOpI8zpZm6mDrG7HJoumj+XH
 /i7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bev28eQGhW3LnvBwgZBVoggVxkhMApnRz7zxDbaBl9E=;
 b=jMCLZbjNBGf48EFG4gRSeTQwkLuqhvBYSWIkqCZomj2DU1xngMCvZ/riZ1wj/uC75R
 +TcYPKDaMkSbMR1mcimDlgdlvf8LUfQh8M3CNo4mnWY/5VoFdO65QXY0S6ybBL8VINzi
 D3wu2HzMaknKeW9jVJU7VHgPETOZinyBhlBECPQ96C1iMEZHXzMTjFf+c1sAo1Wo1etb
 qnXhk8fv72mvKjdIm3iYiSZkev2/NiFxZ0wKwiFe3xqyOnPXNGMtnZ+m4cHa8c9CKgUu
 4+m3rOEEM9Mg5dFRxtHbkHha1W5org2xCUUV/nUuDN5onN/Vz60u1jVyoWxNriLm4IQq
 +fmw==
X-Gm-Message-State: APjAAAV00tlquKq2JyLPU/Ol0RwM7snh/JH9RZl6mClWmxb/47QgHPEu
 b0CV1cS8OO2KVIJPA00ZwJhAYP6v6v8=
X-Google-Smtp-Source: APXvYqwHlq6vMf+pHA3yi0JRiXVCRzdZt5oDOgELwV4pPyGSyQcS8OOBFVvwxl6FFIIlv70FoamFDg==
X-Received: by 2002:a17:902:59d8:: with SMTP id
 d24mr11334778plj.229.1583039192289; 
 Sat, 29 Feb 2020 21:06:32 -0800 (PST)
Received: from titan.hq.cloud.yunionyun.com ([47.244.19.249])
 by smtp.gmail.com with ESMTPSA id x6sm15932781pfi.83.2020.02.29.21.06.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 29 Feb 2020 21:06:31 -0800 (PST)
From: Yousong Zhou <yszhou4tech@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  1 Mar 2020 13:06:23 +0800
Message-Id: <20200301050624.78598-1-yszhou4tech@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_210634_959823_27499260 
X-CRM114-Status: UNSURE (   8.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [yszhou4tech[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH 1/2] ramips: mt7530: remove redundant global
 attrs for port mirroring
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
Cc: dengqf6@mail2.sysu.edu.cn, Yousong Zhou <yszhou4tech@gmail.com>,
 xfguo@credosemi.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Global attributes enable_mirror_tx/enable_mirror_rx depend on runtime
value of another global attribute mirror_source_port which just resides
in the memory

The same functionality can be achieved by directly setting port
attribute of the same names.  E.g. the following two groups of commands
achieve the same thing

	swconfig dev switch0 set mirror_source_port 3
	swconfig dev switch0 set enable_mirror_tx 1
	swconfig dev switch0 set mirror_source_port 4
	swconfig dev switch0 set enable_mirror_tx 1

	swconfig dev switch0 port 3 set enable_mirror_tx 1
	swconfig dev switch0 port 4 set enable_mirror_tx 1

Signed-off-by: Yousong Zhou <yszhou4tech@gmail.com>
---
 .../drivers/net/ethernet/mediatek/mt7530.c    | 88 -------------------
 1 file changed, 88 deletions(-)

diff --git a/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/mt7530.c b/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/mt7530.c
index 9acea3bc84..8ffd614d9f 100644
--- a/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/mt7530.c
+++ b/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/mt7530.c
@@ -208,7 +208,6 @@ struct mt7530_priv {
 	struct mii_bus		*bus;
 	struct switch_dev	swdev;
 
-	u8			mirror_src_port;
 	u8			mirror_dest_port;
 	bool			global_vlan_enable;
 	struct mt7530_vlan_entry	vlan_entries[MT7530_NUM_VLANS];
@@ -519,50 +518,6 @@ mt7530_get_vid(struct switch_dev *dev, const struct switch_attr *attr,
 	return 0;
 }
 
-static int
-mt7530_get_mirror_rx_enable(struct switch_dev *dev, const struct switch_attr *attr,
-		struct switch_val *val)
-{
-	struct mt7530_priv *priv = container_of(dev, struct mt7530_priv, swdev);
-
-	val->value.i = priv->port_entries[priv->mirror_src_port].mirror_rx;
-
-	return 0;
-}
-
-static int
-mt7530_set_mirror_rx_enable(struct switch_dev *dev, const struct switch_attr *attr,
-		struct switch_val *val)
-{
-	struct mt7530_priv *priv = container_of(dev, struct mt7530_priv, swdev);
-
-	priv->port_entries[priv->mirror_src_port].mirror_rx = val->value.i;
-
-	return 0;
-}
-
-static int
-mt7530_get_mirror_tx_enable(struct switch_dev *dev, const struct switch_attr *attr,
-		struct switch_val *val)
-{
-	struct mt7530_priv *priv = container_of(dev, struct mt7530_priv, swdev);
-
-	val->value.i = priv->port_entries[priv->mirror_src_port].mirror_tx;
-
-	return 0;
-}
-
-static int
-mt7530_set_mirror_tx_enable(struct switch_dev *dev, const struct switch_attr *attr,
-		struct switch_val *val)
-{
-	struct mt7530_priv *priv = container_of(dev, struct mt7530_priv, swdev);
-
-	priv->port_entries[priv->mirror_src_port].mirror_tx = val->value.i;
-
-	return 0;
-}
-
 static int
 mt7530_get_mirror_monitor_port(struct switch_dev *dev, const struct switch_attr *attr,
 		struct switch_val *val)
@@ -585,28 +540,6 @@ mt7530_set_mirror_monitor_port(struct switch_dev *dev, const struct switch_attr
 	return 0;
 }
 
-static int
-mt7530_get_mirror_source_port(struct switch_dev *dev, const struct switch_attr *attr,
-		struct switch_val *val)
-{
-	struct mt7530_priv *priv = container_of(dev, struct mt7530_priv, swdev);
-
-	val->value.i = priv->mirror_src_port;
-
-	return 0;
-}
-
-static int
-mt7530_set_mirror_source_port(struct switch_dev *dev, const struct switch_attr *attr,
-		struct switch_val *val)
-{
-	struct mt7530_priv *priv = container_of(dev, struct mt7530_priv, swdev);
-
-	priv->mirror_src_port = val->value.i;
-
-	return 0;
-}
-
 static int
 mt7530_get_port_mirror_rx(struct switch_dev *dev, const struct switch_attr *attr,
 		struct switch_val *val)
@@ -1002,20 +935,6 @@ static const struct switch_attr mt7530_global[] = {
 		.description = "Get MIB counters for switch",
 		.get = mt7530_sw_get_mib,
 		.set = NULL,
-	}, {
-		.type = SWITCH_TYPE_INT,
-		.name = "enable_mirror_rx",
-		.description = "Enable mirroring of RX packets",
-		.set = mt7530_set_mirror_rx_enable,
-		.get = mt7530_get_mirror_rx_enable,
-		.max = 1
-	}, {
-		.type = SWITCH_TYPE_INT,
-		.name = "enable_mirror_tx",
-		.description = "Enable mirroring of TX packets",
-		.set = mt7530_set_mirror_tx_enable,
-		.get = mt7530_get_mirror_tx_enable,
-		.max = 1
 	}, {
 		.type = SWITCH_TYPE_INT,
 		.name = "mirror_monitor_port",
@@ -1023,13 +942,6 @@ static const struct switch_attr mt7530_global[] = {
 		.set = mt7530_set_mirror_monitor_port,
 		.get = mt7530_get_mirror_monitor_port,
 		.max = MT7530_NUM_PORTS - 1
-	}, {
-		.type = SWITCH_TYPE_INT,
-		.name = "mirror_source_port",
-		.description = "Mirror source port",
-		.set = mt7530_set_mirror_source_port,
-		.get = mt7530_get_mirror_source_port,
-		.max = MT7530_NUM_PORTS - 1
 	},
 };
 

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
