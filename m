Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64EE8138750
	for <lists+openwrt-devel@lfdr.de>; Sun, 12 Jan 2020 18:21:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jzCGPEKiDbIwtIcx4LpKUJha/i9t9XbajApmSE15qxU=; b=rREEFWKBudaUkvsKZu/asuX8zB
	J+CiHQAu9nTnT2M5yWrRgIyQcVLJs96omnN1hjljrmIM5jL55az1b4Vkw+eL3wTEYuPqMlfptRJD5
	Wk0On+aRkEkObPD6NToe5qLGNnWSxazqlnpt8b0Fjs6WbEBvKZBXLb2BcfDTBxefTroFdJukbJWjc
	zNCqttqilPo0XpfzNbQ38tBoRYXzx2f+osC5nJsoEgMmwqlux9JhyOhFrlBrsM1mNqCDFy5mQq3Xf
	3NKi9XgI5fsRkka1gMmO6nICaUNk+xY9c9GtPWnNLKXuT2GPU3WAwhBdQq2cZr5yYXKWmNNzR20wT
	7L/5YAvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqgvJ-0007Rs-8x; Sun, 12 Jan 2020 17:21:13 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqgvB-0007RB-5T
 for openwrt-devel@lists.openwrt.org; Sun, 12 Jan 2020 17:21:06 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id D4BB4328A;
 Sun, 12 Jan 2020 18:21:00 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id af424dfc;
 Sun, 12 Jan 2020 18:20:50 +0100 (CET)
Date: Sun, 12 Jan 2020 18:20:50 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Dainis Jonitis <jonitis@gmail.com>
Message-ID: <20200112172050.GH86978@meh.true.cz>
References: <20200110144104.25291-1-dainis.jonitis@ubnt.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200110144104.25291-1-dainis.jonitis@ubnt.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_092105_353788_3036FD72 
X-CRM114-Status: GOOD (  10.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH] blobmsg: blobmsg_add_json_element()
 64-bit values
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
 Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Dainis Jonitis <jonitis@gmail.com> [2020-01-10 16:41:04]:

Hi,

next time please make sure, that your From: match the Signed-off-by: -- I've
fixed it this time.

> libjson-c json_type_int values are stored as int64_t. Use
> json_object_get_int64() instead of json_object_get_int()
> to avoid clamping to INT32_MAX.
> 
> Signed-off-by: Dainis Jonitis <dainis.jonitis@ubnt.com>
> ---
>  blobmsg_json.c | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/blobmsg_json.c b/blobmsg_json.c
> index 1859211..394861a 100644
> --- a/blobmsg_json.c
> +++ b/blobmsg_json.c
> @@ -66,9 +66,15 @@ bool blobmsg_add_json_element(struct blob_buf *b, const char *name, json_object
>  	case json_type_boolean:
>  		blobmsg_add_u8(b, name, json_object_get_boolean(obj));
>  		break;
> -	case json_type_int:
> -		blobmsg_add_u32(b, name, json_object_get_int(obj));
> +	case json_type_int: {
> +		int64_t i64 = json_object_get_int64(obj);
> +		if (i64 >= INT32_MIN && i64 <= INT32_MAX) {

This INT32_MAX should be UINT32_MAX, otherwise you're going to cast valid u32
values as u64, right?

If you agree, I can do this small fix myself directly in my tree, to spare you
from sending v2.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
