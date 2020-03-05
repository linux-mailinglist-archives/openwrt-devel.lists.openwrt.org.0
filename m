Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8217D17A4AA
	for <lists+openwrt-devel@lfdr.de>; Thu,  5 Mar 2020 12:57:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=InRspV+npOWQpVfsM8rMGvTezxpeHwJ6TmgxgHacaE4=; b=Suwih0fpqwCdII
	viUSq0BpdDuvNZTkg4njv05SQOQmJRdnRrPU7FTXXpckwRbnISDTZFtwNCnXEDkhU1bLkMabE4rAW
	4dxe6r81ei/pv3dvkekjl13cW6Ec8HjDF9SmaB/dNo0Ni46S0ieSv2xooytNWBQjx6TckTdW93DIu
	3+p75QXtpY3xJMx4NaEACQwhRFuWwRrlVz7GKZgbvWQee1tQvNjqzxCanEgVZeoqm0CO29r7vHecG
	7m8w/1ucF/kYFv0I7ZXzhNbu9zGIHt7ZVHw2aiAmKsNBKQ9pIKjzjWM0FEsVs+vkgKZcXK6DCgpro
	heAJWvEuUCLnlOqOVBMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9p7e-0007KY-EZ; Thu, 05 Mar 2020 11:57:02 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9p7W-0007Ju-GA
 for openwrt-devel@lists.openwrt.org; Thu, 05 Mar 2020 11:56:55 +0000
Received: by mail-lf1-x143.google.com with SMTP id p5so4381621lfc.7
 for <openwrt-devel@lists.openwrt.org>; Thu, 05 Mar 2020 03:56:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=6n3nz+joRWp/PUKjaqjCWs2oJrOS29Qtmjfa+izzFL8=;
 b=ttkxmrN5OWa5K76TaTY0WQ/RWnHeIKWukKKvGHKalEsP7B1NOug+sY9LNarViGRdcP
 1dGb4g75p9awSrNO2Y7sBCMjqc0fjDAtRu8Mg+S2EHLSmAifr8dce70+QQ06ITOUG377
 n6kGsB+Q40jQgx3wCjOfdAX5ghVwxpKmempAmiV0FRwJNQzuNHR9Cu6XTx5ShkYZivMx
 K1lVwz+ZiGKSZ+RaAt3RuDAzpELP4/Wlttuvd7JMyuL6P7FJQ/H3BiUeA6LbBkxCIlAs
 3enJq2D564g9ZBMaC3hTLrj+D1/I61Px30EvX3CeXjIIfRHJ/nw0uzgE7J35jUGfdj7f
 xYfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=6n3nz+joRWp/PUKjaqjCWs2oJrOS29Qtmjfa+izzFL8=;
 b=e3fhQI0LuoVC5E/xT1EPmgmLbL1eBCikILCakEEzIJXc6YpfIZI/XRxvvjps1C45gg
 OeWERYd5OvEWhPaVyECGWHnfve628Qh+qroic4YAgpVCXAyvQvQavzqBf6mPTyK78g6h
 vhdyv/lWq6O+1s5XlF01K/okbI9aL0TjYCaoaHjFT9ADDVNjkT5QPiCxR8wFjuAi7E/i
 8dYAcTWaFEg3f2KpddtWhtZ8duVm1I28riCe9f6D/x35/qainB6Km0+Wq8Za7bVmdUUy
 jCjNRJ2JwBq8TZsy66JvR7xnXViGCzSMY8suBx74PGOrCMkl7Noc/ECXVncL0Ux4qSyu
 SbTg==
X-Gm-Message-State: ANhLgQ0lJANgpIIIt8YaR/nCJVBYW5baSstq6eKsDQxFA6zTpSobBJlR
 TazxBfUZiXGKYGzrfPIDlbE4GovRH5gtXz4Mer4=
X-Google-Smtp-Source: ADFU+vve4AkfvQKlzUOMGwCb5zvHJakcPns4Ur80272xCQgH0UmDck6MMqh483mUlaJuTYcLs5MNcYY9MrVGIGEr21U=
X-Received: by 2002:a19:6406:: with SMTP id y6mr5449576lfb.125.1583409411964; 
 Thu, 05 Mar 2020 03:56:51 -0800 (PST)
MIME-Version: 1.0
References: <20200305114621.31104-1-ynezz@true.cz>
In-Reply-To: <20200305114621.31104-1-ynezz@true.cz>
From: Yousong Zhou <yszhou4tech@gmail.com>
Date: Thu, 5 Mar 2020 19:56:40 +0800
Message-ID: <CAECwjAi2BcdXTE4YgpDROY0Mjs_CeYOgwruFdZuPKFsgFjSPZA@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_035654_560564_4C2F6E1B 
X-CRM114-Status: GOOD (  13.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [yszhou4tech[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] malta: fix missing watchdog dependency
 in hwmon-sch5627
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

T24gVGh1LCA1IE1hciAyMDIwIGF0IDE5OjQ2LCBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6
PiB3cm90ZToKPgo+IEZpeGVzIGZvbGxvd2luZyBlcnJvciB1bmNvdmVyZWQgd2hpbGUgYnVpbGRp
bmcgbWFsdGEvYmUgb24gNS40Ogo+Cj4gIFBhY2thZ2Uga21vZC1od21vbi1zY2g1NjI3IGlzIG1p
c3NpbmcgZGVwZW5kZW5jaWVzIGZvciB0aGUgZm9sbG93aW5nIGxpYnJhcmllczoKPiAgd2F0Y2hk
b2cua28KPgo+IFRoYXQgZGVwZW5kZW5jeSB3YXMgaW50cm9kdWNlZCBpbiB1cHN0cmVhbSB2aWEg
MmQ4YzdmZjUyYzI0Cj4gKCJod21vbi9zY2g1Nnh4OiBEZXBlbmQgb24gd2F0Y2hkb2cgZm9yIHdh
dGNoZG9nIGNvcmUgZnVuY3Rpb25zIikgaW4KPiB2My41LgoKRG9lcyBpdCBtYWtlIHdlIGFjdHVh
bGx5IHBhY2thZ2Ugd2F0Y2hkb2cua28gYXMgYSBtb2R1bGU/ICBMb3RzIG9mCnRhcmdldHMgYWxy
ZWFkeSBzZXQgaXQgYXMgYnVpbHRpbiwgYnV0IEkgZG8gbm90IHJlbWVtYmVyIGV2ZXIKaW50ZXJh
Y3Rpbmcgd2l0aCBpdCBkaXJlY3RseSBvbiBhcjcxeHgsIHJhbWlwcy4KClJlZ2FyZHMsCiAgICAg
ICAgICAgICAgICB5b3Vzb25nCgo+Cj4gQ2M6IFlvdXNvbmcgWmhvdSA8eXN6aG91NHRlY2hAZ21h
aWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+Cj4g
LS0tCj4gIHRhcmdldC9saW51eC9tYWx0YS9jb25maWctNC4xOSB8IDEgKwo+ICB0YXJnZXQvbGlu
dXgvbWFsdGEvY29uZmlnLTUuNCAgfCAxICsKPiAgMiBmaWxlcyBjaGFuZ2VkLCAyIGluc2VydGlv
bnMoKykKPgo+IGRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvbWFsdGEvY29uZmlnLTQuMTkgYi90
YXJnZXQvbGludXgvbWFsdGEvY29uZmlnLTQuMTkKPiBpbmRleCBmNjYwMzZlMjdiYjcuLjNhZDdk
YmVkNzU1OCAxMDA2NDQKPiAtLS0gYS90YXJnZXQvbGludXgvbWFsdGEvY29uZmlnLTQuMTkKPiAr
KysgYi90YXJnZXQvbGludXgvbWFsdGEvY29uZmlnLTQuMTkKPiBAQCAtMzMzLDQgKzMzMyw1IEBA
IENPTkZJR19WVD15Cj4gIENPTkZJR19WVF9DT05TT0xFPXkKPiAgQ09ORklHX1ZUX0hXX0NPTlNP
TEVfQklORElORz15Cj4gIENPTkZJR19WWEZTX0ZTPXkKPiArQ09ORklHX1dBVENIRE9HX0NPUkU9
eQo+ICBDT05GSUdfWFBTPXkKPiBkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L21hbHRhL2NvbmZp
Zy01LjQgYi90YXJnZXQvbGludXgvbWFsdGEvY29uZmlnLTUuNAo+IGluZGV4IDQxZmM5NzcwNDM1
Zi4uMzdkM2RiZWY5YWUwIDEwMDY0NAo+IC0tLSBhL3RhcmdldC9saW51eC9tYWx0YS9jb25maWct
NS40Cj4gKysrIGIvdGFyZ2V0L2xpbnV4L21hbHRhL2NvbmZpZy01LjQKPiBAQCAtMzQxLDQgKzM0
MSw1IEBAIENPTkZJR19WVD15Cj4gIENPTkZJR19WVF9DT05TT0xFPXkKPiAgQ09ORklHX1ZUX0hX
X0NPTlNPTEVfQklORElORz15Cj4gIENPTkZJR19WWEZTX0ZTPXkKPiArQ09ORklHX1dBVENIRE9H
X0NPUkU9eQo+ICBDT05GSUdfWFBTPXkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxA
bGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL29wZW53cnQtZGV2ZWwK
