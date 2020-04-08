Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0B081A27FD
	for <lists+openwrt-devel@lfdr.de>; Wed,  8 Apr 2020 19:33:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hrmM3eN7CUjldm4gcvlFCblAqLf90oiECQvXYZSy6Qk=; b=X6BeSma8zZJ0CS
	BR4u0P5cyj939B8y/5vmmIQh/8oXpdPPGOEsfitPR5TnrqImxv93SWXA+eiqXLPwWVlP+ju/JNu9A
	tZWzcp4XR2vJEIRJ0ONthsmDI9U7+SWE4r54L/Go5H6fc93zUWbn4QoQSGeYuY1GPVS32/AXtwbv8
	IaPNJPxsyIB+n9ZuEi2Roduy0xg1vo9GU5zCd8fGd+/JJD4bldl10bn/kIk3wxCPCAWKtR4uM8ahn
	DGRjd/H+klNvmgOZxbizfJlYQ17xiza9fdhwTrmsktZXZBjfxOozCKg4bPJdYM3s/r8hWT0RNhXPQ
	qS76oS05sUuSjKs/JG0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMEZD-0000xq-IC; Wed, 08 Apr 2020 17:32:47 +0000
Received: from mail.manjaro.org ([176.9.38.148])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMEZ6-0000wh-2p
 for openwrt-devel@lists.openwrt.org; Wed, 08 Apr 2020 17:32:41 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.manjaro.org (Postfix) with ESMTP id 67F683A0065A;
 Wed,  8 Apr 2020 19:32:38 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at manjaro.org
Received: from mail.manjaro.org ([127.0.0.1])
 by localhost (manjaro.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LoxHf94lYu_9; Wed,  8 Apr 2020 19:32:36 +0200 (CEST)
From: Tobias Schramm <t.schramm@manjaro.org>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  8 Apr 2020 19:32:09 +0200
Message-Id: <20200408173210.3904236-1-t.schramm@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_103240_271286_174643EA 
X-CRM114-Status: UNSURE (   4.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.38.148 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 0/1] Increase SPI speed on Mikrotik rbm11g
 and rbm33g
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
Cc: Chuanhong Guo <gch981213@gmail.com>, Tobias Schramm <t.schramm@manjaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This patch increases the SPI clock speed on the rbm11g and rbm33g to
33 MHz. Initially it was set to a empirically determined value.
The bug necessitating the empirical testing has since been resolved.
33 MHz is the default used by RouterBOOT. It is well within spec of
the SPI flashes used. I've also verified that signal integrity is not
an issue, the clock edges are still pretty good.

Tobias

Tobias Schramm (1):
  ramips: mt7621: use higher SPI clock speed on Mikrotik rbm11g and
    rbm33g

 target/linux/ramips/dts/mt7621_mikrotik_rbm11g.dts | 4 ++--
 target/linux/ramips/dts/mt7621_mikrotik_rbm33g.dts | 7 ++++---
 2 files changed, 6 insertions(+), 5 deletions(-)

-- 
2.26.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
