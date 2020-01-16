Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C08C13D5C9
	for <lists+openwrt-devel@lfdr.de>; Thu, 16 Jan 2020 09:16:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6uRMhMEnByEOY4CCsoM78vnuZlvZwxt/B5o8O98znYk=; b=i+QFQUcP4Ls4wS
	4g0Zkt9rWBlKyI/E83CrJnus+QjYfRMjsxEAkE+8+pydzn6dN5pbpQc3EStP3chvhvgvnzj6Nf+QP
	khdvdav1E3Sju06VJJ+fBpEUWyIw3tNq0GxktQyS7zihbsSj2tWZUH7gP5uZc6RimGpw2qWcXgbDY
	9sZ5h0KU5MNFW2j/DT3LIc2PR06zj9x8OSQbQm4JI3XK7mW+H0O272bUeUjsRXLUGOT27K6cOjBXb
	yK2WrLoEsY2KqjB2XPQGAyDnxJOBc7shN/IrPolV6Fbda5I5PKYVO4HZLO16Nlpj49gbNUBefS2dN
	CbcFxOwAE37ayVCKoeww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is0KR-0001qm-Mf; Thu, 16 Jan 2020 08:16:35 +0000
Received: from mail1.systemli.org ([2c0f:f930:0:5::214])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is0KI-0001px-A0
 for openwrt-devel@lists.openwrt.org; Thu, 16 Jan 2020 08:16:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=systemli.org;
 s=default; t=1579161982;
 bh=kf068mwi3Y4QXuW1WsIUtsizvoxPbABBv0W/Ky1KQeo=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=ffVoNY9UFB1d2D0Si7S6dbaAvCewCDKkXS9rI5HP0QIrN1kRND0wxAFg0EykP+5Nq
 DW2R8xJNzMTCDxa9dGmzCHiEpFvd9vfsAFqBvaZi0FH79oQR/gvjGVrrBC1AQuM/tp
 oyrydaxYfn27W7XU/1VK9UNi+oK3WEwJhZNGb8CJfS9pg1QdElga0/cOyYkzwwmb8y
 v5gbCI8sCO9oSd0Fajicnwk/ypLep5jApAEpMhYZUvHieGruqzlBWRsMk5DWcy9MA4
 7zBmW48AFF1oo/HrZix26lImYY0lWHFULTw4SWskLwEWa+Gq0PoZxhFB/SXA/1ZkZW
 NqXrYSv0WIsRg==
To: openwrt-devel@lists.openwrt.org
References: <20191108181408.18272-1-freifunk@adrianschmutzler.de>
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
Message-ID: <627b0350-dd09-018f-bfed-60c895c75ae2@systemli.org>
Date: Thu, 16 Jan 2020 09:08:01 +0100
MIME-Version: 1.0
In-Reply-To: <20191108181408.18272-1-freifunk@adrianschmutzler.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_001626_800408_C1FD026C 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH 0/5] Add 802.11ad support
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

Why are this patches not merged upstream?
You always have to rebase and solve merge conflicts if you work on 60
GHz. :/

I would really appreciate it if this is merged. And if there is a reason
why this stuff is not getting upstream, I volunteer to work on it.

Best,
Nick

On 08.11.19 19:14, Adrian Schmutzler wrote:
> Cc: Robert Marko <robimarko@gmail.com>
>
> This is a pick of commits from device support PR #2417:
> https://github.com/openwrt/openwrt/pull/2417
>
> There has been a request to merge those particular commits,
> as they are required for any 60 GHz capable device, so
> merging them will obviously make things easier for other
> developers.
>
> The credit for writing them goes to robimarko, I'm just
> bringing them to the list to speed things up a little.
>
> I'd be happy to receive comments, Acked-by or Reviewed-by
> feedback, as I cannot properly review them on my own.
>
> Robert Marko (5):
>   linux-firmware: add wil6210 firmware
>   mac80211: add wil6210 driver
>   mac80211: add 802.11ad support
>   base-files: wifi: add 802.11ad support
>   hostapd: wpa_supplicant: enable proper GCMP cipher support
>
>  package/base-files/files/sbin/wifi             |  1 +
>  package/firmware/linux-firmware/qca.mk         |  8 ++++++++
>  package/kernel/mac80211/ath.mk                 | 18 +++++++++++++++---
>  .../kernel/mac80211/files/lib/wifi/mac80211.sh | 18 +++++++++++-------
>  .../network/services/hostapd/files/hostapd.sh  |  7 +++++++
>  5 files changed, 42 insertions(+), 10 deletions(-)
>

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
