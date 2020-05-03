Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D05C1C2F33
	for <lists+openwrt-devel@lfdr.de>; Sun,  3 May 2020 22:24:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Date:To:From:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VPD6zsNDwc08xyS6xj3C9dCx2RehaZEPSYCsecedXsQ=; b=GKcW4zbc1GCOmF
	82LZTuGoQc+qm/5UkZLtF3VRaJbpo9iK1DnKqoBlbOuPkFLFX5Wxp/tsPy4pshmaoQ8BHA7AN91se
	9ZWEJFIX7jO/qUdWqB7Jtk5/OvuX7Dc1zgadRrC24KH1zHiq/uAZMT6lXP0KLEVN67LXvTjgqKWQ/
	7AxTpNHKJAoQi1WpIitq8UGu4fDE1Yb/KUmrovAm4G3fejt0QNsZshkygSxliYC0hyBE4HY0Jo5o1
	K75ZX9mjwflUxYh2kJE1WqEA1bjXRWXoF/FioM3oUfj/O4QHxAGxharfwXA+7YqwsHDpPVq7ISHHx
	IYfc057UJwGiAaE3xbCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVLAJ-0008Sf-3h; Sun, 03 May 2020 20:24:43 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVLA7-0008QK-VT; Sun, 03 May 2020 20:24:33 +0000
Received: from tb.lan (udp224251uds.hawaiiantel.net [72.234.141.215])
 (Authenticated sender: mail@aparcar.org)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 9695824000D;
 Sun,  3 May 2020 20:22:48 +0000 (UTC)
Message-ID: <d5927ee6c79da735b605f2599328fc66640be880.camel@aparcar.org>
From: Paul Spooren <mail@aparcar.org>
To: Hauke Mehrtens <hauke@hauke-m.de>, openwrt-devel
 <openwrt-devel@lists.openwrt.org>
Date: Sun, 03 May 2020 10:22:44 -1000
In-Reply-To: <35d32365-dc67-f76f-c95c-a47ab6f04617@hauke-m.de>
References: <6b2b45c20e5426dfff07953155845da6e8d74f6e.camel@aparcar.org>
 <35d32365-dc67-f76f-c95c-a47ab6f04617@hauke-m.de>
User-Agent: Evolution 3.36.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_132432_286450_2E438A4B 
X-CRM114-Status: GOOD (  25.02  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] Applying to Season of Docs
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
Cc: Thomas Endt <tmo26@gmx.de>, baptiste@bitsofnetworks.org,
 OpenWrt Project Administration <openwrt-adm@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Sun, 2020-05-03 at 17:37 +0200, Hauke Mehrtens wrote:
> On 5/1/20 11:07 PM, Paul Spooren wrote:
> > Hi all,
> > 
> > Google offers a program[0] to stipend people writing technical documentation
> > for
> > open source projects. The stipend is possible for anyone 18+ and not living
> > in a
> > US embargoed country, so unlike the Google Summer of Code project not only
> > for
> > students. Successful writers get a stipend of about $6000, mentors $500,
> > from my
> > understanding these stipends are at least in some parts of the world tax
> > free.
> > 
> > So much about the program, question is how OpenWrt could benefit from it. 
> > 
> > * Some time ago there where some ideas on IRC to add development information
> > to
> > OpenWrt specific tools instead of managing it in the MediaWiki. Articles
> > from
> > docs/techref[1] could be updated, cleaned and ported to the project
> > repositories. For example, move the ubus network docs[2] directly to the
> > netifd
> > repository[3] so developers can update it conveniently when adding new
> > features.
> > The existing wiki would then point to an online rendered version of such
> > docs.
> > Using a tool like mkdocs(.org) allows to create documentation websites based
> > on
> > Markdown with minimal dependencies (Python3, pip3, venv).
> > 
> > * Device pages, important for users, are often very similar but still vary
> > in
> > steps and formulation, increasing the work of maintaining them. Also the
> > varying
> > structure complicates the user. Personally I really like the template based
> > LineageOS device wiki[4] as it's the same structure for every device but
> > still
> > covers corner cases or important notes. Some time ago I created a proof-of-
> > concept which could be an inspiration for further work[5]. For
> > prioritization a
> > a ranking of popular wiki pages could be used, which devices are most
> > commonly
> > searched?
> > 
> > * The wiki offers guides on how to use the LuCI for common use cases, which
> > is
> > great because it's the most likely way for basic users to interact with
> > OpenWrt.
> > However this could get some extra love: Partly pictures are missing[6],
> > pictures
> > are outdated[7] and/or missing from the web interface overview[8]. This
> > could be
> > refreshed and put in nice overview, maybe even even create click-through
> > videos.
> > There must be tools that automatically click things in UIs and make
> > screenshots,
> > this could make the documentation easily future proof and translatable.
> > A prioritization and general collaboration could happen with the
> > participants of
> > the '"simplified" interface for LuCI'[9] thread. 
> > 
> > I'd be happy to either be a mentor or writer. Hopefully some more people are
> > interested in this efforts!
> > 
> > A first step is the application to make OpenWrt a SoD project. If approved I
> > can
> > (try to) handle the paperwork. The deadline is 4th of May, sorry for the
> > short
> > notice.
> 
> Hi Paul,
> 
> I just noticed the deadline is today at 8PM UTC (in about 4 hours)
> 
> This Season of  Docs is a nice project, but I think it is about actually
> writing documentation instead of creating new infrastructure for writing
> documentation. I also think that we need someone actual writing
> documentation more then new infrastructure for it, so this is a good thing.

From my understanding it is about both (or even more) based on this document:
https://developers.google.com/season-of-docs/docs/project-ideas
> 
> It would be nice if OpenWrt would apply, but I do not have the time to
> manage this project or act as a mentor.
> 
> @Paul do you want to manage this?

Yes, I'm on it.

Best,
Paul


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
