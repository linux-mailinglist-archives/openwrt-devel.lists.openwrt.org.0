Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F02BA158CCD
	for <lists+openwrt-devel@lfdr.de>; Tue, 11 Feb 2020 11:36:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=AMYotVwpB3zgr67+ZsCTdjVa6eNjpIItAdOUt8cpMvI=; b=atIrfejn/fB4fczAo/XGFlKlAE
	/PY/32xeo3RqvLxF6rQ01Jbg6fQeKNfB4wbjzLjoLxUDL1iNCk4w1n6eHPD5JfaJZMQggNjy5FUWD
	eUNFhHd/ciKb7L8TZ/QhpxO9UBAFolg+2B92gbD8GDry7A2AtIzD4FA6MyQJDj+D2AN0THzKRlcae
	xEqA1gMf1EKIvKeE1MldDXWQkYJpcxWBxfRvw0d521AceGvr8D2sG9C0ZSK7qyUoa7QMiUqCVWt1J
	Oe2PxY51VIFgWNbQodMpvjZc1nfFpHdyy9z6qGk9cicnkCsQUgIghJiN8oCzcZihTpnKQLpSFd4kd
	jJHRrwjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1SuR-0001pA-Ug; Tue, 11 Feb 2020 10:36:51 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1SuI-0001ot-0a
 for openwrt-devel@lists.openwrt.org; Tue, 11 Feb 2020 10:36:43 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 8727945F1;
 Tue, 11 Feb 2020 11:36:39 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 2d1ec0ee;
 Tue, 11 Feb 2020 11:36:28 +0100 (CET)
Date: Tue, 11 Feb 2020 11:36:28 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Rosen Penev <rosenp@gmail.com>
Message-ID: <20200211103628.GD38853@meh.true.cz>
References: <20200207033140.2623-1-rosenp@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200207033140.2623-1-rosenp@gmail.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_023642_206862_D5930DF4 
X-CRM114-Status: UNSURE (   4.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] ag71xx: fix return value check in ag71xx_probe()
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Rosen Penev <rosenp@gmail.com> [2020-02-06 19:31:40]:

Hi,

> In case of error, the function of_get_mac_address() returns ERR_PTR()
> and never returns NULL. The NULL test in the return value check should
> be replaced with IS_ERR().

thanks for your effort, but that is not applicable to 4.19 as the
of_get_mac_address returns ERR_PTR since d01f449c008a ("of_net: add NVMEM
support to of_get_mac_address"). Seems like 5.4 has already the fix.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
