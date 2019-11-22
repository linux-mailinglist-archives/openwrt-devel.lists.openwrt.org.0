Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28A541076B5
	for <lists+openwrt-devel@lfdr.de>; Fri, 22 Nov 2019 18:46:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=k/cHiATtNykHIdiDZ3/Gra8+qcOcfZQ42bnr3dhkWP0=; b=u24gq8tSGrTPfr
	y6GjUnTNHr+x+ollpbNQfrt3Tfv2+YVoK38+KFPu8Lqg3YkvsHb2IbxiF8pa0l6SXgCOjS8zQoygZ
	AjMwJ5wNQOm2yQK1xjoY0s2urEI2ZLUAyHTV3MZTN4LbAb/49rz7E1BdEjWtu73FFULLn2VaNNMz5
	PIm8MDdD74tqMyKkVpj6cFNvDi3xcbVN915eDLKyHGXHcjElUV0C7iEGuO/Kqic0Ly+AdPXEk0tIA
	8yVLpZDHpMwf74zCG2fZvmYKnUV6dr2a4eQXN7h4R9Gws8AcTFZMXGKHwUrpIa+pH01Th7GaiyqYo
	7/o/qUr4s+KMpo/UMDaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYD0Y-0003cr-IR; Fri, 22 Nov 2019 17:46:14 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYD0N-0003cS-2r
 for openwrt-devel@lists.openwrt.org; Fri, 22 Nov 2019 17:46:04 +0000
Received: by mail-wr1-x434.google.com with SMTP id y11so6500416wrt.6
 for <openwrt-devel@lists.openwrt.org>; Fri, 22 Nov 2019 09:46:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=uX0Zxj9kNxDqYGG63rjb8HIUMeei6G1PwPbPRZqs790=;
 b=U8cS8naE0JjNYfuHUo/LwmhMFvZdFAXl5hxsFlRyc7JvYHWa3XyPUjIV6tyrgbvVep
 QA55JeU7Xc8qlEliNNZaT1gABNi7nHrrCVELjv2Hn7VLeA+/cSBDRvuDVmm98mqtNfjW
 CTsc/aRVxBsKICQ59kWrH0YCgAH8bI6EkKDRs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=uX0Zxj9kNxDqYGG63rjb8HIUMeei6G1PwPbPRZqs790=;
 b=qmibUU6eHecIz7CZsWQjBRSs7QHml0LpSAauf7eWEmvUjwGcWMRh1zg0ZbHT+66wTT
 LG8lz8YDPYXahF+oHdPaa8fOAC0yrFsz2CeSggFNXto0NCss9j2vVmsvsIvjKtcJF0Xu
 Vuzt4MYlzr+UmLqzn+OydPnj/Px+DjUE6DbMliwp2/Q6NWR3TGc7vMxuzKi/AnYEJ+Qh
 0HrOu/saM4+KSLf9NWeyV2dfC/xjTPcyagUSZPDL1In4cE6IXUkb3bVngtAQowu6gLoF
 kobQAuUMtUIbRofi0eT+2LoiSZNuVqI6pQUOXvGuqCa4eDrlKVyYTS1jHL0IGZwcUGkr
 Gt1A==
X-Gm-Message-State: APjAAAXzqK9YRfuwGU1e9lr0MbX9+6KNK4LMUxu8z1Hlx5WRLK5uHbBh
 TnsbCjLVA7lsNHUmVAQHoAgDBxpUgeY=
X-Google-Smtp-Source: APXvYqzMOyANmLKAxdarEiQYroCnq72OOPzXOHX8cxmRKUkrD1bokmSUocy6I5OVzpic9QrwCQptvQ==
X-Received: by 2002:adf:9d88:: with SMTP id p8mr19279824wre.286.1574444759174; 
 Fri, 22 Nov 2019 09:45:59 -0800 (PST)
Received: from localhost.localdomain ([109.159.227.69])
 by smtp.gmail.com with ESMTPSA id v6sm8711005wrt.13.2019.11.22.09.45.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 22 Nov 2019 09:45:57 -0800 (PST)
From: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 22 Nov 2019 17:45:52 +0000
Message-Id: <20191122174552.58209-1-ldir@darbyshire-bryant.me.uk>
X-Mailer: git-send-email 2.21.0 (Apple Git-122.2)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_094603_132930_CE57CF5A 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:434 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] dnsmasq: correct sense & usage of
 dnsseccheckunsigned
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

dnsmasq v2.80 made 'dnssec-check-unsigned' the default, thus the uci
option was rendered ineffectual: we checked unsigned zones no matter the
setting.

Disabling the checking of unsigned zones is now achieve with the
"--dnssec-check-unsigned=no" dnsmasq option.

Update init script to pass required option in the disabled case.

Signed-off-by: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
---
 package/network/services/dnsmasq/Makefile           | 2 +-
 package/network/services/dnsmasq/files/dnsmasq.init | 3 ++-
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/package/network/services/dnsmasq/Makefile b/package/network/services/dnsmasq/Makefile
index a1b51896a9..c57a837e9e 100644
--- a/package/network/services/dnsmasq/Makefile
+++ b/package/network/services/dnsmasq/Makefile
@@ -10,7 +10,7 @@ include $(TOPDIR)/rules.mk
 PKG_NAME:=dnsmasq
 PKG_UPSTREAM_VERSION:=2.80
 PKG_VERSION:=$(subst test,~~test,$(subst rc,~rc,$(PKG_UPSTREAM_VERSION)))
-PKG_RELEASE:=14
+PKG_RELEASE:=15
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_UPSTREAM_VERSION).tar.xz
 PKG_SOURCE_URL:=http://thekelleys.org.uk/dnsmasq
diff --git a/package/network/services/dnsmasq/files/dnsmasq.init b/package/network/services/dnsmasq/files/dnsmasq.init
index 1054f7a12a..94a069f1ac 100644
--- a/package/network/services/dnsmasq/files/dnsmasq.init
+++ b/package/network/services/dnsmasq/files/dnsmasq.init
@@ -966,7 +966,8 @@ dnsmasq_start()
 				[ -f "$TIMEVALIDFILE" ] || xappend "--dnssec-no-timecheck"
 			}
 		}
-		append_bool "$cfg" dnsseccheckunsigned "--dnssec-check-unsigned"
+		config_get_bool dnsseccheckunsigned "$cfg" dnsseccheckunsigned 1
+		[ "$dnsseccheckunsigned" -eq 0 ] && xappend "--dnssec-check-unsigned=no"
 	}
 
 	config_get addmac "$cfg" addmac 0
-- 
2.21.0 (Apple Git-122.2)


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
