Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B920A2E28D
	for <lists+openwrt-devel@lfdr.de>; Wed, 29 May 2019 18:51:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uwI9bhMRRYUHjJE0WQ/VAsOtS44YnNtjz5PxXjDw4t0=; b=q2V9/ExpVfhjJ/
	vkdBRfLoVMsCzRpUMHZ2NfYPC8IySD9wcSSfRMBgSQgFUnziMne8ASYxKXGSoeLhqPdTbycc8ngpv
	a7QdnPc9xc9lnPLBubBUcu2iwVv18syeoc7aAyUTD4LjX4t9XsYqZXTsQgZR/6gNd9Za9cFlYC9wt
	lo1Mk5q4g4r1h0azdG97oAmEXJaZ+xsPGidvlOLIxXaioK55n6GbJDVlqfuv9GuUvuxl+ScexPw70
	PDT+ChniYLs/b+TPeLnsj0ZLpNApjtJlI3EpQIvxx6E4VY6IZjqppEDtrk+WUjY7d2Ddq1Z5WOY0O
	Fd4Cycd0B1NiOYUuufLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW1nc-00063I-2K; Wed, 29 May 2019 16:51:36 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW1nU-00062j-P4
 for openwrt-devel@lists.openwrt.org; Wed, 29 May 2019 16:51:30 +0000
Received: by mail-ed1-x530.google.com with SMTP id n17so4833133edb.0
 for <openwrt-devel@lists.openwrt.org>; Wed, 29 May 2019 09:51:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=38uxOSKkyo7rpHfBESod9NfwBeQN5cTZnvqFnbzrrBg=;
 b=SU4FKnPCT81XvrqwWPOHIMFn4NUty7uX1glpMS83HtizQOl3YttLKc7b7xULJnWJ3W
 0JjUOFoGYDakQs5NH231pxCiBaseIJdap03C+qRQ8Lk00LAD37nNG+ztG9VlMIDKWnJL
 a5e5jo0JUmShF01dRQrnyUYDyEMb+BZqbKnjvWPrMlHZ1WLfA/M1wocEWrbeTT7+02kH
 U3c2kw33dBvRtKqhtd7+oppTKyD4ljK74BKftnSqxxtvQPEYA8wU16p7Rag1i1bZBJUL
 hYnB7X/Q7Esr72Y4YWS7p2pkKm76/wWQOq6CFDDmr9eI3djDRxJpvabWpXqb/ZS84yQo
 2hrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=38uxOSKkyo7rpHfBESod9NfwBeQN5cTZnvqFnbzrrBg=;
 b=M51oYRtVfw5YajfIwdFiEJIRSV5qqnhP16rpgL5214s0ZSo0Ugs4tailLOU3+T26lX
 bFvj1sl7ke8gdZ3qAyQ1pm/fnYMBmLDjPeL9D6O4C/Nx4xyJDa5fYb6eV2WeXDuofQv9
 qQNsXm1Shgs+bwsQ/iRdK+5KHkUdxuqu4qHZxI08yx2qyeb7fw4j8PdvSqE9UgT9flo+
 wcVpkUrmmT+CeY5cMQ3TUOoIMyignmnHfueLIV+pMZW+ULinci6/ehdB0x9FLFpCjXSm
 UOq8H2hcdahlPgUB0fxDwWBO9dFn909cQ8pQM3Mv6U95C0njyi6PNGeIKK++33Ep2yiU
 Wvjw==
X-Gm-Message-State: APjAAAWfQgoYm9I7h0efAYdUlY3g/S/srpbdQEotBwxpQpNYFKP4KlXr
 LuuO/7+8gkMIBBYlEnm2UXRQ/aFx
X-Google-Smtp-Source: APXvYqyatWTbZcIq+7tltwmgoUluOgwWLYkXiNBGTBEO12ev2yfo0Twi+0MV7TytwSmr9IPYMFxlcQ==
X-Received: by 2002:a17:906:329a:: with SMTP id
 26mr55357651ejw.9.1559148684357; 
 Wed, 29 May 2019 09:51:24 -0700 (PDT)
Received: from dedeckeh-X556UV.lan
 (ptr-fvgfo5u9mqywjziyuc4.18120a2.ip6.access.telenet.be.
 [2a02:1812:1109:7d00:f813:5f79:8aea:bc14])
 by smtp.gmail.com with ESMTPSA id 11sm10391ejv.64.2019.05.29.09.51.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 29 May 2019 09:51:23 -0700 (PDT)
From: Hans Dedecker <dedeckeh@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 29 May 2019 18:51:19 +0200
Message-Id: <20190529165120.14766-1-dedeckeh@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_095128_816018_0AAE87EC 
X-CRM114-Status: UNSURE (   9.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:530 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dedeckeh[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 1/2] ppp: update to version
 2.4.7.git-2019-05-25
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
Cc: Hans Dedecker <dedeckeh@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

8e77984 rp-pppoe plugin: Add options to tune discovery timeout and number of attempts

Signed-off-by: Hans Dedecker <dedeckeh@gmail.com>
---
 package/network/services/ppp/Makefile | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/package/network/services/ppp/Makefile b/package/network/services/ppp/Makefile
index d10f8f4832..3b36444289 100644
--- a/package/network/services/ppp/Makefile
+++ b/package/network/services/ppp/Makefile
@@ -13,9 +13,9 @@ PKG_RELEASE:=1
 
 PKG_SOURCE_PROTO:=git
 PKG_SOURCE_URL:=https://github.com/paulusmack/ppp
-PKG_SOURCE_DATE:=2019-05-18
-PKG_SOURCE_VERSION:=c9d9dbfb8459b528ab56bd1cf0c41460801bbfdf
-PKG_MIRROR_HASH:=9bd92ae9d32c6cee79e5fa55fd26e41c8c889461e3934e4b7519e3acdb91b2f1
+PKG_SOURCE_DATE:=2019-05-25
+PKG_SOURCE_VERSION:=8e77984ac5d7acbe68b2b2f590abd17564c9730d
+PKG_MIRROR_HASH:=7e7e74f0261db2c45770d79c6114e768382e85bfeb3f5a83179f270d6c15006d
 PKG_MAINTAINER:=Felix Fietkau <nbd@nbd.name>
 PKG_LICENSE:=BSD-4-Clause
 PKG_CPE_ID:=cpe:/a:samba:ppp
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
