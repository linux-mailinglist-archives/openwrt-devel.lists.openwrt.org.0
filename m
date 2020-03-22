Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AF5018E8FE
	for <lists+openwrt-devel@lfdr.de>; Sun, 22 Mar 2020 13:49:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=07hsa4rB11wLLujaVeaLVr09y4x/LsYUwn//h52lsro=; b=Gssrgr7g0bDVwbTGG4hbNmJs3u
	/ySunjF3xs3UxEN5xLVW+3K1u1rQUbs8zZ7ORnDBE5jVzU9GKhgRHY5SNWwYAV3TI349hmAnWHANu
	ugJ0cGM61sS/AkV3GFHVZ3wDPUnxK1hDvrQlurdyc6XAFopZwexvaNQcb0kcCGLkiTvPFuTHcmSlj
	rcZUa+KWfGlMNVm0zPI/i02vvP2PeZXoQmkXXiIzGvlFuCHcpdvbzJzGPMTzE7B4AWByM/Bq+OBGX
	Io/SswMIj13Yhrlw/Z9xly8Bx6i9dTKDBS94gr/JewDoCsugzTxJ3rcS1Adr1M+C6xmH9I3hvzCHo
	M1/JHl7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jG02g-0003Hm-Vy; Sun, 22 Mar 2020 12:49:27 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jG02Z-0003GS-1G
 for openwrt-devel@lists.openwrt.org; Sun, 22 Mar 2020 12:49:21 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 8BD95354E;
 Sun, 22 Mar 2020 13:49:14 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 5e7259c4;
 Sun, 22 Mar 2020 13:49:00 +0100 (CET)
Date: Sun, 22 Mar 2020 13:49:00 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Lars Kruse <lists@sumpfralle.de>
Message-ID: <20200322124900.GC85632@meh.true.cz>
References: <20200322132134.2933e467@erker.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200322132134.2933e467@erker.lan>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_054919_235261_27E7F986 
X-CRM114-Status: UNSURE (   7.61  )
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
Subject: Re: [OpenWrt-Devel] Repository for release or snapshot build
 configuration?
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

Lars Kruse <lists@sumpfralle.de> [2020-03-22 13:21:34]:

Hi,

> I assume, that there is a set of build configuration snippets that are used for
> building the different targets. Or maybe it is combined with the buildbot setup?

 git checkout -b foo \
   $(curl https://downloads.openwrt.org/releases/19.07.2/targets/x86/64/version.buildinfo | cut -d - -f2)
 curl https://downloads.openwrt.org/releases/19.07.2/targets/x86/64/feeds.buildinfo > feeds.conf
 curl https://downloads.openwrt.org/releases/19.07.2/targets/x86/64/config.buildinfo > .config

should be enough for reproducible build[1] with some limitations, like for
example on x86/64 you should be able to get exactly same core packages, but
images still needs some love.

You can find some details in the commit[2] implementing it.

> For now I was looking for this information in the following places:
> * https://openwrt.org/releases
> * https://openwrt.org/infrastructure
> But for now I failed :(

Feel free to add the missing bits over there, it's just a wiki.

1. https://tests.reproducible-builds.org/openwrt/openwrt_x86.html
2. https://git.openwrt.org/378b51908c06bca0af0d19e976fd0db51699ae7c

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
