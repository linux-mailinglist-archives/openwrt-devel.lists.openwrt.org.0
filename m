Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF2DCFFBCD
	for <lists+openwrt-devel@lfdr.de>; Sun, 17 Nov 2019 22:42:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1sl5oj1MTunq+srUHyytR0tcTHMIfOFBM0QwoBcqdsU=; b=sqFdPjTR8iL649
	Arrkh870vWq3eKDysVVVQ3M2cAxz0yyrhDCtQyBJiMG4zm+HxMGj8pdHtx0Rbx0hiZH9Gz/CZzLlH
	8+/hPHdgfVXqFIMHYs+T3YWofE9sduhG2K8UU2RN6Vsm46Vp1Mkm7R5pd64kqkup5jXk/Iumhu+ng
	kRRUp2ZvylcSiYA4gi15lm1/nqG+JgFagBMWzSw0y+j3uquZYMJsaOK3AjFBMmVgjJWWoEqlAiiYh
	o1cOiqpjZYPrJkmel4sPSpfUazY78qLZflZL5o6lwDMwFjoYwPHhkEr0Sq3++ldhh3NXUEl3SdYRP
	ci9dvomzN4UbNlPmdUQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWSJH-000334-FI; Sun, 17 Nov 2019 21:42:19 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWSJ6-00032k-PL
 for openwrt-devel@lists.openwrt.org; Sun, 17 Nov 2019 21:42:10 +0000
Received: by mail-pj1-x1041.google.com with SMTP id s8so882444pji.2
 for <openwrt-devel@lists.openwrt.org>; Sun, 17 Nov 2019 13:42:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GFdtFeUgumSDZizqUnmQUGJ/vptjedbyi2eX0/bNh6s=;
 b=pFzpbRobXltJ8ewrUleJLVyzT2vsdRjD1c/Ze/oePg2fGq57BgxPQo46+lAXjiqKkY
 XEvcfJDdz0ymVyG6yb6MqhGfinfH1/J3SDGA7khdqsTKtmKYt8TNmZFR5YNrkKjGz6eP
 eCwVZcPGWLmjRc368Jf4LfrWDbpgh/oylVkzYYiWR171GlImbH914BLHzVjPrO4XfYyq
 75tyirzKTj/AQJcra208GDTOqOjVSZdQ9Y5xKVtUAaCX3MUx/nmjGKKOkr+z56lfogY0
 GLFCnpX12zme0YV0dt/dLMoKoWsfRiuLLq6L7o7eZPJzhpJpWmRcVaU4nfrvuxKnPrFu
 hNcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GFdtFeUgumSDZizqUnmQUGJ/vptjedbyi2eX0/bNh6s=;
 b=G6nfm5EmnKCndXpseV0r6nPvGJGlf0f2V8zLJNeHXhEf/YnQ6QV69TUSyBYbt++zVN
 rMOYAlhWgaYLrQpn5ywKExgHLBcjaJv0W7kf8qlOLcXJx/GQOlo69NJQfNoWHTH1Gu3D
 kuaLSEbQQYa0gAiiFfWTspqRH9F6H4uwGOy0Wd2rxKGL/ajVcVdjIOw+QI2I33RsL8x9
 qG1HoUNtx7XSLCBQ2WkZFl28PX6HbOz3IswB3di/PfaOdx+SHux7pL6nauQySo2nKL2b
 vJhywEcZGmnVxnZYQ6V7/gtZstnUahzTQ/p8DEp+kPdpL9yrSSWVA9YlWdxjHELXp32S
 ycPw==
X-Gm-Message-State: APjAAAWwwqY/J0h/YDxgFQOtqWeC83P9FJZ6Dgo778UjQQd0j0a2P8d0
 /s+UIRZ/OJ6Dmqu7X2i6thWT3qttLhw=
X-Google-Smtp-Source: APXvYqx8A+/C+MOe1xqiyUMaAVrbJV84k8tHkIEBug8+3R+EJhpC4NwdIZP5mU0P8TwHJ2RoBPV8Ug==
X-Received: by 2002:a17:90b:14d:: with SMTP id
 em13mr34514543pjb.20.1574026926103; 
 Sun, 17 Nov 2019 13:42:06 -0800 (PST)
Received: from localhost.localdomain (astound-69-42-2-23.ca.astound.net.
 [69.42.2.23])
 by smtp.gmail.com with ESMTPSA id 83sm17438084pgh.86.2019.11.17.13.42.05
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 17 Nov 2019 13:42:05 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 17 Nov 2019 13:42:04 -0800
Message-Id: <20191117214204.293611-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_134208_852630_4AE5171D 
X-CRM114-Status: UNSURE (   7.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] cmake: Install host packages to lib instead
 of lib64
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

Several CMake packages such as log4cplus and protobuf(-c) install to
lib64 instead of lib on some hosts. This completely breaks rpath linking.
Override it globally to avoid fixing each package individually.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 include/cmake.mk | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/cmake.mk b/include/cmake.mk
index a304ab3f70..2726b83a1e 100644
--- a/include/cmake.mk
+++ b/include/cmake.mk
@@ -103,6 +103,7 @@ define Host/Configure/Default
 			-DCMAKE_INSTALL_PREFIX=$(HOST_BUILD_PREFIX) \
 			-DCMAKE_PREFIX_PATH=$(HOST_BUILD_PREFIX) \
 			-DCMAKE_SKIP_RPATH=TRUE  \
+			-DCMAKE_INSTALL_LIBDIR=lib \
 			$(CMAKE_HOST_OPTIONS) \
 		$(HOST_CMAKE_SOURCE_DIR) \
 	)
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
