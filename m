Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C488817AA89
	for <lists+openwrt-devel@lfdr.de>; Thu,  5 Mar 2020 17:33:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/2oWxSqJ+DQnkPHInLjQzTLkTajLK6mqoLOBv72yivw=; b=WHinZtvzlNxNSc
	/+p/1L5Fs8sZOwEBAWCDo5vR6LkrumqN6e02uS71K/zyBE83CZR8KRNikpijVULCKvAoKTyGIkWrv
	Wy5h50ZVnBe7qFgpi3vV8+EbW8X9UNWEzAyFRoHbFRhpxqpDlZuQLzrDZGHdn68MB4+FIK8VgFV0h
	uPzgpCaKhZsvjo9/9P3W7kYRaLegdLvUH46Wmk44BwMD0/i5upSGmOsnLXW6vKU3+UkbgFqc+ImuS
	ZGg50RaoFrllaIdJEUlNPRK+huN2CyNgL8CnGg2xXFoLSUdJxXjS/8cw05DvPZnpqVqg3GxuvaAgY
	CoTciA9HT+G1wX/zSqCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9tR0-0003ug-AM; Thu, 05 Mar 2020 16:33:18 +0000
Received: from mout-u-204.mailbox.org ([91.198.250.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9tQs-0003tm-Ew
 for openwrt-devel@lists.openwrt.org; Thu, 05 Mar 2020 16:33:12 +0000
Received: from mout-u-107.mailbox.org (mout-u-107.mailbox.org [91.198.250.252])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-u-204.mailbox.org (Postfix) with ESMTPS id 48YGWl3GxtzQlGH;
 Thu,  5 Mar 2020 17:33:07 +0100 (CET)
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-u-107.mailbox.org (Postfix) with ESMTPS id 48YGWl2JlQzKmhQ;
 Thu,  5 Mar 2020 17:33:07 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gorani.run; s=MBO0001; 
 t=1583425985;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=cUvO4LTMa6UtbAh2VhqAHIEPChxaRgwCbzQW0Evm5vg=;
 b=aWKWKMyP4z9qC3OCEYryA4SX6ZsJVl9D7OIB0mMaMN4NuaT7gMHS/2u2K4aLedAcwcnMO0
 Y22MseT9+rCVKrPmiL8iOVyR/GMs0IxWqQGjcMVJUqN0tJnkqfacqEyb1sFXSREOzxOG7q
 e+zkkBF2vcAsFpUwnulpJhI9avFtz4ml2anE8rf+PTJC1/3SmhzRigU8c4qR1ho4xhaiTo
 qMsqht1hf4MK41lXz6il3Tt/pAx2mYRFaqrxOsdfodOkccWfD13muQ6wn8thJ8NbG4fQNv
 LhwFtOiu6d87lu7ZPr+UuVYncITIF0hACkMu7aEPKSwEn39aws+PzpJmP5iL3w==
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter04.heinlein-hosting.de (spamfilter04.heinlein-hosting.de
 [80.241.56.122]) (amavisd-new, port 10030)
 with ESMTP id s9xXwwMnFEyT; Thu,  5 Mar 2020 17:33:01 +0100 (CET)
From: Sungbo Eo <mans0n@gorani.run>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  6 Mar 2020 01:32:44 +0900
Message-Id: <20200305163248.361572-1-mans0n@gorani.run>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_083310_675301_F8FC2E33 
X-CRM114-Status: UNSURE (   8.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.198.250.253 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 0/4] ar71xx: improve support for Arduino Yun
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
Cc: Sungbo Eo <mans0n@gorani.run>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This patchset fixes some bugs for Arduino Yun, which have been lying around for years.

Note that I've also opened a PR for new support in ath79 target.
https://github.com/openwrt/openwrt/pull/2692

Sungbo Eo (4):
  Revert "ar71xx: fix Arduino Yun enabling of level shifters outputs"
  ar71xx: fix sysupgrade for Arduino Yun
  ar71xx: enable ethernet LED of Arduino Yun
  ar71xx: restore support for boot console with arbitrary baud rates

 .../ar71xx/base-files/lib/upgrade/platform.sh |  2 +-
 .../files/arch/mips/ath79/mach-arduino-yun.c  |  7 ++-
 ...support-for-boot-console-with-arbitr.patch | 54 +++++++++++++++++++
 3 files changed, 58 insertions(+), 5 deletions(-)
 create mode 100644 target/linux/ar71xx/patches-4.14/821-serial-core-add-support-for-boot-console-with-arbitr.patch

-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
