Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91F561A34A0
	for <lists+openwrt-devel@lfdr.de>; Thu,  9 Apr 2020 15:10:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fK255seiDy23+m/Rn515rLPa3VXlSR0YLQ2oUVzvy8A=; b=c+GW6Q0oz279ol
	D0pk9W/QL+trPofiGdBprZoyXwo63tO+OOgq7dfnDuCqXHAuxLqCz2BN401Dpz0Sm3cWCJGFgd4ln
	1NfPZGOQUmbzdB1+DGPHnTFIG2nOQQ1fhVysnCDIayU6H+r8InIpiMVYgf8/fVkeX1/JdznBbelIC
	BYphI5j+OCS4DK9/jKC2D6hgpXDFr9mJU/sl0TGaGlvxndbHivEZ66E0ipaxHbbe6GahNKKkhsAzJ
	W/PFucMbR8VSKNO7bbefPOh6cqTbUFaYCr56r+bV/cLKBfx9FsRDS7oug2ZOyMcoVgOHCUXy79gKb
	AkJq1j14uFa/qQs0DPwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMWx7-000631-R1; Thu, 09 Apr 2020 13:10:41 +0000
Received: from mail.manjaro.org ([176.9.38.148])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMWwy-00062R-B8
 for openwrt-devel@lists.openwrt.org; Thu, 09 Apr 2020 13:10:33 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.manjaro.org (Postfix) with ESMTP id 2256E3A01075;
 Thu,  9 Apr 2020 15:10:31 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at manjaro.org
Received: from mail.manjaro.org ([127.0.0.1])
 by localhost (manjaro.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8rHyNRK1fSkq; Thu,  9 Apr 2020 15:10:28 +0200 (CEST)
From: Tobias Schramm <t.schramm@manjaro.org>
To: Chuanhong Guo <gch981213@gmail.com>
Date: Thu,  9 Apr 2020 15:09:54 +0200
Message-Id: <20200409130955.161319-1-t.schramm@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_061032_532612_8DA42BE3 
X-CRM114-Status: UNSURE (   6.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.38.148 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH v2 0/1] Increase SPI speed on Mikrotik
 rbm11g and rbm33g
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
Cc: openwrt-devel@lists.openwrt.org, Tobias Schramm <t.schramm@manjaro.org>
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

v2 removes the m25p,fast-read property from the dts since it is not
required until 50 MHz.

Tobias

Changelog:
 v2:
  - Remove m25p,fast-read from dts

Tobias Schramm (1):
  ramips: mt7621: use higher SPI clock speed on Mikrotik rbm11g and
    rbm33g

 target/linux/ramips/dts/mt7621_mikrotik_rbm11g.dts | 3 +--
 target/linux/ramips/dts/mt7621_mikrotik_rbm33g.dts | 5 ++---
 2 files changed, 3 insertions(+), 5 deletions(-)

-- 
2.26.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
