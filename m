Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDDE017E07B
	for <lists+openwrt-devel@lfdr.de>; Mon,  9 Mar 2020 13:47:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5+7CeWlgC5F2f/kDdYY5r95ufKEQbLIJuQNL8AhWvIw=; b=q7YpuCDuq9HWMS
	Q2abGBasFaXoEjrk0Oy9p3XAx5Qc71uXTOGKYoU/neleautNo260YxfopgWc5nBkk4R23wOm+Z2C8
	xzcF0pgl+vYN49PBZm7b0NYGJ8hP77YonISDgb/1g912mDftm/kdTyJIAYBPY5ymGNWoKWZo+0Gna
	GgTSjpE487h3IFWSt8GiGnAn8UCep2XmiGfk4jcWRrOCxp/HEj1YrJYS5UbkrUiWyz5HtJWM1jm2+
	7iCiRlKmfahB7J+qkdVu+Pfp9nENNbyQX9n0JbL0P3syiHWGlsBA8JEuUVZyq6saYjpNaIZYRWCwQ
	eCY6YDjEVGbRv4N8ujww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBHo5-0006M0-Qk; Mon, 09 Mar 2020 12:46:53 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBHnx-0006L5-Qx
 for openwrt-devel@lists.openwrt.org; Mon, 09 Mar 2020 12:46:47 +0000
Received: by mail-lj1-x243.google.com with SMTP id n20so6693022ljg.3
 for <openwrt-devel@lists.openwrt.org>; Mon, 09 Mar 2020 05:46:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=telliq.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=pfacnVdP7aDKlvEa/zR+yqDeb9eJRhuMweCoobUbL2Y=;
 b=z6jzg89lgm5l6XdZ9wHjeemDXMunLvqX9PUg/XwjUZEXYWUntBNR6dECMqdg32x/qv
 TU0MVYv+Oxpf1KcymVSNl/O7vvZUjeppCpvo2hBbrxWPdqi8fVABo+j6L75ucir4mxdd
 nEteirgOfz4Mp7lZIrLJ3F8c9Te7I/mORdt1jujUpDR7POZRf3Du3O+NnXtdKV4nFQ9i
 89w36LAw9Kcb4zy9WqSd8I0br/DyZl/tByjz+flG1Ry5yHhheTEZhCBfROuoZCSV+n++
 9iPVdZjmDzD5r6jSqLU7Gj7fy20m5+cgS3kwuretGx3eUxxc6aROANY60/qYf87N40kx
 M7XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=pfacnVdP7aDKlvEa/zR+yqDeb9eJRhuMweCoobUbL2Y=;
 b=DKVU6jx37ih9VyA369Qh7vQhxd+C6DK1lpt5Br5WknlCEQHlobjHGXAOwcgG1TTGKg
 btPnX/M06TvPErGxM0g+bw63z8GShOj+uPn7QT3k9DryyXvtV9ONGa3BxZqSUHEfmsN7
 qRAD+2SmBF2oigMylkQzzZpTk1LZa2DPbO/juVX8GyOx8HwhwPdAZp5TB8E15V+6+F6L
 Jti3q8+gAo/XK6bB6EV611tfL7S/Sj+pXEvpSjEqwk0PrGuu67MKn9waxa+mcPAFVkHl
 JHuNJI2b5IjSGMWfqEqv0jkJstj0rni7ipaAbXDuH4giuhetqYI2A6RJd1bYYvv+bm/2
 zX1A==
X-Gm-Message-State: ANhLgQ2xGsM4olPSEdB481p9bc1q2xsAwMILFdbViqo5MnWh/15meD9s
 ZUJueK9ElobZ6V1XhbyVA1jIl0LiNH4=
X-Google-Smtp-Source: ADFU+vtsRQzN8i2yl48qvsEpErVZ7KBMc5ZgR9oxTW/k6GN+Y3Bp/EydLEo3lM7LTmoHMnkcELNIBg==
X-Received: by 2002:a2e:7806:: with SMTP id t6mr9898597ljc.145.1583758001893; 
 Mon, 09 Mar 2020 05:46:41 -0700 (PDT)
Received: from emu.mida (static-212-247-121-18.cust.tele2.se. [212.247.121.18])
 by smtp.gmail.com with ESMTPSA id z2sm5269928ljc.77.2020.03.09.05.46.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 09 Mar 2020 05:46:41 -0700 (PDT)
From: Jan Kardell <jan.kardell@telliq.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  9 Mar 2020 13:46:40 +0100
Message-Id: <20200309124640.24379-1-jan.kardell@telliq.com>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20180926130634.3764-1-jan.kardell@telliq.com>
References: <20180926130634.3764-1-jan.kardell@telliq.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_054645_967105_53BB0C5C 
X-CRM114-Status: UNSURE (   8.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH v2] ncurses: Add ncurses6 config
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
Cc: Jo-Philipp Wich <jo@mein.io>,
 =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 Rosen Penev <rosenp@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is needed by gpsd. Otherwise it finds and uses the build host
version of ncurses header files. And those are not compatible, at
least not on openSUSE.

Also use relative symlinks to the ncursesw6-config file.

Signed-off-by: Jan Kardell <jan.kardell@telliq.com>
---
 package/libs/ncurses/Makefile | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/package/libs/ncurses/Makefile b/package/libs/ncurses/Makefile
index cc1e960a0c..82b274e32b 100644
--- a/package/libs/ncurses/Makefile
+++ b/package/libs/ncurses/Makefile
@@ -9,7 +9,7 @@ include $(TOPDIR)/rules.mk
 
 PKG_NAME:=ncurses
 PKG_VERSION:=6.2
-PKG_RELEASE:=1
+PKG_RELEASE:=2
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
 PKG_SOURCE_URL:=@GNU/$(PKG_NAME)
@@ -156,13 +156,16 @@ define Build/InstallDev
 			ln -s $$$${so##*/} $$$${so%w.so*}.so$$$${so##*w.so}; \
 		done; \
 	done
+	ln -s . $(1)/usr/include/ncurses
 	ln -s . $(1)/usr/include/ncursesw
 	$(TARGET_CROSS)ar rc $(1)/usr/lib/libtinfo.a
 	$(INSTALL_DIR) $(2)/bin
 	$(CP) $(PKG_INSTALL_DIR)/usr/bin/ncursesw6-config $(2)/bin/
 	$(SED) 's,^\(prefix\|exec_prefix\)=.*,\1=$(STAGING_DIR)/usr,g' -e 's/$$$$INCS //g' \
 		$(2)/bin/ncursesw6-config
-	ln -sf $(STAGING_DIR)/host/bin/ncursesw6-config $(1)/usr/bin/ncursesw6-config
+	ln -rsf $(2)/bin/ncursesw6-config $(1)/usr/bin/ncurses6-config
+	ln -rsf $(2)/bin/ncursesw6-config $(2)/bin/ncurses6-config
+	ln -rsf $(2)/bin/ncursesw6-config $(1)/usr/bin/ncursesw6-config
 endef
 
 define Host/Compile
-- 
2.16.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
