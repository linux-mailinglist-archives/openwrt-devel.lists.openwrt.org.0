Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74B41BC3F0
	for <lists+openwrt-devel@lfdr.de>; Tue, 24 Sep 2019 10:14:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=p5S5t2sZN/4DYqC8uO7bAz6oa3o0vWuPg7bTqQYDKog=; b=Nj8gocSUat+Y0ey4pAqTXDg2i
	xxRKGph7U9MEPBrT89v1R+G9jPDNFwnspz8JhI76mDloOAcAi4kdOCvfRMpNYya0VZd4srcVVnqRR
	+VQS0C6Ck4nSJ59qFDzArAslYj1Pw+zMLz4xR93cCuw9TcPKW1Igw7WJY2GIr1N+BzGKguaFX2Z0v
	DI9aw+HwzQYQHOo35FnDciw7o8ufdZxJFQ7pCa4wGn/2DCuBfNmv++RzoBzaqg87ZLsRiGFOCmnVi
	N8nHobmnMv3yViuKwJzgn0MD4pevQe2zEesXOppTcipEnx8puhGBeOcpwxJCLHgQGd+P5OgECLaH6
	PASv2BEDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCfxQ-0000t0-3j; Tue, 24 Sep 2019 08:14:00 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCfxC-0000su-J4
 for openwrt-devel@bombadil.infradead.org; Tue, 24 Sep 2019 08:13:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:Cc:References:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7VD4BQBOByRqoXifAJy+RVtN28vChXnpllkHXY08vMU=; b=W/OwnOk4o91zgXgnmmPeSV4p0l
 n2e08PHjckT4w2vo1U0E4eDatkouTJ/c8FFCnSEWJcCl5WnwgvpEbpa9XxFE1Yqkug5cQaBDeUbt9
 +Jb9GCointKKNhAp8/TTyo/sZPvd1qYgjojNpZOBN6OzzAJa7eUrLUaG8pomyhR0gvXthXHUWtYUB
 gay5gk06t5V9gwHQotuIWuTmmIDMEcmwzubhVvdzoSoMg+H3g7rhYThvf5WuYGXrWQc+2ri1iV9zV
 iiCblfbCn1cXBgGBFrE2KE8BgXGimqtzBLcmg6Y6NnxlYopguJgY52PsNG9hg9eSNAsBgC1AS2YPw
 3ffn9j7g==;
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by casper.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCfxT-0004X0-6m
 for openwrt-devel@lists.openwrt.org; Tue, 24 Sep 2019 08:14:05 +0000
X-Originating-IP: 98.151.65.6
Received: from [192.168.0.191] (cpe-98-151-65-6.hawaii.res.rr.com
 [98.151.65.6]) (Authenticated sender: mail@aparcar.org)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 1F6FD60016;
 Tue, 24 Sep 2019 08:13:07 +0000 (UTC)
To: Scott <xmrscott@protonmail.com>,
 "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
References: <mailman.26691.1569291335.19300.openwrt-devel@lists.openwrt.org>
From: Paul Spooren <mail@aparcar.org>
Message-ID: <8204ec6c-5485-3e8b-6763-e0daa20a7549@aparcar.org>
Date: Mon, 23 Sep 2019 22:13:05 -1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.0
MIME-Version: 1.0
In-Reply-To: <mailman.26691.1569291335.19300.openwrt-devel@lists.openwrt.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_091403_371889_1EC9B1AD 
X-CRM114-Status: GOOD (  15.41  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.195 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: Re: [OpenWrt-Devel] [Suggestions] Streamline localization by using
 Weblate for the project,
 use LiberaPay or OpenCollective to enable people to donate
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
Cc: Jo-Philipp Wich <jow@openwrt.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Scott,

On 23.09.19 16:15, Scott via openwrt-devel wrote:
> First and foremost, as a user of OpenWrt and LuCI by way of TurrisOS thanks for everyone who has contributed to OpenWrt. As someone who's seeking to give back to the project via localization I noticed that while OpenWrt has relatively straightforward documentation on contributing localization (https://github.com/openwrt/luci/wiki/i18n), the process could be streamlined a great deal more. In particular by using Weblate thus making easier it for those who don't know Git and providing significant quality of life improvements even for those who do know Git. Those who want to do offline localization could continue to do so w/o issue.
>
> For those who aren't familiar with localization, Weblate is basically a web based tool that allows to contribute by simply entering in a localized string and hitting 'suggest' rather than having to Git clone, download an offline client like Lokalize, and then make a PR. There's also a good number of nice things to improve localization. It's easy to visually see what languages need localization work, you can be notified when there's new strings or a few other trigger events, and you can utilize not only the 'translation memory' of OpenWrt itself, but other FOSS such as related routing projects like Foris. The great thing is that while you can self host your own Weblate server, because OpenWrt is FOSS, the folk behind Weblate would likely offer free hosting given their Gratis for libre projects pricing. To better see what I'm talking about in action please check out:https://hosted.weblate.org/projects/

I think that's a good idea! As it doesn't need to be directly integrated 
in any existing workflow nor requires privileges on any Git, it's 
basically just a fancy front-end with translation suggestions for .po 
files right?

Out of curiosity I requested a libre account for a quick evaluation, if 
anyone is in serious doubt on evaluation it I'll instantly cancel the 
request. However I think this is in line with 
https://openwrt.org/meetings/hamburg2019/start#luci_translations

> As a secondary note in what sounds like was written in late 2016, there were private discussions about public crowdfunding to help pay for servers (https://openwrt.org/infrastructure). Talking with tmomas on the forums it sounds like the current bottleneck is people power. Any surplus donations beyond infrastructure could be used to pay for part or full time development or for bounties. Between the LiberaPay and OpenCollective, OpenCollective may be preferable because it is designed to allow both reoccurring and one off donations.

Also a nice idea, I heard a couple of times people want to donate but 
there is no convenient way to do so. Having some funding for 
rpcd-doc-writing or a simplified web interface would be great!

Maybe jow can come up with a comment on this, I remember there were some 
issues on how to manage the money in an organizational way...

Best,
Paul


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
