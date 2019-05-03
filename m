Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E8B012D43
	for <lists+openwrt-devel@lfdr.de>; Fri,  3 May 2019 14:12:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7dkMpMNoHjMoND1TWwEh7hWa725ab9l5FSUi+hv6fbM=; b=GhMNKDRQ9jl2+AHgXDNUZJg1vX
	bmKmCwMh8C690VQbnezbhW6jGzbnQtyOkAp3eGv65P9koWrNy7UgGyHc9T30FQcuBczVeF2hImMA4
	VGeJlQNbX4JFfqH9IscYi2uiqnV1qQFNI6QUcjVoiOf7DqXg8PasLeZnMbfiNa0qFrYtFmobJsWjv
	mROCRXgHLyHloKgmuBuJNBWf8ZzyYn/TwIhJ1ArlbI/jcYM6zqrW2nqyWp4IXrHRsu2DAA4bocS4t
	+mB5DLocpqwNFOP16BFpGedNFi4MEDVzoh5UdZT1AFz32jTf1h3vBHkgp6qQTs+FmmELd55Ptw9we
	d/CbPjNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMX3A-0005C1-MB; Fri, 03 May 2019 12:12:24 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMX33-0005Bb-4V
 for openwrt-devel@lists.openwrt.org; Fri, 03 May 2019 12:12:18 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 2B4C844CB;
 Fri,  3 May 2019 14:12:15 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 4fa4fca1;
 Fri, 3 May 2019 14:12:13 +0200 (CEST)
Date: Fri, 3 May 2019 14:12:13 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Stijn Segers <foss@volatilesystems.org>
Message-ID: <20190503121213.GB71477@meh.true.cz>
References: <20190427162321.28098-1-foss@volatilesystems.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190427162321.28098-1-foss@volatilesystems.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_051217_332542_83B3BC63 
X-CRM114-Status: UNSURE (   5.44  )
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
Subject: Re: [OpenWrt-Devel] [PATCH] lantiq/xrx200: enable initramfs images
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

Stijn Segers <foss@volatilesystems.org> [2019-04-27 18:23:21]:

Hi,

> Commit eae6cac6a3added support for the Fritz!Box 7362 SL, but one needs
> an initramfs image to flash OpenWrt from stock firmware (as described in
> the commit log). This patch has the initramfs image built by default.

I've just applied it to my staging tree[1] with fixed reference to the eae6cac6a3
commit.

1. https://git.openwrt.org/?p=openwrt/staging/ynezz.git;a=commit;h=71d346e2d8a4b8b2b6a7d553dafa76898351593b

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
