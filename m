Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6F7713DF33
	for <lists+openwrt-devel@lfdr.de>; Thu, 16 Jan 2020 16:50:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-ID:References:In-Reply-To:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jeUH0o/mhH26vekyLsadiIK6sKr7voqDnWoaEmUBIkk=; b=t4oA4dVnacROeXJklZtlZuDeq
	z5+30v8A4bNPd/9VoHTEKJr94iolPhC84fMh6zNV+mpPpkbePfYyHl91TM7O3ioAlvhrJqzwODL8D
	tI0upGz6U38LMrFRnp2QXZ6XptPByLpHLrOxKkjExAEuk7o26Bz6a5GEjS8Z+Ye5sp1qel8Qcfm9y
	nLwM+jEUjzzd+XICpVHoV4wuSLOBFsnW1U8e29uAUOXHTEqcvrHtCj2LsEVu3UQtEwrFP/nhx0Qym
	U/Av5a4+02/vgkRW0XXxOjubH2xpQy7SascS31K824C06o+q5ELSU1ED9UAEGAB7MxDR/EFH/QHxh
	9hIowgZXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is7PS-0007Rn-08; Thu, 16 Jan 2020 15:50:14 +0000
Received: from host-88-217-225-28.customer.m-online.net ([88.217.225.28]
 helo=mail.dev.tdt.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is7PE-0006Yw-V5
 for openwrt-devel@lists.openwrt.org; Thu, 16 Jan 2020 15:50:05 +0000
Received: from mail.dev.tdt.de (localhost [IPv6:::1])
 by mail.dev.tdt.de (Postfix) with ESMTP id 6680A20B01;
 Thu, 16 Jan 2020 15:49:54 +0000 (UTC)
MIME-Version: 1.0
Date: Thu, 16 Jan 2020 16:49:54 +0100
From: Florian Eckert <fe@dev.tdt.de>
To: Jo-Philipp Wich <jo@mein.io>
In-Reply-To: <4d87ee2e-eb66-2747-3220-2e1398fa96fd@wwsnet.net>
References: <20191205105805.29869-1-fe@dev.tdt.de>
 <4d87ee2e-eb66-2747-3220-2e1398fa96fd@wwsnet.net>
Message-ID: <b336ea783cef109483d58aa9e26eb781@dev.tdt.de>
X-Sender: fe@dev.tdt.de
User-Agent: Roundcube Webmail/1.1.5
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED autolearn=ham
 autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.dev.tdt.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_075001_150363_7E82EF8B 
X-CRM114-Status: GOOD (  11.49  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
 0.3 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
Subject: Re: [OpenWrt-Devel] [PATCH v2] wireguard: fix interface remove for
 lonely peers
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

Thanks for feedback

> I think this behavior is not really acceptable. Programs, init scripts,
> hotplug events etc. should not automatically modify (and commit) uci
> configurations, especially not such vital ones like the network config.

The new wireguard init script is only executed if the network 
configuration
has changes. This is triggered by the procd ubus service.

> The main problem I see is that you do not know what state the config is
> in at any point in time, whether there are other (intentionally!)
> uncommitted user changes etc.

Yes, I agree, but I couldn't think of any other solution for this 
problem
without touching the current configuration handling as you mentioned 
below

> Wouldn't it be better to modify the code deleting the wireguard
> interface to delete the peer sections as well? Or to remodel the
> wireguard configuration model to cope with orphaned peer sections?

I already thought of that. I could imagine a list item that references
the peers in the interface section. If this wireguard interface section
is deleted then these list element sections should also be deleted.

For example

config interface 'wg
         option proto 'wireguard
         option private_key 
'8OGwbqPFAJjjMgdF1kwkNYQ+uXCUYMWMyJjreDsruMk4='
         list peers <name1>
         list peers <name2>

config wireguard_test <name>
         option endpoint_host 'test.de
         option public_key 
'Cs46OJr5d3NoDRYf/g2l0RINYLvaypQCMtchlJhQgSQ='.
         list allowed_ips '0.0.0.0

Deleting an interface section in LuCI is generic. So I don't know if we 
should
do this and make an exception for wireguard.

Best regards Flo

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
