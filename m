Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (unknown [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BFC41416EC
	for <lists+openwrt-devel@lfdr.de>; Sat, 18 Jan 2020 10:59:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o+GGl8Yq1iiopDpZkwpr6tHsqcjknKKPVjiu/yDrBtE=; b=YXbzF0Ac8OtVZE
	psRmrX78kz4zUvD/joAj4EIeXuzYlUZdfbNjWZ2+2UiJRPd4YKLoI6GbXGhqkQ0Imy1ifN/reqMx1
	+Vm7Fp2pJzTsDBsZkqTq380qV2EOaXV0huwQaJf7xpHCyhLLoyHb5Pao1274GsBH9oCYkElFof3JH
	W1wKgbjGryrJUh8a7u6xoJCMHINMS8pBOIcVLceBptJC3u/ZlPPiJLAChgT/dRjLfp4k4JTk1rBR8
	wYxGcwKNKUBGH7tTGYe8L5vuQonDtIYYeqAkrjyVSIPubKrD2sRb8/kvZKfRHoWaarytUHix1Vmo0
	dtsJKEeqhdIQQ9C1YY3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iskrW-0004EP-Of; Sat, 18 Jan 2020 09:57:50 +0000
Received: from mail1.systemli.org ([2c0f:f930:0:5::214])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iskrQ-0004DV-0P
 for openwrt-devel@lists.openwrt.org; Sat, 18 Jan 2020 09:57:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=systemli.org;
 s=default; t=1579341424;
 bh=6pVFMqtYbjFjDIaqLnQ2kU8quhzLvgJjFnr1AhS3GZo=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=8yFTHGyFDXMxI0YrYwI9K/AjIfK/Ywswe1OfbcwIXC4qJq8X5O8FZeUpau0M+fMWK
 DBIrmAfeZy4c1hR0mdgDC3y3M50H8rBHefbtn/HbpIpTFCzgQltNUVqKi/NAh44CgJ
 Suy84q8bbEyUon+s6Cl7AN0+cVX/UH+/jjNLUUpXFLGAPPLrFFh9Mzscm3u0TVZPpo
 /bprWJFbeuHYWeUGFISxMtu3Hnzl6hUPLnpJLGB/DhJFQ9MUyJu0SrSrulL3U2M3PA
 I1onXJZ6DUDPNowCGuLuGKRYiQiIvv96A4Xb7W9yBmYVgA8g8K0dDrHXR1hB0ygByM
 yNnuw/d5jEKGA==
To: openwrt-devel@lists.openwrt.org
References: <20200116115100.1906-1-freifunk@adrianschmutzler.de>
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
Message-ID: <cd546dda-75d2-171d-0dce-3c614f63ce71@systemli.org>
Date: Sat, 18 Jan 2020 10:57:29 +0100
MIME-Version: 1.0
In-Reply-To: <20200116115100.1906-1-freifunk@adrianschmutzler.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200118_015744_506253_9AA6F75C 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH v2 1/5] linux-firmware: add wil6210
 firmware
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

I have several issues on a x86_64 testbed.

> https://github.com/openwrt/openwrt/pull/2417#issuecomment-575878911
I think, they are not directly related to the patches, but something is
strange, and make 60 ghz out-of-the-box not working on OpenWrt.
Espeically, the segmentation fault in the ubus library, is strange and
further the netfid stuff will crash... :/

On 16.01.20 12:50, Adrian Schmutzler wrote:
> From: Robert Marko <robimarko@gmail.com>
>
> This patch adds wil6210 firmware and board files.
> Firmware version is not up to date but is only freely
> redistributable one I found.
> Board file is a generic one so most devices and especially those
> for long distance PtP links will require so in a ipq-wifi like way.
>
> Signed-off-by: Robert Marko <robimarko@gmail.com>
> ---
>  package/firmware/linux-firmware/qca.mk | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/package/firmware/linux-firmware/qca.mk b/package/firmware/linux-firmware/qca.mk
> index 23fcc0905a..71b484d5c7 100644
> --- a/package/firmware/linux-firmware/qca.mk
> +++ b/package/firmware/linux-firmware/qca.mk
> @@ -37,3 +37,11 @@ define Package/carl9170-firmware/install
>  	$(INSTALL_DATA) $(PKG_BUILD_DIR)/carl9170-1.fw $(1)/lib/firmware
>  endef
>  $(eval $(call BuildPackage,carl9170-firmware))
> +
> +Package/wil6210-firmware = $(call Package/firmware-default,wil6210 firmware)
> +define Package/wil6210-firmware/install
> +	$(INSTALL_DIR) $(1)/lib/firmware
> +	$(INSTALL_DATA) $(PKG_BUILD_DIR)/wil6210.fw $(1)/lib/firmware
> +	$(INSTALL_DATA) $(PKG_BUILD_DIR)/wil6210.brd $(1)/lib/firmware
> +endef
> +$(eval $(call BuildPackage,wil6210-firmware))

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
