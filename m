Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E747103B88
	for <lists+openwrt-devel@lfdr.de>; Wed, 20 Nov 2019 14:33:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GZbk8Oxy0ZtnDcsJWXZX4Hp/WQBP0SD1TDPEz9paIUw=; b=udB01im8t03eMpKE5q5y+BuQXk
	zITKL1Q/Wvqh68ff68fo61u0aXZq1v325JtX+OCw6wFNvBPUb6bcKsoAtbBv9kPjwf0TfTjVkXXX5
	+1QAl+tXUeBpqAk/c4eb46bSR0+TvvQ/N1GZzEZnWvLGgpEZXlNnKdGGeZeQDr7YBW3dO+5l/9l8e
	CS1Auzkc+zcLviOm7eVwDvxMev6I6gs/FiXr2smFqiH2RMABKbV4WrgtEgjoUrKkFU2M7+rECjVpg
	fGAUsA0ADxWySXZPoPBvx9mnh0NhvztaFAeFf1CIdikkUO/Wpq528/oKqFnMo1ry9/SXzqB4TV78G
	MTGZYh7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXQ7B-0007gy-3q; Wed, 20 Nov 2019 13:33:49 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXQ6f-0007Q9-Ss
 for openwrt-devel@lists.openwrt.org; Wed, 20 Nov 2019 13:33:20 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 6182B4B97;
 Wed, 20 Nov 2019 14:33:15 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id c7f21b70;
 Wed, 20 Nov 2019 14:33:05 +0100 (CET)
Date: Wed, 20 Nov 2019 14:33:05 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Yousong Zhou <yszhou4tech@gmail.com>
Message-ID: <20191120133305.GD52387@meh.true.cz>
References: <20191120115926.23272-1-ynezz@true.cz>
 <20191120115926.23272-10-ynezz@true.cz>
 <CAECwjAio8nAN6ojR4r_7XGZyxuX-e=oYXN7WRkXtBOXy_yanTw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAECwjAio8nAN6ojR4r_7XGZyxuX-e=oYXN7WRkXtBOXy_yanTw@mail.gmail.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_053318_117235_8B4149FD 
X-CRM114-Status: UNSURE (   5.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH libubox 9/9] avl: guard against
 theoretical null pointer dereference
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Yousong Zhou <yszhou4tech@gmail.com> [2019-11-20 20:33:06]:

Hi,

thanks for review!

> The first check (node->left == NULL && node->right == NULL) if
> matched, will return.

You can see the code path leading to null pointer dereference for yourself[1].
I wish, that analyzer could output test case directly :-) I wanted to write
test case myself in order to verify it, but it's quite time consuming so I
rather decided to move on with this simple silencer.

1. https://ynezz.gitlab.io/-/openwrt-libubox/-/jobs/355230141/artifacts/build/scan/2019-11-19-163708-203-1/index.html

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
