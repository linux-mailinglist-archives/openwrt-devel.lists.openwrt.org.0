Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99C71CF6D2
	for <lists+openwrt-devel@lfdr.de>; Tue,  8 Oct 2019 12:15:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DUGsi3SfgJhpg77HHUYi2LjLoddekjH0oBHK75ogeeA=; b=ddv2LvnG3Gg6Qj
	wW/WiI+rBvMYr+S96yITK9v6UDEPCMPl4NKUqZOoF0fr8Uzsmoar8/zyUignngGh3GLKs4N41dlLw
	9XtL81qzVekpGceGoZ+CK6jcZp6uv5hweHBqLjt0++ByHOW3XBDVs4b9/Qamrzl1oDgbFaMh3DQqb
	QgnjzI3JrDODUrLGdbq2YiERF6QqYdG6QWDCud7UZFLIjjyvgC6I6TDDxfJnJ0qqFhSMbST/BtDdj
	+Uq+KEp21THBoCIW6aZPlpeg3uiiOBCP13CogKUizLEYYUtZ/R9A6a8jtYC0ilKFPW8j0SHkX0krC
	WWIR9UVsJ4wl63VXQ2vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHmWU-0003YX-KB; Tue, 08 Oct 2019 10:15:18 +0000
Received: from web0119.zxcs.nl ([2a06:2ec0:1::119])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHmWM-0003UH-4R
 for openwrt-devel@lists.openwrt.org; Tue, 08 Oct 2019 10:15:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=oranjevos.nl; s=x; h=To:References:Message-Id:Content-Transfer-Encoding:Cc:
 Date:In-Reply-To:From:Subject:Mime-Version:Content-Type:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vOFmHhqAsX7t7ssev1bobQuEnu3OnfAM1HScRWfG37c=; b=Eo3LNbNWq9l5CxHxmIcF/gojgS
 yZ9mKEePsHJYp693Hzjy3E/Rg4mggJ7IfaYNzos8DusjsvudZtC6I9oHGPnpdNyXQuKXHgBmHORqx
 BLK5hOqwLchyaztfMsg357g2cSJ6+DHRsIbP1hvObNltxORlYvESOSfw374AeVsWIvLTYkpYuvcvi
 YuNKTmgAqE1gQoJOE4yu3KIaBgNb5mXPA+WvOrDeq9RrcpOh+Z+ByDu3p1bAlt6Kf6zOxVANGBD0q
 G6JXrTUAPnjAUMYOlQmWqnapuQAVXxRjzcgSXE04iZtVuGtlVjeVsSFNwR9GmcfaBSpf37kcoWNwu
 j3vNMemw==;
Received: from dhcp-077-248-110-239.chello.nl ([77.248.110.239]:61715
 helo=boekje.achterlaan)
 by web0119.zxcs.nl with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92.2) (envelope-from <por@oranjevos.nl>)
 id 1iHmWK-002NOE-Kx; Tue, 08 Oct 2019 12:15:08 +0200
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
From: Paul Oranje <por@oranjevos.nl>
In-Reply-To: <20191008010225.8822-1-rosenp@gmail.com>
Date: Tue, 8 Oct 2019 12:14:58 +0200
Message-Id: <944A6623-FEF1-4AC9-9A1E-B7D3566CF8A9@oranjevos.nl>
References: <20191008010225.8822-1-rosenp@gmail.com>
To: Rosen Penev <rosenp@gmail.com>
X-Mailer: Apple Mail (2.3445.104.11)
X-Authenticated-Id: paul@oranjevos.nl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_031510_326046_19703F6A 
X-CRM114-Status: UNSURE (   5.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH 1/8] ncurses: add cygwin compatibility
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

> Op 8 okt. 2019, om 03:02 heeft Rosen Penev <rosenp@gmail.com> het volgende geschreven:
> 
> From: Alexey Loukianov <lx2@lexa2.ru>
> 
> * Properly handle ".exe" suffix for cygwin.
> 
> Signed-off-by: Alexey Loukianov <lx2@lexa2.ru>
> (bumped PKG_RELEASE)
> Signed-off-by: Rosen Penev <rosenp@gmail.com>

Two questions:
Is there any cover to this series of 8 patches that seemingly aim to add cygwin compatibility ?
And why would this project ever need cygwin compatibility, which will likely require quite some maintenance efforts ?

Any effort to make .exe files callable senses like getting into troubled waters, even if more analysis would prove such fears aren't warranted.

In short: to what purpose, what use-case ?

Regards,
Paul


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
