Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B1FFC3796
	for <lists+openwrt-devel@lfdr.de>; Tue,  1 Oct 2019 16:36:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2+d9osuZR/QHMvkq1uaw1BWe9Y8EMhefQGB3FLNTYXI=; b=XpumLoq56/VRnL
	2GKzx1lu+51BhSFnw7avzSPUJcJ+kJFE/cLkPdEwu+d8n47N3ZJ2YbNAou9wSTS1x6W33DHrtMIda
	ydBuKwo28m3ZQ+d6uB1s2/kUnPkIX4aGbCq01jUFXAxSovVjz6KlOgWd4A6bgDKELWCFA6yIaZKDC
	I/Txx3GxJdU6eKhmkcUoEbv2WZWz/FweWIRzdEujX9VQpvICQmehoDxoDneaX5BloBUBIq9Lkh6zx
	ZSCSwvOnF2rNg+mYF/8v2fqGRgr8FNI6+ltjgRJRVNUbODsDkNausvfqtf1HMvfSUyAXmcjzoSGNL
	t0LyvxCXAsPc/gWqF9YA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFJGi-0007dx-P4; Tue, 01 Oct 2019 14:36:48 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFJGX-0007dK-Tx
 for openwrt-devel@lists.openwrt.org; Tue, 01 Oct 2019 14:36:40 +0000
Received: by mail-lj1-x243.google.com with SMTP id y3so13642988ljj.6
 for <openwrt-devel@lists.openwrt.org>; Tue, 01 Oct 2019 07:36:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0d5frpF7//KB/5mqjCLXxrZiu7uiUy/CjW6hESwg/LI=;
 b=HPWs01R8GUjVsyOwZJIdDq1OQonNv9ajrFkfcpd5tYZQUaW9uCud3nrLzkBKLwSU/k
 WuIXsJW1C0fwaDJIiMcaI45+iiXHH/IRdrG3WcUMJjELB7W/BOngLTBWismiXTHunch3
 O/k9B1ZZydtCrIeopLkhemXN7ZJLU4TUDgH/IeG4RcS+zwldeCC1yIKovPoBRffRlMHB
 QFJXuZyJCFZvmOZnJWXmOrPWIUGp4O0EHYw5onQj7h/vzHIGq1Z3u5cKTzt9lPvDhsi2
 IHEZh10ZnHYlRJ9KR6SJtU5DIShKdjKhYxX5fBF1TlriqszLztZAgMKiOOddv3yDlRF/
 eRBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0d5frpF7//KB/5mqjCLXxrZiu7uiUy/CjW6hESwg/LI=;
 b=dYae0uSTa0P8nGqPTNMrKtu+9M2mQGIyM2ZtdeceNf6wOgiYi1xa+aBwyCieGQ9w2w
 fPvfM/0YNoCLvA64s/Vmv1pCoEIOvfPSgfV7WlqXcxQXG9BHhLkZIJ5zTwaslvBTQxHC
 Q9pXO7BYAouyljb4eBwfmBQM8Ib1VW3prv4TDXw7inhrsq7gvGX7h4apWRPK66wce8Qy
 TNfRTg4Z5NpG+Oeo4e1IpD8vimBlC7lHxazBo5SXYYWXHk8hbjAphpahliZsA5mh2q/l
 2lSZsn5ru5q822xV3BzHTLGmU+P7jm/0wBAqLyMl2EQCBL5RX09lukJSHaMyeY39Z1II
 EpdQ==
X-Gm-Message-State: APjAAAV0HLHpgOAyJlnRjTKHYD/6KI0RCUC7tiB0gQvfuMypmN5b4WQz
 3tSslIQEGXclEmSniCxBYbrnMuxRj6z2GQHdnIOzbQ==
X-Google-Smtp-Source: APXvYqwPJrz9RSkt4U0O61S5sajUmpi5OkY+ZZGtg69BHSUYpQwsUG+9E5TqZx6zqxHk4tbBIuPS3po18VfHGNYUba0=
X-Received: by 2002:a2e:b4c5:: with SMTP id r5mr16209508ljm.54.1569940596145; 
 Tue, 01 Oct 2019 07:36:36 -0700 (PDT)
MIME-Version: 1.0
References: <e0eb9887-28eb-a008-96e2-66d4de81ff11@yandex.ru>
In-Reply-To: <e0eb9887-28eb-a008-96e2-66d4de81ff11@yandex.ru>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 1 Oct 2019 16:36:24 +0200
Message-ID: <CACRpkdZKAyLvSG5XayUTwe4Nq-2NAYWh5QbxjLwNikO8CsrWqg@mail.gmail.com>
To: Serge Vasilugin <vasilugin@yandex.ru>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_073637_977430_D54BBE0D 
X-CRM114-Status: GOOD (  11.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH 1/3] kernel: rtl8366_smi: explicitly set
 phy addr for switch
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

On Thu, Aug 15, 2019 at 10:27 AM Serge Vasilugin <vasilugin@yandex.ru> wrote:

> By default rtl8366_smi use phy addr 0 at mii-bus to access switch registers.
> This patch allow to set it explicitly in dts-file:
>
>         rtl8367 {
>                 compatible = "realtek,rtl8367b";
>                 phy_id = <29>; /* switch address at mii-bus */
>                 realtek,extif2 = <1 0 1 1 1 1 1 1 2>;
>                 mii-bus = <&mdio>;
>                 cpu-port = <7>;
>         }
>
> Use default 0 address if not set.
> Backward compatibility tested on tplink archer c2 v1 (rtl8367rb switch)
>
> Signed-off-by: Serge Vasilugin <vasilugin@yandex.ru>

Drive-by comment, but is there some chance that you could have a look
at the DSA driver which is upstream and included in the v4.19 baseline
in drivers/net/dsa/rtl8366.c realtek-smi.c etc?

I haven't implemented 8367 variants because I have nothing to test it
on, but I think it could be pretty straight forward just following the
pattern set by rtl8366rb (which is all I have).

In my mind it is just another plug-in below the smi driver, but alas
things are never as simple as one think.

Yours,
Linus Walleij

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
