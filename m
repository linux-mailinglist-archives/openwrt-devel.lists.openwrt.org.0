Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD59118E831
	for <lists+openwrt-devel@lfdr.de>; Sun, 22 Mar 2020 12:00:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nfQ9pQj4AHBuK8ESX28QmpGohJq/FCuGc6JVjAjBW+8=; b=Bk58sWzvPf0o22
	ccrphd0aaFfVY0DpCcmm4l2qNbZfGRhJk3IOxfBPokDKki3knltQY0TglCX83TlDggy7VZFu9hwFg
	Ws2+mol6KKnqFbnUq2J6/yuPDHLa9gpX8hibSFS3Q/XzA2WG8LKi7TqUdzz3YN7VxUQMMLXCB8CAx
	f/kK0QrNrt5QLllTB+XSNp16rdV22Jx1TUL9XpwOW7e7LUrQhWongsZ4RSJMOtyWqIqO6DVAXflg2
	bOaUmeiwhIutWcZeSbmu90iHU2T8UJ/PWYA7SR6QPhW0I6n4LLMYAzTKU5zi1I2qSBQzJ0u0zGHnF
	jIDkfycohL/nn3XTsWhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFyLN-0006qj-MB; Sun, 22 Mar 2020 11:00:37 +0000
Received: from mail1.systemli.org ([2c0f:f930:0:5::214])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFyLE-0006pV-G2
 for openwrt-devel@lists.openwrt.org; Sun, 22 Mar 2020 11:00:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=systemli.org;
 s=default; t=1584874825;
 bh=ZBG6QPzBGNxLRaPOon2b4EvVPcY1LE22YpfCmwhRiOk=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=GYw6zPMgceMCfKSoi9RDMG8TwmJLydM7ivC2xhCrz18bnWLou4O3ngAnOKdoUHzBn
 FAOPtMyC+QZdp2VfUT7PbSmHAaJjeUOPeejONODLPbWEJY++fJz2iy44ENHyEBIVdd
 X9yJYz51YRw843p8AOSmbKksyZ1vnk9n2CiuFImQMb9UeaCUxhFUODOF2E0FxKyzFf
 +KrJNqKvxW1DqlA+t+R0lYTul9I2acwD4e5mVzW4sxMotrybXsZaaT5polzgv5KooF
 7FiI2vzSUZyeOCrusOsZN7D0hPHQTq4Zpsq4zUfq6SPs/9tFG5HK66/OgAQi3eZr4d
 YTy2OofGsvagw==
To: openwrt-devel@lists.openwrt.org
References: <20200322105640.13705-1-vincent@systemli.org>
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
Message-ID: <06f9afb3-7f05-ef5a-1bfd-b07e8560f352@systemli.org>
Date: Sun, 22 Mar 2020 12:02:54 +0100
MIME-Version: 1.0
In-Reply-To: <20200322105640.13705-1-vincent@systemli.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_040028_837782_B0561217 
X-CRM114-Status: GOOD (  11.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] hostapd: expose beacon reports through
 ubus
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

The Github PR: https://github.com/openwrt/openwrt/pull/2597
If you look in the comments, another person tested the PR already.

I would appreciate, if that could be merged.

Until now, you only can send beacon request via ubus, but not receive
the actual answer from the client via ubus.
I changed that with the patch.

On 22.03.20 11:56, Nick Hainke wrote:
> Subscribe to beacon reports through ubus.
> Can be used for hearing map and client steering purposes.
>
> First enable rrm:
>     ubus call hostapd.wlan0 bss_mgmt_enable '{"beacon_report":True}'
>
> Subscribe to the hostapd notifications via ubus.
>
> Request beacon report:
>     ubus call hostapd.wlan0 rrm_beacon_req '{"addr":"00:xx:xx:xx:xx:xx", "op_class":0, "channel":1,"duration":1,"mode":2,"bssid":"ff:ff:ff:ff:ff:ff", "ssid":""}'
>
> Signed-off-by: Nick Hainke <vincent@systemli.org>
> ---
>  .../hostapd/patches/600-ubus_support.patch    | 12 ++++++++++
>  .../services/hostapd/src/src/ap/ubus.c        | 24 +++++++++++++++++++
>  .../services/hostapd/src/src/ap/ubus.h        |  6 +++++
>  3 files changed, 42 insertions(+)
>
> diff --git a/package/network/services/hostapd/patches/600-ubus_support.patch b/package/network/services/hostapd/patches/600-ubus_support.patch
> index 6842c0e63e..b2860780eb 100644
> --- a/package/network/services/hostapd/patches/600-ubus_support.patch
> +++ b/package/network/services/hostapd/patches/600-ubus_support.patch
> @@ -458,3 +458,15 @@
>   		case 'o':
>   			params.override_driver = optarg;
>   			break;
> +--- a/src/ap/rrm.c
> ++++ b/src/ap/rrm.c
> +@@ -89,6 +89,9 @@ static void hostapd_handle_beacon_report
> + 		return;
> + 	wpa_msg(hapd->msg_ctx, MSG_INFO, BEACON_RESP_RX MACSTR " %u %02x %s",
> + 		MAC2STR(addr), token, rep_mode, report);
> ++	if (len < sizeof(struct rrm_measurement_beacon_report))
> ++		return;
> ++	hostapd_ubus_notify_beacon_report(hapd, addr, token, rep_mode, (struct rrm_measurement_beacon_report*) pos, len);
> + }
> + 
> + 
> diff --git a/package/network/services/hostapd/src/src/ap/ubus.c b/package/network/services/hostapd/src/src/ap/ubus.c
> index e25c3294ee..eb26c14972 100644
> --- a/package/network/services/hostapd/src/src/ap/ubus.c
> +++ b/package/network/services/hostapd/src/src/ap/ubus.c
> @@ -1269,3 +1269,27 @@ void hostapd_ubus_notify(struct hostapd_data *hapd, const char *type, const u8 *
>  
>  	ubus_notify(ctx, &hapd->ubus.obj, type, b.head, -1);
>  }
> +
> +void hostapd_ubus_notify_beacon_report(struct hostapd_data *hapd, const u8 *addr, u8 token, u8 rep_mode, struct rrm_measurement_beacon_report *rep, size_t len)
> +{
> +	if (!hapd->ubus.obj.has_subscribers)
> +		return;
> +
> +	if (!addr)
> +		return;
> +
> +	blob_buf_init(&b, 0);
> +	blobmsg_add_macaddr(&b, "address", addr);
> +	blobmsg_add_u16(&b, "op-class", rep->op_class);
> +	blobmsg_add_u16(&b, "channel", rep->channel);
> +	blobmsg_add_u64(&b, "start-time", rep->start_time);
> +	blobmsg_add_u16(&b, "duration", rep->duration);
> +	blobmsg_add_u16(&b, "report-info", rep->report_info);
> +	blobmsg_add_u16(&b, "rcpi", rep->rcpi);
> +	blobmsg_add_u16(&b, "rsni", rep->rsni);
> +	blobmsg_add_macaddr(&b, "bssid", rep->bssid);
> +	blobmsg_add_u16(&b, "atenna-id", rep->antenna_id);
> +	blobmsg_add_u16(&b, "parent-tsf", rep->parent_tsf);
> +
> +	ubus_notify(ctx, &hapd->ubus.obj, "beacon-report", b.head, -1);
> +}
> diff --git a/package/network/services/hostapd/src/src/ap/ubus.h b/package/network/services/hostapd/src/src/ap/ubus.h
> index 27acd32659..64ff7f5787 100644
> --- a/package/network/services/hostapd/src/src/ap/ubus.h
> +++ b/package/network/services/hostapd/src/src/ap/ubus.h
> @@ -26,6 +26,7 @@ struct hostapd_ubus_request {
>  struct hostapd_iface;
>  struct hostapd_data;
>  struct hapd_interfaces;
> +struct rrm_measurement_beacon_report;
>  
>  #ifdef UBUS_SUPPORT
>  
> @@ -45,6 +46,7 @@ void hostapd_ubus_free_bss(struct hostapd_data *hapd);
>  
>  int hostapd_ubus_handle_event(struct hostapd_data *hapd, struct hostapd_ubus_request *req);
>  void hostapd_ubus_notify(struct hostapd_data *hapd, const char *type, const u8 *mac);
> +void hostapd_ubus_notify_beacon_report(struct hostapd_data *hapd, const u8 *addr, u8 token, u8 rep_mode, struct rrm_measurement_beacon_report *rep, size_t len);
>  
>  void hostapd_ubus_add(struct hapd_interfaces *interfaces);
>  void hostapd_ubus_free(struct hapd_interfaces *interfaces);
> @@ -78,6 +80,10 @@ static inline void hostapd_ubus_notify(struct hostapd_data *hapd, const char *ty
>  {
>  }
>  
> +static inline void hostapd_ubus_notify_beacon_report(struct hostapd_data *hapd, const u8 *addr, u8 token, u8 rep_mode, struct rrm_measurement_beacon_report *rep, size_t len)
> +{
> +}
> +
>  static inline void hostapd_ubus_add(struct hapd_interfaces *interfaces)
>  {
>  }

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
