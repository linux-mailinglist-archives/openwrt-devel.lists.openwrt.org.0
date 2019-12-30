Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 721E512CC94
	for <lists+openwrt-devel@lfdr.de>; Mon, 30 Dec 2019 06:09:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UgxSkvjjeJAQlOvtpchuBGAgHbHQQUX5KsH1dCaYEw8=; b=u/8lTPPc2IA8F7BPVrRaMC+/ep
	SIUISTZOGb5FADlOtIURwXew9x6C+c2QffJLz29g+XPeEie6HQfU/XzMX4DPP0qQIGl8+pHodGjbh
	32R1fp/7464k5YDOR/6KkDQiRSUwS7jzbQdHlCy3W2IWQRA+wUuNrvYJkMPToU96lqFNR67Qk9juL
	pnKEw4uiGfIHJ8BI3brqCPh5jt+5ewV8G5ZVzFBD5X1fIwCyjbb1aoA4gqG+nxZNcaVkCGzqSW4rY
	uGrKdGowOaK+GfE/LHqxzYhSXAoxeRmuvvpzeEJzCxrbIqX/Qhmy94kM324Z1M1atsXXgpTg1gBwE
	L8PjRYTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilnIV-0007X5-Ij; Mon, 30 Dec 2019 05:08:55 +0000
Received: from mail-pj1-x1034.google.com ([2607:f8b0:4864:20::1034])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilnHg-0006dI-5T
 for openwrt-devel@lists.openwrt.org; Mon, 30 Dec 2019 05:08:05 +0000
Received: by mail-pj1-x1034.google.com with SMTP id r67so7344119pjb.0
 for <openwrt-devel@lists.openwrt.org>; Sun, 29 Dec 2019 21:08:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=P4HjwObfg/NeC2rgsj0gSzAvNh5ywjPSQUo85DkvVhU=;
 b=gGUkSUXWmhjDSn0ahDsAyHE0HAQKIPgooMGgwjLJlzQ/+d3l0Y+ZLqmD5Bb6NI6Axi
 sM0t8JT7INXL0kxU6gqRdDhe8ABpgq0E6pdaug32jdWrOS05LDGaRgBElDo2E5dH/m+/
 nadrY1I3PsccMDDK21Gn5Za/o9SEO2IWr//PRdVQO85lT58Enh/TlEuTA2ljirkCAIlm
 uIvZ8/hC0lte21WfJ81hDoMDRUvT/plvAfRvXQXdmM5teKKZoy6h4bmsIVS0WuPMEmmX
 CtLCiDBOgFzZUdNAi7d90rLIDI8q2FvKxTfuZdq/0Gl9omZylf0DOsF73bqkxJyDWVAl
 Xp0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=P4HjwObfg/NeC2rgsj0gSzAvNh5ywjPSQUo85DkvVhU=;
 b=dTpZX+h+hvywLwMqyQ0wdozlaUoUpR2unLxB5fKnlz6RaOnzEwnUHSHrWd6ygEvC+u
 3SV/5muo1zJYmd5+JKxMCd+2YdZAucUFdmFKQx3S9ynWcgaiRcmcgmuOzZ2obOaPrcGn
 TlsS/ph2DO1/wfKtfOEPZJEaA04A0TJNSHiLxc8syvvUvSksEwEVVQwS1wjnLYCgxeo8
 P9H+nSyEGL1erFuBUeRlex1LltbLUE2uh8TiTCyyvXJdqrc5/z3VbsRvouEO0NIXf2sh
 es2H60L3kn3gBYt3hQOaaoMVc4objBRTGkCkA5LlOFc7MAbHHse7TV50HoZqeCkqifB4
 KSFA==
X-Gm-Message-State: APjAAAWG4Olrw32MoBroMudN/+p0awt/CNsxWnTB5iVAq1SpT7RpgLW2
 5BcwYufA36HBXvVC3ggKqUt3c9IZ8wk=
X-Google-Smtp-Source: APXvYqxjGQRyc2VN7SFqsvjBrl+IV8wJirKvxTIT4+iW4qeDjI3IVbXp4lIozceahz45IsD3eb8oww==
X-Received: by 2002:a17:90a:9bc3:: with SMTP id
 b3mr43516399pjw.64.1577682483240; 
 Sun, 29 Dec 2019 21:08:03 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id d27sm45505871pgm.53.2019.12.29.21.08.02
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 29 Dec 2019 21:08:02 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 29 Dec 2019 21:07:56 -0800
Message-Id: <20191230050756.3675-4-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191230050756.3675-1-rosenp@gmail.com>
References: <20191230050756.3675-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_210804_205635_80F18446 
X-CRM114-Status: UNSURE (   8.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCHv2 4/4] scripts/gen_image_generic.sh: use
 /bin/sh
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

This has nothing bash specific.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 scripts/gen_image_generic.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/gen_image_generic.sh b/scripts/gen_image_generic.sh
index 0832bf91de..6a8065e15a 100755
--- a/scripts/gen_image_generic.sh
+++ b/scripts/gen_image_generic.sh
@@ -1,4 +1,4 @@
-#!/usr/bin/env bash
+#!/bin/sh
 # Copyright (C) 2006-2012 OpenWrt.org
 set -e -x
 if [ $# -ge 5 ] || [ $# -le 6 ]; then
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
