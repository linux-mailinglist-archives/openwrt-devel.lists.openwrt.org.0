Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9EB1107205
	for <lists+openwrt-devel@lfdr.de>; Fri, 22 Nov 2019 13:14:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:From:
	List-Post:List-Id:Message-ID:MIME-Version:References:In-Reply-To:Date:To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OX3JX2LK+7KwWg54UDHjRaCf5rvbwUEQi6lzQh1jd28=; b=YYEf5QAd9eRRMoFUzJHmL/FJx
	VXhrxKzdeFUIexdxQzM3jKHI56HAKQDDVXLPhCz9sYONRtEL0SRClXyJiNhoqnO6MtBPJZd2TGVx/
	Q7B0tzYT1QSWRYZuv2YVI8c+T74tckwW1KuCPgzDPsGrx486Heea04OMg96Fcj2Zp49Dnc692xUR1
	uP7B9JKvBqyelHR4d/vZJW39WYh3i9eUyAvz/y39hWMhtVLiyoiJRIRiKBSZCUGZBbbxsV+7M+Giv
	bNZybHBzR0v2S8zwYAsHUl4BmTuWcFfwhbqeJhDU19NyGATyIUx/BO0PGa5wGMvGcuJearw6bayYi
	q1MQBjQhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY7pS-0002FL-UI; Fri, 22 Nov 2019 12:14:26 +0000
To: openwrt-devel@lists.openwrt.org
Date: Fri, 22 Nov 2019 12:12:47 +0000
In-Reply-To: <20191122121247.58881-1-kmcopper@danwin1210.me>
References: <20191122121247.58881-1-kmcopper@danwin1210.me>
MIME-Version: 1.0
Message-ID: <mailman.13435.1574424845.2486.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: Kyle Copperfield via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: Kyle Copperfield <kmcopper@danwin1210.me>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: [OpenWrt-Devel] [PATCH RESEND packages 2/2] openssh: update to 8.1p1
Content-Type: multipart/mixed; boundary="===============4279026607257029531=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============4279026607257029531==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============4279026607257029531==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from danwin1210.me ([2a01:4f8:c010:d56::1])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY7p4-00025k-4V
	for openwrt-devel@lists.openwrt.org; Fri, 22 Nov 2019 12:14:04 +0000
Received: from localhost (unknown [10.8.3.3])
	by danwin1210.me (Postfix) with ESMTPA id 764101F647
	for <openwrt-devel@lists.openwrt.org>; Fri, 22 Nov 2019 12:13:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=danwin1210.me;
	s=mail; t=1574424832;
	bh=CGb0AvH3IxLAU0fEhXwhQtcfixqDQjCUZDZleFRjId8=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=Ad7URZ/rnck6KAUNDzqPdSO73QuK8Pb+1Ap5g7Nsk4oCo+rwGVFLvaHwyVu1oBu5c
	 Iq7ujxEPJSOq5sYwdAjdLFGkr8dHiW8TRf4o4GTcqXckdBWgcEnIcQqsNhoZiDPxgU
	 AQn2U+q3wZw6x+XlbluKZpzV09NClD16T91jPNzyBh+pmkaEQVw5BCDS6nKn3fCIYA
	 aGvw1ZuqLb7p7LLGjLYfAqbc7dIlL7m9pV2THzMF6dH04qeCeLAP6qo2nnLsFXo45O
	 c/VIoRuuw4/BxfQ4LuLYdAz8vbcDX9rtqeyPV6J8EFZULmDVDvZ1Vqj4WFkz5CitCe
	 2K3zCsPqmR4JZZu8in7fYzkWvUr6IAfMPDKcV3yuIrjYcVq8b3PewNCP9b6mCB0S28
	 alHbn7g8l/W6n7ylmTudSKI3DZA1Diqjcp1ps7yd68vK3HR6vmQLw122okx9rE8r5/
	 SEx8kNKsnktOc5izqQEfeBNPovZ9zbFAtjQLs+5alcNyE7PHXR4jcNSdWqTppyq4qA
	 E47c0JLhvIHHeCqwZNDaD+TLp+0yrtCb4zOwXHJMzQlGXBspAE+tA2bCLnRgWKHG/Y
	 Egz2gxPM4T0Hfrn2YgCCnZFvoz+KxoJfdqwZJ56xo7RCO2CeGHXsfW/RFjaFl6Q/M1
	 HGHp16ncpbfEKeNHuKH1ed98=
Received: from danwin1210.me (localhost [127.0.0.1])
	by localhost (Postfix) with ESMTP id 42F3B104892
	for <openwrt-devel@lists.openwrt.org>; Fri, 22 Nov 2019 12:13:51 +0000 (UTC)
From: Kyle Copperfield <kmcopper@danwin1210.me>
X-OPENPGPKEY: Message passed unmodified
To: openwrt-devel@lists.openwrt.org
Subject: [PATCH RESEND packages 2/2] openssh: update to 8.1p1
Date: Fri, 22 Nov 2019 12:12:47 +0000
Message-Id: <20191122121247.58881-2-kmcopper@danwin1210.me>
In-Reply-To: <20191122121247.58881-1-kmcopper@danwin1210.me>
References: <20191122121247.58881-1-kmcopper@danwin1210.me>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.101.4 at proxy
X-Virus-Status: Clean
X-Spam-Status: No, score=0.0 required=2.0 tests=none autolearn=ham
	autolearn_force=no version=3.4.3-rc6
X-Spam-Checker-Version: SpamAssassin 3.4.3-rc6 (2019-11-09) on proxy
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_041402_490028_CDDD0A5C 
X-CRM114-Status: UNSURE (   6.60  )
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
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
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



--===============4279026607257029531==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4279026607257029531==--
