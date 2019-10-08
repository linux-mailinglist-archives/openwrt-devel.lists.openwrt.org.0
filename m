Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE874D0362
	for <lists+openwrt-devel@lfdr.de>; Wed,  9 Oct 2019 00:25:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9kRVYUlsTossiJQE7PxnT3483u4rzeG+U6YlGzb4auY=; b=Okk9WTTo6Mbxmh
	lhywsB34doBE+WyK/Z7XF7HX/3oQT0zyTNzg23OFxMioPBocGvaBRUJjtjA1mJ+Gcx6skoTpYUFi2
	/P0kfFLHT8i+B+y7ujVRDQvToM/REUR4NdF8hxG3FN2zLnBvDeGV5Oa59Cl81+YUv6R1SZGycLabP
	xG+gHP0cjBDhmoQK56q1BjUCRnMa77MEC2B1fipggwr80uFxfvgOm3KRQfzmGAp059hfo8RG/TPhi
	6ChwRdKx86yIsBR0WF3Ptx2TGB4CA7aV2axdLClUp8PQp+CnEF9DsrnvveDgQNoGIbrAZmDPeb8Ez
	rwyXOcxzc+Fwp2dCxMqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHxuP-0006eS-Oc; Tue, 08 Oct 2019 22:24:45 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHxuJ-0006e6-3A
 for openwrt-devel@lists.openwrt.org; Tue, 08 Oct 2019 22:24:40 +0000
Received: by mail-pg1-x543.google.com with SMTP id 23so80495pgk.3
 for <openwrt-devel@lists.openwrt.org>; Tue, 08 Oct 2019 15:24:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=/qmLTdY0HmeX2GSBNijTbe1OxM+dNC7tjVbt+UUe1n0=;
 b=B4PZtDw039wJeV8YQ+FPNrIl7Qqv6foAkOa21Qj3/j3wTWnIbH2J4jw8Aa3commwlx
 V8v6EmLxFH6wSHsIqERfgKK+olui85+9FKtkpOEYM8HA1r8amKXuHZI1CHJp+3HkWamb
 d4c5Z7qHIAFr3dLWsPTBr6ShWkJ7plh+lTcWHcY5V4qAfcqY96qQ2zRSfreSUOIERXNs
 AHsVay90efz+7hmmDH5AQSIyDgNIRabs6M0SuTfq9xOSGednq+D9dYJN2aGpbYFzAPq2
 XF6jIzPzyp2GUp5rRddt35u5OZjZZR+yKvvv+AwNYGg2aEum7iH3Lf7KO0Z8O78Bvz6/
 CaLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=/qmLTdY0HmeX2GSBNijTbe1OxM+dNC7tjVbt+UUe1n0=;
 b=kKvuwa2iB+C/uevFmbIeZKyPcHFilPA7L66coe1xRXSHlbIZ969UbwmJDNR0wxZxQM
 fAbi9ZkXm1R6n82R3AnYjMg9VDbQFcbczY1jQiXOuERZB5yMN5paeXJBJnqOz+E72a2S
 A+z0Sw0bvHz2VzpBG9zt2n+yiQRsAOmDuVB9Fd8hhqgz61qVusiuzbjJITFlhelUXWn9
 pWgrhR3HydHhz3r+bP461TT4n7hB9orWPnicfuis2ChrfVWFXKdgbv/gfFsa+Gk+c3Px
 DkFZ5uEC2xwmAFVhzlO7uVYjZ58P9Co9TN75F0CAyzQAFk7W64aTmmQ5oYayvsy45z7R
 atyQ==
X-Gm-Message-State: APjAAAUX6Jelm06DQZx8IcV9N+0Fw60TWZpToHp9EHURN7vsazb0SMSq
 xyMUn9VVamTeIHf+3gvGJ/6Q+IJg
X-Google-Smtp-Source: APXvYqwzInVOiYZKcytE04aszJ8DtZbNN7LvHVmHkUcRKchnnThOJLCAY8zX7OtJQZmmWz+KzknfXQ==
X-Received: by 2002:a63:2066:: with SMTP id r38mr806372pgm.134.1570573477110; 
 Tue, 08 Oct 2019 15:24:37 -0700 (PDT)
Received: from DESKTOP-VIRSTQA.lan ([69.42.0.147])
 by smtp.gmail.com with ESMTPSA id w10sm176144pjq.3.2019.10.08.15.24.35
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Oct 2019 15:24:36 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  8 Oct 2019 15:24:34 -0700
Message-Id: <20191008222434.2022-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_152439_158745_8D658ABD 
X-CRM114-Status: UNSURE (   8.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] toolchain: Simplify libc selection
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

uClibc-ng is only needed for ARC. Simplify the conditions.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 toolchain/Config.in | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/toolchain/Config.in b/toolchain/Config.in
index faff3c8fbb..762f4e10d7 100644
--- a/toolchain/Config.in
+++ b/toolchain/Config.in
@@ -250,8 +250,7 @@ choice
 	config LIBC_USE_UCLIBC
 		select USE_UCLIBC
 		bool "Use uClibc"
-		depends on !(aarch64 || aarch64_be || powerpc64)
-		depends on BROKEN || !(arm || armeb || i386 || x86_64 || mips || mipsel || mips64 || mips64el || powerpc)
+		depends on BROKEN || arc
 
 	config LIBC_USE_MUSL
 		select USE_MUSL
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
