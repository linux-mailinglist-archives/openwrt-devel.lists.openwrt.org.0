Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFE374F5AB
	for <lists+openwrt-devel@lfdr.de>; Sat, 22 Jun 2019 14:14:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H77nbsX0JjORo1Y7DtM4rAqvj8uDDAk7NV47hhxToc8=; b=BCIWwTRcNMlFdo
	Y/YkjS/XdnP2nHNceDxIajl/ejkkS65mrf2sMMrXj1Uismp0uHJoKhwl2tKbVt/HvlE82mrYQPrvE
	Vf3p86GKy4YtaTq7fwL8wV6VVXdHDa/lNtBnva6JeIkH0g4U6KWWncrAI4e+tgGcYa9ZU5M6J6ZFZ
	SAUXCeF4f+HnXkxKBUT9o9wdO5CZ08MKwrKpSwZ9p9+GoVA9PVAbijt0gLZw7J3qIzuTePM4cFAFQ
	zjTEiZ+Q/H47undW9TGK3X2Pgb5LK4qgbVnMl6yo+eRIjCaSHpGXLPs1P+9VyRiVw4qT4f3ukxv+o
	zGEC9YG1GJVY24x7RgAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heeum-0006Jh-PF; Sat, 22 Jun 2019 12:14:40 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heeub-0006JG-Uy
 for openwrt-devel@lists.openwrt.org; Sat, 22 Jun 2019 12:14:31 +0000
Received: by mail-wr1-x442.google.com with SMTP id c2so9040282wrm.8
 for <openwrt-devel@lists.openwrt.org>; Sat, 22 Jun 2019 05:14:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RAshsxzsCxjSw0uF8ou3wt6Q0vyLGdVTSnq+281TnD4=;
 b=KS536f9eL6Du3UxxZbAZfI11Z0Kkg01N7PldVgLjI1q2ALeQ4h8+UtZ1QB1X6rOA+S
 6bmMcGgQuKCUZege/3wJFFUjXTbVnPcq/yKyTsK5EvM54f9H5uye4/tdGIkvAqGVm3Py
 IAokjFoBwBX8G3mi4Bmf88KIjNfhdH/s07wIlGQJCZnkAbzVq15L6tOn1dZ+P/onK+Em
 4S9ox5yX2elNtB5lYk8aVjmBQbFZTHbAn5KsSGGxrkqqmck/d+jZUfVNl3cP+nVG1Ijf
 MYrQ5q72qpbN4eCkdncYmk6DAreHOnAO+6sYsazXu1++h9ZJlN7PmqXZIAng1kN9tdjI
 rHgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RAshsxzsCxjSw0uF8ou3wt6Q0vyLGdVTSnq+281TnD4=;
 b=A0zq0etRb0QeKhuF08Kw9ONNuYQnzzgj8K4wRHZl+0qlBubb7PmqykveK9KXDI+GyW
 gNVZ9Rqoh8dz+C+5sxSdhjJoP/bIU9j6PxSYsq7cbbDZnHzkfqB8Zje87J9uSzapupl4
 4of1kCybreiDQK99+WgWBxdGic5Onsb9es6zdpginKiU2WwOc3Ab6i8o9t6upexf/UFZ
 NoXFFgX35n2FfSgnz3vyPGrbercIsHzYsFPelhPysnV0JnL6m57XAdsli5DfLw7LXrfm
 7ZjxAF3F7ryDbsrBa+r/6a0+oQOTiYpBh8led3ywRa0/FjnSoZaXEnGzjwQHeqce2oCr
 PE7A==
X-Gm-Message-State: APjAAAXxr2ctzxiPudOvw7z6MpVgIkVnw8e2ZjC+QumXFoZmOCU1tkNR
 gmSiAWbj6y92mD+gMOTVK+97L5mFFEknolbIsuWDguW7
X-Google-Smtp-Source: APXvYqxxVPGMRoAPp0Z4R3fRC+7F6OM+F6FvrRM4jL78QbUvvmtXphCRlp2JbqeoyRTwu5RATQ7vv8gt0QoowU9pN40=
X-Received: by 2002:adf:8028:: with SMTP id 37mr99784145wrk.106.1561205667836; 
 Sat, 22 Jun 2019 05:14:27 -0700 (PDT)
MIME-Version: 1.0
References: <20190622093157.1372-1-freifunk@adrianschmutzler.de>
In-Reply-To: <20190622093157.1372-1-freifunk@adrianschmutzler.de>
From: Jonas Gorski <jonas.gorski@gmail.com>
Date: Sat, 22 Jun 2019 14:14:29 +0200
Message-ID: <CAOiHx==j6CXNKKkmKCaMr1K+RR6Sj=VExQncOoepxkYHd1DsHA@mail.gmail.com>
To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190622_051430_002753_5537D3BA 
X-CRM114-Status: UNSURE (   7.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jonas.gorski[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] openwrt-19.07: ath79: Code style
 fixes in 10_fix_wifi_mac
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

On Sat, 22 Jun 2019 at 11:33, Adrian Schmutzler
<freifunk@adrianschmutzler.de> wrote:
> Subject: [PATCH 1/2] openwrt-19.07: ath79: Code style fixes in 10_fix_wifi_mac

the openwrt-19.07 belongs between the [ ], so [PATCH openwrt-19.07 1/2].

>
> This fixes one comparison and several useless echos.
>
> Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

Are these fixes present in master? If no, then please submit these for
master. If yes, please generate these patches with cherry-pick -x, so
they have a reference to the master commit (makes it easier to see if
these are backports or not).


Regards
Jonas

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
