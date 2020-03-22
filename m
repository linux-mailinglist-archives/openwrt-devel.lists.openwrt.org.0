Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CE9B18E96D
	for <lists+openwrt-devel@lfdr.de>; Sun, 22 Mar 2020 15:45:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6JE7hi/F42L6aG6IPgUnnFTev0NxvkUFwWwQgfgP4Gg=; b=PB2mUi9T5wUfVOz/zuc/eYAh1/
	7yi9WVZz1nwVpYT85DDrpwbisjVPnB0ObuVRjBoDJRvV1K3RIwoVa772f3ZLW86fNKJjLe/Io4qsU
	8SbIIn8CkyYGkCdLsmnI6Dp1hA/CgWuJyH0UEbom69eFgP/U7Yhih6WlsPz133/A6oD/15Ro694RK
	f+nwerZJ+VnTYtXqayI7Vv+w3BfzUffbhUB9HMJXYd/C8RTRASEdg5ga6o7p+lil6ttd/ImiZPwkO
	CqUbBgUKTFi9dfASrD45c01hRgmoApDhNxEL3FJgCYKOfmQ92TNIGnY66U/eNq1C/178uzKpNx481
	piNX4L7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jG1rD-0004oS-Ao; Sun, 22 Mar 2020 14:45:43 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jG1r6-0004nw-RS
 for openwrt-devel@lists.openwrt.org; Sun, 22 Mar 2020 14:45:38 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 53C19371C;
 Sun, 22 Mar 2020 15:45:34 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id f9289ece;
 Sun, 22 Mar 2020 15:45:20 +0100 (CET)
Date: Sun, 22 Mar 2020 15:45:20 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Rosen Penev <rosenp@gmail.com>
Message-ID: <20200322144520.GE85632@meh.true.cz>
References: <20200320234506.1310362-1-rosenp@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200320234506.1310362-1-rosenp@gmail.com>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_074537_037772_A0660498 
X-CRM114-Status: UNSURE (   4.73  )
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
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH] busybox: fix build with musl 1.2.0
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

Rosen Penev <rosenp@gmail.com> [2020-03-20 16:45:06]:

> The SYS_settimeofday is no longer present. That is, it's replaced with the
> time32 variant. There is no time64 variant.

FYI upstream email "busybox 1.31.1 build issues with glibc-2.31 and musl
1.2.0"[1] mentions other fixes as well. If more fixing is needed, it would be
nice to handle it via upstream first, thanks.

1. http://lists.busybox.net/pipermail/busybox/2020-March/087843.html

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
