Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C29261AF604
	for <lists+openwrt-devel@lfdr.de>; Sun, 19 Apr 2020 02:38:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qFZu1WJecAznb1WMQErXezfJ+Y/xzinS/HKi26S06qs=; b=J2+9+o49esc3ZP
	bYDcJbS5cOd+X2h+8RMXTENAhijy9tZM8382vl4FLIIPu8fabhipxScSh+lYTQLBJTUxg1h3xYdA5
	eeeFIlVx8lyCuYUoJvhigYyfZgUww4vIcSgDsM28LbRHKEZBERtv4Mo8ZhQtcjrgJ49Ol2KcdPdI/
	MDD6UPq+xsSqeUDpWcTG+tc8kLiqUUK5PmJw4vJT4nXKzFwUcsY7xUikqJt0HJGNUJBjxyQaGdxSc
	J6XNpNLQEvU407q65RBz2vI4DIZ6CDbxbr1RKLFVcmdLAOho7C9Hb8TVOGSaK4ypJaZyH4eq/Pq5U
	3twaYTFLjjTpeojElqKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPxy8-0003BD-H2; Sun, 19 Apr 2020 00:37:56 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPxxm-000335-PC
 for openwrt-devel@lists.openwrt.org; Sun, 19 Apr 2020 00:37:35 +0000
Received: by mail-wm1-x342.google.com with SMTP id v4so1660083wme.1
 for <openwrt-devel@lists.openwrt.org>; Sat, 18 Apr 2020 17:37:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=SEAYGMbH4u3eXkTHK7lIX17rlnn3A3RggCuvWJUbrAU=;
 b=jhoj+NdlgCwtIgp4iQoyyvs0n7to/TGzCkM1T+zlNG5qa+Eh4BZxy6kZd9KibKRxd+
 IEtKkDRhnXQXQkwLFA3dBGky8+X+1WO4NwLsllaP8gcJg1EFw5WIVKyty5f/L2Tgdmr1
 UNMHbV+B/2IykbOblzvVPnXaFN3uY2cSp3lsaS/MyYR9KEdH2zEDY2CPoq/FofyhSUmK
 nrEsKLVp0yGYJDYb2oillQzNTwqykT+h96xQy4wL5VHouszxCAOZk7qBsDujJSO3UJro
 H4/4CDDy7haUHOVF1YkXAVT5M0Ov/wOZUCfLpvs05gqOmpggnV7F4PlI91rX0HzJbnsU
 SYjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=SEAYGMbH4u3eXkTHK7lIX17rlnn3A3RggCuvWJUbrAU=;
 b=MOMsWUP8EOGUK7ZL1qJzMvY09R0vuVULlmANepDdYJTFQ1UbkMH3zhU2r0tv+4olGQ
 O+KcuvZmLWTr9zlBAiQGaETLi9jg4vDjpf2OxiEAcOPP58LVx161iyTk2tpzVNLNqfH4
 ZXarw8wR0P8jn37GuNnJ8tdHRoKcKowEFXVFAp8kLZj0cOUOvIkLLb9SscgD6eANJllF
 VVC/3k4tJxXpBOlIaMKdJhcKVf7Ogz5MjqQgPK5HZvqTGo9kodF1PNUQ13okN+zOVRDG
 Un+Kn3rP1cvkriov35x14pFvYsBJfwSy7vXpJ3Cn8KSZ69kgXNnfyeiPi/d1KOpaYqUU
 Panw==
X-Gm-Message-State: AGi0PuYqyxIR4Ujsm4G74dzpWgEsely/BfjCu/gWQ2g8mGXxuCSdS1dc
 sCLequ9YNxVluhGoh8T4yQnHfmJ5eeM=
X-Google-Smtp-Source: APiQypI2Y8Uf/NGN/84CdxcEAmVl+yYhw/yBjWqdSyX7fP6pK5DfXa/v3mczegXSCH/W777rHSTaXw==
X-Received: by 2002:a7b:c401:: with SMTP id k1mr10084399wmi.152.1587256653046; 
 Sat, 18 Apr 2020 17:37:33 -0700 (PDT)
Received: from localhost
 (2a01-036d-0111-d83f-6865-f484-7881-a441.pool6.digikabel.hu.
 [2a01:36d:111:d83f:6865:f484:7881:a441])
 by smtp.gmail.com with ESMTPSA id l16sm22815505wrp.91.2020.04.18.17.37.32
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 18 Apr 2020 17:37:32 -0700 (PDT)
From: Szabolcs Hubai <szab.hu@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 19 Apr 2020 02:37:14 +0200
Message-Id: <20200419003715.26284-2-szab.hu@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200419003715.26284-1-szab.hu@gmail.com>
References: <20200416153146.4377-1-szab.hu@gmail.com>
 <20200419003715.26284-1-szab.hu@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_173734_811808_7C90940A 
X-CRM114-Status: UNSURE (   8.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [szab.hu[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH 1/2] ramips: define image recipe for plain
 lzma-loader for advanced cases
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
Cc: Szabolcs Hubai <szab.hu@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This change allows to make other transformations to kernel before uImage

Signed-off-by: Szabolcs Hubai <szab.hu@gmail.com>
---
 target/linux/ramips/image/Makefile | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/target/linux/ramips/image/Makefile b/target/linux/ramips/image/Makefile
index f93ea8ab2a..707bc85f9a 100644
--- a/target/linux/ramips/image/Makefile
+++ b/target/linux/ramips/image/Makefile
@@ -37,9 +37,14 @@ define Device/Default
   IMAGE/sysupgrade.bin := append-kernel | append-rootfs | pad-rootfs | append-metadata | check-size
 endef
 
-define Device/uimage-lzma-loader
+define Device/lzma-loader
   LOADER_TYPE := bin
-  KERNEL := kernel-bin | append-dtb | lzma | loader-kernel | uImage none
+  KERNEL := kernel-bin | append-dtb | lzma | loader-kernel
+endef
+
+define Device/uimage-lzma-loader
+  $(Device/lzma-loader)
+  KERNEL += | uImage none
 endef
 
 define Device/seama
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
