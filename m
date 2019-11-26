Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D742B109E73
	for <lists+openwrt-devel@lfdr.de>; Tue, 26 Nov 2019 14:01:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HmY86OVA4uZvBTf6pc6fT3RqdiZwV8w/s5mur6rVWGo=; b=qOl+SW65McglOG
	ygNX9WLaLEahGhDyJmEeOhAoSwVl6b1LwrZO9Ea6AO1zGtvJeRIFP/hHUH/lzFfRJdFDXtt8E34e2
	DNp3PAljOsXAV6Uc3SmydwRRFBsNhwa36YGqwTxTjLq1JY//CJhOQ6ESm4krX5irmQSasyWd6Wb4C
	utfr3YU4d4x3/wuJB8Bd3/T8hPFoxA+b8gcATL6hNgLV0qX+qoE7fJLm1j5ssX+4Xj05+RU5N69HB
	Kt1gw6+MLZIKHef0X8X6DmFX/y1TB6ur4xt+Z0SaFbegapa6FavWRK+XFpMB/nJGsV6uRRyUydGr2
	NDgwepyNcD0K1sRbS/kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZaTN-0002Io-1s; Tue, 26 Nov 2019 13:01:41 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZaT8-0001kh-8i
 for openwrt-devel@lists.openwrt.org; Tue, 26 Nov 2019 13:01:27 +0000
Received: by mail-lj1-x241.google.com with SMTP id m4so20092906ljj.8
 for <openwrt-devel@lists.openwrt.org>; Tue, 26 Nov 2019 05:01:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2cGeH8bv9lIP3ngjbR1XVZFg/DP6KfFbLVs72NieGs8=;
 b=gh5D3t9qJt25LcG3U0Ol/Aymwl0esWAkTt68Rj9jPDr5gYF1gs0qGQY9o9yAFccAZU
 t90a4zpNoz2f7t7h+rfEZni7twI2IkI9V0NEZYx4nPerL18LSBwMbmmdkZ0ccbGv2T4R
 Ex1flMTkqc5ExkZSoTfwcbDAZeHG8AejhperzhDAc1LuWCJhw7+pc0uoUcrmTzIqBAlT
 xh+HlZeF2Q0FFmFpw0bN6jgZgSipjx1nyRfrM8LdUg/4OT2VdwMI8jzntBEIJ4a+66Rv
 xSfaGIWbqv274lpivX/ceHjReLhpcwnZgknsd9AeVUbiPgRShe+/S1a1eAs9mMx5+DVQ
 l1bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2cGeH8bv9lIP3ngjbR1XVZFg/DP6KfFbLVs72NieGs8=;
 b=EsXAeSC8GKpNMQPFjcRfPzWYwr8XdnHfr0tnWIVB57TNAG7oe52MzyLDqUthYQdcoc
 5LlByGcHWM7fU1GjceXjUUtj6oAElcBph0UbElBsJlxXxjPOifWr0nhCIPcXBsGTwDTp
 Gt5/X09CoXgM2CCVSIL1guHjHYVYZLtsv4lgTSMSQxLvy3ZM/VY3i98c6Ewidb/L0ssA
 X+gzgtr3AdxlllYhLTQ8C7Ge18MWLYAb6/lja2Ru8cCuSGpkOVFnKnGLseR6c1fxFLzy
 KNg5JI+h6LkPYy3QXa6mwOLZ0uH4dF7sS2T6F0B9th7Gr+8susIMt3RNYXI/y2ZP8qiw
 JyIw==
X-Gm-Message-State: APjAAAUD92UgZNxTwg0XIIlnH/d6A5249UCzxR8S/UY/wBVDlv50Merj
 PEyx7VyuULN8sLDlhJxjWknpeEv6
X-Google-Smtp-Source: APXvYqwSupJB4ymtansxhS5s/VENsC+3xJzBOWn1y39QDXuDitGII8A/bJ2QYUojRYi/r0iewAk1rw==
X-Received: by 2002:a2e:9802:: with SMTP id a2mr27016905ljj.254.1574773283206; 
 Tue, 26 Nov 2019 05:01:23 -0800 (PST)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id g11sm5264089lfb.94.2019.11.26.05.01.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 Nov 2019 05:01:22 -0800 (PST)
Received: from home.paul.comp (localhost [127.0.0.1])
 by home.paul.comp (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 xAQD1K0d031175; Tue, 26 Nov 2019 16:01:20 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.15.2/Submit) id xAQD1K1I031174;
 Tue, 26 Nov 2019 16:01:20 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 26 Nov 2019 16:01:11 +0300
Message-Id: <20191126130111.31134-1-fercerpav@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_050126_342554_CBA71B8E 
X-CRM114-Status: UNSURE (   8.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fercerpav[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [RFC][PATCH] ath79-tiny: enable 4k sectors
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
Cc: Paul Fertser <fercerpav@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This enables using 4kiB sectors as erase blocks for 4MiB NOR flash ICs
that support it.

Writeable jffs2 overlay used to store settings requires a partition with
at least 5 erase blocks, so using small sectors is essential for devices
with 4MiB flash.

Sysupgrading a device running firmware without this feature will likely
not allow to preserve configs automatically but since ath79 is
considered to be in a "technology preview" state it shouldn't be a
problem.

Signed-off-by: Paul Fertser <fercerpav@gmail.com>
---
 target/linux/ath79/tiny/config-default | 1 +
 1 file changed, 1 insertion(+)

diff --git a/target/linux/ath79/tiny/config-default b/target/linux/ath79/tiny/config-default
index 90cd5534c7..9b845abbff 100644
--- a/target/linux/ath79/tiny/config-default
+++ b/target/linux/ath79/tiny/config-default
@@ -1,4 +1,5 @@
 CONFIG_LEDS_RESET=y
+CONFIG_MTD_SPI_NOR_USE_4K_SECTORS=y
 CONFIG_NET_DSA=y
 CONFIG_NET_DSA_MV88E6060=y
 CONFIG_NET_DSA_TAG_TRAILER=y
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
