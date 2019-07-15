Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95FA169899
	for <lists+openwrt-devel@lfdr.de>; Mon, 15 Jul 2019 17:51:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XCrmnymAKcxB3VCvq6hN8tbAUnmUFfplOo+APLRqdMc=; b=jrB3iFn0C8d87e
	lRn+/Ep84JspTusIcXnemgs0nDFJWZx3ZjXAEANFa0Y0ehs2MlX04IA4I1hPL9Abf8TlOcQYVub/3
	IeX+KkDGjrN0LgWb/8lVI6B9saAagF0lBCZpgupoqcW2DKsHz4Y4HYv9KgZQmoY2RdoZvIbl/SI64
	avEnU/3BlF0ork8coBIm75TlP8+ohi2mQHNtx9WnaJLMH0Q4oWV8f4Ibc6eP1QGarYSJ65kG3vF7n
	r/SZNiqMDW4vcM1Rddr1PN1giYCcrUPZbE+gFZvT7/Mxr5EXy/xLAPt6H8k6JJc1UXDl06E2smNfV
	CS2aMkSsZ/oyCEDNo9nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn3Ff-0004uQ-49; Mon, 15 Jul 2019 15:50:55 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn3FU-0004tR-V8
 for openwrt-devel@lists.openwrt.org; Mon, 15 Jul 2019 15:50:46 +0000
Received: from localhost.localdomain ([188.194.32.21]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1N332D-1iRvxi30bF-013JEP for <openwrt-devel@lists.openwrt.org>; Mon, 15
 Jul 2019 17:50:39 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 15 Jul 2019 17:50:36 +0200
Message-Id: <20190715155036.24864-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:Z2OpyZW6bqkDqFYWBo2y/Mmfmb0fHyYrrLLmdU99FwIF3brww3j
 kn0qtWBTeeldOnvvps/bCIv0D/Qn/ICNUz449skbcE4p86eXVWSNpwJeD9/X7BL/ZTW68Wz
 Lw5ILoR0ceOkHZ1apYwI7S/6IdWVd8O7G9Am+YLdjRX9OaFXwfTcEQ3cCatBip2flOdXw4e
 0MXWpEMWQEY0L37PbC6aQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:2gM9OjRVHWo=:XsVZ+Q4sClwMxf7+iXKXqS
 P/UW9zkujmR2lsZe7cqazFqQuMri+78pMG/LKRynxaahU4pb0bDXhMajkmi4ZONTOB0BqWDJo
 27bxwEqVacZXlLGYMk51lGKBZQlU/3nM9WkFJI4fqedH6j/uaxfddVskTvjCAqvvYsnw0CRp9
 i5L+A795vW0lYV+w94pIh2j3SnljNS/iPQ7Yyrykivc2s86vSphhSm4VS+c2rWsJNU1uSAnSL
 EAu3QfEaJEDQSTk8KQEoTPTCH0FqF3DvAMKH2OjkevG1gxMWIG9i5479LcLzvjkdwXba+wTn7
 EfU1xVTKWBuukX8Kq5w3ivQtHoL04w8dmLeNqVOOigQaJRJwyTXVj3E7oNYKjs5zDtAZN6jE1
 tj2FlFcaWtV2O79zzYH6W8TXbIEYqUU4Qhl3zgPI4QLRHudEyHSQNfB+Z53r9LtXI3YCJfn3b
 FXeItB2kVe8es9nDInTo79f1GbnfrRT4xFOx/2qtx1b27ynwF/AfuaTpb76o0Z+Stq1hJOX6p
 YpOmz9u0zQnd9c2UZRczpV13oivg2cm7EF1/fSDWjyA5/x0uU8bbq5BE2bv7vBNVF0BXY/Fwh
 sUmnPRZ3TJyyZPLjeX1ZlFrmdopGYlvLZo6iH4nPJyN0vq3rMagxbiRldRqrITFMCHJv20x39
 KQEbXdbiulJVXD9xuRYa9tgWDhe7bPSzDoyBcjBLEQlBiUT8daupScgmxamQkrb12q50SHU6b
 +kwMtYFY02xOAFTWMlE4bnH6FsqIhMwWHyvOAsveFGY93SvTTH3EtXqoYWQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_085045_297470_0D72423B 
X-CRM114-Status: UNSURE (   7.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] ramips: Remove left-over mistyped device
 string from 02_network
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

In 2011 (!), network setup for nexaira,bc2 was moved to network
defaults script with a typo so it became b2c:
https://github.com/openwrt/openwrt/commit/295e04084c5e106dfac0d9f05ac530de5d0fc07d

This patch just removes the useless entry without replacement,
since it seems to have worked for 8 years anyway.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/ramips/base-files/etc/board.d/02_network | 1 -
 1 file changed, 1 deletion(-)

diff --git a/target/linux/ramips/base-files/etc/board.d/02_network b/target/linux/ramips/base-files/etc/board.d/02_network
index c3b7cd4390..1ea0597ec6 100755
--- a/target/linux/ramips/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/base-files/etc/board.d/02_network
@@ -33,7 +33,6 @@ ramips_setup_interfaces()
 	case $board in
 	accton,wr6202|\
 	alfa-network,w502u|\
-	b2c|\
 	netcore,nw718|\
 	petatel,psr-680w|\
 	skyline,sl-r7205|\
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
