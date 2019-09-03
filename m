Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2223FA710D
	for <lists+openwrt-devel@lfdr.de>; Tue,  3 Sep 2019 18:53:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XkC81OsjxpZKD5QInoQXGbT7u6OQ3yscxyQ4gqJymZI=; b=MbMa87cmCjBaqs
	lnKS3b65HUDNpqzcnUy/tjx1lzXxqQ45g5qHBQRsHruMBt854RYaTybo6P0+enpaTk5Ht5iiDrPTJ
	mXjzpbAmPy8J+vUACcC4cDpTq4goiYQkpAG61R75eXTkBioFdpWQpPfOaDH3ong2p6tx/SfxTggMG
	dbigDHK+5yAPLV1ZBHIHW18GsWOr+dmLT6abjo//hBG81fU5dbFcZMSOt4TkUpw4rJ8bS/Ppc5oWj
	xcAuTtJJN38ebZo1fozB0445AGYUPEbcgA2px72B/YN2krbT23AQBjJst6XnRI4Hcmh3OBSu0KCHC
	H3NGSt9XIVqoEDeijwiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5C3t-0002dU-0C; Tue, 03 Sep 2019 16:53:45 +0000
Received: from mail-yb1-xb43.google.com ([2607:f8b0:4864:20::b43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5C3j-0002dC-JQ
 for openwrt-devel@lists.openwrt.org; Tue, 03 Sep 2019 16:53:37 +0000
Received: by mail-yb1-xb43.google.com with SMTP id t5so6102826ybt.4
 for <openwrt-devel@lists.openwrt.org>; Tue, 03 Sep 2019 09:53:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MyuI4TNBYtxRfDyLi1/wJaMJ+uwcMMCXFa+EkO+/aJk=;
 b=btjeAkSdMgnB1VqVNRv+34A3YeHbhrMAbg267OBsJ9bkiGjq/OWvWfYPbo8GND1rQ1
 kCzRHnCkSK9T90W5RhHyTjyEz0cueZjHJVhkvJxOUK63T7+MxTnNcWnBc48zx2sydDgr
 bGH3pvahXOjA2s/hD/OG6S72nh+6caKIjT+d3HtMmyufEqgqXKSB+DULG7m5OQnbLGHU
 eWjU23UFnFn9jP9/ffwLEFcGRe29eIMhtSZ0UwSSYvMQVmNq9RME50RD1rQq+8VNXIsz
 UH5E7U7NkvrkQnNlYZeCytVJvKQZXMTypJGQEmlP2IwT9uK5Xphl9pT3fIoa+LEnXFqe
 PUfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MyuI4TNBYtxRfDyLi1/wJaMJ+uwcMMCXFa+EkO+/aJk=;
 b=AHrx1sOepBXdU9dqZYVypu5MAfBYKioG1o3FxqgeDJ6eCdHsMHiHJuN5oRqrcNFU7m
 AGyBRshP9hG6vs1GwHsXtwQosL9Mw7KMzlzP+rkJkxak/RRwh9Yft4CavlB57+yj9cgT
 w11/4n/nrMmAIh2SxPaWvE2dEarMoA7/q7aAZmThlOEROjuhRIXsMvC6RBzGIIs0FlpX
 L+sL6zOpwMWWfo16KCgrsoyKJcvI/GCtgWzKU9h+dwYTv7PKkO81XYnm0eM1xOOW8FIN
 HWIVpr5px+1pA0tPtgJA/A3y5vYdqRbuhx3bmlgpuB+khS7F1s+hRrykhj+KjHEYo+kL
 6oUQ==
X-Gm-Message-State: APjAAAXx0Um7SwjIHg6+u89PrYHNXRuTVeEtHH1eUynlMnr9WupHtP2b
 GamGhElNTLmej4Qd6XEit/WoKUo3/tfc1NheE6M=
X-Google-Smtp-Source: APXvYqzdXShxhKnirGqQA89TemhypqZKO6QEte9aNLK4DjOvSK7fI42x2J1gjDCHWx4AGAiAA/52lqCqKoTt6eBDAHc=
X-Received: by 2002:a25:d2d8:: with SMTP id
 j207mr23854230ybg.112.1567529613800; 
 Tue, 03 Sep 2019 09:53:33 -0700 (PDT)
MIME-Version: 1.0
References: <HK0PR02MB3153A515077098D6209D1F4FEEB90@HK0PR02MB3153.apcprd02.prod.outlook.com>
In-Reply-To: <HK0PR02MB3153A515077098D6209D1F4FEEB90@HK0PR02MB3153.apcprd02.prod.outlook.com>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Tue, 3 Sep 2019 18:53:22 +0200
Message-ID: <CACna6rxrC=TrJAZFaJJcQm_HxSrMv6UqhpR_vH3uv+-R4H4K+A@mail.gmail.com>
To: "z @" <haig8@msn.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_095335_668073_DC424D02 
X-CRM114-Status: UNSURE (   7.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b43 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
Subject: Re: [OpenWrt-Devel] [PATCH] fstools: fix libblkid-tiny ntfs uuid
 detection
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

On Tue, 3 Sep 2019 at 18:00, z @ <haig8@msn.com> wrote:
> detect ntfs uuid fails because blkid_probe_get_buffer override memory of buf,
> so move blkid_probe_sprintf_uuid to before blkid_probe_get_buffer
>
> Signed-off-by: Haiqiang Xu <haig8@msn.com>

I'm not sure about this solution. It's a workaround for the issue I
reported last week, see:
libblkid-tiny: bugged buffer management
http://lists.infradead.org/pipermail/openwrt-devel/2019-August/018651.html

I'd rather see blkid_probe_get_buffer() fixed I think.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
