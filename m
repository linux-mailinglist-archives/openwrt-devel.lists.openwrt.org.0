Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CB6CE70DC
	for <lists+openwrt-devel@lfdr.de>; Mon, 28 Oct 2019 12:58:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:Message-ID:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=aQqBTbIYeYkUnJd8IzYbvarus0PqUvL0a9YzORBqmCo=; b=Qw+
	Fo2ykjrcOFunSX9TTLoUH3deGjXQmzbMyFc8Zb7uLiD0ClIwCTShw0aVp0Bv/AlPtQH6m9+Vnz9tc
	DmwartiJXmdLQsiUxW1lN6CFIpAVv30ZfrFZd2eMgqfZmnG/bIqhA5qoyskvammr6/xmQNEdGFSqr
	FWTOS1KVMruonWiJXs46T8aZniDHfaT0TzjVeWIjCNU/aBILwdv892lOCJZxVJ1rbohhO6gsdq0ly
	NMzMJuWsiTguqW/k6JC6ASQtoiEv4jBc7aX6SSLKWC5C9/Nrp9u8hEMiPhlPdgOCxbOuMO0LOB5FZ
	wqqUMitBtCIuO1LHHdFWVa7i1W88OWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP3ev-0001VK-GX; Mon, 28 Oct 2019 11:58:05 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP3en-0001Uu-FQ
 for openwrt-devel@lists.openwrt.org; Mon, 28 Oct 2019 11:57:59 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id BC6F73679;
 Mon, 28 Oct 2019 12:57:53 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 1b7af81c;
 Mon, 28 Oct 2019 12:57:43 +0100 (CET)
Date: Mon, 28 Oct 2019 12:57:43 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: John Crispin <john@phrozen.org>,
	Tom Psyborg <pozega.tomislav@gmail.com>
Message-ID: <20191028115743.GD22393@meh.true.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKR_QVKpKpbDdhQTF9=H63JaxoAwjOq0qJN7RK2G1UjjKapASw@mail.gmail.com>
 <4b8917b6-5e11-bb71-3b97-5eb450daa4e2@phrozen.org>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_045757_665483_FA855582 
X-CRM114-Status: UNSURE (   9.14  )
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
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] patches from 2018
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

John Crispin <john@phrozen.org> [2019-10-27 14:34:04]:

Hi,

> I'd like to close all patches pending from 2018 in patchwork, there are ~25
> and a quick try on some showed none of the apply anymore.

thank you for cleaning up the backlog, really appreciate the effort.

You're just mentioning Patchwork(PW), but I think, that the same applies to
the GitHub PRs (GH) and bugs/issues (FS) as well. 

Perhaps we could take this thread as an opportunity and come up with some
general rule, which would clearly define somewhere at the appropriate place on
the wiki, that for example any open topic on PW/GH/FS platform would autoclose
after some predefined period of time (it can always be reopened if requested).

Say 6-12 months since the last activity in that particular topic?

Tom Psyborg <pozega.tomislav@gmail.com> [2019-10-27 15:53:00]:

> Better approach would be to review them

Nobody prevents you or anyone else to do a review and add `Reviewed-by` and/or
`Tested-by` tag, which would help with merging as it at least clearly shows,
that there's interest for this feature/fix/whatever.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
