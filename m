Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A11414E007
	for <lists+openwrt-devel@lfdr.de>; Thu, 30 Jan 2020 18:38:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6mZ83c7ahKlYD+NqOTaGsRxj2wrvKiuzJPUu+cTLe0A=; b=QfH3+kl2cWTZWx
	BA3uBzu9Sqot0S/GmnD9DQ5J5lwWjIVRbnMUYjv6LXJeoYkvNT2IHVQAfk0CXS8yGOHDNA2/lwxBd
	5/XBqcIWxOFeRE6IbWHmkXbDDDuUnd8EwPWJdnIPhiH0fG3qGHVOH/SZ1F093l7IJy8Jgqcnv5mRu
	p4i4h5h1VEQMS46ANw+03IdLRjFX0qopqQ/Y9RoMgJgMczTb7I+j5Z6E4IdN0SChAZxYwc29RTa7Z
	N33R3KYSjqLoDS0SF1aF2jwUZVPAGTWaomZbP+3tIoIbG7IX+A6h4cHPKGAN2sXrIh+6g13bAOL97
	XWazB8/fjiyVSkHWO2gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixDlY-0006Lt-6o; Thu, 30 Jan 2020 17:38:08 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixDlN-0006H7-Dj
 for openwrt-devel@lists.openwrt.org; Thu, 30 Jan 2020 17:37:58 +0000
Received: by mail-wm1-x32d.google.com with SMTP id s10so4695545wmh.3
 for <openwrt-devel@lists.openwrt.org>; Thu, 30 Jan 2020 09:37:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LCU0Alk63dxClJpAamm7cNMLMZvmjxRdTn+tA2pPgzg=;
 b=aQ+JtjWD20FgLR47yTzkj4JqA3rIG3w8gwdmHuYs+3Jf56VmnT/tZPby6rI0scRjcr
 hay6KJCJbmUsxSLUariwD0rDHiITcluAblCSzJy6wQSGRbEcbB8HDBM5PmF9kU7KQZ68
 R2Y2NNF+kV7U47AvyjVSTM7SdnrMUPcpsJMp0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LCU0Alk63dxClJpAamm7cNMLMZvmjxRdTn+tA2pPgzg=;
 b=rlIGcVIxqr1xX5lRi3jOnsLtsDYHz5N2nuo0TcmuLvvIiUfPpGOpFYeezWQpg0/Wna
 pRHqjquixvxSPUQfCHN1u295cr6NQPGAFm2tTuFiGmG5auGidFCMa8a+kmioiOiLTUMg
 V6UjC5DK5bTBBM2e3ug/QNR3CIk+crgWAK0yFlkO8puhiknhwqyjaM5Er9/fDtyYwExH
 YHJXlZy57T5WvyG0rpKsITseDcxf/mQ3ahs6Tc11VHbzdcSrbHThWVKwtAjUL0oz15Nz
 EbfOSZ2bCk2RfXM8M5fBc4Hk05aUVAmRLrUuQHbZXfwOVtAtXzNDf65oWNkeSuUr7334
 EjhQ==
X-Gm-Message-State: APjAAAUT/+qF/RcK6+CaU4tDH+/9WIG3fQV40yrh+5pRZX+hB6tpY9Ud
 ksj7SsdeFDY7642SjFAkOejNAwsFEVuSzw==
X-Google-Smtp-Source: APXvYqyaJBAR+g4pQ227w6Hs2DOPTsBy0k+2RzHI3dsi0co8Yy9F7jjtFVmphdGBI4o6XMgF8esXVQ==
X-Received: by 2002:a05:600c:22d3:: with SMTP id
 19mr6965736wmg.92.1580405873681; 
 Thu, 30 Jan 2020 09:37:53 -0800 (PST)
Received: from Kevins-MBP.lan.darbyshire-bryant.me.uk
 ([2a02:c7f:1243:8e00::dc83])
 by smtp.gmail.com with ESMTPSA id t1sm7549581wma.43.2020.01.30.09.37.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 30 Jan 2020 09:37:52 -0800 (PST)
From: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 30 Jan 2020 17:37:23 +0000
Message-Id: <20200130173722.75554-1-ldir@darbyshire-bryant.me.uk>
X-Mailer: git-send-email 2.21.1 (Apple Git-122.3)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_093757_467659_6A828912 
X-CRM114-Status: UNSURE (   8.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32d listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH procd] instance: Improve missing jail binary
 message
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
Cc: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Signed-off-by: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
---
 service/instance.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/service/instance.c b/service/instance.c
index e872ba0..b78a65f 100644
--- a/service/instance.c
+++ b/service/instance.c
@@ -824,7 +824,8 @@ instance_jail_parse(struct service_instance *in, struct blob_attr *attr)
 
 	r = stat(UJAIL_BIN_PATH, &s);
 	if (r < 0) {
-		ERROR("unable to find %s: %m (%d)\n", UJAIL_BIN_PATH, r);
+		ULOG_WARN("Cannot jail service %s::%s. %s: %m (%d) Are jails enabled?\n",
+				in->srv->name, in->name, UJAIL_BIN_PATH, r);
 		return 0;
 	}
 
-- 
2.21.1 (Apple Git-122.3)


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
