Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D6C4F73AC
	for <lists+openwrt-devel@lfdr.de>; Mon, 11 Nov 2019 13:15:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:References:In-Reply-To:Date:To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oQvNSbL6MwlxNZNMZOIZpg96y1qKXYxqbJi3db+GcfE=; b=JJEgp1f0ZYxPPIFJGm7+ms8tu
	BOIqgSOYZpRRlpXglRagC1GcUSmzpVM+YacNV6YWQDwyldrZog4vNx4CHo7kN4Tt0qNdKR6NHUQdT
	d/6cM05DWIhc0lsPm8F0SS3KtIXxNzEIrVa9Aqo8mnpUKvAsYvw02EigOmrXB0Zgiiu/xT+VPTeP/
	IIvhWXcJ9Y8aZXgQhFKy5zW2kToRT879TGE4DMwRSO1N1ee62FvazWMF+sV4tDhy3lMEDRv+1iTzf
	BxLQ29IMFHrNKvunjRguM2qcuPJp6cogh8wN2VDYZ9scXLz2o2S6FjEniEgypMda8e03b9txqRQ95
	mjmGXGVWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU8bG-0004Dt-CB; Mon, 11 Nov 2019 12:15:18 +0000
To: openwrt-devel@lists.openwrt.org
Date: Mon, 11 Nov 2019 12:13:06 +0000
In-Reply-To: <20191111121306.28350-1-kmcopper@danwin1210.me>
References: <20191111121306.28350-1-kmcopper@danwin1210.me>
MIME-Version: 1.0
Message-ID: <mailman.10282.1573474465.2486.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: Kyle Copperfield via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: Kyle Copperfield <kmcopper@danwin1210.me>
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: Kyle Copperfield <kmcopper@danwin1210.me>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: [OpenWrt-Devel] [PATCH 2/2] openssh: update to 8.1p1
Content-Type: multipart/mixed; boundary="===============7471361403399029466=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============7471361403399029466==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============7471361403399029466==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from danwin1210.me ([2a01:4f8:c010:d56::1])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU8aK-0003cf-MO
	for openwrt-devel@lists.openwrt.org; Mon, 11 Nov 2019 12:14:22 +0000
Received: from localhost (unknown [10.8.3.3])
	by danwin1210.me (Postfix) with ESMTPA id D42B71F41E
	for <openwrt-devel@lists.openwrt.org>; Mon, 11 Nov 2019 12:14:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=danwin1210.me;
	s=mail; t=1573474459;
	bh=CGb0AvH3IxLAU0fEhXwhQtcfixqDQjCUZDZleFRjId8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=H+BoSUPkn3LmTOMyaxUlsm0AOza7ZPYKcg5EjbsHWrMJimznjZh0X8r4YvjML0iR/
	 ihl7B7QMXrmRB9wAyoCSsFWGPh3TPhp55tDt5ryBUvhsVY+KhQYEPDWpmkCjl+Mtmm
	 yVF7BfjhuYryDM58qDoDRqUwRtkQqoy4Jul0CMwTHFN/aqTprFRPFSJGWGSKimdcQw
	 sqJuuatbYoD8vHc6l7k3S0WHyClFG2+qmaJ+g3wr02xxnRabuCtbdWvuE+6r+glinw
	 kQ0uadrer7OHUjnmzsySq4EOOnqsFoK+pHupdAdCjUw8sxgKOkCW3drMZfAWd20zDu
	 gKmBw6Tez4Hw8mjWzSzpCrxSdSivp8OO9uJdU/7DkQy7ZG59r3O7e2PIAoEu4zgikv
	 1qAxzbQbYh1A0lfhPBIPLaAzZs8U28HsJRtb3QXpzwZhZMeZKefx2utJ7g6SaVT7JE
	 Habpzaiel1vKnL0xZUqJ0lvnyXqPSgbw8w/kTfAD/JFpGZGOm5Z+RUKZZ9+F8F5dTG
	 V4RZc5/IwsHzayGJECspB/Jd8XS/gkRAUHEU+cv3V9J+zU5K1fHCbnEsh6tbvGs7c7
	 p0Guf3RzX7awAEcUTBuXlh63yb55URXAAB6J/jOAcEcmMzR19gE0vPZoesHtihxx9p
	 nTqPC+iTNhxncvCBNPGPQETM=
Received: from danwin1210.me (localhost [127.0.0.1])
	by localhost (Postfix) with ESMTP id 9A2D4103622
	for <openwrt-devel@lists.openwrt.org>; Mon, 11 Nov 2019 12:14:17 +0000 (UTC)
From: Kyle Copperfield <kmcopper@danwin1210.me>
X-OPENPGPKEY: Message passed unmodified
To: openwrt-devel@lists.openwrt.org
Cc: Kyle Copperfield <kmcopper@danwin1210.me>
Subject: [OpenWrt-Devel] [PATCH 2/2] openssh: update to 8.1p1
Date: Mon, 11 Nov 2019 12:13:06 +0000
Message-Id: <20191111121306.28350-2-kmcopper@danwin1210.me>
In-Reply-To: <20191111121306.28350-1-kmcopper@danwin1210.me>
References: <20191111121306.28350-1-kmcopper@danwin1210.me>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.101.4 at proxy
X-Virus-Status: Clean
X-Spam-Status: No, score=0.0 required=2.0 tests=none autolearn=ham
	autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on proxy
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_041420_945986_4C921897 
X-CRM114-Status: UNSURE (   6.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
                             medium trust
                             [2a01:4f8:c010:d56:0:0:0:1 listed in]
                             [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain

Signed-off-by: Kyle Copperfield <kmcopper@danwin1210.me>
---
 net/openssh/Makefile | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/net/openssh/Makefile b/net/openssh/Makefile
index 3273180af..dda3a0398 100644
--- a/net/openssh/Makefile
+++ b/net/openssh/Makefile
@@ -8,14 +8,14 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=openssh
-PKG_VERSION:=8.0p1
-PKG_RELEASE:=2
+PKG_VERSION:=8.1p1
+PKG_RELEASE:=1
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
 PKG_SOURCE_URL:=https://ftp.openbsd.org/pub/OpenBSD/OpenSSH/portable/ \
 		https://ftp.spline.de/pub/OpenBSD/OpenSSH/portable/ \
 		https://anorien.csc.warwick.ac.uk/pub/OpenBSD/OpenSSH/portable/
-PKG_HASH:=bd943879e69498e8031eb6b7f44d08cdc37d59a7ab689aa0b437320c3481fd68
+PKG_HASH:=02f5dbef3835d0753556f973cd57b4c19b6b1f6cd24c03445e23ac77ca1b93ff
 
 PKG_LICENSE:=BSD ISC
 PKG_LICENSE_FILES:=LICENCE
-- 
2.24.0



--===============7471361403399029466==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7471361403399029466==--
