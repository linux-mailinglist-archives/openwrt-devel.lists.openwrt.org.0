Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6AE61C4D11
	for <lists+openwrt-devel@lfdr.de>; Tue,  5 May 2020 06:16:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=o1C23DWR1FKNugXjpkdL92MfZ0A50DjyRWlLz2opjI4=; b=pBNcD93T0tiLvX
	02Gw5B70LZkhhg4E6sZhSpE1I9DPp2MmYwhgjlmoDnjU04EF81IGpibNt4vlHBxVVGoP15Cp4q/4G
	G56Z+jEG+RnI470vieHxDEpbFZVC4lkeN4BHKqcvl01wMJxCh9NTl9OX9Wpp5eeYlGIbLlmammiU6
	LbmX/koMCtpGt/A8d5DwZjs+6DV5RWfjF5F1o/wAWYocBjC4sfM5WPrGiQRiBagDIpxzE8DCbD1gD
	ouS/AM3K7Mn3OuPkAGTXh6Rh5ftjGW4LLf66nweCOibJyy2oSN6LijWxQZBs6+HgW1Ky1VI3QIxpS
	VsBQqtA8+kJxGi7lv+MQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVp02-0007cE-6V; Tue, 05 May 2020 04:16:06 +0000
Received: from smtp-auth.no-ip.com ([8.23.224.60] helo=out.smtp-auth.no-ip.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVozv-0007b0-K2
 for openwrt-devel@lists.openwrt.org; Tue, 05 May 2020 04:16:00 +0000
X-No-IP: flyn.org@noip-smtp
X-Report-Spam-To: abuse@no-ip.com
Received: from www.flyn.org (unknown [96.244.226.17])
 (Authenticated sender: flyn.org@noip-smtp)
 by smtp-auth.no-ip.com (Postfix) with ESMTPA id 5DCAC184
 for <openwrt-devel@lists.openwrt.org>; Mon,  4 May 2020 19:48:25 -0700 (PDT)
Received: from imp.localdomain (localhost [127.0.0.1])
 by www.flyn.org (Postfix) with ESMTP id 90EA126000FD
 for <openwrt-devel@lists.openwrt.org>; Mon,  4 May 2020 22:48:24 -0400 (EDT)
Received: by imp.localdomain (Postfix, from userid 1101)
 id 50DB06220B09; Mon,  4 May 2020 21:48:24 -0500 (CDT)
Date: Mon, 4 May 2020 21:48:24 -0500
From: "W. Michael Petullo" <mike@flyn.org>
To: openwrt-devel@lists.openwrt.org
Message-ID: <20200505024824.GA612714@imp>
MIME-Version: 1.0
Content-Disposition: inline
X-Bad-Reply: 'Re:' in Subject but no References or In-Reply-To headers
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_211559_662084_F05E2795 
X-CRM114-Status: UNSURE (   3.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [8.23.224.60 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [8.23.224.60 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: Re: [OpenWrt-Devel] [PATCH] tools/squashfs: fix compilation with
 GCC10
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

> On Fedora 32, it's not compiling because of multiple swap definitions.
> Some inlining error probably. Make swap static to avoid a redefinition
> error.

[...]

Rosen Penev's patch fixed building a Microtik RouterBoard 493G image
using Fedora 32. I was able to build the image without error, and it
seems to be running fine.

-- 
Mike

:wq

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
