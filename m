Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29C92B47B3
	for <lists+openwrt-devel@lfdr.de>; Tue, 17 Sep 2019 08:52:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-ID:References:In-Reply-To:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=exqyIYnvXFp9e6AlmNeTi9KplK9jG/hzqpjo4hWc7+M=; b=izXNpxKRKlVSlb3Nf0p4WpFbp
	bN1EngyfXkfRm2yudyO0A2xRdpvSNp2elmn8zzYsbF2pNCjmotfc4lOp3p9JlXUVG2v8jQ89lC/6B
	FujEVnECyqPZ+SPrLhsbdQXXmasXoY/gspEXihEvQTkAJrw9EN+LgOTXZKhYB5ZuhjCPIFSdWR2eI
	RvaY9ZPNhZHoLZjkdeDV0r2e//PUhTXESiX215wrDhurTXN+zgfOQNPB4gli+3kzehpiQab1/BQ5b
	/SjeHbdlFvC8r/qdV50MJBrOaxgcqiMSP1hgqyMnacsd74fTsVBTDeAfJgW0h9aJwp4FtbYmkak/d
	gZUVhd6Ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA7LF-00022k-16; Tue, 17 Sep 2019 06:52:01 +0000
Received: from host-88-217-225-28.customer.m-online.net ([88.217.225.28]
 helo=mail.dev.tdt.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA7Kz-00022O-Md
 for openwrt-devel@lists.openwrt.org; Tue, 17 Sep 2019 06:51:47 +0000
Received: from mail.dev.tdt.de (localhost [IPv6:::1])
 by mail.dev.tdt.de (Postfix) with ESMTP id 8FFB52040E;
 Tue, 17 Sep 2019 06:51:39 +0000 (UTC)
MIME-Version: 1.0
Date: Tue, 17 Sep 2019 08:51:39 +0200
From: Martin Schiller <ms@dev.tdt.de>
To: Hauke Mehrtens <hauke@hauke-m.de>
Organization: TDT AG
In-Reply-To: <d630be45-4151-05bf-970e-049795ff58d6@hauke-m.de>
References: <26a9b03930d8b13ab11d66f654976619@dev.tdt.de>
 <CAFBinCCEveoA3nFyZEqg4XLoe_pzC9Fz=OTfugOyMQoKmqBetQ@mail.gmail.com>
 <d630be45-4151-05bf-970e-049795ff58d6@hauke-m.de>
Message-ID: <12bbb7d0ba2039812cd9fa154a8080d5@dev.tdt.de>
X-Sender: ms@dev.tdt.de
User-Agent: Roundcube Webmail/1.1.5
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED autolearn=ham
 autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.dev.tdt.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_235145_897761_E565321B 
X-CRM114-Status: GOOD (  17.95  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
Subject: Re: [OpenWrt-Devel] Lantiq xrx200: Access to ethernet phy registers
 (MDIO) from userspace
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
 openwrt-devel@lists.openwrt.org, john@phrozen.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 2019-09-16 22:43, Hauke Mehrtens wrote:
> On 9/16/19 7:09 PM, Martin Blumenstingl wrote:
>> Hi Martin,
>> 
>> On Mon, Sep 16, 2019 at 12:54 PM Martin Schiller <ms@dev.tdt.de> 
>> wrote:
>>> 
>>> Hi!
>>> 
>>> I am searching for a possibility to disable Auto Negotiation of an
>>> PEF7072 which is attached to MAC1 of the Lantiq xrx200 switch.
>>> 
>>> The xrx200-net driver does not seem to have support for that.
>> I don't know about xrx200-net, but ...
>> 
>>> Accessing the STD_CRTL register on the mdio bus from uboot with the 
>>> mdio
>>> command works like expected.
>>> 
>>> Any suggestions how to do that from linux userspace?
>> ... my (limited) understanding is that this is one of the benefits of 
>> DSA:
>> you get one interface per port - with that you can use for example
>> ethtool to disable auto negotiation for one port
>> kernel source reference: [0]
> 
> I also do not know if xrx200-net supports that or if it is possible 
> with
> swconfig at all. There is also a DSA driver for this switch in the
> mainline kernel:
> https://elixir.bootlin.com/linux/latest/source/drivers/net/dsa/lantiq_gswip.c
> 
> This driver should support everything the xrx200-net driver supports
> plus some extras.
> I would prefer to use the DSA driver also in OpenWrt, but we need a way
> to migrate the existing configurations which are based on swconfig to 
> DSA.
> 
> You could try the fixed-link attribute in device tree to model this 
> with
> DSA.

Thanks for your answers.

Switching to DSA would be nice, but it's too much work I can't afford 
right now.

Disabling ANEG in the DTS is not enough, because I also need a way to 
turn
ANEG on and off at runtime.

Meanwhile I found out that there is a mechanism with swconfig to 
configure
the link attributes:

https://git.openwrt.org/?p=openwrt/openwrt.git;a=commitdiff;h=6219b3deae1c8dfbf405f5a701d3f3b00ebacce1

I will try to integrate this into the "old" xrx200-net driver.

Martin

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
