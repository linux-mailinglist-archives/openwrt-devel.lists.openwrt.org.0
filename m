Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13B8517C210
	for <lists+openwrt-devel@lfdr.de>; Fri,  6 Mar 2020 16:45:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9/tEUZg+z9Kz2l4KoW/QYR+Cr1FRS2wyj8w565Y/PBw=; b=qe3HmEdhYpNwx0
	nTyFUcJ+AokMe31DNukwuZgDtir7c/7hJ5L0uGjJUdQEiJTBTeKcTRQOtyH0YNxkFhWYx9HJyaBSA
	/XSbjx98WCUvMwojOyoutL4sx9ByWErWIjxuUr8wZG3/5E64KZWQxs27LKbg2ulxofvniJdmxpK6C
	WQUPk4ZA48sF3SbaE4Ulc+Q4dU9NdNtkPsaLD3gYBvahnBogxuL5iaNy/+lmkChkJluTfLa/+B8dT
	7eHD/ITbCtWnmD5S7uLPrP4M3S0ZgfUy+cvAWA1XYYt/vTPGJnyXNlnAlKLOmxXhIoaUBTKgNAiyf
	pNbb4HE6urIbh/GtPyEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAF9c-00021L-GO; Fri, 06 Mar 2020 15:44:48 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAF9W-0001qY-7Y
 for openwrt-devel@lists.openwrt.org; Fri, 06 Mar 2020 15:44:43 +0000
Received: by mail-ot1-x342.google.com with SMTP id a20so2853074otl.0
 for <openwrt-devel@lists.openwrt.org>; Fri, 06 Mar 2020 07:44:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gateworks-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=cUPJ3Lt7i5QDTs7yjfThruioNhSFxXhpmG6CRcKpLYo=;
 b=VzPCiAulkv8m/euM6TkaHp6sDw0CtKOXS8kffYc+2W9tcwBAPSVGffjQ0qlmsMsU9c
 t8cAvAXDE1L/NQXkq+EMyacPzuO+7WhNlmJpv4Z04f2zUPrsQRJBL25SAzgPsIuXXS2P
 ViDuo7vQLsbyj9Y2MHeoTRjfeXLQF80NNEZiSkuKW6m1sIAJF8sSyxdOx01uVPL4QUOj
 6l+4EHLL5n/PhvPs2FGaqRh3BneFCdp2jEyrNXm2Y9KEQbCgzqBXopscSRR7U6H+qz+A
 zzH0Y1eJunUyqT60mVomdnbXfdwuhaJEBX+d5sS1mZ95qpcThYbqZtvLAvYaEgQ9VYph
 oOuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=cUPJ3Lt7i5QDTs7yjfThruioNhSFxXhpmG6CRcKpLYo=;
 b=nkZRW6jPDNjfZf3s2zZAFyGi/+gbTnBqztbhlUj5Wq5sjCYMZqXrvHCqmGvoWHtojx
 cjoe4nhGT+PKKsZGOkyBHryUORYncRyALDNuX+QZKvMIu7a43gPCtvuEm9UNQLqwTOks
 FgOCaVEknuvwYsipAA1TK5UXyd8aJNnMPyA3kZmGzRjBXgoGptxkIgZ8TLJmmy7FzySr
 IN8mae7kFfAkb+dbdnQEzMbB0H2u9dnBML4v67eh0+/k4l/e0+BdNtWdTPQ/Ub77+FQK
 HLVewRyc+6LdFn8ss36JK1wMxWlm3SSQCTSvK5o5KCHG+6S5urtpu5fg0JIF06yg5jXW
 YlEw==
X-Gm-Message-State: ANhLgQ26ViIrqtTXOGTREyj0E1WLX2Wo8+gDr/fI8QZ/1gEgpWQYHBvw
 z7n3SgVsJ4uOu2lEu31EJnK7/ldq4EXKMGtFxyOXgA==
X-Google-Smtp-Source: ADFU+vtw2RvrzUH7eOjBYKM4ySVms9R9bBcaPPenTYn58HhaQ/PWBv6F7KbuBZLcAhR59tk1m8JV/hoKRdlAdqmUZBk=
X-Received: by 2002:a05:6830:1503:: with SMTP id
 k3mr3188628otp.28.1583509480606; 
 Fri, 06 Mar 2020 07:44:40 -0800 (PST)
MIME-Version: 1.0
References: <1582918410-12875-1-git-send-email-tharvey@gateworks.com>
 <20200301081813.GC33354@meh.true.cz> <20200305110446.GA86312@meh.true.cz>
In-Reply-To: <20200305110446.GA86312@meh.true.cz>
From: Tim Harvey <tharvey@gateworks.com>
Date: Fri, 6 Mar 2020 07:44:29 -0800
Message-ID: <CAJ+vNU1QGaVKWtQJHNxM7RBrYMVrk+GZvYod7sH095QpNWCg-Q@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_074442_326084_FA88B0BD 
X-CRM114-Status: UNSURE (   6.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] imx6: add support for Gateworks
 GW5907/GW5910/GW5912/GW5913
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gVGh1LCBNYXIgNSwgMjAyMCBhdCAzOjA1IEFNIFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUu
Y3o+IHdyb3RlOgo+Cj4gR2VudGxlIHBpbmcuCj4KCkkgcG9zdGVkIGEgZm9sbG93LXVwIGluIHBh
dGNod29yayB0aGF0IHJlbW92ZXMgdGhlIHdpbGRjYXJkcyBmcm9tIHRoZQpib2FyZCBuYW1lIG1h
dGNoaW5nLgoKQW55IGNoYW5nZXMgbmVlZGVkPwoKVGltCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVu
d3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFp
bG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
