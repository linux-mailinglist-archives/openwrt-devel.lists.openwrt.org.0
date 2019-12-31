Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ED3912D5C4
	for <lists+openwrt-devel@lfdr.de>; Tue, 31 Dec 2019 03:22:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hGvIBZ/FwYAnzAGwjk7NFqGpnLu+NsqLi2AEWL6Tp7M=; b=kG4ss9XBlmehxVhcERi5p4gUbi
	DxgGc1ExTszx9mFF4kFZQuSoZ7YPOEtj7Ncs7UhZfh420/b0Tu5YTT0H0ljq5qUBvgVc1lz4LMtdy
	Z/7XNfiBuSMI4f/JX0s5aCeUSZJz3ePhxs5csSQEX2Cin1UvCgnhliIrzO8xz5AJEV32j4Y4Yf2Op
	aSe54yr9sH/KOliKo3DNaoaiWC7huBwJyXti4xkLUyoHIFSlxnxHFPJqJy4rr1LMFbCwptekiHKqr
	GEsBTbGP12D91z6kJQI0TeKqPoz7azyuTaiKLI3hOvOvYCl145gP/2L0+zhcN2biyWkpJfHuckxD6
	pMBUsqow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1im7B8-0006xW-KU; Tue, 31 Dec 2019 02:22:38 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1im7AK-000657-0D
 for openwrt-devel@lists.openwrt.org; Tue, 31 Dec 2019 02:21:49 +0000
Received: by mail-pl1-x62d.google.com with SMTP id x17so15359009pln.1
 for <openwrt-devel@lists.openwrt.org>; Mon, 30 Dec 2019 18:21:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=0iTjjrtmcLbGL72uRDOjaNp+YiZSkx5AA7AaWar483g=;
 b=OeinYLw4z0sTJXXOnlJHGPt0E6GTfAuZVcAVTfxXsrATO0jR8ax3RYah7pLzkNZb1p
 Er8UjYbseVpEKA+yGFdVivtM1PcGTkOvfABWXP7GstCIUEPY1TAYPqLR/1j7+BBjViXH
 ZcvqRyTaMbAL3oGCanJD8+CDTZHOs68Fs4WWaYKeOLyXqZBxTbe9nAc8JhfPxASKoJiu
 +DZlZsI9Ktw43Zt3A8W/RZUADWYPheSZugQxY9Cz9zNVw/Yxjp8oralXLkQ+Ik2cSLrP
 V9L0cI4TdfV9QK4PRUnBpe3lQhMCrjjFSwx4nP0g27OgApfL//ivgZbnlS5BPqXWnG5G
 86Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0iTjjrtmcLbGL72uRDOjaNp+YiZSkx5AA7AaWar483g=;
 b=X83OinNL+SQGjkFjbA++8CepgOfSeI9S5hY4FfjwqY23t/Wh5tIDmMRb25qIAU/Uo5
 tshX15WuemWFMGYFiKJaLn6lXhxiw1jU0d2XtJ6zs0gTbStzL96lJiMefrWf8zEEOX4j
 hNZ5J1hQvtUNfoU8Zl3StN/qpsiyCASFIzQmWyXsNX72ceFnx8birxe7BsEETcz0YqB0
 XnSijwaz5KZuBJ61tEMpAyqHX/qg80OXH8XFgpR5MobETxauLmDKp1xvUJe16vgAGT4N
 bV+GkyrT0/pK+ZQ5Lq1W7KRDa+XmCIkaY4o/ItXwFsERa3YjHcatz5jximRsiuEqglt+
 r/Qg==
X-Gm-Message-State: APjAAAUXzMG9vcnW9KTasES0z0bp1oJrACGNH3qdVZOFrctVxKoGRnjk
 qh2t40CzSuuxe6DamHj+QvmGFQeE2Zg=
X-Google-Smtp-Source: APXvYqx3NhVqoQtgv6/roaU7f6E5Pbz0ehXadli9YzTDi5nexZNRfLFiZko30sVElnVyxboUQBtOZg==
X-Received: by 2002:a17:90a:c214:: with SMTP id
 e20mr3180066pjt.98.1577758907040; 
 Mon, 30 Dec 2019 18:21:47 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id k1sm908587pjl.21.2019.12.30.18.21.46
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Dec 2019 18:21:46 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 30 Dec 2019 18:21:40 -0800
Message-Id: <20191231022140.48222-5-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191231022140.48222-1-rosenp@gmail.com>
References: <20191231022140.48222-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_182148_072300_28882D64 
X-CRM114-Status: UNSURE (   8.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:62d listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 5/5] scripts/mkits.sh: Switch from bash to sh
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

This no longer needs bash.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 scripts/mkits.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/mkits.sh b/scripts/mkits.sh
index c09e537dbd..62cfc21c6b 100755
--- a/scripts/mkits.sh
+++ b/scripts/mkits.sh
@@ -1,4 +1,4 @@
-#!/usr/bin/env bash
+#!/bin/sh
 #
 # Licensed under the terms of the GNU GPL License version 2 or later.
 #
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
