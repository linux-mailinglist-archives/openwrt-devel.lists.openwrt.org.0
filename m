Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4829BA73D0
	for <lists+openwrt-devel@lfdr.de>; Tue,  3 Sep 2019 21:40:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UDQtABgTeLXUv6rONcIMd+HuOpvwBLT3Z+gcU/AAt64=; b=rHzA2S++nAdOln
	xVgV5Zm4iFSkG3YGgfwNDTkiUjWb5Wo/hZL/MwxEIQkiShZ9wmdU5BrGIyb0DrCQz0yiRojQtooBt
	TniBgggA+CdPc/mjJgui0x1doFMztNt/vlMZ8fHk/+2b+MR/JKOBKd+Z2O/IQ1MvZ0cKkpbvT/7pJ
	J+ovuTdfbzJqfUNVUWJ1F0lO3JrOaX2fR08BrHEiV6fZnJTbv41hkEglCzGjNAu72C8EUrtsReyA0
	ZM2O/iJqKWt9poRlXh8n6jfF8chX3SbyqFXK7x8D/5gGw4D0ejtpgq4Q99MijktQvybGUDUs/fpyE
	DfXTQP8h4I6fwq7gYi+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Eeu-0004rj-Qm; Tue, 03 Sep 2019 19:40:08 +0000
Received: from mail-qt1-x835.google.com ([2607:f8b0:4864:20::835])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Eeb-0004qw-Rr
 for openwrt-devel@lists.openwrt.org; Tue, 03 Sep 2019 19:39:51 +0000
Received: by mail-qt1-x835.google.com with SMTP id t12so21429264qtp.9
 for <openwrt-devel@lists.openwrt.org>; Tue, 03 Sep 2019 12:39:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iOi9PhqV1KWauQnNjrPHt0E4hQyxY09xtv/V8PGe/Ag=;
 b=gtVAvNpX+HmnDllD+TiTMxU28DK2fpxtn9v42VdSht/MvBAuYrDlm86XZP3vmuESir
 9UMajqc06g1f4XUkzNEsoRp+i+qmU5B78HTZZWRKnnP6DQjWlq0rClsaHrmtLYDWxVKW
 krCedOlQNyxJF7lOvLs7K1ZZNgrOozvwsPDrU8x2+5NKyPJoUSPCl58CgkYPrF185od5
 5cgiYegAXXMIJzQRmeEX6oG9Wl1y73n8ndktxDiSXe6E4SZPOoy8tTbhtnOL8UlrlRe1
 np2GH7lrnCMU0S709iqinCq9RpOukJYi6Z/0Xya7SKpKtcxMcgGmyFA3b6U6UZYrne2W
 T0fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iOi9PhqV1KWauQnNjrPHt0E4hQyxY09xtv/V8PGe/Ag=;
 b=LJDX4uB6V/r8NrOYSKd10ZUzrYQ2GxXWUl/6i66K/CYCmiD0NfSnow17GqbEKOXQsQ
 P5G2H+JRYr02brngPStzIPkL7MVLO3j2u9Rg8stZxVB4cxuAWBl/svrXtctYpz5NLwL+
 /rJhMZWaRWupqATwigVHoyB9OiGyti5+prNS5tQdtsro/Xg9O3VUJutvhaxa0vJvK2nH
 FV9bM0CeBaVnJirdPtvt5qoKowBif07u7F8E3UjSbtmCnxODisc8NkJGXnrX+R62rrKo
 YM2NULkSLu82BhrjSup7cSXVwJE3WUH+Ug1KzlX3yQFIfGXE7bnGMh0SOmhAi3QhprqK
 HpFQ==
X-Gm-Message-State: APjAAAUjt02RuBx/uthAMxsEmhR6k9zpkCpsXyYBn6j1N2d2sk9sVN5R
 FQwSJqk1Eud3kWlckvYFqlH8KHGz+PzWx+NmJuMssEz2y0A=
X-Google-Smtp-Source: APXvYqyninA0tQuNk+PnhCoGmWjnFWxivSbNDeuMUrobglALzDK27yPBue2eQLYQiTi30wMXTZi8a+qoB2q6jwctAQs=
X-Received: by 2002:a0c:ca02:: with SMTP id c2mr6346634qvk.209.1567539585943; 
 Tue, 03 Sep 2019 12:39:45 -0700 (PDT)
MIME-Version: 1.0
References: <20190902202949.27053-1-hauke@hauke-m.de>
In-Reply-To: <20190902202949.27053-1-hauke@hauke-m.de>
From: Hans Dedecker <dedeckeh@gmail.com>
Date: Tue, 3 Sep 2019 21:39:34 +0200
Message-ID: <CAJLcKsG5c61q_verW+b65Y+Cvr0O9CdnaNrPCwE07VO8uAP2YQ@mail.gmail.com>
To: Hauke Mehrtens <hauke@hauke-m.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_123949_929345_C4C14A7F 
X-CRM114-Status: GOOD (  14.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:835 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dedeckeh[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] odhcpd: router: Fix out of scope memory
 access
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Mon, Sep 2, 2019 at 10:30 PM Hauke Mehrtens <hauke@hauke-m.de> wrote:
>
> A pointer to search_buf is accessed by search_domain outside of the
> if branch which defines search_buf. The compiler could already reuse
> this memory.
>
> Coverity: #1445747
> Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
> ---
Patch applied; thx

Hans
>  src/router.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/src/router.c b/src/router.c
> index 07dd146..700e1ff 100644
> --- a/src/router.c
> +++ b/src/router.c
> @@ -607,6 +607,7 @@ static int send_router_advert(struct interface *iface, const struct in6_addr *fr
>                 struct in6_addr dns_pref, *dns_addr = NULL;
>                 size_t dns_cnt = 0, search_len = iface->search_len;
>                 uint8_t *search_domain = iface->search;
> +               uint8_t search_buf[256];
>
>                 /* DNS Recursive DNS */
>                 if (iface->dns_cnt > 0) {
> @@ -630,8 +631,6 @@ static int send_router_advert(struct interface *iface, const struct in6_addr *fr
>
>                 /* DNS Search options */
>                 if (!search_domain && !res_init() && _res.dnsrch[0] && _res.dnsrch[0][0]) {
> -                       uint8_t search_buf[256];
> -
>                         int len = dn_comp(_res.dnsrch[0], search_buf,
>                                         sizeof(search_buf), NULL, NULL);
>                         if (len > 0) {
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
