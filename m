Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8B7219E9DB
	for <lists+openwrt-devel@lfdr.de>; Sun,  5 Apr 2020 10:18:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kCBtHba/b8xvfnKqR9ru0q7Wjuv6+LaBcAHm6LoUT0M=; b=j6S+abA6IMU/CG
	xOVBCFn910olP54qtAfi3Kep2ZVZUDZnL/m27e7DlErmzi1bYvEe8j/j8B/cfA1kb7rgQSlszowBe
	frdkTscDFSj48bhX4xYhs/j/8pc2tJY6Dw6vVCelcd2XrekwPDhqo5b1uYjNIVVDsx3qgQnm5Ut8L
	HHDyfEwyxyS7Ws9D35JQN5gmAJU8gFsV7Xi+Y+dJTGjzmhnhU0kW5liqTuJpzIWfAIUkTrsnZChbX
	18DzH+IQ8dT1JD6AyyILQm48g1amtNm4apeaTTZCPvJrpJyMlgd081skIidmM/7VIfcHAgsCpRFVA
	9wOiXYOTgpwg67K1CHCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jL0UT-0003Fe-GD; Sun, 05 Apr 2020 08:18:49 +0000
Received: from mail1.systemli.org ([2c0f:f930:0:5::214])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jL0UN-0003FE-Ps
 for openwrt-devel@lists.openwrt.org; Sun, 05 Apr 2020 08:18:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=systemli.org;
 s=default; t=1586074712;
 bh=4ZKCSeA9R4Lq+o3Eji9LiFXZ/AyFWh4jMPWiFeUmVXk=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=kjVuNESn+oOLZ3Fn+m7jZq2uE5JHcFQf0ENyz5U3x8GSWYhGg9bCTfHuavG1VTexY
 1SJxZPF/YcnBoYcmPHJaDamKz8V+8UEZhbP6GIAyXvEslUcI+UjcbSWo3fV1reAxbL
 4nKoBDk8S6hgPVlz+rd9jRoIrfJYEBPhEi3euLWM08DnCeeDoi+5RvrQYuOXDxxxOl
 83rQzQnUv+BzRwIc+akzOqserTkRSpX+j0YfCF3N42fe13IMLUSen0rdUYI6ZsdDO3
 4fn0gRX3kXRi6mNUEX1kV1hNDtU7iyMS70gsuDwelsJ78te25tTZm0m34ls9IYRhn+
 0dez7DQHpCLqQ==
To: openwrt-devel@lists.openwrt.org
References: <20200405072012.86761-1-vincent@systemli.org>
 <20200405080042.90240-1-ldir@darbyshire-bryant.me.uk>
From: Nick <vincent@systemli.org>
Autocrypt: addr=vincent@systemli.org; prefer-encrypt=mutual; keydata=
 mQINBFtFAUgBEADDaCEZA9bEzp1K8PGBAEgsQUZ46wNMg4T2ST2nhbtiyPJ/CNLNBxgbcI8y
 i9+sey53BV7517ySY5x3ZBC2K+ffHsTrCQTo0mxRBaTW9lTDzmJl/gciT4wD2b8deOZFr30A
 ZAY5TbzZNnna63xHLvyW8FoUauY8Ohptuhye+QjPgJbPJHgIE1p+kYP2+mvJQQYgj0binoRi
 ha2gN8NA2ZUfs6XucoRrd4BENAv0JcL+39KFaJTFcGLGjy4k/B/J6mFiKtEugA6gKDj9Z+Wa
 USZYxyKU0VxON2jALERmKizVn7GACF6Ldm4y5OCMksyMzX19zEBh/V3lPpIO4UZraSpRaET/
 WdT2ENEm2OHGnIACyv5bynBUVQ2K385jz2g7Y5Dc10ZgV09hi4bszPyRPEPnSgRJf4+JxiSB
 QQMLD00QSe9WQHL2nbcVXaJjn5RubEy3zsqRQ/rqva3LK7aFJYNLyRwh1V/Or2IK/2qwJ2+8
 dFq2FSVrAnydM4EfY39kFXlp8VWm693W6uXxgfh15OD750ygWtCj/+nCA5jtZfxqOvUsha86
 VVK9Y7gLrZ5VNu4NxS3h0oHYXTCITZnjngOpbhyiB+Y0MpLuCL4y6fK04bAt6BkLb2aGxaTP
 Q72qYQub+ZHhgk9JAk9fqQgXUq7Cjf80mLIyzv6nYLhyuknuNQARAQABtBhOaWNrIDxuaWNr
 QHN5c3RlbWxpLm9yZz6JAlQEEwEKAD4WIQRX4OJSvdKh3ub4B0byOyDCWguzugUCW0UBSAIb
 IwUJAeEzgAULCQgHAgYVCgkICwIEFgIDAQIeAQIXgAAKCRDyOyDCWguzuvhmD/48hfTXlxVD
 5IJ9gpiYPG7LnhSARxqDK+YTvLct4HnRCg4I0S4ZaBgiCqyoyZyJ3xqqvfWURvL6I8NiqdYL
 u8juoxGqrhXzvGTIEV621EcTGdGlvzAAqNu37FdEZwI28rCKX09YX52xMe5dk2+8wRnp1JKH
 agq79Gw1OaG7NIBoWQxfqSXBjlK1A68fSkGER+mWMtNQhWIjeGomwXEKV36w7zvNgfIWqACS
 8K0gKG6aWNHT//jcftDGEv+emsLy97sh4C4jvucxPXQ6AZABw1dSRiMr5zONTL0CGOsElcQK
 M9QTT8tmEiiYt/Eg9XmT3AXJp+Paewpu7IZqn2NrS4CFr3Q9pglGc9o9FWaorIZVE8TxA7/y
 ZM4QQA/QzlK/i9PzaHF6JTnJAHRuAv+gpXVwvlPigiAEPr/bKL8gvsSA2FjDy0qJXAsKTnw6
 TwETtWYuzEtTMwUmsDwpELvfL9MmWpM15b2vK5GxkTt3fHCWDEj511NPMTVnEy0DrwMPO3Vh
 61+a74nX0TbM17PgOzhTgbXFTKwz3urYEelkOc4WQKO50lmbQ7KknNpL8egNk1T0HHSwYNs9
 voWkHjMmOlpQeoUCk80TtoMLudG2Jy5o/a2OROfPuq7YcHCMK66eH7RyRwvC7F/eJYk4WZQJ
 lzX5Db6FXC8DptuX1f2ymUCFPQ==
Message-ID: <e3c7a377-c6fa-e2aa-c8a2-f159f5855b57@systemli.org>
Date: Sun, 5 Apr 2020 10:21:11 +0200
MIME-Version: 1.0
In-Reply-To: <20200405080042.90240-1-ldir@darbyshire-bryant.me.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_011843_988193_38B50D0B 
X-CRM114-Status: UNSURE (   2.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] Merged: umdns: fix unused error
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Thanks for your quick reply. :)
Should I update the umdns Makefile in the openwrt.git, too?

On 05.04.20 10:00, Kevin Darbyshire-Bryant wrote:
> Merged.
> Thank you!
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
