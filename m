Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06807E7ED0
	for <lists+openwrt-devel@lfdr.de>; Tue, 29 Oct 2019 04:17:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J3Kh01D92coEXsef14B6kauLdF+Q7LENsYcjVZdPfNo=; b=AQWV1aYhwAl6Dw
	vbci2idlXcdYqONXMt+g08voHqNq6i9nlF2ldrO0u8C3HX2yS6ugsNqUkRl5/AdWWQfhJZ5CsLw67
	P8OGsBxO0BBW+ZB6KiIKMwo8V9plrT9+NdHItm0+Qmb53RwdfrCA6dFCsPnkML1pe5ZXECRafxL8q
	KMFkdHjDw7/ZpTEHeL0Id/mrolu14QaIe7Saiv9dGEcMJae7XyyaZEXnrYYfyq4auN7lDcUC0xcDa
	Pzm6LAxQ/1EahqqVvIZ8FmLIh+6Hi7sMSC8Fz0tI2bCX8Qx3oMpUyInZEUUl5VKL6AbvWses3jY91
	cpv0SQX+0wZwm5W+j/vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPI0G-0005Z4-12; Tue, 29 Oct 2019 03:17:04 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPI09-0005YV-Ce
 for openwrt-devel@lists.openwrt.org; Tue, 29 Oct 2019 03:16:59 +0000
Received: by mail-lj1-x242.google.com with SMTP id q64so13553372ljb.12
 for <openwrt-devel@lists.openwrt.org>; Mon, 28 Oct 2019 20:16:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RqKtMYy/oA0NqObjEzl4Mj9nmEhQ+pQlkTxA+oesUCc=;
 b=ZQHY1wQnq+Ebm8h+C0c8KzGOj2cGFh1uozdob/MZPi4Q163rGNoJIgWEkav23xsw1g
 RT9h2JGMEeobZjVG78OQl72qHujHC/qSxijoQH3ad0nlemML1RR4iFa9fZYM2hbhGD8B
 M90WFwHLqnWe+EumFyRaJKK31SmF0IW6eICkkANzTtMJRnDt8hxipizGaxi5if4y2KmY
 f0UZARdGdgw2zej9nd3fhKsEh4FpolGirW86PdxTJ73uS4wOhrXumlTXsu1oP+dmkGhe
 U2M2ownI2hTHXgzyvEq3mhO+H/Bp1a4jupj34coNSHzPlltYeB27KSmujLHgKrxUX3Ha
 OpvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RqKtMYy/oA0NqObjEzl4Mj9nmEhQ+pQlkTxA+oesUCc=;
 b=FwJunasaGmX1+VQqxcyQ6G1wRrLMKpCFYutnU+WdIN8EJblwe8rzL3g38o8FJHdXYN
 5kCLnIoqE1rPWK3d4WdYgvAM2ODbVyiU0I4jGYiWja8qQW6GRWgef2PS9hdn9jSA7e5A
 agEwN6mQyKwHrlKZ5X/hCo0jPkL1RKxpYkorXPjbgC2utBz5utdsJdEIVdd0bt65ZA3e
 HzjLi/kkFB4xGOgX3xHpfdN7cicr3pn7pQhysoXE9l7R1neou59JjA7DdShHriFBQd2P
 TH4VeD8zehjVlAg+kiIsSf+syQQeIUSk63aIUO3Spt0GLi5v/ftExHFv5F/AHT2zo45S
 zmMA==
X-Gm-Message-State: APjAAAW4o2F1kzqDxZB/hPFLztfp5uxiM+gUn+U6GuS9qoYfe79XF701
 HLXBMkSpiUWwX9PjFbFfq2VuYTucNTY6nt9Qn0Y=
X-Google-Smtp-Source: APXvYqwkHyplT5jjEAfkmd8pMyU54bAifEF2u3ndMKFqG6g8EnTBDPfzBVseY3gXKjdDKmw+Pn3w9iBZMmjlj5Dd6HQ=
X-Received: by 2002:a2e:2903:: with SMTP id u3mr642117lje.131.1572319013005;
 Mon, 28 Oct 2019 20:16:53 -0700 (PDT)
MIME-Version: 1.0
References: <20191028103214.28200-1-daniel@dd-wrt.com>
In-Reply-To: <20191028103214.28200-1-daniel@dd-wrt.com>
From: Yousong Zhou <yszhou4tech@gmail.com>
Date: Tue, 29 Oct 2019 11:16:40 +0800
Message-ID: <CAECwjAgpjny1TAFN1_eZbno5cN-vdJ=faSmX8VBqTAYHsUQfZA@mail.gmail.com>
To: Daniel Danzberger <daniel@dd-wrt.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_201657_454778_C46D635C 
X-CRM114-Status: GOOD (  18.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yszhou4tech[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH] rpcd: uci: fix segfault and double free
 on set method
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Daniel,

On Mon, 28 Oct 2019 at 18:32, Daniel Danzberger <daniel@dd-wrt.com> wrote:
>
> Invalid reuse of pointers from uci_ptr can cause the rcpd to segfault on already freed memory.
> This bug could be trigged by calling 'set' with emtpy values on multiple non existing or already cleard options.
>
> For example:
>  ubus call uci set '{"config":"network","section":"wan","values":{"proto":"static","foo":"", "bar":""}}'
>
> Signed-off-by: Daniel Danzberger <daniel@dd-wrt.com>
> ---
>  uci.c | 55 ++++++++++++++++++++++++++-----------------------------
>  1 file changed, 26 insertions(+), 29 deletions(-)
>
> diff --git a/uci.c b/uci.c
> index 1587a19..e6ddbb5 100644
> --- a/uci.c
> +++ b/uci.c
> @@ -812,55 +812,58 @@ out:
>   *     option of if the existing options value differs from the blob value
>   */
>  static int
> -rpc_uci_merge_set(struct blob_attr *opt, struct uci_ptr *ptr)
> +rpc_uci_merge_set(struct blob_attr *opt,
> +                       struct uci_package *package,
> +                       const char *section)
>  {
> +       struct uci_ptr ptr = {};
>         struct blob_attr *cur;
>         int rem, rv;
>
> -       ptr->o = NULL;
> -       ptr->option = blobmsg_name(opt);
> -       ptr->value = NULL;

Also zeroing out ptr->flags should suffice to fix the issue.

 - When setting "proto", flags will have UCI_LOOKUP_COMPLETE set.
 - That flag remained there when working on "foo", and uci_set()
thought we were setting empty string on existing option, calling
uci_delete() instead which caused ptr->s to be freed.
 - Then when working on "bar", we access already freed up ptr->s

Preferably we could rework uci to allow setting empty string as value,
but that changes existing behavior and could break things.

Regards,
                yousong

> +       ptr.p = package;
> +       ptr.section = section;
> +       ptr.option = blobmsg_name(opt);
>
> -       if (!rpc_uci_verify_name(ptr->option))
> +       if (!rpc_uci_verify_name(ptr.option))
>                 return UBUS_STATUS_INVALID_ARGUMENT;
>
> -       if (rpc_uci_lookup(ptr) || !ptr->s)
> +       if (rpc_uci_lookup(&ptr) || !ptr.s)
>                 return UBUS_STATUS_NOT_FOUND;
>
>         if (blobmsg_type(opt) == BLOBMSG_TYPE_ARRAY)
>         {
> -               if (ptr->o)
> -                       uci_delete(cursor, ptr);
> +               if (ptr.o)
> +                       uci_delete(cursor, &ptr);
>
>                 rv = UBUS_STATUS_INVALID_ARGUMENT;
>
>                 blobmsg_for_each_attr(cur, opt, rem)
>                 {
> -                       if (!rpc_uci_format_blob(cur, &ptr->value))
> +                       if (!rpc_uci_format_blob(cur, &ptr.value))
>                                 continue;
>
> -                       uci_add_list(cursor, ptr);
> +                       uci_add_list(cursor, &ptr);
>                         rv = 0;
>                 }
>
>                 return rv;
>         }
> -       else if (ptr->o && ptr->o->type == UCI_TYPE_LIST)
> +       else if (ptr.o && ptr.o->type == UCI_TYPE_LIST)
>         {
> -               uci_delete(cursor, ptr);
> +               uci_delete(cursor, &ptr);
>
> -               if (!rpc_uci_format_blob(opt, &ptr->value))
> +               if (!rpc_uci_format_blob(opt, &ptr.value))
>                         return UBUS_STATUS_INVALID_ARGUMENT;
>
> -               uci_set(cursor, ptr);
> +               uci_set(cursor, &ptr);
>         }
>         else
>         {
> -               if (!rpc_uci_format_blob(opt, &ptr->value))
> +               if (!rpc_uci_format_blob(opt, &ptr.value))
>                         return UBUS_STATUS_INVALID_ARGUMENT;
>
> -               if (!ptr->o || !ptr->o->v.string || strcmp(ptr->o->v.string, ptr->value))
> -                       uci_set(cursor, ptr);
> +               if (!ptr.o || !ptr.o->v.string || strcmp(ptr.o->v.string, ptr.value))
> +                       uci_set(cursor, &ptr);
>         }
>
>         return 0;
> @@ -875,7 +878,7 @@ rpc_uci_set(struct ubus_context *ctx, struct ubus_object *obj,
>         struct blob_attr *cur;
>         struct uci_package *p = NULL;
>         struct uci_element *e;
> -       struct uci_ptr ptr = { 0 };
> +       const char *package, *section;
>         int rem, rv, err = 0;
>
>         blobmsg_parse(rpc_uci_set_policy, __RPC_S_MAX, tb,
> @@ -892,17 +895,17 @@ rpc_uci_set(struct ubus_context *ctx, struct ubus_object *obj,
>             !rpc_uci_verify_section(blobmsg_data(tb[RPC_S_SECTION])))
>                 return UBUS_STATUS_INVALID_ARGUMENT;
>
> -       ptr.package = blobmsg_data(tb[RPC_S_CONFIG]);
> +       package = blobmsg_data(tb[RPC_S_CONFIG]);
>
> -       if (uci_load(cursor, ptr.package, &p))
> +       if (uci_load(cursor, package, &p))
>                 return rpc_uci_status();
>
>         if (tb[RPC_S_SECTION])
>         {
> -               ptr.section = blobmsg_data(tb[RPC_S_SECTION]);
> +               section = blobmsg_data(tb[RPC_S_SECTION]);
>                 blobmsg_for_each_attr(cur, tb[RPC_S_VALUES], rem)
>                 {
> -                       rv = rpc_uci_merge_set(cur, &ptr);
> +                       rv = rpc_uci_merge_set(cur, p, section);
>
>                         if (rv)
>                                 err = rv;
> @@ -916,12 +919,9 @@ rpc_uci_set(struct ubus_context *ctx, struct ubus_object *obj,
>                                                    tb[RPC_S_TYPE], tb[RPC_S_MATCH]))
>                                 continue;
>
> -                       ptr.s = NULL;
> -                       ptr.section = e->name;
> -
>                         blobmsg_for_each_attr(cur, tb[RPC_S_VALUES], rem)
>                         {
> -                               rv = rpc_uci_merge_set(cur, &ptr);
> +                               rv = rpc_uci_merge_set(cur, p, e->name);
>
>                                 if (rv)
>                                         err = rv;
> @@ -929,9 +929,6 @@ rpc_uci_set(struct ubus_context *ctx, struct ubus_object *obj,
>                 }
>         }
>
> -       if (!err && !ptr.s)
> -               err = UBUS_STATUS_NOT_FOUND;
> -
>         if (!err)
>                 uci_save(cursor, p);
>
> --
> 2.23.0
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
