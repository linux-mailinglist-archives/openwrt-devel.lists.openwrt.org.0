Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F512168F21
	for <lists+openwrt-devel@lfdr.de>; Sat, 22 Feb 2020 14:31:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=s2DTBmWzRGDyE+EUlUdGdKmNaLSngt0GZAehfHEskdc=; b=hEZ+s81Bb/auIS8EO8N8Id4+X+
	oJFTFGbdApSghc982ceLSlxVaZthUmxeb2fYs1oMiYCJjDCFIvjzI+oSJJy+n4S9F2FHuyQdB8p/1
	6e0NjGTs3Lfw1Bn8cITd38wf2BG+a++OeWX9zQgnUlBi+I7sxE3LkUl+Fh6ZVGoV8DKae9fDk6Vt2
	cAHp+l/y93T4aZmQBtJBS4Az2UR/XCxxzGuN5eHjU/NpJULQdyWFDeEJMyMC0A9jUg5RPFicYOabA
	4nkfHOFtxIxW3JYtI5dghZwa0GCHe2LXu2mWsmuo3szk9puOnEQmXHu1sk063tZ9Yi6LmvhA/Sysx
	a9YzmcsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5Usi-0005q4-0C; Sat, 22 Feb 2020 13:31:44 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5UsT-0005oS-O1; Sat, 22 Feb 2020 13:31:31 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 9FBBE4584;
 Sat, 22 Feb 2020 14:31:26 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 198c9dbb;
 Sat, 22 Feb 2020 14:31:13 +0100 (CET)
Date: Sat, 22 Feb 2020 14:31:13 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Rosen Penev <rosenp@gmail.com>
Message-ID: <20200222133113.GE99033@meh.true.cz>
References: <56105ce3-f528-c9da-d8dd-370c80829e53@mein.io>
 <CAKxU2N8Z+gbkav1_5ZNG3brXwZGNqkGtObx9MY-m_o+kh0crhw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKxU2N8Z+gbkav1_5ZNG3brXwZGNqkGtObx9MY-m_o+kh0crhw@mail.gmail.com>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_053129_932099_54038AB5 
X-CRM114-Status: UNSURE (   6.74  )
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
Subject: Re: [OpenWrt-Devel] Next maintenance releases
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Jo-Philipp Wich <jo@mein.io>,
 OpenWrt Project Administration <openwrt-adm@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Rosen Penev <rosenp@gmail.com> [2020-02-21 14:55:55]:

Hi,

> I would like https://patchwork.ozlabs.org/patch/1221697/ to be applied.
> It makes no sense to have broken functionality in the tree.

thank you for taking care, but I'm not going to merge this into 19.07.

It looks like it doesn't fix anything, "just" a build failure of ffmpeg by not
building it. ffmpeg won't build even after this change, so I don't see a point
of this change in the stable release, in sensitive toolchain area, which might
potentialy introduce some regression in other parts.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
