Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C19FD146158
	for <lists+openwrt-devel@lfdr.de>; Thu, 23 Jan 2020 06:24:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-ID:References:In-Reply-To:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=43g2qWCiKTT0b9R2vgFH0F4MeGi1S/mZZfrU20zwkM4=; b=ATQexea/xRWzQZ03Ekh8ICRg/
	mE15gUvYTZO1wUrIsDdVA98fZhLX3rAa21chK4V1/LsO9F0XrYj0s5ovSw99X553JCngrz//MWxx5
	CMBymTthT3UsTTG5Lz4B6iYj4OQFIVnEFYXE0uOnODK5eW2u/WEigb9AKgDVO78VHrLr5IncJeG+2
	hCDrZX++xqUJhWFsPVI0sHHhLojp86Pse+pgLbHAFtwqrfyewDwLYbOPRgrdaZO6ve6G7bs2C9v/H
	UmSOPoyqHDucD0wOLKQUhk1OJpgrJwMlWzj/UFKsimFyWSSpzbBAWY4mKaj9rcl0FaPkEytZlPx1A
	U8rvfPLLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuUyN-0002fa-OU; Thu, 23 Jan 2020 05:24:07 +0000
Received: from host-88-217-225-28.customer.m-online.net ([88.217.225.28]
 helo=mail.dev.tdt.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuUyE-0002fD-Rb
 for openwrt-devel@lists.openwrt.org; Thu, 23 Jan 2020 05:24:00 +0000
Received: from mail.dev.tdt.de (localhost [IPv6:::1])
 by mail.dev.tdt.de (Postfix) with ESMTP id 52473206FF;
 Thu, 23 Jan 2020 05:23:43 +0000 (UTC)
MIME-Version: 1.0
Date: Thu, 23 Jan 2020 06:23:43 +0100
From: Martin Schiller <ms@dev.tdt.de>
To: hauke@hauke-m.de, dev@kresin.me, john@phrozen.org
Organization: TDT AG
In-Reply-To: <f8b9504bce18a40802fbd4fce311d72c@dev.tdt.de>
References: <5ccf9fbfc18409f9bee1b02810d08794@dev.tdt.de>
 <bdb9fff0b07cf7885b88b82c358918ae@dev.tdt.de>
 <f8b9504bce18a40802fbd4fce311d72c@dev.tdt.de>
Message-ID: <5197fddfc9d043e1f80068b6699da16c@dev.tdt.de>
X-Sender: ms@dev.tdt.de
User-Agent: Roundcube Webmail/1.1.5
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED autolearn=ham
 autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.dev.tdt.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_212359_047466_71A72F70 
X-CRM114-Status: GOOD (  13.22  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
 0.3 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
Subject: Re: [OpenWrt-Devel] Lantiq xrx200: PTM issues
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
Cc: openwrt-devel@lists.openwrt.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Just for reference:
I've opened a pull request with a fix here:
https://github.com/openwrt/openwrt/pull/2707

- Martin

On 2020-01-21 06:28, Martin Schiller wrote:
> Ok, I think I've got it:
> 
> The "sk_wmem_alloc" is decremented in sock_wfree() which is called
> by kfree_skb.
> 
> But in ptm_hard_start_xmit() of the ifxmips_ptm_vdsl.c, the skb
> only gets freed immediately, if the skb_headroom is to small or
> the skb is cloned. In this case the skb is copied to a new one and
> the original skb gets freed.
> 
> Otherwise the skb only gets freed after a complete round through
> the TX descriptor table.
> 
> My suggestion would be, to always copy the skb.
> 
> - Martin
> 
> On 2020-01-20 13:45, Martin Schiller wrote:
>> Update:
>> 
>> I've found out now that the ENOBUFS is set by __ip_append_data,
>> because sk_wmem_alloc "overflows".
>> 
>> Martin
>> 
>> 
>> On 2020-01-20 07:09, Martin Schiller wrote:
>>> Hi!
>>> 
>>> I have discovered the following problem:
>>> 
>>> If you have established a PPPoE session via VDSL / PTM connection 
>>> incl.
>>> VLAN tagging and send data with a relatively small send buffer
>>> (SO_SNDBUF), then an ENOBUFS always comes back.
>>> 
>>> We first noticed this with stagnating data transfers over an OpenVPN
>>> connection.
>>> 
>>> Also with iputils-ping, since by default the send buffer is 
>>> relatively
>>> small.
>>> 
>>> You can also force this with busybox ping by using
>>> 
>>> echo "5000"> / proc / sys / net / core / wmem_default
>>> 
>>> minimizes the system default value.
>>> 
>>> Then you send pings with a packet size of e.g. 4000 bytes and the
>>> second package is already in the pants:
>>> 
>>> ------------------------------------------------------------
>>> root @ OpenWrt: ~ # ping -s4000 10.200.1.142
>>> PING 10.200.1.142 (10.200.1.142): 4000 data bytes
>>> 4008 bytes from 10.200.1.142: seq = 0 ttl = 63 time = 20.519 ms
>>> ping: sendto: No buffer space available
>>> root @ OpenWrt: ~ #
>>> ------------------------------------------------------------
>>> 
>>> So it should be easily reproducible for everyone.
>>> 
>>> Traffic that is only routed through the router is not affected.
>>> 
>>> The manpage of sendto says:
>>> -----------------------------------------------------------------------
>>> ENOBUFS
>>>     The output queue for a network interface was full. This generally
>>>     indicates that the interface has stopped sending, but may be 
>>> caused
>>>     by transient congestion. (Normally, this does not occur in Linux.
>>>     Packets are just silently dropped when a device queue overflows.)
>>> -----------------------------------------------------------------------
>>> 
>>> But all former packets have already been transmitted.
>>> 
>>> This issue seems to be in there since lede-17.01.
>>> 
>>> I can't reproduce it with owrt-15.05.
>>> 
>>> Does anyone have any idea how to solve the problem?
>>> 
>>> Martin
>>> 
>>> _______________________________________________
>>> openwrt-devel mailing list
>>> openwrt-devel@lists.openwrt.org
>>> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>> 
>> 
>> _______________________________________________
>> openwrt-devel mailing list
>> openwrt-devel@lists.openwrt.org
>> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
> 
> 
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
