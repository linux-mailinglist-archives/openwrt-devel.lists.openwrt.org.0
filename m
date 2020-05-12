Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5FE11CF53D
	for <lists+openwrt-devel@lfdr.de>; Tue, 12 May 2020 15:08:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DBfyvgLocqvgFYXkLGaGdJ5LcKwPP+/P8zwS+1a1oXE=; b=nyLBGCWqEkiD2F
	r777gYbdQb4VTbWAo/2xdtZrpyJnI79tzuaGVPDdGr09AIdqPkk+zTTzaECu9tVI1k9HCdsfKI0zi
	oXXd/F6g+oEYfk+NyAkt59M6MSl8lDMHlcE7tz4oTWirDZSnhVy2kUMuS5ubPJ7Dux4uCMQ/1fTFx
	E1Otoll1ggGGbBhPY67RN9oAmeZ6toSRYd80cXhZctnDPWpc8Fx0Uff0/oHOcNnO8E0JYxZiCzxcZ
	8ubbGvpfDSOXrdyCmcYGGwpdwKgHUAF7LdW2EA76+6/zR2p96E2MTmzl6Ojq6e1seRp7O+SOb2bnK
	lumrXxBfJ9X7I3j+08LA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYUeF-0004u1-Uv; Tue, 12 May 2020 13:08:39 +0000
Received: from mail-ej1-x643.google.com ([2a00:1450:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYUe6-0004td-9a
 for openwrt-devel@lists.openwrt.org; Tue, 12 May 2020 13:08:31 +0000
Received: by mail-ej1-x643.google.com with SMTP id z5so10128431ejb.3
 for <openwrt-devel@lists.openwrt.org>; Tue, 12 May 2020 06:08:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dOfYB+FSvcms/UB9n4sFfzgTobvNgpZuFUoluRS2+R8=;
 b=g4kyJd7XBKH9rsVSrFk6uv/VszoA3Th8DIyv+2cKsdqb7XuWlLrG2W9sIeoClPKBw5
 jLgUTUXBAn/8ux9LCqCgoeZ6XyWi0ztVDhN0nrf0B4vp4DXNLyTEcXrYNVSRlJWPrPZ1
 qpEXtnKDV3H3dtr2LZWFOX5HTPwhK/IUgf+VPNkMSyzY6jZV7h38nLR/w+bUeBVWfpph
 +V6gugHZUqLa0NKNB0VkWlfxDFK3i0vZ+a+2ReBNuyqyi9GFq3HOVzqoH7JKntnlg5OD
 ZW9DkGNSWkAkkJ4kr5lFepbPxLoE4cPLjO6dMYriDi28tBr17gvjzWCu2UenSjzeT74s
 n2mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dOfYB+FSvcms/UB9n4sFfzgTobvNgpZuFUoluRS2+R8=;
 b=fhhqfUBn9AXC3iuU+0QTFUV3M5VReBm4iHUjXpDiu7JU+YAKf0HTLvN8PRq2jJnaHT
 iJ3wsgBDLH1Y9sX5iSuonNkfvX7aka0lKvvpQReEk2U4krEZWi9IhnrUVoFwVXbLAwVK
 rqmF5GawD2oShuHPo4GrnH3G+8Md5fL3ajfiOry1UX8BYqrkYf2r3vbml0xS77gUpW9B
 Skh6F1KJQxQo9P8W+mT3R9a02sdCel0MiDQU2UvCjUla4lebId2bO1sujBmPjdKtVN16
 lmz+sBOH3qMGx4Uvn5zQ6dWN+dRHl8f9rv3O9SC1MS6fvJIMT9uReZJtVL5xu5P+cEwg
 0vdA==
X-Gm-Message-State: AGi0Puaif/xMSAJYbhY6txQ+fuM+J+mXB4j9ht0cGnFErR52UVvOcDm+
 TZAKvhjGSecpcbdsk0LvdC/18x8qVROCHluDMmc=
X-Google-Smtp-Source: APiQypLK92jmjZtcwo7G6o65YGCeTeSLn89JGedI2k4BMRQUabWj4kpVhp9fildtwORsmzmPdkr0qMh9LF9FfhT+h3g=
X-Received: by 2002:a17:906:6a48:: with SMTP id
 n8mr17066939ejs.315.1589288907246; 
 Tue, 12 May 2020 06:08:27 -0700 (PDT)
MIME-Version: 1.0
References: <20200501192135.15043-1-philipp@redfish-solutions.com>
In-Reply-To: <20200501192135.15043-1-philipp@redfish-solutions.com>
From: Yousong Zhou <yszhou4tech@gmail.com>
Date: Tue, 12 May 2020 21:08:14 +0800
Message-ID: <CAECwjAiX4UOGpi031qVWgMyFwCnH7jxCspssyHLT9rmb-WsWvg@mail.gmail.com>
To: Philip Prindeville <philipp@redfish-solutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_060830_363868_4A44A112 
X-CRM114-Status: GOOD (  15.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [yszhou4tech[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH 1/1] firewall3: add --contiguous to
 time-based rules where needed
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Jo-Philipp Wich <jo@mein.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Sat, 2 May 2020 at 03:21, Philip Prindeville
<philipp@redfish-solutions.com> wrote:
>
> From: Philip Prindeville <philipp@redfish-solutions.com>
>
> If the start_time > stop_time on a rule, then the --contiguous arg
> should be included in the rule.

It seems that start_time >= stop_time has its defined meaning in
xt_time module.  Better add another uci option for this --contiguous
flag.

Regards,
                yousong

>
> Signed-off-by: Philip Prindeville <philipp@redfish-solutions.com>
> ---
>  iptables.c | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/iptables.c b/iptables.c
> index 559fe7defef3be85c4eb2934884caf549f932bc5..5c02e6e26c93468f4ef6a7f917069bb49985aad8 100644
> --- a/iptables.c
> +++ b/iptables.c
> @@ -1099,6 +1099,9 @@ fw3_ipt_rule_time(struct fw3_ipt_rule *r, struct fw3_time *time)
>                 fw3_ipt_rule_addarg(r, false, "--timestop", buf);
>         }
>
> +       if (time->timestart && time->timestop && time->timestart > time->timestop)
> +               fw3_ipt_rule_addarg(r, false, "--contiguous", NULL);
> +
>         if (time->monthdays & 0xFFFFFFFE)
>         {
>                 for (i = 1, p = buf; i < 32; i++)
> --
> 2.17.2
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
