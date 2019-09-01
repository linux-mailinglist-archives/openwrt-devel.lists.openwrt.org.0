Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2B70A4877
	for <lists+openwrt-devel@lfdr.de>; Sun,  1 Sep 2019 10:58:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-ID:References:In-Reply-To:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=R14JIkV8LK2JAcUqDBXIbasI94rf4BaYNYCfumJnQhs=; b=MhgmgkI06uz7J/GecoORPryWp
	pWkEsepX4gvdqRF4q0UW46RCrcmHeqS9T7PpDtT7C3mDCPZ+c9GbNhRGxHtXUg0HcAE+3ky7eKqJ4
	2cSDzrHfr6KpUOIlV1KaWrdonkHhKvaeSwYY4VwTJuhcKUSjf4ZSJ/28idIBmAbko24WMlenr32Gd
	fRqBs9VKcLo9ErAl3C/q3BVzv1fcQaFsiefJzW6gKdrTJz0kK7GXjnwQjPM/cY2EtO+454qWi3dkQ
	Nr94Kfatg8kE2OHQI335aCJTcWYOATQ6PajQiGV8HUJ+y4CfEyvq364JX4Kv8fJA3kkCi6RXB0vnj
	mi7hfLhTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4Lh0-0004R0-Q8; Sun, 01 Sep 2019 08:58:38 +0000
Received: from 10.mo4.mail-out.ovh.net ([188.165.33.109])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4Lgq-0004QY-O8
 for openwrt-devel@lists.openwrt.org; Sun, 01 Sep 2019 08:58:30 +0000
Received: from player693.ha.ovh.net (unknown [10.109.160.39])
 by mo4.mail-out.ovh.net (Postfix) with ESMTP id 704E3203ACB
 for <openwrt-devel@lists.openwrt.org>; Sun,  1 Sep 2019 10:58:16 +0200 (CEST)
Received: from RCM-web9.webmail.mail.ovh.net
 (ip-194-187-74-233.konfederacka.maverick.com.pl [194.187.74.233])
 (Authenticated sender: rafal@milecki.pl)
 by player693.ha.ovh.net (Postfix) with ESMTPSA id DA6EE948E3BB;
 Sun,  1 Sep 2019 08:58:10 +0000 (UTC)
MIME-Version: 1.0
Date: Sun, 01 Sep 2019 10:58:10 +0200
From: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>
To: Karl Palsson <karlp@tweak.net.au>
In-Reply-To: <vg58MWhCCD22S7ItxInBzDdSa5ZSoM9zRuh5sFsP236d@mailpile>
References: <20190830154607.6463-1-zajec5@gmail.com>
 <vg58MWhCCD22S7ItxInBzDdSa5ZSoM9zRuh5sFsP236d@mailpile>
Message-ID: <39b347f697a17ea93d6f7c3f5587be10@milecki.pl>
X-Sender: rafal@milecki.pl
User-Agent: Roundcube Webmail/1.3.9
X-Originating-IP: 194.187.74.233
X-Webmail-UserID: rafal@milecki.pl
X-Ovh-Tracer-Id: 9811091790442892911
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduvddrudeikedguddtucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddm
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_015828_934886_2CDF8182 
X-CRM114-Status: UNSURE (   5.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [188.165.33.109 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH procd] system: reject sysupgrade of
 broken firmware images
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
Cc: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>,
 Jo-Philipp Wich <jo@mein.io>, openwrt-devel <openwrt-devel@lists.openwrt.org>,
 John Crispin <john@phrozen.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 2019-09-01 00:14, Karl Palsson wrote:
> What's the point of "force" if it doesn't force? Are we going to
> add a second -F to "really force" ? Or is it going to be "oh, -F
> failed for some lame reason, so I'll use mtd write, and still
> complain anyway"

Firmware can be marked as:
1) Invalid
2) Broken

Force option is to bypass invalid check only.

Invalid fw state may mean broken checksum or no device model match.
Broken fw state should mean unrecognized fw image format.

I'm not saying every target has to use that as it surely won't fit all
of them nicely. I can say it's going to fit Broadcom platform very well
though.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
