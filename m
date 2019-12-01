Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A5B310E21E
	for <lists+openwrt-devel@lfdr.de>; Sun,  1 Dec 2019 14:55:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P/JjOb3s2N7FSBW7x6SF0FG2+AAQL5dsvXk6vuQeGKE=; b=PiHV7p4onqCVpj
	izEbp4Ji682Fax9VJbqfLLVo/3gJOi/n/dPAS8lY2I7XyzJWczs08m92mmj+XTqokJeyxc5BtQgRe
	SaCfraq1vAYN838WjQjk1sWbb2A9yGW8TsfWFzV2ghaIE3RMmDKYv1/ARPouf3gJ/i2deLWZJIo3S
	ltfKrgUFUPjyOKft8z/rgd650tALLlGxkKbQd213jsqK6zXxEFmVZRc8uR7fdpvoWHHNCx9j08rlF
	b+J5yfgY0/cUnKdjGglzEtfghi113y9lzQauCVHr5yoVkkRhsK/9gaAiypkvJx9740X3ZxZtvIYDN
	rQb+xLWf4+MGWuqiyUNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibPhG-0008S8-A7; Sun, 01 Dec 2019 13:55:34 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibPhA-0008Rf-BL
 for openwrt-devel@lists.openwrt.org; Sun, 01 Dec 2019 13:55:29 +0000
Received: by mail-wr1-x444.google.com with SMTP id q10so4627369wrm.11
 for <openwrt-devel@lists.openwrt.org>; Sun, 01 Dec 2019 05:55:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=inkuzaNrQjrEUV5LUprd8/dTlRLQAp0o86J8t+GdQ8I=;
 b=g0BvUrKjq0xARrI8l+TlrjUtoD6md+0aOkRSujXXkvpoL03vEbe1dKqLuJVENFLmC3
 KJRFARYnYI/oXpRLXWs4q2XXktWxrVKwu1twF0M62SxMDPnooJAcy4LqgZ+mUTDWyxlo
 rzsx5YXvkbNhUMTwfi6vwVwV/897CItfKq0ZmYNMcJtO8fQd+AjfrTANet6FTbzlA9sP
 SIhW+HaKxQWOT6OsQ8BrTdyBaddBuQ+YvQEqh2ltTixC8rFI6kMox26whdHZtjwM4vfT
 i8Fv6/DOejq27crw0v3rCNzHLpXMO0K9Yfvv8zQMSfw0b19+wYnYoReh5tO9PTby5v0F
 Vgfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=inkuzaNrQjrEUV5LUprd8/dTlRLQAp0o86J8t+GdQ8I=;
 b=fopW2J8SfOr+A2BbDeMNHcEA7H8eZmNZgBJZqmVDQX0PF+27Kjsr54dUy9VG8elqu+
 vhhSD+z1hm9ZbU2Ew3Ne0xEn8q+34d1fP3SDIol0EaHIbeFmlIMAeMWh0qiC1UG59C2V
 73sMoHcHD28HqWwZuTNKypHEjA9Zjp3lJ+7oeiUXl8sZtSl/y4UPZxWEYcLMhoBBGkfy
 3O8Th3iO3J7BUj0aRawCN7sjJtgjc1VzwOFi5qnw50PgedqsXAoxhj3IzUyVAdlhqZVs
 S+YaF2apTqBJAbDzW8fAMAgd5NNr1har4orPGxaRJRaXNLGVWvalYFSygtxqnnKMMy0a
 HPWQ==
X-Gm-Message-State: APjAAAWKm/Hv9IaIm0XUInVLqzSTDs23pSayhMFeXZis5jFbBkLIEFEj
 icl1gOuT/ccZQx6DNNtL5J+j2TJOA6BBVMsCY2c=
X-Google-Smtp-Source: APXvYqwcy6m1Y8wF3uWrxusSaBhTLBP46DfwdRYPjiIQ1X7d4grm3406q+LtHZV0VGcp5TbXe0MFqpzs6nr0EfaJjrE=
X-Received: by 2002:adf:f789:: with SMTP id q9mr20358201wrp.103.1575208520954; 
 Sun, 01 Dec 2019 05:55:20 -0800 (PST)
MIME-Version: 1.0
References: <20191129210634.4066-1-rosenp@gmail.com>
In-Reply-To: <20191129210634.4066-1-rosenp@gmail.com>
From: Jonas Gorski <jonas.gorski@gmail.com>
Date: Sun, 1 Dec 2019 14:55:11 +0100
Message-ID: <CAOiHx=n7UFajKV6oZWY0x=r+za3TNPr00nLHiBSjhavdXsXk-A@mail.gmail.com>
To: Rosen Penev <rosenp@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191201_055528_414184_E43E9111 
X-CRM114-Status: GOOD (  13.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jonas.gorski[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH] firewall: Fix Wformat-nonliteral warning
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

Hi,

On Fri, 29 Nov 2019 at 22:06, Rosen Penev <rosenp@gmail.com> wrote:
>
> Allows GCC to check the formats by switching to a define, which is a
> constant expression.
>
> Fixes:
>
> warning: format not a string literal, argument types not checked
> [-Wformat-nonliteral]
>   207 |  snprintf(buf, sizeof(buf), tmpl, include->path);
>
> Signed-off-by: Rosen Penev <rosenp@gmail.com>
> ---
>  includes.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/includes.c b/includes.c
> index 23b2244..1e759fb 100644
> --- a/includes.c
> +++ b/includes.c
> @@ -188,11 +188,11 @@ run_include(struct fw3_include *include)
>  {
>         int rv;
>         struct stat s;
> -       const char *tmpl =
> -               "config() { "
> -                       "echo \"You cannot use UCI in firewall includes!\" >&2; "
> -                       "exit 1; "
> -               "}; . %s";
> +       #define tmpl \
> +               "config() { " \
> +                       "echo \"You cannot use UCI in firewall includes!\" >&2; " \
> +                       "exit 1; " \
> +               "}; . %s"

defines are global, so they should be at top of the file, use caps for
the name, and have a less generic name than "templ" (or "format").
Same comment for the other patches doing the same thing.


Regards
Jonas

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
