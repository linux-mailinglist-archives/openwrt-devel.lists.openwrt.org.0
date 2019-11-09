Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39FDAF5EEA
	for <lists+openwrt-devel@lfdr.de>; Sat,  9 Nov 2019 13:14:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:In-Reply-To:References:To:Date:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HmRb2IVgm64d/YL/f+8oh/uaI9D7oDjiwBE2fnbcba4=; b=mdiRhzyh2wlDLpmRBl3HaxK8U
	H7ZBmN1CHGfVINSi+fTFaHaoTSGvKKO7nzhwasBWAWHqzCTFdCGDkMmeYRy/Ri71neAHnsQqIM47B
	VgEx+CHWB3OSVs2Pnqb10A4L/sDV4ucneMWiN6KdXgQyyy/141c6eASNXUeoB/klFMbbeSlw6281q
	iha+Rk9/B23/CENdYplUOHeS9Rcv+mOEVtL+MU+eSevq2fdjZlKKsiDYG2bqBAu8ZKdJn1da7xGTm
	SvuQY+/RjlZTmx58xv5/e6JnbwCQxUrNum+ZPkrgwZEDATdFJ6WCGMeDbo1lq04K5cPNtvgvHVlfO
	vVkcxk49A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTPdV-0004KP-Q4; Sat, 09 Nov 2019 12:14:37 +0000
Date: Sat, 9 Nov 2019 13:14:20 +0100
To: 'Enrico Mioso' <mrkiko.rs@gmail.com>,
 Adrian Schmutzler <mail@adrianschmutzler.de>,
 John Crispin <john@phrozen.org>
References: <20190917193029.1336491-1-mrkiko.rs@gmail.com>
 <20191007214054.GA14886@moc6.cz>
 <alpine.LNX.2.21.99999.353.1910080711190.3029597@mStation.localdomain>
 <01d001d582a7$2a3edd90$7ebc98b0$@adrianschmutzler.de>
In-Reply-To: <01d001d582a7$2a3edd90$7ebc98b0$@adrianschmutzler.de>
MIME-Version: 1.0
Message-ID: <mailman.9999.1573301673.2486.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: Filip Moc via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: openwrt-devel@lists.openwrt.org,
 Daniel Dickinson <lede@daniel.thecshore.com>
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: Filip Moc <lede@moc6.cz>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: Re: [OpenWrt-Devel] [PATCH V2] ath79: add support for TP-Link
 TL-MR6400
Content-Type: multipart/mixed; boundary="===============0876197973764562890=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============0876197973764562890==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============0876197973764562890==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from hosting.moc6.cz ([2a02:c60:c70:8900::1] helo=moc6.cz)
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTPdO-0004Jf-Oa
	for openwrt-devel@lists.openwrt.org; Sat, 09 Nov 2019 12:14:32 +0000
Received: by moc6.cz (Postfix, from userid 1025)
	id 88AD12320021; Sat,  9 Nov 2019 13:14:20 +0100 (CET)
Date: Sat, 9 Nov 2019 13:14:20 +0100
From: Filip Moc <lede@moc6.cz>
To: 'Enrico Mioso' <mrkiko.rs@gmail.com>,
	Adrian Schmutzler <mail@adrianschmutzler.de>,
	John Crispin <john@phrozen.org>
Cc: openwrt-devel@lists.openwrt.org,
	Daniel Dickinson <lede@daniel.thecshore.com>
Subject: Re: [PATCH V2] ath79: add support for TP-Link TL-MR6400
Message-ID: <20191109121420.GB14590@moc6.cz>
References: <20190917193029.1336491-1-mrkiko.rs@gmail.com>
 <20191007214054.GA14886@moc6.cz>
 <alpine.LNX.2.21.99999.353.1910080711190.3029597@mStation.localdomain>
 <01d001d582a7$2a3edd90$7ebc98b0$@adrianschmutzler.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <01d001d582a7$2a3edd90$7ebc98b0$@adrianschmutzler.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_041430_951725_F0509003 
X-CRM114-Status: GOOD (  19.11  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record

Hi,

> What exactly are you referring to when you say "connection status events"?
Link detection does not work. eth0 is always reported as up with carrier even when
there is no cable connected to any port of the switch.

This seems related:
https://bugs.openwrt.org/index.php?do=details&task_id=1702&order=dateopened&sort=desc
And see also this comment and comments below:
https://github.com/openwrt/openwrt/pull/1146#issuecomment-408653790

It seems to me that link detection on this switch might be currently not
supported at all on ath79.
I did not find any bug report that would track this issue further so I'm not
really sure what the current status is.
But I find it hard to belive that so important feature wouldn't be supported.

Note also this comment on bug page by John: "it'll come when we add qca8k support".
But it seems qca8k support was already added to kernel long time ago:
https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/commit?id=e5dcad290a7c62d1c856269dbd13e470e388b704
So I'm not sure what support exactly needs to be added.

Perhaps John could explain what exactly needs to be done to get link detection
support on ag71xx. Then we could try to make some patch if needed.

--

I also found another problem. LTE module does not work reliably. Sometimes when
I boot MR6400 the LTE module is not detected. This never happens when I boot
ar71xx version.

Filip


On Mon, Oct 14, 2019 at 05:50:55PM +0200, Adrian Schmutzler wrote:
> Hi,
> 
> > -----Original Message-----
> > From: Enrico Mioso [mailto:mrkiko.rs@gmail.com]
> > Sent: Dienstag, 8. Oktober 2019 07:14
> > To: Filip Moc <lede@moc6.cz>
> > Cc: mail@adrianschmutzler.de; openwrt-devel@lists.openwrt.org
> > Subject: Re: [PATCH V2] ath79: add support for TP-Link TL-MR6400
> > 
> > Hi Filip, hello all!
> > 
> > Thank you very very much for your help and sorry for me not ansering to your previous mail. I tought I would re-check this all when I
> > went back home to report with precise informations, but in the end I didn't.
> > Your help is very very much apreciated.
> > 
> > As you found out, I would need help in exactly that: setting port numbers correctly in the UI and fixing the fact eth0 doesn't receive
> > connection status events.
> 
> What exactly are you referring to when you say "connection status events"?
> 
> This has two aspects: One is the LED status which needs to be set with switch0 (I commented on that in my previous e-mail reviewing your v2 patch again).
> 
> The other one is that switch-phy-swap has an effect on which ports can detect link status changes. This setting will affect several things:
> 1. Which port gets link detection
> 2. The port numbers will change
> 3. The order in which gmacs are set up will change: If you change that, eth0 will become eth1 and vice versa (on running system). This will require adjustment of setup in 02_network/01_leds, where ethX then needs to be swapped, too. Note that for several devices eth0/eth1 are swapped compared to ar71xx.
> 
> So, you really have a lot to play around with and to make wrong ;-)
> 
> For further reading on the effects of switch-phy-swap, you might have a look at this Pull Request (starting at the comment):
> 
> https://github.com/openwrt/openwrt/pull/1942#issuecomment-529078064
> 
> Note that the situation in the PR is even more complicated as the vendor did a dumbass setup in the first place.
> 
> Best
> 
> Adrian




--===============0876197973764562890==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0876197973764562890==--
