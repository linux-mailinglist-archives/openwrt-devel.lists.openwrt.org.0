Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5355A12E0F4
	for <lists+openwrt-devel@lfdr.de>; Thu,  2 Jan 2020 00:02:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=n7CMRklegOMmO3UzmM6sIh8oMmyKFaYFHGAJSIyQKDo=; b=FjTN+OO35FZd6CjmP8XqOuP5m9
	427X0nIQlQtArpWcCEFjDBIqIioVOlqBGyI8y478nvR5U/se62at2ibh215bLmboL1RHE8Dxb4gXp
	H2js+kyXCOJiR3Nn/7Ia5LgFj2PRY1Ak0oijTeKKgC8pKDTPzFmMy2/LFdZlehwA3PLHcMgksViFT
	8MHYPFuTvfpRUTDkAndJUhR4FjbwgXAXcvmqciihZOnG7zzcxxsNuyMryxc/5+lF0lkM0WdtlnO/T
	ghBFxH2zm//G0a27oudw9OWACrwZfmmED8E6P5MbofFWJ49bAztJd1VsI7zone1gVjON/6XFsMNb4
	3TyhwmSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imn0J-0006tn-BV; Wed, 01 Jan 2020 23:02:15 +0000
Received: from mail-pj1-x1029.google.com ([2607:f8b0:4864:20::1029])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1immzx-0006ir-8h
 for openwrt-devel@lists.openwrt.org; Wed, 01 Jan 2020 23:01:54 +0000
Received: by mail-pj1-x1029.google.com with SMTP id u63so1503277pjb.0
 for <openwrt-devel@lists.openwrt.org>; Wed, 01 Jan 2020 15:01:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=bUYYWXcWKCYUdDhWVGG3kQ4GcQ2VQKswibUeR0a8Z20=;
 b=raaHXCXM6UHuAvFPtnPcATeLTT5Dp1pq3N+FwgAbMqIvOeGLx/WdI/gxG0ORUyZjwH
 TyrWu7ovm5D0/4/l1dsj/oUoTtUB7eVHdNvJKoozDqGB4QW40L30AWm1hGJZiK/Nv2lZ
 lKfh9ZBxlpC2xARVhAPpjzPxZnS3Cs+t2WQBZ85+pn5wiVEXQKnPA6imuNE/8zpKR8fP
 9hFEGbcmm2BDI3szVgOIQT/DEsgPi2Z+m9W7sdC2sJFJ3RWNj+I3gbIU/P7ODZGGdnWd
 Mi9HaYpDPuo+XDk5WEY1X6gUkPS8AJBS7Y7a49JVfekFQIrUWM7lMNV7Z+6dJ6DUYa2p
 lU3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bUYYWXcWKCYUdDhWVGG3kQ4GcQ2VQKswibUeR0a8Z20=;
 b=E/sA2Sz2yExBLMTvFhQOV4OzKi0qJYMzPjlsyIzYdpWdQbb+R4L0s7XqYojcwac/jc
 c/H8iE03H/agvW+enERz6y7z542iXE41HtyVBRAHtaOW7dUf1VKj8XVor2VSKOHVtbfj
 5XqFNpPs9ojkfdcurJAFax+BnEh22Mq+QjugpRg0FaW+DjTJ/roaSODnTRXiYx5VWXpC
 pXF1Xkyy0dh+6oq4ylbDLVPffLFx4qJsyn7gGGyrqhotM9w6SVfLSRF7KMNrh9b5YZd5
 wG/Ol0bG29uuXsraAgKrZD553QYa+5p4IX63eCAVM2+cUCAOedwHxxfM4IDpPofATPEo
 EL9w==
X-Gm-Message-State: APjAAAX8cRIIhnsu11Nx3R9aNOsubOVqVdiq5bBOBGrFJk5HMcsP1k1R
 KSSns/eHusqQWuWyl+JYgzpOTsnK01w=
X-Google-Smtp-Source: APXvYqxkQaR+Yn9dIIljGbyVjhUlI2+Tb4OWu889biv8o2gUrxeDLZCGie4TGOIb4Vkcvy2Ic8/TAw==
X-Received: by 2002:a17:902:fe8b:: with SMTP id
 x11mr74125991plm.83.1577919712089; 
 Wed, 01 Jan 2020 15:01:52 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id e12sm8512067pjs.3.2020.01.01.15.01.51
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Jan 2020 15:01:51 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  1 Jan 2020 15:01:48 -0800
Message-Id: <20200101230148.25053-2-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200101230148.25053-1-rosenp@gmail.com>
References: <20200101230148.25053-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_150153_303458_34A5E26C 
X-CRM114-Status: UNSURE (   8.60  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCHv2 2/2] scripts/gen_image_generic.sh: use
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
 v2: Properly set /bin/sh
 scripts/gen_image_generic.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/gen_image_generic.sh b/scripts/gen_image_generic.sh
index 814d81d014..230a9ae7d8 100755
--- a/scripts/gen_image_generic.sh
+++ b/scripts/gen_image_generic.sh
@@ -1,4 +1,4 @@
-#!/usr/bin/env bash
+#!/bin/sh
 # Copyright (C) 2006-2012 OpenWrt.org
 set -e -x
 if [ $# -ne 5 ] || [ $# -ne 6 ]; then
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
