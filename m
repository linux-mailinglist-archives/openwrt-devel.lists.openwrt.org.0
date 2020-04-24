Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBDF61B7804
	for <lists+openwrt-devel@lfdr.de>; Fri, 24 Apr 2020 16:08:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ExfP/D2n9IN12tXgEcIgt3SiPa84k9TQBIdzPzlxi2I=; b=Urm/Vp224NwYvi
	2yKsX4RYcXHFgY7Y9cVlDR3gtNOejgr/UzPWqFserDN8SiQAaBGfLz9LRzYz8FgRS92MpjUYPn8ub
	g71Lvng2HXYGKw4xCVU/xd8gFyz30ABzHivGLECNB2Uftj/uutTQYn5RY5WnVsttz0IpD1f9J+REw
	8f9bskp0Mm6TRD1o+nUTrrvz2c1336PGHoeB0i0ukE+G9kvI7QhGafv3oG1jmZcUhpmMM52GIhB4s
	S8uXzO8rBpO/FpTzsJI+E0IkpcdAy7d8k/X4cCBhuO1j5R06QbZknYpS3iUlC4gG/8MNAMQcpR5Nu
	XySbOYeOmNYizJtWAGMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRyzf-0000sa-Ek; Fri, 24 Apr 2020 14:07:51 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRywK-00040l-DK
 for openwrt-devel@lists.openwrt.org; Fri, 24 Apr 2020 14:04:29 +0000
Received: by mail-lf1-x132.google.com with SMTP id j14so7777927lfg.9
 for <openwrt-devel@lists.openwrt.org>; Fri, 24 Apr 2020 07:04:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2W9aHN4mQm+/pyy79zBAEdu2lp4VHW/iFU85KWPBDuw=;
 b=BMDVfYE5e1sX0ZCgD6J9GZZ5KQ252ewjFK4lMRpOk7ml7hFGrP/lhx2arJOAVJLT5c
 T1vP5aTPrKR3pnSf4YqehNXOEy1j2Q35RNsa3rDLNb0T3vgUddfHeOBRpeLaH39sQzQi
 irffF+InyX61sasrzU0YYHzw4nM9eWK2TEQXhE/YfDTb9wTBCaaH2TgYB0BfIGn5YYln
 vsbTgrkOx7r1iiOeHuPStOCv/WxIp8pZio0zYY7ymXDEI/byP4rUrquTwK2+Gt4pp0Zr
 gnmVP4gF3FXM5Cerc+VnoFfwTmsnyPiE58PMhgLB1djPoesoOu6I8CiK616RUOH4UpAO
 za3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2W9aHN4mQm+/pyy79zBAEdu2lp4VHW/iFU85KWPBDuw=;
 b=CYrQLyCsFxP7QMhrg7GRcUDBaH08A3J4f15cq7qz5NfoT7CRoimzuKkSIO7P9bqxrj
 Qwt4y43YmgzuryxuQQ03Nz88CIr3d3h5WGTKJ0pUDfV1J7YQMPTxx2RM4Y0wZ+8xgMCK
 acrg/6IWLP8ceiLpSUKLSiTRK/8UBuDxdLkE7gu7ggWvPk3c0Ham+lmVBw09lfBE9/vr
 9/UrxTP7Dc+18BSEKWnOocThhbD1uDjGjuYRxBEHOOZBIuRwcIalygPJyb1X78zxXZj+
 PNXYeKD49YrmL4QvoIsAVlPinnkGM4dhELoHJ+CjJCUmof9IiR+kug9ZwY2erE+mWN9q
 O1xQ==
X-Gm-Message-State: AGi0PuYK6UmeiU8tmzyxt387SyK/I1NRz4LXE2a8I8LzQoGe8niRt6jb
 cls0wNCSodfuvnsWS5oxqPAIz9Om
X-Google-Smtp-Source: APiQypINlcCPx3s19GLMpSBCdXMrFTvKCJRKMChdUyiDb5XBYPmWE9me0LZnf6Ib6jdWDeF2HMx0rw==
X-Received: by 2002:ac2:41d9:: with SMTP id d25mr6384300lfi.204.1587737060380; 
 Fri, 24 Apr 2020 07:04:20 -0700 (PDT)
Received: from rsa-laptop.internal.lan ([217.25.229.52])
 by smtp.gmail.com with ESMTPSA id v18sm4937790lfd.0.2020.04.24.07.04.19
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Apr 2020 07:04:19 -0700 (PDT)
From: Sergey Ryazanov <ryazanov.s.a@gmail.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Date: Fri, 24 Apr 2020 17:04:14 +0300
Message-Id: <20200424140414.3540-1-ryazanov.s.a@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_070424_481083_43C5D673 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:132 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ryazanov.s.a[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] base-files: prevent issues w/ overlay on
 powerloss after sysupgrade
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

Due to filesystem write caching the old configuration data could stay
out of flash for a long time during a first boot after the sysupgrade.
Power loss during this period could damage the overlay data and even
make device inaccessable via the network.

Fix this by syncing data to a flash as soon as the previous
configuration will be unpacked after the sysupgrade. Also sync the FS
state after the sysupgrade.tgz archive removing to prevent duplicative
extraction of a previous configuration.

Tested with AMD Geode based board.

Signed-off-by: Sergey Ryazanov <ryazanov.s.a@gmail.com>
---
 package/base-files/files/etc/init.d/done           | 2 +-
 package/base-files/files/lib/preinit/80_mount_root | 2 ++
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/package/base-files/files/etc/init.d/done b/package/base-files/files/etc/init.d/done
index 374353a23c..32d6118df7 100755
--- a/package/base-files/files/etc/init.d/done
+++ b/package/base-files/files/etc/init.d/done
@@ -4,7 +4,7 @@
 START=95
 boot() {
 	mount_root done
-	rm -f /sysupgrade.tgz
+	rm -f /sysupgrade.tgz && sync
 
 	# process user commands
 	[ -f /etc/rc.local ] && {
diff --git a/package/base-files/files/lib/preinit/80_mount_root b/package/base-files/files/lib/preinit/80_mount_root
index f3fe788e19..265a3f18df 100644
--- a/package/base-files/files/lib/preinit/80_mount_root
+++ b/package/base-files/files/lib/preinit/80_mount_root
@@ -9,6 +9,8 @@ do_mount_root() {
 		echo "- config restore -"
 		cd /
 		tar xzf /sysupgrade.tgz
+		# Prevent configuration corruption on a power loss
+		sync
 	}
 }
 
-- 
2.26.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
