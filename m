Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0953142EAF
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Jan 2020 16:22:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YZDcWZOkUiHgOJqh1Wl3FJbSxgtfSg8JN3nfrhq+7M0=; b=L849ER62oFZ7XI
	TYbTR8QmXoxpmRRnQ+pXAGQAckApZTNOoV0s1Du3ZIgAkS93eZix7vcLLfYLu5FaZepcq9BcXtuww
	7A/TX1IupjQQcFZvpO6rLPMAtq9MATMLpdmbHwe8BrWoq/7onPGqd2mUIz3O5902HVlLRJZiTLICB
	SALDyoCUU90R9UcA2cNdcknR8ZN1d9XkhkcXsVddmFTyL1Gm83Wj4OD6viLMcwxvxThWHBpAyUfDd
	2Qu+u7BJahJdPLls9sFSitbyvtFEuuMDTEhi2lM89wUsPjgxIcGVDq4+SKJ7/eCGNj6G8G0iYDtEx
	T8BBB+ETg2Jrk8knBBCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itYsv-0002j4-4p; Mon, 20 Jan 2020 15:22:37 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itYsj-0002iH-CX
 for openwrt-devel@lists.openwrt.org; Mon, 20 Jan 2020 15:22:30 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.2) (envelope-from <daniel@makrotopia.org>)
 id 1itYse-0006Te-8t; Mon, 20 Jan 2020 16:22:21 +0100
Date: Mon, 20 Jan 2020 17:22:09 +0200
From: Daniel Golle <daniel@makrotopia.org>
To: Paul Spooren <mail@aparcar.org>
Message-ID: <20200120151327.GA468137@makrotopia.org>
References: <90038f66-81fc-6b34-1b85-b47aab83368a@aparcar.org>
 <CAFBinCByt2Jukn5ZgtrABF2OtqduT733LEvvZLqd97j60Vj9dQ@mail.gmail.com>
 <4f4382fd-ab37-cccb-5bca-b20ab13c1f96@aparcar.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4f4382fd-ab37-cccb-5bca-b20ab13c1f96@aparcar.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_072225_424838_8538E347 
X-CRM114-Status: GOOD (  17.83  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [RFC] commit message in YAML format for new
 devices
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Paul,
Hi Martin,

On Sun, Jan 12, 2020 at 10:13:42PM -1000, Paul Spooren wrote:
> Hi,
> 
> On 1/12/20 1:05 PM, Martin Blumenstingl wrote:
> > Hi Paul,
> > 
> > On Sun, Jan 12, 2020 at 10:47 PM Paul Spooren <mail@aparcar.org> wrote:
> > > Hi all,
> > > 
> > > some time ago I created a (now outdated) device overview[0] based on
> > > YAML meta data. This approach could simplify maintaining an device
> > > overview and device specific pages[1].
> > > 
> > > All commits adding new devices already include most relevant information
> > > for creating the overview. However it would be convenient if developers
> > > would format their commit messages in a generic format, therefore I'd
> > > propose the following:
> > > 
> > > Every commit message for newly added devices must contain a number of
> > > hardware information and steps for an initial installation.
> > > The hardware information should contain at least the following
> > > information, maybe more:
> > > 
> > > SoC, flash, ram, wifi, LEDs, buttons, USB, serial, vendor, model, device
> > > tree ID, Ethernet ports
> > can we automate this somehow?
> > the device tree files already contain most of that information.
> 
> If you have a tool to extract such data or ideas on how to create such,
> that'd be great.
> 
> As an alternative I could also create a shell script that extracts data on a
> running machine, but that might miss some details.

I think that's the better idea, because device-tree doesn't necessarily
cover everything. at runtime we can access /sys/devices/... to get most
relevant info. some things (like the type of the flash chip) are more
tricky apparently, I do this to extract (NOR) flash-chip from dmesg for
example:

for fc in $(for fp in /sys/class/mtd/mtd*/device; do basename $(readlink $fp); done | grep -v mtd | sort -u); do dmesg | grep -o "${fc}:.*bytes.*"; done

(works only straight after boot, once the logbuffer run full this info
is no longer available)

some things, such as the number of USB ports is really tricky, because
many times there are USB hub chips involved and simply not all ports of
the hub are exposed...


Just my 2 cents...


Cheers


Daniel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
