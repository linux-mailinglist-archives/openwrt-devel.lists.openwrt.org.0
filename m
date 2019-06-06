Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AA5137C6C
	for <lists+openwrt-devel@lfdr.de>; Thu,  6 Jun 2019 20:44:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=VVlONoFw1RCq0DEODOa9jNNTViYv7KOMNI1MjWr24OA=; b=QFR
	1jkyxBW7xY4/36EsyklTd58/ZB/OSEbiftMUgphJ27BLYvc+q15o5f9lOXDwamubmFnwjF6qNscFn
	JI2bua+ECM2pk6ZBhufiQNrN3dvXqqsRG7ynmM4ismOg+ETLD1VNQ63ooQOB4e6p0okIvbKaRdqgL
	SNnCsXIrjiWSdR0dWNDUHNHx+u1ivnH0a/3CD+hGozaqfl6NF8/FlLPZ8toBvu6Lao/VhAliUEsqg
	XZ099bMl0GmHmLGW92vam3g6tlg7xfW0JXVGPcswE94PMcFcVF1oDFQfhDSfAFKq8i/EmxIb1x6ao
	3nxOyGjfWD6uP6ZfJEBfLFo2ITJl+jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYxMU-00040I-H5; Thu, 06 Jun 2019 18:43:42 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYxMO-0003zw-Pl
 for openwrt-devel@lists.openwrt.org; Thu, 06 Jun 2019 18:43:38 +0000
Received: by mail-qt1-x842.google.com with SMTP id x47so3856775qtk.11
 for <openwrt-devel@lists.openwrt.org>; Thu, 06 Jun 2019 11:43:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=W/4uyrVhJHYoc2pE1kzmOTQvkozS2BfOA4KCrx1gKEE=;
 b=q+cKBoTe48Qi6CyOnqmVsnvSw627gJAn+IAIiQMHxiV10/J+NsBDqraWYX0amyylhz
 NBIhNQSafyVmMyOKRjluHOjzqI72dhfAHFf8KpntjYtKllRNcUpAYflejpru3PAddQ/T
 wNqLFeWUdc0WTgTiZRctP4iUqcGU8BbjxSwUycHVqdM0PoilCgOmi9UY/J6hv17US6MI
 NxfeeTF4YmRQTqdtokjhzULVWpcCVmkoZvsxomECUQwOmEuZ6k+7KGFbTzZF+KMd7VFw
 FvxT1ZEvXGkyI7byRu0b9TRW+DZCwBJDviXbjqQ0AO2xr9bbJ4QZRiK3SUbabXq3kMbp
 NjVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=W/4uyrVhJHYoc2pE1kzmOTQvkozS2BfOA4KCrx1gKEE=;
 b=McA6bU7XLWGujKwi0jeQTTZG8Azm5TD0rCCiS4DxoRnpnKOHGEITyxhsOpaUeJj7nf
 uhUOGL2pEnarGLUzxr8+uKudO2GPWGPpXMx8k7kiJrKHrb4Nm2U2y7qjUp/HIUL7tcjT
 60elOQwQVQ0A2b60PTbqJsBp0SXP5bH/3jTm8RSxpVaLm2xgalmR1aPO16VrecHp352O
 JxIGTtN3wM+J1RxhqLwXn/H1j+kbim8r74JO5pIV1Ar8+koAXPapRdywjqRPyE/qa/z7
 1sE/LWu2aeCxERc0eBibirls7k3DTVZWlvHeNHpBX0MJVsRd3cegYptNQMy3GOht/RQU
 kb8A==
X-Gm-Message-State: APjAAAXXN+KiiiZ/dFabx77nAZtNOliJ+uYwwDS0xgE6YW31XRJRjFMo
 CP/NZcFz/OG6atqIbFC4j5PJSDU7VdZDI8zEbHAFIxlbXYg=
X-Google-Smtp-Source: APXvYqy2Ih5C1d35YZpC8z1fM9IoqX8NGToPloIkkGJYfwqd+HXSdtUAlduKqBNPqCUi0jXpuBTlFy6MlchLJ7UFOH8=
X-Received: by 2002:a0c:96f3:: with SMTP id b48mr1788423qvd.80.1559846614352; 
 Thu, 06 Jun 2019 11:43:34 -0700 (PDT)
MIME-Version: 1.0
From: Kristupas Savickas <savickas.kristupas@gmail.com>
Date: Thu, 6 Jun 2019 21:43:23 +0300
Message-ID: <CAKjzzGMjFpe3dVo=hDr+nfmtsgX3od3Us7TDji=31NBzdbtmmw@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_114336_857502_260690D9 
X-CRM114-Status: UNSURE (   8.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (savickas.kristupas[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH 1/1] libubox: add format string checking to
 ulog()
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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

From b659ea5fc6511f9f58f04ca4eb58698aa8386f11 Mon Sep 17 00:00:00 2001
From: Kristupas Savickas <savickas.kristupas@gmail.com>
Date: Thu, 6 Jun 2019 21:28:32 +0300
Subject: [PATCH 1/1] libubox: add format string checking to ulog()
To: openwrt-devel@lists.openwrt.org

This offers an increased level of security, as the arguments will be
checked for validity against the format string at compile time. The
format attribute is supported by both GCC and Clang, so there shouldn't
be any portability issues.

Signed-off-by: Kristupas Savickas <savickas.kristupas@gmail.com>
---
ulog.h | 3 ++-
1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/ulog.h b/ulog.h
index 4818b1a..46d3c77 100644
--- a/ulog.h
+++ b/ulog.h
@@ -32,7 +32,8 @@ void ulog_close(void);

void ulog_threshold(int threshold);

-void ulog(int priority, const char *fmt, ...);
+void ulog(int priority, const char *fmt, ...)
+       __attribute__ ((format (printf, 2, 3)));

#define ULOG_INFO(fmt, ...) ulog(LOG_INFO, fmt, ## __VA_ARGS__)
#define ULOG_NOTE(fmt, ...) ulog(LOG_NOTICE, fmt, ## __VA_ARGS__)
--
2.21.0

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
