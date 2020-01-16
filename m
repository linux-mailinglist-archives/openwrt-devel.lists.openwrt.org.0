Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CA8113D5F5
	for <lists+openwrt-devel@lfdr.de>; Thu, 16 Jan 2020 09:31:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:In-Reply-To:References:To:Date:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SKHTI49L7EmDrPkx5yoU+9JppTfvf5JYyxne34cO1V8=; b=Tzkt1go9qm43kCfL60LvrK9w4
	mPnAxpXwERtnGdjOGAdaxyX3JiaoD3HnC75636JoxqqbVQJefN+6MPf6M7469fI9E9LV7xe28cBuc
	oezYIfGnGRrN+4uHW9D7VrBd+8C1xQpDAIZiikJ71QsiuHWRYYe8kq5tCLTOuvGIKXPifZbrAwDlK
	TpYW4+rWbveRMLNYhg9wrVrCrtFhBxj+wLqtiwBnFu403ht+kLMvvgvjJwK9kOyc251UM4fXH2e09
	1PMno8+oVYl3BOu7ZNwBygpdgd7JECqPz/ozIyIAOHeNsT2Q93jRt8d27F6mowZvErNBU7nXPb1kX
	tsoeuq9Sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is0Ye-0007bG-Oa; Thu, 16 Jan 2020 08:31:16 +0000
Date: Thu, 16 Jan 2020 09:30:48 +0100
To: mail@adrianschmutzler.de
References: <20190917002048.1062539-1-mrkiko.rs@gmail.com>
 <003c01d56d3f$b216bee0$16443ca0$@adrianschmutzler.de>
 <20190917111452.GA9795@moc6.cz>
 <mailman.25352.1568730047.19300.openwrt-devel@lists.openwrt.org>
 <alpine.LNX.2.21.99999.353.1909171854080.1267560@mStation.localdomain>
 <012e01d56d79$a67cba00$f3762e00$@adrianschmutzler.de>
 <alpine.LNX.2.21.99999.353.1909171908150.1267595@mStation.localdomain>
 <007b01d56d7f$a787b2a0$f69717e0$@adrianschmutzler.de>
 <alpine.LNX.2.21.99999.353.1909171958450.1301929@mStation.localdomain>
 <045d01d5c427$81c41e60$854c5b20$@adrianschmutzler.de>
In-Reply-To: <045d01d5c427$81c41e60$854c5b20$@adrianschmutzler.de>
MIME-Version: 1.0
Message-ID: <mailman.25070.1579163468.2486.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: Filip Moc via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: openwrt-devel@lists.openwrt.org, 'Enrico Mioso' <mrkiko.rs@gmail.com>
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: Filip Moc <lede@moc6.cz>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for TP-Link TL-MR6400
Content-Type: multipart/mixed; boundary="===============8185491869030682388=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============8185491869030682388==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============8185491869030682388==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from hosting.moc6.cz ([2a02:c60:c70:8900::1] helo=moc6.cz)
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is0YR-0007Zt-SP
	for openwrt-devel@lists.openwrt.org; Thu, 16 Jan 2020 08:31:08 +0000
Received: by moc6.cz (Postfix, from userid 1025)
	id E81D92320020; Thu, 16 Jan 2020 09:30:48 +0100 (CET)
Date: Thu, 16 Jan 2020 09:30:48 +0100
From: Filip Moc <lede@moc6.cz>
To: mail@adrianschmutzler.de
Cc: 'Enrico Mioso' <mrkiko.rs@gmail.com>, openwrt-devel@lists.openwrt.org
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for TP-Link TL-MR6400
Message-ID: <20200116083048.GA27998@moc6.cz>
References: <20190917002048.1062539-1-mrkiko.rs@gmail.com>
 <003c01d56d3f$b216bee0$16443ca0$@adrianschmutzler.de>
 <20190917111452.GA9795@moc6.cz>
 <mailman.25352.1568730047.19300.openwrt-devel@lists.openwrt.org>
 <alpine.LNX.2.21.99999.353.1909171854080.1267560@mStation.localdomain>
 <012e01d56d79$a67cba00$f3762e00$@adrianschmutzler.de>
 <alpine.LNX.2.21.99999.353.1909171908150.1267595@mStation.localdomain>
 <007b01d56d7f$a787b2a0$f69717e0$@adrianschmutzler.de>
 <alpine.LNX.2.21.99999.353.1909171958450.1301929@mStation.localdomain>
 <045d01d5c427$81c41e60$854c5b20$@adrianschmutzler.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <045d01d5c427$81c41e60$854c5b20$@adrianschmutzler.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_003104_071619_C9FEE28A 
X-CRM114-Status: GOOD (  15.41  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record

Hi Adrian,

thanks a lot for patch.

I tested it on current trunk (bda6b6144d) and I can confirm that:
1. Works as expected, LTE can be turned off/on and value works as expected (0=off,1=on).
2. Works as expected. LTE module's httpd is started after boot and LTE module's web interface is available.
3. Seems to be working just fine. eth0 is still connected to switch (ports LAN1 to LAN3) while eth1 is connected to LAN4/WAN.
4. Interfaces are working just fine. Except for obvious problem with eth0 which has no link status detection.
5. Seems to be working just right. Even LAN LED turns off when I manually set eth0 interface down from shell.

I also tested buttons which still work fine.

Problem with link detection on eth0 which always reports interface as UP with
carrier even when there's nothing connected to switch remains unresolved.
I'd be willing to help with link detection but there already seems to be some
specific solution expected and I don't know what exactly is the expected way to
solve it.
So far ucidef_set_led_switch with port mask 0x0E can at least be used as a
workaround to make LAN LED show link detection on LAN ports (though this also
has negative impact on link activity visualisation).

Also the problem with unreliable boot causing LTE module to not always work
after boot is still present. This can be workarounded by turning LTE module off
and on again. I don't have this problem on ar71xx where LTE module always
realiably works just fine after boot. Though Enrico reported that he has this
problem even on ar71xx.

Anyway good progress, thanks for your work.

Filip


On Mon, Jan 06, 2020 at 01:23:22AM +0100, mail@adrianschmutzler.de wrote:
> Hi Enrico,
> 
> > -----Original Message-----
> > From: Enrico Mioso [mailto:mrkiko.rs@gmail.com]
> > Sent: Dienstag, 17. September 2019 19:59
> > To: mail@adrianschmutzler.de
> > Cc: Filip Moc <lede@moc6.cz>; openwrt-devel@lists.openwrt.org
> > Subject: RE: [OpenWrt-Devel] [PATCH] ath79: add support for TP-Link TL-
> > MR6400
> > 
> > Thanks! I'll take a look now.
> > Still, something should be interestingly wrong here:
> > 
> > root@OpenWrt:/# swconfig dev switch0 show|grep -i link
> >          link: port:0 link:up speed:1000baseT full-duplex txflow rxflow
> >          link: port:1 link:up speed:100baseT full-duplex auto
> >          link: port:2 link:down
> >          link: port:3 link:down
> >          link: port:4 link:down
> > root@OpenWrt:/#
> 
> I've just unearthed this topic in my mailbox and tried a port myself based on your V2 patch.
> 
> You will find the updated version in a branch of my staging repo here:
> https://git.openwrt.org/?p=openwrt/staging/adrian.git;a=shortlog;h=refs/heads/mr6400
> 
> (Most recent patch there.)
> 
> Despite several minor issues (sorting, rebase, etc.) I've also addressed the following major issues:
> 1. Use gpio-export again instead of gpio-hog, so LTE can be switched on/off
> 2. Added adb-enablemodem
> 3. Removed the phy-swap in DTS. This is not present in the mach-file for mr6400, only in the one for the fritzbox 4020 you took as blueprint.
> 4. Adjusted ports 2 vs. 3 in 02_network based on your assessment. This will most probably be wrong again now, as this might be influenced by the phy-swap.
> 5. LAN/WAN LEDs still won't work properly, as at least one will need to be changed to ucidef_set_led_switch, and I cannot check that without the device.
> 
> Best
> 
> Adrian




--===============8185491869030682388==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8185491869030682388==--
