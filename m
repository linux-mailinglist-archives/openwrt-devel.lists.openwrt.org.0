Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31C8FBE07F
	for <lists+openwrt-devel@lfdr.de>; Wed, 25 Sep 2019 16:48:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cIiLh6nG7MxgUJ27QA/QWHzeFujMygsWphlIR+YN3Tg=; b=pJDqH4fwPssmQY
	gbtictdKhwt+G31V0n01pXPAPNgmlnogi01cf0VoljkH++kbiSyFpZ6B5FkekpuJHoryN/pkIHzRz
	HBpwSuCUFSDPLh5xQDhZYD0DAuTnob1r2vGSmKtEkid+QKKJQHQx8Y1OlqeSMbsO/kxQnIucM6O16
	09gz8A4p43aJKFs0zhklaHqxIHg2hAvlVPHCeAy6QkGmwxqK6Uui03dzYrmuKHvESQ1qZMT4z2Hgr
	37nc38++O+8bI6mcriabo4iHHPRKbN0quoqI6JXHN9IUhMDpdD3GsZDmWaQmXfpTFHTTsToq38WrD
	AsOAlejuxV7VL/gg5RnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD8at-0006dJ-OF; Wed, 25 Sep 2019 14:48:40 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD8aI-0006ck-47
 for openwrt-devel@lists.openwrt.org; Wed, 25 Sep 2019 14:48:03 +0000
Received: by mail-wr1-x444.google.com with SMTP id i1so7299742wro.4
 for <openwrt-devel@lists.openwrt.org>; Wed, 25 Sep 2019 07:48:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mRdrZHtG/HbFvkzi370itWp53xkheG38hSIpTE42utg=;
 b=Ysb4Abqz38IhYM+7nu21uqCn2xcdjLkRglqW15oc8/wIjqegK2cLcSBd/qNqC0t1vh
 48s/LvM0aFUpxUlEMmBhXGmPIaxrgIaWJPLxCTphL4s17VQ2cBJebhel9sKsbqZgrHpd
 VRgsG0hn+HIkA5f9JqzqAyI+hCIIOthUWe33swm2jfmim93Jr3MoTd5Mg7t4y1/MmszW
 sKAMOwmCL0m9FP3H0GeO0vmiOgxA5BNy26fRRrj4QmeP30nxdxxbr7padh+zjOryczpM
 uc5Cc2KWYdb4M5iO2NMBNf6qKEpXeCdvSZ9E/NB8URjsr/hv+N2FnhCjRY5kCQFa2Jfx
 5etg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mRdrZHtG/HbFvkzi370itWp53xkheG38hSIpTE42utg=;
 b=LqV2F5+fuyoF0K930SYVkX4nCEmhd+Gi3zq50LriVXfz7RW2BPu87cbkvLehkn3gPV
 j5BUhWwm5Pr46rbhm8oz8pFLKp5av2h7HLfmvfIgldoFmh/qpj1uq143twGQgcEBrWd4
 Q6ga4Utmd4fKl51rMPd65jRnXhXep8hTAb6PDDUwjvijs4ITq0/YqqKHlXRPwfcDDBik
 T8mE+7NDXGTVZd7x3gDwWXQ416oqV+VuD5J1b3IvPCWWw4PS/eEtApWRcJZcbY8tR68q
 J0si82AkyV2aI39PxCJxcBloz9hsG6n4m7ivpJBBbh5nP8Y8TFBW4/IUTQhMQ1tb+hR0
 ZLMg==
X-Gm-Message-State: APjAAAXtHE7O0Fp4Opr5mH0G7q+UPT6cYsjX0BYUX3jpgnHT49hL0GTz
 hPuHViAzIsu3vHCAN/Z2qdg=
X-Google-Smtp-Source: APXvYqz2D8jdxZ2U70uXo8tGv7RrVrz9G5n254lsZKPMLbIhGFGHuL4TkxPId5AuhSy2WTFp4Hecow==
X-Received: by 2002:adf:f343:: with SMTP id e3mr9854886wrp.268.1569422879250; 
 Wed, 25 Sep 2019 07:47:59 -0700 (PDT)
Received: from localhost.localdomain ([37.237.208.16])
 by smtp.gmail.com with ESMTPSA id e20sm9646402wrc.34.2019.09.25.07.47.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Sep 2019 07:47:58 -0700 (PDT)
From: Ali MJ Al-Nasrawy <alimjalnasrawy@gmail.com>
To: Felix Fietkau <nbd@nbd.name>
Date: Wed, 25 Sep 2019 17:47:11 +0300
Message-Id: <20190925144713.10632-1-alimjalnasrawy@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_074802_193575_FF13A8A5 
X-CRM114-Status: GOOD (  10.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alimjalnasrawy[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH 1/3] kernel: trelay: handle netdevice events
 correctly
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
Cc: Ali MJ Al-Nasrawy <alimjalnasrawy@gmail.com>,
 openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Since v3.11, netdevice notification data are of type
"struct netdev_notifier_info". Handle it as such!

This should fix a critical bug in which devices are unable get released
because trelay does not release resources in response to UNREGISTER
event spamming the log with something like:

unregister_netdevice: waiting for eth0.1 to become free. Usage count = 1

Signed-off-by: Ali MJ Al-Nasrawy <alimjalnasrawy@gmail.com>
---
 package/kernel/trelay/src/trelay.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/package/kernel/trelay/src/trelay.c b/package/kernel/trelay/src/trelay.c
index 581a5cfd2f..6d9d9cc14b 100644
--- a/package/kernel/trelay/src/trelay.c
+++ b/package/kernel/trelay/src/trelay.c
@@ -86,7 +86,7 @@ static struct trelay *trelay_find(struct net_device *dev)
 static int tr_device_event(struct notifier_block *unused, unsigned long event,
 			   void *ptr)
 {
-	struct net_device *dev = ptr;
+	struct net_device *dev = ((struct netdev_notifier_info *)ptr)->dev;
 	struct trelay *tr;
 
 	if (event != NETDEV_UNREGISTER)
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
