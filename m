Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 269FA28A02
	for <lists+openwrt-devel@lfdr.de>; Thu, 23 May 2019 21:53:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N/XQpyK8EITI/sUkAPz3q3WGSw38Y9MJ+qfnBmwPMq4=; b=JZqWBSC+Jcw7T/
	riM6WDwWx1NzTitYGv/DuDp8N/H4FB+Dy5v5GuY/2xQDUhNK0RGEfkL5Zt6Xw3LQQZSTJ6bBEOm8E
	JlZzF9H6cL4BPswNdQ7xGqoBw6jnUzldP7KJpCMHGkUEbUIoF/FkNVsYmBjZPM95dLLTF++S51/i2
	3ia2qOygdtbtc6uxLNfvX+bmWNyyo7Y5MbiLO31KCX+6p8i7aYdhHQFVCZrNzrwMyJftgP8cRqD/I
	+T1OzGlLGa5E5rEFA6W78UZoxBXdNIlR5qy3SQsURTPZ3uVKedX5HECOdh8uMCyTucJUjSCQe4hBM
	APdf/tXodAG3zFwqI4Gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTtmS-0007Ov-9s; Thu, 23 May 2019 19:53:36 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTtmL-0007Mz-DW
 for openwrt-devel@lists.openwrt.org; Thu, 23 May 2019 19:53:30 +0000
Received: by mail-qt1-x842.google.com with SMTP id o7so8251771qtp.4
 for <openwrt-devel@lists.openwrt.org>; Thu, 23 May 2019 12:53:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GGz1Ws5hxSmGtfXCC/zpZjccUZ+x9AadO6akfei0q3g=;
 b=F8J2V3AXw+jIeAeyepUOcP7ZP8Fuk5KRFocybERnBO1CgKxF5Mhb0gCZOvID0awRk8
 rLEqTaJYusSmGMTypYe7JgG6d37CK0hOIlXPA8RP2971b5RdTpSlxDJkPOOyJXo49jSX
 h7K+B9iQ0q7DWxblU80z+O0Dx7xFsne/K4gDm/5Fldccm7ScwIu0TMZ2BXDZ8Vf9XBS2
 TgaWOfFZ+MragWoTGk2VzdOE21i3e3OCGw0UW7tk2RwdHpkgbOXDtEaTttrlsbbv0Wke
 G5fsG2/S1sL9ZCOxuvTsKHHubPzu+/Y+sZ7rVFrokCqQSI9Aq/0WFxpdc1NoO8ZEpDbh
 ur7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GGz1Ws5hxSmGtfXCC/zpZjccUZ+x9AadO6akfei0q3g=;
 b=aFK8PHg8kV7KYtjKL4V8PVA+hcuPcwILg5cDtn2B2s17W5OjJs7tFeOQPtAsmwAzHK
 5k83cl5up1L6K0HU6Tyu8JXB/EoqxJafSgucsKfKASaoTVsXKfC9UBCUPam+ScErSp0T
 xgBjRMsmYgStJNikZ0iRDSLw4hyx+NOwWj7uB7GbxLRTPQehpWSli4Iu2qj09PfV4wsm
 WJgzXpF0cyl1tSuyv+SjibGG7ASXCZi1nvX4+SxRvXpWir6PDYWDxCMgUA22NCA46bSD
 9UtfBx7HNOY+AavTn3DP2Ds8Lgoj3mZr67uzOTXgJcAXCPf1SjG3IypJBIPo8DSsYE2z
 ybEw==
X-Gm-Message-State: APjAAAXEDwVe/dvM9zwj/2oyqBa8Kf/hbdBYobRlUCnWGGHgZFX++ROt
 68N0hyksnhNGquZbv4R5iQV24xPBVYlV3OEZAJ8=
X-Google-Smtp-Source: APXvYqwFbaDI41VglqqGHLuWMOGGQn4gq4vnMiX76kqDYoCxywg5/GxabqGPoKMjCxQRSsFHnZkPecJn16lU3o9aKVM=
X-Received: by 2002:ac8:72c1:: with SMTP id o1mr4040671qtp.0.1558641207053;
 Thu, 23 May 2019 12:53:27 -0700 (PDT)
MIME-Version: 1.0
References: <20190517123006.5788-1-sven@narfation.org>
In-Reply-To: <20190517123006.5788-1-sven@narfation.org>
From: Hans Dedecker <dedeckeh@gmail.com>
Date: Thu, 23 May 2019 21:53:16 +0200
Message-ID: <CAJLcKsFYJ_gRKg_sLM16bK+OHMkHL2=FyRAgF=ibzvjBu4d+gw@mail.gmail.com>
To: Sven Eckelmann <sven@narfation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_125329_463224_47F0D698 
X-CRM114-Status: GOOD (  18.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dedeckeh[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH v2] uci: fix options list of section
 after type change
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>,
 Charlemagne Lasse <charlemagnelasse@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Fri, May 17, 2019 at 2:30 PM Sven Eckelmann <sven@narfation.org> wrote:
>
> A section can store its name in the same memory region as the section
> (after the actual section object). The object is then reallocated when the
> type is later changed via an uci_set. But the original address of the
> section is (indirectly) stored in the section list, the object and the
> object list (HEAD) of this section.
>
> But only the section list was fixed in commit 4fb6a564b8ee ("clean up
> uci_set") after the realloc finished. Traversing the object list or
> accessing the section pointer caused heap-use-after-free errors.
>
> Reported-by: Charlemagne Lasse <charlemagnelasse@gmail.com>
> Fixes: 4fb6a564b8ee ("clean up uci_set")
> Signed-off-by: Sven Eckelmann <sven@narfation.org>
Patch applied; thx

Hans
> ---
> v2:
>  - drop unnecessary include of stdbool.h in cli.c
>
>  list.c | 31 +++++++++++++++++++++++++++++++
>  1 file changed, 31 insertions(+)
>
> diff --git a/list.c b/list.c
> index 25aec56..78efbaf 100644
> --- a/list.c
> +++ b/list.c
> @@ -182,6 +182,32 @@ static void uci_fixup_section(struct uci_context *ctx, struct uci_section *s)
>         s->e.name = uci_strdup(ctx, buf);
>  }
>
> +/* fix up option list HEAD pointers and pointer to section in options */
> +static void uci_section_fixup_options(struct uci_section *s, bool no_options)
> +{
> +       struct uci_element *e;
> +
> +       if (no_options) {
> +               /*
> +                * enforce empty list pointer state (s->next == s) when original
> +                * section had no options in the first place
> +                */
> +               uci_list_init(&s->options);
> +               return;
> +       }
> +
> +       /* fix pointers to HEAD at end/beginning of list */
> +       uci_list_fixup(&s->options);
> +
> +       /* fix back pointer to section in options */
> +       uci_foreach_element(&s->options, e) {
> +               struct uci_option *o;
> +
> +               o = uci_to_option(e);
> +               o->section = s;
> +       }
> +}
> +
>  static struct uci_section *
>  uci_alloc_section(struct uci_package *p, const char *type, const char *name)
>  {
> @@ -713,10 +739,15 @@ int uci_set(struct uci_context *ctx, struct uci_ptr *ptr)
>                 char *s = uci_strdup(ctx, ptr->value);
>
>                 if (ptr->s->type == uci_dataptr(ptr->s)) {
> +                       /* drop the in-section storage of type name */
> +                       bool no_options;
> +
> +                       no_options = uci_list_empty(&ptr->s->options);
>                         ptr->last = NULL;
>                         ptr->last = uci_realloc(ctx, ptr->s, sizeof(struct uci_section));
>                         ptr->s = uci_to_section(ptr->last);
>                         uci_list_fixup(&ptr->s->e.list);
> +                       uci_section_fixup_options(ptr->s, no_options);
>                 } else {
>                         free(ptr->s->type);
>                 }
> --
> 2.20.1
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
