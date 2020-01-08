Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99545134F17
	for <lists+openwrt-devel@lfdr.de>; Wed,  8 Jan 2020 22:48:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7ZhjwpUkRRXwaE/nsDmoIySFVyX3kMjeKMPwBMEqJoU=; b=QFm0tzkRANZeYG
	ROtdAapyQECwUueOBQq5jKAkyltPcUyurcjyLnkLwXxOtXdbmfHlKeU9S90Kk5GwPEnoKABIJ0wUz
	sGUVwCY1QGSFsYQ8t/po5w5TQijC2fa+amon4uoHMRQXN/uBM4x7xu0Vfkw3JxEkIgaTF0aHrRDI+
	mPugibhqLK/iLS7Z6Dg4Ng4nPnwLm+RMyMuBMv5r3HBrEdm4wbpyLZ2Cgdg/Kphol2wfN61S4FabL
	bBLW/OcQBm4Le5UQwiL0HlTCZ8QH0iXSzGxBu22X8JHxvH5vfi/Z473E8IK5yz6xfl2yKtq/A8b58
	aY2u1/mOSJkV8oU+QA6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipJBB-0005D1-Bx; Wed, 08 Jan 2020 21:47:53 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipJAv-00059z-FK; Wed, 08 Jan 2020 21:47:39 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 224D543F0;
 Wed,  8 Jan 2020 22:47:30 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 6e2ad123;
 Wed, 8 Jan 2020 22:47:19 +0100 (CET)
Date: Wed, 8 Jan 2020 22:47:28 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Paul Spooren <mail@aparcar.org>
Message-ID: <20200108214728.GA8104@meh.true.cz>
MIME-Version: 1.0
Content-Disposition: inline
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_134737_660294_9E1F61B5 
X-CRM114-Status: UNSURE (   2.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] New OpenWrt logo proposal [Was: Re: [RFC]new
 "corporate identity" for OpenWrt & static rendering]
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
Cc: openwrt-devel@lists.openwrt.org, Adriel Omboy <adingph@gmail.com>,
 Thomas Endt <tmo26@gmx.de>, m.camargomoreira@gmail.com,
 OpenWrt Project Administration <openwrt-adm@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

FYI https://forum.openwrt.org/t/refresh-project-identity-new-openwrt-project-logo

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
