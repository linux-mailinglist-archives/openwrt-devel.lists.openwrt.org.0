Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4CBE58DFD
	for <lists+openwrt-devel@lfdr.de>; Fri, 28 Jun 2019 00:32:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=s7pCN7wC8LyWuYUJOT/mREDUbkrItoTyT7lSFocwzfQ=; b=nv54IzUD1uPzk/kpf0bvTRxR3U
	KnJc3GQEtAvdQWIycunyIXhvlEtFCH1dggdXsT0PIJ2f64v1L514Xjvf+rceAJ1BFKChqb2yHaPav
	ZpFcoIPth7nn/W87owux8FsJQqQxYel+Cz0Jv4jq9DqeNK1fcN71n4sQBxzT31+PdlklnOeHnfpd6
	oJ9sq9xCQGJ2bMT/140ybLf1uSDMYjCSNYeztzSHjNvm4Frm0WAL3XLMeMKlYEFbO/iASKBmbxilk
	QDxtaeXSNn00KAR475Ia7YZmhXfJCEWrU9Ciz4v7+4Qj6yQmiMkQOfvAVd36YlKXg7evfPSUm/1ss
	/W8iMKPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgcwP-0008DN-Tu; Thu, 27 Jun 2019 22:32:29 +0000
Received: from dazzle.geroedel.de ([2a02:180:6:1::b3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgcwH-0008Bp-7E
 for openwrt-devel@lists.openwrt.org; Thu, 27 Jun 2019 22:32:22 +0000
Received: from [192.168.15.2] (helo=feeble.bln.roederer.dhs.org)
 by dazzle.geroedel.de with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <devel-sven@geroedel.de>)
 id 1hgcw2-0002mU-DJ
 for openwrt-devel@lists.openwrt.org; Fri, 28 Jun 2019 00:32:07 +0200
Received: from strike.bln.roederer.dhs.org ([192.168.8.36]
 helo=strike.localnet)
 by feeble.bln.roederer.dhs.org with esmtp (Exim 4.89)
 (envelope-from <devel-sven@geroedel.de>) id 1hgcw1-0007IA-TH
 for openwrt-devel@lists.openwrt.org; Fri, 28 Jun 2019 00:32:05 +0200
From: Sven Roederer <devel-sven@geroedel.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 28 Jun 2019 00:32:05 +0200
Message-ID: <1922993.feW1JY7zWx@strike>
In-Reply-To: <1561543343-2930-1-git-send-email-luochongjun@gl-inet.com>
References: <1561543343-2930-1-git-send-email-luochongjun@gl-inet.com>
MIME-Version: 1.0
X-Spam_score: -2.9
X-Spam_score_int: -28
X-Spam_bar: --
X-Spam_report: Spam detection software, running on the system "dazzle",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 @@CONTACT_ADDRESS@@ for details.
 Content preview:  Am Mittwoch, 26. Juni 2019,
 12:02:23 CEST schrieb Luochongjun:
 > This patch supports gl-ar750, which was previously supported by ar71xx.
 > > Specification: > - SOC: QCA9531 (650MHz) > - Flash: 16 MiB [...] 
 Content analysis details:   (-2.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
X-SA-Exim-Connect-IP: 192.168.15.2
X-SA-Exim-Mail-From: devel-sven@geroedel.de
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on dazzle
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=unavailable autolearn_force=no version=3.4.2
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on dazzle.geroedel.de)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_153221_415808_4CAE5C90 
X-CRM114-Status: UNSURE (   4.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for gl-ar750
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

Am Mittwoch, 26. Juni 2019, 12:02:23 CEST schrieb Luochongjun:
> This patch supports gl-ar750, which was previously supported by ar71xx.
> 
> Specification:
> - SOC: QCA9531 (650MHz)
> - Flash: 16 MiB (W25Q128FVSG)
> - RAM: 128 MiB DDR2
> - Ethernet: 10/100: 2xLAN + 10/100: 1xWAN
> - Wireless: 2.4GHz (bgn) and 5GHz (ac)
> - USB: 1x USB 2.0 port
> - Switch: 1x switch
> - Button: 1x reset button
> - LED: 3x LEDS (white)
> 
> Flash instruction:
> Support for sysupgrade directive upgrades, as well as luci upgrades.
> 

Thanks for porting this device. Based on your previous patch I built an image 
and flashed it.
Two thing to mention:
* probalby you can add a line "SUPPORTED_DEVICES += gl-ar750" to the Makefile, 
to make sysupgrade accept the image without "-F" switch on ar71xx
* the device has "printed MAC-address from case" + 1 for the LAN-ports. Not 
sure what is used with vendor FW.

Sven



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
