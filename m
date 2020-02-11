Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9217B159032
	for <lists+openwrt-devel@lfdr.de>; Tue, 11 Feb 2020 14:45:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8Lr6pQZet2WhjowvcD13pjANBP47EX844X3ZxU0VZwI=; b=tEXaRFt6VKbs9pJSqjsKCvCTWv
	ZlSHnGVW9IBSaV0xOnre/wP9OEI+I6KWo5x4WuJHiGp0dGR6b/GbtiMh5BbffPOHzmcQ+N+ATj3Wb
	pZyv5w9SmckusxBJz7czfBpTkGt1S+9tLqLdqhXsSQoT8gXIej6KGfwC3FHjCMklWgS30B/wZV+c9
	ybcPJMrdMOqRB52bHa/r7hvA2I3DTw2uaVrTijuTS7AYxB8NXWbUPm2ucIFfmszps5cbcPAz4TDwS
	urAjbriHGGFd36IY2IWZCEZttVOFUJP6DBsQm0uwTI91/IXeU+L+tijZaRIb89wni/2YYn1Ys6BFH
	Adlcfp1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1VqR-0001Wb-Om; Tue, 11 Feb 2020 13:44:55 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1VqH-0001WD-9p
 for openwrt-devel@lists.openwrt.org; Tue, 11 Feb 2020 13:44:46 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id A110A4FB2;
 Tue, 11 Feb 2020 14:44:43 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id cd69d10c;
 Tue, 11 Feb 2020 14:44:32 +0100 (CET)
Date: Tue, 11 Feb 2020 14:44:42 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Santiago Piccinini <spiccinini@altermundi.net>
Message-ID: <20200211134442.GB26894@meh.true.cz>
References: <20191010213553.90237-1-spiccinini@altermundi.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191010213553.90237-1-spiccinini@altermundi.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_054445_490699_80428004 
X-CRM114-Status: UNSURE (   5.37  )
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
Subject: Re: [OpenWrt-Devel] [PATCH] proc: cancel script killing only if
 process ends
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
Cc: nbd@openwrt.org, openwrt-devel@lists.openwrt.org, jo@mein.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Santiago Piccinini <spiccinini@altermundi.net> [2019-10-10 18:35:53]:

Hi,

> Before this change if the cgi script hangs after writing headers
> then the process will never be killed. Let's only cancel the timeout
> if the process ends.

 < jow> well it is a change in behaviour
 < jow> the proper solution would be introducing a separate read timeout I guess. Thats how other servers handle it
 < jow> one timeout until the first content, then another body read timeout

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
