Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A62E12DD52
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 Jan 2020 03:03:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hGD4LG45HEDgSgDFtLtluMgTzEVqBlJjv3x17SXe4zQ=; b=Tem/XVhrMP4GyH
	uQIBYL4lH/f8f8VebJwjuKVqN8JQe8+/fddztAWUlaTzsgEeUO4U/B+U7lGDqWKQfuKU2TKPTaCFy
	CEGTCk9H/jIUFHZ1QN0P30mbcgxMcM7X46qW1gIfjQnM4fAVkBKFHjC2IBFLyGBG4ZrXO7F0F7rB3
	C4QiScO2/oGwl7SpQwbPlb+BXHkKI98FiAzO5ypBfL0+GdMPaFv0lvPQAztTCmDsh1YDAcEDctWP5
	NhzRhKJ507fW979Y7EIc29zVinNZRYyMQZG9kUXKeyDwUaMogNz9Ko1vth6RgLaOLC5eltiVejJQ/
	HW9CqPT2t/gQOJgvvR8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imTMN-0003GL-64; Wed, 01 Jan 2020 02:03:43 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imTMF-0003FQ-35
 for openwrt-devel@lists.openwrt.org; Wed, 01 Jan 2020 02:03:36 +0000
Received: by mail-pj1-x1043.google.com with SMTP id bg7so1766877pjb.5
 for <openwrt-devel@lists.openwrt.org>; Tue, 31 Dec 2019 18:03:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bC8st7XOAI1aWL7SXTN6MYG0XTi2jblG7aCqu8lvYXw=;
 b=UCfFYt12lHzMsnrJ5J2UP8eKg6yVTUc2UDcfAIqqd9B5vCS6LpxcW3ZEuWlspQ0bIh
 UwOSoxSS0oKZPORT3SKLjeDConSvvKdCumsVzFG8KTRAutBaWvOEFOrtVZ0utveSR9AT
 +v9rEYvlvkJrMfmKF5zSKCXoATUlfgsdjEWGFNgcnBOdx+Ub3CZj/StZZItK516EdAw1
 NC8aBabevmHepWkGwQs6ADgxqrjKWdtvEQ9rCRB0jU/GcJbeYeD6pLWXD0QD/7AXE042
 TEC4Og4tP0dut5vL0piAhmAc6AlUX9gFj5oG4/jkg2T88uMNIhMPl9oF27U1R8dcfnsZ
 cRpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bC8st7XOAI1aWL7SXTN6MYG0XTi2jblG7aCqu8lvYXw=;
 b=cMMrx22VskHNkqlf6BsujvCt3qPqunD5ttu+qeniDQGYfjGjk+HWvR8XK1nelGexUs
 lwqXSoxRJRpq7B/ebPaOz8HE1QnuxbXaj6EZmpmT419qpP0yemKNbgiG2boT6n5bZvoh
 eD22hte1golHJzat8AmCs6lcaCuRyslPSHj9GcJJCRoG0mym1mguG7hzdRmGL+ga/Uhm
 /vLD5czjZsQtcD9w4yElbCo23fuFmJJDNcnIANT6AMgn4+XuJe+DF7uDlNGRreaia7sK
 Q6iKJrBkt0hI54GILhr+AoV9QQGW04JxPefW8waY7ARSioorkwhThN5Q+i4JmSGD91u0
 2TEQ==
X-Gm-Message-State: APjAAAUvP2AcB8Csq1cp68XyCWdZmx8uLoIDImzpcJXveXO3y8dbBs2N
 k0L+IjqMEhA04wvaCAcrZYz7uEGHE6w=
X-Google-Smtp-Source: APXvYqwYhfUTfQszCZqpSkpySiob3vaZlNo8lgawkaq9Bx6IpZgPwmTOq1CPkMPkFFsvQcoBMMlgyg==
X-Received: by 2002:a17:90a:3763:: with SMTP id
 u90mr10374443pjb.107.1577844213708; 
 Tue, 31 Dec 2019 18:03:33 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id v4sm42017254pfn.181.2019.12.31.18.03.33
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Dec 2019 18:03:33 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 31 Dec 2019 18:03:31 -0800
Message-Id: <20200101020331.21280-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_180335_136165_85C5A577 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] scripts/env: use command -v instead of which
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

Simpler and built in to the shell.

Found with shellcheck.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 scripts/env | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/env b/scripts/env
index 84166ae5fe..69b63895b4 100755
--- a/scripts/env
+++ b/scripts/env
@@ -57,7 +57,7 @@ env_init() {
 	if [ -z "$CREATE" ]; then
 		[ -d "$ENVDIR" ] || exit 0
 	fi
-	[ -x "$(which git 2>/dev/null)" ] || error "Git is not installed"
+	command -v git || error "Git is not installed"
 	mkdir -p "$ENVDIR" || error "Failed to create the environment directory"
 	cd "$ENVDIR" || error "Failed to switch to the environment directory"
 	[ -d .git ] || { 
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
