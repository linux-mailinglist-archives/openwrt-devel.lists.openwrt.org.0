Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7EDE46E88
	for <lists+openwrt-devel@lfdr.de>; Sat, 15 Jun 2019 08:10:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:
	Message-ID:Date:In-Reply-To:References:To:From:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nUa+WkCAj+fJ5PQ+m+QBvamfXNo/ZLwWNc6Kh8XRGjs=; b=qvA2BufCnxZ+UXHIbxXQK/tWd/
	w3QEOCD07Rkg6zT4vc1rIEsaeXwpPnM3WM9EuZtCjby25ob0yZrG8rlgUTqkqhLipHn2wsAmaRc7G
	LnS5Dxn/GgmRDwMIXgpEvq21B8A4h+FjkhaowBCpoV6jqByxNnBHQSbASkOAAp7PMfxgBpbH4upUt
	b3yGJm/NavnyWwZiEWxLTXhSvEtK7OVrS8ihQ4fOkQVEncubB6Sk2DCUxqvOQch7dCsL6U4gh9fcy
	3xH6ZWkq4h4oz47x0RJQLZ0o4ZXKCvrQje8+vgiPTLD8w8253Il9Fr5g7o2icqndQpI03vuRS4cr7
	g+1ihSDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hc1tb-0005sY-NN; Sat, 15 Jun 2019 06:10:35 +0000
Received: from ipmail03.adl2.internode.on.net ([150.101.137.141])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hc1tS-0005rj-C1
 for openwrt-devel@lists.openwrt.org; Sat, 15 Jun 2019 06:10:29 +0000
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2BRAABO3/Jb/42cEXdiGwEBAQEDAQEBB?=
 =?us-ascii?q?wMBAQGBUwQBAQELAYIDZgVKIRIng3iINUKLaQEBAQEBAQaBNTUBgn6FUw6EaYk?=
 =?us-ascii?q?4FIFmJQ0GAYM/ATpABAICg2wjNgcNAQMBAQIBAQJtHAyFPAEBAQEBAgEBBgIZB?=
 =?us-ascii?q?AEuGAMUAQMCBgMRAQMBAQMCHwcCAhkIBgEREAYIAgQTCwWDEoFpAwgMEKYCEYE?=
 =?us-ascii?q?jfAIxhC0BgQOCRQ2CFAWBC4sReIEHgRGDEoJWRQECAoEig0CCVwKDd4UshWyQM?=
 =?us-ascii?q?i4JAn2BIIQaQYYUboNDkH2NOYEIiyIFLIFVbBk7gUmBIz+CEYhMhVAwMIEgCBO?=
 =?us-ascii?q?NIQEB?=
Received: from 119-17-156-141.nbn.mel.aussiebb.net (HELO MATTDESKTOP)
 ([119.17.156.141])
 by ipmail03.adl2.internode.on.net with ESMTP; 15 Jun 2019 15:40:18 +0930
From: "Mathew McBride" <matt@traverse.com.au>
To: "'openwrt-devel'" <openwrt-devel@lists.openwrt.org>
References: <2766c2b3-3262-78f5-d736-990aaa385eeb@pobox.com>
In-Reply-To: <2766c2b3-3262-78f5-d736-990aaa385eeb@pobox.com>
Date: Sat, 15 Jun 2019 16:10:08 +1000
Organization: Traverse Technologies
Message-ID: <000a01d52340$fc466a90$f4d33fb0$@traverse.com.au>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQGuYh1TENvhTJE/deRTn+RTdQu90wLrauYA
Content-Language: en-au
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_231026_849071_A7967C8B 
X-CRM114-Status: GOOD (  13.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [150.101.137.141 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [150.101.137.141 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Understanding Ethernet Architecture (I/O -->
 MDIO --> MII vs I/O --> MAC) for mt7620 (OpenWRT)
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
Reply-To: matt@traverse.com.au
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Daniel,
MDIO is a low-speed management bus to talk between the CPU and the Ethernet PHY's, it's best thought of as "I2C for Ethernet PHYs" (the concepts between the two are similar). 
Like I2C there can be multiple devices on the MDIO bus so each PHY needs an address, and in cases where multiple MACs and MDIO controllers exist on a system you don't necessarily have to use one MDIO controller for a particular MAC.

This is only for reporting things like the current link speed and setting some PHY registers (like what LEDs to drive and if you want to force 10/100/1000 instead of autoneg) - if you have a connection whose electrical characteristics never change (e.g between a SoC<->Switch/xDSL/WiFi/Cable PHY on the same board) then there might be _no_ MDIO communication between them.
(In these cases one might have to force certain link parameters in the MAC registers, the 'fixed-link' driver in the kernel can be used to do this)

The actual Ethernet traffic is passed over the R(G)MII/SGMII/etc. which is point to point (not a "bus") between the MAC and the link-partner.
Note that if you have a Ethernet switch (either as a separate chip or buit-in to the SoC), your "link-partner" is the switch fabric, not any ports downstream.
So if you manipulate the MAC registers for the SoC<->Switch you are only manipulating the connection between the two.

I can't comment on the MT7620 specifically, but its quite likely there is no MDIO between the CPU MAC and the switch, and that the switch is configured "out-of-band" by another method - and this would include any ethernet PHYs that are part of the switch.

Hope this helps,
Matt


-----Original Message-----
From: openwrt-devel <openwrt-devel-bounces@lists.openwrt.org> On Behalf Of Daniel Santos
Sent: Saturday, 15 June 2019 8:53 AM
To: Daniel Golle <daniel@makrotopia.org>; Felix Fietkau <nbd@nbd.name>; openwrt-devel <openwrt-devel@lists.openwrt.org>; John Crispin <blogic@openwrt.org>; Michael Lee <igvtee@gmail.com>; netdev@vger.kernel.org
Subject: [OpenWrt-Devel] Understanding Ethernet Architecture (I/O --> MDIO --> MII vs I/O --> MAC) for mt7620 (OpenWRT)

Hello,

I'm still fairly new to Ethernet drivers and there are a lot of interesting pieces.  What I need help with is understanding MDIO --> (R)MII vs direct I/O to the MAC (e.g., via ioread32, iowrite32).  Why is there not always a struct mii_bus to talk to this hardware?  Is it because the PHY and/or MAC hardware sometimes attached via an MDIO device and sometimes directly to the I/O bus?  Or does some type of "indirect access" need to be enabled for that to work?

I might be trying to do something that's unnecessary however, I'm not sure yet.  I need to add functionality to change a port's auto-negotiate, duplex, etc.  I'm adding it to the swconfig first and then will look at adding it for DSA afterwards.  When I run "swconfig dev switch0 port 0 show", the current mt7530 / mt7620 driver is querying the MAC status register (at base + 0x3008 + 0x100 * port, described on pages 323-324 of the MT7620 Programming Guide), so I implemented the "set" functionality by modifying the MAC's control register (offset
0x3000 on page 321), but it doesn't seem to change anything.  So I figured maybe I need to modify the MII interface's control register for the port (page 350), but upon debugging I can see that the struct mii_bus *bus member is NULL.

So should I be able to change it via the MAC's control register and something else is wrong?  Why is there no struct mii_bus?  Can I talk to the MII hardware in some other way?

Thanks,
Daniel

https://download.villagetelco.org/hardware/MT7620/MT7620_ProgrammingGuide.pdf

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
