Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 684266C434
	for <lists+openwrt-devel@lfdr.de>; Thu, 18 Jul 2019 03:26:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sMcULdNR1AVyEweWDRJynZMswAHUMmDcbnGYdedCx58=; b=b7ExSUvqaNoG4/
	RSWaA1Nw+OBVCludOYqLV+tJ7LZvOwmTHwiKska1S4lE9o3W8eACy0edGSVUMUa6InSj2X2PMerYK
	ZdbdwJweUYrgu4jLezpM0hPfTtKtrIJFP56RU8VELCAvVhG2l0hTM56EyXpMFAkbC3jOKEG2AMUt4
	INV486M4/rLT1pe/Lf79Ndk4hTSMH0VOUCYBS6Z5lqSCvg6jPmWP857+otk0RkGjQoMWcP9pyRHpC
	BivZuFJLoPUzvyWcSGU5dw4GLfp9C6+s2vMoki3VoqJ3pVvs7/qMy69q8UxRXnIhmRADnz320hsaT
	w3F1HC5t9y4BhWGnbaAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnvBJ-0001um-Dw; Thu, 18 Jul 2019 01:26:01 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnvB9-0001uL-Ca
 for openwrt-devel@lists.openwrt.org; Thu, 18 Jul 2019 01:25:52 +0000
Received: by mail-pf1-x443.google.com with SMTP id r7so11755153pfl.3
 for <openwrt-devel@lists.openwrt.org>; Wed, 17 Jul 2019 18:25:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=fcO+GhufLo1b3mak9KGHnIb8FdqpUNSsTLihxZFTr0w=;
 b=s/BsjIcshKPq97KskE3yVWDYFgEsOQsDG9LRqQxrD8qqEyE0xSczg/l4N8U9OKge2H
 RUeG1n3lVje0Qy9bjtVP21+itxUQw/8n4HyMOT3q/qEK0qhXtV0YiIKUzPim7uf2ZGo7
 OliFmvwj/KQuu1tVd5HQPE+nTTuIPSfzsmJvJBtQaaLZ1Mt32Lhj91prLizWYuRJ/mkT
 8gr26y5oCExogoYaTa3Z1vbSmeh1AyMSKFCGWANHhJAt3GqgIDLjcBOe+MMi5y87GvkM
 b9fSWNLLDRDsApn0KNMQu3IQQ0AoaKKByjtDBjujFYUsMr3P6kR5OowXs75tMIkGYlfM
 RKnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=fcO+GhufLo1b3mak9KGHnIb8FdqpUNSsTLihxZFTr0w=;
 b=FHi3INRLA3P1jZ67boKniz6i+3Ytu+GMdAK9xtq3s1QWs16227yGjYcuIuYgWzxDTD
 ryiWCvrfQveslNyBgb0503JQR3K8BaF+AZ7hd2QGakQ/HFvC2uvGiyx8SMxh+VwEg8CH
 HoJy2BjjbdmvY8YX7Yz1XUOiz7tpcUVX41n3uOTlWzYlUFCovCRstwiboyzdMnoq/WWV
 yVLcTFzGXo7/GJ9pENT1w/XFBPvvyKq3KDzSBznCWIKQqa0dvMMznY38H3Y3y899OMMn
 IwdEFHF6VZ1ZwVcOvIYLHmOSgw49Jr45U/3HBQvuOPWS+7/A7ulM2wr/B5IL+Kbr9eWj
 9IpQ==
X-Gm-Message-State: APjAAAXmfCP2zCNkIC0tAHGuvFdNPd1JObTCDYPOO4HEj7EGsE5XtoDX
 9+zaCAAk5WvNO/ognKS/dlnqz3iIgDM=
X-Google-Smtp-Source: APXvYqxGkCVHpsVDBBeZfKS4Ge9NzjcVwzhQB0J6nYqkYK8Bc3i2fdKPHMq49LJgasaxw5OASqWp+w==
X-Received: by 2002:a63:dd16:: with SMTP id t22mr12955914pgg.140.1563413149908; 
 Wed, 17 Jul 2019 18:25:49 -0700 (PDT)
Received: from localhost.localdomain (76-14-106-55.rk.wavecable.com.
 [76.14.106.55])
 by smtp.gmail.com with ESMTPSA id h70sm19310703pgc.36.2019.07.17.18.25.49
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 17 Jul 2019 18:25:49 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 17 Jul 2019 18:25:48 -0700
Message-Id: <20190718012548.17573-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_182551_429007_F1357815 
X-CRM114-Status: UNSURE (   8.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.1 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 2.3 TVD_SUBJ_WIPE_DEBT     Spam advertising a way to eliminate debt
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] toolchain: Remove powerpc64 libc restriction
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

Starting with version 1.1.15, musl supports powerpc64.

There are no known users of powerpc64 yet.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 toolchain/Config.in | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/toolchain/Config.in b/toolchain/Config.in
index 95087b7078..9ca711e29a 100644
--- a/toolchain/Config.in
+++ b/toolchain/Config.in
@@ -238,7 +238,6 @@ comment "C Library"
 choice
 	prompt "C Library implementation" if TOOLCHAINOPTS
 	default LIBC_USE_UCLIBC if arc
-	default LIBC_USE_GLIBC if powerpc64
 	default LIBC_USE_MUSL
 	help
 	  Select the C library implementation.
@@ -257,7 +256,7 @@ choice
 	config LIBC_USE_MUSL
 		select USE_MUSL
 		bool "Use musl"
-		depends on !(arc || powerpc64)
+		depends on !arc
 
 endchoice
 
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
