Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57B9012CE8
	for <lists+openwrt-devel@lfdr.de>; Fri,  3 May 2019 13:50:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=won6bHAbawT15wfNu5bwhiwBv2nIzuzxxEC0Yq8AjOM=; b=ORllCINF9q01VRQt2ej5xbXiRR
	WvpnyykXiycHxpfFcxwMcnpxfxnX2nL7GhG/vrI7m6IjgnA1CkKZ21pkz54X0b3hkIROZ1dqDVZHc
	F7IxS1okHQmOhHOCO5PTlLvwtWD8YatG7+52ADQd7kjxSC3PvUCvzlxv2UwX3dgMyaSbKr+v6qcCd
	yXLPXysrRQELl+1g8umkPhQNQYGX54IVaus5cpHMvNnv1+5jFwBZbsJFg3mxU+ilpmu4B9LsnYEpW
	asPLzq3Xek/z7ulXs8gK9F+XJTGCwk4Vqx4YpyrcFk+z2XPVPwalIMWS1wQdozxwHC8+h9o5n9URa
	yR8tmKOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMWhw-00052r-3o; Fri, 03 May 2019 11:50:28 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMWhn-00052G-Ap
 for openwrt-devel@lists.openwrt.org; Fri, 03 May 2019 11:50:20 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 4588D43C6;
 Fri,  3 May 2019 13:50:17 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 80a63882;
 Fri, 3 May 2019 13:50:15 +0200 (CEST)
Date: Fri, 3 May 2019 13:50:15 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Rosen Penev <rosenp@gmail.com>
Message-ID: <20190503115015.GA71477@meh.true.cz>
References: <20190501170810.5230-1-rosenp@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190501170810.5230-1-rosenp@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_045019_529876_FEC1535B 
X-CRM114-Status: UNSURE (   3.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH] nftables: Fix compilation with uClibc-ng
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Rosen Penev <rosenp@gmail.com> [2019-05-01 10:08:10]:

Hi,

> Missing header for va_list.

shouldn't this go through upstream first? Thanks.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
