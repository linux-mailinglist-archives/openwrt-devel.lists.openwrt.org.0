Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E92B158F52
	for <lists+openwrt-devel@lfdr.de>; Tue, 11 Feb 2020 13:57:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=aWmMOVrwRf2uSlu8QoKed+fsWOJdS/RTJRq0nNgLea0=; b=md2pQpW40EyfUsqrEJjWelTVlA
	ICJkVl5mc5kSlh0M4+oFX9kwp0vo9QNl6zLlpw38iHRXoJmkr4RoHO9lWDa7qi/T6HNbqlvCrYKB9
	SijTdFYPVQqs67qTqOgthzj7p6wpHB4HdrkETtK+765AgnKZt4cRwzey+/XK8EEE52NjTIZZZEpaG
	iKrnEE0f/7fCExasyj7qiKPKs6XjS1GDVR8UNgGxkXC714Oh83zLsoZDDXxjC//HGNx3DPFS8tEqF
	c4SElMJehNqOZ/E8jJVScjnn2xSyR68zWJ1i3tlRgA9gjk0lbvlhgl0+h/OatFhS/KNM73+aowj8Z
	B89HETcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1V6o-0008WQ-DY; Tue, 11 Feb 2020 12:57:46 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1V6f-0008W7-Bq
 for openwrt-devel@lists.openwrt.org; Tue, 11 Feb 2020 12:57:38 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 88AF34DC9;
 Tue, 11 Feb 2020 13:57:34 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id c85e93c7;
 Tue, 11 Feb 2020 13:57:23 +0100 (CET)
Date: Tue, 11 Feb 2020 13:57:33 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: daxiong <lxliu@ikuai8.com>
Message-ID: <20200211125733.GA25629@meh.true.cz>
References: <1572858360-85946-1-git-send-email-lxliu@ikuai8.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1572858360-85946-1-git-send-email-lxliu@ikuai8.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_045737_556077_9C2E053F 
X-CRM114-Status: UNSURE (   3.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] busybox: support output new-linux model
 for arp
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

daxiong <lxliu@ikuai8.com> [2019-11-04 17:06:00]:

Hi,

> Compatible with the output of net-tools.
> Using new-linux model by default.

send this patch upstream, thanks!

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
