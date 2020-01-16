Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0184713FB66
	for <lists+openwrt-devel@lfdr.de>; Thu, 16 Jan 2020 22:27:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:In-Reply-To:References:To:Date:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rl4QhSLCES/7mbObpwNrOy26f5XJAfEGQ9WPZXrP7LU=; b=RutPeIjlMeCWafpbW/vneKJXF
	X3us/I9J8/FbfoWApJZ9NNGjoIBDq8/q0aUKxzTnidW0yIjDygPtDVSsn+4Le7qJFyuOAyyH0PscW
	3i9BESCynDJ0Am2eneBiB7R7PDF62Uq52bwuTxGLjKesjo2/2E6GqpJzxYmRlCHr/iSOq++2iQZjj
	SALna2hHNEZi6Osu0Wgb+aWZ51SIXm92i1+o28mmRXwQKrOtOTD4xNEya0Fu+68xuj/yJibHzngfv
	+1FysHLe3Vten9dcfKloUaGcifw/NwJft8NpnRaF4jRytl9QLbW2f+ijb75pHnYLzPDn7tOeGpS7C
	4kkkLZtpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isCg1-0007p8-6y; Thu, 16 Jan 2020 21:27:41 +0000
Date: Thu, 16 Jan 2020 22:27:22 +0100
To: Adrian Schmutzler <mail@adrianschmutzler.de>
References: <20190917111452.GA9795@moc6.cz>
 <mailman.25352.1568730047.19300.openwrt-devel@lists.openwrt.org>
 <alpine.LNX.2.21.99999.353.1909171854080.1267560@mStation.localdomain>
 <012e01d56d79$a67cba00$f3762e00$@adrianschmutzler.de>
 <alpine.LNX.2.21.99999.353.1909171908150.1267595@mStation.localdomain>
 <007b01d56d7f$a787b2a0$f69717e0$@adrianschmutzler.de>
 <alpine.LNX.2.21.99999.353.1909171958450.1301929@mStation.localdomain>
 <045d01d5c427$81c41e60$854c5b20$@adrianschmutzler.de>
 <20200116083048.GA27998@moc6.cz>
 <00ef01d5cc5f$b9850680$2c8f1380$@adrianschmutzler.de>
In-Reply-To: <00ef01d5cc5f$b9850680$2c8f1380$@adrianschmutzler.de>
MIME-Version: 1.0
Message-ID: <mailman.25411.1579210053.2486.openwrt-devel@lists.openwrt.org>
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
Content-Type: multipart/mixed; boundary="===============4629429936845609069=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============4629429936845609069==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============4629429936845609069==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from hosting.moc6.cz ([2a02:c60:c70:8900::1] helo=moc6.cz)
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isCfq-0007oZ-B7
	for openwrt-devel@lists.openwrt.org; Thu, 16 Jan 2020 21:27:32 +0000
Received: by moc6.cz (Postfix, from userid 1025)
	id BDC212320020; Thu, 16 Jan 2020 22:27:22 +0100 (CET)
Date: Thu, 16 Jan 2020 22:27:22 +0100
From: Filip Moc <lede@moc6.cz>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
Cc: 'Enrico Mioso' <mrkiko.rs@gmail.com>, openwrt-devel@lists.openwrt.org
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for TP-Link TL-MR6400
Message-ID: <20200116212722.GA13139@moc6.cz>
References: <20190917111452.GA9795@moc6.cz>
 <mailman.25352.1568730047.19300.openwrt-devel@lists.openwrt.org>
 <alpine.LNX.2.21.99999.353.1909171854080.1267560@mStation.localdomain>
 <012e01d56d79$a67cba00$f3762e00$@adrianschmutzler.de>
 <alpine.LNX.2.21.99999.353.1909171908150.1267595@mStation.localdomain>
 <007b01d56d7f$a787b2a0$f69717e0$@adrianschmutzler.de>
 <alpine.LNX.2.21.99999.353.1909171958450.1301929@mStation.localdomain>
 <045d01d5c427$81c41e60$854c5b20$@adrianschmutzler.de>
 <20200116083048.GA27998@moc6.cz>
 <00ef01d5cc5f$b9850680$2c8f1380$@adrianschmutzler.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <00ef01d5cc5f$b9850680$2c8f1380$@adrianschmutzler.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_132730_544481_CC4B720A 
X-CRM114-Status: GOOD (  32.49  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record

Hi,

> Would you provide a proper Tested-by?
Sure, you can add "Tested-by: Filip Moc <lede@moc6.cz>" line as needed.

> We will definitely have to use ucidef_set_led_switch here. Are you sure about the port mask?
Yes I checked.
0x2 = LAN1, 0x4 = LAN3, 0x8 = LAN2   so   0x2 | 0x4 | 0x8 = 0xE

> What about the port order? Can you please verify the assignment of external port number vs. internal ports (just stupidly connect a cable and check with swconfig which port it is attached to)?
Matches ordering above.
switch0 Port 0 = SoC
switch0 Port 1 = External LAN1
switch0 Port 2 = External LAN3
switch0 Port 3 = External LAN2
switch0 Port 4 = always down

> Can you provide a detailed explanation of what you observe (what do you use for visualization of "link status detection")?
Simply type "ip link show dev eth0". When there is a link on any port of switch
it should be UP with carrier (not saying "NO-CARRIER"). When there is no link
on any external switch port it should say "NO-CARRIER".
This works fine on ar71xx. On ath79 it never says "NO-CARRIER" on eth0 even
when there's no cable connected to switch at all.
Another way to check for carrier is "cat /sys/class/net/eth0/carrier".
This is always 1 on ath79.

This causes some problems such as LED not showing link status with netdev
trigger and device won't behave optimally in many obvious network situations.
And of course also breaks user scripts relying on eth0 link detection.

Also when you're remotely troubleshooting some network issues one of first
things you do after you ssh to the device is usually typing "ip a". It can save
you a lot of time when you see NO-CARRIER on eth0 when it shouldn't be there.
This way it's confusingly telling the opposite.

> Do you refer to something specific in the boot process when you say "unreliable boot", or is this just backed up by the observation of the non-working LTE module? At the moment, this sounds to me like we could just put it in "Known issues". Can you provide a short piece of text for that (to be put in the commit message)?
Sometimes after boot LTE module is not working (not visible as USB device at all).
Relevant lines in dmesg:
[    5.662821] usb 1-1: new high-speed USB device number 2 using ehci-platform
[   10.884716] usb 1-1: device descriptor read/64, error -145
[   16.244841] usb 1-1: device descriptor read/64, error -71
[   16.574819] usb 1-1: new high-speed USB device number 3 using ehci-platform
[   21.799081] usb 1-1: device descriptor read/64, error -145
[   27.174820] usb 1-1: device descriptor read/64, error -71
[   27.294901] usb usb1-port1: attempt power cycle
[   28.116145] usb 1-1: new high-speed USB device number 4 using ehci-platform
[   33.574719] usb 1-1: device not accepting address 4, error -71
[   33.724710] usb 1-1: new high-speed USB device number 5 using ehci-platform
[   39.174715] usb 1-1: device not accepting address 5, error -71
[   39.180824] usb usb1-port1: unable to enumerate USB device

Possible workaround is to check whether LTE module is available after boot.
E.g. interface usb0 is present, 'adb devices' shows the device, relevant
symlinks are present in /sys/bus/usb/devices/.
When LTE module is not available power-cycle it. E.g by running this command:
(cd /sys/class/gpio/tp-link\:power\:lte/ && echo 0 > value && sleep 1 && echo 1 > value)

> Are there bug report/discussions to link?
Enrico mentioned it earlier in this thread and also reported it to me few years
ago (on ar71xx). He also did some research on why it does work on stock
firmware. Though he didn't seem to find any obvious workaround used by stock
firmware. Maybe Enrico could post his findings here.
I don't recall anyone else who reported this but I doubt there won't be anyone
else affected.
Since I have this problem only on ath79 and Enrico has this problem also on
ar71xx it is also possible that there are in fact two different problems.

> And does the device have a MAC address printed on it? I would assume the one from WiFi?
wlan0 has exact match with mac address printed on the label.
eth0 is -1 and eth1 is +1 relative to wlan0.


Filip


On Thu, Jan 16, 2020 at 12:25:58PM +0100, Adrian Schmutzler wrote:
> Hi,
> 
> thanks for your feedback.
> 
> I currently consider merging this (considering your reply on my questions below) and would include the few minor remaining issues as "Known issues" in the commit message.
> 
> Would you provide a proper Tested-by?
> 
> > -----Original Message-----
> > From: Filip Moc [mailto:lede@moc6.cz]
> > Sent: Donnerstag, 16. Januar 2020 09:31
> > To: mail@adrianschmutzler.de
> > Cc: 'Enrico Mioso' <mrkiko.rs@gmail.com>; openwrt-devel@lists.openwrt.org
> > Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for TP-Link TL-MR6400
> > 
> > Hi Adrian,
> > 
> > thanks a lot for patch.
> > 
> > I tested it on current trunk (bda6b6144d) and I can confirm that:
> > 1. Works as expected, LTE can be turned off/on and value works as expected
> > (0=off,1=on).
> > 2. Works as expected. LTE module's httpd is started after boot and LTE module's
> > web interface is available.
> > 3. Seems to be working just fine. eth0 is still connected to switch (ports LAN1 to
> > LAN3) while eth1 is connected to LAN4/WAN.
> 
> What about the port order? Can you please verify the assignment of external port number vs. internal ports (just stupidly connect a cable and check with swconfig which port it is attached to)?
> 
> > 4. Interfaces are working just fine. Except for obvious problem with eth0 which
> > has no link status detection.
> 
> Can you provide a detailed explanation of what you observe (what do you use for visualization of "link status detection")?
> 
> > 5. Seems to be working just right. Even LAN LED turns off when I manually set
> > eth0 interface down from shell.
> > 
> > I also tested buttons which still work fine.
> > 
> > Problem with link detection on eth0 which always reports interface as UP with
> > carrier even when there's nothing connected to switch remains unresolved.
> > I'd be willing to help with link detection but there already seems to be some
> > specific solution expected and I don't know what exactly is the expected way to
> > solve it.
> > So far ucidef_set_led_switch with port mask 0x0E can at least be used as a
> > workaround to make LAN LED show link detection on LAN ports (though this also
> > has negative impact on link activity visualisation).
> 
> We will definitely have to use ucidef_set_led_switch here. Are you sure about the port mask?
> 
> I will update my staging tree with the current value.
> 
> > 
> > Also the problem with unreliable boot causing LTE module to not always work
> > after boot is still present. This can be workarounded by turning LTE module off
> > and on again. I don't have this problem on ar71xx where LTE module always
> > realiably works just fine after boot. Though Enrico reported that he has this
> > problem even on ar71xx.
> 
> Do you refer to something specific in the boot process when you say "unreliable boot", or is this just backed up by the observation of the non-working LTE module? At the moment, this sounds to me like we could just put it in "Known issues". Can you provide a short piece of text for that (to be put in the commit message)? Are there bug report/discussions to link?
> 
> Best
> 
> Adrian
> 
> > 
> > Anyway good progress, thanks for your work.
> > 
> > Filip
> > 
> > 
> > On Mon, Jan 06, 2020 at 01:23:22AM +0100, mail@adrianschmutzler.de wrote:
> > > Hi Enrico,
> > >
> > > > -----Original Message-----
> > > > From: Enrico Mioso [mailto:mrkiko.rs@gmail.com]
> > > > Sent: Dienstag, 17. September 2019 19:59
> > > > To: mail@adrianschmutzler.de
> > > > Cc: Filip Moc <lede@moc6.cz>; openwrt-devel@lists.openwrt.org
> > > > Subject: RE: [OpenWrt-Devel] [PATCH] ath79: add support for TP-Link TL-
> > > > MR6400
> > > >
> > > > Thanks! I'll take a look now.
> > > > Still, something should be interestingly wrong here:
> > > >
> > > > root@OpenWrt:/# swconfig dev switch0 show|grep -i link
> > > >          link: port:0 link:up speed:1000baseT full-duplex txflow rxflow
> > > >          link: port:1 link:up speed:100baseT full-duplex auto
> > > >          link: port:2 link:down
> > > >          link: port:3 link:down
> > > >          link: port:4 link:down
> > > > root@OpenWrt:/#
> > >
> > > I've just unearthed this topic in my mailbox and tried a port myself based on
> > your V2 patch.
> > >
> > > You will find the updated version in a branch of my staging repo here:
> > >
> > https://git.openwrt.org/?p=openwrt/staging/adrian.git;a=shortlog;h=refs/heads
> > /mr6400
> > >
> > > (Most recent patch there.)
> > >
> > > Despite several minor issues (sorting, rebase, etc.) I've also addressed the
> > following major issues:
> > > 1. Use gpio-export again instead of gpio-hog, so LTE can be switched on/off
> > > 2. Added adb-enablemodem
> > > 3. Removed the phy-swap in DTS. This is not present in the mach-file for
> > mr6400, only in the one for the fritzbox 4020 you took as blueprint.
> > > 4. Adjusted ports 2 vs. 3 in 02_network based on your assessment. This will
> > most probably be wrong again now, as this might be influenced by the phy-swap.
> > > 5. LAN/WAN LEDs still won't work properly, as at least one will need to be
> > changed to ucidef_set_led_switch, and I cannot check that without the device.
> > >
> > > Best
> > >
> > > Adrian
> > 




--===============4629429936845609069==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4629429936845609069==--
