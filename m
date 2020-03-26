Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 362EF19377B
	for <lists+openwrt-devel@lfdr.de>; Thu, 26 Mar 2020 06:18:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	To:From:Date:In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=f84aR3lJ0hd4l1nyvrZxWouoPMeAbBfuriyWRCiFss4=; b=CUV6/CDEktVIKE
	R4iYNs3KxZS0soskwozmgVthXNIutk2Nlt82HAxT+Z1Tx2Le5uPpGaoW2ACnNZm32i8rG3JSeOTCU
	U41W4RODcg4hjMOb1tro9klylSFnSDmBlv4lqcxRzYEi/wAoG/JIH3vTgFJMMDBk92G54wwUyAZNa
	DhUZeCQN3UgrLgipcc1j7sn1P6xb9eXqtA3BrG9jPXauGhBD8gWc22Ui6RF+CeuZpB86tGBAe7F6/
	yjtnhagIpCkVXD88qOVyr74kmg0JJn7CL8FR/xrJhcMa+D6dKVVYdqU7EdowC7lRU0Gic8a0dasKP
	CWdW8ZKNtvV3Y/mglrTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHKtr-0002ZB-0D; Thu, 26 Mar 2020 05:17:51 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHKth-0002Yp-Vi
 for openwrt-devel@lists.openwrt.org; Thu, 26 Mar 2020 05:17:43 +0000
Received: from localhost (udp057936uds.hawaiiantel.net [72.234.241.177])
 (Authenticated sender: mail@aparcar.org)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 0C3E0240002;
 Thu, 26 Mar 2020 05:17:31 +0000 (UTC)
In-Reply-To: <50954aaf-3a70-ed79-f780-0a4e035c79d3@o2.pl>
Date: Wed, 25 Mar 2020 19:16:44 -1000
From: "Paul Spooren" <mail@aparcar.org>
To: "Tomasz Maciej Nowak" <tomek_n@o2.pl>, "Daniel Golle"
 <daniel@makrotopia.org>, <mail@adrianschmutzler.de>
Message-Id: <C1KIFKQB4APU.2QBDSIB9ZWHZ8@tb>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_221742_155027_C7F01051 
X-CRM114-Status: UNSURE (   5.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] x86: fix virutalbox squashfs images
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
Cc: openwrt-devel@lists.openwrt.org, russell@personaltelco.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

> >> typo in title and missing "R" in name directly above.

Ack

>
> This script is for only your typical block devices, no MTD involved.
>
> > Looks like you should rather fix the logic setting
> > CONFIG_TARGET_IMAGE_PAD.
>
> This has been removed with
> https://git.openwrt.org/d03ef97c1b57b2b5588115d3b7c7355399874aa3,
> and this option here was rebase issue.

So can I just fix the typo and everyone is okay?

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
