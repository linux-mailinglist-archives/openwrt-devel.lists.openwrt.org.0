Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DCF4A5D84
	for <lists+openwrt-devel@lfdr.de>; Mon,  2 Sep 2019 23:27:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aVEwjZv3tomdMU+jtQ9aZTcd0dUrhsNnyvCb4l9VPHg=; b=Y8g74VX6UneThT
	8zKs3YNyD7Zx+pQ77CtecaPyvvjx3Ym7J2lGeApQ9VVoAwzKL2eA8UgK3b6Jlczb60mhwn0vmtfgb
	upfPC082OSI4+OfxBOOqzpu9lHs3z+n82CLEogA9Tv02Obsl68P1PgaeSDFx4zSzychDOwunsFRTX
	bjsOER5LYpqr0hUuB1srU6hLYrBY4AU2avBOl39ItyznfB+1+JVL9XiXTgM/EeDxwa64ypc49ibge
	MCGBbiE0yNTJeO1ObTIVtqdMjqX/u8NYwqRZZJnQawZQTeXfvsRfdGvdkZo/VCutinzXcIIRJmEVm
	65uHup4lBDh9r7UY4sRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4tra-0000AE-L4; Mon, 02 Sep 2019 21:27:50 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4trQ-00009o-AQ
 for openwrt-devel@lists.openwrt.org; Mon, 02 Sep 2019 21:27:41 +0000
Received: by mail-oi1-x244.google.com with SMTP id v12so11234403oic.12
 for <openwrt-devel@lists.openwrt.org>; Mon, 02 Sep 2019 14:27:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nlzGMV8o6reyg/vzhLbj8XDY5bxJoFlgsCk9BnCTwOc=;
 b=ePDw8eGzzMF5s2VOuO/KXJp02l65DWsdN5TifP9y085s1XTPVaEbUwXxoyNDUYF8jQ
 0ApXz/HS2W5kWIrYQjDVhQd4SISqsqa0v/vwj2hpSKN1n5Bdq2tNsd/OFTsUGurkEtLq
 /TO6mR0yjhDkZGHYdRKHV0H9aVPSqzV/GRaqDKW2/zGy7HTERJRb1ZRzUT7SpWa2aHIV
 X3Z1LlM0zRsDsTXaRfhMPfn2/ouV9Led4phg3F5tkKRIyJszutgHSL/4vWkVV+8wjWz3
 iSr7dWogXTVlb3B/RVQjUEl8BloTYoJcaEznLqfm701jaCMo7SQMco9++0VeIPLMRz61
 ERLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nlzGMV8o6reyg/vzhLbj8XDY5bxJoFlgsCk9BnCTwOc=;
 b=U6Cu2dshPAUcZ0j5o0+S3d5XpdPoNV5Ul95HumTh3C2+bJo2Jx+j9NOAynjTNVJHMu
 R3koa4IxVxI1FrrGQtS66dQ9G90FsH4+WL/XvM5xpUml2qZe/06fPdnUQaTZ6b0uyojN
 MWEpE9BPwdAGTZcGePAsLOFGma8arliPzeX4tQk3Ih0wB2RPNq1bzx2B3v/z1WdHpbV7
 GKMp4i7Lo1u8sqvSA2MkuNQ8OEJ4dc8Ldho0tydQOE6eo3XQgHk67Lf2ODeiuq73lrgh
 NSCNFSbXyYKU+tWqxrYC+UUbcAvbO0uCuPvP8yk7woWMMABfF4zcqX+VmnUJebhe1l+5
 TK0w==
X-Gm-Message-State: APjAAAVzevpMumpXmM04eZ8cpGf/7ICW0j9W3vYc1PiLHj6a3mHzdEWO
 ls6hs8vLgksr8Jjtp9oewLSM7fa0MpG1U3q0FZ3iGbv/
X-Google-Smtp-Source: APXvYqyaP6DQDbXrJ9SXREUBP6Y2eTXrz8FEb53My80Yhwi+qI9EjcIyGtTAuczSfOh8JNv7jz2yUIRSDpeRetdj6PU=
X-Received: by 2002:aca:cf57:: with SMTP id f84mr20937139oig.40.1567459658571; 
 Mon, 02 Sep 2019 14:27:38 -0700 (PDT)
MIME-Version: 1.0
References: <20190902202836.26945-1-hauke@hauke-m.de>
In-Reply-To: <20190902202836.26945-1-hauke@hauke-m.de>
From: Rosen Penev <rosenp@gmail.com>
Date: Mon, 2 Sep 2019 14:27:27 -0700
Message-ID: <CAKxU2N-og074qZ5KY7eX6CBaLxc79184OMy-VZbQrCGfoEPg9Q@mail.gmail.com>
To: Hauke Mehrtens <hauke@hauke-m.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_142740_388013_6348AAD2 
X-CRM114-Status: GOOD (  16.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] usign: fix some resource leaks
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

On Mon, Sep 2, 2019 at 1:29 PM Hauke Mehrtens <hauke@hauke-m.de> wrote:
>
> This fixes some resources leaks mostly in error patches.
>
> Coverity: #1330236, #1330237, #1330238
> Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
> ---
>  main.c | 12 ++++++++++--
>  1 file changed, 10 insertions(+), 2 deletions(-)
>
> diff --git a/main.c b/main.c
> index 3536443..ef47b28 100644
> --- a/main.c
> +++ b/main.c
> @@ -129,6 +129,7 @@ get_file(const char *filename, char *buf, int buflen)
>
>         len = fread(buf, 1, buflen - 1, f);
>         buf[len] = 0;
> +       fclose(f);
It's more compact to use __attribute__((cleanup)) instead. Although
last time I tried making changes like those they were shot sown since
it's a GNU extension.
>  }
>
>  static bool
> @@ -171,6 +172,7 @@ static int verify(const char *msgfile)
>         if (!get_base64_file(sigfile, &sig, sizeof(sig), buf, sizeof(buf)) ||
>             memcmp(sig.pkalg, "Ed", 2) != 0) {
>                 fprintf(stderr, "Failed to decode signature\n");
> +               fclose(f);
>                 return 1;
>         }
>
> @@ -183,6 +185,7 @@ static int verify(const char *msgfile)
>         if (!get_base64_file(pubkeyfile, &pkey, sizeof(pkey), buf, sizeof(buf)) ||
>             memcmp(pkey.pkalg, "Ed", 2) != 0) {
>                 fprintf(stderr, "Failed to decode public key\n");
> +               fclose(f);
>                 return 1;
>         }
>
> @@ -292,11 +295,16 @@ static int generate(void)
>         FILE *f;
>
>         f = fopen("/dev/urandom", "r");
> -       if (!f ||
> -           fread(skey.fingerprint, sizeof(skey.fingerprint), 1, f) != 1 ||
> +       if (!f) {
> +               fprintf(stderr, "Can't open /dev/urandom\n");
> +               return 1;
> +       }
> +
> +       if (fread(skey.fingerprint, sizeof(skey.fingerprint), 1, f) != 1 ||
>             fread(skey.seckey, EDSIGN_SECRET_KEY_SIZE, 1, f) != 1 ||
>             fread(skey.salt, sizeof(skey.salt), 1, f) != 1) {
>                 fprintf(stderr, "Can't read data from /dev/urandom\n");
> +               fclose(f);
>                 return 1;
>         }
>         if (f)
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
