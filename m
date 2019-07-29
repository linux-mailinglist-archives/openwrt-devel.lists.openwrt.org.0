Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70694790DF
	for <lists+openwrt-devel@lfdr.de>; Mon, 29 Jul 2019 18:31:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=EYZz7xdDYyNxsLrrJBnpAAYFmB/eJ/6jdWI8jX3ImO0=; b=VMp19VKfZoQwWHOJO7keWYURxt
	IvwWua6KZScrtsTwZrI5M6icS9YN0Aoj+Ahf8yfbU2+uWFIiPndlJrhZWqEOKP3SWD+m/FXWwX3B9
	SwDuDjaTlCGus5nrHbAQ0NOcMIEriCDl84y7ds0S23Q8/pEFMixepGKzkbX8b+EnTbzplFjiIUtEE
	EwfDV7Et1UQRo1ah9W9HpKlT5Jnr2sidDMH+5t/gsdrjUX4OYbZUMtfq7OBpiGGcSO0Jx37pAnINw
	EnDQZ8HnzR1C+FxXgvO6aM1Z5VZ9g7X/Yfu9/UiGPwRld8HWCDAnr1jgVCCL53AKTrTDt5UMT22Pk
	g20zrtyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs8Y6-0004Fd-L8; Mon, 29 Jul 2019 16:30:58 +0000
Received: from mail-io1-xd30.google.com ([2607:f8b0:4864:20::d30])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs8Xu-0004FK-Nn
 for openwrt-devel@lists.openwrt.org; Mon, 29 Jul 2019 16:30:48 +0000
Received: by mail-io1-xd30.google.com with SMTP id j6so1587167ioa.5
 for <openwrt-devel@lists.openwrt.org>; Mon, 29 Jul 2019 09:30:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=8wiu//F0T45YmvveVEtWdeRpGJ8IqqI1o8Ae5nl7VLk=;
 b=q26ItFkZ4HVzSEYyY44xCIHTCRHzdyq9PmcXNvRs9c3mxze7AWGsZJVUMK1Au6Nxys
 rsLq56XVl21UKIddCiLqqas0FRXAfBevoex1qpfMAzN2djMCBrpUoFqQjHLvKcePwPnn
 bLqB2+HvL9WXHDza8A7hmX2Km0xAHi9W6mDDIZpYjdOzn4+V2S0PpL5t0SRr+sTrksr5
 xhEL5Z7CBUjh3QfXRl2jQG1qieLVsoZ2x2435HfTDwmgOKsop0sOET2FNwPEiXw87IwK
 oYqwjoCv1rh94q5evVsn4Ew+DCA81DtepZ5D8MYyB0ViHyCaDORgJAbLu8Fw0J5M7aag
 1djw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=8wiu//F0T45YmvveVEtWdeRpGJ8IqqI1o8Ae5nl7VLk=;
 b=XbQ3og583DkHrHbsTvVnNkIGmgIlgC50LQseBkFiJo46Ahr+IFlIlY1/Q2DXHj/scP
 vwK9+7WaAVrbijBVCwwQiffd8POM24Y+9/4xJHqwOa/UiyijV5Jy3eaH6vRy0K5CIyw4
 1hpyxyFbPuoXNVx8BwcaRj0k2+GINsZ1wX6dmEEnMQ9PBqXfjd3ww9i4lg7d6oAgPu/k
 JwET3sk32NJURVYy9n2qFIiI6gpvSryqmPagIoYqM3OK7ARSZjVOq34iM1ERzthQKlNP
 /q/ErKz9jdJC1fzg/Z1uthESFwpW/RKTAMJUdzv9K7Lrc82vjBEI/yWKurI0WM5gYGRD
 8xHw==
X-Gm-Message-State: APjAAAU1EbMGzQUO42BtTcTg16fjlt/9BNlSnkoHbV6Y5aVkGQ9oWWMC
 UWNSVXFG9d5t+zSZtKejH2DwEzX7sDg4nZOqpfM5vYfm
X-Google-Smtp-Source: APXvYqya8VIlbFdd8V7Himm7YZeFX5ffA1xybpUrHVqOmEgeUOrZPkZ1UIL8PO7eCv7d49YovzLYV8nLhVWFbDKzPdY=
X-Received: by 2002:a02:ab83:: with SMTP id t3mr113778473jan.133.1564417844483; 
 Mon, 29 Jul 2019 09:30:44 -0700 (PDT)
MIME-Version: 1.0
References: <CANoib0H81oGAEvhHbXLF2HBXnhUmZVcL8EZd4sKbvpwtLhvD_Q@mail.gmail.com>
In-Reply-To: <CANoib0H81oGAEvhHbXLF2HBXnhUmZVcL8EZd4sKbvpwtLhvD_Q@mail.gmail.com>
From: Dmitry Tunin <hanipouspilot@gmail.com>
Date: Mon, 29 Jul 2019 19:30:33 +0300
Message-ID: <CANoib0G+Oi38QN4UjwGxv0p1jm0vu-MZRbLtkoMi7Np9B6i95g@mail.gmail.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_093046_780881_5D0860A6 
X-CRM114-Status: UNSURE (   6.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d30 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hanipouspilot[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] Why ath79 has been made source-only on 19.07?
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VGhlcmUgaXMgYWxzbyBhIGZldyBkZXZpY2VzIHRoYXQgaGF2ZSBiZWVuIHJlY2VudGx5IGFkZGVk
IGFzIGF0aDc5Cm9ubHkuIFNvIHRoZXkgd29uJ3QgYmUgc3VwcG9ydGVkLgoK0L/QvSwgMjkg0LjR
jtC7LiAyMDE5INCzLiDQsiAxOToyOCwgRG1pdHJ5IFR1bmluIDxoYW5pcG91c3BpbG90QGdtYWls
LmNvbT46Cj4KPiAyYjA3NDY1NGIwZjI1OTUxOGFhNTZlMDk3NWNhOGUyNmMwYzEyYmM5Cj4KPiBJ
IHNlZSBubyByZWFzb24gd2h5IG5vdCB0byBidWlsZCBib3RoIGFyNzF4eCBhbmQgYXRoNzkgZm9y
IGRldmljZXMKPiB0aGF0IGhhdmUgYmVlbiBwb3J0ZWQgdG8gYXRoNzkgYWxyZWFkeS4gTWFueSBw
ZW9wbGUgYWxyZWFkeSB1c2UgMTkuMDcKPiBicmFuY2ggYW5kIHdhaXQgZm9yIHRoZSByZWxlYXNl
Lgo+Cj4gVGhhdCB3aWxsIHJlcXVpcmUgbG90cyBvZiBjdXN0b20gYnVpbGRzLiBXaGF0IGlzIHRo
ZSBwb2ludCBvZiBleGNsdWRpbmcgYXRoNzk/CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRl
dmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9vcGVud3J0LWRldmVsCg==
